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
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 49, i32 1, i32 80) #4
  %0 = bitcast i8* %call to %struct.t_vcm*
  %cmp = icmp slt i32 %nstcomm, 0
  br i1 %cmp, label %if.then13, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %nstcomm, 0
  %mode3 = getelementptr inbounds i8* %call, i64 4
  %1 = bitcast i8* %mode3 to i32*
  br i1 %cmp1, label %if.then9, label %if.end6

if.end6:                                          ; preds = %if.else
  store i32 2, i32* %1, align 4, !tbaa !0
  br label %if.end105

if.then9:                                         ; preds = %if.else
  store i32 0, i32* %1, align 4, !tbaa !0
  %nr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 6, i32 0
  %2 = load i32* %nr, align 4, !tbaa !0
  %nr10 = bitcast i8* %call to i32*
  store i32 %2, i32* %nr10, align 4, !tbaa !0
  br label %if.end22

if.then13:                                        ; preds = %entry
  %mode = getelementptr inbounds i8* %call, i64 4
  %3 = bitcast i8* %mode to i32*
  store i32 1, i32* %3, align 4, !tbaa !0
  %nr182 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 6, i32 0
  %4 = load i32* %nr182, align 4, !tbaa !0
  %nr10183 = bitcast i8* %call to i32*
  store i32 %4, i32* %nr10183, align 4, !tbaa !0
  %call15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 61, i32 %4, i32 12) #4
  %5 = bitcast i8* %call15 to [3 x float]*
  %group_j = getelementptr inbounds i8* %call, i64 32
  %6 = bitcast i8* %group_j to [3 x float]**
  store [3 x float]* %5, [3 x float]** %6, align 8, !tbaa !3
  %7 = load i32* %nr10183, align 4, !tbaa !0
  %call17 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 62, i32 %7, i32 12) #4
  %8 = bitcast i8* %call17 to [3 x float]*
  %group_x = getelementptr inbounds i8* %call, i64 24
  %9 = bitcast i8* %group_x to [3 x float]**
  store [3 x float]* %8, [3 x float]** %9, align 8, !tbaa !3
  %10 = load i32* %nr10183, align 4, !tbaa !0
  %call19 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 63, i32 %10, i32 36) #4
  %11 = bitcast i8* %call19 to [3 x [3 x float]]*
  %group_i = getelementptr inbounds i8* %call, i64 48
  %12 = bitcast i8* %group_i to [3 x [3 x float]]**
  store [3 x [3 x float]]* %11, [3 x [3 x float]]** %12, align 8, !tbaa !3
  %13 = load i32* %nr10183, align 4, !tbaa !0
  %call21 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 64, i32 %13, i32 12) #4
  %14 = bitcast i8* %call21 to [3 x float]*
  %group_w = getelementptr inbounds i8* %call, i64 40
  %15 = bitcast i8* %group_w to [3 x float]**
  store [3 x float]* %14, [3 x float]** %15, align 8, !tbaa !3
  %.pre = load i32* %nr10183, align 4, !tbaa !0
  br label %if.end22

if.end22:                                         ; preds = %if.then9, %if.then13
  %nr10185 = phi i32* [ %nr10183, %if.then13 ], [ %nr10, %if.then9 ]
  %16 = phi i32 [ %.pre, %if.then13 ], [ %2, %if.then9 ]
  %.in = getelementptr inbounds i8* %call, i64 4
  %17 = bitcast i8* %.in to i32*
  %call24 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 66, i32 %16, i32 12) #4
  %18 = bitcast i8* %call24 to [3 x float]*
  %group_p = getelementptr inbounds i8* %call, i64 8
  %19 = bitcast i8* %group_p to [3 x float]**
  store [3 x float]* %18, [3 x float]** %19, align 8, !tbaa !3
  %20 = load i32* %nr10185, align 4, !tbaa !0
  %call26 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 67, i32 %20, i32 12) #4
  %21 = bitcast i8* %call26 to [3 x float]*
  %group_v = getelementptr inbounds i8* %call, i64 16
  %22 = bitcast i8* %group_v to [3 x float]**
  store [3 x float]* %21, [3 x float]** %22, align 8, !tbaa !3
  %23 = load i32* %nr10185, align 4, !tbaa !0
  %call28 = tail call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 68, i32 %23, i32 4) #4
  %24 = bitcast i8* %call28 to float*
  %group_mass = getelementptr inbounds i8* %call, i64 56
  %25 = bitcast i8* %group_mass to float**
  store float* %24, float** %25, align 8, !tbaa !3
  %26 = load i32* %nr10185, align 4, !tbaa !0
  %call30 = tail call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 69, i32 %26, i32 8) #4
  %27 = bitcast i8* %call30 to i8**
  %group_name = getelementptr inbounds i8* %call, i64 64
  %28 = bitcast i8* %group_name to i8***
  store i8** %27, i8*** %28, align 8, !tbaa !3
  %cVCM = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 19
  %29 = load i16** %cVCM, align 8, !tbaa !3
  %group_id = getelementptr inbounds i8* %call, i64 72
  %30 = bitcast i8* %group_id to i16**
  store i16* %29, i16** %30, align 8, !tbaa !3
  %add = add nsw i32 %homenr, %start
  %cmp31172 = icmp sgt i32 %homenr, 0
  br i1 %cmp31172, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end22
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %31 = load float** %massT, align 8, !tbaa !3
  %32 = load float** %25, align 8, !tbaa !3
  %33 = sext i32 %start to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv176 = phi i64 [ %33, %for.body.lr.ph ], [ %indvars.iv.next177, %for.body ]
  %arrayidx33 = getelementptr inbounds i16* %29, i64 %indvars.iv176
  %34 = load i16* %arrayidx33, align 2, !tbaa !4
  %arrayidx35 = getelementptr inbounds float* %31, i64 %indvars.iv176
  %35 = load float* %arrayidx35, align 4, !tbaa !5
  %idxprom36 = zext i16 %34 to i64
  %arrayidx38 = getelementptr inbounds float* %32, i64 %idxprom36
  %36 = load float* %arrayidx38, align 4, !tbaa !5
  %add39 = fadd float %35, %36
  store float %add39, float* %arrayidx38, align 4, !tbaa !5
  %indvars.iv.next177 = add i64 %indvars.iv176, 1
  %37 = trunc i64 %indvars.iv.next177 to i32
  %cmp31 = icmp slt i32 %37, %add
  br i1 %cmp31, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end22
  %38 = load i32* %nr10185, align 4, !tbaa !0
  %call41 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 75, i32 %38, i32 4) #4
  %39 = bitcast i8* %call41 to float*
  %40 = load i32* %nr10185, align 4, !tbaa !0
  %cmp44170 = icmp sgt i32 %40, 0
  br i1 %cmp44170, label %for.body46.lr.ph, label %for.end54

for.body46.lr.ph:                                 ; preds = %for.end
  %41 = load float** %25, align 8, !tbaa !3
  br label %for.body46

for.body46:                                       ; preds = %for.body46.lr.ph, %for.body46
  %indvars.iv174 = phi i64 [ 0, %for.body46.lr.ph ], [ %indvars.iv.next175, %for.body46 ]
  %arrayidx49 = getelementptr inbounds float* %41, i64 %indvars.iv174
  %42 = load float* %arrayidx49, align 4, !tbaa !5
  %arrayidx51 = getelementptr inbounds float* %39, i64 %indvars.iv174
  store float %42, float* %arrayidx51, align 4, !tbaa !5
  %indvars.iv.next175 = add i64 %indvars.iv174, 1
  %43 = trunc i64 %indvars.iv.next175 to i32
  %cmp44 = icmp slt i32 %43, %40
  br i1 %cmp44, label %for.body46, label %for.end54

for.end54:                                        ; preds = %for.body46, %for.end
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %44 = load i32* %nnodes, align 4, !tbaa !0
  %cmp55 = icmp sgt i32 %44, 1
  br i1 %cmp55, label %if.then59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end54
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %45 = load i32* %nthreads, align 4, !tbaa !0
  %cmp57 = icmp sgt i32 %45, 1
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %lor.lhs.false, %for.end54
  tail call void @gmx_sumf(i32 %40, float* %39, %struct.t_commrec* %cr) #4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %lor.lhs.false
  %tobool = icmp ne %struct._IO_FILE* %fp, null
  br i1 %tobool, label %if.then62, label %for.cond76.preheader

