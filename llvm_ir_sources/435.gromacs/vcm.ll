; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_vcm = type { i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x [3 x float]]*, float*, i8**, i16* }
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
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }

@.str = private unnamed_addr constant [4 x i8] c"vcm\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"vcm->group_j\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"vcm->group_x\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"vcm->group_i\00", align 1
@.str5 = private unnamed_addr constant [13 x i8] c"vcm->group_w\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"vcm->group_p\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"vcm->group_v\00", align 1
@.str8 = private unnamed_addr constant [16 x i8] c"vcm->group_mass\00", align 1
@.str9 = private unnamed_addr constant [16 x i8] c"vcm->group_name\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"mass\00", align 1
@.str11 = private unnamed_addr constant [42 x i8] c"Center of mass motion removal mode is %s\0A\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@ecm_names = external global [4 x i8*]
@.str13 = private unnamed_addr constant [65 x i8] c"We have the following groups for center of mass motion removal:\0A\00", align 1
@.str14 = private unnamed_addr constant [28 x i8] c"%3d:  %s, initial mass: %g\0A\00", align 1
@debug = external global %struct._IO_FILE*
@.str15 = private unnamed_addr constant [62 x i8] c"Large VCM(group %s): %12.5f, %12.5f, %12.5f, ekin-cm: %12.5f\0A\00", align 1
@.str16 = private unnamed_addr constant [57 x i8] c"Group %s with mass %12.5f, Ekrot %12.5f Det(I) = %12.5f\0A\00", align 1
@.str17 = private unnamed_addr constant [31 x i8] c"  COM: %12.5f  %12.5f  %12.5f\0A\00", align 1
@.str18 = private unnamed_addr constant [31 x i8] c"  P:   %12.5f  %12.5f  %12.5f\0A\00", align 1
@.str19 = private unnamed_addr constant [31 x i8] c"  V:   %12.5f  %12.5f  %12.5f\0A\00", align 1
@.str20 = private unnamed_addr constant [31 x i8] c"  J:   %12.5f  %12.5f  %12.5f\0A\00", align 1
@.str21 = private unnamed_addr constant [31 x i8] c"  w:   %12.5f  %12.5f  %12.5f\0A\00", align 1
@.str22 = private unnamed_addr constant [15 x i8] c"Inertia tensor\00", align 1
@.str23 = private unnamed_addr constant [17 x i8] c"Determinant = %f\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.t_vcm* @init_vcm(%struct._IO_FILE* %fp, %struct.t_topology* nocapture %top, %struct.t_commrec* %cr, %struct.t_mdatoms* nocapture %md, i32 %start, i32 %homenr, i32 %nstcomm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !385), !dbg !563
  tail call void @llvm.dbg.value(metadata !{%struct.t_topology* %top}, i64 0, metadata !386), !dbg !563
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !387), !dbg !563
  tail call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !388), !dbg !563
  tail call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !389), !dbg !564
  tail call void @llvm.dbg.value(metadata !{i32 %homenr}, i64 0, metadata !390), !dbg !564
  tail call void @llvm.dbg.value(metadata !{i32 %nstcomm}, i64 0, metadata !391), !dbg !564
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 49, i32 1, i32 80) #5, !dbg !565
  %0 = bitcast i8* %call to %struct.t_vcm*, !dbg !565
  tail call void @llvm.dbg.value(metadata !{%struct.t_vcm* %0}, i64 0, metadata !392), !dbg !565
  %cmp = icmp slt i32 %nstcomm, 0, !dbg !566
  br i1 %cmp, label %if.then13, label %if.else, !dbg !566

if.else:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %nstcomm, 0, !dbg !567
  %mode3 = getelementptr inbounds i8* %call, i64 4, !dbg !568
  %1 = bitcast i8* %mode3 to i32*, !dbg !568
  br i1 %cmp1, label %if.then9, label %if.end6, !dbg !567

if.end6:                                          ; preds = %if.else
  store i32 2, i32* %1, align 4, !dbg !569, !tbaa !570
  br label %if.end105, !dbg !573

if.then9:                                         ; preds = %if.else
  store i32 0, i32* %1, align 4, !dbg !568, !tbaa !570
  %nr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 6, i32 0, !dbg !574
  %2 = load i32* %nr, align 4, !dbg !574, !tbaa !570
  %nr10 = bitcast i8* %call to i32*, !dbg !574
  store i32 %2, i32* %nr10, align 4, !dbg !574, !tbaa !570
  br label %if.end22, !dbg !576

if.then13:                                        ; preds = %entry
  %mode = getelementptr inbounds i8* %call, i64 4, !dbg !577
  %3 = bitcast i8* %mode to i32*, !dbg !577
  store i32 1, i32* %3, align 4, !dbg !577, !tbaa !570
  %nr182 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 6, i32 0, !dbg !574
  %4 = load i32* %nr182, align 4, !dbg !574, !tbaa !570
  %nr10183 = bitcast i8* %call to i32*, !dbg !574
  store i32 %4, i32* %nr10183, align 4, !dbg !574, !tbaa !570
  %call15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 61, i32 %4, i32 12) #5, !dbg !578
  %5 = bitcast i8* %call15 to [3 x float]*, !dbg !578
  %group_j = getelementptr inbounds i8* %call, i64 32, !dbg !578
  %6 = bitcast i8* %group_j to [3 x float]**, !dbg !578
  store [3 x float]* %5, [3 x float]** %6, align 8, !dbg !578, !tbaa !580
  %7 = load i32* %nr10183, align 4, !dbg !581, !tbaa !570
  %call17 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 62, i32 %7, i32 12) #5, !dbg !581
  %8 = bitcast i8* %call17 to [3 x float]*, !dbg !581
  %group_x = getelementptr inbounds i8* %call, i64 24, !dbg !581
  %9 = bitcast i8* %group_x to [3 x float]**, !dbg !581
  store [3 x float]* %8, [3 x float]** %9, align 8, !dbg !581, !tbaa !580
  %10 = load i32* %nr10183, align 4, !dbg !582, !tbaa !570
  %call19 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 63, i32 %10, i32 36) #5, !dbg !582
  %11 = bitcast i8* %call19 to [3 x [3 x float]]*, !dbg !582
  %group_i = getelementptr inbounds i8* %call, i64 48, !dbg !582
  %12 = bitcast i8* %group_i to [3 x [3 x float]]**, !dbg !582
  store [3 x [3 x float]]* %11, [3 x [3 x float]]** %12, align 8, !dbg !582, !tbaa !580
  %13 = load i32* %nr10183, align 4, !dbg !583, !tbaa !570
  %call21 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 64, i32 %13, i32 12) #5, !dbg !583
  %14 = bitcast i8* %call21 to [3 x float]*, !dbg !583
  %group_w = getelementptr inbounds i8* %call, i64 40, !dbg !583
  %15 = bitcast i8* %group_w to [3 x float]**, !dbg !583
  store [3 x float]* %14, [3 x float]** %15, align 8, !dbg !583, !tbaa !580
  %.pre = load i32* %nr10183, align 4, !dbg !584, !tbaa !570
  br label %if.end22, !dbg !585

if.end22:                                         ; preds = %if.then9, %if.then13
  %nr10185 = phi i32* [ %nr10183, %if.then13 ], [ %nr10, %if.then9 ]
  %16 = phi i32 [ %.pre, %if.then13 ], [ %2, %if.then9 ]
  %.in = getelementptr inbounds i8* %call, i64 4, !dbg !573
  %17 = bitcast i8* %.in to i32*, !dbg !573
  %call24 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 66, i32 %16, i32 12) #5, !dbg !584
  %18 = bitcast i8* %call24 to [3 x float]*, !dbg !584
  %group_p = getelementptr inbounds i8* %call, i64 8, !dbg !584
  %19 = bitcast i8* %group_p to [3 x float]**, !dbg !584
  store [3 x float]* %18, [3 x float]** %19, align 8, !dbg !584, !tbaa !580
  %20 = load i32* %nr10185, align 4, !dbg !586, !tbaa !570
  %call26 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 67, i32 %20, i32 12) #5, !dbg !586
  %21 = bitcast i8* %call26 to [3 x float]*, !dbg !586
  %group_v = getelementptr inbounds i8* %call, i64 16, !dbg !586
  %22 = bitcast i8* %group_v to [3 x float]**, !dbg !586
  store [3 x float]* %21, [3 x float]** %22, align 8, !dbg !586, !tbaa !580
  %23 = load i32* %nr10185, align 4, !dbg !587, !tbaa !570
  %call28 = tail call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 68, i32 %23, i32 4) #5, !dbg !587
  %24 = bitcast i8* %call28 to float*, !dbg !587
  %group_mass = getelementptr inbounds i8* %call, i64 56, !dbg !587
  %25 = bitcast i8* %group_mass to float**, !dbg !587
  store float* %24, float** %25, align 8, !dbg !587, !tbaa !580
  %26 = load i32* %nr10185, align 4, !dbg !588, !tbaa !570
  %call30 = tail call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 69, i32 %26, i32 8) #5, !dbg !588
  %27 = bitcast i8* %call30 to i8**, !dbg !588
  %group_name = getelementptr inbounds i8* %call, i64 64, !dbg !588
  %28 = bitcast i8* %group_name to i8***, !dbg !588
  store i8** %27, i8*** %28, align 8, !dbg !588, !tbaa !580
  %cVCM = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 19, !dbg !589
  %29 = load i16** %cVCM, align 8, !dbg !589, !tbaa !580
  %group_id = getelementptr inbounds i8* %call, i64 72, !dbg !589
  %30 = bitcast i8* %group_id to i16**, !dbg !589
  store i16* %29, i16** %30, align 8, !dbg !589, !tbaa !580
  tail call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !394), !dbg !590
  %add = add nsw i32 %homenr, %start, !dbg !590
  %cmp31172 = icmp sgt i32 %homenr, 0, !dbg !590
  br i1 %cmp31172, label %for.body.lr.ph, label %for.end, !dbg !590

for.body.lr.ph:                                   ; preds = %if.end22
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4, !dbg !592
  %31 = load float** %massT, align 8, !dbg !592, !tbaa !580
  %32 = load float** %25, align 8, !dbg !592, !tbaa !580
  %33 = sext i32 %start to i64
  br label %for.body, !dbg !590

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv176 = phi i64 [ %33, %for.body.lr.ph ], [ %indvars.iv.next177, %for.body ]
  %arrayidx33 = getelementptr inbounds i16* %29, i64 %indvars.iv176, !dbg !594
  %34 = load i16* %arrayidx33, align 2, !dbg !594, !tbaa !595
  %arrayidx35 = getelementptr inbounds float* %31, i64 %indvars.iv176, !dbg !592
  %35 = load float* %arrayidx35, align 4, !dbg !592, !tbaa !596
  %idxprom36 = zext i16 %34 to i64, !dbg !592
  %arrayidx38 = getelementptr inbounds float* %32, i64 %idxprom36, !dbg !592
  %36 = load float* %arrayidx38, align 4, !dbg !592, !tbaa !596
  %add39 = fadd float %35, %36, !dbg !592
  store float %add39, float* %arrayidx38, align 4, !dbg !592, !tbaa !596
  %indvars.iv.next177 = add i64 %indvars.iv176, 1, !dbg !590
  %37 = trunc i64 %indvars.iv.next177 to i32, !dbg !590
  %cmp31 = icmp slt i32 %37, %add, !dbg !590
  br i1 %cmp31, label %for.body, label %for.end, !dbg !590

for.end:                                          ; preds = %for.body, %if.end22
  %38 = load i32* %nr10185, align 4, !dbg !597, !tbaa !570
  %call41 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 75, i32 %38, i32 4) #5, !dbg !597
  %39 = bitcast i8* %call41 to float*, !dbg !597
  tail call void @llvm.dbg.value(metadata !{float* %39}, i64 0, metadata !393), !dbg !597
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !395), !dbg !598
  %40 = load i32* %nr10185, align 4, !dbg !598, !tbaa !570
  %cmp44170 = icmp sgt i32 %40, 0, !dbg !598
  br i1 %cmp44170, label %for.body46.lr.ph, label %for.end54, !dbg !598

for.body46.lr.ph:                                 ; preds = %for.end
  %41 = load float** %25, align 8, !dbg !600, !tbaa !580
  br label %for.body46, !dbg !598

for.body46:                                       ; preds = %for.body46.lr.ph, %for.body46
  %indvars.iv174 = phi i64 [ 0, %for.body46.lr.ph ], [ %indvars.iv.next175, %for.body46 ]
  %arrayidx49 = getelementptr inbounds float* %41, i64 %indvars.iv174, !dbg !600
  %42 = load float* %arrayidx49, align 4, !dbg !600, !tbaa !596
  %arrayidx51 = getelementptr inbounds float* %39, i64 %indvars.iv174, !dbg !600
  store float %42, float* %arrayidx51, align 4, !dbg !600, !tbaa !596
  %indvars.iv.next175 = add i64 %indvars.iv174, 1, !dbg !598
  %43 = trunc i64 %indvars.iv.next175 to i32, !dbg !598
  %cmp44 = icmp slt i32 %43, %40, !dbg !598
  br i1 %cmp44, label %for.body46, label %for.end54, !dbg !598

for.end54:                                        ; preds = %for.body46, %for.end
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !601
  %44 = load i32* %nnodes, align 4, !dbg !601, !tbaa !570
  %cmp55 = icmp sgt i32 %44, 1, !dbg !601
  br i1 %cmp55, label %if.then59, label %lor.lhs.false, !dbg !601

lor.lhs.false:                                    ; preds = %for.end54
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !601
  %45 = load i32* %nthreads, align 4, !dbg !601, !tbaa !570
  %cmp57 = icmp sgt i32 %45, 1, !dbg !601
  br i1 %cmp57, label %if.then59, label %if.end61, !dbg !601

if.then59:                                        ; preds = %lor.lhs.false, %for.end54
  tail call void @gmx_sumf(i32 %40, float* %39, %struct.t_commrec* %cr) #5, !dbg !602
  br label %if.end61, !dbg !602

if.end61:                                         ; preds = %if.then59, %lor.lhs.false
  %tobool = icmp ne %struct._IO_FILE* %fp, null, !dbg !603
  br i1 %tobool, label %if.then62, label %for.cond76.preheader, !dbg !603

if.then62:                                        ; preds = %if.end61
  %46 = load i32* %17, align 4, !dbg !604, !tbaa !570
  %47 = icmp ugt i32 %46, 2, !dbg !604
  br i1 %47, label %cond.end, label %cond.false, !dbg !604

cond.false:                                       ; preds = %if.then62
  %idxprom71 = sext i32 %46 to i64, !dbg !604
  %arrayidx72 = getelementptr inbounds [4 x i8*]* @ecm_names, i64 0, i64 %idxprom71, !dbg !604
  %48 = load i8** %arrayidx72, align 8, !dbg !604, !tbaa !580
  br label %cond.end, !dbg !604

cond.end:                                         ; preds = %if.then62, %cond.false
  %cond = phi i8* [ %48, %cond.false ], [ getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), %if.then62 ], !dbg !604
  %call73 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([42 x i8]* @.str11, i64 0, i64 0), i8* %cond) #5, !dbg !604
  %49 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %fp), !dbg !606
  br label %for.cond76.preheader, !dbg !607

for.cond76.preheader:                             ; preds = %if.end61, %cond.end
  %50 = load i32* %nr10185, align 4, !dbg !608, !tbaa !570
  %cmp78168 = icmp sgt i32 %50, 0, !dbg !608
  br i1 %cmp78168, label %for.body80.lr.ph, label %for.end104, !dbg !608

for.body80.lr.ph:                                 ; preds = %for.cond76.preheader
  %nm_ind = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 6, i32 1, !dbg !610
  %grpname = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8, !dbg !610
  br label %for.body80, !dbg !608

for.body80:                                       ; preds = %for.body80.lr.ph, %for.inc102
  %51 = phi i32 [ %50, %for.body80.lr.ph ], [ %62, %for.inc102 ]
  %indvars.iv = phi i64 [ 0, %for.body80.lr.ph ], [ %indvars.iv.next, %for.inc102 ]
  %52 = load i32** %nm_ind, align 8, !dbg !610, !tbaa !580
  %arrayidx85 = getelementptr inbounds i32* %52, i64 %indvars.iv, !dbg !610
  %53 = load i32* %arrayidx85, align 4, !dbg !610, !tbaa !570
  %idxprom86 = sext i32 %53 to i64, !dbg !610
  %54 = load i8**** %grpname, align 8, !dbg !610, !tbaa !580
  %arrayidx88 = getelementptr inbounds i8*** %54, i64 %idxprom86, !dbg !610
  %55 = load i8*** %arrayidx88, align 8, !dbg !610, !tbaa !580
  %56 = load i8** %55, align 8, !dbg !610, !tbaa !580
  %57 = load i8*** %28, align 8, !dbg !610, !tbaa !580
  %arrayidx91 = getelementptr inbounds i8** %57, i64 %indvars.iv, !dbg !610
  store i8* %56, i8** %arrayidx91, align 8, !dbg !610, !tbaa !580
  br i1 %tobool, label %if.then93, label %for.inc102, !dbg !612

if.then93:                                        ; preds = %for.body80
  %58 = load i8*** %28, align 8, !dbg !613, !tbaa !580
  %arrayidx96 = getelementptr inbounds i8** %58, i64 %indvars.iv, !dbg !613
  %59 = load i8** %arrayidx96, align 8, !dbg !613, !tbaa !580
  %arrayidx98 = getelementptr inbounds float* %39, i64 %indvars.iv, !dbg !613
  %60 = load float* %arrayidx98, align 4, !dbg !613, !tbaa !596
  %conv99 = fpext float %60 to double, !dbg !613
  %61 = trunc i64 %indvars.iv to i32, !dbg !613
  %call100 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str14, i64 0, i64 0), i32 %61, i8* %59, double %conv99) #5, !dbg !613
  %.pre178 = load i32* %nr10185, align 4, !dbg !608, !tbaa !570
  br label %for.inc102, !dbg !613

for.inc102:                                       ; preds = %for.body80, %if.then93
  %62 = phi i32 [ %51, %for.body80 ], [ %.pre178, %if.then93 ], !dbg !608
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !608
  %63 = trunc i64 %indvars.iv.next to i32, !dbg !608
  %cmp78 = icmp slt i32 %63, %62, !dbg !608
  br i1 %cmp78, label %for.body80, label %for.end104, !dbg !608

for.end104:                                       ; preds = %for.inc102, %for.cond76.preheader
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 95, i8* %call41) #5, !dbg !614
  br label %if.end105, !dbg !615

if.end105:                                        ; preds = %if.end6, %for.end104
  ret %struct.t_vcm* %0, !dbg !616
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @gmx_sumf(i32, float*, %struct.t_commrec*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @calc_vcm_grp(%struct._IO_FILE* nocapture %fp, i32 %start, i32 %homenr, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %v, %struct.t_vcm* nocapture %vcm) #0 {
entry:
  %j0 = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !400), !dbg !617
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !401), !dbg !617
  call void @llvm.dbg.value(metadata !{i32 %homenr}, i64 0, metadata !402), !dbg !617
  call void @llvm.dbg.value(metadata !{float* %mass}, i64 0, metadata !403), !dbg !617
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !404), !dbg !618
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !405), !dbg !618
  call void @llvm.dbg.value(metadata !{%struct.t_vcm* %vcm}, i64 0, metadata !406), !dbg !618
  call void @llvm.dbg.declare(metadata !{[3 x float]* %j0}, metadata !417), !dbg !619
  %mode = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 1, !dbg !620
  %0 = load i32* %mode, align 4, !dbg !620, !tbaa !570
  %cmp = icmp eq i32 %0, 2, !dbg !620
  br i1 %cmp, label %if.end96, label %for.cond.preheader, !dbg !620

for.cond.preheader:                               ; preds = %entry
  %nr = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 0, !dbg !621
  %1 = load i32* %nr, align 4, !dbg !621, !tbaa !570
  %cmp1161 = icmp sgt i32 %1, 0, !dbg !621
  br i1 %cmp1161, label %for.body.lr.ph, label %for.cond19.preheader, !dbg !621

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %group_mass = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8, !dbg !624
  %group_p = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2, !dbg !626
  %group_j = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5, !dbg !627
  %group_x = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4, !dbg !629
  %group_w = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 6, !dbg !630
  %group_i = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7, !dbg !631
  br label %for.body, !dbg !621

for.cond19.preheader:                             ; preds = %for.inc, %for.cond.preheader
  %add = add nsw i32 %homenr, %start, !dbg !632
  %cmp20159 = icmp sgt i32 %homenr, 0, !dbg !632
  br i1 %cmp20159, label %for.body21.lr.ph, label %if.end96, !dbg !632

