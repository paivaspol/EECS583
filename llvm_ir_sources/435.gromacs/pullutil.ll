; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/pullutil.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_pull = type { %struct.t_pullgrps, %struct.t_pullgrps, %struct.t_pullgrps, i32, i32, [3 x float], [3 x float], float, float, [3 x i32], float, float, i32, float, float, float, i32, i32, i32, %struct._IO_FILE*, float, float, float, i32, i32, i32 }
%struct.t_pullgrps = type { i32, i32**, float**, i32*, i8**, float*, [3 x float]**, [3 x float]**, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]** }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [38 x i8] c"Jumped +box: nr %d dir: %d old:%8.3f\0A\00", align 1
@.str1 = private unnamed_addr constant [38 x i8] c"Jumped -box: nr %d dir: %d old:%8.3f\0A\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"correct_t0: Group %s: mass:%8.3f com:%8.3f%8.3f%8.3f\0A\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"%f%f%f\00", align 1
@.str4 = private unnamed_addr constant [40 x i8] c"Expected three numbers at input line %s\00", align 1
@make_refgrps.bFirst = internal unnamed_addr global i1 false
@.str5 = private unnamed_addr constant [15 x i8] c"pull->dyna.ngx\00", align 1
@.str6 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/pullutil.c\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c"pull->dyna.idx\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"pull->dyna.weights\00", align 1
@.str9 = private unnamed_addr constant [18 x i8] c"pull->dyna.idx[i]\00", align 1
@.str10 = private unnamed_addr constant [22 x i8] c"pull->dyna.weights[i]\00", align 1
@.str11 = private unnamed_addr constant [48 x i8] c"Made group %d:%8.3f%8.3f%8.3f wm:%8.3f m:%8.3f\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @calc_com([3 x float]* nocapture %x, i32 %gnx, i32* nocapture %index, %struct.t_mdatoms* nocapture %md, float* nocapture %com, [3 x float]* nocapture %box) #0 {
entry:
  store float 0.000000e+00, float* %com, align 4, !tbaa !0
  %arrayidx1.i = getelementptr inbounds float* %com, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds float* %com, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !0
  %cmp73 = icmp sgt i32 %gnx, 0
  br i1 %cmp73, label %for.body.lr.ph, label %for.end15

for.body.lr.ph:                                   ; preds = %entry
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %0 = load float** %massT, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.inc13, %for.body.lr.ph
  %indvars.iv78 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next79, %for.inc13 ]
  %tm.075 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add, %for.inc13 ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv78
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds float* %0, i64 %idxprom1
  %2 = load float* %arrayidx2, align 4, !tbaa !0
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %for.body
  %indvars.iv76 = phi i64 [ 0, %for.body ], [ %indvars.iv.next77, %for.body5 ]
  %arrayidx9 = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 %indvars.iv76
  %3 = load float* %arrayidx9, align 4, !tbaa !0
  %mul = fmul float %2, %3
  %arrayidx11 = getelementptr inbounds float* %com, i64 %indvars.iv76
  %4 = load float* %arrayidx11, align 4, !tbaa !0
  %add12 = fadd float %4, %mul
  store float %add12, float* %arrayidx11, align 4, !tbaa !0
  %indvars.iv.next77 = add i64 %indvars.iv76, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next77 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc13, label %for.body5

for.inc13:                                        ; preds = %for.body5
  %add = fadd float %tm.075, %2
  %indvars.iv.next79 = add i64 %indvars.iv78, 1
  %lftr.wideiv80 = trunc i64 %indvars.iv.next79 to i32
  %exitcond81 = icmp eq i32 %lftr.wideiv80, %gnx
  br i1 %exitcond81, label %for.cond.for.end15_crit_edge, label %for.body

for.cond.for.end15_crit_edge:                     ; preds = %for.inc13
  %.pre = load float* %com, align 4, !tbaa !0
  %.pre82 = load float* %arrayidx1.i, align 4, !tbaa !0
  %.pre83 = load float* %arrayidx2.i, align 4, !tbaa !0
  br label %for.end15

for.end15:                                        ; preds = %for.cond.for.end15_crit_edge, %entry
  %5 = phi float [ %.pre83, %for.cond.for.end15_crit_edge ], [ 0.000000e+00, %entry ]
  %6 = phi float [ %.pre82, %for.cond.for.end15_crit_edge ], [ 0.000000e+00, %entry ]
  %7 = phi float [ %.pre, %for.cond.for.end15_crit_edge ], [ 0.000000e+00, %entry ]
  %tm.0.lcssa = phi float [ %add, %for.cond.for.end15_crit_edge ], [ 0.000000e+00, %entry ]
  %div = fdiv float 1.000000e+00, %tm.0.lcssa
  %mul.i = fmul float %div, %7
  store float %mul.i, float* %com, align 4, !tbaa !0
  %mul3.i = fmul float %div, %6
  store float %mul3.i, float* %arrayidx1.i, align 4, !tbaa !0
  %mul6.i = fmul float %div, %5
  store float %mul6.i, float* %arrayidx2.i, align 4, !tbaa !0
  br label %for.body18

for.body18:                                       ; preds = %for.inc36.for.body18_crit_edge, %for.end15
  %8 = phi float [ %mul6.i, %for.end15 ], [ %.pre85, %for.inc36.for.body18_crit_edge ]
  %9 = phi float [ %mul6.i, %for.end15 ], [ %23, %for.inc36.for.body18_crit_edge ]
  %10 = phi float [ %mul3.i, %for.end15 ], [ %24, %for.inc36.for.body18_crit_edge ]
  %11 = phi float [ %mul.i, %for.end15 ], [ %25, %for.inc36.for.body18_crit_edge ]
  %indvars.iv = phi i64 [ 2, %for.end15 ], [ %indvars.iv.next, %for.inc36.for.body18_crit_edge ]
  %cmp21 = fcmp olt float %8, 0.000000e+00
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body18
  %arrayidx20 = getelementptr inbounds float* %com, i64 %indvars.iv
  %arraydecay = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 0
  %12 = load float* %arraydecay, align 4, !tbaa !0
  %add.i = fadd float %11, %12
  %arrayidx3.i66 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %13 = load float* %arrayidx3.i66, align 4, !tbaa !0
  %add4.i = fadd float %10, %13
  %arrayidx6.i68 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %14 = load float* %arrayidx6.i68, align 4, !tbaa !0
  %add7.i = fadd float %9, %14
  store float %add.i, float* %com, align 4, !tbaa !0
  store float %add4.i, float* %arrayidx1.i, align 4, !tbaa !0
  store float %add7.i, float* %arrayidx2.i, align 4, !tbaa !0
  %.pre84 = load float* %arrayidx20, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body18
  %15 = phi float [ %.pre84, %if.then ], [ %8, %for.body18 ]
  %16 = phi float [ %add7.i, %if.then ], [ %9, %for.body18 ]
  %17 = phi float [ %add4.i, %if.then ], [ %10, %for.body18 ]
  %18 = phi float [ %add.i, %if.then ], [ %11, %for.body18 ]
  %arrayidx29 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %19 = load float* %arrayidx29, align 4, !tbaa !0
  %cmp30 = fcmp ogt float %15, %19
  br i1 %cmp30, label %if.then31, label %for.inc36