if.then62:                                        ; preds = %if.end61
  %46 = load i32* %17, align 4, !tbaa !0
  %47 = icmp ugt i32 %46, 2
  br i1 %47, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then62
  %idxprom71 = sext i32 %46 to i64
  %arrayidx72 = getelementptr inbounds [4 x i8*]* @ecm_names, i64 0, i64 %idxprom71
  %48 = load i8** %arrayidx72, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %if.then62, %cond.false
  %cond = phi i8* [ %48, %cond.false ], [ getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), %if.then62 ]
  %call73 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([42 x i8]* @.str11, i64 0, i64 0), i8* %cond) #4
  %49 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %fp)
  br label %for.cond76.preheader

for.cond76.preheader:                             ; preds = %if.end61, %cond.end
  %50 = load i32* %nr10185, align 4, !tbaa !0
  %cmp78168 = icmp sgt i32 %50, 0
  br i1 %cmp78168, label %for.body80.lr.ph, label %for.end104

for.body80.lr.ph:                                 ; preds = %for.cond76.preheader
  %nm_ind = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 6, i32 1
  %grpname = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8
  br label %for.body80

for.body80:                                       ; preds = %for.body80.lr.ph, %for.inc102
  %51 = phi i32 [ %50, %for.body80.lr.ph ], [ %62, %for.inc102 ]
  %indvars.iv = phi i64 [ 0, %for.body80.lr.ph ], [ %indvars.iv.next, %for.inc102 ]
  %52 = load i32** %nm_ind, align 8, !tbaa !3
  %arrayidx85 = getelementptr inbounds i32* %52, i64 %indvars.iv
  %53 = load i32* %arrayidx85, align 4, !tbaa !0
  %idxprom86 = sext i32 %53 to i64
  %54 = load i8**** %grpname, align 8, !tbaa !3
  %arrayidx88 = getelementptr inbounds i8*** %54, i64 %idxprom86
  %55 = load i8*** %arrayidx88, align 8, !tbaa !3
  %56 = load i8** %55, align 8, !tbaa !3
  %57 = load i8*** %28, align 8, !tbaa !3
  %arrayidx91 = getelementptr inbounds i8** %57, i64 %indvars.iv
  store i8* %56, i8** %arrayidx91, align 8, !tbaa !3
  br i1 %tobool, label %if.then93, label %for.inc102

if.then93:                                        ; preds = %for.body80
  %58 = load i8*** %28, align 8, !tbaa !3
  %arrayidx96 = getelementptr inbounds i8** %58, i64 %indvars.iv
  %59 = load i8** %arrayidx96, align 8, !tbaa !3
  %arrayidx98 = getelementptr inbounds float* %39, i64 %indvars.iv
  %60 = load float* %arrayidx98, align 4, !tbaa !5
  %conv99 = fpext float %60 to double
  %61 = trunc i64 %indvars.iv to i32
  %call100 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str14, i64 0, i64 0), i32 %61, i8* %59, double %conv99) #4
  %.pre178 = load i32* %nr10185, align 4, !tbaa !0
  br label %for.inc102

for.inc102:                                       ; preds = %for.body80, %if.then93
  %62 = phi i32 [ %51, %for.body80 ], [ %.pre178, %if.then93 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %63 = trunc i64 %indvars.iv.next to i32
  %cmp78 = icmp slt i32 %63, %62
  br i1 %cmp78, label %for.body80, label %for.end104

for.end104:                                       ; preds = %for.inc102, %for.cond76.preheader
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 95, i8* %call41) #4
  br label %if.end105

if.end105:                                        ; preds = %if.end6, %for.end104
  ret %struct.t_vcm* %0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @gmx_sumf(i32, float*, %struct.t_commrec*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @calc_vcm_grp(%struct._IO_FILE* nocapture %fp, i32 %start, i32 %homenr, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %v, %struct.t_vcm* nocapture %vcm) #0 {
entry:
  %j0 = alloca [3 x float], align 4
  %mode = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 1
  %0 = load i32* %mode, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.end96, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %nr = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 0
  %1 = load i32* %nr, align 4, !tbaa !0
  %cmp1161 = icmp sgt i32 %1, 0
  br i1 %cmp1161, label %for.body.lr.ph, label %for.cond19.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %group_mass = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8
  %group_p = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2
  %group_j = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5
  %group_x = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4
  %group_w = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 6
  %group_i = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7
  br label %for.body

for.cond19.preheader:                             ; preds = %for.inc, %for.cond.preheader
  %add = add nsw i32 %homenr, %start
  %cmp20159 = icmp sgt i32 %homenr, 0
  br i1 %cmp20159, label %for.body21.lr.ph, label %if.end96

for.body21.lr.ph:                                 ; preds = %for.cond19.preheader
  %group_id = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 10
  %group_mass27 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8
  %group_p40 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2
  %arraydecay57 = getelementptr inbounds [3 x float]* %j0, i64 0, i64 0
  %arrayidx13.i = getelementptr inbounds [3 x float]* %j0, i64 0, i64 1
  %arrayidx21.i = getelementptr inbounds [3 x float]* %j0, i64 0, i64 2
  %group_j67 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5
  %group_x78 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4
  %group_i89 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7
  %2 = sext i32 %start to i64
  br label %for.body21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %3 = phi i32 [ %0, %for.body.lr.ph ], [ %.pre172, %for.inc.for.body_crit_edge ]
  %4 = phi i32 [ %1, %for.body.lr.ph ], [ %12, %for.inc.for.body_crit_edge ]
  %indvars.iv169 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next170, %for.inc.for.body_crit_edge ]
  %5 = load float** %group_mass, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds float* %5, i64 %indvars.iv169
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !5
  %6 = load [3 x float]** %group_p, align 8, !tbaa !3
  %arraydecay = getelementptr inbounds [3 x float]* %6, i64 %indvars.iv169, i64 0
  store float 0.000000e+00, float* %arraydecay, align 4, !tbaa !5
  %arrayidx1.i = getelementptr inbounds [3 x float]* %6, i64 %indvars.iv169, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !5
  %arrayidx2.i = getelementptr inbounds [3 x float]* %6, i64 %indvars.iv169, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %3, 1
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  %7 = load [3 x float]** %group_j, align 8, !tbaa !3
  %arraydecay9 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv169, i64 0
  store float 0.000000e+00, float* %arraydecay9, align 4, !tbaa !5
  %arrayidx1.i149 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv169, i64 1
  store float 0.000000e+00, float* %arrayidx1.i149, align 4, !tbaa !5
  %arrayidx2.i150 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv169, i64 2
  store float 0.000000e+00, float* %arrayidx2.i150, align 4, !tbaa !5
  %8 = load [3 x float]** %group_x, align 8, !tbaa !3
  %arraydecay12 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv169, i64 0
  store float 0.000000e+00, float* %arraydecay12, align 4, !tbaa !5
  %arrayidx1.i155 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv169, i64 1
  store float 0.000000e+00, float* %arrayidx1.i155, align 4, !tbaa !5
  %arrayidx2.i156 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv169, i64 2
  store float 0.000000e+00, float* %arrayidx2.i156, align 4, !tbaa !5
  %9 = load [3 x float]** %group_w, align 8, !tbaa !3
  %arraydecay15 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv169, i64 0
  store float 0.000000e+00, float* %arraydecay15, align 4, !tbaa !5
  %arrayidx1.i153 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv169, i64 1
  store float 0.000000e+00, float* %arrayidx1.i153, align 4, !tbaa !5
  %arrayidx2.i154 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv169, i64 2
  store float 0.000000e+00, float* %arrayidx2.i154, align 4, !tbaa !5
  %10 = load [3 x [3 x float]]** %group_i, align 8, !tbaa !3
  %arraydecay18 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv169, i64 0
  %11 = bitcast [3 x float]* %arraydecay18 to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 36, i32 4, i1 false) #3
  %.pre = load i32* %nr, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then6
  %12 = phi i32 [ %4, %for.body ], [ %.pre, %if.then6 ]
  %indvars.iv.next170 = add i64 %indvars.iv169, 1
  %13 = trunc i64 %indvars.iv.next170 to i32
  %cmp1 = icmp slt i32 %13, %12
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.cond19.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre172 = load i32* %mode, align 4, !tbaa !0
  br label %for.body