for.body21.lr.ph:                                 ; preds = %for.cond19.preheader
  %group_id = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 10, !dbg !634
  %group_mass27 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8, !dbg !636
  %group_p40 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2, !dbg !637
  %arraydecay57 = getelementptr inbounds [3 x float]* %j0, i64 0, i64 0, !dbg !639
  %arrayidx13.i = getelementptr inbounds [3 x float]* %j0, i64 0, i64 1, !dbg !641
  %arrayidx21.i = getelementptr inbounds [3 x float]* %j0, i64 0, i64 2, !dbg !643
  %group_j67 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5, !dbg !644
  %group_x78 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4, !dbg !647
  %group_i89 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7, !dbg !648
  %2 = sext i32 %start to i64
  br label %for.body21, !dbg !632

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %3 = phi i32 [ %0, %for.body.lr.ph ], [ %.pre172, %for.inc.for.body_crit_edge ], !dbg !624
  %4 = phi i32 [ %1, %for.body.lr.ph ], [ %12, %for.inc.for.body_crit_edge ]
  %indvars.iv169 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next170, %for.inc.for.body_crit_edge ]
  %5 = load float** %group_mass, align 8, !dbg !624, !tbaa !580
  %arrayidx = getelementptr inbounds float* %5, i64 %indvars.iv169, !dbg !624
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !624, !tbaa !596
  %6 = load [3 x float]** %group_p, align 8, !dbg !626, !tbaa !580
  %arraydecay = getelementptr inbounds [3 x float]* %6, i64 %indvars.iv169, i64 0, !dbg !626
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !649), !dbg !650
  store float 0.000000e+00, float* %arraydecay, align 4, !dbg !651, !tbaa !596
  %arrayidx1.i = getelementptr inbounds [3 x float]* %6, i64 %indvars.iv169, i64 1, !dbg !652
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !dbg !652, !tbaa !596
  %arrayidx2.i = getelementptr inbounds [3 x float]* %6, i64 %indvars.iv169, i64 2, !dbg !653
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !dbg !653, !tbaa !596
  %cmp5 = icmp eq i32 %3, 1, !dbg !654
  br i1 %cmp5, label %if.then6, label %for.inc, !dbg !654

if.then6:                                         ; preds = %for.body
  %7 = load [3 x float]** %group_j, align 8, !dbg !627, !tbaa !580
  %arraydecay9 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv169, i64 0, !dbg !627
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay9}, i64 0, metadata !655), !dbg !656
  store float 0.000000e+00, float* %arraydecay9, align 4, !dbg !657, !tbaa !596
  %arrayidx1.i149 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv169, i64 1, !dbg !658
  store float 0.000000e+00, float* %arrayidx1.i149, align 4, !dbg !658, !tbaa !596
  %arrayidx2.i150 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv169, i64 2, !dbg !659
  store float 0.000000e+00, float* %arrayidx2.i150, align 4, !dbg !659, !tbaa !596
  %8 = load [3 x float]** %group_x, align 8, !dbg !629, !tbaa !580
  %arraydecay12 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv169, i64 0, !dbg !629
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay12}, i64 0, metadata !660), !dbg !661
  store float 0.000000e+00, float* %arraydecay12, align 4, !dbg !662, !tbaa !596
  %arrayidx1.i155 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv169, i64 1, !dbg !663
  store float 0.000000e+00, float* %arrayidx1.i155, align 4, !dbg !663, !tbaa !596
  %arrayidx2.i156 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv169, i64 2, !dbg !664
  store float 0.000000e+00, float* %arrayidx2.i156, align 4, !dbg !664, !tbaa !596
  %9 = load [3 x float]** %group_w, align 8, !dbg !630, !tbaa !580
  %arraydecay15 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv169, i64 0, !dbg !630
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay15}, i64 0, metadata !665), !dbg !666
  store float 0.000000e+00, float* %arraydecay15, align 4, !dbg !667, !tbaa !596
  %arrayidx1.i153 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv169, i64 1, !dbg !668
  store float 0.000000e+00, float* %arrayidx1.i153, align 4, !dbg !668, !tbaa !596
  %arrayidx2.i154 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv169, i64 2, !dbg !669
  store float 0.000000e+00, float* %arrayidx2.i154, align 4, !dbg !669, !tbaa !596
  %10 = load [3 x [3 x float]]** %group_i, align 8, !dbg !631, !tbaa !580
  %arraydecay18 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv169, i64 0, !dbg !631
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay18}, i64 0, metadata !670) #4, !dbg !671
  call void @llvm.dbg.value(metadata !672, i64 0, metadata !673) #4, !dbg !674
  %11 = bitcast [3 x float]* %arraydecay18 to i8*, !dbg !675
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 36, i32 4, i1 false) #4, !dbg !676
  %.pre = load i32* %nr, align 4, !dbg !621, !tbaa !570
  br label %for.inc, !dbg !677

for.inc:                                          ; preds = %for.body, %if.then6
  %12 = phi i32 [ %4, %for.body ], [ %.pre, %if.then6 ], !dbg !621
  %indvars.iv.next170 = add i64 %indvars.iv169, 1, !dbg !621
  %13 = trunc i64 %indvars.iv.next170 to i32, !dbg !621
  %cmp1 = icmp slt i32 %13, %12, !dbg !621
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.cond19.preheader, !dbg !621

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre172 = load i32* %mode, align 4, !dbg !654, !tbaa !570
  br label %for.body, !dbg !621

for.body21:                                       ; preds = %for.inc93, %for.body21.lr.ph
  %indvars.iv167 = phi i64 [ %2, %for.body21.lr.ph ], [ %indvars.iv.next168, %for.inc93 ]
  %arrayidx23 = getelementptr inbounds float* %mass, i64 %indvars.iv167, !dbg !678
  %14 = load float* %arrayidx23, align 4, !dbg !678, !tbaa !596
  call void @llvm.dbg.value(metadata !{float %14}, i64 0, metadata !410), !dbg !678
  %15 = load i16** %group_id, align 8, !dbg !634, !tbaa !580
  %arrayidx25 = getelementptr inbounds i16* %15, i64 %indvars.iv167, !dbg !634
  %16 = load i16* %arrayidx25, align 2, !dbg !634, !tbaa !595
  %idxprom26 = zext i16 %16 to i64, !dbg !636
  %17 = load float** %group_mass27, align 8, !dbg !636, !tbaa !580
  %arrayidx28 = getelementptr inbounds float* %17, i64 %idxprom26, !dbg !636
  %18 = load float* %arrayidx28, align 4, !dbg !636, !tbaa !596
  %add29 = fadd float %14, %18, !dbg !636
  store float %add29, float* %arrayidx28, align 4, !dbg !636, !tbaa !596
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !409), !dbg !679
  %19 = load [3 x float]** %group_p40, align 8, !dbg !637, !tbaa !580
  br label %for.body33, !dbg !679

for.body33:                                       ; preds = %for.body33, %for.body21
  %indvars.iv = phi i64 [ 0, %for.body21 ], [ %indvars.iv.next, %for.body33 ]
  %arrayidx37 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv167, i64 %indvars.iv, !dbg !637
  %20 = load float* %arrayidx37, align 4, !dbg !637, !tbaa !596
  %mul = fmul float %14, %20, !dbg !637
  %arrayidx42 = getelementptr inbounds [3 x float]* %19, i64 %idxprom26, i64 %indvars.iv, !dbg !637
  %21 = load float* %arrayidx42, align 4, !dbg !637, !tbaa !596
  %add43 = fadd float %mul, %21, !dbg !637
  store float %add43, float* %arrayidx42, align 4, !dbg !637, !tbaa !596
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !679
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !679
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !679
  br i1 %exitcond, label %for.end46, label %for.body33, !dbg !679

for.end46:                                        ; preds = %for.body33
  %22 = load i32* %mode, align 4, !dbg !680, !tbaa !570
  %cmp48 = icmp eq i32 %22, 1, !dbg !680
  br i1 %cmp48, label %if.then50, label %for.inc93, !dbg !680

if.then50:                                        ; preds = %for.end46
  %arraydecay53 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv167, i64 0, !dbg !639
  %arraydecay56 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv167, i64 0, !dbg !639
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay53}, i64 0, metadata !681), !dbg !682
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay56}, i64 0, metadata !683), !dbg !682
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay57}, i64 0, metadata !684), !dbg !682
  %arrayidx.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv167, i64 1, !dbg !685
  %23 = load float* %arrayidx.i, align 4, !dbg !685, !tbaa !596
  %arrayidx1.i151 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv167, i64 2, !dbg !685
  %24 = load float* %arrayidx1.i151, align 4, !dbg !685, !tbaa !596
  %mul.i = fmul float %23, %24, !dbg !685
  %arrayidx2.i152 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv167, i64 2, !dbg !685
  %25 = load float* %arrayidx2.i152, align 4, !dbg !685, !tbaa !596
  %arrayidx3.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv167, i64 1, !dbg !685
  %26 = load float* %arrayidx3.i, align 4, !dbg !685, !tbaa !596
  %mul4.i = fmul float %25, %26, !dbg !685
  %sub.i = fsub float %mul.i, %mul4.i, !dbg !685
  store float %sub.i, float* %arraydecay57, align 4, !dbg !685, !tbaa !596
  %27 = load float* %arraydecay56, align 4, !dbg !641, !tbaa !596
  %mul8.i = fmul float %25, %27, !dbg !641
  %28 = load float* %arraydecay53, align 4, !dbg !641, !tbaa !596
  %mul11.i = fmul float %28, %24, !dbg !641
  %sub12.i = fsub float %mul8.i, %mul11.i, !dbg !641
  store float %sub12.i, float* %arrayidx13.i, align 4, !dbg !641, !tbaa !596
  %mul16.i = fmul float %28, %26, !dbg !643
  %mul19.i = fmul float %23, %27, !dbg !643
  %sub20.i = fsub float %mul16.i, %mul19.i, !dbg !643
  store float %sub20.i, float* %arrayidx21.i, align 4, !dbg !643, !tbaa !596
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !409), !dbg !686
  %29 = load [3 x float]** %group_j67, align 8, !dbg !644, !tbaa !580
  %30 = load [3 x float]** %group_x78, align 8, !dbg !647, !tbaa !580
  br label %for.body61, !dbg !686

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %if.then50
  %31 = phi float [ %sub.i, %if.then50 ], [ %.pre171, %for.body61.for.body61_crit_edge ]
  %indvars.iv163 = phi i64 [ 0, %if.then50 ], [ %indvars.iv.next164, %for.body61.for.body61_crit_edge ]
  %mul64 = fmul float %14, %31, !dbg !644
  %arrayidx69 = getelementptr inbounds [3 x float]* %29, i64 %idxprom26, i64 %indvars.iv163, !dbg !644
  %32 = load float* %arrayidx69, align 4, !dbg !644, !tbaa !596
  %add70 = fadd float %mul64, %32, !dbg !644
  store float %add70, float* %arrayidx69, align 4, !dbg !644, !tbaa !596
  %arrayidx74 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv167, i64 %indvars.iv163, !dbg !647
  %33 = load float* %arrayidx74, align 4, !dbg !647, !tbaa !596
  %mul75 = fmul float %14, %33, !dbg !647
  %arrayidx80 = getelementptr inbounds [3 x float]* %30, i64 %idxprom26, i64 %indvars.iv163, !dbg !647
  %34 = load float* %arrayidx80, align 4, !dbg !647, !tbaa !596
  %add81 = fadd float %mul75, %34, !dbg !647
  store float %add81, float* %arrayidx80, align 4, !dbg !647, !tbaa !596
  %indvars.iv.next164 = add i64 %indvars.iv163, 1, !dbg !686
  %lftr.wideiv165 = trunc i64 %indvars.iv.next164 to i32, !dbg !686
  %exitcond166 = icmp eq i32 %lftr.wideiv165, 3, !dbg !686
  br i1 %exitcond166, label %for.end84, label %for.body61.for.body61_crit_edge, !dbg !686

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  %arrayidx63.phi.trans.insert = getelementptr inbounds [3 x float]* %j0, i64 0, i64 %indvars.iv.next164
  %.pre171 = load float* %arrayidx63.phi.trans.insert, align 4, !dbg !644, !tbaa !596
  br label %for.body61, !dbg !686

for.end84:                                        ; preds = %for.body61
  %35 = load [3 x [3 x float]]** %group_i89, align 8, !dbg !648, !tbaa !580
  %arraydecay91 = getelementptr inbounds [3 x [3 x float]]* %35, i64 %idxprom26, i64 0, !dbg !648
  call fastcc void @update_tensor(float* %arraydecay53, float %14, [3 x float]* %arraydecay91) #6, !dbg !648
  br label %for.inc93, !dbg !687

for.inc93:                                        ; preds = %for.end46, %for.end84
  %indvars.iv.next168 = add i64 %indvars.iv167, 1, !dbg !632
  %36 = trunc i64 %indvars.iv.next168 to i32, !dbg !632
  %cmp20 = icmp slt i32 %36, %add, !dbg !632
  br i1 %cmp20, label %for.body21, label %if.end96, !dbg !632

if.end96:                                         ; preds = %for.cond19.preheader, %for.inc93, %entry
  ret void, !dbg !688
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @update_tensor(float* nocapture %x, float %m0, [3 x float]* nocapture %I) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %x}, i64 0, metadata !534), !dbg !689
  tail call void @llvm.dbg.value(metadata !{float %m0}, i64 0, metadata !535), !dbg !689
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %I}, i64 0, metadata !536), !dbg !689
  %0 = load float* %x, align 4, !dbg !690, !tbaa !596
  %arrayidx1 = getelementptr inbounds float* %x, i64 1, !dbg !690
  %1 = load float* %arrayidx1, align 4, !dbg !690, !tbaa !596
  %mul = fmul float %0, %1, !dbg !690
  %mul2 = fmul float %mul, %m0, !dbg !690
  tail call void @llvm.dbg.value(metadata !{float %mul2}, i64 0, metadata !537), !dbg !690
  %arrayidx4 = getelementptr inbounds float* %x, i64 2, !dbg !691
  %2 = load float* %arrayidx4, align 4, !dbg !691, !tbaa !596
  %mul5 = fmul float %0, %2, !dbg !691
  %mul6 = fmul float %mul5, %m0, !dbg !691
  tail call void @llvm.dbg.value(metadata !{float %mul6}, i64 0, metadata !539), !dbg !691
  %mul9 = fmul float %1, %2, !dbg !692
  %mul10 = fmul float %mul9, %m0, !dbg !692
  tail call void @llvm.dbg.value(metadata !{float %mul10}, i64 0, metadata !540), !dbg !692
  %mul13 = fmul float %0, %0, !dbg !693
  %mul14 = fmul float %mul13, %m0, !dbg !693
  %arrayidx16 = getelementptr inbounds [3 x float]* %I, i64 0, i64 0, !dbg !693
  %3 = load float* %arrayidx16, align 4, !dbg !693, !tbaa !596
  %add = fadd float %mul14, %3, !dbg !693
  store float %add, float* %arrayidx16, align 4, !dbg !693, !tbaa !596
  %4 = load float* %arrayidx1, align 4, !dbg !694, !tbaa !596
  %mul19 = fmul float %4, %4, !dbg !694
  %mul20 = fmul float %mul19, %m0, !dbg !694
  %arrayidx22 = getelementptr inbounds [3 x float]* %I, i64 1, i64 1, !dbg !694
  %5 = load float* %arrayidx22, align 4, !dbg !694, !tbaa !596
  %add23 = fadd float %5, %mul20, !dbg !694
  store float %add23, float* %arrayidx22, align 4, !dbg !694, !tbaa !596
  %6 = load float* %arrayidx4, align 4, !dbg !695, !tbaa !596
  %mul26 = fmul float %6, %6, !dbg !695
  %mul27 = fmul float %mul26, %m0, !dbg !695
  %arrayidx29 = getelementptr inbounds [3 x float]* %I, i64 2, i64 2, !dbg !695
  %7 = load float* %arrayidx29, align 4, !dbg !695, !tbaa !596
  %add30 = fadd float %7, %mul27, !dbg !695
  store float %add30, float* %arrayidx29, align 4, !dbg !695, !tbaa !596
  %arrayidx32 = getelementptr inbounds [3 x float]* %I, i64 0, i64 1, !dbg !696
  %8 = load float* %arrayidx32, align 4, !dbg !696, !tbaa !596
  %add33 = fadd float %mul2, %8, !dbg !696
  store float %add33, float* %arrayidx32, align 4, !dbg !696, !tbaa !596
  %arrayidx35 = getelementptr inbounds [3 x float]* %I, i64 1, i64 0, !dbg !697
  %9 = load float* %arrayidx35, align 4, !dbg !697, !tbaa !596
  %add36 = fadd float %mul2, %9, !dbg !697
  store float %add36, float* %arrayidx35, align 4, !dbg !697, !tbaa !596
  %arrayidx38 = getelementptr inbounds [3 x float]* %I, i64 0, i64 2, !dbg !698
  %10 = load float* %arrayidx38, align 4, !dbg !698, !tbaa !596
  %add39 = fadd float %mul6, %10, !dbg !698
  store float %add39, float* %arrayidx38, align 4, !dbg !698, !tbaa !596
  %arrayidx41 = getelementptr inbounds [3 x float]* %I, i64 2, i64 0, !dbg !699
  %11 = load float* %arrayidx41, align 4, !dbg !699, !tbaa !596
  %add42 = fadd float %mul6, %11, !dbg !699
  store float %add42, float* %arrayidx41, align 4, !dbg !699, !tbaa !596
  %arrayidx44 = getelementptr inbounds [3 x float]* %I, i64 1, i64 2, !dbg !700
  %12 = load float* %arrayidx44, align 4, !dbg !700, !tbaa !596
  %add45 = fadd float %mul10, %12, !dbg !700
  store float %add45, float* %arrayidx44, align 4, !dbg !700, !tbaa !596
  %arrayidx47 = getelementptr inbounds [3 x float]* %I, i64 2, i64 1, !dbg !701
  %13 = load float* %arrayidx47, align 4, !dbg !701, !tbaa !596
  %add48 = fadd float %mul10, %13, !dbg !701
  store float %add48, float* %arrayidx47, align 4, !dbg !701, !tbaa !596
  ret void, !dbg !702
}

; Function Attrs: nounwind optsize uwtable
define void @do_stopcm_grp(%struct._IO_FILE* nocapture %fp, i32 %start, i32 %homenr, [3 x float]* nocapture %x, [3 x float]* nocapture %v, %struct.t_vcm* nocapture %vcm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !422), !dbg !703
  tail call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !423), !dbg !703
  tail call void @llvm.dbg.value(metadata !{i32 %homenr}, i64 0, metadata !424), !dbg !703
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !425), !dbg !703
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !426), !dbg !703
  tail call void @llvm.dbg.value(metadata !{%struct.t_vcm* %vcm}, i64 0, metadata !427), !dbg !704
  tail call void @llvm.dbg.declare(metadata !705, metadata !433), !dbg !706
  tail call void @llvm.dbg.declare(metadata !705, metadata !434), !dbg !706
  %mode = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 1, !dbg !707
  %0 = load i32* %mode, align 4, !dbg !707, !tbaa !570
  %cmp = icmp eq i32 %0, 2, !dbg !707
  br i1 %cmp, label %if.end39, label %for.cond.preheader, !dbg !707

for.cond.preheader:                               ; preds = %entry
  %add = add nsw i32 %homenr, %start, !dbg !708
  %cmp183 = icmp sgt i32 %homenr, 0, !dbg !708
  br i1 %cmp183, label %for.body.lr.ph, label %for.end, !dbg !708

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %group_id = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 10, !dbg !711
  %1 = load i16** %group_id, align 8, !dbg !711, !tbaa !580
  %group_v = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 3, !dbg !713
  %2 = load [3 x float]** %group_v, align 8, !dbg !713, !tbaa !580
  %3 = sext i32 %start to i64
  br label %for.body, !dbg !708

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv85 = phi i64 [ %3, %for.body.lr.ph ], [ %indvars.iv.next86, %for.body ]
  %arrayidx = getelementptr inbounds i16* %1, i64 %indvars.iv85, !dbg !711
  %4 = load i16* %arrayidx, align 2, !dbg !711, !tbaa !595
  %arraydecay = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv85, i64 0, !dbg !713
  %idxprom4 = zext i16 %4 to i64, !dbg !713
  %arraydecay6 = getelementptr inbounds [3 x float]* %2, i64 %idxprom4, i64 0, !dbg !713
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !714), !dbg !715
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay6}, i64 0, metadata !716), !dbg !715
  %5 = load float* %arraydecay, align 4, !dbg !717, !tbaa !596
  %6 = load float* %arraydecay6, align 4, !dbg !717, !tbaa !596
  %sub.i = fsub float %5, %6, !dbg !717
  tail call void @llvm.dbg.value(metadata !{float %sub.i}, i64 0, metadata !718), !dbg !717
  %arrayidx2.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv85, i64 1, !dbg !719
  %7 = load float* %arrayidx2.i, align 4, !dbg !719, !tbaa !596
  %arrayidx3.i = getelementptr inbounds [3 x float]* %2, i64 %idxprom4, i64 1, !dbg !719
  %8 = load float* %arrayidx3.i, align 4, !dbg !719, !tbaa !596
  %sub4.i = fsub float %7, %8, !dbg !719
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !720), !dbg !719
  %arrayidx5.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv85, i64 2, !dbg !721
  %9 = load float* %arrayidx5.i, align 4, !dbg !721, !tbaa !596
  %arrayidx6.i = getelementptr inbounds [3 x float]* %2, i64 %idxprom4, i64 2, !dbg !721
  %10 = load float* %arrayidx6.i, align 4, !dbg !721, !tbaa !596
  %sub7.i = fsub float %9, %10, !dbg !721
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !722), !dbg !721
  store float %sub.i, float* %arraydecay, align 4, !dbg !723, !tbaa !596
  store float %sub4.i, float* %arrayidx2.i, align 4, !dbg !724, !tbaa !596
  store float %sub7.i, float* %arrayidx5.i, align 4, !dbg !725, !tbaa !596
  %indvars.iv.next86 = add i64 %indvars.iv85, 1, !dbg !708
  %11 = trunc i64 %indvars.iv.next86 to i32, !dbg !708
  %cmp1 = icmp slt i32 %11, %add, !dbg !708
  br i1 %cmp1, label %for.body, label %for.end, !dbg !708

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %cmp8.not = icmp ne i32 %0, 1, !dbg !726
  %cmp183.not = xor i1 %cmp183, true, !dbg !726
  %brmerge = or i1 %cmp8.not, %cmp183.not, !dbg !726
  br i1 %brmerge, label %if.end39, label %for.body15.lr.ph, !dbg !726