if.then31:                                        ; preds = %if.end
  %arraydecay34 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 0
  %20 = load float* %arraydecay34, align 4, !tbaa !0
  %sub.i = fsub float %18, %20
  %arrayidx3.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %21 = load float* %arrayidx3.i, align 4, !tbaa !0
  %sub4.i = fsub float %17, %21
  %arrayidx6.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %22 = load float* %arrayidx6.i, align 4, !tbaa !0
  %sub7.i = fsub float %16, %22
  store float %sub.i, float* %com, align 4, !tbaa !0
  store float %sub4.i, float* %arrayidx1.i, align 4, !tbaa !0
  store float %sub7.i, float* %arrayidx2.i, align 4, !tbaa !0
  br label %for.inc36

for.inc36:                                        ; preds = %if.end, %if.then31
  %23 = phi float [ %16, %if.end ], [ %sub7.i, %if.then31 ]
  %24 = phi float [ %17, %if.end ], [ %sub4.i, %if.then31 ]
  %25 = phi float [ %18, %if.end ], [ %sub.i, %if.then31 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %26 = trunc i64 %indvars.iv to i32
  %cmp17 = icmp sgt i32 %26, 0
  br i1 %cmp17, label %for.inc36.for.body18_crit_edge, label %for.end37

for.inc36.for.body18_crit_edge:                   ; preds = %for.inc36
  %arrayidx20.phi.trans.insert = getelementptr inbounds float* %com, i64 %indvars.iv.next
  %.pre85 = load float* %arrayidx20.phi.trans.insert, align 4, !tbaa !0
  br label %for.body18

for.end37:                                        ; preds = %for.inc36
  ret float %tm.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define float @calc_com2([3 x float]* nocapture %x, i32 %gnx, i32* nocapture %index, %struct.t_mdatoms* nocapture %md, float* nocapture %com, [3 x float]* nocapture %box) #0 {
entry:
  store float 0.000000e+00, float* %com, align 4, !tbaa !0
  %arrayidx1.i = getelementptr inbounds float* %com, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds float* %com, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !0
  %cmp73 = icmp sgt i32 %gnx, 0
  br i1 %cmp73, label %for.body.lr.ph, label %for.end15

for.body.lr.ph:                                   ; preds = %entry
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %0 = load float** %massT, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.inc13, %for.body.lr.ph
  %indvars.iv78 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next79, %for.inc13 ]
  %tm.075 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add, %for.inc13 ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv78
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds float* %0, i64 %idxprom1
  %2 = load float* %arrayidx2, align 4, !tbaa !0
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %for.body
  %indvars.iv76 = phi i64 [ 0, %for.body ], [ %indvars.iv.next77, %for.body5 ]
  %arrayidx9 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv78, i64 %indvars.iv76
  %3 = load float* %arrayidx9, align 4, !tbaa !0
  %mul = fmul float %2, %3
  %arrayidx11 = getelementptr inbounds float* %com, i64 %indvars.iv76
  %4 = load float* %arrayidx11, align 4, !tbaa !0
  %add12 = fadd float %4, %mul
  store float %add12, float* %arrayidx11, align 4, !tbaa !0
  %indvars.iv.next77 = add i64 %indvars.iv76, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next77 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc13, label %for.body5

for.inc13:                                        ; preds = %for.body5
  %add = fadd float %tm.075, %2
  %indvars.iv.next79 = add i64 %indvars.iv78, 1
  %lftr.wideiv80 = trunc i64 %indvars.iv.next79 to i32
  %exitcond81 = icmp eq i32 %lftr.wideiv80, %gnx
  br i1 %exitcond81, label %for.cond.for.end15_crit_edge, label %for.body

for.cond.for.end15_crit_edge:                     ; preds = %for.inc13
  %.pre = load float* %com, align 4, !tbaa !0
  %.pre82 = load float* %arrayidx1.i, align 4, !tbaa !0
  %.pre83 = load float* %arrayidx2.i, align 4, !tbaa !0
  br label %for.end15

for.end15:                                        ; preds = %for.cond.for.end15_crit_edge, %entry
  %5 = phi float [ %.pre83, %for.cond.for.end15_crit_edge ], [ 0.000000e+00, %entry ]
  %6 = phi float [ %.pre82, %for.cond.for.end15_crit_edge ], [ 0.000000e+00, %entry ]
  %7 = phi float [ %.pre, %for.cond.for.end15_crit_edge ], [ 0.000000e+00, %entry ]
  %tm.0.lcssa = phi float [ %add, %for.cond.for.end15_crit_edge ], [ 0.000000e+00, %entry ]
  %div = fdiv float 1.000000e+00, %tm.0.lcssa
  %mul.i = fmul float %div, %7
  store float %mul.i, float* %com, align 4, !tbaa !0
  %mul3.i = fmul float %div, %6
  store float %mul3.i, float* %arrayidx1.i, align 4, !tbaa !0
  %mul6.i = fmul float %div, %5
  store float %mul6.i, float* %arrayidx2.i, align 4, !tbaa !0
  br label %for.body18

for.body18:                                       ; preds = %for.inc36.for.body18_crit_edge, %for.end15
  %8 = phi float [ %mul6.i, %for.end15 ], [ %.pre85, %for.inc36.for.body18_crit_edge ]
  %9 = phi float [ %mul6.i, %for.end15 ], [ %23, %for.inc36.for.body18_crit_edge ]
  %10 = phi float [ %mul3.i, %for.end15 ], [ %24, %for.inc36.for.body18_crit_edge ]
  %11 = phi float [ %mul.i, %for.end15 ], [ %25, %for.inc36.for.body18_crit_edge ]
  %indvars.iv = phi i64 [ 2, %for.end15 ], [ %indvars.iv.next, %for.inc36.for.body18_crit_edge ]
  %cmp21 = fcmp olt float %8, 0.000000e+00
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body18
  %arrayidx20 = getelementptr inbounds float* %com, i64 %indvars.iv
  %arraydecay = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 0
  %12 = load float* %arraydecay, align 4, !tbaa !0
  %add.i = fadd float %11, %12
  %arrayidx3.i66 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %13 = load float* %arrayidx3.i66, align 4, !tbaa !0
  %add4.i = fadd float %10, %13
  %arrayidx6.i68 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %14 = load float* %arrayidx6.i68, align 4, !tbaa !0
  %add7.i = fadd float %9, %14
  store float %add.i, float* %com, align 4, !tbaa !0
  store float %add4.i, float* %arrayidx1.i, align 4, !tbaa !0
  store float %add7.i, float* %arrayidx2.i, align 4, !tbaa !0
  %.pre84 = load float* %arrayidx20, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body18
  %15 = phi float [ %.pre84, %if.then ], [ %8, %for.body18 ]
  %16 = phi float [ %add7.i, %if.then ], [ %9, %for.body18 ]
  %17 = phi float [ %add4.i, %if.then ], [ %10, %for.body18 ]
  %18 = phi float [ %add.i, %if.then ], [ %11, %for.body18 ]
  %arrayidx29 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %19 = load float* %arrayidx29, align 4, !tbaa !0
  %cmp30 = fcmp ogt float %15, %19
  br i1 %cmp30, label %if.then31, label %for.inc36