for.body21:                                       ; preds = %for.inc93, %for.body21.lr.ph
  %indvars.iv167 = phi i64 [ %2, %for.body21.lr.ph ], [ %indvars.iv.next168, %for.inc93 ]
  %arrayidx23 = getelementptr inbounds float* %mass, i64 %indvars.iv167
  %14 = load float* %arrayidx23, align 4, !tbaa !5
  %15 = load i16** %group_id, align 8, !tbaa !3
  %arrayidx25 = getelementptr inbounds i16* %15, i64 %indvars.iv167
  %16 = load i16* %arrayidx25, align 2, !tbaa !4
  %idxprom26 = zext i16 %16 to i64
  %17 = load float** %group_mass27, align 8, !tbaa !3
  %arrayidx28 = getelementptr inbounds float* %17, i64 %idxprom26
  %18 = load float* %arrayidx28, align 4, !tbaa !5
  %add29 = fadd float %14, %18
  store float %add29, float* %arrayidx28, align 4, !tbaa !5
  %19 = load [3 x float]** %group_p40, align 8, !tbaa !3
  br label %for.body33

for.body33:                                       ; preds = %for.body33, %for.body21
  %indvars.iv = phi i64 [ 0, %for.body21 ], [ %indvars.iv.next, %for.body33 ]
  %arrayidx37 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv167, i64 %indvars.iv
  %20 = load float* %arrayidx37, align 4, !tbaa !5
  %mul = fmul float %14, %20
  %arrayidx42 = getelementptr inbounds [3 x float]* %19, i64 %idxprom26, i64 %indvars.iv
  %21 = load float* %arrayidx42, align 4, !tbaa !5
  %add43 = fadd float %mul, %21
  store float %add43, float* %arrayidx42, align 4, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end46, label %for.body33

for.end46:                                        ; preds = %for.body33
  %22 = load i32* %mode, align 4, !tbaa !0
  %cmp48 = icmp eq i32 %22, 1
  br i1 %cmp48, label %if.then50, label %for.inc93

if.then50:                                        ; preds = %for.end46
  %arraydecay53 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv167, i64 0
  %arraydecay56 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv167, i64 0
  %arrayidx.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv167, i64 1
  %23 = load float* %arrayidx.i, align 4, !tbaa !5
  %arrayidx1.i151 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv167, i64 2
  %24 = load float* %arrayidx1.i151, align 4, !tbaa !5
  %mul.i = fmul float %23, %24
  %arrayidx2.i152 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv167, i64 2
  %25 = load float* %arrayidx2.i152, align 4, !tbaa !5
  %arrayidx3.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv167, i64 1
  %26 = load float* %arrayidx3.i, align 4, !tbaa !5
  %mul4.i = fmul float %25, %26
  %sub.i = fsub float %mul.i, %mul4.i
  store float %sub.i, float* %arraydecay57, align 4, !tbaa !5
  %27 = load float* %arraydecay56, align 4, !tbaa !5
  %mul8.i = fmul float %25, %27
  %28 = load float* %arraydecay53, align 4, !tbaa !5
  %mul11.i = fmul float %28, %24
  %sub12.i = fsub float %mul8.i, %mul11.i
  store float %sub12.i, float* %arrayidx13.i, align 4, !tbaa !5
  %mul16.i = fmul float %28, %26
  %mul19.i = fmul float %23, %27
  %sub20.i = fsub float %mul16.i, %mul19.i
  store float %sub20.i, float* %arrayidx21.i, align 4, !tbaa !5
  %29 = load [3 x float]** %group_j67, align 8, !tbaa !3
  %30 = load [3 x float]** %group_x78, align 8, !tbaa !3
  br label %for.body61

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %if.then50
  %31 = phi float [ %sub.i, %if.then50 ], [ %.pre171, %for.body61.for.body61_crit_edge ]
  %indvars.iv163 = phi i64 [ 0, %if.then50 ], [ %indvars.iv.next164, %for.body61.for.body61_crit_edge ]
  %mul64 = fmul float %14, %31
  %arrayidx69 = getelementptr inbounds [3 x float]* %29, i64 %idxprom26, i64 %indvars.iv163
  %32 = load float* %arrayidx69, align 4, !tbaa !5
  %add70 = fadd float %mul64, %32
  store float %add70, float* %arrayidx69, align 4, !tbaa !5
  %arrayidx74 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv167, i64 %indvars.iv163
  %33 = load float* %arrayidx74, align 4, !tbaa !5
  %mul75 = fmul float %14, %33
  %arrayidx80 = getelementptr inbounds [3 x float]* %30, i64 %idxprom26, i64 %indvars.iv163
  %34 = load float* %arrayidx80, align 4, !tbaa !5
  %add81 = fadd float %mul75, %34
  store float %add81, float* %arrayidx80, align 4, !tbaa !5
  %indvars.iv.next164 = add i64 %indvars.iv163, 1
  %lftr.wideiv165 = trunc i64 %indvars.iv.next164 to i32
  %exitcond166 = icmp eq i32 %lftr.wideiv165, 3
  br i1 %exitcond166, label %for.end84, label %for.body61.for.body61_crit_edge

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  %arrayidx63.phi.trans.insert = getelementptr inbounds [3 x float]* %j0, i64 0, i64 %indvars.iv.next164
  %.pre171 = load float* %arrayidx63.phi.trans.insert, align 4, !tbaa !5
  br label %for.body61

for.end84:                                        ; preds = %for.body61
  %35 = load [3 x [3 x float]]** %group_i89, align 8, !tbaa !3
  %arraydecay91 = getelementptr inbounds [3 x [3 x float]]* %35, i64 %idxprom26, i64 0
  call fastcc void @update_tensor(float* %arraydecay53, float %14, [3 x float]* %arraydecay91) #5
  br label %for.inc93

for.inc93:                                        ; preds = %for.end46, %for.end84
  %indvars.iv.next168 = add i64 %indvars.iv167, 1
  %36 = trunc i64 %indvars.iv.next168 to i32
  %cmp20 = icmp slt i32 %36, %add
  br i1 %cmp20, label %for.body21, label %if.end96

if.end96:                                         ; preds = %for.cond19.preheader, %for.inc93, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @update_tensor(float* nocapture %x, float %m0, [3 x float]* nocapture %I) #0 {
entry:
  %0 = load float* %x, align 4, !tbaa !5
  %arrayidx1 = getelementptr inbounds float* %x, i64 1
  %1 = load float* %arrayidx1, align 4, !tbaa !5
  %mul = fmul float %0, %1
  %mul2 = fmul float %mul, %m0
  %arrayidx4 = getelementptr inbounds float* %x, i64 2
  %2 = load float* %arrayidx4, align 4, !tbaa !5
  %mul5 = fmul float %0, %2
  %mul6 = fmul float %mul5, %m0
  %mul9 = fmul float %1, %2
  %mul10 = fmul float %mul9, %m0
  %mul13 = fmul float %0, %0
  %mul14 = fmul float %mul13, %m0
  %arrayidx16 = getelementptr inbounds [3 x float]* %I, i64 0, i64 0
  %3 = load float* %arrayidx16, align 4, !tbaa !5
  %add = fadd float %mul14, %3
  store float %add, float* %arrayidx16, align 4, !tbaa !5
  %4 = load float* %arrayidx1, align 4, !tbaa !5
  %mul19 = fmul float %4, %4
  %mul20 = fmul float %mul19, %m0
  %arrayidx22 = getelementptr inbounds [3 x float]* %I, i64 1, i64 1
  %5 = load float* %arrayidx22, align 4, !tbaa !5
  %add23 = fadd float %5, %mul20
  store float %add23, float* %arrayidx22, align 4, !tbaa !5
  %6 = load float* %arrayidx4, align 4, !tbaa !5
  %mul26 = fmul float %6, %6
  %mul27 = fmul float %mul26, %m0
  %arrayidx29 = getelementptr inbounds [3 x float]* %I, i64 2, i64 2
  %7 = load float* %arrayidx29, align 4, !tbaa !5
  %add30 = fadd float %7, %mul27
  store float %add30, float* %arrayidx29, align 4, !tbaa !5
  %arrayidx32 = getelementptr inbounds [3 x float]* %I, i64 0, i64 1
  %8 = load float* %arrayidx32, align 4, !tbaa !5
  %add33 = fadd float %mul2, %8
  store float %add33, float* %arrayidx32, align 4, !tbaa !5
  %arrayidx35 = getelementptr inbounds [3 x float]* %I, i64 1, i64 0
  %9 = load float* %arrayidx35, align 4, !tbaa !5
  %add36 = fadd float %mul2, %9
  store float %add36, float* %arrayidx35, align 4, !tbaa !5
  %arrayidx38 = getelementptr inbounds [3 x float]* %I, i64 0, i64 2
  %10 = load float* %arrayidx38, align 4, !tbaa !5
  %add39 = fadd float %mul6, %10
  store float %add39, float* %arrayidx38, align 4, !tbaa !5
  %arrayidx41 = getelementptr inbounds [3 x float]* %I, i64 2, i64 0
  %11 = load float* %arrayidx41, align 4, !tbaa !5
  %add42 = fadd float %mul6, %11
  store float %add42, float* %arrayidx41, align 4, !tbaa !5
  %arrayidx44 = getelementptr inbounds [3 x float]* %I, i64 1, i64 2
  %12 = load float* %arrayidx44, align 4, !tbaa !5
  %add45 = fadd float %mul10, %12
  store float %add45, float* %arrayidx44, align 4, !tbaa !5
  %arrayidx47 = getelementptr inbounds [3 x float]* %I, i64 2, i64 1
  %13 = load float* %arrayidx47, align 4, !tbaa !5
  %add48 = fadd float %mul10, %13
  store float %add48, float* %arrayidx47, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @do_stopcm_grp(%struct._IO_FILE* nocapture %fp, i32 %start, i32 %homenr, [3 x float]* nocapture %x, [3 x float]* nocapture %v, %struct.t_vcm* nocapture %vcm) #0 {