for.body15.lr.ph:                                 ; preds = %for.end
  %group_id17 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 10, !dbg !727
  %12 = load i16** %group_id17, align 8, !dbg !727, !tbaa !580
  %group_x = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4, !dbg !731
  %13 = load [3 x float]** %group_x, align 8, !dbg !731, !tbaa !580
  %group_w = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 6, !dbg !732
  %14 = load [3 x float]** %group_w, align 8, !dbg !732, !tbaa !580
  %15 = sext i32 %start to i64
  br label %for.body15, !dbg !733

for.body15:                                       ; preds = %for.body15.lr.ph, %for.body15
  %indvars.iv = phi i64 [ %15, %for.body15.lr.ph ], [ %indvars.iv.next, %for.body15 ]
  %arrayidx18 = getelementptr inbounds i16* %12, i64 %indvars.iv, !dbg !727
  %16 = load i16* %arrayidx18, align 2, !dbg !727, !tbaa !595
  %arraydecay22 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !731
  %idxprom23 = zext i16 %16 to i64, !dbg !731
  %arraydecay25 = getelementptr inbounds [3 x float]* %13, i64 %idxprom23, i64 0, !dbg !731
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay22}, i64 0, metadata !734), !dbg !735
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay25}, i64 0, metadata !736), !dbg !735
  tail call void @llvm.dbg.value(metadata !737, i64 0, metadata !738), !dbg !735
  %17 = load float* %arraydecay22, align 4, !dbg !739, !tbaa !596
  %18 = load float* %arraydecay25, align 4, !dbg !739, !tbaa !596
  %sub.i71 = fsub float %17, %18, !dbg !739
  tail call void @llvm.dbg.value(metadata !{float %sub.i71}, i64 0, metadata !740), !dbg !739
  %arrayidx2.i72 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !741
  %19 = load float* %arrayidx2.i72, align 4, !dbg !741, !tbaa !596
  %arrayidx3.i73 = getelementptr inbounds [3 x float]* %13, i64 %idxprom23, i64 1, !dbg !741
  %20 = load float* %arrayidx3.i73, align 4, !dbg !741, !tbaa !596
  %sub4.i74 = fsub float %19, %20, !dbg !741
  tail call void @llvm.dbg.value(metadata !{float %sub4.i74}, i64 0, metadata !742), !dbg !741
  %arrayidx5.i75 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !743
  %21 = load float* %arrayidx5.i75, align 4, !dbg !743, !tbaa !596
  %arrayidx6.i76 = getelementptr inbounds [3 x float]* %13, i64 %idxprom23, i64 2, !dbg !743
  %22 = load float* %arrayidx6.i76, align 4, !dbg !743, !tbaa !596
  %sub7.i77 = fsub float %21, %22, !dbg !743
  tail call void @llvm.dbg.value(metadata !{float %sub7.i77}, i64 0, metadata !744), !dbg !743
  %arraydecay29 = getelementptr inbounds [3 x float]* %14, i64 %idxprom23, i64 0, !dbg !732
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay29}, i64 0, metadata !745), !dbg !746
  tail call void @llvm.dbg.value(metadata !737, i64 0, metadata !747), !dbg !746
  tail call void @llvm.dbg.value(metadata !737, i64 0, metadata !748), !dbg !746
  %arrayidx.i = getelementptr inbounds [3 x float]* %14, i64 %idxprom23, i64 1, !dbg !749
  %23 = load float* %arrayidx.i, align 4, !dbg !749, !tbaa !596
  %mul.i = fmul float %sub7.i77, %23, !dbg !749
  %arrayidx2.i68 = getelementptr inbounds [3 x float]* %14, i64 %idxprom23, i64 2, !dbg !749
  %24 = load float* %arrayidx2.i68, align 4, !dbg !749, !tbaa !596
  %mul4.i = fmul float %sub4.i74, %24, !dbg !749
  %sub.i70 = fsub float %mul.i, %mul4.i, !dbg !749
  %mul8.i = fmul float %sub.i71, %24, !dbg !750
  %25 = load float* %arraydecay29, align 4, !dbg !750, !tbaa !596
  %mul11.i = fmul float %sub7.i77, %25, !dbg !750
  %sub12.i = fsub float %mul8.i, %mul11.i, !dbg !750
  %mul16.i = fmul float %sub4.i74, %25, !dbg !751
  %mul19.i = fmul float %sub.i71, %23, !dbg !751
  %sub20.i = fsub float %mul16.i, %mul19.i, !dbg !751
  %arraydecay34 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv, i64 0, !dbg !752
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay34}, i64 0, metadata !753), !dbg !754
  tail call void @llvm.dbg.value(metadata !737, i64 0, metadata !755), !dbg !754
  %26 = load float* %arraydecay34, align 4, !dbg !756, !tbaa !596
  %sub.i61 = fsub float %26, %sub.i70, !dbg !756
  tail call void @llvm.dbg.value(metadata !{float %sub.i61}, i64 0, metadata !757), !dbg !756
  %arrayidx2.i62 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv, i64 1, !dbg !758
  %27 = load float* %arrayidx2.i62, align 4, !dbg !758, !tbaa !596
  %sub4.i64 = fsub float %27, %sub12.i, !dbg !758
  tail call void @llvm.dbg.value(metadata !{float %sub4.i64}, i64 0, metadata !759), !dbg !758
  %arrayidx5.i65 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv, i64 2, !dbg !760
  %28 = load float* %arrayidx5.i65, align 4, !dbg !760, !tbaa !596
  %sub7.i67 = fsub float %28, %sub20.i, !dbg !760
  tail call void @llvm.dbg.value(metadata !{float %sub7.i67}, i64 0, metadata !761), !dbg !760
  store float %sub.i61, float* %arraydecay34, align 4, !dbg !762, !tbaa !596
  store float %sub4.i64, float* %arrayidx2.i62, align 4, !dbg !763, !tbaa !596
  store float %sub7.i67, float* %arrayidx5.i65, align 4, !dbg !764, !tbaa !596
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !733
  %29 = trunc i64 %indvars.iv.next to i32, !dbg !733
  %cmp13 = icmp slt i32 %29, %add, !dbg !733
  br i1 %cmp13, label %for.body15, label %if.end39, !dbg !733

if.end39:                                         ; preds = %for.end, %for.body15, %entry
  ret void, !dbg !765
}

; Function Attrs: nounwind optsize uwtable
define void @check_cm_grp(%struct._IO_FILE* %fp, %struct.t_vcm* %vcm) #0 {
entry:
  %jcm = alloca [3 x float], align 4
  %Icm = alloca [3 x [3 x float]], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !439), !dbg !766
  call void @llvm.dbg.value(metadata !{%struct.t_vcm* %vcm}, i64 0, metadata !440), !dbg !766
  call void @llvm.dbg.declare(metadata !{[3 x float]* %jcm}, metadata !448), !dbg !767
  %0 = bitcast [3 x [3 x float]]* %Icm to i8*, !dbg !768
  call void @llvm.lifetime.start(i64 36, i8* %0) #4, !dbg !768
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %Icm}, metadata !449), !dbg !768
  %mode = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 1, !dbg !769
  %1 = load i32* %mode, align 4, !dbg !769, !tbaa !570
  %cmp = icmp eq i32 %1, 2, !dbg !769
  %nr100.phi.trans.insert = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 0
  %.pre492 = load i32* %nr100.phi.trans.insert, align 4, !dbg !770, !tbaa !570
  br i1 %cmp, label %for.cond99.preheader, label %for.cond.preheader, !dbg !769

for.cond.preheader:                               ; preds = %entry
  %cmp1476 = icmp sgt i32 %.pre492, 0, !dbg !772
  br i1 %cmp1476, label %for.body.lr.ph, label %for.end, !dbg !772

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %group_mass = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8, !dbg !775
  %2 = load float** %group_mass, align 8, !dbg !775, !tbaa !580
  %group_p = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2, !dbg !777
  %group_v = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 3, !dbg !777
  br label %for.body, !dbg !772

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv490 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next491, %for.inc ]
  %arrayidx = getelementptr inbounds float* %2, i64 %indvars.iv490, !dbg !775
  %3 = load float* %arrayidx, align 4, !dbg !775, !tbaa !596
  call void @llvm.dbg.value(metadata !{float %3}, i64 0, metadata !446), !dbg !775
  %fabsf414 = call float @fabsf(float %3) #7, !dbg !779
  %4 = fpext float %fabsf414 to double, !dbg !779
  %cmp2 = fcmp ogt double %4, 1.200000e-38, !dbg !779
  br i1 %cmp2, label %if.then4, label %for.inc, !dbg !779

if.then4:                                         ; preds = %for.body
  %conv6 = fdiv float 1.000000e+00, %3, !dbg !780
  call void @llvm.dbg.value(metadata !{float %conv6}, i64 0, metadata !447), !dbg !780
  %5 = load [3 x float]** %group_p, align 8, !dbg !777, !tbaa !580
  %arraydecay = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv490, i64 0, !dbg !777
  %6 = load [3 x float]** %group_v, align 8, !dbg !777, !tbaa !580
  %arraydecay11 = getelementptr inbounds [3 x float]* %6, i64 %indvars.iv490, i64 0, !dbg !777
  tail call void @llvm.dbg.value(metadata !{float %conv6}, i64 0, metadata !781), !dbg !782
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !783), !dbg !782
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay11}, i64 0, metadata !784), !dbg !782
  %7 = load float* %arraydecay, align 4, !dbg !785, !tbaa !596
  %mul.i = fmul float %conv6, %7, !dbg !785
  store float %mul.i, float* %arraydecay11, align 4, !dbg !785, !tbaa !596
  %arrayidx2.i = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv490, i64 1, !dbg !786
  %8 = load float* %arrayidx2.i, align 4, !dbg !786, !tbaa !596
  %mul3.i = fmul float %conv6, %8, !dbg !786
  %arrayidx4.i = getelementptr inbounds [3 x float]* %6, i64 %indvars.iv490, i64 1, !dbg !786
  store float %mul3.i, float* %arrayidx4.i, align 4, !dbg !786, !tbaa !596
  %arrayidx5.i = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv490, i64 2, !dbg !787
  %9 = load float* %arrayidx5.i, align 4, !dbg !787, !tbaa !596
  %mul6.i = fmul float %conv6, %9, !dbg !787
  %arrayidx7.i = getelementptr inbounds [3 x float]* %6, i64 %indvars.iv490, i64 2, !dbg !787
  store float %mul6.i, float* %arrayidx7.i, align 4, !dbg !787, !tbaa !596
  br label %for.inc, !dbg !788

for.inc:                                          ; preds = %for.body, %if.then4
  %indvars.iv.next491 = add i64 %indvars.iv490, 1, !dbg !772
  %10 = trunc i64 %indvars.iv.next491 to i32, !dbg !772
  %cmp1 = icmp slt i32 %10, %.pre492, !dbg !772
  br i1 %cmp1, label %for.body, label %for.end, !dbg !772

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %cmp13 = icmp eq i32 %1, 1, !dbg !789
  br i1 %cmp13, label %for.cond16.preheader, label %for.cond99.preheader, !dbg !789

for.cond16.preheader:                             ; preds = %for.end
  br i1 %cmp1476, label %for.body20.lr.ph, label %for.end287, !dbg !790

for.body20.lr.ph:                                 ; preds = %for.cond16.preheader
  %group_mass22 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8, !dbg !793
  %group_x = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4, !dbg !795
  %group_v48 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 3, !dbg !798
  %arraydecay51 = getelementptr inbounds [3 x float]* %jcm, i64 0, i64 0, !dbg !798
  %arrayidx13.i450 = getelementptr inbounds [3 x float]* %jcm, i64 0, i64 1, !dbg !799
  %arrayidx21.i452 = getelementptr inbounds [3 x float]* %jcm, i64 0, i64 2, !dbg !800
  %group_j = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5, !dbg !801
  %arraydecay66 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 0, !dbg !803
  %group_i = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7, !dbg !804
  %arrayidx3.i454 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 0, i64 0, !dbg !805
  %arrayidx9.i458 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 0, i64 1, !dbg !806
  %arrayidx16.i = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 0, i64 2, !dbg !807
  %arrayidx23.i461 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 1, i64 0, !dbg !808
  %arrayidx30.i = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 1, i64 1, !dbg !809
  %arrayidx37.i = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 1, i64 2, !dbg !810
  %arrayidx44.i = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 2, i64 0, !dbg !811
  %arrayidx51.i = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 2, i64 1, !dbg !812
  %arrayidx58.i = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 2, i64 2, !dbg !813
  %group_w = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 6, !dbg !814
  br label %for.body20, !dbg !790

for.cond99.preheader:                             ; preds = %entry, %for.inc94, %for.end
  %11 = phi i32 [ %.pre492, %for.end ], [ %60, %for.inc94 ], [ %.pre492, %entry ]
  %nr100 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 0, !dbg !770
  %cmp101470 = icmp sgt i32 %11, 0, !dbg !770
  br i1 %cmp101470, label %for.body103.lr.ph, label %for.end287, !dbg !770

for.body103.lr.ph:                                ; preds = %for.cond99.preheader
  %group_mass105 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8, !dbg !815
  %group_v118 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 3, !dbg !817
  %tobool136 = icmp eq %struct._IO_FILE* %fp, null, !dbg !820
  %group_j164 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5, !dbg !822
  %group_w168 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 6, !dbg !822
  %group_name186 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 9, !dbg !824
  %group_i191 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7, !dbg !827
  %group_x198 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4, !dbg !828
  %group_p214 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2, !dbg !829
  br label %for.body103, !dbg !770

for.body20:                                       ; preds = %for.inc94, %for.body20.lr.ph
  %12 = phi i32 [ %.pre492, %for.body20.lr.ph ], [ %60, %for.inc94 ]
  %13 = phi i32 [ %.pre492, %for.body20.lr.ph ], [ %61, %for.inc94 ]
  %indvars.iv488 = phi i64 [ 0, %for.body20.lr.ph ], [ %indvars.iv.next489, %for.inc94 ]
  %14 = load float** %group_mass22, align 8, !dbg !793, !tbaa !580
  %arrayidx23 = getelementptr inbounds float* %14, i64 %indvars.iv488, !dbg !793
  %15 = load float* %arrayidx23, align 4, !dbg !793, !tbaa !596
  call void @llvm.dbg.value(metadata !{float %15}, i64 0, metadata !446), !dbg !793
  %fabsf413 = call float @fabsf(float %15) #7, !dbg !830
  %16 = fpext float %fabsf413 to double, !dbg !830
  %cmp26 = fcmp ogt double %16, 1.200000e-38, !dbg !830
  br i1 %cmp26, label %if.then28, label %for.inc94, !dbg !830

if.then28:                                        ; preds = %for.body20
  %conv31 = fdiv float 1.000000e+00, %15, !dbg !831
  call void @llvm.dbg.value(metadata !{float %conv31}, i64 0, metadata !447), !dbg !831
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !441), !dbg !832
  %17 = load [3 x float]** %group_x, align 8, !dbg !795, !tbaa !580
  br label %for.body35, !dbg !832

for.body35:                                       ; preds = %for.body35, %if.then28
  %indvars.iv480 = phi i64 [ 0, %if.then28 ], [ %indvars.iv.next481, %for.body35 ]
  %arrayidx39 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv488, i64 %indvars.iv480, !dbg !795
  %18 = load float* %arrayidx39, align 4, !dbg !795, !tbaa !596
  %mul = fmul float %conv31, %18, !dbg !795
  store float %mul, float* %arrayidx39, align 4, !dbg !795, !tbaa !596
  %indvars.iv.next481 = add i64 %indvars.iv480, 1, !dbg !832
  %lftr.wideiv482 = trunc i64 %indvars.iv.next481 to i32, !dbg !832
  %exitcond483 = icmp eq i32 %lftr.wideiv482, 3, !dbg !832
  br i1 %exitcond483, label %for.end42, label %for.body35, !dbg !832

for.end42:                                        ; preds = %for.body35
  %arraydecay46 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv488, i64 0, !dbg !798
  %19 = load [3 x float]** %group_v48, align 8, !dbg !798, !tbaa !580
  %arraydecay50 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv488, i64 0, !dbg !798
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay46}, i64 0, metadata !833), !dbg !834
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay50}, i64 0, metadata !835), !dbg !834
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay51}, i64 0, metadata !836), !dbg !834
  %arrayidx.i = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv488, i64 1, !dbg !837
  %20 = load float* %arrayidx.i, align 4, !dbg !837, !tbaa !596
  %arrayidx1.i442 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv488, i64 2, !dbg !837
  %21 = load float* %arrayidx1.i442, align 4, !dbg !837, !tbaa !596
  %mul.i443 = fmul float %20, %21, !dbg !837
  %arrayidx2.i444 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv488, i64 2, !dbg !837
  %22 = load float* %arrayidx2.i444, align 4, !dbg !837, !tbaa !596
  %arrayidx3.i445 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv488, i64 1, !dbg !837
  %23 = load float* %arrayidx3.i445, align 4, !dbg !837, !tbaa !596
  %mul4.i446 = fmul float %22, %23, !dbg !837
  %sub.i447 = fsub float %mul.i443, %mul4.i446, !dbg !837
  store float %sub.i447, float* %arraydecay51, align 4, !dbg !837, !tbaa !596
  %24 = load float* %arraydecay50, align 4, !dbg !799, !tbaa !596
  %mul8.i = fmul float %22, %24, !dbg !799
  %25 = load float* %arraydecay46, align 4, !dbg !799, !tbaa !596
  %mul11.i448 = fmul float %25, %21, !dbg !799
  %sub12.i449 = fsub float %mul8.i, %mul11.i448, !dbg !799
  store float %sub12.i449, float* %arrayidx13.i450, align 4, !dbg !799, !tbaa !596
  %mul16.i451 = fmul float %25, %23, !dbg !800
  %mul19.i = fmul float %20, %24, !dbg !800
  %sub20.i = fsub float %mul16.i451, %mul19.i, !dbg !800
  store float %sub20.i, float* %arrayidx21.i452, align 4, !dbg !800, !tbaa !596
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !441), !dbg !838
  %26 = load [3 x float]** %group_j, align 8, !dbg !801, !tbaa !580
  br label %for.body55, !dbg !838

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.end42
  %27 = phi float [ %sub.i447, %for.end42 ], [ %.pre493, %for.body55.for.body55_crit_edge ]
  %indvars.iv484 = phi i64 [ 0, %for.end42 ], [ %indvars.iv.next485, %for.body55.for.body55_crit_edge ]
  %mul58 = fmul float %15, %27, !dbg !801
  %arrayidx62 = getelementptr inbounds [3 x float]* %26, i64 %indvars.iv488, i64 %indvars.iv484, !dbg !801
  %28 = load float* %arrayidx62, align 4, !dbg !801, !tbaa !596
  %sub = fsub float %28, %mul58, !dbg !801
  store float %sub, float* %arrayidx62, align 4, !dbg !801, !tbaa !596
  %indvars.iv.next485 = add i64 %indvars.iv484, 1, !dbg !838
  %lftr.wideiv486 = trunc i64 %indvars.iv.next485 to i32, !dbg !838
  %exitcond487 = icmp eq i32 %lftr.wideiv486, 3, !dbg !838
  br i1 %exitcond487, label %for.end65, label %for.body55.for.body55_crit_edge, !dbg !838

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  %arrayidx57.phi.trans.insert = getelementptr inbounds [3 x float]* %jcm, i64 0, i64 %indvars.iv.next485
  %.pre493 = load float* %arrayidx57.phi.trans.insert, align 4, !dbg !801, !tbaa !596
  br label %for.body55, !dbg !838