if.then31:                                        ; preds = %if.end
  %arraydecay34 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 0
  %20 = load float* %arraydecay34, align 4, !tbaa !0
  %sub.i = fsub float %18, %20
  %arrayidx3.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %21 = load float* %arrayidx3.i, align 4, !tbaa !0
  %sub4.i = fsub float %17, %21
  %arrayidx6.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %22 = load float* %arrayidx6.i, align 4, !tbaa !0
  %sub7.i = fsub float %16, %22
  store float %sub.i, float* %com, align 4, !tbaa !0
  store float %sub4.i, float* %arrayidx1.i, align 4, !tbaa !0
  store float %sub7.i, float* %arrayidx2.i, align 4, !tbaa !0
  br label %for.inc36

for.inc36:                                        ; preds = %if.end, %if.then31
  %23 = phi float [ %16, %if.end ], [ %sub7.i, %if.then31 ]
  %24 = phi float [ %17, %if.end ], [ %sub4.i, %if.then31 ]
  %25 = phi float [ %18, %if.end ], [ %sub.i, %if.then31 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %26 = trunc i64 %indvars.iv to i32
  %cmp17 = icmp sgt i32 %26, 0
  br i1 %cmp17, label %for.inc36.for.body18_crit_edge, label %for.end37

for.inc36.for.body18_crit_edge:                   ; preds = %for.inc36
  %arrayidx20.phi.trans.insert = getelementptr inbounds float* %com, i64 %indvars.iv.next
  %.pre85 = load float* %arrayidx20.phi.trans.insert, align 4, !tbaa !0
  br label %for.body18

for.end37:                                        ; preds = %for.inc36
  ret float %tm.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @calc_running_com(%struct.t_pull* nocapture %pull) #0 {
entry:
  %bCyl = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 17
  %0 = load i32* %bCyl, align 4, !tbaa !4
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %for.cond57.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %n2 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %1 = load i32* %n2, align 4, !tbaa !4
  %cmp255 = icmp sgt i32 %1, 0
  br i1 %cmp255, label %for.cond3.preheader.lr.ph, label %if.end

for.cond3.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %reflag = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 24
  %2 = load i32* %reflag, align 4, !tbaa !4
  %sub247 = add nsw i32 %2, -1
  %cmp4248 = icmp sgt i32 %sub247, 0
  %x_unc = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  %3 = load [3 x float]** %x_unc, align 8, !tbaa !3
  %comhist32 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 17
  %4 = load [3 x float]*** %comhist32, align 8, !tbaa !3
  br label %for.cond3.preheader

for.cond57.preheader:                             ; preds = %entry
  %reflag58 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 24
  %5 = load i32* %reflag58, align 4, !tbaa !4
  %sub59237 = add nsw i32 %5, -1
  %cmp60238 = icmp sgt i32 %sub59237, 0
  %comhist65 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 17
  %6 = load [3 x float]*** %comhist65, align 8, !tbaa !3
  %7 = load [3 x float]** %6, align 8, !tbaa !3
  br i1 %cmp60238, label %for.body62.lr.ph, label %for.end85

for.body62.lr.ph:                                 ; preds = %for.cond57.preheader
  %8 = icmp sgt i32 %sub59237, 1
  br label %for.body62

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.end
  %indvars.iv261 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next262, %for.end ]
  %arrayidx = getelementptr inbounds [3 x float]** %4, i64 %indvars.iv261
  br i1 %cmp4248, label %for.body5.lr.ph, label %for.end

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader
  %9 = load [3 x float]** %arrayidx, align 8, !tbaa !3
  %10 = icmp sgt i32 %sub247, 1
  br label %for.body5

for.body5:                                        ; preds = %for.body5.lr.ph, %for.body5
  %indvars.iv258 = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next259, %for.body5 ]
  %11 = phi float [ 0.000000e+00, %for.body5.lr.ph ], [ %add.i201, %for.body5 ]
  %12 = phi float [ 0.000000e+00, %for.body5.lr.ph ], [ %add4.i204, %for.body5 ]
  %13 = phi float [ 0.000000e+00, %for.body5.lr.ph ], [ %add7.i207, %for.body5 ]
  %indvars.iv.next259 = add i64 %indvars.iv258, 1
  %arraydecay8 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv.next259, i64 0
  %arraydecay15 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv258, i64 0
  %14 = load float* %arraydecay8, align 4, !tbaa !0
  store float %14, float* %arraydecay15, align 4, !tbaa !0
  %arrayidx2.i210 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv.next259, i64 1
  %15 = load float* %arrayidx2.i210, align 4, !tbaa !0
  %arrayidx3.i211 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv258, i64 1
  store float %15, float* %arrayidx3.i211, align 4, !tbaa !0
  %arrayidx4.i212 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv.next259, i64 2
  %16 = load float* %arrayidx4.i212, align 4, !tbaa !0
  %arrayidx5.i213 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv258, i64 2
  store float %16, float* %arrayidx5.i213, align 4, !tbaa !0
  %add.i201 = fadd float %11, %14
  %add4.i204 = fadd float %12, %15
  %add7.i207 = fadd float %13, %16
  %17 = trunc i64 %indvars.iv.next259 to i32
  %cmp4 = icmp slt i32 %17, %sub247
  br i1 %cmp4, label %for.body5, label %for.cond3.for.end_crit_edge

for.cond3.for.end_crit_edge:                      ; preds = %for.body5
  %18 = sext i32 %sub247 to i64
  %phitmp = select i1 %10, i64 %18, i64 1
  br label %for.end

for.end:                                          ; preds = %for.cond3.preheader, %for.cond3.for.end_crit_edge
  %j.0.lcssa = phi i64 [ %phitmp, %for.cond3.for.end_crit_edge ], [ 0, %for.cond3.preheader ]
  %.lcssa246 = phi float [ %add.i201, %for.cond3.for.end_crit_edge ], [ 0.000000e+00, %for.cond3.preheader ]
  %.lcssa245 = phi float [ %add4.i204, %for.cond3.for.end_crit_edge ], [ 0.000000e+00, %for.cond3.preheader ]
  %.lcssa244 = phi float [ %add7.i207, %for.cond3.for.end_crit_edge ], [ 0.000000e+00, %for.cond3.preheader ]
  %arraydecay28 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv261, i64 0
  %19 = load [3 x float]** %arrayidx, align 8, !tbaa !3
  %arraydecay35 = getelementptr inbounds [3 x float]* %19, i64 %j.0.lcssa, i64 0
  %20 = load float* %arraydecay28, align 4, !tbaa !0
  store float %20, float* %arraydecay35, align 4, !tbaa !0
  %arrayidx2.i197 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv261, i64 1
  %21 = load float* %arrayidx2.i197, align 4, !tbaa !0
  %arrayidx3.i198 = getelementptr inbounds [3 x float]* %19, i64 %j.0.lcssa, i64 1
  store float %21, float* %arrayidx3.i198, align 4, !tbaa !0
  %arrayidx4.i199 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv261, i64 2
  %22 = load float* %arrayidx4.i199, align 4, !tbaa !0
  %arrayidx5.i200 = getelementptr inbounds [3 x float]* %19, i64 %j.0.lcssa, i64 2
  store float %22, float* %arrayidx5.i200, align 4, !tbaa !0
  %23 = load float* %arraydecay28, align 4, !tbaa !0
  %add.i188 = fadd float %.lcssa246, %23
  %24 = load float* %arrayidx2.i197, align 4, !tbaa !0
  %add4.i191 = fadd float %.lcssa245, %24
  %25 = load float* %arrayidx4.i199, align 4, !tbaa !0
  %add7.i194 = fadd float %.lcssa244, %25
  %conv = sitofp i32 %2 to double
  %div = fdiv double 1.000000e+00, %conv
  %conv44 = fptrunc double %div to float
  %mul.i181 = fmul float %add.i188, %conv44
  %mul3.i183 = fmul float %add4.i191, %conv44
  %mul6.i186 = fmul float %add7.i194, %conv44
  store float %mul.i181, float* %arraydecay28, align 4, !tbaa !0
  store float %mul3.i183, float* %arrayidx2.i197, align 4, !tbaa !0
  store float %mul6.i186, float* %arrayidx4.i199, align 4, !tbaa !0
  %indvars.iv.next262 = add i64 %indvars.iv261, 1
  %26 = trunc i64 %indvars.iv.next262 to i32
  %cmp = icmp slt i32 %26, %1
  br i1 %cmp, label %for.cond3.preheader, label %if.end