entry:
  %mode = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 1
  %0 = load i32* %mode, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.end39, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %add = add nsw i32 %homenr, %start
  %cmp183 = icmp sgt i32 %homenr, 0
  br i1 %cmp183, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %group_id = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 10
  %1 = load i16** %group_id, align 8, !tbaa !3
  %group_v = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 3
  %2 = load [3 x float]** %group_v, align 8, !tbaa !3
  %3 = sext i32 %start to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv85 = phi i64 [ %3, %for.body.lr.ph ], [ %indvars.iv.next86, %for.body ]
  %arrayidx = getelementptr inbounds i16* %1, i64 %indvars.iv85
  %4 = load i16* %arrayidx, align 2, !tbaa !4
  %arraydecay = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv85, i64 0
  %idxprom4 = zext i16 %4 to i64
  %arraydecay6 = getelementptr inbounds [3 x float]* %2, i64 %idxprom4, i64 0
  %5 = load float* %arraydecay, align 4, !tbaa !5
  %6 = load float* %arraydecay6, align 4, !tbaa !5
  %sub.i = fsub float %5, %6
  %arrayidx2.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv85, i64 1
  %7 = load float* %arrayidx2.i, align 4, !tbaa !5
  %arrayidx3.i = getelementptr inbounds [3 x float]* %2, i64 %idxprom4, i64 1
  %8 = load float* %arrayidx3.i, align 4, !tbaa !5
  %sub4.i = fsub float %7, %8
  %arrayidx5.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv85, i64 2
  %9 = load float* %arrayidx5.i, align 4, !tbaa !5
  %arrayidx6.i = getelementptr inbounds [3 x float]* %2, i64 %idxprom4, i64 2
  %10 = load float* %arrayidx6.i, align 4, !tbaa !5
  %sub7.i = fsub float %9, %10
  store float %sub.i, float* %arraydecay, align 4, !tbaa !5
  store float %sub4.i, float* %arrayidx2.i, align 4, !tbaa !5
  store float %sub7.i, float* %arrayidx5.i, align 4, !tbaa !5
  %indvars.iv.next86 = add i64 %indvars.iv85, 1
  %11 = trunc i64 %indvars.iv.next86 to i32
  %cmp1 = icmp slt i32 %11, %add
  br i1 %cmp1, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %cmp8.not = icmp ne i32 %0, 1
  %cmp183.not = xor i1 %cmp183, true
  %brmerge = or i1 %cmp8.not, %cmp183.not
  br i1 %brmerge, label %if.end39, label %for.body15.lr.ph

for.body15.lr.ph:                                 ; preds = %for.end
  %group_id17 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 10
  %12 = load i16** %group_id17, align 8, !tbaa !3
  %group_x = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4
  %13 = load [3 x float]** %group_x, align 8, !tbaa !3
  %group_w = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 6
  %14 = load [3 x float]** %group_w, align 8, !tbaa !3
  %15 = sext i32 %start to i64
  br label %for.body15

for.body15:                                       ; preds = %for.body15.lr.ph, %for.body15
  %indvars.iv = phi i64 [ %15, %for.body15.lr.ph ], [ %indvars.iv.next, %for.body15 ]
  %arrayidx18 = getelementptr inbounds i16* %12, i64 %indvars.iv
  %16 = load i16* %arrayidx18, align 2, !tbaa !4
  %arraydecay22 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %idxprom23 = zext i16 %16 to i64
  %arraydecay25 = getelementptr inbounds [3 x float]* %13, i64 %idxprom23, i64 0
  %17 = load float* %arraydecay22, align 4, !tbaa !5
  %18 = load float* %arraydecay25, align 4, !tbaa !5
  %sub.i71 = fsub float %17, %18
  %arrayidx2.i72 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %19 = load float* %arrayidx2.i72, align 4, !tbaa !5
  %arrayidx3.i73 = getelementptr inbounds [3 x float]* %13, i64 %idxprom23, i64 1
  %20 = load float* %arrayidx3.i73, align 4, !tbaa !5
  %sub4.i74 = fsub float %19, %20
  %arrayidx5.i75 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %21 = load float* %arrayidx5.i75, align 4, !tbaa !5
  %arrayidx6.i76 = getelementptr inbounds [3 x float]* %13, i64 %idxprom23, i64 2
  %22 = load float* %arrayidx6.i76, align 4, !tbaa !5
  %sub7.i77 = fsub float %21, %22
  %arraydecay29 = getelementptr inbounds [3 x float]* %14, i64 %idxprom23, i64 0
  %arrayidx.i = getelementptr inbounds [3 x float]* %14, i64 %idxprom23, i64 1
  %23 = load float* %arrayidx.i, align 4, !tbaa !5
  %mul.i = fmul float %sub7.i77, %23
  %arrayidx2.i68 = getelementptr inbounds [3 x float]* %14, i64 %idxprom23, i64 2
  %24 = load float* %arrayidx2.i68, align 4, !tbaa !5
  %mul4.i = fmul float %sub4.i74, %24
  %sub.i70 = fsub float %mul.i, %mul4.i
  %mul8.i = fmul float %sub.i71, %24
  %25 = load float* %arraydecay29, align 4, !tbaa !5
  %mul11.i = fmul float %sub7.i77, %25
  %sub12.i = fsub float %mul8.i, %mul11.i
  %mul16.i = fmul float %sub4.i74, %25
  %mul19.i = fmul float %sub.i71, %23
  %sub20.i = fsub float %mul16.i, %mul19.i
  %arraydecay34 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv, i64 0
  %26 = load float* %arraydecay34, align 4, !tbaa !5
  %sub.i61 = fsub float %26, %sub.i70
  %arrayidx2.i62 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv, i64 1
  %27 = load float* %arrayidx2.i62, align 4, !tbaa !5
  %sub4.i64 = fsub float %27, %sub12.i
  %arrayidx5.i65 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv, i64 2
  %28 = load float* %arrayidx5.i65, align 4, !tbaa !5
  %sub7.i67 = fsub float %28, %sub20.i
  store float %sub.i61, float* %arraydecay34, align 4, !tbaa !5
  store float %sub4.i64, float* %arrayidx2.i62, align 4, !tbaa !5
  store float %sub7.i67, float* %arrayidx5.i65, align 4, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %29 = trunc i64 %indvars.iv.next to i32
  %cmp13 = icmp slt i32 %29, %add
  br i1 %cmp13, label %for.body15, label %if.end39