for.end65:                                        ; preds = %for.body55
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay66}, i64 0, metadata !839) #4, !dbg !840
  call void @llvm.dbg.value(metadata !672, i64 0, metadata !841) #4, !dbg !842
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #4, !dbg !843
  call fastcc void @update_tensor(float* %arraydecay46, float %15, [3 x float]* %arraydecay66) #6, !dbg !844
  %29 = load [3 x [3 x float]]** %group_i, align 8, !dbg !804, !tbaa !580
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay66}, i64 0, metadata !845), !dbg !846
  %arrayidx1.i453 = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 0, i64 0, !dbg !805
  %30 = load float* %arrayidx1.i453, align 4, !dbg !805, !tbaa !596
  %31 = load float* %arrayidx3.i454, align 16, !dbg !805, !tbaa !596
  %sub.i455 = fsub float %30, %31, !dbg !805
  store float %sub.i455, float* %arrayidx1.i453, align 4, !dbg !805, !tbaa !596
  %arrayidx7.i457 = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 0, i64 1, !dbg !806
  %32 = load float* %arrayidx7.i457, align 4, !dbg !806, !tbaa !596
  %33 = load float* %arrayidx9.i458, align 4, !dbg !806, !tbaa !596
  %sub10.i = fsub float %32, %33, !dbg !806
  store float %sub10.i, float* %arrayidx7.i457, align 4, !dbg !806, !tbaa !596
  %arrayidx14.i459 = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 0, i64 2, !dbg !807
  %34 = load float* %arrayidx14.i459, align 4, !dbg !807, !tbaa !596
  %35 = load float* %arrayidx16.i, align 8, !dbg !807, !tbaa !596
  %sub17.i = fsub float %34, %35, !dbg !807
  store float %sub17.i, float* %arrayidx14.i459, align 4, !dbg !807, !tbaa !596
  %arrayidx21.i460 = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 1, i64 0, !dbg !808
  %36 = load float* %arrayidx21.i460, align 4, !dbg !808, !tbaa !596
  %37 = load float* %arrayidx23.i461, align 4, !dbg !808, !tbaa !596
  %sub24.i462 = fsub float %36, %37, !dbg !808
  store float %sub24.i462, float* %arrayidx21.i460, align 4, !dbg !808, !tbaa !596
  %arrayidx28.i463 = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 1, i64 1, !dbg !809
  %38 = load float* %arrayidx28.i463, align 4, !dbg !809, !tbaa !596
  %39 = load float* %arrayidx30.i, align 4, !dbg !809, !tbaa !596
  %sub31.i = fsub float %38, %39, !dbg !809
  store float %sub31.i, float* %arrayidx28.i463, align 4, !dbg !809, !tbaa !596
  %arrayidx35.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 1, i64 2, !dbg !810
  %40 = load float* %arrayidx35.i, align 4, !dbg !810, !tbaa !596
  %41 = load float* %arrayidx37.i, align 4, !dbg !810, !tbaa !596
  %sub38.i = fsub float %40, %41, !dbg !810
  store float %sub38.i, float* %arrayidx35.i, align 4, !dbg !810, !tbaa !596
  %arrayidx42.i465 = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 2, i64 0, !dbg !811
  %42 = load float* %arrayidx42.i465, align 4, !dbg !811, !tbaa !596
  %43 = load float* %arrayidx44.i, align 8, !dbg !811, !tbaa !596
  %sub45.i = fsub float %42, %43, !dbg !811
  store float %sub45.i, float* %arrayidx42.i465, align 4, !dbg !811, !tbaa !596
  %arrayidx49.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 2, i64 1, !dbg !812
  %44 = load float* %arrayidx49.i, align 4, !dbg !812, !tbaa !596
  %45 = load float* %arrayidx51.i, align 4, !dbg !812, !tbaa !596
  %sub52.i = fsub float %44, %45, !dbg !812
  store float %sub52.i, float* %arrayidx49.i, align 4, !dbg !812, !tbaa !596
  %arrayidx56.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 2, i64 2, !dbg !813
  %46 = load float* %arrayidx56.i, align 4, !dbg !813, !tbaa !596
  %47 = load float* %arrayidx58.i, align 8, !dbg !813, !tbaa !596
  %sub59.i = fsub float %46, %47, !dbg !813
  store float %sub59.i, float* %arrayidx56.i, align 4, !dbg !813, !tbaa !596
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay66}, i64 0, metadata !847) #4, !dbg !849
  call void @llvm.dbg.declare(metadata !850, metadata !483) #4, !dbg !851
  %add.i438 = fadd float %sub31.i, %sub59.i, !dbg !852
  %sub.i440 = fsub float -0.000000e+00, %sub10.i, !dbg !853
  %sub12.i = fsub float -0.000000e+00, %sub17.i, !dbg !854
  %add24.i = fadd float %sub59.i, %sub.i455, !dbg !855
  %add46.i = fadd float %sub31.i, %sub.i455, !dbg !856
  call void @llvm.dbg.value(metadata !705, i64 0, metadata !857) #4, !dbg !859
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay66}, i64 0, metadata !860) #4, !dbg !859
  call void @llvm.dbg.value(metadata !861, i64 0, metadata !862) #4, !dbg !863
  call void @llvm.dbg.value(metadata !864, i64 0, metadata !865) #4, !dbg !866
  call void @llvm.dbg.value(metadata !705, i64 0, metadata !867) #4, !dbg !869
  %mul.i.i.i = fmul float %add24.i, %add46.i, !dbg !870
  %mul10.i.i.i = fmul float %sub38.i, %sub38.i, !dbg !870
  %sub.i.i.i = fsub float %mul.i.i.i, %mul10.i.i.i, !dbg !870
  %mul11.i.i.i = fmul float %add.i438, %sub.i.i.i, !dbg !870
  %mul18.i.i.i = fmul float %add46.i, %sub.i440, !dbg !870
  %mul23.i.i.i = fmul float %sub17.i, %sub38.i, !dbg !870
  %sub24.i.i.i = fsub float %mul18.i.i.i, %mul23.i.i.i, !dbg !870
  %mul25.i.i.i = fmul float %sub24.i.i.i, %sub.i440, !dbg !870
  %sub26.i.i.i = fsub float %mul11.i.i.i, %mul25.i.i.i, !dbg !870
  %mul33.i.i.i = fmul float %sub10.i, %sub38.i, !dbg !870
  %mul38.i.i.i = fmul float %add24.i, %sub12.i, !dbg !870
  %sub39.i.i.i = fsub float %mul33.i.i.i, %mul38.i.i.i, !dbg !870
  %mul40.i.i.i = fmul float %sub39.i.i.i, %sub12.i, !dbg !870
  %add.i.i.i = fadd float %mul40.i.i.i, %sub26.i.i.i, !dbg !870
  call void @llvm.dbg.value(metadata !{float %add.i.i.i}, i64 0, metadata !872) #4, !dbg !868
  %conv1.i.i = fdiv float 1.000000e+00, %add.i.i.i, !dbg !873
  call void @llvm.dbg.value(metadata !{float %conv1.i.i}, i64 0, metadata !874) #4, !dbg !873
  %fabsf.i.i = call float @fabsf(float %conv1.i.i) #7, !dbg !875
  call void @llvm.dbg.value(metadata !{float %fabsf.i.i}, i64 0, metadata !876) #4, !dbg !875
  %cmp.i.i = fcmp ole float %fabsf.i.i, 0x3C32725DE0000000, !dbg !877
  %cmp6.i.i = fcmp oge float %fabsf.i.i, 0x43ABC16D60000000, !dbg !877
  %or.cond.i.i = or i1 %cmp.i.i, %cmp6.i.i, !dbg !877
  br i1 %or.cond.i.i, label %if.then.i.i, label %get_minv.exit, !dbg !877

if.then.i.i:                                      ; preds = %for.end65
  %conv2.i.i = fpext float %conv1.i.i to double, !dbg !875
  %div9.i.i = fdiv double 1.000000e+00, %conv2.i.i, !dbg !878
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str23, i64 0, i64 0), double %div9.i.i) #5, !dbg !878
  br label %get_minv.exit, !dbg !878

get_minv.exit:                                    ; preds = %for.end65, %if.then.i.i
  %mul18.i.i = fmul float %conv1.i.i, %sub.i.i.i, !dbg !879
  store float %mul18.i.i, float* %arrayidx3.i454, align 16, !dbg !879, !tbaa !596
  %sub21.i.i = fsub float -0.000000e+00, %conv1.i.i, !dbg !880
  %mul33.i.i = fmul float %sub24.i.i.i, %sub21.i.i, !dbg !880
  store float %mul33.i.i, float* %arrayidx9.i458, align 4, !dbg !880, !tbaa !596
  %mul47.i.i = fmul float %conv1.i.i, %sub39.i.i.i, !dbg !881
  store float %mul47.i.i, float* %arrayidx16.i, align 8, !dbg !881, !tbaa !596
  store float %mul33.i.i, float* %arrayidx23.i461, align 4, !dbg !882, !tbaa !596
  %mul69.i.i = fmul float %add.i438, %add46.i, !dbg !883
  %mul74.i.i = fmul float %sub17.i, %sub17.i, !dbg !883
  %sub75.i.i = fsub float %mul69.i.i, %mul74.i.i, !dbg !883
  %mul76.i.i = fmul float %conv1.i.i, %sub75.i.i, !dbg !883
  store float %mul76.i.i, float* %arrayidx30.i, align 4, !dbg !883, !tbaa !596
  %48 = fmul float %add.i438, %sub38.i, !dbg !884
  %mul84.i.i = fsub float -0.000000e+00, %48, !dbg !884
  %mul89.i.i = fmul float %sub10.i, %sub17.i, !dbg !884
  %sub90.i.i = fsub float %mul84.i.i, %mul89.i.i, !dbg !884
  %mul91.i.i = fmul float %sub90.i.i, %sub21.i.i, !dbg !884
  store float %mul91.i.i, float* %arrayidx37.i, align 4, !dbg !884, !tbaa !596
  store float %mul47.i.i, float* %arrayidx44.i, align 8, !dbg !885, !tbaa !596
  store float %mul91.i.i, float* %arrayidx51.i, align 4, !dbg !886, !tbaa !596
  %mul127.i.i = fmul float %add.i438, %add24.i, !dbg !887
  %mul132.i.i = fmul float %sub10.i, %sub10.i, !dbg !887
  %sub133.i.i = fsub float %mul127.i.i, %mul132.i.i, !dbg !887
  %mul134.i.i = fmul float %conv1.i.i, %sub133.i.i, !dbg !887
  store float %mul134.i.i, float* %arrayidx58.i, align 8, !dbg !887, !tbaa !596
  %49 = load [3 x float]** %group_j, align 8, !dbg !814, !tbaa !580
  %arraydecay89 = getelementptr inbounds [3 x float]* %49, i64 %indvars.iv488, i64 0, !dbg !814
  %50 = load [3 x float]** %group_w, align 8, !dbg !814, !tbaa !580
  %arraydecay92 = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv488, i64 0, !dbg !814
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay66}, i64 0, metadata !888), !dbg !889
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay89}, i64 0, metadata !890), !dbg !889
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay92}, i64 0, metadata !891), !dbg !889
  %51 = load float* %arraydecay89, align 4, !dbg !892, !tbaa !596
  %mul.i427 = fmul float %mul18.i.i, %51, !dbg !892
  %arrayidx5.i429 = getelementptr inbounds [3 x float]* %49, i64 %indvars.iv488, i64 1, !dbg !892
  %52 = load float* %arrayidx5.i429, align 4, !dbg !892, !tbaa !596
  %mul6.i430 = fmul float %mul33.i.i, %52, !dbg !892
  %add.i431 = fadd float %mul.i427, %mul6.i430, !dbg !892
  %arrayidx9.i432 = getelementptr inbounds [3 x float]* %49, i64 %indvars.iv488, i64 2, !dbg !892
  %53 = load float* %arrayidx9.i432, align 4, !dbg !892, !tbaa !596
  %mul10.i433 = fmul float %mul47.i.i, %53, !dbg !892
  %add11.i = fadd float %add.i431, %mul10.i433, !dbg !892
  store float %add11.i, float* %arraydecay92, align 4, !dbg !892, !tbaa !596
  %54 = load float* %arraydecay89, align 4, !dbg !893, !tbaa !596
  %mul16.i = fmul float %mul33.i.i, %54, !dbg !893
  %55 = load float* %arrayidx5.i429, align 4, !dbg !893, !tbaa !596
  %mul20.i = fmul float %mul76.i.i, %55, !dbg !893
  %add21.i = fadd float %mul16.i, %mul20.i, !dbg !893
  %56 = load float* %arrayidx9.i432, align 4, !dbg !893, !tbaa !596
  %mul25.i434 = fmul float %mul91.i.i, %56, !dbg !893
  %add26.i = fadd float %add21.i, %mul25.i434, !dbg !893
  %arrayidx27.i = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv488, i64 1, !dbg !893
  store float %add26.i, float* %arrayidx27.i, align 4, !dbg !893, !tbaa !596
  %57 = load float* %arraydecay89, align 4, !dbg !894, !tbaa !596
  %mul31.i = fmul float %mul47.i.i, %57, !dbg !894
  %58 = load float* %arrayidx5.i429, align 4, !dbg !894, !tbaa !596
  %mul35.i = fmul float %mul91.i.i, %58, !dbg !894
  %add36.i = fadd float %mul31.i, %mul35.i, !dbg !894
  %59 = load float* %arrayidx9.i432, align 4, !dbg !894, !tbaa !596
  %mul40.i435 = fmul float %mul134.i.i, %59, !dbg !894
  %add41.i = fadd float %add36.i, %mul40.i435, !dbg !894
  %arrayidx42.i = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv488, i64 2, !dbg !894
  store float %add41.i, float* %arrayidx42.i, align 4, !dbg !894, !tbaa !596
  %.pre = load i32* %nr100.phi.trans.insert, align 4, !dbg !790, !tbaa !570
  br label %for.inc94, !dbg !895

for.inc94:                                        ; preds = %for.body20, %get_minv.exit
  %60 = phi i32 [ %12, %for.body20 ], [ %.pre, %get_minv.exit ]
  %61 = phi i32 [ %13, %for.body20 ], [ %.pre, %get_minv.exit ], !dbg !790
  %indvars.iv.next489 = add i64 %indvars.iv488, 1, !dbg !790
  %62 = trunc i64 %indvars.iv.next489 to i32, !dbg !790
  %cmp18 = icmp slt i32 %62, %61, !dbg !790
  br i1 %cmp18, label %for.body20, label %for.cond99.preheader, !dbg !790

for.body103:                                      ; preds = %for.inc285, %for.body103.lr.ph
  %indvars.iv478 = phi i64 [ 0, %for.body103.lr.ph ], [ %indvars.iv.next479, %for.inc285 ]
  call void @llvm.dbg.value(metadata !672, i64 0, metadata !443), !dbg !896
  call void @llvm.dbg.value(metadata !672, i64 0, metadata !445), !dbg !897
  %63 = load float** %group_mass105, align 8, !dbg !815, !tbaa !580
  %arrayidx106 = getelementptr inbounds float* %63, i64 %indvars.iv478, !dbg !815
  %64 = load float* %arrayidx106, align 4, !dbg !815, !tbaa !596
  %fabsf = call float @fabsf(float %64) #7, !dbg !815
  %65 = fpext float %fabsf to double, !dbg !815
  %cmp109 = fcmp ogt double %65, 1.200000e-38, !dbg !815
  br i1 %cmp109, label %for.cond112.preheader, label %for.inc285, !dbg !815

for.cond112.preheader:                            ; preds = %for.body103
  %66 = load [3 x float]** %group_v118, align 8, !dbg !817, !tbaa !580
  br label %for.body115, !dbg !898

for.body115:                                      ; preds = %for.body115, %for.cond112.preheader
  %indvars.iv = phi i64 [ 0, %for.cond112.preheader ], [ %indvars.iv.next, %for.body115 ]
  %ekcm.0468 = phi float [ 0.000000e+00, %for.cond112.preheader ], [ %add, %for.body115 ]
  %arrayidx120 = getelementptr inbounds [3 x float]* %66, i64 %indvars.iv478, i64 %indvars.iv, !dbg !817
  %67 = load float* %arrayidx120, align 4, !dbg !817, !tbaa !596
  tail call void @llvm.dbg.value(metadata !{float %67}, i64 0, metadata !899), !dbg !900
  %mul.i425 = fmul float %67, %67, !dbg !901
  %add = fadd float %ekcm.0468, %mul.i425, !dbg !817
  call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !443), !dbg !817
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !898
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !898
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !898
  br i1 %exitcond, label %for.end124, label %for.body115, !dbg !898

for.end124:                                       ; preds = %for.body115
  %conv128 = fpext float %64 to double, !dbg !902
  %mul129 = fmul double %conv128, 5.000000e-01, !dbg !902
  %conv130 = fpext float %add to double, !dbg !902
  %mul131 = fmul double %conv130, %mul129, !dbg !902
  %conv132 = fptrunc double %mul131 to float, !dbg !902
  call void @llvm.dbg.value(metadata !{float %conv132}, i64 0, metadata !443), !dbg !902
  %68 = load %struct._IO_FILE** @debug, align 8, !dbg !903, !tbaa !580
  %notlhs = fcmp ule float %conv132, 1.000000e+00, !dbg !903
  %notrhs = icmp eq %struct._IO_FILE* %68, null, !dbg !903
  %or.cond.not = and i1 %notrhs, %notlhs, !dbg !903
  %or.cond415 = or i1 %or.cond.not, %tobool136, !dbg !903
  br i1 %or.cond415, label %if.end158, label %if.then137, !dbg !903

if.then137:                                       ; preds = %for.end124
  %69 = load i8*** %group_name186, align 8, !dbg !904, !tbaa !580
  %arrayidx139 = getelementptr inbounds i8** %69, i64 %indvars.iv478, !dbg !904
  %70 = load i8** %arrayidx139, align 8, !dbg !904, !tbaa !580
  %arrayidx143 = getelementptr inbounds [3 x float]* %66, i64 %indvars.iv478, i64 0, !dbg !904
  %71 = load float* %arrayidx143, align 4, !dbg !904, !tbaa !596
  %conv144 = fpext float %71 to double, !dbg !904
  %arrayidx148 = getelementptr inbounds [3 x float]* %66, i64 %indvars.iv478, i64 1, !dbg !904
  %72 = load float* %arrayidx148, align 4, !dbg !904, !tbaa !596
  %conv149 = fpext float %72 to double, !dbg !904
  %arrayidx153 = getelementptr inbounds [3 x float]* %66, i64 %indvars.iv478, i64 2, !dbg !904
  %73 = load float* %arrayidx153, align 4, !dbg !904, !tbaa !596
  %conv154 = fpext float %73 to double, !dbg !904
  %conv155 = fpext float %conv132 to double, !dbg !904
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([62 x i8]* @.str15, i64 0, i64 0), i8* %70, double %conv144, double %conv149, double %conv154, double %conv155) #5, !dbg !904
  br label %if.end158, !dbg !904

if.end158:                                        ; preds = %for.end124, %if.then137
  %74 = load i32* %mode, align 4, !dbg !905, !tbaa !570
  %cmp160 = icmp eq i32 %74, 1, !dbg !905
  br i1 %cmp160, label %if.then162, label %for.inc285, !dbg !905

if.then162:                                       ; preds = %if.end158
  %75 = load [3 x float]** %group_j164, align 8, !dbg !822, !tbaa !580
  %arraydecay166 = getelementptr inbounds [3 x float]* %75, i64 %indvars.iv478, i64 0, !dbg !822
  %76 = load [3 x float]** %group_w168, align 8, !dbg !822, !tbaa !580
  %arraydecay170 = getelementptr inbounds [3 x float]* %76, i64 %indvars.iv478, i64 0, !dbg !822
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay166}, i64 0, metadata !906), !dbg !907
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay170}, i64 0, metadata !908), !dbg !907
  %77 = load float* %arraydecay166, align 4, !dbg !909, !tbaa !596
  %78 = load float* %arraydecay170, align 4, !dbg !909, !tbaa !596
  %mul.i420 = fmul float %77, %78, !dbg !909
  %arrayidx2.i421 = getelementptr inbounds [3 x float]* %75, i64 %indvars.iv478, i64 1, !dbg !909
  %79 = load float* %arrayidx2.i421, align 4, !dbg !909, !tbaa !596
  %arrayidx3.i422 = getelementptr inbounds [3 x float]* %76, i64 %indvars.iv478, i64 1, !dbg !909
  %80 = load float* %arrayidx3.i422, align 4, !dbg !909, !tbaa !596
  %mul4.i = fmul float %79, %80, !dbg !909
  %add.i423 = fadd float %mul.i420, %mul4.i, !dbg !909
  %arrayidx5.i424 = getelementptr inbounds [3 x float]* %75, i64 %indvars.iv478, i64 2, !dbg !909
  %81 = load float* %arrayidx5.i424, align 4, !dbg !909, !tbaa !596
  %arrayidx6.i = getelementptr inbounds [3 x float]* %76, i64 %indvars.iv478, i64 2, !dbg !909
  %82 = load float* %arrayidx6.i, align 4, !dbg !909, !tbaa !596
  %mul7.i = fmul float %81, %82, !dbg !909
  %add8.i = fadd float %add.i423, %mul7.i, !dbg !909
  %conv174 = fmul float %add8.i, 5.000000e-01, !dbg !822
  call void @llvm.dbg.value(metadata !{float %conv174}, i64 0, metadata !444), !dbg !822
  %83 = load %struct._IO_FILE** @debug, align 8, !dbg !910, !tbaa !580
  %notlhs466 = fcmp ule float %conv174, 1.000000e+00, !dbg !910
  %notrhs467 = icmp eq %struct._IO_FILE* %83, null, !dbg !910
  %or.cond288.not = and i1 %notrhs467, %notlhs466, !dbg !910
  %or.cond416 = or i1 %or.cond288.not, %tobool136, !dbg !910
  br i1 %or.cond416, label %for.inc285, label %if.then181, !dbg !910