for.body62:                                       ; preds = %for.body62.lr.ph, %for.body62
  %indvars.iv = phi i64 [ 0, %for.body62.lr.ph ], [ %indvars.iv.next, %for.body62 ]
  %27 = phi float [ 0.000000e+00, %for.body62.lr.ph ], [ %add.i162, %for.body62 ]
  %28 = phi float [ 0.000000e+00, %for.body62.lr.ph ], [ %add4.i165, %for.body62 ]
  %29 = phi float [ 0.000000e+00, %for.body62.lr.ph ], [ %add7.i168, %for.body62 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arraydecay68 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv.next, i64 0
  %arraydecay74 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv, i64 0
  %30 = load float* %arraydecay68, align 4, !tbaa !0
  store float %30, float* %arraydecay74, align 4, !tbaa !0
  %arrayidx2.i171 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv.next, i64 1
  %31 = load float* %arrayidx2.i171, align 4, !tbaa !0
  %arrayidx3.i172 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv, i64 1
  store float %31, float* %arrayidx3.i172, align 4, !tbaa !0
  %arrayidx4.i173 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv.next, i64 2
  %32 = load float* %arrayidx4.i173, align 4, !tbaa !0
  %arrayidx5.i174 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv, i64 2
  store float %32, float* %arrayidx5.i174, align 4, !tbaa !0
  %add.i162 = fadd float %27, %30
  %add4.i165 = fadd float %28, %31
  %add7.i168 = fadd float %29, %32
  %33 = trunc i64 %indvars.iv.next to i32
  %cmp60 = icmp slt i32 %33, %sub59237
  br i1 %cmp60, label %for.body62, label %for.cond57.for.end85_crit_edge

for.cond57.for.end85_crit_edge:                   ; preds = %for.body62
  %34 = sext i32 %sub59237 to i64
  %phitmp257 = select i1 %8, i64 %34, i64 1
  br label %for.end85

for.end85:                                        ; preds = %for.cond57.preheader, %for.cond57.for.end85_crit_edge
  %j.1.lcssa = phi i64 [ %phitmp257, %for.cond57.for.end85_crit_edge ], [ 0, %for.cond57.preheader ]
  %.lcssa236 = phi float [ %add.i162, %for.cond57.for.end85_crit_edge ], [ 0.000000e+00, %for.cond57.preheader ]
  %.lcssa235 = phi float [ %add4.i165, %for.cond57.for.end85_crit_edge ], [ 0.000000e+00, %for.cond57.preheader ]
  %.lcssa = phi float [ %add7.i168, %for.cond57.for.end85_crit_edge ], [ 0.000000e+00, %for.cond57.preheader ]
  %x_unc87 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %35 = load [3 x float]** %x_unc87, align 8, !tbaa !3
  %arraydecay89 = getelementptr inbounds [3 x float]* %35, i64 0, i64 0
  %arraydecay95 = getelementptr inbounds [3 x float]* %7, i64 %j.1.lcssa, i64 0
  %36 = load float* %arraydecay89, align 4, !tbaa !0
  store float %36, float* %arraydecay95, align 4, !tbaa !0
  %arrayidx2.i158 = getelementptr inbounds [3 x float]* %35, i64 0, i64 1
  %37 = load float* %arrayidx2.i158, align 4, !tbaa !0
  %arrayidx3.i159 = getelementptr inbounds [3 x float]* %7, i64 %j.1.lcssa, i64 1
  store float %37, float* %arrayidx3.i159, align 4, !tbaa !0
  %arrayidx4.i160 = getelementptr inbounds [3 x float]* %35, i64 0, i64 2
  %38 = load float* %arrayidx4.i160, align 4, !tbaa !0
  %arrayidx5.i161 = getelementptr inbounds [3 x float]* %7, i64 %j.1.lcssa, i64 2
  store float %38, float* %arrayidx5.i161, align 4, !tbaa !0
  %39 = load float* %arraydecay89, align 4, !tbaa !0
  %add.i = fadd float %.lcssa236, %39
  %40 = load float* %arrayidx2.i158, align 4, !tbaa !0
  %add4.i = fadd float %.lcssa235, %40
  %41 = load float* %arrayidx4.i160, align 4, !tbaa !0
  %add7.i = fadd float %.lcssa, %41
  %conv103 = sitofp i32 %5 to double
  %div104 = fdiv double 1.000000e+00, %conv103
  %conv105 = fptrunc double %div104 to float
  %mul.i = fmul float %add.i, %conv105
  %mul3.i = fmul float %add4.i, %conv105
  %mul6.i = fmul float %add7.i, %conv105
  store float %mul.i, float* %arraydecay89, align 4, !tbaa !0
  store float %mul3.i, float* %arrayidx2.i158, align 4, !tbaa !0
  store float %mul6.i, float* %arrayidx4.i160, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %for.end, %for.end85
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @correct_t0_pbc(%struct.t_pull* nocapture %pull, [3 x float]* nocapture %x, %struct.t_mdatoms* nocapture %md, [3 x float]* nocapture %box) #0 {
entry:
  %com = alloca [3 x float], align 4
  %dx = alloca [3 x float], align 4
  %ngx = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %0 = load i32** %ngx, align 8, !tbaa !3
  %1 = load i32* %0, align 4, !tbaa !4
  %cmp190 = icmp sgt i32 %1, 0
  br i1 %cmp190, label %for.body.lr.ph, label %entry.for.end102_crit_edge

entry.for.end102_crit_edge:                       ; preds = %entry
  %x0104.phi.trans.insert = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %.pre197 = load [3 x float]*** %x0104.phi.trans.insert, align 8, !tbaa !3
  %.pre198 = load [3 x float]** %.pre197, align 8, !tbaa !3
  %idx110.pre = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %bVerbose114.pre = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  br label %for.end102

for.body.lr.ph:                                   ; preds = %entry
  %idx = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %xp = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 7
  %arraydecay11 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %arrayidx9.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %arrayidx10.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %bVerbose = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %x0 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %.pre = load [3 x float]*** %xp, align 8, !tbaa !3
  %.pre195 = load [3 x float]** %.pre, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.inc101, %for.body.lr.ph
  %2 = phi [3 x float]* [ %.pre195, %for.body.lr.ph ], [ %53, %for.inc101 ]
  %indvars.iv193 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next194, %for.inc101 ]
  %3 = load i32*** %idx, align 8, !tbaa !3
  %4 = load i32** %3, align 8, !tbaa !3
  %arrayidx3 = getelementptr inbounds i32* %4, i64 %indvars.iv193
  %5 = load i32* %arrayidx3, align 4, !tbaa !4
  %idxprom4 = sext i32 %5 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom4, i64 0
  %arraydecay10 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv193, i64 0
  %6 = load float* %arraydecay, align 4, !tbaa !0
  %7 = load float* %arraydecay10, align 4, !tbaa !0
  %sub.i = fsub float %6, %7
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom4, i64 1
  %8 = load float* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv193, i64 1
  %9 = load float* %arrayidx3.i, align 4, !tbaa !0
  %sub4.i = fsub float %8, %9
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom4, i64 2
  %10 = load float* %arrayidx5.i, align 4, !tbaa !0
  %arrayidx6.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv193, i64 2
  %11 = load float* %arrayidx6.i, align 4, !tbaa !0
  %sub7.i = fsub float %10, %11
  store float %sub.i, float* %arraydecay11, align 4, !tbaa !0
  store float %sub4.i, float* %arrayidx9.i, align 4, !tbaa !0
  store float %sub7.i, float* %arrayidx10.i, align 4, !tbaa !0
  br label %for.body14