if.end39:                                         ; preds = %for.end, %for.body15, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @check_cm_grp(%struct._IO_FILE* %fp, %struct.t_vcm* %vcm) #0 {
entry:
  %jcm = alloca [3 x float], align 4
  %Icm = alloca [3 x [3 x float]], align 16
  %0 = bitcast [3 x [3 x float]]* %Icm to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #3
  %mode = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 1
  %1 = load i32* %mode, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 2
  %nr100.phi.trans.insert = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 0
  %.pre492 = load i32* %nr100.phi.trans.insert, align 4, !tbaa !0
  br i1 %cmp, label %for.cond99.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp1476 = icmp sgt i32 %.pre492, 0
  br i1 %cmp1476, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %group_mass = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8
  %2 = load float** %group_mass, align 8, !tbaa !3
  %group_p = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2
  %group_v = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv490 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next491, %for.inc ]
  %arrayidx = getelementptr inbounds float* %2, i64 %indvars.iv490
  %3 = load float* %arrayidx, align 4, !tbaa !5
  %fabsf414 = call float @fabsf(float %3) #6
  %4 = fpext float %fabsf414 to double
  %cmp2 = fcmp ogt double %4, 1.200000e-38
  br i1 %cmp2, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  %conv6 = fdiv float 1.000000e+00, %3
  %5 = load [3 x float]** %group_p, align 8, !tbaa !3
  %arraydecay = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv490, i64 0
  %6 = load [3 x float]** %group_v, align 8, !tbaa !3
  %arraydecay11 = getelementptr inbounds [3 x float]* %6, i64 %indvars.iv490, i64 0
  %7 = load float* %arraydecay, align 4, !tbaa !5
  %mul.i = fmul float %conv6, %7
  store float %mul.i, float* %arraydecay11, align 4, !tbaa !5
  %arrayidx2.i = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv490, i64 1
  %8 = load float* %arrayidx2.i, align 4, !tbaa !5
  %mul3.i = fmul float %conv6, %8
  %arrayidx4.i = getelementptr inbounds [3 x float]* %6, i64 %indvars.iv490, i64 1
  store float %mul3.i, float* %arrayidx4.i, align 4, !tbaa !5
  %arrayidx5.i = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv490, i64 2
  %9 = load float* %arrayidx5.i, align 4, !tbaa !5
  %mul6.i = fmul float %conv6, %9
  %arrayidx7.i = getelementptr inbounds [3 x float]* %6, i64 %indvars.iv490, i64 2
  store float %mul6.i, float* %arrayidx7.i, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then4
  %indvars.iv.next491 = add i64 %indvars.iv490, 1
  %10 = trunc i64 %indvars.iv.next491 to i32
  %cmp1 = icmp slt i32 %10, %.pre492
  br i1 %cmp1, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %cmp13 = icmp eq i32 %1, 1
  br i1 %cmp13, label %for.cond16.preheader, label %for.cond99.preheader

for.cond16.preheader:                             ; preds = %for.end
  br i1 %cmp1476, label %for.body20.lr.ph, label %for.end287

for.body20.lr.ph:                                 ; preds = %for.cond16.preheader
  %group_mass22 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8
  %group_x = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4
  %group_v48 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 3
  %arraydecay51 = getelementptr inbounds [3 x float]* %jcm, i64 0, i64 0
  %arrayidx13.i450 = getelementptr inbounds [3 x float]* %jcm, i64 0, i64 1
  %arrayidx21.i452 = getelementptr inbounds [3 x float]* %jcm, i64 0, i64 2
  %group_j = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5
  %arraydecay66 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 0
  %group_i = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7
  %arrayidx3.i454 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 0, i64 0
  %arrayidx9.i458 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 0, i64 1
  %arrayidx16.i = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 0, i64 2
  %arrayidx23.i461 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 1, i64 0
  %arrayidx30.i = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 1, i64 1
  %arrayidx37.i = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 1, i64 2
  %arrayidx44.i = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 2, i64 0
  %arrayidx51.i = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 2, i64 1
  %arrayidx58.i = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 2, i64 2
  %group_w = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 6
  br label %for.body20

for.cond99.preheader:                             ; preds = %entry, %for.inc94, %for.end
  %11 = phi i32 [ %.pre492, %for.end ], [ %60, %for.inc94 ], [ %.pre492, %entry ]
  %nr100 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 0
  %cmp101470 = icmp sgt i32 %11, 0
  br i1 %cmp101470, label %for.body103.lr.ph, label %for.end287

for.body103.lr.ph:                                ; preds = %for.cond99.preheader
  %group_mass105 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8
  %group_v118 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 3
  %tobool136 = icmp eq %struct._IO_FILE* %fp, null
  %group_j164 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5
  %group_w168 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 6
  %group_name186 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 9
  %group_i191 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7
  %group_x198 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4
  %group_p214 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2
  br label %for.body103

for.body20:                                       ; preds = %for.inc94, %for.body20.lr.ph
  %12 = phi i32 [ %.pre492, %for.body20.lr.ph ], [ %60, %for.inc94 ]
  %13 = phi i32 [ %.pre492, %for.body20.lr.ph ], [ %61, %for.inc94 ]
  %indvars.iv488 = phi i64 [ 0, %for.body20.lr.ph ], [ %indvars.iv.next489, %for.inc94 ]
  %14 = load float** %group_mass22, align 8, !tbaa !3
  %arrayidx23 = getelementptr inbounds float* %14, i64 %indvars.iv488
  %15 = load float* %arrayidx23, align 4, !tbaa !5
  %fabsf413 = call float @fabsf(float %15) #6
  %16 = fpext float %fabsf413 to double
  %cmp26 = fcmp ogt double %16, 1.200000e-38
  br i1 %cmp26, label %if.then28, label %for.inc94

if.then28:                                        ; preds = %for.body20
  %conv31 = fdiv float 1.000000e+00, %15
  %17 = load [3 x float]** %group_x, align 8, !tbaa !3
  br label %for.body35

for.body35:                                       ; preds = %for.body35, %if.then28
  %indvars.iv480 = phi i64 [ 0, %if.then28 ], [ %indvars.iv.next481, %for.body35 ]
  %arrayidx39 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv488, i64 %indvars.iv480
  %18 = load float* %arrayidx39, align 4, !tbaa !5
  %mul = fmul float %conv31, %18
  store float %mul, float* %arrayidx39, align 4, !tbaa !5
  %indvars.iv.next481 = add i64 %indvars.iv480, 1
  %lftr.wideiv482 = trunc i64 %indvars.iv.next481 to i32
  %exitcond483 = icmp eq i32 %lftr.wideiv482, 3
  br i1 %exitcond483, label %for.end42, label %for.body35

for.end42:                                        ; preds = %for.body35
  %arraydecay46 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv488, i64 0
  %19 = load [3 x float]** %group_v48, align 8, !tbaa !3
  %arraydecay50 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv488, i64 0
  %arrayidx.i = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv488, i64 1
  %20 = load float* %arrayidx.i, align 4, !tbaa !5
  %arrayidx1.i442 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv488, i64 2
  %21 = load float* %arrayidx1.i442, align 4, !tbaa !5
  %mul.i443 = fmul float %20, %21
  %arrayidx2.i444 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv488, i64 2
  %22 = load float* %arrayidx2.i444, align 4, !tbaa !5
  %arrayidx3.i445 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv488, i64 1
  %23 = load float* %arrayidx3.i445, align 4, !tbaa !5
  %mul4.i446 = fmul float %22, %23
  %sub.i447 = fsub float %mul.i443, %mul4.i446
  store float %sub.i447, float* %arraydecay51, align 4, !tbaa !5
  %24 = load float* %arraydecay50, align 4, !tbaa !5
  %mul8.i = fmul float %22, %24
  %25 = load float* %arraydecay46, align 4, !tbaa !5
  %mul11.i448 = fmul float %25, %21
  %sub12.i449 = fsub float %mul8.i, %mul11.i448
  store float %sub12.i449, float* %arrayidx13.i450, align 4, !tbaa !5
  %mul16.i451 = fmul float %25, %23
  %mul19.i = fmul float %20, %24
  %sub20.i = fsub float %mul16.i451, %mul19.i
  store float %sub20.i, float* %arrayidx21.i452, align 4, !tbaa !5
  %26 = load [3 x float]** %group_j, align 8, !tbaa !3
  br label %for.body55

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.end42
  %27 = phi float [ %sub.i447, %for.end42 ], [ %.pre493, %for.body55.for.body55_crit_edge ]
  %indvars.iv484 = phi i64 [ 0, %for.end42 ], [ %indvars.iv.next485, %for.body55.for.body55_crit_edge ]
  %mul58 = fmul float %15, %27
  %arrayidx62 = getelementptr inbounds [3 x float]* %26, i64 %indvars.iv488, i64 %indvars.iv484
  %28 = load float* %arrayidx62, align 4, !tbaa !5
  %sub = fsub float %28, %mul58
  store float %sub, float* %arrayidx62, align 4, !tbaa !5
  %indvars.iv.next485 = add i64 %indvars.iv484, 1
  %lftr.wideiv486 = trunc i64 %indvars.iv.next485 to i32
  %exitcond487 = icmp eq i32 %lftr.wideiv486, 3
  br i1 %exitcond487, label %for.end65, label %for.body55.for.body55_crit_edge

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  %arrayidx57.phi.trans.insert = getelementptr inbounds [3 x float]* %jcm, i64 0, i64 %indvars.iv.next485
  %.pre493 = load float* %arrayidx57.phi.trans.insert, align 4, !tbaa !5
  br label %for.body55