if.then181:                                       ; preds = %if.then162
  %84 = load float** %group_mass105, align 8, !dbg !911, !tbaa !580
  %arrayidx184 = getelementptr inbounds float* %84, i64 %indvars.iv478, !dbg !911
  %85 = load float* %arrayidx184, align 4, !dbg !911, !tbaa !596
  call void @llvm.dbg.value(metadata !{float %85}, i64 0, metadata !446), !dbg !911
  %86 = load i8*** %group_name186, align 8, !dbg !824, !tbaa !580
  %arrayidx187 = getelementptr inbounds i8** %86, i64 %indvars.iv478, !dbg !824
  %87 = load i8** %arrayidx187, align 8, !dbg !824, !tbaa !580
  %conv188 = fpext float %85 to double, !dbg !824
  %conv189 = fpext float %conv174 to double, !dbg !824
  %88 = load [3 x [3 x float]]** %group_i191, align 8, !dbg !827, !tbaa !580
  %arrayidx1.i = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 0, i64 0, !dbg !912
  %89 = load float* %arrayidx1.i, align 4, !dbg !912, !tbaa !596
  %arrayidx3.i = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 1, i64 1, !dbg !912
  %90 = load float* %arrayidx3.i, align 4, !dbg !912, !tbaa !596
  %arrayidx5.i417 = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 2, i64 2, !dbg !912
  %91 = load float* %arrayidx5.i417, align 4, !dbg !912, !tbaa !596
  %mul.i418 = fmul float %90, %91, !dbg !912
  %arrayidx7.i419 = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 2, i64 1, !dbg !912
  %92 = load float* %arrayidx7.i419, align 4, !dbg !912, !tbaa !596
  %arrayidx9.i = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 1, i64 2, !dbg !912
  %93 = load float* %arrayidx9.i, align 4, !dbg !912, !tbaa !596
  %mul10.i = fmul float %92, %93, !dbg !912
  %sub.i = fsub float %mul.i418, %mul10.i, !dbg !912
  %mul11.i = fmul float %89, %sub.i, !dbg !912
  %arrayidx13.i = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 1, i64 0, !dbg !912
  %94 = load float* %arrayidx13.i, align 4, !dbg !912, !tbaa !596
  %arrayidx15.i = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 0, i64 1, !dbg !912
  %95 = load float* %arrayidx15.i, align 4, !dbg !912, !tbaa !596
  %mul18.i = fmul float %91, %95, !dbg !912
  %arrayidx22.i = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 0, i64 2, !dbg !912
  %96 = load float* %arrayidx22.i, align 4, !dbg !912, !tbaa !596
  %mul23.i = fmul float %92, %96, !dbg !912
  %sub24.i = fsub float %mul18.i, %mul23.i, !dbg !912
  %mul25.i = fmul float %94, %sub24.i, !dbg !912
  %sub26.i = fsub float %mul11.i, %mul25.i, !dbg !912
  %arrayidx28.i = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 2, i64 0, !dbg !912
  %97 = load float* %arrayidx28.i, align 4, !dbg !912, !tbaa !596
  %mul33.i = fmul float %93, %95, !dbg !912
  %mul38.i = fmul float %90, %96, !dbg !912
  %sub39.i = fsub float %mul33.i, %mul38.i, !dbg !912
  %mul40.i = fmul float %97, %sub39.i, !dbg !912
  %add.i = fadd float %mul40.i, %sub26.i, !dbg !912
  %conv195 = fpext float %add.i to double, !dbg !827
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([57 x i8]* @.str16, i64 0, i64 0), i8* %87, double %conv188, double %conv189, double %conv195) #5, !dbg !827
  %98 = load [3 x float]** %group_x198, align 8, !dbg !828, !tbaa !580
  %arrayidx200 = getelementptr inbounds [3 x float]* %98, i64 %indvars.iv478, i64 0, !dbg !828
  %99 = load float* %arrayidx200, align 4, !dbg !828, !tbaa !596
  %conv201 = fpext float %99 to double, !dbg !828
  %arrayidx205 = getelementptr inbounds [3 x float]* %98, i64 %indvars.iv478, i64 1, !dbg !828
  %100 = load float* %arrayidx205, align 4, !dbg !828, !tbaa !596
  %conv206 = fpext float %100 to double, !dbg !828
  %arrayidx210 = getelementptr inbounds [3 x float]* %98, i64 %indvars.iv478, i64 2, !dbg !828
  %101 = load float* %arrayidx210, align 4, !dbg !828, !tbaa !596
  %conv211 = fpext float %101 to double, !dbg !828
  %call212 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str17, i64 0, i64 0), double %conv201, double %conv206, double %conv211) #5, !dbg !828
  %102 = load [3 x float]** %group_p214, align 8, !dbg !829, !tbaa !580
  %arrayidx216 = getelementptr inbounds [3 x float]* %102, i64 %indvars.iv478, i64 0, !dbg !829
  %103 = load float* %arrayidx216, align 4, !dbg !829, !tbaa !596
  %conv217 = fpext float %103 to double, !dbg !829
  %arrayidx221 = getelementptr inbounds [3 x float]* %102, i64 %indvars.iv478, i64 1, !dbg !829
  %104 = load float* %arrayidx221, align 4, !dbg !829, !tbaa !596
  %conv222 = fpext float %104 to double, !dbg !829
  %arrayidx226 = getelementptr inbounds [3 x float]* %102, i64 %indvars.iv478, i64 2, !dbg !829
  %105 = load float* %arrayidx226, align 4, !dbg !829, !tbaa !596
  %conv227 = fpext float %105 to double, !dbg !829
  %call228 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str18, i64 0, i64 0), double %conv217, double %conv222, double %conv227) #5, !dbg !829
  %106 = load [3 x float]** %group_v118, align 8, !dbg !913, !tbaa !580
  %arrayidx232 = getelementptr inbounds [3 x float]* %106, i64 %indvars.iv478, i64 0, !dbg !913
  %107 = load float* %arrayidx232, align 4, !dbg !913, !tbaa !596
  %conv233 = fpext float %107 to double, !dbg !913
  %arrayidx237 = getelementptr inbounds [3 x float]* %106, i64 %indvars.iv478, i64 1, !dbg !913
  %108 = load float* %arrayidx237, align 4, !dbg !913, !tbaa !596
  %conv238 = fpext float %108 to double, !dbg !913
  %arrayidx242 = getelementptr inbounds [3 x float]* %106, i64 %indvars.iv478, i64 2, !dbg !913
  %109 = load float* %arrayidx242, align 4, !dbg !913, !tbaa !596
  %conv243 = fpext float %109 to double, !dbg !913
  %call244 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str19, i64 0, i64 0), double %conv233, double %conv238, double %conv243) #5, !dbg !913
  %110 = load [3 x float]** %group_j164, align 8, !dbg !914, !tbaa !580
  %arrayidx248 = getelementptr inbounds [3 x float]* %110, i64 %indvars.iv478, i64 0, !dbg !914
  %111 = load float* %arrayidx248, align 4, !dbg !914, !tbaa !596
  %conv249 = fpext float %111 to double, !dbg !914
  %arrayidx253 = getelementptr inbounds [3 x float]* %110, i64 %indvars.iv478, i64 1, !dbg !914
  %112 = load float* %arrayidx253, align 4, !dbg !914, !tbaa !596
  %conv254 = fpext float %112 to double, !dbg !914
  %arrayidx258 = getelementptr inbounds [3 x float]* %110, i64 %indvars.iv478, i64 2, !dbg !914
  %113 = load float* %arrayidx258, align 4, !dbg !914, !tbaa !596
  %conv259 = fpext float %113 to double, !dbg !914
  %call260 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str20, i64 0, i64 0), double %conv249, double %conv254, double %conv259) #5, !dbg !914
  %114 = load [3 x float]** %group_w168, align 8, !dbg !915, !tbaa !580
  %arrayidx264 = getelementptr inbounds [3 x float]* %114, i64 %indvars.iv478, i64 0, !dbg !915
  %115 = load float* %arrayidx264, align 4, !dbg !915, !tbaa !596
  %conv265 = fpext float %115 to double, !dbg !915
  %arrayidx269 = getelementptr inbounds [3 x float]* %114, i64 %indvars.iv478, i64 1, !dbg !915
  %116 = load float* %arrayidx269, align 4, !dbg !915, !tbaa !596
  %conv270 = fpext float %116 to double, !dbg !915
  %arrayidx274 = getelementptr inbounds [3 x float]* %114, i64 %indvars.iv478, i64 2, !dbg !915
  %117 = load float* %arrayidx274, align 4, !dbg !915, !tbaa !596
  %conv275 = fpext float %117 to double, !dbg !915
  %call276 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str21, i64 0, i64 0), double %conv265, double %conv270, double %conv275) #5, !dbg !915
  %118 = load [3 x [3 x float]]** %group_i191, align 8, !dbg !916, !tbaa !580
  %arraydecay280 = getelementptr inbounds [3 x [3 x float]]* %118, i64 %indvars.iv478, i64 0, !dbg !916
  call void @pr_rvecs(%struct._IO_FILE* %fp, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), [3 x float]* %arraydecay280, i32 3) #5, !dbg !916
  br label %for.inc285, !dbg !917

for.inc285:                                       ; preds = %if.then162, %if.end158, %for.body103, %if.then181
  %indvars.iv.next479 = add i64 %indvars.iv478, 1, !dbg !770
  %119 = load i32* %nr100, align 4, !dbg !770, !tbaa !570
  %120 = trunc i64 %indvars.iv.next479 to i32, !dbg !770
  %cmp101 = icmp slt i32 %120, %119, !dbg !770
  br i1 %cmp101, label %for.body103, label %for.end287, !dbg !770