for.body14:                                       ; preds = %if.end80.for.body14_crit_edge, %for.body
  %12 = phi float [ %sub7.i, %for.body ], [ %.pre199, %if.end80.for.body14_crit_edge ]
  %13 = phi float [ %sub7.i, %for.body ], [ %44, %if.end80.for.body14_crit_edge ]
  %14 = phi float [ %sub4.i, %for.body ], [ %45, %if.end80.for.body14_crit_edge ]
  %15 = phi float [ %sub.i, %for.body ], [ %46, %if.end80.for.body14_crit_edge ]
  %indvars.iv = phi i64 [ 2, %for.body ], [ %indvars.iv.next, %if.end80.for.body14_crit_edge ]
  %arrayidx16 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv
  %conv = fpext float %12 to double
  %arrayidx19 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv
  %arrayidx20 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %16 = load float* %arrayidx20, align 4, !tbaa !0
  %conv21 = fpext float %16 to double
  %mul = fmul double %conv21, -5.000000e-01
  %cmp22 = fcmp olt double %conv, %mul
  br i1 %cmp22, label %if.then, label %if.end42

if.then:                                          ; preds = %for.body14
  %arraydecay27 = getelementptr inbounds [3 x float]* %arrayidx19, i64 0, i64 0
  %17 = load float* %arraydecay27, align 4, !tbaa !0
  %add.i = fadd float %15, %17
  %arrayidx3.i179 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %18 = load float* %arrayidx3.i179, align 4, !tbaa !0
  %add4.i = fadd float %14, %18
  %arrayidx6.i181 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %19 = load float* %arrayidx6.i181, align 4, !tbaa !0
  %add7.i = fadd float %13, %19
  store float %add.i, float* %arraydecay11, align 4, !tbaa !0
  store float %add4.i, float* %arrayidx9.i, align 4, !tbaa !0
  store float %add7.i, float* %arrayidx10.i, align 4, !tbaa !0
  %20 = load i32* %bVerbose, align 4, !tbaa !4
  %tobool = icmp eq i32 %20, 0
  br i1 %tobool, label %if.end42, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %arrayidx29 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv
  %21 = load float* %arrayidx29, align 4, !tbaa !0
  %fabsf177 = call float @fabsf(float %21) #4
  %22 = fpext float %fabsf177 to double
  %cmp31 = fcmp ogt double %22, 1.200000e-38
  br i1 %cmp31, label %if.then33, label %if.end42

if.then33:                                        ; preds = %land.lhs.true
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %24 = load [3 x float]*** %x0, align 8, !tbaa !3
  %25 = load [3 x float]** %24, align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds [3 x float]* %25, i64 %indvars.iv193, i64 %indvars.iv
  %26 = load float* %arrayidx39, align 4, !tbaa !0
  %conv40 = fpext float %26 to double
  %27 = trunc i64 %indvars.iv to i32
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([38 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %27, double %conv40) #5
  %.pre196 = load float* %arrayidx20, align 4, !tbaa !0
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true, %if.then, %if.then33, %for.body14
  %28 = phi float [ %.pre196, %if.then33 ], [ %16, %for.body14 ], [ %16, %if.then ], [ %16, %land.lhs.true ]
  %29 = phi float [ %add7.i, %if.then33 ], [ %13, %for.body14 ], [ %add7.i, %if.then ], [ %add7.i, %land.lhs.true ]
  %30 = phi float [ %add4.i, %if.then33 ], [ %14, %for.body14 ], [ %add4.i, %if.then ], [ %add4.i, %land.lhs.true ]
  %31 = phi float [ %add.i, %if.then33 ], [ %15, %for.body14 ], [ %add.i, %if.then ], [ %add.i, %land.lhs.true ]
  %32 = load float* %arrayidx16, align 4, !tbaa !0
  %conv45 = fpext float %32 to double
  %conv50 = fpext float %28 to double
  %mul51 = fmul double %conv50, 5.000000e-01
  %cmp52 = fcmp ogt double %conv45, %mul51
  br i1 %cmp52, label %if.then54, label %if.end80

if.then54:                                        ; preds = %if.end42
  %arraydecay58 = getelementptr inbounds [3 x float]* %arrayidx19, i64 0, i64 0
  %33 = load float* %arraydecay58, align 4, !tbaa !0
  %sub.i182 = fsub float %31, %33
  %arrayidx3.i184 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %34 = load float* %arrayidx3.i184, align 4, !tbaa !0
  %sub4.i185 = fsub float %30, %34
  %arrayidx6.i187 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %35 = load float* %arrayidx6.i187, align 4, !tbaa !0
  %sub7.i188 = fsub float %29, %35
  store float %sub.i182, float* %arraydecay11, align 4, !tbaa !0
  store float %sub4.i185, float* %arrayidx9.i, align 4, !tbaa !0
  store float %sub7.i188, float* %arrayidx10.i, align 4, !tbaa !0
  %36 = load i32* %bVerbose, align 4, !tbaa !4
  %tobool60 = icmp eq i32 %36, 0
  br i1 %tobool60, label %if.end80, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %if.then54
  %arrayidx64 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv
  %37 = load float* %arrayidx64, align 4, !tbaa !0
  %fabsf = call float @fabsf(float %37) #4
  %38 = fpext float %fabsf to double
  %cmp67 = fcmp ogt double %38, 1.200000e-38
  br i1 %cmp67, label %if.then69, label %if.end80

if.then69:                                        ; preds = %land.lhs.true61
  %39 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %40 = load [3 x float]*** %x0, align 8, !tbaa !3
  %41 = load [3 x float]** %40, align 8, !tbaa !3
  %arrayidx76 = getelementptr inbounds [3 x float]* %41, i64 %indvars.iv193, i64 %indvars.iv
  %42 = load float* %arrayidx76, align 4, !tbaa !0
  %conv77 = fpext float %42 to double
  %43 = trunc i64 %indvars.iv to i32
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0), i32 %5, i32 %43, double %conv77) #5
  br label %if.end80