for.end65:                                        ; preds = %for.body55
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #3
  call fastcc void @update_tensor(float* %arraydecay46, float %15, [3 x float]* %arraydecay66) #5
  %29 = load [3 x [3 x float]]** %group_i, align 8, !tbaa !3
  %arrayidx1.i453 = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 0, i64 0
  %30 = load float* %arrayidx1.i453, align 4, !tbaa !5
  %31 = load float* %arrayidx3.i454, align 16, !tbaa !5
  %sub.i455 = fsub float %30, %31
  store float %sub.i455, float* %arrayidx1.i453, align 4, !tbaa !5
  %arrayidx7.i457 = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 0, i64 1
  %32 = load float* %arrayidx7.i457, align 4, !tbaa !5
  %33 = load float* %arrayidx9.i458, align 4, !tbaa !5
  %sub10.i = fsub float %32, %33
  store float %sub10.i, float* %arrayidx7.i457, align 4, !tbaa !5
  %arrayidx14.i459 = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 0, i64 2
  %34 = load float* %arrayidx14.i459, align 4, !tbaa !5
  %35 = load float* %arrayidx16.i, align 8, !tbaa !5
  %sub17.i = fsub float %34, %35
  store float %sub17.i, float* %arrayidx14.i459, align 4, !tbaa !5
  %arrayidx21.i460 = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 1, i64 0
  %36 = load float* %arrayidx21.i460, align 4, !tbaa !5
  %37 = load float* %arrayidx23.i461, align 4, !tbaa !5
  %sub24.i462 = fsub float %36, %37
  store float %sub24.i462, float* %arrayidx21.i460, align 4, !tbaa !5
  %arrayidx28.i463 = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 1, i64 1
  %38 = load float* %arrayidx28.i463, align 4, !tbaa !5
  %39 = load float* %arrayidx30.i, align 4, !tbaa !5
  %sub31.i = fsub float %38, %39
  store float %sub31.i, float* %arrayidx28.i463, align 4, !tbaa !5
  %arrayidx35.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 1, i64 2
  %40 = load float* %arrayidx35.i, align 4, !tbaa !5
  %41 = load float* %arrayidx37.i, align 4, !tbaa !5
  %sub38.i = fsub float %40, %41
  store float %sub38.i, float* %arrayidx35.i, align 4, !tbaa !5
  %arrayidx42.i465 = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 2, i64 0
  %42 = load float* %arrayidx42.i465, align 4, !tbaa !5
  %43 = load float* %arrayidx44.i, align 8, !tbaa !5
  %sub45.i = fsub float %42, %43
  store float %sub45.i, float* %arrayidx42.i465, align 4, !tbaa !5
  %arrayidx49.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 2, i64 1
  %44 = load float* %arrayidx49.i, align 4, !tbaa !5
  %45 = load float* %arrayidx51.i, align 4, !tbaa !5
  %sub52.i = fsub float %44, %45
  store float %sub52.i, float* %arrayidx49.i, align 4, !tbaa !5
  %arrayidx56.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %indvars.iv488, i64 2, i64 2
  %46 = load float* %arrayidx56.i, align 4, !tbaa !5
  %47 = load float* %arrayidx58.i, align 8, !tbaa !5
  %sub59.i = fsub float %46, %47
  store float %sub59.i, float* %arrayidx56.i, align 4, !tbaa !5
  %add.i438 = fadd float %sub31.i, %sub59.i
  %sub.i440 = fsub float -0.000000e+00, %sub10.i
  %sub12.i = fsub float -0.000000e+00, %sub17.i
  %add24.i = fadd float %sub59.i, %sub.i455
  %add46.i = fadd float %sub31.i, %sub.i455
  %mul.i.i.i = fmul float %add24.i, %add46.i
  %mul10.i.i.i = fmul float %sub38.i, %sub38.i
  %sub.i.i.i = fsub float %mul.i.i.i, %mul10.i.i.i
  %mul11.i.i.i = fmul float %add.i438, %sub.i.i.i
  %mul18.i.i.i = fmul float %add46.i, %sub.i440
  %mul23.i.i.i = fmul float %sub17.i, %sub38.i
  %sub24.i.i.i = fsub float %mul18.i.i.i, %mul23.i.i.i
  %mul25.i.i.i = fmul float %sub24.i.i.i, %sub.i440
  %sub26.i.i.i = fsub float %mul11.i.i.i, %mul25.i.i.i
  %mul33.i.i.i = fmul float %sub10.i, %sub38.i
  %mul38.i.i.i = fmul float %add24.i, %sub12.i
  %sub39.i.i.i = fsub float %mul33.i.i.i, %mul38.i.i.i
  %mul40.i.i.i = fmul float %sub39.i.i.i, %sub12.i
  %add.i.i.i = fadd float %mul40.i.i.i, %sub26.i.i.i
  %conv1.i.i = fdiv float 1.000000e+00, %add.i.i.i
  %fabsf.i.i = call float @fabsf(float %conv1.i.i) #6
  %cmp.i.i = fcmp ole float %fabsf.i.i, 0x3C32725DE0000000
  %cmp6.i.i = fcmp oge float %fabsf.i.i, 0x43ABC16D60000000
  %or.cond.i.i = or i1 %cmp.i.i, %cmp6.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %get_minv.exit

if.then.i.i:                                      ; preds = %for.end65
  %conv2.i.i = fpext float %conv1.i.i to double
  %div9.i.i = fdiv double 1.000000e+00, %conv2.i.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str23, i64 0, i64 0), double %div9.i.i) #4
  br label %get_minv.exit