for.end287:                                       ; preds = %for.cond16.preheader, %for.inc285, %for.cond99.preheader
  call void @llvm.lifetime.end(i64 36, i8* %0) #4, !dbg !918
  ret void, !dbg !918
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @pr_rvecs(%struct._IO_FILE*, i32, i8*, [3 x float]*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !23, metadata !24, metadata !559, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !10}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 126, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 126, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/enums.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9}
!6 = metadata !{i32 786472, metadata !"ecmLINEAR", i64 0} ; [ DW_TAG_enumerator ] [ecmLINEAR :: 0]
!7 = metadata !{i32 786472, metadata !"ecmANGULAR", i64 1} ; [ DW_TAG_enumerator ] [ecmANGULAR :: 1]
!8 = metadata !{i32 786472, metadata !"ecmNO", i64 2} ; [ DW_TAG_enumerator ] [ecmNO :: 2]
!9 = metadata !{i32 786472, metadata !"ecmNR", i64 3} ; [ DW_TAG_enumerator ] [ecmNR :: 3]
!10 = metadata !{i32 786436, metadata !11, null, metadata !"", i32 41, i64 32, i64 32, i32 0, i32 0, null, metadata !12, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 41, size 32, align 32, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22}
!13 = metadata !{i32 786472, metadata !"egcTC", i64 0} ; [ DW_TAG_enumerator ] [egcTC :: 0]
!14 = metadata !{i32 786472, metadata !"egcENER", i64 1} ; [ DW_TAG_enumerator ] [egcENER :: 1]
!15 = metadata !{i32 786472, metadata !"egcACC", i64 2} ; [ DW_TAG_enumerator ] [egcACC :: 2]
!16 = metadata !{i32 786472, metadata !"egcFREEZE", i64 3} ; [ DW_TAG_enumerator ] [egcFREEZE :: 3]
!17 = metadata !{i32 786472, metadata !"egcUser1", i64 4} ; [ DW_TAG_enumerator ] [egcUser1 :: 4]
!18 = metadata !{i32 786472, metadata !"egcUser2", i64 5} ; [ DW_TAG_enumerator ] [egcUser2 :: 5]
!19 = metadata !{i32 786472, metadata !"egcVCM", i64 6} ; [ DW_TAG_enumerator ] [egcVCM :: 6]
!20 = metadata !{i32 786472, metadata !"egcXTC", i64 7} ; [ DW_TAG_enumerator ] [egcXTC :: 7]
!21 = metadata !{i32 786472, metadata !"egcORFIT", i64 8} ; [ DW_TAG_enumerator ] [egcORFIT :: 8]
!22 = metadata !{i32 786472, metadata !"egcNR", i64 9} ; [ DW_TAG_enumerator ] [egcNR :: 9]
!23 = metadata !{i32 0}
!24 = metadata !{metadata !25, metadata !396, metadata !418, metadata !435, metadata !451, metadata !459, metadata !465, metadata !470, metadata !477, metadata !485, metadata !496, metadata !503, metadata !510, metadata !521, metadata !530, metadata !541, metadata !548, metadata !554}
!25 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"init_vcm", metadata !"init_vcm", metadata !"", i32 42, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_vcm* (%struct._IO_FILE*, %struct.t_topology*, %struct.t_commrec*, %struct.t_mdatoms*, i32, i32, i32)* @init_vcm, null, null, metadata !384, i32 44} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 44] [init_vcm]
!26 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !29, metadata !63, metadata !117, metadata !345, metadata !356, metadata !35, metadata !35, metadata !35}
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_vcm]
!30 = metadata !{i32 786454, metadata !1, null, metadata !"t_vcm", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [t_vcm] [line 56, size 0, align 0, offset 0] [from ]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"", i32 44, i64 640, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 44, size 640, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !36, metadata !37, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !54, metadata !56, metadata !60}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"nr", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [nr] [line 45, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"group_p", i32 47, i64 64, i64 64, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [group_p] [line 47, size 64, align 64, offset 64] [from ]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!39 = metadata !{i32 786454, metadata !32, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!40 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !41, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!41 = metadata !{i32 786454, metadata !32, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!42 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!45 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"group_v", i32 48, i64 64, i64 64, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [group_v] [line 48, size 64, align 64, offset 128] [from ]
!46 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"group_x", i32 49, i64 64, i64 64, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [group_x] [line 49, size 64, align 64, offset 192] [from ]
!47 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"group_j", i32 50, i64 64, i64 64, i64 256, i32 0, metadata !38} ; [ DW_TAG_member ] [group_j] [line 50, size 64, align 64, offset 256] [from ]
!48 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"group_w", i32 51, i64 64, i64 64, i64 320, i32 0, metadata !38} ; [ DW_TAG_member ] [group_w] [line 51, size 64, align 64, offset 320] [from ]
!49 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"group_i", i32 52, i64 64, i64 64, i64 384, i32 0, metadata !50} ; [ DW_TAG_member ] [group_i] [line 52, size 64, align 64, offset 384] [from ]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tensor]
!51 = metadata !{i32 786454, metadata !32, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!52 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !41, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!53 = metadata !{metadata !44, metadata !44}
!54 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"group_mass", i32 53, i64 64, i64 64, i64 448, i32 0, metadata !55} ; [ DW_TAG_member ] [group_mass] [line 53, size 64, align 64, offset 448] [from ]
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!56 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"group_name", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !57} ; [ DW_TAG_member ] [group_name] [line 54, size 64, align 64, offset 512] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!59 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!60 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"group_id", i32 55, i64 64, i64 64, i64 576, i32 0, metadata !61} ; [ DW_TAG_member ] [group_id] [line 55, size 64, align 64, offset 576] [from ]
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!62 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!64 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!65 = metadata !{i32 786451, metadata !66, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !67, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!66 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !88, metadata !89, metadata !90, metadata !91, metadata !94, metadata !95, metadata !97, metadata !101, metadata !103, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !112, metadata !113}
!68 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!69 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !58} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!70 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !58} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!71 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !58} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!72 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !58} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!73 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !58} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!74 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !58} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!75 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !58} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!76 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !58} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!77 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !58} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!78 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !58} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!79 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !58} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!80 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !81} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!81 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!82 = metadata !{i32 786451, metadata !66, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !83, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!83 = metadata !{metadata !84, metadata !85, metadata !87}
!84 = metadata !{i32 786445, metadata !66, metadata !82, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!85 = metadata !{i32 786445, metadata !66, metadata !82, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !86} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!87 = metadata !{i32 786445, metadata !66, metadata !82, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!88 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !86} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!89 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !35} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!90 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !35} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!91 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !92} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!92 = metadata !{i32 786454, metadata !66, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!93 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!94 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !62} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!95 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !96} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!96 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!97 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !98} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!98 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !59, metadata !99, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!99 = metadata !{metadata !100}
!100 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!101 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !102} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!102 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!103 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !104} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!104 = metadata !{i32 786454, metadata !66, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!105 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !102} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!106 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !102} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!107 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !102} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!108 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !102} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!109 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !110} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!110 = metadata !{i32 786454, metadata !66, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!111 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!112 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !35} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!113 = metadata !{i32 786445, metadata !66, metadata !65, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !114} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!114 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !59, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!115 = metadata !{metadata !116}
!116 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!117 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_topology]
!118 = metadata !{i32 786454, metadata !1, null, metadata !"t_topology", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_typedef ] [t_topology] [line 42, size 0, align 0, offset 0] [from ]
!119 = metadata !{i32 786451, metadata !120, null, metadata !"", i32 36, i64 402112, i64 64, i32 0, i32 0, null, metadata !121, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 402112, align 64, offset 0] [from ]
!120 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/topology.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!121 = metadata !{metadata !122, metadata !123, metadata !262, metadata !328, metadata !330}
!122 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"name", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [name] [line 37, size 64, align 64, offset 0] [from ]
!123 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"idef", i32 38, i64 366336, i64 64, i64 64, i32 0, metadata !124} ; [ DW_TAG_member ] [idef] [line 38, size 366336, align 64, offset 64] [from t_idef]
!124 = metadata !{i32 786454, metadata !120, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!125 = metadata !{i32 786451, metadata !126, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !127, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!126 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!127 = metadata !{metadata !128, metadata !129, metadata !130, metadata !131, metadata !134, metadata !246}
!128 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!129 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!130 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!131 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !132} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !133} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!133 = metadata !{i32 786454, metadata !126, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!134 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !135} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!135 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !136} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!136 = metadata !{i32 786454, metadata !126, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!137 = metadata !{i32 786455, metadata !126, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !138, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!138 = metadata !{metadata !139, metadata !145, metadata !152, metadata !158, metadata !167, metadata !172, metadata !179, metadata !187, metadata !192, metadata !197, metadata !203, metadata !208, metadata !215, metadata !224, metadata !233, metadata !242}
!139 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !140} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!140 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !141, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!141 = metadata !{metadata !142, metadata !143, metadata !144}
!142 = metadata !{i32 786445, metadata !126, metadata !140, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!143 = metadata !{i32 786445, metadata !126, metadata !140, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!144 = metadata !{i32 786445, metadata !126, metadata !140, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !41} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!145 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !146} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!146 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !147, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!147 = metadata !{metadata !148, metadata !149, metadata !150, metadata !151}
!148 = metadata !{i32 786445, metadata !126, metadata !146, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!149 = metadata !{i32 786445, metadata !126, metadata !146, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!150 = metadata !{i32 786445, metadata !126, metadata !146, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !41} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!151 = metadata !{i32 786445, metadata !126, metadata !146, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !41} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!152 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !153} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!153 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !154, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!154 = metadata !{metadata !155, metadata !156, metadata !157}
!155 = metadata !{i32 786445, metadata !126, metadata !153, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!156 = metadata !{i32 786445, metadata !126, metadata !153, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!157 = metadata !{i32 786445, metadata !126, metadata !153, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !41} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!158 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !159} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!159 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !160, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!160 = metadata !{metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166}
!161 = metadata !{i32 786445, metadata !126, metadata !159, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!162 = metadata !{i32 786445, metadata !126, metadata !159, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!163 = metadata !{i32 786445, metadata !126, metadata !159, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !41} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!164 = metadata !{i32 786445, metadata !126, metadata !159, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !41} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!165 = metadata !{i32 786445, metadata !126, metadata !159, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!166 = metadata !{i32 786445, metadata !126, metadata !159, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !41} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!167 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !168} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!168 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !169, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!169 = metadata !{metadata !170, metadata !171}
!170 = metadata !{i32 786445, metadata !126, metadata !168, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!171 = metadata !{i32 786445, metadata !126, metadata !168, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!172 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !173} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!173 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !174, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!174 = metadata !{metadata !175, metadata !176, metadata !177, metadata !178}
!175 = metadata !{i32 786445, metadata !126, metadata !173, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!176 = metadata !{i32 786445, metadata !126, metadata !173, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!177 = metadata !{i32 786445, metadata !126, metadata !173, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !41} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!178 = metadata !{i32 786445, metadata !126, metadata !173, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !41} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!179 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!180 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !181, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!181 = metadata !{metadata !182, metadata !183, metadata !184, metadata !185, metadata !186}
!182 = metadata !{i32 786445, metadata !126, metadata !180, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!183 = metadata !{i32 786445, metadata !126, metadata !180, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!184 = metadata !{i32 786445, metadata !126, metadata !180, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!185 = metadata !{i32 786445, metadata !126, metadata !180, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !41} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!186 = metadata !{i32 786445, metadata !126, metadata !180, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!187 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !188} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!188 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !189, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!189 = metadata !{metadata !190, metadata !191}
!190 = metadata !{i32 786445, metadata !126, metadata !188, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!191 = metadata !{i32 786445, metadata !126, metadata !188, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!192 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !193} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!193 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !194, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!194 = metadata !{metadata !195, metadata !196}
!195 = metadata !{i32 786445, metadata !126, metadata !193, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!196 = metadata !{i32 786445, metadata !126, metadata !193, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!197 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!198 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !199, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!199 = metadata !{metadata !200, metadata !201, metadata !202}
!200 = metadata !{i32 786445, metadata !126, metadata !198, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!201 = metadata !{i32 786445, metadata !126, metadata !198, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!202 = metadata !{i32 786445, metadata !126, metadata !198, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !41} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!203 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!204 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !205, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!205 = metadata !{metadata !206, metadata !207}
!206 = metadata !{i32 786445, metadata !126, metadata !204, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!207 = metadata !{i32 786445, metadata !126, metadata !204, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !40} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!208 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!209 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !210, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!210 = metadata !{metadata !211}
!211 = metadata !{i32 786445, metadata !126, metadata !209, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !212} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!212 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !41, metadata !213, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!213 = metadata !{metadata !214}
!214 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!215 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !216} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!216 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !217, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!217 = metadata !{metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223}
!218 = metadata !{i32 786445, metadata !126, metadata !216, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!219 = metadata !{i32 786445, metadata !126, metadata !216, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!220 = metadata !{i32 786445, metadata !126, metadata !216, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !41} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!221 = metadata !{i32 786445, metadata !126, metadata !216, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !41} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!222 = metadata !{i32 786445, metadata !126, metadata !216, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!223 = metadata !{i32 786445, metadata !126, metadata !216, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !41} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!224 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!225 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !226, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!226 = metadata !{metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232}
!227 = metadata !{i32 786445, metadata !126, metadata !225, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!228 = metadata !{i32 786445, metadata !126, metadata !225, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!229 = metadata !{i32 786445, metadata !126, metadata !225, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !41} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!230 = metadata !{i32 786445, metadata !126, metadata !225, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !41} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!231 = metadata !{i32 786445, metadata !126, metadata !225, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!232 = metadata !{i32 786445, metadata !126, metadata !225, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !35} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!233 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !234} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!234 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !235, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!235 = metadata !{metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241}
!236 = metadata !{i32 786445, metadata !126, metadata !234, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!237 = metadata !{i32 786445, metadata !126, metadata !234, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!238 = metadata !{i32 786445, metadata !126, metadata !234, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!239 = metadata !{i32 786445, metadata !126, metadata !234, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !41} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!240 = metadata !{i32 786445, metadata !126, metadata !234, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!241 = metadata !{i32 786445, metadata !126, metadata !234, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !41} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!242 = metadata !{i32 786445, metadata !126, metadata !137, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !243} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!243 = metadata !{i32 786451, metadata !126, metadata !137, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !244, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!244 = metadata !{metadata !245}
!245 = metadata !{i32 786445, metadata !126, metadata !243, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !212} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!246 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !247} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!247 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !248, metadata !260, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!248 = metadata !{i32 786454, metadata !126, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !249} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!249 = metadata !{i32 786451, metadata !126, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !250, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!250 = metadata !{metadata !251, metadata !252, metadata !256}
!251 = metadata !{i32 786445, metadata !126, metadata !249, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!252 = metadata !{i32 786445, metadata !126, metadata !249, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !253} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!253 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !35, metadata !254, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!254 = metadata !{metadata !255}
!255 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!256 = metadata !{i32 786445, metadata !126, metadata !249, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !257} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!257 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !258} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!258 = metadata !{i32 786454, metadata !126, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !259} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!259 = metadata !{i32 786454, metadata !126, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!260 = metadata !{metadata !261}
!261 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!262 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"atoms", i32 39, i64 10240, i64 64, i64 366400, i32 0, metadata !263} ; [ DW_TAG_member ] [atoms] [line 39, size 10240, align 64, offset 366400] [from t_atoms]
!263 = metadata !{i32 786454, metadata !120, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !264} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!264 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !265, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!265 = metadata !{metadata !266, metadata !267, metadata !286, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !305, metadata !313}
!266 = metadata !{i32 786445, metadata !11, metadata !264, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!267 = metadata !{i32 786445, metadata !11, metadata !264, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !268} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!268 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !269} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!269 = metadata !{i32 786454, metadata !11, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!270 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !271, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!271 = metadata !{metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !285}
!272 = metadata !{i32 786445, metadata !11, metadata !270, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!273 = metadata !{i32 786445, metadata !11, metadata !270, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!274 = metadata !{i32 786445, metadata !11, metadata !270, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !41} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!275 = metadata !{i32 786445, metadata !11, metadata !270, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !41} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!276 = metadata !{i32 786445, metadata !11, metadata !270, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!277 = metadata !{i32 786445, metadata !11, metadata !270, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !62} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!278 = metadata !{i32 786445, metadata !11, metadata !270, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !35} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!279 = metadata !{i32 786445, metadata !11, metadata !270, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!280 = metadata !{i32 786445, metadata !11, metadata !270, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !281} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!281 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !282, metadata !283, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!282 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!283 = metadata !{metadata !284}
!284 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!285 = metadata !{i32 786445, metadata !11, metadata !270, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !282} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!286 = metadata !{i32 786445, metadata !11, metadata !264, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !287} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!287 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!288 = metadata !{i32 786445, metadata !11, metadata !264, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !287} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!289 = metadata !{i32 786445, metadata !11, metadata !264, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !287} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!290 = metadata !{i32 786445, metadata !11, metadata !264, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !35} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!291 = metadata !{i32 786445, metadata !11, metadata !264, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !287} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!292 = metadata !{i32 786445, metadata !11, metadata !264, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !35} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!293 = metadata !{i32 786445, metadata !11, metadata !264, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !287} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!294 = metadata !{i32 786445, metadata !11, metadata !264, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !295} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!295 = metadata !{i32 786454, metadata !11, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !296} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!296 = metadata !{i32 786451, metadata !297, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !298, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!297 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!298 = metadata !{metadata !299, metadata !300, metadata !301, metadata !303, metadata !304}
!299 = metadata !{i32 786445, metadata !297, metadata !296, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !253} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!300 = metadata !{i32 786445, metadata !297, metadata !296, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !35} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!301 = metadata !{i32 786445, metadata !297, metadata !296, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !302} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!302 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !259} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!303 = metadata !{i32 786445, metadata !297, metadata !296, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !35} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!304 = metadata !{i32 786445, metadata !297, metadata !296, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !302} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!305 = metadata !{i32 786445, metadata !11, metadata !264, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !306} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!306 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !307, metadata !283, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!307 = metadata !{i32 786454, metadata !11, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !308} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!308 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !309, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!309 = metadata !{metadata !310, metadata !311}
!310 = metadata !{i32 786445, metadata !11, metadata !308, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!311 = metadata !{i32 786445, metadata !11, metadata !308, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !312} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!312 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!313 = metadata !{i32 786445, metadata !11, metadata !264, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !314} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!314 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !315} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!315 = metadata !{i32 786454, metadata !11, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !316} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!316 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !317, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!317 = metadata !{metadata !318, metadata !319, metadata !320, metadata !321, metadata !323, metadata !324, metadata !325, metadata !326}
!318 = metadata !{i32 786445, metadata !11, metadata !316, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!319 = metadata !{i32 786445, metadata !11, metadata !316, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!320 = metadata !{i32 786445, metadata !11, metadata !316, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!321 = metadata !{i32 786445, metadata !11, metadata !316, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !322} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!322 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !59, metadata !213, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!323 = metadata !{i32 786445, metadata !11, metadata !316, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!324 = metadata !{i32 786445, metadata !11, metadata !316, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !41} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!325 = metadata !{i32 786445, metadata !11, metadata !316, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!326 = metadata !{i32 786445, metadata !11, metadata !316, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !327} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!327 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !35, metadata !213, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!328 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"blocks", i32 40, i64 25344, i64 64, i64 376640, i32 0, metadata !329} ; [ DW_TAG_member ] [blocks] [line 40, size 25344, align 64, offset 376640] [from ]
!329 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 25344, i64 64, i32 0, i32 0, metadata !295, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 25344, align 64, offset 0] [from t_block]
!330 = metadata !{i32 786445, metadata !120, metadata !119, metadata !"symtab", i32 41, i64 128, i64 64, i64 401984, i32 0, metadata !331} ; [ DW_TAG_member ] [symtab] [line 41, size 128, align 64, offset 401984] [from t_symtab]
!331 = metadata !{i32 786454, metadata !120, null, metadata !"t_symtab", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !332} ; [ DW_TAG_typedef ] [t_symtab] [line 46, size 0, align 0, offset 0] [from ]
!332 = metadata !{i32 786451, metadata !333, null, metadata !"", i32 42, i64 128, i64 64, i32 0, i32 0, null, metadata !334, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 128, align 64, offset 0] [from ]
!333 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/symtab.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!334 = metadata !{metadata !335, metadata !336}
!335 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"nr", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [nr] [line 44, size 32, align 32, offset 0] [from int]
!336 = metadata !{i32 786445, metadata !333, metadata !332, metadata !"symbuf", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !337} ; [ DW_TAG_member ] [symbuf] [line 45, size 64, align 64, offset 64] [from ]
!337 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !338} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symbuf]
!338 = metadata !{i32 786454, metadata !333, null, metadata !"t_symbuf", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !339} ; [ DW_TAG_typedef ] [t_symbuf] [line 40, size 0, align 0, offset 0] [from symbuf]
!339 = metadata !{i32 786451, metadata !333, null, metadata !"symbuf", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !340, i32 0, null, null} ; [ DW_TAG_structure_type ] [symbuf] [line 36, size 192, align 64, offset 0] [from ]
!340 = metadata !{metadata !341, metadata !342, metadata !343}
!341 = metadata !{i32 786445, metadata !333, metadata !339, metadata !"bufsize", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [bufsize] [line 37, size 32, align 32, offset 0] [from int]
!342 = metadata !{i32 786445, metadata !333, metadata !339, metadata !"buf", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !57} ; [ DW_TAG_member ] [buf] [line 38, size 64, align 64, offset 64] [from ]
!343 = metadata !{i32 786445, metadata !333, metadata !339, metadata !"next", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !344} ; [ DW_TAG_member ] [next] [line 39, size 64, align 64, offset 128] [from ]
!344 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !339} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from symbuf]
!345 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !346} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!346 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !347} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!347 = metadata !{i32 786451, metadata !348, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !349, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!348 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!349 = metadata !{metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355}
!350 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!351 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!352 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!353 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !35} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!354 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!355 = metadata !{i32 786445, metadata !348, metadata !347, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !35} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!356 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !357} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_mdatoms]
!357 = metadata !{i32 786454, metadata !1, null, metadata !"t_mdatoms", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !358} ; [ DW_TAG_typedef ] [t_mdatoms] [line 51, size 0, align 0, offset 0] [from ]
!358 = metadata !{i32 786451, metadata !359, null, metadata !"", i32 40, i64 1408, i64 64, i32 0, i32 0, null, metadata !360, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 1408, align 64, offset 0] [from ]
!359 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!360 = metadata !{metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383}
!361 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"tmass", i32 41, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [tmass] [line 41, size 32, align 32, offset 0] [from real]
!362 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"nr", i32 42, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [nr] [line 42, size 32, align 32, offset 32] [from int]
!363 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"massA", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !55} ; [ DW_TAG_member ] [massA] [line 43, size 64, align 64, offset 64] [from ]
!364 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"massB", i32 43, i64 64, i64 64, i64 128, i32 0, metadata !55} ; [ DW_TAG_member ] [massB] [line 43, size 64, align 64, offset 128] [from ]
!365 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"massT", i32 43, i64 64, i64 64, i64 192, i32 0, metadata !55} ; [ DW_TAG_member ] [massT] [line 43, size 64, align 64, offset 192] [from ]
!366 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"invmass", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !55} ; [ DW_TAG_member ] [invmass] [line 43, size 64, align 64, offset 256] [from ]
!367 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"chargeA", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !55} ; [ DW_TAG_member ] [chargeA] [line 44, size 64, align 64, offset 320] [from ]
!368 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"chargeB", i32 44, i64 64, i64 64, i64 384, i32 0, metadata !55} ; [ DW_TAG_member ] [chargeB] [line 44, size 64, align 64, offset 384] [from ]
!369 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"chargeT", i32 44, i64 64, i64 64, i64 448, i32 0, metadata !55} ; [ DW_TAG_member ] [chargeT] [line 44, size 64, align 64, offset 448] [from ]
!370 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"bPerturbed", i32 45, i64 64, i64 64, i64 512, i32 0, metadata !312} ; [ DW_TAG_member ] [bPerturbed] [line 45, size 64, align 64, offset 512] [from ]
!371 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"resnr", i32 46, i64 64, i64 64, i64 576, i32 0, metadata !312} ; [ DW_TAG_member ] [resnr] [line 46, size 64, align 64, offset 576] [from ]
!372 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"typeA", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !312} ; [ DW_TAG_member ] [typeA] [line 47, size 64, align 64, offset 640] [from ]
!373 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"typeB", i32 47, i64 64, i64 64, i64 704, i32 0, metadata !312} ; [ DW_TAG_member ] [typeB] [line 47, size 64, align 64, offset 704] [from ]
!374 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"ptype", i32 48, i64 64, i64 64, i64 768, i32 0, metadata !61} ; [ DW_TAG_member ] [ptype] [line 48, size 64, align 64, offset 768] [from ]
!375 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"cTC", i32 49, i64 64, i64 64, i64 832, i32 0, metadata !61} ; [ DW_TAG_member ] [cTC] [line 49, size 64, align 64, offset 832] [from ]
!376 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"cENER", i32 49, i64 64, i64 64, i64 896, i32 0, metadata !61} ; [ DW_TAG_member ] [cENER] [line 49, size 64, align 64, offset 896] [from ]
!377 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"cACC", i32 49, i64 64, i64 64, i64 960, i32 0, metadata !61} ; [ DW_TAG_member ] [cACC] [line 49, size 64, align 64, offset 960] [from ]
!378 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"cFREEZE", i32 49, i64 64, i64 64, i64 1024, i32 0, metadata !61} ; [ DW_TAG_member ] [cFREEZE] [line 49, size 64, align 64, offset 1024] [from ]
!379 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"cXTC", i32 49, i64 64, i64 64, i64 1088, i32 0, metadata !61} ; [ DW_TAG_member ] [cXTC] [line 49, size 64, align 64, offset 1088] [from ]
!380 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"cVCM", i32 49, i64 64, i64 64, i64 1152, i32 0, metadata !61} ; [ DW_TAG_member ] [cVCM] [line 49, size 64, align 64, offset 1152] [from ]
!381 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"cU1", i32 50, i64 64, i64 64, i64 1216, i32 0, metadata !61} ; [ DW_TAG_member ] [cU1] [line 50, size 64, align 64, offset 1216] [from ]
!382 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"cU2", i32 50, i64 64, i64 64, i64 1280, i32 0, metadata !61} ; [ DW_TAG_member ] [cU2] [line 50, size 64, align 64, offset 1280] [from ]
!383 = metadata !{i32 786445, metadata !359, metadata !358, metadata !"cORF", i32 50, i64 64, i64 64, i64 1344, i32 0, metadata !61} ; [ DW_TAG_member ] [cORF] [line 50, size 64, align 64, offset 1344] [from ]
!384 = metadata !{metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395}
!385 = metadata !{i32 786689, metadata !25, metadata !"fp", metadata !26, i32 16777258, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 42]
!386 = metadata !{i32 786689, metadata !25, metadata !"top", metadata !26, i32 33554474, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 42]
!387 = metadata !{i32 786689, metadata !25, metadata !"cr", metadata !26, i32 50331690, metadata !345, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 42]
!388 = metadata !{i32 786689, metadata !25, metadata !"md", metadata !26, i32 67108906, metadata !356, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 42]
!389 = metadata !{i32 786689, metadata !25, metadata !"start", metadata !26, i32 83886123, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 43]
!390 = metadata !{i32 786689, metadata !25, metadata !"homenr", metadata !26, i32 100663339, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [homenr] [line 43]
!391 = metadata !{i32 786689, metadata !25, metadata !"nstcomm", metadata !26, i32 117440555, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nstcomm] [line 43]
!392 = metadata !{i32 786688, metadata !25, metadata !"vcm", metadata !26, i32 45, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vcm] [line 45]
!393 = metadata !{i32 786688, metadata !25, metadata !"mass", metadata !26, i32 46, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mass] [line 46]
!394 = metadata !{i32 786688, metadata !25, metadata !"i", metadata !26, i32 47, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 47]
!395 = metadata !{i32 786688, metadata !25, metadata !"g", metadata !26, i32 47, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 47]
!396 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"calc_vcm_grp", metadata !"calc_vcm_grp", metadata !"", i32 120, metadata !397, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, float*, [3 x float]*, [3 x float]*, %struct.t_vcm*)* @calc_vcm_grp, null, null, metadata !399, i32 122} ; [ DW_TAG_subprogram ] [line 120] [def] [scope 122] [calc_vcm_grp]
!397 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!398 = metadata !{null, metadata !63, metadata !35, metadata !35, metadata !55, metadata !38, metadata !38, metadata !29}
!399 = metadata !{metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417}
!400 = metadata !{i32 786689, metadata !396, metadata !"fp", metadata !26, i32 16777336, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 120]
!401 = metadata !{i32 786689, metadata !396, metadata !"start", metadata !26, i32 33554552, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 120]
!402 = metadata !{i32 786689, metadata !396, metadata !"homenr", metadata !26, i32 50331768, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [homenr] [line 120]
!403 = metadata !{i32 786689, metadata !396, metadata !"mass", metadata !26, i32 67108984, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mass] [line 120]
!404 = metadata !{i32 786689, metadata !396, metadata !"x", metadata !26, i32 83886201, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 121]
!405 = metadata !{i32 786689, metadata !396, metadata !"v", metadata !26, i32 100663417, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 121]
!406 = metadata !{i32 786689, metadata !396, metadata !"vcm", metadata !26, i32 117440633, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vcm] [line 121]
!407 = metadata !{i32 786688, metadata !396, metadata !"i", metadata !26, i32 123, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 123]
!408 = metadata !{i32 786688, metadata !396, metadata !"g", metadata !26, i32 123, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 123]
!409 = metadata !{i32 786688, metadata !396, metadata !"m", metadata !26, i32 123, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 123]
!410 = metadata !{i32 786688, metadata !396, metadata !"m0", metadata !26, i32 124, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m0] [line 124]
!411 = metadata !{i32 786688, metadata !396, metadata !"xx", metadata !26, i32 124, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xx] [line 124]
!412 = metadata !{i32 786688, metadata !396, metadata !"xy", metadata !26, i32 124, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xy] [line 124]
!413 = metadata !{i32 786688, metadata !396, metadata !"xz", metadata !26, i32 124, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xz] [line 124]
!414 = metadata !{i32 786688, metadata !396, metadata !"yy", metadata !26, i32 124, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yy] [line 124]
!415 = metadata !{i32 786688, metadata !396, metadata !"yz", metadata !26, i32 124, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yz] [line 124]
!416 = metadata !{i32 786688, metadata !396, metadata !"zz", metadata !26, i32 124, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zz] [line 124]
!417 = metadata !{i32 786688, metadata !396, metadata !"j0", metadata !26, i32 125, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j0] [line 125]
!418 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"do_stopcm_grp", metadata !"do_stopcm_grp", metadata !"", i32 166, metadata !419, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, [3 x float]*, [3 x float]*, %struct.t_vcm*)* @do_stopcm_grp, null, null, metadata !421, i32 168} ; [ DW_TAG_subprogram ] [line 166] [def] [scope 168] [do_stopcm_grp]
!419 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !420, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!420 = metadata !{null, metadata !63, metadata !35, metadata !35, metadata !38, metadata !38, metadata !29}
!421 = metadata !{metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434}
!422 = metadata !{i32 786689, metadata !418, metadata !"fp", metadata !26, i32 16777382, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 166]
!423 = metadata !{i32 786689, metadata !418, metadata !"start", metadata !26, i32 33554598, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 166]
!424 = metadata !{i32 786689, metadata !418, metadata !"homenr", metadata !26, i32 50331814, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [homenr] [line 166]
!425 = metadata !{i32 786689, metadata !418, metadata !"x", metadata !26, i32 67109030, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 166]
!426 = metadata !{i32 786689, metadata !418, metadata !"v", metadata !26, i32 83886246, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 166]
!427 = metadata !{i32 786689, metadata !418, metadata !"vcm", metadata !26, i32 100663463, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vcm] [line 167]
!428 = metadata !{i32 786688, metadata !418, metadata !"i", metadata !26, i32 169, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 169]
!429 = metadata !{i32 786688, metadata !418, metadata !"g", metadata !26, i32 169, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 169]
!430 = metadata !{i32 786688, metadata !418, metadata !"m", metadata !26, i32 169, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 169]
!431 = metadata !{i32 786688, metadata !418, metadata !"tm", metadata !26, i32 170, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 170]
!432 = metadata !{i32 786688, metadata !418, metadata !"tm_1", metadata !26, i32 170, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm_1] [line 170]
!433 = metadata !{i32 786688, metadata !418, metadata !"dv", metadata !26, i32 171, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dv] [line 171]
!434 = metadata !{i32 786688, metadata !418, metadata !"dx", metadata !26, i32 171, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 171]
!435 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"check_cm_grp", metadata !"check_cm_grp", metadata !"", i32 208, metadata !436, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_vcm*)* @check_cm_grp, null, null, metadata !438, i32 209} ; [ DW_TAG_subprogram ] [line 208] [def] [scope 209] [check_cm_grp]
!436 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !437, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!437 = metadata !{null, metadata !63, metadata !29}
!438 = metadata !{metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450}
!439 = metadata !{i32 786689, metadata !435, metadata !"fp", metadata !26, i32 16777424, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 208]
!440 = metadata !{i32 786689, metadata !435, metadata !"vcm", metadata !26, i32 33554640, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vcm] [line 208]
!441 = metadata !{i32 786688, metadata !435, metadata !"m", metadata !26, i32 210, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 210]
!442 = metadata !{i32 786688, metadata !435, metadata !"g", metadata !26, i32 210, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 210]
!443 = metadata !{i32 786688, metadata !435, metadata !"ekcm", metadata !26, i32 211, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ekcm] [line 211]
!444 = metadata !{i32 786688, metadata !435, metadata !"ekrot", metadata !26, i32 211, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ekrot] [line 211]
!445 = metadata !{i32 786688, metadata !435, metadata !"max_vcm", metadata !26, i32 211, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_vcm] [line 211]
!446 = metadata !{i32 786688, metadata !435, metadata !"tm", metadata !26, i32 211, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 211]
!447 = metadata !{i32 786688, metadata !435, metadata !"tm_1", metadata !26, i32 211, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm_1] [line 211]
!448 = metadata !{i32 786688, metadata !435, metadata !"jcm", metadata !26, i32 212, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcm] [line 212]
!449 = metadata !{i32 786688, metadata !435, metadata !"Icm", metadata !26, i32 213, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Icm] [line 213]
!450 = metadata !{i32 786688, metadata !435, metadata !"Tcm", metadata !26, i32 213, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Tcm] [line 213]
!451 = metadata !{i32 786478, metadata !452, metadata !453, metadata !"det", metadata !"det", metadata !"", i32 478, metadata !454, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !457, i32 479} ; [ DW_TAG_subprogram ] [line 478] [local] [def] [scope 479] [det]
!452 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!453 = metadata !{i32 786473, metadata !452}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!454 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !455, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!455 = metadata !{metadata !41, metadata !456}
!456 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!457 = metadata !{metadata !458}
!458 = metadata !{i32 786689, metadata !451, metadata !"a", metadata !453, i32 16777694, metadata !456, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 478]
!459 = metadata !{i32 786478, metadata !452, metadata !453, metadata !"iprod", metadata !"iprod", metadata !"", i32 343, metadata !460, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !462, i32 344} ; [ DW_TAG_subprogram ] [line 343] [local] [def] [scope 344] [iprod]
!460 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !461, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!461 = metadata !{metadata !41, metadata !55, metadata !55}
!462 = metadata !{metadata !463, metadata !464}
!463 = metadata !{i32 786689, metadata !459, metadata !"a", metadata !453, i32 16777559, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 343]
!464 = metadata !{i32 786689, metadata !459, metadata !"b", metadata !453, i32 33554775, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 343]
!465 = metadata !{i32 786478, metadata !452, metadata !453, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !466, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !468, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!466 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!467 = metadata !{metadata !41, metadata !41}
!468 = metadata !{metadata !469}
!469 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !453, i32 16777413, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!470 = metadata !{i32 786478, metadata !452, metadata !453, metadata !"mvmul", metadata !"mvmul", metadata !"", i32 548, metadata !471, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !473, i32 549} ; [ DW_TAG_subprogram ] [line 548] [local] [def] [scope 549] [mvmul]
!471 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !472, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!472 = metadata !{null, metadata !456, metadata !55, metadata !55}
!473 = metadata !{metadata !474, metadata !475, metadata !476}
!474 = metadata !{i32 786689, metadata !470, metadata !"a", metadata !453, i32 16777764, metadata !456, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 548]
!475 = metadata !{i32 786689, metadata !470, metadata !"src", metadata !453, i32 33554980, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 548]
!476 = metadata !{i32 786689, metadata !470, metadata !"dest", metadata !453, i32 50332196, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 548]
!477 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"get_minv", metadata !"get_minv", metadata !"", i32 192, metadata !478, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !480, i32 193} ; [ DW_TAG_subprogram ] [line 192] [local] [def] [scope 193] [get_minv]
!478 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !479, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!479 = metadata !{null, metadata !456, metadata !456}
!480 = metadata !{metadata !481, metadata !482, metadata !483}
!481 = metadata !{i32 786689, metadata !477, metadata !"A", metadata !26, i32 16777408, metadata !456, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 192]
!482 = metadata !{i32 786689, metadata !477, metadata !"B", metadata !26, i32 33554624, metadata !456, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 192]
!483 = metadata !{i32 786688, metadata !484, metadata !"tmp", metadata !26, i32 194, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 194]
!484 = metadata !{i32 786443, metadata !1, metadata !477} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!485 = metadata !{i32 786478, metadata !452, metadata !453, metadata !"m_inv", metadata !"m_inv", metadata !"", i32 524, metadata !478, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !486, i32 525} ; [ DW_TAG_subprogram ] [line 524] [local] [def] [scope 525] [m_inv]
!486 = metadata !{metadata !487, metadata !488, metadata !489, metadata !492, metadata !493, metadata !494, metadata !495}
!487 = metadata !{i32 786689, metadata !485, metadata !"src", metadata !453, i32 16777740, metadata !456, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 524]
!488 = metadata !{i32 786689, metadata !485, metadata !"dest", metadata !453, i32 33554956, metadata !456, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 524]
!489 = metadata !{i32 786688, metadata !490, metadata !"smallreal", metadata !453, i32 526, metadata !491, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [smallreal] [line 526]
!490 = metadata !{i32 786443, metadata !452, metadata !485} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!491 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!492 = metadata !{i32 786688, metadata !490, metadata !"largereal", metadata !453, i32 527, metadata !491, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [largereal] [line 527]
!493 = metadata !{i32 786688, metadata !490, metadata !"deter", metadata !453, i32 528, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [deter] [line 528]
!494 = metadata !{i32 786688, metadata !490, metadata !"c", metadata !453, i32 528, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 528]
!495 = metadata !{i32 786688, metadata !490, metadata !"fc", metadata !453, i32 528, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fc] [line 528]
!496 = metadata !{i32 786478, metadata !452, metadata !453, metadata !"m_sub", metadata !"m_sub", metadata !"", i32 498, metadata !497, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !499, i32 499} ; [ DW_TAG_subprogram ] [line 498] [local] [def] [scope 499] [m_sub]
!497 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !498, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!498 = metadata !{null, metadata !456, metadata !456, metadata !456}
!499 = metadata !{metadata !500, metadata !501, metadata !502}
!500 = metadata !{i32 786689, metadata !496, metadata !"a", metadata !453, i32 16777714, metadata !456, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 498]
!501 = metadata !{i32 786689, metadata !496, metadata !"b", metadata !453, i32 33554930, metadata !456, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 498]
!502 = metadata !{i32 786689, metadata !496, metadata !"dest", metadata !453, i32 50332146, metadata !456, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 498]
!503 = metadata !{i32 786478, metadata !452, metadata !453, metadata !"svmul", metadata !"svmul", metadata !"", i32 304, metadata !504, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !506, i32 305} ; [ DW_TAG_subprogram ] [line 304] [local] [def] [scope 305] [svmul]
!504 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !505, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!505 = metadata !{null, metadata !41, metadata !55, metadata !55}
!506 = metadata !{metadata !507, metadata !508, metadata !509}
!507 = metadata !{i32 786689, metadata !503, metadata !"a", metadata !453, i32 16777520, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 304]
!508 = metadata !{i32 786689, metadata !503, metadata !"v1", metadata !453, i32 33554736, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v1] [line 304]
!509 = metadata !{i32 786689, metadata !503, metadata !"v2", metadata !453, i32 50331952, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v2] [line 304]
!510 = metadata !{i32 786478, metadata !452, metadata !453, metadata !"rvec_sub", metadata !"rvec_sub", metadata !"", i32 244, metadata !511, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !514, i32 245} ; [ DW_TAG_subprogram ] [line 244] [local] [def] [scope 245] [rvec_sub]
!511 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !512, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!512 = metadata !{null, metadata !513, metadata !513, metadata !55}
!513 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !491} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!514 = metadata !{metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520}
!515 = metadata !{i32 786689, metadata !510, metadata !"a", metadata !453, i32 16777460, metadata !513, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 244]
!516 = metadata !{i32 786689, metadata !510, metadata !"b", metadata !453, i32 33554676, metadata !513, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 244]
!517 = metadata !{i32 786689, metadata !510, metadata !"c", metadata !453, i32 50331892, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 244]
!518 = metadata !{i32 786688, metadata !510, metadata !"x", metadata !453, i32 246, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 246]
!519 = metadata !{i32 786688, metadata !510, metadata !"y", metadata !453, i32 246, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 246]
!520 = metadata !{i32 786688, metadata !510, metadata !"z", metadata !453, i32 246, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 246]
!521 = metadata !{i32 786478, metadata !452, metadata !453, metadata !"rvec_dec", metadata !"rvec_dec", metadata !"", i32 257, metadata !522, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !524, i32 258} ; [ DW_TAG_subprogram ] [line 257] [local] [def] [scope 258] [rvec_dec]
!522 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !523, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!523 = metadata !{null, metadata !55, metadata !55}
!524 = metadata !{metadata !525, metadata !526, metadata !527, metadata !528, metadata !529}
!525 = metadata !{i32 786689, metadata !521, metadata !"a", metadata !453, i32 16777473, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 257]
!526 = metadata !{i32 786689, metadata !521, metadata !"b", metadata !453, i32 33554689, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 257]
!527 = metadata !{i32 786688, metadata !521, metadata !"x", metadata !453, i32 259, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 259]
!528 = metadata !{i32 786688, metadata !521, metadata !"y", metadata !453, i32 259, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 259]
!529 = metadata !{i32 786688, metadata !521, metadata !"z", metadata !453, i32 259, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 259]
!530 = metadata !{i32 786478, metadata !1, metadata !26, metadata !"update_tensor", metadata !"update_tensor", metadata !"", i32 100, metadata !531, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, float, [3 x float]*)* @update_tensor, null, null, metadata !533, i32 101} ; [ DW_TAG_subprogram ] [line 100] [local] [def] [scope 101] [update_tensor]
!531 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !532, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!532 = metadata !{null, metadata !55, metadata !41, metadata !456}
!533 = metadata !{metadata !534, metadata !535, metadata !536, metadata !537, metadata !539, metadata !540}
!534 = metadata !{i32 786689, metadata !530, metadata !"x", metadata !26, i32 16777316, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 100]
!535 = metadata !{i32 786689, metadata !530, metadata !"m0", metadata !26, i32 33554532, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m0] [line 100]
!536 = metadata !{i32 786689, metadata !530, metadata !"I", metadata !26, i32 50331748, metadata !456, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [I] [line 100]
!537 = metadata !{i32 786688, metadata !538, metadata !"xy", metadata !26, i32 102, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xy] [line 102]
!538 = metadata !{i32 786443, metadata !1, metadata !530} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!539 = metadata !{i32 786688, metadata !538, metadata !"xz", metadata !26, i32 102, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xz] [line 102]
!540 = metadata !{i32 786688, metadata !538, metadata !"yz", metadata !26, i32 102, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yz] [line 102]
!541 = metadata !{i32 786478, metadata !452, metadata !453, metadata !"oprod", metadata !"oprod", metadata !"", i32 417, metadata !542, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !544, i32 418} ; [ DW_TAG_subprogram ] [line 417] [local] [def] [scope 418] [oprod]
!542 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !543, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!543 = metadata !{null, metadata !55, metadata !55, metadata !55}
!544 = metadata !{metadata !545, metadata !546, metadata !547}
!545 = metadata !{i32 786689, metadata !541, metadata !"a", metadata !453, i32 16777633, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 417]
!546 = metadata !{i32 786689, metadata !541, metadata !"b", metadata !453, i32 33554849, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 417]
!547 = metadata !{i32 786689, metadata !541, metadata !"c", metadata !453, i32 50332065, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 417]
!548 = metadata !{i32 786478, metadata !452, metadata !453, metadata !"clear_mat", metadata !"clear_mat", metadata !"", i32 334, metadata !549, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !551, i32 335} ; [ DW_TAG_subprogram ] [line 334] [local] [def] [scope 335] [clear_mat]
!549 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !550, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!550 = metadata !{null, metadata !456}
!551 = metadata !{metadata !552, metadata !553}
!552 = metadata !{i32 786689, metadata !548, metadata !"a", metadata !453, i32 16777550, metadata !456, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 334]
!553 = metadata !{i32 786688, metadata !548, metadata !"nul", metadata !453, i32 336, metadata !491, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!554 = metadata !{i32 786478, metadata !452, metadata !453, metadata !"clear_rvec", metadata !"clear_rvec", metadata !"", i32 316, metadata !555, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !557, i32 317} ; [ DW_TAG_subprogram ] [line 316] [local] [def] [scope 317] [clear_rvec]
!555 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !556, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!556 = metadata !{null, metadata !55}
!557 = metadata !{metadata !558}
!558 = metadata !{i32 786689, metadata !554, metadata !"a", metadata !453, i32 16777532, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 316]
!559 = metadata !{metadata !560, metadata !561, metadata !562, metadata !562, metadata !562}
!560 = metadata !{i32 786484, i32 0, metadata !453, metadata !"smallreal", metadata !"smallreal", metadata !"smallreal", metadata !453, i32 526, metadata !491, i32 1, i32 1, float 0x3C32725DE0000000, null} ; [ DW_TAG_variable ] [smallreal] [line 526] [local] [def]
!561 = metadata !{i32 786484, i32 0, metadata !453, metadata !"largereal", metadata !"largereal", metadata !"largereal", metadata !453, i32 527, metadata !491, i32 1, i32 1, float 0x43ABC16D60000000, null} ; [ DW_TAG_variable ] [largereal] [line 527] [local] [def]
!562 = metadata !{i32 786484, i32 0, metadata !453, metadata !"nul", metadata !"nul", metadata !"nul", metadata !453, i32 336, metadata !491, i32 1, i32 1, float 0.000000e+00, null} ; [ DW_TAG_variable ] [nul] [line 336] [local] [def]
!563 = metadata !{i32 42, i32 0, metadata !25, null}
!564 = metadata !{i32 43, i32 0, metadata !25, null}
!565 = metadata !{i32 49, i32 0, metadata !25, null}
!566 = metadata !{i32 51, i32 0, metadata !25, null}
!567 = metadata !{i32 53, i32 0, metadata !25, null}
!568 = metadata !{i32 54, i32 0, metadata !25, null}
!569 = metadata !{i32 56, i32 0, metadata !25, null}
!570 = metadata !{metadata !"int", metadata !571}
!571 = metadata !{metadata !"omnipotent char", metadata !572}
!572 = metadata !{metadata !"Simple C/C++ TBAA"}
!573 = metadata !{i32 58, i32 0, metadata !25, null} ; [ DW_TAG_imported_module ]
!574 = metadata !{i32 59, i32 0, metadata !575, null}
!575 = metadata !{i32 786443, metadata !1, metadata !25, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!576 = metadata !{i32 60, i32 0, metadata !575, null}
!577 = metadata !{i32 52, i32 0, metadata !25, null}
!578 = metadata !{i32 61, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !575, i32 60, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!580 = metadata !{metadata !"any pointer", metadata !571}
!581 = metadata !{i32 62, i32 0, metadata !579, null}
!582 = metadata !{i32 63, i32 0, metadata !579, null}
!583 = metadata !{i32 64, i32 0, metadata !579, null}
!584 = metadata !{i32 66, i32 0, metadata !575, null}
!585 = metadata !{i32 65, i32 0, metadata !579, null}
!586 = metadata !{i32 67, i32 0, metadata !575, null}
!587 = metadata !{i32 68, i32 0, metadata !575, null}
!588 = metadata !{i32 69, i32 0, metadata !575, null}
!589 = metadata !{i32 70, i32 0, metadata !575, null}
!590 = metadata !{i32 71, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !575, i32 71, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!592 = metadata !{i32 73, i32 0, metadata !593, null}
!593 = metadata !{i32 786443, metadata !1, metadata !591, i32 71, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!594 = metadata !{i32 72, i32 0, metadata !593, null}
!595 = metadata !{metadata !"short", metadata !571}
!596 = metadata !{metadata !"float", metadata !571}
!597 = metadata !{i32 75, i32 0, metadata !575, null}
!598 = metadata !{i32 76, i32 0, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !575, i32 76, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!600 = metadata !{i32 77, i32 0, metadata !599, null}
!601 = metadata !{i32 78, i32 0, metadata !575, null}
!602 = metadata !{i32 79, i32 0, metadata !575, null}
!603 = metadata !{i32 82, i32 0, metadata !575, null}
!604 = metadata !{i32 84, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !575, i32 83, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!606 = metadata !{i32 85, i32 0, metadata !605, null}
!607 = metadata !{i32 87, i32 0, metadata !605, null}
!608 = metadata !{i32 88, i32 0, metadata !609, null}
!609 = metadata !{i32 786443, metadata !1, metadata !575, i32 88, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!610 = metadata !{i32 89, i32 0, metadata !611, null}
!611 = metadata !{i32 786443, metadata !1, metadata !609, i32 88, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!612 = metadata !{i32 91, i32 0, metadata !611, null}
!613 = metadata !{i32 92, i32 0, metadata !611, null}
!614 = metadata !{i32 95, i32 0, metadata !575, null}
!615 = metadata !{i32 96, i32 0, metadata !575, null}
!616 = metadata !{i32 97, i32 0, metadata !25, null}
!617 = metadata !{i32 120, i32 0, metadata !396, null}
!618 = metadata !{i32 121, i32 0, metadata !396, null}
!619 = metadata !{i32 125, i32 0, metadata !396, null}
!620 = metadata !{i32 127, i32 0, metadata !396, null}
!621 = metadata !{i32 128, i32 0, metadata !622, null}
!622 = metadata !{i32 786443, metadata !1, metadata !623, i32 128, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!623 = metadata !{i32 786443, metadata !1, metadata !396, i32 127, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!624 = metadata !{i32 130, i32 0, metadata !625, null}
!625 = metadata !{i32 786443, metadata !1, metadata !622, i32 128, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!626 = metadata !{i32 131, i32 0, metadata !625, null}
!627 = metadata !{i32 135, i32 0, metadata !628, null}
!628 = metadata !{i32 786443, metadata !1, metadata !625, i32 133, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!629 = metadata !{i32 136, i32 0, metadata !628, null}
!630 = metadata !{i32 137, i32 0, metadata !628, null}
!631 = metadata !{i32 138, i32 0, metadata !628, null}
!632 = metadata !{i32 142, i32 0, metadata !633, null}
!633 = metadata !{i32 786443, metadata !1, metadata !623, i32 142, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!634 = metadata !{i32 144, i32 0, metadata !635, null}
!635 = metadata !{i32 786443, metadata !1, metadata !633, i32 142, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!636 = metadata !{i32 147, i32 0, metadata !635, null}
!637 = metadata !{i32 149, i32 0, metadata !638, null}
!638 = metadata !{i32 786443, metadata !1, metadata !635, i32 148, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!639 = metadata !{i32 153, i32 0, metadata !640, null}
!640 = metadata !{i32 786443, metadata !1, metadata !635, i32 151, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!641 = metadata !{i32 420, i32 0, metadata !642, metadata !639}
!642 = metadata !{i32 786443, metadata !452, metadata !541} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!643 = metadata !{i32 421, i32 0, metadata !642, metadata !639}
!644 = metadata !{i32 156, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !646, i32 155, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!646 = metadata !{i32 786443, metadata !1, metadata !640, i32 155, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!647 = metadata !{i32 157, i32 0, metadata !645, null}
!648 = metadata !{i32 160, i32 0, metadata !640, null}
!649 = metadata !{i32 786689, metadata !554, metadata !"a", metadata !453, i32 16777532, metadata !55, i32 0, metadata !626} ; [ DW_TAG_arg_variable ] [a] [line 316]
!650 = metadata !{i32 316, i32 0, metadata !554, metadata !626}
!651 = metadata !{i32 321, i32 0, metadata !554, metadata !626}
!652 = metadata !{i32 322, i32 0, metadata !554, metadata !626}
!653 = metadata !{i32 323, i32 0, metadata !554, metadata !626}
!654 = metadata !{i32 133, i32 0, metadata !625, null}
!655 = metadata !{i32 786689, metadata !554, metadata !"a", metadata !453, i32 16777532, metadata !55, i32 0, metadata !627} ; [ DW_TAG_arg_variable ] [a] [line 316]
!656 = metadata !{i32 316, i32 0, metadata !554, metadata !627}
!657 = metadata !{i32 321, i32 0, metadata !554, metadata !627}
!658 = metadata !{i32 322, i32 0, metadata !554, metadata !627}
!659 = metadata !{i32 323, i32 0, metadata !554, metadata !627}
!660 = metadata !{i32 786689, metadata !554, metadata !"a", metadata !453, i32 16777532, metadata !55, i32 0, metadata !629} ; [ DW_TAG_arg_variable ] [a] [line 316]
!661 = metadata !{i32 316, i32 0, metadata !554, metadata !629}
!662 = metadata !{i32 321, i32 0, metadata !554, metadata !629}
!663 = metadata !{i32 322, i32 0, metadata !554, metadata !629}
!664 = metadata !{i32 323, i32 0, metadata !554, metadata !629}
!665 = metadata !{i32 786689, metadata !554, metadata !"a", metadata !453, i32 16777532, metadata !55, i32 0, metadata !630} ; [ DW_TAG_arg_variable ] [a] [line 316]
!666 = metadata !{i32 316, i32 0, metadata !554, metadata !630}
!667 = metadata !{i32 321, i32 0, metadata !554, metadata !630}
!668 = metadata !{i32 322, i32 0, metadata !554, metadata !630}
!669 = metadata !{i32 323, i32 0, metadata !554, metadata !630}
!670 = metadata !{i32 786689, metadata !548, metadata !"a", metadata !453, i32 16777550, metadata !456, i32 0, metadata !631} ; [ DW_TAG_arg_variable ] [a] [line 334]
!671 = metadata !{i32 334, i32 0, metadata !548, metadata !631}
!672 = metadata !{float 0.000000e+00}
!673 = metadata !{i32 786688, metadata !548, metadata !"nul", metadata !453, i32 336, metadata !491, i32 0, metadata !631} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!674 = metadata !{i32 336, i32 0, metadata !548, metadata !631}
!675 = metadata !{i32 341, i32 0, metadata !548, metadata !631}
!676 = metadata !{i32 338, i32 0, metadata !548, metadata !631}
!677 = metadata !{i32 139, i32 0, metadata !628, null}
!678 = metadata !{i32 143, i32 0, metadata !635, null}
!679 = metadata !{i32 148, i32 0, metadata !638, null}
!680 = metadata !{i32 151, i32 0, metadata !635, null}
!681 = metadata !{i32 786689, metadata !541, metadata !"a", metadata !453, i32 16777633, metadata !55, i32 0, metadata !639} ; [ DW_TAG_arg_variable ] [a] [line 417]
!682 = metadata !{i32 417, i32 0, metadata !541, metadata !639}
!683 = metadata !{i32 786689, metadata !541, metadata !"b", metadata !453, i32 33554849, metadata !55, i32 0, metadata !639} ; [ DW_TAG_arg_variable ] [b] [line 417]
!684 = metadata !{i32 786689, metadata !541, metadata !"c", metadata !453, i32 50332065, metadata !55, i32 0, metadata !639} ; [ DW_TAG_arg_variable ] [c] [line 417]
!685 = metadata !{i32 419, i32 0, metadata !642, metadata !639}
!686 = metadata !{i32 155, i32 0, metadata !646, null}
!687 = metadata !{i32 161, i32 0, metadata !640, null}
!688 = metadata !{i32 164, i32 0, metadata !396, null}
!689 = metadata !{i32 100, i32 0, metadata !530, null}
!690 = metadata !{i32 105, i32 0, metadata !538, null}
!691 = metadata !{i32 106, i32 0, metadata !538, null}
!692 = metadata !{i32 107, i32 0, metadata !538, null}
!693 = metadata !{i32 108, i32 0, metadata !538, null}
!694 = metadata !{i32 109, i32 0, metadata !538, null}
!695 = metadata !{i32 110, i32 0, metadata !538, null}
!696 = metadata !{i32 111, i32 0, metadata !538, null}
!697 = metadata !{i32 112, i32 0, metadata !538, null}
!698 = metadata !{i32 113, i32 0, metadata !538, null}
!699 = metadata !{i32 114, i32 0, metadata !538, null}
!700 = metadata !{i32 115, i32 0, metadata !538, null}
!701 = metadata !{i32 116, i32 0, metadata !538, null}
!702 = metadata !{i32 117, i32 0, metadata !538, null}
!703 = metadata !{i32 166, i32 0, metadata !418, null}
!704 = metadata !{i32 167, i32 0, metadata !418, null}
!705 = metadata !{[3 x float]* undef}
!706 = metadata !{i32 171, i32 0, metadata !418, null}
!707 = metadata !{i32 173, i32 0, metadata !418, null}
!708 = metadata !{i32 175, i32 0, metadata !709, null}
!709 = metadata !{i32 786443, metadata !1, metadata !710, i32 175, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!710 = metadata !{i32 786443, metadata !1, metadata !418, i32 173, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!711 = metadata !{i32 176, i32 0, metadata !712, null}
!712 = metadata !{i32 786443, metadata !1, metadata !709, i32 175, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!713 = metadata !{i32 177, i32 0, metadata !712, null}
!714 = metadata !{i32 786689, metadata !521, metadata !"a", metadata !453, i32 16777473, metadata !55, i32 0, metadata !713} ; [ DW_TAG_arg_variable ] [a] [line 257]
!715 = metadata !{i32 257, i32 0, metadata !521, metadata !713}
!716 = metadata !{i32 786689, metadata !521, metadata !"b", metadata !453, i32 33554689, metadata !55, i32 0, metadata !713} ; [ DW_TAG_arg_variable ] [b] [line 257]
!717 = metadata !{i32 261, i32 0, metadata !521, metadata !713}
!718 = metadata !{i32 786688, metadata !521, metadata !"x", metadata !453, i32 259, metadata !41, i32 0, metadata !713} ; [ DW_TAG_auto_variable ] [x] [line 259]
!719 = metadata !{i32 262, i32 0, metadata !521, metadata !713}
!720 = metadata !{i32 786688, metadata !521, metadata !"y", metadata !453, i32 259, metadata !41, i32 0, metadata !713} ; [ DW_TAG_auto_variable ] [y] [line 259]
!721 = metadata !{i32 263, i32 0, metadata !521, metadata !713}
!722 = metadata !{i32 786688, metadata !521, metadata !"z", metadata !453, i32 259, metadata !41, i32 0, metadata !713} ; [ DW_TAG_auto_variable ] [z] [line 259]
!723 = metadata !{i32 265, i32 0, metadata !521, metadata !713}
!724 = metadata !{i32 266, i32 0, metadata !521, metadata !713}
!725 = metadata !{i32 267, i32 0, metadata !521, metadata !713}
!726 = metadata !{i32 179, i32 0, metadata !710, null}
!727 = metadata !{i32 182, i32 0, metadata !728, null}
!728 = metadata !{i32 786443, metadata !1, metadata !729, i32 181, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!729 = metadata !{i32 786443, metadata !1, metadata !730, i32 181, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!730 = metadata !{i32 786443, metadata !1, metadata !710, i32 179, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!731 = metadata !{i32 184, i32 0, metadata !728, null}
!732 = metadata !{i32 185, i32 0, metadata !728, null}
!733 = metadata !{i32 181, i32 0, metadata !729, null}
!734 = metadata !{i32 786689, metadata !510, metadata !"a", metadata !453, i32 16777460, metadata !513, i32 0, metadata !731} ; [ DW_TAG_arg_variable ] [a] [line 244]
!735 = metadata !{i32 244, i32 0, metadata !510, metadata !731}
!736 = metadata !{i32 786689, metadata !510, metadata !"b", metadata !453, i32 33554676, metadata !513, i32 0, metadata !731} ; [ DW_TAG_arg_variable ] [b] [line 244]
!737 = metadata !{float* undef}
!738 = metadata !{i32 786689, metadata !510, metadata !"c", metadata !453, i32 50331892, metadata !55, i32 0, metadata !731} ; [ DW_TAG_arg_variable ] [c] [line 244]
!739 = metadata !{i32 248, i32 0, metadata !510, metadata !731}
!740 = metadata !{i32 786688, metadata !510, metadata !"x", metadata !453, i32 246, metadata !41, i32 0, metadata !731} ; [ DW_TAG_auto_variable ] [x] [line 246]
!741 = metadata !{i32 249, i32 0, metadata !510, metadata !731}
!742 = metadata !{i32 786688, metadata !510, metadata !"y", metadata !453, i32 246, metadata !41, i32 0, metadata !731} ; [ DW_TAG_auto_variable ] [y] [line 246]
!743 = metadata !{i32 250, i32 0, metadata !510, metadata !731}
!744 = metadata !{i32 786688, metadata !510, metadata !"z", metadata !453, i32 246, metadata !41, i32 0, metadata !731} ; [ DW_TAG_auto_variable ] [z] [line 246]
!745 = metadata !{i32 786689, metadata !541, metadata !"a", metadata !453, i32 16777633, metadata !55, i32 0, metadata !732} ; [ DW_TAG_arg_variable ] [a] [line 417]
!746 = metadata !{i32 417, i32 0, metadata !541, metadata !732}
!747 = metadata !{i32 786689, metadata !541, metadata !"b", metadata !453, i32 33554849, metadata !55, i32 0, metadata !732} ; [ DW_TAG_arg_variable ] [b] [line 417]
!748 = metadata !{i32 786689, metadata !541, metadata !"c", metadata !453, i32 50332065, metadata !55, i32 0, metadata !732} ; [ DW_TAG_arg_variable ] [c] [line 417]
!749 = metadata !{i32 419, i32 0, metadata !642, metadata !732}
!750 = metadata !{i32 420, i32 0, metadata !642, metadata !732}
!751 = metadata !{i32 421, i32 0, metadata !642, metadata !732}
!752 = metadata !{i32 186, i32 0, metadata !728, null}
!753 = metadata !{i32 786689, metadata !521, metadata !"a", metadata !453, i32 16777473, metadata !55, i32 0, metadata !752} ; [ DW_TAG_arg_variable ] [a] [line 257]
!754 = metadata !{i32 257, i32 0, metadata !521, metadata !752}
!755 = metadata !{i32 786689, metadata !521, metadata !"b", metadata !453, i32 33554689, metadata !55, i32 0, metadata !752} ; [ DW_TAG_arg_variable ] [b] [line 257]
!756 = metadata !{i32 261, i32 0, metadata !521, metadata !752}
!757 = metadata !{i32 786688, metadata !521, metadata !"x", metadata !453, i32 259, metadata !41, i32 0, metadata !752} ; [ DW_TAG_auto_variable ] [x] [line 259]
!758 = metadata !{i32 262, i32 0, metadata !521, metadata !752}
!759 = metadata !{i32 786688, metadata !521, metadata !"y", metadata !453, i32 259, metadata !41, i32 0, metadata !752} ; [ DW_TAG_auto_variable ] [y] [line 259]
!760 = metadata !{i32 263, i32 0, metadata !521, metadata !752}
!761 = metadata !{i32 786688, metadata !521, metadata !"z", metadata !453, i32 259, metadata !41, i32 0, metadata !752} ; [ DW_TAG_auto_variable ] [z] [line 259]
!762 = metadata !{i32 265, i32 0, metadata !521, metadata !752}
!763 = metadata !{i32 266, i32 0, metadata !521, metadata !752}
!764 = metadata !{i32 267, i32 0, metadata !521, metadata !752}
!765 = metadata !{i32 190, i32 0, metadata !418, null}
!766 = metadata !{i32 208, i32 0, metadata !435, null}
!767 = metadata !{i32 212, i32 0, metadata !435, null}
!768 = metadata !{i32 213, i32 0, metadata !435, null}
!769 = metadata !{i32 216, i32 0, metadata !435, null}
!770 = metadata !{i32 262, i32 0, metadata !771, null}
!771 = metadata !{i32 786443, metadata !1, metadata !435, i32 262, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!772 = metadata !{i32 217, i32 0, metadata !773, null}
!773 = metadata !{i32 786443, metadata !1, metadata !774, i32 217, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!774 = metadata !{i32 786443, metadata !1, metadata !435, i32 216, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!775 = metadata !{i32 218, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !773, i32 217, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!777 = metadata !{i32 221, i32 0, metadata !778, null}
!778 = metadata !{i32 786443, metadata !1, metadata !776, i32 219, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!779 = metadata !{i32 219, i32 0, metadata !776, null}
!780 = metadata !{i32 220, i32 0, metadata !778, null}
!781 = metadata !{i32 786689, metadata !503, metadata !"a", metadata !453, i32 16777520, metadata !41, i32 0, metadata !777} ; [ DW_TAG_arg_variable ] [a] [line 304]
!782 = metadata !{i32 304, i32 0, metadata !503, metadata !777}
!783 = metadata !{i32 786689, metadata !503, metadata !"v1", metadata !453, i32 33554736, metadata !55, i32 0, metadata !777} ; [ DW_TAG_arg_variable ] [v1] [line 304]
!784 = metadata !{i32 786689, metadata !503, metadata !"v2", metadata !453, i32 50331952, metadata !55, i32 0, metadata !777} ; [ DW_TAG_arg_variable ] [v2] [line 304]
!785 = metadata !{i32 306, i32 0, metadata !503, metadata !777}
!786 = metadata !{i32 307, i32 0, metadata !503, metadata !777}
!787 = metadata !{i32 308, i32 0, metadata !503, metadata !777}
!788 = metadata !{i32 222, i32 0, metadata !778, null}
!789 = metadata !{i32 225, i32 0, metadata !774, null}
!790 = metadata !{i32 226, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !792, i32 226, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!792 = metadata !{i32 786443, metadata !1, metadata !774, i32 225, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!793 = metadata !{i32 227, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !791, i32 226, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!795 = metadata !{i32 233, i32 0, metadata !796, null}
!796 = metadata !{i32 786443, metadata !1, metadata !797, i32 232, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!797 = metadata !{i32 786443, metadata !1, metadata !794, i32 228, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!798 = metadata !{i32 238, i32 0, metadata !797, null}
!799 = metadata !{i32 420, i32 0, metadata !642, metadata !798}
!800 = metadata !{i32 421, i32 0, metadata !642, metadata !798}
!801 = metadata !{i32 240, i32 0, metadata !802, null}
!802 = metadata !{i32 786443, metadata !1, metadata !797, i32 239, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!803 = metadata !{i32 246, i32 0, metadata !797, null}
!804 = metadata !{i32 248, i32 0, metadata !797, null}
!805 = metadata !{i32 500, i32 0, metadata !496, metadata !804}
!806 = metadata !{i32 501, i32 0, metadata !496, metadata !804}
!807 = metadata !{i32 502, i32 0, metadata !496, metadata !804}
!808 = metadata !{i32 503, i32 0, metadata !496, metadata !804}
!809 = metadata !{i32 504, i32 0, metadata !496, metadata !804}
!810 = metadata !{i32 505, i32 0, metadata !496, metadata !804}
!811 = metadata !{i32 506, i32 0, metadata !496, metadata !804}
!812 = metadata !{i32 507, i32 0, metadata !496, metadata !804}
!813 = metadata !{i32 508, i32 0, metadata !496, metadata !804}
!814 = metadata !{i32 256, i32 0, metadata !797, null}
!815 = metadata !{i32 265, i32 0, metadata !816, null}
!816 = metadata !{i32 786443, metadata !1, metadata !771, i32 262, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!817 = metadata !{i32 267, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !819, i32 266, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!819 = metadata !{i32 786443, metadata !1, metadata !816, i32 265, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!820 = metadata !{i32 272, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !819, i32 271, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!822 = metadata !{i32 279, i32 0, metadata !823, null}
!823 = metadata !{i32 786443, metadata !1, metadata !819, i32 278, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!824 = metadata !{i32 284, i32 0, metadata !825, null}
!825 = metadata !{i32 786443, metadata !1, metadata !826, i32 282, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!826 = metadata !{i32 786443, metadata !1, metadata !823, i32 280, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.c]
!827 = metadata !{i32 285, i32 0, metadata !825, null}
!828 = metadata !{i32 286, i32 0, metadata !825, null}
!829 = metadata !{i32 288, i32 0, metadata !825, null}
!830 = metadata !{i32 228, i32 0, metadata !794, null}
!831 = metadata !{i32 229, i32 0, metadata !797, null}
!832 = metadata !{i32 232, i32 0, metadata !796, null}
!833 = metadata !{i32 786689, metadata !541, metadata !"a", metadata !453, i32 16777633, metadata !55, i32 0, metadata !798} ; [ DW_TAG_arg_variable ] [a] [line 417]
!834 = metadata !{i32 417, i32 0, metadata !541, metadata !798}
!835 = metadata !{i32 786689, metadata !541, metadata !"b", metadata !453, i32 33554849, metadata !55, i32 0, metadata !798} ; [ DW_TAG_arg_variable ] [b] [line 417]
!836 = metadata !{i32 786689, metadata !541, metadata !"c", metadata !453, i32 50332065, metadata !55, i32 0, metadata !798} ; [ DW_TAG_arg_variable ] [c] [line 417]
!837 = metadata !{i32 419, i32 0, metadata !642, metadata !798}
!838 = metadata !{i32 239, i32 0, metadata !802, null}
!839 = metadata !{i32 786689, metadata !548, metadata !"a", metadata !453, i32 16777550, metadata !456, i32 0, metadata !803} ; [ DW_TAG_arg_variable ] [a] [line 334]
!840 = metadata !{i32 334, i32 0, metadata !548, metadata !803}
!841 = metadata !{i32 786688, metadata !548, metadata !"nul", metadata !453, i32 336, metadata !491, i32 0, metadata !803} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!842 = metadata !{i32 336, i32 0, metadata !548, metadata !803}
!843 = metadata !{i32 338, i32 0, metadata !548, metadata !803}
!844 = metadata !{i32 247, i32 0, metadata !797, null}
!845 = metadata !{i32 786689, metadata !496, metadata !"b", metadata !453, i32 33554930, metadata !456, i32 0, metadata !804} ; [ DW_TAG_arg_variable ] [b] [line 498]
!846 = metadata !{i32 498, i32 0, metadata !496, metadata !804}
!847 = metadata !{i32 786689, metadata !477, metadata !"B", metadata !26, i32 33554624, metadata !456, i32 0, metadata !848} ; [ DW_TAG_arg_variable ] [B] [line 192]
!848 = metadata !{i32 255, i32 0, metadata !797, null}
!849 = metadata !{i32 192, i32 0, metadata !477, metadata !848}
!850 = metadata !{[3 x [3 x float]]* undef}
!851 = metadata !{i32 194, i32 0, metadata !484, metadata !848}
!852 = metadata !{i32 196, i32 0, metadata !484, metadata !848}
!853 = metadata !{i32 197, i32 0, metadata !484, metadata !848}
!854 = metadata !{i32 198, i32 0, metadata !484, metadata !848}
!855 = metadata !{i32 200, i32 0, metadata !484, metadata !848}
!856 = metadata !{i32 204, i32 0, metadata !484, metadata !848}
!857 = metadata !{i32 786689, metadata !485, metadata !"src", metadata !453, i32 16777740, metadata !456, i32 0, metadata !858} ; [ DW_TAG_arg_variable ] [src] [line 524]
!858 = metadata !{i32 205, i32 0, metadata !484, metadata !848}
!859 = metadata !{i32 524, i32 0, metadata !485, metadata !858}
!860 = metadata !{i32 786689, metadata !485, metadata !"dest", metadata !453, i32 33554956, metadata !456, i32 0, metadata !858} ; [ DW_TAG_arg_variable ] [dest] [line 524]
!861 = metadata !{float 0x3C32725DE0000000}
!862 = metadata !{i32 786688, metadata !490, metadata !"smallreal", metadata !453, i32 526, metadata !491, i32 0, metadata !858} ; [ DW_TAG_auto_variable ] [smallreal] [line 526]
!863 = metadata !{i32 526, i32 0, metadata !490, metadata !858}
!864 = metadata !{float 0x43ABC16D60000000}
!865 = metadata !{i32 786688, metadata !490, metadata !"largereal", metadata !453, i32 527, metadata !491, i32 0, metadata !858} ; [ DW_TAG_auto_variable ] [largereal] [line 527]
!866 = metadata !{i32 527, i32 0, metadata !490, metadata !858}
!867 = metadata !{i32 786689, metadata !451, metadata !"a", metadata !453, i32 16777694, metadata !456, i32 0, metadata !868} ; [ DW_TAG_arg_variable ] [a] [line 478]
!868 = metadata !{i32 530, i32 0, metadata !490, metadata !858}
!869 = metadata !{i32 478, i32 0, metadata !451, metadata !868}
!870 = metadata !{i32 480, i32 0, metadata !871, metadata !868}
!871 = metadata !{i32 786443, metadata !452, metadata !451} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!872 = metadata !{i32 786688, metadata !490, metadata !"deter", metadata !453, i32 528, metadata !41, i32 0, metadata !858} ; [ DW_TAG_auto_variable ] [deter] [line 528]
!873 = metadata !{i32 531, i32 0, metadata !490, metadata !858}
!874 = metadata !{i32 786688, metadata !490, metadata !"c", metadata !453, i32 528, metadata !41, i32 0, metadata !858} ; [ DW_TAG_auto_variable ] [c] [line 528]
!875 = metadata !{i32 532, i32 0, metadata !490, metadata !858}
!876 = metadata !{i32 786688, metadata !490, metadata !"fc", metadata !453, i32 528, metadata !41, i32 0, metadata !858} ; [ DW_TAG_auto_variable ] [fc] [line 528]
!877 = metadata !{i32 534, i32 0, metadata !490, metadata !858}
!878 = metadata !{i32 535, i32 0, metadata !490, metadata !858}
!879 = metadata !{i32 537, i32 0, metadata !490, metadata !858}
!880 = metadata !{i32 538, i32 0, metadata !490, metadata !858}
!881 = metadata !{i32 539, i32 0, metadata !490, metadata !858}
!882 = metadata !{i32 540, i32 0, metadata !490, metadata !858}
!883 = metadata !{i32 541, i32 0, metadata !490, metadata !858}
!884 = metadata !{i32 542, i32 0, metadata !490, metadata !858}
!885 = metadata !{i32 543, i32 0, metadata !490, metadata !858}
!886 = metadata !{i32 544, i32 0, metadata !490, metadata !858}
!887 = metadata !{i32 545, i32 0, metadata !490, metadata !858}
!888 = metadata !{i32 786689, metadata !470, metadata !"a", metadata !453, i32 16777764, metadata !456, i32 0, metadata !814} ; [ DW_TAG_arg_variable ] [a] [line 548]
!889 = metadata !{i32 548, i32 0, metadata !470, metadata !814}
!890 = metadata !{i32 786689, metadata !470, metadata !"src", metadata !453, i32 33554980, metadata !55, i32 0, metadata !814} ; [ DW_TAG_arg_variable ] [src] [line 548]
!891 = metadata !{i32 786689, metadata !470, metadata !"dest", metadata !453, i32 50332196, metadata !55, i32 0, metadata !814} ; [ DW_TAG_arg_variable ] [dest] [line 548]
!892 = metadata !{i32 550, i32 0, metadata !470, metadata !814}
!893 = metadata !{i32 551, i32 0, metadata !470, metadata !814}
!894 = metadata !{i32 552, i32 0, metadata !470, metadata !814}
!895 = metadata !{i32 257, i32 0, metadata !797, null}
!896 = metadata !{i32 263, i32 0, metadata !816, null}
!897 = metadata !{i32 264, i32 0, metadata !816, null}
!898 = metadata !{i32 266, i32 0, metadata !818, null}
!899 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !453, i32 16777413, metadata !41, i32 0, metadata !817} ; [ DW_TAG_arg_variable ] [x] [line 197]
!900 = metadata !{i32 197, i32 0, metadata !465, metadata !817}
!901 = metadata !{i32 199, i32 0, metadata !465, metadata !817}
!902 = metadata !{i32 268, i32 0, metadata !819, null}
!903 = metadata !{i32 270, i32 0, metadata !819, null}
!904 = metadata !{i32 273, i32 0, metadata !821, null}
!905 = metadata !{i32 278, i32 0, metadata !819, null}
!906 = metadata !{i32 786689, metadata !459, metadata !"a", metadata !453, i32 16777559, metadata !55, i32 0, metadata !822} ; [ DW_TAG_arg_variable ] [a] [line 343]
!907 = metadata !{i32 343, i32 0, metadata !459, metadata !822}
!908 = metadata !{i32 786689, metadata !459, metadata !"b", metadata !453, i32 33554775, metadata !55, i32 0, metadata !822} ; [ DW_TAG_arg_variable ] [b] [line 343]
!909 = metadata !{i32 345, i32 0, metadata !459, metadata !822}
!910 = metadata !{i32 280, i32 0, metadata !823, null}
!911 = metadata !{i32 283, i32 0, metadata !825, null}
!912 = metadata !{i32 480, i32 0, metadata !871, metadata !827}
!913 = metadata !{i32 290, i32 0, metadata !825, null}
!914 = metadata !{i32 292, i32 0, metadata !825, null}
!915 = metadata !{i32 294, i32 0, metadata !825, null}
!916 = metadata !{i32 296, i32 0, metadata !825, null}
!917 = metadata !{i32 297, i32 0, metadata !825, null}
!918 = metadata !{i32 302, i32 0, metadata !435, null}