if.end80:                                         ; preds = %land.lhs.true61, %if.then54, %if.end42, %if.then69
  %44 = phi float [ %sub7.i188, %if.then69 ], [ %29, %if.end42 ], [ %sub7.i188, %if.then54 ], [ %sub7.i188, %land.lhs.true61 ]
  %45 = phi float [ %sub4.i185, %if.then69 ], [ %30, %if.end42 ], [ %sub4.i185, %if.then54 ], [ %sub4.i185, %land.lhs.true61 ]
  %46 = phi float [ %sub.i182, %if.then69 ], [ %31, %if.end42 ], [ %sub.i182, %if.then54 ], [ %sub.i182, %land.lhs.true61 ]
  %47 = load float* %arrayidx16, align 4, !tbaa !0
  %48 = load [3 x float]*** %x0, align 8, !tbaa !3
  %49 = load [3 x float]** %48, align 8, !tbaa !3
  %arrayidx89 = getelementptr inbounds [3 x float]* %49, i64 %indvars.iv193, i64 %indvars.iv
  %50 = load float* %arrayidx89, align 4, !tbaa !0
  %add = fadd float %47, %50
  store float %add, float* %arrayidx89, align 4, !tbaa !0
  %arrayidx93 = getelementptr inbounds [3 x float]* %x, i64 %idxprom4, i64 %indvars.iv
  %51 = load float* %arrayidx93, align 4, !tbaa !0
  %52 = load [3 x float]*** %xp, align 8, !tbaa !3
  %53 = load [3 x float]** %52, align 8, !tbaa !3
  %arrayidx100 = getelementptr inbounds [3 x float]* %53, i64 %indvars.iv193, i64 %indvars.iv
  store float %51, float* %arrayidx100, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, -1
  %54 = trunc i64 %indvars.iv to i32
  %cmp13 = icmp sgt i32 %54, 0
  br i1 %cmp13, label %if.end80.for.body14_crit_edge, label %for.inc101

if.end80.for.body14_crit_edge:                    ; preds = %if.end80
  %arrayidx16.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next
  %.pre199 = load float* %arrayidx16.phi.trans.insert, align 4, !tbaa !0
  br label %for.body14

for.inc101:                                       ; preds = %if.end80
  %indvars.iv.next194 = add i64 %indvars.iv193, 1
  %55 = load i32** %ngx, align 8, !tbaa !3
  %56 = load i32* %55, align 4, !tbaa !4
  %57 = trunc i64 %indvars.iv.next194 to i32
  %cmp = icmp slt i32 %57, %56
  br i1 %cmp, label %for.body, label %for.end102

for.end102:                                       ; preds = %for.inc101, %entry.for.end102_crit_edge
  %bVerbose114.pre-phi = phi i32* [ %bVerbose114.pre, %entry.for.end102_crit_edge ], [ %bVerbose, %for.inc101 ]
  %idx110.pre-phi = phi i32*** [ %idx110.pre, %entry.for.end102_crit_edge ], [ %idx, %for.inc101 ]
  %58 = phi [3 x float]* [ %.pre198, %entry.for.end102_crit_edge ], [ %49, %for.inc101 ]
  %.lcssa = phi i32 [ %1, %entry.for.end102_crit_edge ], [ %56, %for.inc101 ]
  %59 = load i32*** %idx110.pre-phi, align 8, !tbaa !3
  %60 = load i32** %59, align 8, !tbaa !3
  %arraydecay112 = getelementptr inbounds [3 x float]* %com, i64 0, i64 0
  %call113 = call float @calc_com2([3 x float]* %58, i32 %.lcssa, i32* %60, %struct.t_mdatoms* %md, float* %arraydecay112, [3 x float]* %box) #6
  %61 = load i32* %bVerbose114.pre-phi, align 4, !tbaa !4
  %tobool115 = icmp eq i32 %61, 0
  br i1 %tobool115, label %if.end127, label %if.then116

if.then116:                                       ; preds = %for.end102
  %62 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %grps = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 4
  %63 = load i8*** %grps, align 8, !tbaa !3
  %64 = load i8** %63, align 8, !tbaa !3
  %conv119 = fpext float %call113 to double
  %65 = load float* %arraydecay112, align 4, !tbaa !0
  %conv121 = fpext float %65 to double
  %arrayidx122 = getelementptr inbounds [3 x float]* %com, i64 0, i64 1
  %66 = load float* %arrayidx122, align 4, !tbaa !0
  %conv123 = fpext float %66 to double
  %arrayidx124 = getelementptr inbounds [3 x float]* %com, i64 0, i64 2
  %67 = load float* %arrayidx124, align 4, !tbaa !0
  %conv125 = fpext float %67 to double
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i8* %64, double %conv119, double %conv121, double %conv123, double %conv125) #5
  br label %if.end127

if.end127:                                        ; preds = %for.end102, %if.then116
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @string2rvec(i8* %buf, float* nocapture %nums) #0 {
entry:
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca float, align 4
  %call = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %buf, i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), float* %a, float* %b, float* %c) #5
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([40 x i8]* @.str4, i64 0, i64 0), i8* %buf) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %0 = load float* %a, align 4, !tbaa !0
  store float %0, float* %nums, align 4, !tbaa !0
  %1 = load float* %b, align 4, !tbaa !0
  %arrayidx1 = getelementptr inbounds float* %nums, i64 1
  store float %1, float* %arrayidx1, align 4, !tbaa !0
  %2 = load float* %c, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds float* %nums, i64 2
  store float %2, float* %arrayidx2, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize readnone uwtable
define float @get_weight(float %x, float %r, float %w) #3 {
entry:
  %cmp = fcmp olt float %x, %r
  br i1 %cmp, label %if.end7, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = fcmp ogt float %x, %w
  br i1 %cmp1, label %if.end7, label %if.else3

if.else3:                                         ; preds = %if.else
  %sub = fsub float -0.000000e+00, %w
  %sub4 = fsub float %r, %w
  %div = fdiv float %sub, %sub4
  %div6 = fdiv float %x, %sub4
  %add = fadd float %div, %div6
  br label %if.end7

if.end7:                                          ; preds = %if.else, %entry, %if.else3
  %weight.0 = phi float [ %add, %if.else3 ], [ 1.000000e+00, %entry ], [ 0.000000e+00, %if.else ]
  ret float %weight.0
}