get_minv.exit:                                    ; preds = %for.end65, %if.then.i.i
  %mul18.i.i = fmul float %conv1.i.i, %sub.i.i.i
  store float %mul18.i.i, float* %arrayidx3.i454, align 16, !tbaa !5
  %sub21.i.i = fsub float -0.000000e+00, %conv1.i.i
  %mul33.i.i = fmul float %sub24.i.i.i, %sub21.i.i
  store float %mul33.i.i, float* %arrayidx9.i458, align 4, !tbaa !5
  %mul47.i.i = fmul float %conv1.i.i, %sub39.i.i.i
  store float %mul47.i.i, float* %arrayidx16.i, align 8, !tbaa !5
  store float %mul33.i.i, float* %arrayidx23.i461, align 4, !tbaa !5
  %mul69.i.i = fmul float %add.i438, %add46.i
  %mul74.i.i = fmul float %sub17.i, %sub17.i
  %sub75.i.i = fsub float %mul69.i.i, %mul74.i.i
  %mul76.i.i = fmul float %conv1.i.i, %sub75.i.i
  store float %mul76.i.i, float* %arrayidx30.i, align 4, !tbaa !5
  %48 = fmul float %add.i438, %sub38.i
  %mul84.i.i = fsub float -0.000000e+00, %48
  %mul89.i.i = fmul float %sub10.i, %sub17.i
  %sub90.i.i = fsub float %mul84.i.i, %mul89.i.i
  %mul91.i.i = fmul float %sub90.i.i, %sub21.i.i
  store float %mul91.i.i, float* %arrayidx37.i, align 4, !tbaa !5
  store float %mul47.i.i, float* %arrayidx44.i, align 8, !tbaa !5
  store float %mul91.i.i, float* %arrayidx51.i, align 4, !tbaa !5
  %mul127.i.i = fmul float %add.i438, %add24.i
  %mul132.i.i = fmul float %sub10.i, %sub10.i
  %sub133.i.i = fsub float %mul127.i.i, %mul132.i.i
  %mul134.i.i = fmul float %conv1.i.i, %sub133.i.i
  store float %mul134.i.i, float* %arrayidx58.i, align 8, !tbaa !5
  %49 = load [3 x float]** %group_j, align 8, !tbaa !3
  %arraydecay89 = getelementptr inbounds [3 x float]* %49, i64 %indvars.iv488, i64 0
  %50 = load [3 x float]** %group_w, align 8, !tbaa !3
  %arraydecay92 = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv488, i64 0
  %51 = load float* %arraydecay89, align 4, !tbaa !5
  %mul.i427 = fmul float %mul18.i.i, %51
  %arrayidx5.i429 = getelementptr inbounds [3 x float]* %49, i64 %indvars.iv488, i64 1
  %52 = load float* %arrayidx5.i429, align 4, !tbaa !5
  %mul6.i430 = fmul float %mul33.i.i, %52
  %add.i431 = fadd float %mul.i427, %mul6.i430
  %arrayidx9.i432 = getelementptr inbounds [3 x float]* %49, i64 %indvars.iv488, i64 2
  %53 = load float* %arrayidx9.i432, align 4, !tbaa !5
  %mul10.i433 = fmul float %mul47.i.i, %53
  %add11.i = fadd float %add.i431, %mul10.i433
  store float %add11.i, float* %arraydecay92, align 4, !tbaa !5
  %54 = load float* %arraydecay89, align 4, !tbaa !5
  %mul16.i = fmul float %mul33.i.i, %54
  %55 = load float* %arrayidx5.i429, align 4, !tbaa !5
  %mul20.i = fmul float %mul76.i.i, %55
  %add21.i = fadd float %mul16.i, %mul20.i
  %56 = load float* %arrayidx9.i432, align 4, !tbaa !5
  %mul25.i434 = fmul float %mul91.i.i, %56
  %add26.i = fadd float %add21.i, %mul25.i434
  %arrayidx27.i = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv488, i64 1
  store float %add26.i, float* %arrayidx27.i, align 4, !tbaa !5
  %57 = load float* %arraydecay89, align 4, !tbaa !5
  %mul31.i = fmul float %mul47.i.i, %57
  %58 = load float* %arrayidx5.i429, align 4, !tbaa !5
  %mul35.i = fmul float %mul91.i.i, %58
  %add36.i = fadd float %mul31.i, %mul35.i
  %59 = load float* %arrayidx9.i432, align 4, !tbaa !5
  %mul40.i435 = fmul float %mul134.i.i, %59
  %add41.i = fadd float %add36.i, %mul40.i435
  %arrayidx42.i = getelementptr inbounds [3 x float]* %50, i64 %indvars.iv488, i64 2
  store float %add41.i, float* %arrayidx42.i, align 4, !tbaa !5
  %.pre = load i32* %nr100.phi.trans.insert, align 4, !tbaa !0
  br label %for.inc94

for.inc94:                                        ; preds = %for.body20, %get_minv.exit
  %60 = phi i32 [ %12, %for.body20 ], [ %.pre, %get_minv.exit ]
  %61 = phi i32 [ %13, %for.body20 ], [ %.pre, %get_minv.exit ]
  %indvars.iv.next489 = add i64 %indvars.iv488, 1
  %62 = trunc i64 %indvars.iv.next489 to i32
  %cmp18 = icmp slt i32 %62, %61
  br i1 %cmp18, label %for.body20, label %for.cond99.preheader

for.body103:                                      ; preds = %for.inc285, %for.body103.lr.ph
  %indvars.iv478 = phi i64 [ 0, %for.body103.lr.ph ], [ %indvars.iv.next479, %for.inc285 ]
  %63 = load float** %group_mass105, align 8, !tbaa !3
  %arrayidx106 = getelementptr inbounds float* %63, i64 %indvars.iv478
  %64 = load float* %arrayidx106, align 4, !tbaa !5
  %fabsf = call float @fabsf(float %64) #6
  %65 = fpext float %fabsf to double
  %cmp109 = fcmp ogt double %65, 1.200000e-38
  br i1 %cmp109, label %for.cond112.preheader, label %for.inc285

for.cond112.preheader:                            ; preds = %for.body103
  %66 = load [3 x float]** %group_v118, align 8, !tbaa !3
  br label %for.body115

for.body115:                                      ; preds = %for.body115, %for.cond112.preheader
  %indvars.iv = phi i64 [ 0, %for.cond112.preheader ], [ %indvars.iv.next, %for.body115 ]
  %ekcm.0468 = phi float [ 0.000000e+00, %for.cond112.preheader ], [ %add, %for.body115 ]
  %arrayidx120 = getelementptr inbounds [3 x float]* %66, i64 %indvars.iv478, i64 %indvars.iv
  %67 = load float* %arrayidx120, align 4, !tbaa !5
  %mul.i425 = fmul float %67, %67
  %add = fadd float %ekcm.0468, %mul.i425
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end124, label %for.body115

for.end124:                                       ; preds = %for.body115
  %conv128 = fpext float %64 to double
  %mul129 = fmul double %conv128, 5.000000e-01
  %conv130 = fpext float %add to double
  %mul131 = fmul double %conv130, %mul129
  %conv132 = fptrunc double %mul131 to float
  %68 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %notlhs = fcmp ule float %conv132, 1.000000e+00
  %notrhs = icmp eq %struct._IO_FILE* %68, null
  %or.cond.not = and i1 %notrhs, %notlhs
  %or.cond415 = or i1 %or.cond.not, %tobool136
  br i1 %or.cond415, label %if.end158, label %if.then137

if.then137:                                       ; preds = %for.end124
  %69 = load i8*** %group_name186, align 8, !tbaa !3
  %arrayidx139 = getelementptr inbounds i8** %69, i64 %indvars.iv478
  %70 = load i8** %arrayidx139, align 8, !tbaa !3
  %arrayidx143 = getelementptr inbounds [3 x float]* %66, i64 %indvars.iv478, i64 0
  %71 = load float* %arrayidx143, align 4, !tbaa !5
  %conv144 = fpext float %71 to double
  %arrayidx148 = getelementptr inbounds [3 x float]* %66, i64 %indvars.iv478, i64 1
  %72 = load float* %arrayidx148, align 4, !tbaa !5
  %conv149 = fpext float %72 to double
  %arrayidx153 = getelementptr inbounds [3 x float]* %66, i64 %indvars.iv478, i64 2
  %73 = load float* %arrayidx153, align 4, !tbaa !5
  %conv154 = fpext float %73 to double
  %conv155 = fpext float %conv132 to double
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([62 x i8]* @.str15, i64 0, i64 0), i8* %70, double %conv144, double %conv149, double %conv154, double %conv155) #4
  br label %if.end158

if.end158:                                        ; preds = %for.end124, %if.then137
  %74 = load i32* %mode, align 4, !tbaa !0
  %cmp160 = icmp eq i32 %74, 1
  br i1 %cmp160, label %if.then162, label %for.inc285

if.then162:                                       ; preds = %if.end158
  %75 = load [3 x float]** %group_j164, align 8, !tbaa !3
  %arraydecay166 = getelementptr inbounds [3 x float]* %75, i64 %indvars.iv478, i64 0
  %76 = load [3 x float]** %group_w168, align 8, !tbaa !3
  %arraydecay170 = getelementptr inbounds [3 x float]* %76, i64 %indvars.iv478, i64 0
  %77 = load float* %arraydecay166, align 4, !tbaa !5
  %78 = load float* %arraydecay170, align 4, !tbaa !5
  %mul.i420 = fmul float %77, %78
  %arrayidx2.i421 = getelementptr inbounds [3 x float]* %75, i64 %indvars.iv478, i64 1
  %79 = load float* %arrayidx2.i421, align 4, !tbaa !5
  %arrayidx3.i422 = getelementptr inbounds [3 x float]* %76, i64 %indvars.iv478, i64 1
  %80 = load float* %arrayidx3.i422, align 4, !tbaa !5
  %mul4.i = fmul float %79, %80
  %add.i423 = fadd float %mul.i420, %mul4.i
  %arrayidx5.i424 = getelementptr inbounds [3 x float]* %75, i64 %indvars.iv478, i64 2
  %81 = load float* %arrayidx5.i424, align 4, !tbaa !5
  %arrayidx6.i = getelementptr inbounds [3 x float]* %76, i64 %indvars.iv478, i64 2
  %82 = load float* %arrayidx6.i, align 4, !tbaa !5
  %mul7.i = fmul float %81, %82
  %add8.i = fadd float %add.i423, %mul7.i
  %conv174 = fmul float %add8.i, 5.000000e-01
  %83 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %notlhs466 = fcmp ule float %conv174, 1.000000e+00
  %notrhs467 = icmp eq %struct._IO_FILE* %83, null
  %or.cond288.not = and i1 %notrhs467, %notlhs466
  %or.cond416 = or i1 %or.cond288.not, %tobool136
  br i1 %or.cond416, label %for.inc285, label %if.then181