; Function Attrs: nounwind optsize uwtable
define void @make_refgrps(%struct.t_pull* nocapture %pull, [3 x float]* nocapture %box, %struct.t_mdatoms* nocapture %md) #0 {
entry:
  %n = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %0 = load i32* %n, align 4, !tbaa !4
  %.b = load i1* @make_refgrps.bFirst, align 1
  br i1 %.b, label %for.cond19.preheader, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 267, i32 %0, i32 4) #5
  %1 = bitcast i8* %call to i32*
  %ngx = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 3
  store i32* %1, i32** %ngx, align 8, !tbaa !3
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 268, i32 %0, i32 8) #5
  %2 = bitcast i8* %call2 to i32**
  %idx = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 1
  store i32** %2, i32*** %idx, align 8, !tbaa !3
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 269, i32 %0, i32 8) #5
  %3 = bitcast i8* %call4 to float**
  %weights = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 2
  store float** %3, float*** %weights, align 8, !tbaa !3
  %cmp246 = icmp sgt i32 %0, 0
  br i1 %cmp246, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %ngx6 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv254 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next255, %for.body ]
  %4 = load i32** %ngx6, align 8, !tbaa !3
  %5 = load i32* %4, align 4, !tbaa !4
  %call7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([18 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 271, i32 %5, i32 4) #5
  %6 = bitcast i8* %call7 to i32*
  %7 = load i32*** %idx, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds i32** %7, i64 %indvars.iv254
  store i32* %6, i32** %arrayidx10, align 8, !tbaa !3
  %8 = load i32** %ngx6, align 8, !tbaa !3
  %9 = load i32* %8, align 4, !tbaa !4
  %call14 = tail call i8* @save_calloc(i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 272, i32 %9, i32 4) #5
  %10 = bitcast i8* %call14 to float*
  %11 = load float*** %weights, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds float** %11, i64 %indvars.iv254
  store float* %10, float** %arrayidx18, align 8, !tbaa !3
  %indvars.iv.next255 = add i64 %indvars.iv254, 1
  %lftr.wideiv256 = trunc i64 %indvars.iv.next255 to i32
  %exitcond257 = icmp eq i32 %lftr.wideiv256, %0
  br i1 %exitcond257, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.then
  store i1 true, i1* @make_refgrps.bFirst, align 1
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %entry, %for.end
  %cmp20244 = icmp sgt i32 %0, 0
  br i1 %cmp20244, label %for.body21.lr.ph, label %for.end159

for.body21.lr.ph:                                 ; preds = %for.cond19.preheader
  %tmass = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 5
  %ngx27 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 3
  %ngx31 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %x_unc122 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  %bVerbose = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %idx37 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %x0 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %x_unc = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %arrayidx1.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %rc = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 8
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %r = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 7
  %weights63 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 2
  %idx69 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 1
  br label %for.body21

for.body21:                                       ; preds = %for.inc157, %for.body21.lr.ph
  %indvars.iv250 = phi i64 [ 0, %for.body21.lr.ph ], [ %indvars.iv.next251, %for.inc157 ]
  %12 = load float** %tmass, align 8, !tbaa !3
  %arrayidx24 = getelementptr inbounds float* %12, i64 %indvars.iv250
  store float 0.000000e+00, float* %arrayidx24, align 4, !tbaa !0
  %13 = load i32** %ngx27, align 8, !tbaa !3
  %arrayidx28 = getelementptr inbounds i32* %13, i64 %indvars.iv250
  store i32 0, i32* %arrayidx28, align 4, !tbaa !4
  %14 = load i32** %ngx31, align 8, !tbaa !3
  %15 = load i32* %14, align 4, !tbaa !4
  %cmp33240 = icmp sgt i32 %15, 0
  br i1 %cmp33240, label %for.body34, label %for.end115

for.body34:                                       ; preds = %for.inc113, %for.body21
  %indvars.iv248 = phi i64 [ 0, %for.body21 ], [ %indvars.iv.next249, %for.inc113 ]
  %truemass.0243 = phi float [ 0.000000e+00, %for.body21 ], [ %truemass.1, %for.inc113 ]
  %k.0241 = phi i32 [ 0, %for.body21 ], [ %k.1, %for.inc113 ]
  %16 = load i32*** %idx37, align 8, !tbaa !3
  %17 = load i32** %16, align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds i32* %17, i64 %indvars.iv248
  %18 = load i32* %arrayidx39, align 4, !tbaa !4
  %19 = load [3 x float]*** %x0, align 8, !tbaa !3
  %20 = load [3 x float]** %19, align 8, !tbaa !3
  %arraydecay = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv248, i64 0
  %21 = load [3 x float]** %x_unc, align 8, !tbaa !3
  %arraydecay47 = getelementptr inbounds [3 x float]* %21, i64 %indvars.iv250, i64 0
  %22 = load float* %arrayidx1.i, align 4, !tbaa !0
  %23 = load float* %arrayidx3.i, align 4, !tbaa !0
  %24 = load float* %arraydecay, align 4, !tbaa !0
  %25 = load float* %arraydecay47, align 4, !tbaa !0
  %sub.i = fsub float %24, %25
  %fabsf.i = tail call float @fabsf(float %sub.i) #4
  %conv746.i = fpext float %fabsf.i to double
  %conv8.i = fpext float %22 to double
  %mul.i = fmul double %conv8.i, 5.000000e-01
  %cmp47.i = fcmp ogt double %conv746.i, %mul.i
  br i1 %cmp47.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %for.body34, %while.body.i
  %dx.048.i = phi float [ %sub10.i, %while.body.i ], [ %fabsf.i, %for.body34 ]
  %sub10.i = fsub float %dx.048.i, %22
  %conv7.i = fpext float %sub10.i to double
  %cmp.i = fcmp ogt double %conv7.i, %mul.i
  br i1 %cmp.i, label %while.body.i, label %while.end.i

while.end.i:                                      ; preds = %while.body.i, %for.body34
  %dx.0.lcssa.i = phi float [ %fabsf.i, %for.body34 ], [ %sub10.i, %while.body.i ]
  %arrayidx11.i = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv248, i64 1
  %26 = load float* %arrayidx11.i, align 4, !tbaa !0
  %arrayidx12.i = getelementptr inbounds [3 x float]* %21, i64 %indvars.iv250, i64 1
  %27 = load float* %arrayidx12.i, align 4, !tbaa !0
  %sub13.i = fsub float %26, %27
  %fabsf42.i = tail call float @fabsf(float %sub13.i) #4
  %conv1843.i = fpext float %fabsf42.i to double
  %conv19.i = fpext float %23 to double
  %mul20.i = fmul double %conv19.i, 5.000000e-01
  %cmp2144.i = fcmp ogt double %conv1843.i, %mul20.i
  br i1 %cmp2144.i, label %while.body23.i, label %get_cylinder_distance.exit

while.body23.i:                                   ; preds = %while.end.i, %while.body23.i
  %dy.045.i = phi float [ %sub24.i, %while.body23.i ], [ %fabsf42.i, %while.end.i ]
  %sub24.i = fsub float %dy.045.i, %23
  %conv18.i = fpext float %sub24.i to double
  %cmp21.i = fcmp ogt double %conv18.i, %mul20.i
  br i1 %cmp21.i, label %while.body23.i, label %get_cylinder_distance.exit

get_cylinder_distance.exit:                       ; preds = %while.body23.i, %while.end.i
  %dy.0.lcssa.i = phi float [ %fabsf42.i, %while.end.i ], [ %sub24.i, %while.body23.i ]
  %mul26.i = fmul float %dx.0.lcssa.i, %dx.0.lcssa.i
  %mul27.i = fmul float %dy.0.lcssa.i, %dy.0.lcssa.i
  %add.i = fadd float %mul26.i, %mul27.i
  %conv30.i = tail call float @sqrtf(float %add.i) #1
  %28 = load float* %rc, align 4, !tbaa !0
  %cmp49 = fcmp olt float %conv30.i, %28
  br i1 %cmp49, label %if.then50, label %for.inc113

if.then50:                                        ; preds = %get_cylinder_distance.exit
  %idxprom51 = sext i32 %18 to i64
  %29 = load float** %massT, align 8, !tbaa !3
  %arrayidx52 = getelementptr inbounds float* %29, i64 %idxprom51
  %30 = load float* %arrayidx52, align 4, !tbaa !0
  %add = fadd float %truemass.0243, %30
  %31 = load i32** %ngx27, align 8, !tbaa !3
  %arrayidx56 = getelementptr inbounds i32* %31, i64 %indvars.iv250
  %32 = load i32* %arrayidx56, align 4, !tbaa !4
  %inc57 = add nsw i32 %32, 1
  store i32 %inc57, i32* %arrayidx56, align 4, !tbaa !4
  %33 = load float* %r, align 4, !tbaa !0
  %cmp.i231 = fcmp olt float %conv30.i, %33
  br i1 %cmp.i231, label %get_weight.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then50
  %cmp1.i = fcmp ogt float %conv30.i, %28
  br i1 %cmp1.i, label %get_weight.exit, label %if.else3.i

if.else3.i:                                       ; preds = %if.else.i
  %sub.i232 = fsub float -0.000000e+00, %28
  %sub4.i = fsub float %33, %28
  %div.i = fdiv float %sub.i232, %sub4.i
  %div6.i = fdiv float %conv30.i, %sub4.i
  %add.i233 = fadd float %div.i, %div6.i
  br label %get_weight.exit

get_weight.exit:                                  ; preds = %if.then50, %if.else.i, %if.else3.i
  %weight.0.i = phi float [ %add.i233, %if.else3.i ], [ 1.000000e+00, %if.then50 ], [ 0.000000e+00, %if.else.i ]
  %idxprom60 = sext i32 %k.0241 to i64
  %34 = load float*** %weights63, align 8, !tbaa !3
  %arrayidx64 = getelementptr inbounds float** %34, i64 %indvars.iv250
  %35 = load float** %arrayidx64, align 8, !tbaa !3
  %arrayidx65 = getelementptr inbounds float* %35, i64 %idxprom60
  store float %weight.0.i, float* %arrayidx65, align 4, !tbaa !0
  %36 = load i32*** %idx69, align 8, !tbaa !3
  %arrayidx70 = getelementptr inbounds i32** %36, i64 %indvars.iv250
  %37 = load i32** %arrayidx70, align 8, !tbaa !3
  %arrayidx71 = getelementptr inbounds i32* %37, i64 %idxprom60
  store i32 %18, i32* %arrayidx71, align 4, !tbaa !4
  %mul237 = fmul float %30, %weight.0.i
  %38 = load [3 x float]*** %x0, align 8, !tbaa !3
  %39 = load [3 x float]** %38, align 8, !tbaa !3
  %40 = load [3 x float]** %x_unc122, align 8, !tbaa !3
  br label %for.body74

for.body74:                                       ; preds = %for.body74, %get_weight.exit
  %indvars.iv = phi i64 [ 0, %get_weight.exit ], [ %indvars.iv.next, %for.body74 ]
  %mul239 = phi float [ %mul237, %get_weight.exit ], [ %mul, %for.body74 ]
  %arrayidx87 = getelementptr inbounds [3 x float]* %39, i64 %indvars.iv248, i64 %indvars.iv
  %41 = load float* %arrayidx87, align 4, !tbaa !0
  %mul88 = fmul float %mul239, %41
  %arrayidx94 = getelementptr inbounds [3 x float]* %40, i64 %indvars.iv250, i64 %indvars.iv
  %42 = load float* %arrayidx94, align 4, !tbaa !0
  %add95 = fadd float %mul88, %42
  store float %add95, float* %arrayidx94, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %43 = load float* %arrayidx65, align 4, !tbaa !0
  %mul = fmul float %30, %43
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end98, label %for.body74

for.end98:                                        ; preds = %for.body74
  %44 = load float** %tmass, align 8, !tbaa !3
  %arrayidx109 = getelementptr inbounds float* %44, i64 %indvars.iv250
  %45 = load float* %arrayidx109, align 4, !tbaa !0
  %add110 = fadd float %mul, %45
  store float %add110, float* %arrayidx109, align 4, !tbaa !0
  %inc111 = add nsw i32 %k.0241, 1
  br label %for.inc113

for.inc113:                                       ; preds = %get_cylinder_distance.exit, %for.end98
  %k.1 = phi i32 [ %inc111, %for.end98 ], [ %k.0241, %get_cylinder_distance.exit ]
  %truemass.1 = phi float [ %add, %for.end98 ], [ %truemass.0243, %get_cylinder_distance.exit ]
  %indvars.iv.next249 = add i64 %indvars.iv248, 1
  %46 = load i32** %ngx31, align 8, !tbaa !3
  %47 = load i32* %46, align 4, !tbaa !4
  %48 = trunc i64 %indvars.iv.next249 to i32
  %cmp33 = icmp slt i32 %48, %47
  br i1 %cmp33, label %for.body34, label %for.cond29.for.end115_crit_edge

for.cond29.for.end115_crit_edge:                  ; preds = %for.inc113
  %.pre = load float** %tmass, align 8, !tbaa !3
  %arrayidx119.phi.trans.insert = getelementptr inbounds float* %.pre, i64 %indvars.iv250
  %.pre258 = load float* %arrayidx119.phi.trans.insert, align 4, !tbaa !0
  br label %for.end115

for.end115:                                       ; preds = %for.body21, %for.cond29.for.end115_crit_edge
  %49 = phi float [ %.pre258, %for.cond29.for.end115_crit_edge ], [ 0.000000e+00, %for.body21 ]
  %50 = phi float* [ %.pre, %for.cond29.for.end115_crit_edge ], [ %12, %for.body21 ]
  %truemass.0.lcssa = phi float [ %truemass.1, %for.cond29.for.end115_crit_edge ], [ 0.000000e+00, %for.body21 ]
  %div = fdiv float 1.000000e+00, %49
  %51 = load [3 x float]** %x_unc122, align 8, !tbaa !3
  %arraydecay124 = getelementptr inbounds [3 x float]* %51, i64 %indvars.iv250, i64 0
  %52 = load float* %arraydecay124, align 4, !tbaa !0
  %mul.i234 = fmul float %div, %52
  store float %mul.i234, float* %arraydecay124, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %51, i64 %indvars.iv250, i64 1
  %53 = load float* %arrayidx2.i, align 4, !tbaa !0
  %mul3.i = fmul float %div, %53
  store float %mul3.i, float* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx5.i = getelementptr inbounds [3 x float]* %51, i64 %indvars.iv250, i64 2
  %54 = load float* %arrayidx5.i, align 4, !tbaa !0
  %mul6.i = fmul float %div, %54
  store float %mul6.i, float* %arrayidx5.i, align 4, !tbaa !0
  %55 = load i32* %bVerbose, align 4, !tbaa !4
  %tobool130 = icmp eq i32 %55, 0
  br i1 %tobool130, label %for.inc157, label %if.then131

if.then131:                                       ; preds = %for.end115
  %arrayidx119 = getelementptr inbounds float* %50, i64 %indvars.iv250
  %56 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %conv = fpext float %mul.i234 to double
  %conv142 = fpext float %mul3.i to double
  %conv148 = fpext float %mul6.i to double
  %57 = load float* %arrayidx119, align 4, !tbaa !0
  %conv153 = fpext float %57 to double
  %conv154 = fpext float %truemass.0.lcssa to double
  %58 = trunc i64 %indvars.iv250 to i32
  %call155 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([48 x i8]* @.str11, i64 0, i64 0), i32 %58, double %conv, double %conv142, double %conv148, double %conv153, double %conv154) #5
  br label %for.inc157

for.inc157:                                       ; preds = %for.end115, %if.then131
  %indvars.iv.next251 = add i64 %indvars.iv250, 1
  %lftr.wideiv252 = trunc i64 %indvars.iv.next251 to i32
  %exitcond253 = icmp eq i32 %lftr.wideiv252, %0
  br i1 %exitcond253, label %for.end159, label %for.body21

for.end159:                                       ; preds = %for.inc157, %for.cond19.preheader
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

declare float @fabsf(float)

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