if.then181:                                       ; preds = %if.then162
  %84 = load float** %group_mass105, align 8, !tbaa !3
  %arrayidx184 = getelementptr inbounds float* %84, i64 %indvars.iv478
  %85 = load float* %arrayidx184, align 4, !tbaa !5
  %86 = load i8*** %group_name186, align 8, !tbaa !3
  %arrayidx187 = getelementptr inbounds i8** %86, i64 %indvars.iv478
  %87 = load i8** %arrayidx187, align 8, !tbaa !3
  %conv188 = fpext float %85 to double
  %conv189 = fpext float %conv174 to double
  %88 = load [3 x [3 x float]]** %group_i191, align 8, !tbaa !3
  %arrayidx1.i = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 0, i64 0
  %89 = load float* %arrayidx1.i, align 4, !tbaa !5
  %arrayidx3.i = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 1, i64 1
  %90 = load float* %arrayidx3.i, align 4, !tbaa !5
  %arrayidx5.i417 = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 2, i64 2
  %91 = load float* %arrayidx5.i417, align 4, !tbaa !5
  %mul.i418 = fmul float %90, %91
  %arrayidx7.i419 = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 2, i64 1
  %92 = load float* %arrayidx7.i419, align 4, !tbaa !5
  %arrayidx9.i = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 1, i64 2
  %93 = load float* %arrayidx9.i, align 4, !tbaa !5
  %mul10.i = fmul float %92, %93
  %sub.i = fsub float %mul.i418, %mul10.i
  %mul11.i = fmul float %89, %sub.i
  %arrayidx13.i = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 1, i64 0
  %94 = load float* %arrayidx13.i, align 4, !tbaa !5
  %arrayidx15.i = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 0, i64 1
  %95 = load float* %arrayidx15.i, align 4, !tbaa !5
  %mul18.i = fmul float %91, %95
  %arrayidx22.i = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 0, i64 2
  %96 = load float* %arrayidx22.i, align 4, !tbaa !5
  %mul23.i = fmul float %92, %96
  %sub24.i = fsub float %mul18.i, %mul23.i
  %mul25.i = fmul float %94, %sub24.i
  %sub26.i = fsub float %mul11.i, %mul25.i
  %arrayidx28.i = getelementptr inbounds [3 x [3 x float]]* %88, i64 %indvars.iv478, i64 2, i64 0
  %97 = load float* %arrayidx28.i, align 4, !tbaa !5
  %mul33.i = fmul float %93, %95
  %mul38.i = fmul float %90, %96
  %sub39.i = fsub float %mul33.i, %mul38.i
  %mul40.i = fmul float %97, %sub39.i
  %add.i = fadd float %mul40.i, %sub26.i
  %conv195 = fpext float %add.i to double
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([57 x i8]* @.str16, i64 0, i64 0), i8* %87, double %conv188, double %conv189, double %conv195) #4
  %98 = load [3 x float]** %group_x198, align 8, !tbaa !3
  %arrayidx200 = getelementptr inbounds [3 x float]* %98, i64 %indvars.iv478, i64 0
  %99 = load float* %arrayidx200, align 4, !tbaa !5
  %conv201 = fpext float %99 to double
  %arrayidx205 = getelementptr inbounds [3 x float]* %98, i64 %indvars.iv478, i64 1
  %100 = load float* %arrayidx205, align 4, !tbaa !5
  %conv206 = fpext float %100 to double
  %arrayidx210 = getelementptr inbounds [3 x float]* %98, i64 %indvars.iv478, i64 2
  %101 = load float* %arrayidx210, align 4, !tbaa !5
  %conv211 = fpext float %101 to double
  %call212 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str17, i64 0, i64 0), double %conv201, double %conv206, double %conv211) #4
  %102 = load [3 x float]** %group_p214, align 8, !tbaa !3
  %arrayidx216 = getelementptr inbounds [3 x float]* %102, i64 %indvars.iv478, i64 0
  %103 = load float* %arrayidx216, align 4, !tbaa !5
  %conv217 = fpext float %103 to double
  %arrayidx221 = getelementptr inbounds [3 x float]* %102, i64 %indvars.iv478, i64 1
  %104 = load float* %arrayidx221, align 4, !tbaa !5
  %conv222 = fpext float %104 to double
  %arrayidx226 = getelementptr inbounds [3 x float]* %102, i64 %indvars.iv478, i64 2
  %105 = load float* %arrayidx226, align 4, !tbaa !5
  %conv227 = fpext float %105 to double
  %call228 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str18, i64 0, i64 0), double %conv217, double %conv222, double %conv227) #4
  %106 = load [3 x float]** %group_v118, align 8, !tbaa !3
  %arrayidx232 = getelementptr inbounds [3 x float]* %106, i64 %indvars.iv478, i64 0
  %107 = load float* %arrayidx232, align 4, !tbaa !5
  %conv233 = fpext float %107 to double
  %arrayidx237 = getelementptr inbounds [3 x float]* %106, i64 %indvars.iv478, i64 1
  %108 = load float* %arrayidx237, align 4, !tbaa !5
  %conv238 = fpext float %108 to double
  %arrayidx242 = getelementptr inbounds [3 x float]* %106, i64 %indvars.iv478, i64 2
  %109 = load float* %arrayidx242, align 4, !tbaa !5
  %conv243 = fpext float %109 to double
  %call244 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str19, i64 0, i64 0), double %conv233, double %conv238, double %conv243) #4
  %110 = load [3 x float]** %group_j164, align 8, !tbaa !3
  %arrayidx248 = getelementptr inbounds [3 x float]* %110, i64 %indvars.iv478, i64 0
  %111 = load float* %arrayidx248, align 4, !tbaa !5
  %conv249 = fpext float %111 to double
  %arrayidx253 = getelementptr inbounds [3 x float]* %110, i64 %indvars.iv478, i64 1
  %112 = load float* %arrayidx253, align 4, !tbaa !5
  %conv254 = fpext float %112 to double
  %arrayidx258 = getelementptr inbounds [3 x float]* %110, i64 %indvars.iv478, i64 2
  %113 = load float* %arrayidx258, align 4, !tbaa !5
  %conv259 = fpext float %113 to double
  %call260 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str20, i64 0, i64 0), double %conv249, double %conv254, double %conv259) #4
  %114 = load [3 x float]** %group_w168, align 8, !tbaa !3
  %arrayidx264 = getelementptr inbounds [3 x float]* %114, i64 %indvars.iv478, i64 0
  %115 = load float* %arrayidx264, align 4, !tbaa !5
  %conv265 = fpext float %115 to double
  %arrayidx269 = getelementptr inbounds [3 x float]* %114, i64 %indvars.iv478, i64 1
  %116 = load float* %arrayidx269, align 4, !tbaa !5
  %conv270 = fpext float %116 to double
  %arrayidx274 = getelementptr inbounds [3 x float]* %114, i64 %indvars.iv478, i64 2
  %117 = load float* %arrayidx274, align 4, !tbaa !5
  %conv275 = fpext float %117 to double
  %call276 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str21, i64 0, i64 0), double %conv265, double %conv270, double %conv275) #4
  %118 = load [3 x [3 x float]]** %group_i191, align 8, !tbaa !3
  %arraydecay280 = getelementptr inbounds [3 x [3 x float]]* %118, i64 %indvars.iv478, i64 0
  call void @pr_rvecs(%struct._IO_FILE* %fp, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), [3 x float]* %arraydecay280, i32 3) #4
  br label %for.inc285

for.inc285:                                       ; preds = %if.then162, %if.end158, %for.body103, %if.then181
  %indvars.iv.next479 = add i64 %indvars.iv478, 1
  %119 = load i32* %nr100, align 4, !tbaa !0
  %120 = trunc i64 %indvars.iv.next479 to i32
  %cmp101 = icmp slt i32 %120, %119
  br i1 %cmp101, label %for.body103, label %for.end287

for.end287:                                       ; preds = %for.cond16.preheader, %for.inc285, %for.cond99.preheader
  call void @llvm.lifetime.end(i64 36, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @pr_rvecs(%struct._IO_FILE*, i32, i8*, [3 x float]*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
