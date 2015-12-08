; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_3dview = type { [3 x [3 x float]], [4 x float], [4 x float], [4 x [4 x float]], [4 x [4 x float]], float, float }

@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"%10.5f\00", align 1
@.str4 = private unnamed_addr constant [24 x i8] c"Error: invalid axis: %d\00", align 1
@.str5 = private unnamed_addr constant [46 x i8] c"Error: Zero Length Vector - No View Specified\00", align 1
@rotate_3d.RotP = internal global [3 x [4 x [4 x float]]] zeroinitializer, align 16
@rotate_3d.RotM = internal global [3 x [4 x [4 x float]]] zeroinitializer, align 16
@.str6 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str7 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @m4_op([4 x float]* nocapture %m, float* nocapture %x, float* nocapture %v) #0 {
entry:
  %arrayidx6 = getelementptr inbounds float* %x, i64 1
  %arrayidx11 = getelementptr inbounds float* %x, i64 2
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx1 = getelementptr inbounds [4 x float]* %m, i64 0, i64 %indvars.iv
  %0 = load float* %arrayidx1, align 4, !tbaa !0
  %1 = load float* %x, align 4, !tbaa !0
  %mul = fmul float %0, %1
  %arrayidx5 = getelementptr inbounds [4 x float]* %m, i64 1, i64 %indvars.iv
  %2 = load float* %arrayidx5, align 4, !tbaa !0
  %3 = load float* %arrayidx6, align 4, !tbaa !0
  %mul7 = fmul float %2, %3
  %add = fadd float %mul, %mul7
  %arrayidx10 = getelementptr inbounds [4 x float]* %m, i64 2, i64 %indvars.iv
  %4 = load float* %arrayidx10, align 4, !tbaa !0
  %5 = load float* %arrayidx11, align 4, !tbaa !0
  %mul12 = fmul float %4, %5
  %add13 = fadd float %add, %mul12
  %arrayidx16 = getelementptr inbounds [4 x float]* %m, i64 3, i64 %indvars.iv
  %6 = load float* %arrayidx16, align 4, !tbaa !0
  %add17 = fadd float %6, %add13
  %arrayidx19 = getelementptr inbounds float* %v, i64 %indvars.iv
  store float %add17, float* %arrayidx19, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @unity_m4([4 x float]* nocapture %m) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc11, %entry
  %indvars.iv21 = phi i64 [ 0, %entry ], [ %indvars.iv.next22, %for.inc11 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %0 = trunc i64 %indvars.iv to i32
  %1 = trunc i64 %indvars.iv21 to i32
  %cmp4 = icmp eq i32 %1, %0
  %arrayidx6 = getelementptr inbounds [4 x float]* %m, i64 %indvars.iv21, i64 %indvars.iv
  %. = select i1 %cmp4, float 1.000000e+00, float 0.000000e+00
  store float %., float* %arrayidx6, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc11, label %for.body3

for.inc11:                                        ; preds = %for.body3
  %indvars.iv.next22 = add i64 %indvars.iv21, 1
  %lftr.wideiv23 = trunc i64 %indvars.iv.next22 to i32
  %exitcond24 = icmp eq i32 %lftr.wideiv23, 4
  br i1 %exitcond24, label %for.end13, label %for.cond1.preheader

for.end13:                                        ; preds = %for.inc11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @print_m4(%struct._IO_FILE* %fp, i8* %s, [4 x float]* nocapture %A) #0 {
entry:
  %tobool = icmp eq %struct._IO_FILE* %fp, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* %s) #4
  br label %for.body

for.body:                                         ; preds = %for.end, %if.then
  %indvars.iv24 = phi i64 [ 0, %if.then ], [ %indvars.iv.next25, %for.end ]
  %fputc = tail call i32 @fputc(i32 9, %struct._IO_FILE* %fp)
  br label %for.body4

for.body4:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body4 ]
  %arrayidx6 = getelementptr inbounds [4 x float]* %A, i64 %indvars.iv24, i64 %indvars.iv
  %0 = load float* %arrayidx6, align 4, !tbaa !0
  %conv = fpext float %0 to double
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), double %conv) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end, label %for.body4

for.end:                                          ; preds = %for.body4
  %fputc21 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %indvars.iv.next25 = add i64 %indvars.iv24, 1
  %lftr.wideiv26 = trunc i64 %indvars.iv.next25 to i32
  %exitcond27 = icmp eq i32 %lftr.wideiv26, 4
  br i1 %exitcond27, label %if.end, label %for.body

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @print_v4(%struct._IO_FILE* %fp, i8* %s, i32 %dim, float* nocapture %a) #0 {
entry:
  %tobool = icmp eq %struct._IO_FILE* %fp, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* %s) #4
  %cmp7 = icmp sgt i32 %dim, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds float* %a, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %conv = fpext float %0 to double
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), double %conv) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %dim
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.then
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %entry, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @mult_matrix([4 x float]* nocapture %A, [4 x float]* nocapture %B, [4 x float]* nocapture %C) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc24, %entry
  %indvars.iv47 = phi i64 [ 0, %entry ], [ %indvars.iv.next48, %for.inc24 ]
  br label %for.body3

for.body3:                                        ; preds = %for.inc21, %for.cond1.preheader
  %indvars.iv42 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next43, %for.inc21 ]
  %arrayidx5 = getelementptr inbounds [4 x float]* %A, i64 %indvars.iv47, i64 %indvars.iv42
  store float 0.000000e+00, float* %arrayidx5, align 4, !tbaa !0
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.body3
  %0 = phi float [ 0.000000e+00, %for.body3 ], [ %add, %for.body8 ]
  %indvars.iv = phi i64 [ 0, %for.body3 ], [ %indvars.iv.next, %for.body8 ]
  %arrayidx12 = getelementptr inbounds [4 x float]* %B, i64 %indvars.iv47, i64 %indvars.iv
  %1 = load float* %arrayidx12, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds [4 x float]* %C, i64 %indvars.iv, i64 %indvars.iv42
  %2 = load float* %arrayidx16, align 4, !tbaa !0
  %mul = fmul float %1, %2
  %add = fadd float %0, %mul
  store float %add, float* %arrayidx5, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc21, label %for.body8

for.inc21:                                        ; preds = %for.body8
  %indvars.iv.next43 = add i64 %indvars.iv42, 1
  %lftr.wideiv44 = trunc i64 %indvars.iv.next43 to i32
  %exitcond45 = icmp eq i32 %lftr.wideiv44, 4
  br i1 %exitcond45, label %for.inc24, label %for.body3

for.inc24:                                        ; preds = %for.inc21
  %indvars.iv.next48 = add i64 %indvars.iv47, 1
  %lftr.wideiv49 = trunc i64 %indvars.iv.next48 to i32
  %exitcond50 = icmp eq i32 %lftr.wideiv49, 4
  br i1 %exitcond50, label %for.end26, label %for.cond1.preheader

for.end26:                                        ; preds = %for.inc24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @rotate(i32 %axis, float %angle, [4 x float]* nocapture %A) #0 {
entry:
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc11.i, %entry
  %indvars.iv21.i = phi i64 [ 0, %entry ], [ %indvars.iv.next22.i, %for.inc11.i ]
  %0 = trunc i64 %indvars.iv21.i to i32
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %1 = trunc i64 %indvars.iv.i to i32
  %cmp4.i = icmp eq i32 %0, %1
  %arrayidx6.i = getelementptr inbounds [4 x float]* %A, i64 %indvars.iv21.i, i64 %indvars.iv.i
  %..i = select i1 %cmp4.i, float 1.000000e+00, float 0.000000e+00
  store float %..i, float* %arrayidx6.i, align 4, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc11.i, label %for.body3.i

for.inc11.i:                                      ; preds = %for.body3.i
  %indvars.iv.next22.i = add i64 %indvars.iv21.i, 1
  %lftr.wideiv86 = trunc i64 %indvars.iv.next22.i to i32
  %exitcond87 = icmp eq i32 %lftr.wideiv86, 4
  br i1 %exitcond87, label %unity_m4.exit, label %for.cond1.preheader.i

unity_m4.exit:                                    ; preds = %for.inc11.i
  switch i32 %axis, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb40
  ]

sw.bb:                                            ; preds = %unity_m4.exit
  %conv = fpext float %angle to double
  %call = tail call double @cos(double %conv) #4
  %conv1 = fptrunc double %call to float
  %arrayidx2 = getelementptr inbounds [4 x float]* %A, i64 1, i64 1
  store float %conv1, float* %arrayidx2, align 4, !tbaa !0
  %call4 = tail call double @sin(double %conv) #4
  %2 = fptrunc double %call4 to float
  %conv5 = fsub float -0.000000e+00, %2
  %arrayidx7 = getelementptr inbounds [4 x float]* %A, i64 1, i64 2
  store float %conv5, float* %arrayidx7, align 4, !tbaa !0
  %call9 = tail call double @sin(double %conv) #4
  %conv10 = fptrunc double %call9 to float
  %arrayidx12 = getelementptr inbounds [4 x float]* %A, i64 2, i64 1
  store float %conv10, float* %arrayidx12, align 4, !tbaa !0
  %call14 = tail call double @cos(double %conv) #4
  %conv15 = fptrunc double %call14 to float
  %arrayidx17 = getelementptr inbounds [4 x float]* %A, i64 2, i64 2
  store float %conv15, float* %arrayidx17, align 4, !tbaa !0
  br label %sw.epilog

sw.bb18:                                          ; preds = %unity_m4.exit
  %conv19 = fpext float %angle to double
  %call20 = tail call double @cos(double %conv19) #4
  %conv21 = fptrunc double %call20 to float
  %arrayidx23 = getelementptr inbounds [4 x float]* %A, i64 0, i64 0
  store float %conv21, float* %arrayidx23, align 4, !tbaa !0
  %call25 = tail call double @sin(double %conv19) #4
  %conv26 = fptrunc double %call25 to float
  %arrayidx28 = getelementptr inbounds [4 x float]* %A, i64 0, i64 2
  store float %conv26, float* %arrayidx28, align 4, !tbaa !0
  %call30 = tail call double @sin(double %conv19) #4
  %3 = fptrunc double %call30 to float
  %conv32 = fsub float -0.000000e+00, %3
  %arrayidx34 = getelementptr inbounds [4 x float]* %A, i64 2, i64 0
  store float %conv32, float* %arrayidx34, align 4, !tbaa !0
  %call36 = tail call double @cos(double %conv19) #4
  %conv37 = fptrunc double %call36 to float
  %arrayidx39 = getelementptr inbounds [4 x float]* %A, i64 2, i64 2
  store float %conv37, float* %arrayidx39, align 4, !tbaa !0
  br label %sw.epilog

sw.bb40:                                          ; preds = %unity_m4.exit
  %conv41 = fpext float %angle to double
  %call42 = tail call double @cos(double %conv41) #4
  %conv43 = fptrunc double %call42 to float
  %arrayidx45 = getelementptr inbounds [4 x float]* %A, i64 0, i64 0
  store float %conv43, float* %arrayidx45, align 4, !tbaa !0
  %call47 = tail call double @sin(double %conv41) #4
  %4 = fptrunc double %call47 to float
  %conv49 = fsub float -0.000000e+00, %4
  %arrayidx51 = getelementptr inbounds [4 x float]* %A, i64 0, i64 1
  store float %conv49, float* %arrayidx51, align 4, !tbaa !0
  %call53 = tail call double @sin(double %conv41) #4
  %conv54 = fptrunc double %call53 to float
  %arrayidx56 = getelementptr inbounds [4 x float]* %A, i64 1, i64 0
  store float %conv54, float* %arrayidx56, align 4, !tbaa !0
  %call58 = tail call double @cos(double %conv41) #4
  %conv59 = fptrunc double %call58 to float
  %arrayidx61 = getelementptr inbounds [4 x float]* %A, i64 1, i64 1
  store float %conv59, float* %arrayidx61, align 4, !tbaa !0
  br label %sw.epilog

sw.default:                                       ; preds = %unity_m4.exit
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0), i32 %axis) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb40, %sw.bb18, %sw.bb
  ret void
}

; Function Attrs: nounwind optsize
declare double @cos(double) #1

; Function Attrs: nounwind optsize
declare double @sin(double) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @translate(float %tx, float %ty, float %tz, [4 x float]* nocapture %A) #0 {
entry:
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc11.i, %entry
  %indvars.iv21.i = phi i64 [ 0, %entry ], [ %indvars.iv.next22.i, %for.inc11.i ]
  %0 = trunc i64 %indvars.iv21.i to i32
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %1 = trunc i64 %indvars.iv.i to i32
  %cmp4.i = icmp eq i32 %0, %1
  %arrayidx6.i = getelementptr inbounds [4 x float]* %A, i64 %indvars.iv21.i, i64 %indvars.iv.i
  %..i = select i1 %cmp4.i, float 1.000000e+00, float 0.000000e+00
  store float %..i, float* %arrayidx6.i, align 4, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc11.i, label %for.body3.i

for.inc11.i:                                      ; preds = %for.body3.i
  %indvars.iv.next22.i = add i64 %indvars.iv21.i, 1
  %lftr.wideiv9 = trunc i64 %indvars.iv.next22.i to i32
  %exitcond10 = icmp eq i32 %lftr.wideiv9, 4
  br i1 %exitcond10, label %unity_m4.exit, label %for.cond1.preheader.i

unity_m4.exit:                                    ; preds = %for.inc11.i
  %arrayidx1 = getelementptr inbounds [4 x float]* %A, i64 3, i64 0
  store float %tx, float* %arrayidx1, align 4, !tbaa !0
  %arrayidx3 = getelementptr inbounds [4 x float]* %A, i64 3, i64 1
  store float %ty, float* %arrayidx3, align 4, !tbaa !0
  %arrayidx5 = getelementptr inbounds [4 x float]* %A, i64 3, i64 2
  store float %tz, float* %arrayidx5, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @calculate_view(%struct.t_3dview* nocapture %view) #0 {
entry:
  %To = alloca [4 x [4 x float]], align 16
  %Te = alloca [4 x [4 x float]], align 16
  %T1 = alloca [4 x [4 x float]], align 16
  %T2 = alloca [4 x [4 x float]], align 16
  %T3 = alloca [4 x [4 x float]], align 16
  %T4 = alloca [4 x [4 x float]], align 16
  %T5 = alloca [4 x [4 x float]], align 16
  %N1 = alloca [4 x [4 x float]], align 16
  %D1 = alloca [4 x [4 x float]], align 16
  %D2 = alloca [4 x [4 x float]], align 16
  %D3 = alloca [4 x [4 x float]], align 16
  %D4 = alloca [4 x [4 x float]], align 16
  %D5 = alloca [4 x [4 x float]], align 16
  %0 = bitcast [4 x [4 x float]]* %To to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #3
  %1 = bitcast [4 x [4 x float]]* %Te to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #3
  %2 = bitcast [4 x [4 x float]]* %T1 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #3
  %3 = bitcast [4 x [4 x float]]* %T2 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #3
  %4 = bitcast [4 x [4 x float]]* %T3 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #3
  %5 = bitcast [4 x [4 x float]]* %T4 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %5) #3
  %6 = bitcast [4 x [4 x float]]* %T5 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %6) #3
  %7 = bitcast [4 x [4 x float]]* %N1 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %7) #3
  %8 = bitcast [4 x [4 x float]]* %D1 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %8) #3
  %9 = bitcast [4 x [4 x float]]* %D2 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %9) #3
  %10 = bitcast [4 x [4 x float]]* %D3 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %10) #3
  %11 = bitcast [4 x [4 x float]]* %D4 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %11) #3
  %12 = bitcast [4 x [4 x float]]* %D5 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %12) #3
  %arrayidx = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 0
  %13 = load float* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 1
  %14 = load float* %arrayidx2, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 2
  %15 = load float* %arrayidx4, align 4, !tbaa !0
  %mul = fmul float %13, %13
  %mul5 = fmul float %14, %14
  %add = fadd float %mul, %mul5
  %mul6 = fmul float %15, %15
  %add7 = fadd float %add, %mul6
  %conv8 = call float @sqrtf(float %add7) #1
  %conv14 = call float @sqrtf(float %add) #1
  %conv15 = fpext float %conv8 to double
  %cmp = fcmp olt double %conv15, 1.000000e-06
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str5, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx17 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 0
  %16 = load float* %arrayidx17, align 4, !tbaa !0
  %arrayidx19 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 1
  %17 = load float* %arrayidx19, align 4, !tbaa !0
  %arrayidx22 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 2
  %18 = load float* %arrayidx22, align 4, !tbaa !0
  %sub23 = fsub float -0.000000e+00, %18
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.inc11.i.i, %if.end
  %indvars.iv21.i.i = phi i64 [ 0, %if.end ], [ %indvars.iv.next22.i.i, %for.inc11.i.i ]
  %19 = trunc i64 %indvars.iv21.i.i to i32
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.body3.i.i, %for.cond1.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.cond1.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body3.i.i ]
  %20 = trunc i64 %indvars.iv.i.i to i32
  %cmp4.i.i = icmp eq i32 %19, %20
  %arrayidx6.i.i = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 %indvars.iv21.i.i, i64 %indvars.iv.i.i
  %..i.i = select i1 %cmp4.i.i, float 1.000000e+00, float 0.000000e+00
  store float %..i.i, float* %arrayidx6.i.i, align 4, !tbaa !0
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %lftr.wideiv236 = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond237 = icmp eq i32 %lftr.wideiv236, 4
  br i1 %exitcond237, label %for.inc11.i.i, label %for.body3.i.i

for.inc11.i.i:                                    ; preds = %for.body3.i.i
  %indvars.iv.next22.i.i = add i64 %indvars.iv21.i.i, 1
  %lftr.wideiv238 = trunc i64 %indvars.iv.next22.i.i to i32
  %exitcond239 = icmp eq i32 %lftr.wideiv238, 4
  br i1 %exitcond239, label %translate.exit, label %for.cond1.preheader.i.i

translate.exit:                                   ; preds = %for.inc11.i.i
  %sub = fsub float -0.000000e+00, %16
  %sub20 = fsub float -0.000000e+00, %17
  %arraydecay = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 0
  %arrayidx1.i = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 3, i64 0
  store float %sub, float* %arrayidx1.i, align 16, !tbaa !0
  %arrayidx3.i = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 3, i64 1
  store float %sub20, float* %arrayidx3.i, align 4, !tbaa !0
  %arrayidx5.i = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 3, i64 2
  store float %sub23, float* %arrayidx5.i, align 8, !tbaa !0
  %21 = load float* %arrayidx, align 4, !tbaa !0
  %22 = load float* %arrayidx2, align 4, !tbaa !0
  %23 = load float* %arrayidx4, align 4, !tbaa !0
  %sub32 = fsub float -0.000000e+00, %23
  br label %for.cond1.preheader.i.i135

for.cond1.preheader.i.i135:                       ; preds = %for.inc11.i.i147, %translate.exit
  %indvars.iv21.i.i134 = phi i64 [ 0, %translate.exit ], [ %indvars.iv.next22.i.i144, %for.inc11.i.i147 ]
  %24 = trunc i64 %indvars.iv21.i.i134 to i32
  br label %for.body3.i.i143

for.body3.i.i143:                                 ; preds = %for.body3.i.i143, %for.cond1.preheader.i.i135
  %indvars.iv.i.i136 = phi i64 [ 0, %for.cond1.preheader.i.i135 ], [ %indvars.iv.next.i.i140, %for.body3.i.i143 ]
  %25 = trunc i64 %indvars.iv.i.i136 to i32
  %cmp4.i.i137 = icmp eq i32 %24, %25
  %arrayidx6.i.i138 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 %indvars.iv21.i.i134, i64 %indvars.iv.i.i136
  %..i.i139 = select i1 %cmp4.i.i137, float 1.000000e+00, float 0.000000e+00
  store float %..i.i139, float* %arrayidx6.i.i138, align 4, !tbaa !0
  %indvars.iv.next.i.i140 = add i64 %indvars.iv.i.i136, 1
  %lftr.wideiv232 = trunc i64 %indvars.iv.next.i.i140 to i32
  %exitcond233 = icmp eq i32 %lftr.wideiv232, 4
  br i1 %exitcond233, label %for.inc11.i.i147, label %for.body3.i.i143

for.inc11.i.i147:                                 ; preds = %for.body3.i.i143
  %indvars.iv.next22.i.i144 = add i64 %indvars.iv21.i.i134, 1
  %lftr.wideiv234 = trunc i64 %indvars.iv.next22.i.i144 to i32
  %exitcond235 = icmp eq i32 %lftr.wideiv234, 4
  br i1 %exitcond235, label %translate.exit151, label %for.cond1.preheader.i.i135

translate.exit151:                                ; preds = %for.inc11.i.i147
  %sub26 = fsub float -0.000000e+00, %21
  %sub29 = fsub float -0.000000e+00, %22
  %arraydecay33 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 0
  %arrayidx1.i148 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 3, i64 0
  store float %sub26, float* %arrayidx1.i148, align 16, !tbaa !0
  %arrayidx3.i149 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 3, i64 1
  store float %sub29, float* %arrayidx3.i149, align 4, !tbaa !0
  %arrayidx5.i150 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 3, i64 2
  store float %sub32, float* %arrayidx5.i150, align 8, !tbaa !0
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc11.i, %translate.exit151
  %indvars.iv21.i = phi i64 [ 0, %translate.exit151 ], [ %indvars.iv.next22.i, %for.inc11.i ]
  %26 = trunc i64 %indvars.iv21.i to i32
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %27 = trunc i64 %indvars.iv.i to i32
  %cmp4.i = icmp eq i32 %26, %27
  %arrayidx6.i = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 %indvars.iv21.i, i64 %indvars.iv.i
  %..i = select i1 %cmp4.i, float 1.000000e+00, float 0.000000e+00
  store float %..i, float* %arrayidx6.i, align 4, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv228 = trunc i64 %indvars.iv.next.i to i32
  %exitcond229 = icmp eq i32 %lftr.wideiv228, 4
  br i1 %exitcond229, label %for.inc11.i, label %for.body3.i

for.inc11.i:                                      ; preds = %for.body3.i
  %indvars.iv.next22.i = add i64 %indvars.iv21.i, 1
  %lftr.wideiv230 = trunc i64 %indvars.iv.next22.i to i32
  %exitcond231 = icmp eq i32 %lftr.wideiv230, 4
  br i1 %exitcond231, label %unity_m4.exit, label %for.cond1.preheader.i

unity_m4.exit:                                    ; preds = %for.inc11.i
  %arraydecay34 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 0
  %arrayidx36 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 1, i64 1
  store float 0.000000e+00, float* %arrayidx36, align 4, !tbaa !0
  %arrayidx38 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 1, i64 2
  store float -1.000000e+00, float* %arrayidx38, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 2, i64 1
  store float 1.000000e+00, float* %arrayidx40, align 4, !tbaa !0
  %arrayidx42 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 2, i64 2
  store float 0.000000e+00, float* %arrayidx42, align 8, !tbaa !0
  br label %for.cond1.preheader.i155

for.cond1.preheader.i155:                         ; preds = %for.inc11.i167, %unity_m4.exit
  %indvars.iv21.i154 = phi i64 [ 0, %unity_m4.exit ], [ %indvars.iv.next22.i164, %for.inc11.i167 ]
  %28 = trunc i64 %indvars.iv21.i154 to i32
  br label %for.body3.i163

for.body3.i163:                                   ; preds = %for.body3.i163, %for.cond1.preheader.i155
  %indvars.iv.i156 = phi i64 [ 0, %for.cond1.preheader.i155 ], [ %indvars.iv.next.i160, %for.body3.i163 ]
  %29 = trunc i64 %indvars.iv.i156 to i32
  %cmp4.i157 = icmp eq i32 %28, %29
  %arrayidx6.i158 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 %indvars.iv21.i154, i64 %indvars.iv.i156
  %..i159 = select i1 %cmp4.i157, float 1.000000e+00, float 0.000000e+00
  store float %..i159, float* %arrayidx6.i158, align 4, !tbaa !0
  %indvars.iv.next.i160 = add i64 %indvars.iv.i156, 1
  %lftr.wideiv224 = trunc i64 %indvars.iv.next.i160 to i32
  %exitcond225 = icmp eq i32 %lftr.wideiv224, 4
  br i1 %exitcond225, label %for.inc11.i167, label %for.body3.i163

for.inc11.i167:                                   ; preds = %for.body3.i163
  %indvars.iv.next22.i164 = add i64 %indvars.iv21.i154, 1
  %lftr.wideiv226 = trunc i64 %indvars.iv.next22.i164 to i32
  %exitcond227 = icmp eq i32 %lftr.wideiv226, 4
  br i1 %exitcond227, label %unity_m4.exit168, label %for.cond1.preheader.i155

unity_m4.exit168:                                 ; preds = %for.inc11.i167
  %arraydecay43 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 0
  %cmp44 = fcmp ogt float %conv14, 0.000000e+00
  br i1 %cmp44, label %if.then46, label %for.cond1.preheader.i170

if.then46:                                        ; preds = %unity_m4.exit168
  %sub47 = fsub float -0.000000e+00, %14
  %div = fdiv float %sub47, %conv14
  %arrayidx49 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 0, i64 0
  store float %div, float* %arrayidx49, align 16, !tbaa !0
  %div50 = fdiv float %13, %conv14
  %arrayidx52 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 0, i64 2
  store float %div50, float* %arrayidx52, align 8, !tbaa !0
  %sub53 = fsub float -0.000000e+00, %13
  %div54 = fdiv float %sub53, %conv14
  %arrayidx56 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 2, i64 0
  store float %div54, float* %arrayidx56, align 16, !tbaa !0
  %arrayidx60 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 2, i64 2
  store float %div, float* %arrayidx60, align 8, !tbaa !0
  br label %for.cond1.preheader.i170

for.cond1.preheader.i170:                         ; preds = %unity_m4.exit168, %if.then46, %for.inc11.i182
  %indvars.iv21.i169 = phi i64 [ %indvars.iv.next22.i179, %for.inc11.i182 ], [ 0, %if.then46 ], [ 0, %unity_m4.exit168 ]
  %30 = trunc i64 %indvars.iv21.i169 to i32
  br label %for.body3.i178

for.body3.i178:                                   ; preds = %for.body3.i178, %for.cond1.preheader.i170
  %indvars.iv.i171 = phi i64 [ 0, %for.cond1.preheader.i170 ], [ %indvars.iv.next.i175, %for.body3.i178 ]
  %31 = trunc i64 %indvars.iv.i171 to i32
  %cmp4.i172 = icmp eq i32 %30, %31
  %arrayidx6.i173 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 %indvars.iv21.i169, i64 %indvars.iv.i171
  %..i174 = select i1 %cmp4.i172, float 1.000000e+00, float 0.000000e+00
  store float %..i174, float* %arrayidx6.i173, align 4, !tbaa !0
  %indvars.iv.next.i175 = add i64 %indvars.iv.i171, 1
  %lftr.wideiv220 = trunc i64 %indvars.iv.next.i175 to i32
  %exitcond221 = icmp eq i32 %lftr.wideiv220, 4
  br i1 %exitcond221, label %for.inc11.i182, label %for.body3.i178

for.inc11.i182:                                   ; preds = %for.body3.i178
  %indvars.iv.next22.i179 = add i64 %indvars.iv21.i169, 1
  %lftr.wideiv222 = trunc i64 %indvars.iv.next22.i179 to i32
  %exitcond223 = icmp eq i32 %lftr.wideiv222, 4
  br i1 %exitcond223, label %unity_m4.exit183, label %for.cond1.preheader.i170

unity_m4.exit183:                                 ; preds = %for.inc11.i182
  %arraydecay62 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 0
  %div63 = fdiv float %conv14, %conv8
  %arrayidx65 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 1, i64 1
  store float %div63, float* %arrayidx65, align 4, !tbaa !0
  %div66 = fdiv float %15, %conv8
  %arrayidx68 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 1, i64 2
  store float %div66, float* %arrayidx68, align 8, !tbaa !0
  %sub69 = fsub float -0.000000e+00, %15
  %div70 = fdiv float %sub69, %conv8
  %arrayidx72 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 2, i64 1
  store float %div70, float* %arrayidx72, align 4, !tbaa !0
  %arrayidx75 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 2, i64 2
  store float %div63, float* %arrayidx75, align 8, !tbaa !0
  br label %for.cond1.preheader.i185

for.cond1.preheader.i185:                         ; preds = %for.inc11.i197, %unity_m4.exit183
  %indvars.iv21.i184 = phi i64 [ 0, %unity_m4.exit183 ], [ %indvars.iv.next22.i194, %for.inc11.i197 ]
  %32 = trunc i64 %indvars.iv21.i184 to i32
  br label %for.body3.i193

for.body3.i193:                                   ; preds = %for.body3.i193, %for.cond1.preheader.i185
  %indvars.iv.i186 = phi i64 [ 0, %for.cond1.preheader.i185 ], [ %indvars.iv.next.i190, %for.body3.i193 ]
  %33 = trunc i64 %indvars.iv.i186 to i32
  %cmp4.i187 = icmp eq i32 %32, %33
  %arrayidx6.i188 = getelementptr inbounds [4 x [4 x float]]* %T5, i64 0, i64 %indvars.iv21.i184, i64 %indvars.iv.i186
  %..i189 = select i1 %cmp4.i187, float 1.000000e+00, float 0.000000e+00
  store float %..i189, float* %arrayidx6.i188, align 4, !tbaa !0
  %indvars.iv.next.i190 = add i64 %indvars.iv.i186, 1
  %lftr.wideiv216 = trunc i64 %indvars.iv.next.i190 to i32
  %exitcond217 = icmp eq i32 %lftr.wideiv216, 4
  br i1 %exitcond217, label %for.inc11.i197, label %for.body3.i193

for.inc11.i197:                                   ; preds = %for.body3.i193
  %indvars.iv.next22.i194 = add i64 %indvars.iv21.i184, 1
  %lftr.wideiv218 = trunc i64 %indvars.iv.next22.i194 to i32
  %exitcond219 = icmp eq i32 %lftr.wideiv218, 4
  br i1 %exitcond219, label %unity_m4.exit198, label %for.cond1.preheader.i185

unity_m4.exit198:                                 ; preds = %for.inc11.i197
  %arraydecay76 = getelementptr inbounds [4 x [4 x float]]* %T5, i64 0, i64 0
  %arrayidx78 = getelementptr inbounds [4 x [4 x float]]* %T5, i64 0, i64 2, i64 2
  store float -1.000000e+00, float* %arrayidx78, align 8, !tbaa !0
  br label %for.cond1.preheader.i200

for.cond1.preheader.i200:                         ; preds = %for.inc11.i212, %unity_m4.exit198
  %indvars.iv21.i199 = phi i64 [ 0, %unity_m4.exit198 ], [ %indvars.iv.next22.i209, %for.inc11.i212 ]
  %34 = trunc i64 %indvars.iv21.i199 to i32
  br label %for.body3.i208

for.body3.i208:                                   ; preds = %for.body3.i208, %for.cond1.preheader.i200
  %indvars.iv.i201 = phi i64 [ 0, %for.cond1.preheader.i200 ], [ %indvars.iv.next.i205, %for.body3.i208 ]
  %35 = trunc i64 %indvars.iv.i201 to i32
  %cmp4.i202 = icmp eq i32 %34, %35
  %arrayidx6.i203 = getelementptr inbounds [4 x [4 x float]]* %N1, i64 0, i64 %indvars.iv21.i199, i64 %indvars.iv.i201
  %..i204 = select i1 %cmp4.i202, float 1.000000e+00, float 0.000000e+00
  store float %..i204, float* %arrayidx6.i203, align 4, !tbaa !0
  %indvars.iv.next.i205 = add i64 %indvars.iv.i201, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i205 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc11.i212, label %for.body3.i208

for.inc11.i212:                                   ; preds = %for.body3.i208
  %indvars.iv.next22.i209 = add i64 %indvars.iv21.i199, 1
  %lftr.wideiv214 = trunc i64 %indvars.iv.next22.i209 to i32
  %exitcond215 = icmp eq i32 %lftr.wideiv214, 4
  br i1 %exitcond215, label %unity_m4.exit213, label %for.cond1.preheader.i200

unity_m4.exit213:                                 ; preds = %for.inc11.i212
  %arraydecay79 = getelementptr inbounds [4 x [4 x float]]* %N1, i64 0, i64 0
  %arraydecay80 = getelementptr inbounds [4 x [4 x float]]* %T1, i64 0, i64 0
  %arraydecay82 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 4, i64 0
  call void @mult_matrix([4 x float]* %arraydecay80, [4 x float]* %arraydecay, [4 x float]* %arraydecay82) #5
  %arraydecay83 = getelementptr inbounds [4 x [4 x float]]* %D1, i64 0, i64 0
  call void @mult_matrix([4 x float]* %arraydecay83, [4 x float]* %arraydecay33, [4 x float]* %arraydecay34) #5
  %arraydecay86 = getelementptr inbounds [4 x [4 x float]]* %D2, i64 0, i64 0
  call void @mult_matrix([4 x float]* %arraydecay86, [4 x float]* %arraydecay43, [4 x float]* %arraydecay62) #5
  %arraydecay89 = getelementptr inbounds [4 x [4 x float]]* %D3, i64 0, i64 0
  call void @mult_matrix([4 x float]* %arraydecay89, [4 x float]* %arraydecay76, [4 x float]* %arraydecay79) #5
  %arraydecay92 = getelementptr inbounds [4 x [4 x float]]* %D4, i64 0, i64 0
  call void @mult_matrix([4 x float]* %arraydecay92, [4 x float]* %arraydecay80, [4 x float]* %arraydecay83) #5
  %arraydecay95 = getelementptr inbounds [4 x [4 x float]]* %D5, i64 0, i64 0
  call void @mult_matrix([4 x float]* %arraydecay95, [4 x float]* %arraydecay86, [4 x float]* %arraydecay89) #5
  %arraydecay98 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 3, i64 0
  call void @mult_matrix([4 x float]* %arraydecay98, [4 x float]* %arraydecay92, [4 x float]* %arraydecay95) #5
  call void @llvm.lifetime.end(i64 64, i8* %12) #3
  call void @llvm.lifetime.end(i64 64, i8* %11) #3
  call void @llvm.lifetime.end(i64 64, i8* %10) #3
  call void @llvm.lifetime.end(i64 64, i8* %9) #3
  call void @llvm.lifetime.end(i64 64, i8* %8) #3
  call void @llvm.lifetime.end(i64 64, i8* %7) #3
  call void @llvm.lifetime.end(i64 64, i8* %6) #3
  call void @llvm.lifetime.end(i64 64, i8* %5) #3
  call void @llvm.lifetime.end(i64 64, i8* %4) #3
  call void @llvm.lifetime.end(i64 64, i8* %3) #3
  call void @llvm.lifetime.end(i64 64, i8* %2) #3
  call void @llvm.lifetime.end(i64 64, i8* %1) #3
  call void @llvm.lifetime.end(i64 64, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @zoom_3d(%struct.t_3dview* nocapture %view, float %fac) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv168 = phi i64 [ 0, %entry ], [ %indvars.iv.next169, %for.body ]
  %dr2.0166 = phi float [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 %indvars.iv168
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %mul = fmul float %0, %0
  %add = fadd float %dr2.0166, %mul
  %indvars.iv.next169 = add i64 %indvars.iv168, 1
  %lftr.wideiv170 = trunc i64 %indvars.iv.next169 to i32
  %exitcond171 = icmp eq i32 %lftr.wideiv170, 3
  br i1 %exitcond171, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %conv1 = tail call float @sqrtf(float %add) #1
  %cmp2 = fcmp olt float %fac, 1.000000e+00
  br i1 %cmp2, label %if.then, label %for.body67

if.then:                                          ; preds = %for.end
  %arraydecay = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0, i64 0
  %1 = load float* %arraydecay, align 4, !tbaa !0
  %mul.i = fmul float %1, %1
  %arrayidx2.i = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0, i64 1
  %2 = load float* %arrayidx2.i, align 4, !tbaa !0
  %mul4.i = fmul float %2, %2
  %add.i = fadd float %mul.i, %mul4.i
  %arrayidx5.i = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0, i64 2
  %3 = load float* %arrayidx5.i, align 4, !tbaa !0
  %mul7.i = fmul float %3, %3
  %add8.i = fadd float %add.i, %mul7.i
  %conv9.i = tail call float @sqrtf(float %add8.i) #1
  %arraydecay8 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 1, i64 0
  %4 = load float* %arraydecay8, align 4, !tbaa !0
  %mul.i93 = fmul float %4, %4
  %arrayidx2.i94 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 1, i64 1
  %5 = load float* %arrayidx2.i94, align 4, !tbaa !0
  %mul4.i95 = fmul float %5, %5
  %add.i96 = fadd float %mul.i93, %mul4.i95
  %arrayidx5.i97 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 1, i64 2
  %6 = load float* %arrayidx5.i97, align 4, !tbaa !0
  %mul7.i98 = fmul float %6, %6
  %add8.i99 = fadd float %add.i96, %mul7.i98
  %conv9.i100 = tail call float @sqrtf(float %add8.i99) #1
  %arraydecay12 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 2, i64 0
  %7 = load float* %arraydecay12, align 4, !tbaa !0
  %mul.i101 = fmul float %7, %7
  %arrayidx2.i102 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 2, i64 1
  %8 = load float* %arrayidx2.i102, align 4, !tbaa !0
  %mul4.i103 = fmul float %8, %8
  %add.i104 = fadd float %mul.i101, %mul4.i103
  %arrayidx5.i105 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 2, i64 2
  %9 = load float* %arrayidx5.i105, align 4, !tbaa !0
  %mul7.i106 = fmul float %9, %9
  %add8.i107 = fadd float %add.i104, %mul7.i106
  %conv9.i108 = tail call float @sqrtf(float %add8.i107) #1
  %cmp14 = fcmp ogt float %conv9.i100, %conv9.i108
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load float* %arraydecay8, align 4, !tbaa !0
  %mul.i109 = fmul float %10, %10
  %11 = load float* %arrayidx2.i94, align 4, !tbaa !0
  %mul4.i111 = fmul float %11, %11
  %add.i112 = fadd float %mul.i109, %mul4.i111
  %12 = load float* %arrayidx5.i97, align 4, !tbaa !0
  %mul7.i114 = fmul float %12, %12
  %add8.i115 = fadd float %add.i112, %mul7.i114
  %conv9.i116 = tail call float @sqrtf(float %add8.i115) #1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load float* %arraydecay12, align 4, !tbaa !0
  %mul.i117 = fmul float %13, %13
  %14 = load float* %arrayidx2.i102, align 4, !tbaa !0
  %mul4.i119 = fmul float %14, %14
  %add.i120 = fadd float %mul.i117, %mul4.i119
  %15 = load float* %arrayidx5.i105, align 4, !tbaa !0
  %mul7.i122 = fmul float %15, %15
  %add8.i123 = fadd float %add.i120, %mul7.i122
  %conv9.i124 = tail call float @sqrtf(float %add8.i123) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %conv9.i116, %cond.true ], [ %conv9.i124, %cond.false ]
  %cmp24 = fcmp ogt float %conv9.i, %cond
  br i1 %cmp24, label %cond.true26, label %cond.false31

cond.true26:                                      ; preds = %cond.end
  %16 = load float* %arraydecay, align 4, !tbaa !0
  %mul.i125 = fmul float %16, %16
  %17 = load float* %arrayidx2.i, align 4, !tbaa !0
  %mul4.i127 = fmul float %17, %17
  %add.i128 = fadd float %mul.i125, %mul4.i127
  %18 = load float* %arrayidx5.i, align 4, !tbaa !0
  %mul7.i130 = fmul float %18, %18
  %add8.i131 = fadd float %add.i128, %mul7.i130
  %conv9.i132 = tail call float @sqrtf(float %add8.i131) #1
  br label %cond.end54

cond.false31:                                     ; preds = %cond.end
  %19 = load float* %arraydecay8, align 4, !tbaa !0
  %mul.i133 = fmul float %19, %19
  %20 = load float* %arrayidx2.i94, align 4, !tbaa !0
  %mul4.i135 = fmul float %20, %20
  %add.i136 = fadd float %mul.i133, %mul4.i135
  %21 = load float* %arrayidx5.i97, align 4, !tbaa !0
  %mul7.i138 = fmul float %21, %21
  %add8.i139 = fadd float %add.i136, %mul7.i138
  %conv9.i140 = tail call float @sqrtf(float %add8.i139) #1
  %22 = load float* %arraydecay12, align 4, !tbaa !0
  %mul.i141 = fmul float %22, %22
  %23 = load float* %arrayidx2.i102, align 4, !tbaa !0
  %mul4.i143 = fmul float %23, %23
  %add.i144 = fadd float %mul.i141, %mul4.i143
  %24 = load float* %arrayidx5.i105, align 4, !tbaa !0
  %mul7.i146 = fmul float %24, %24
  %add8.i147 = fadd float %add.i144, %mul7.i146
  %conv9.i148 = tail call float @sqrtf(float %add8.i147) #1
  %cmp40 = fcmp ogt float %conv9.i140, %conv9.i148
  br i1 %cmp40, label %cond.true42, label %cond.false47

cond.true42:                                      ; preds = %cond.false31
  %25 = load float* %arraydecay8, align 4, !tbaa !0
  %mul.i149 = fmul float %25, %25
  %26 = load float* %arrayidx2.i94, align 4, !tbaa !0
  %mul4.i151 = fmul float %26, %26
  %add.i152 = fadd float %mul.i149, %mul4.i151
  %27 = load float* %arrayidx5.i97, align 4, !tbaa !0
  %mul7.i154 = fmul float %27, %27
  %add8.i155 = fadd float %add.i152, %mul7.i154
  %conv9.i156 = tail call float @sqrtf(float %add8.i155) #1
  br label %cond.end54

cond.false47:                                     ; preds = %cond.false31
  %28 = load float* %arraydecay12, align 4, !tbaa !0
  %mul.i157 = fmul float %28, %28
  %29 = load float* %arrayidx2.i102, align 4, !tbaa !0
  %mul4.i159 = fmul float %29, %29
  %add.i160 = fadd float %mul.i157, %mul4.i159
  %30 = load float* %arrayidx5.i105, align 4, !tbaa !0
  %mul7.i162 = fmul float %30, %30
  %add8.i163 = fadd float %add.i160, %mul7.i162
  %conv9.i164 = tail call float @sqrtf(float %add8.i163) #1
  br label %cond.end54

cond.end54:                                       ; preds = %cond.true42, %cond.false47, %cond.true26
  %cond55 = phi float [ %conv9.i132, %cond.true26 ], [ %conv9.i156, %cond.true42 ], [ %conv9.i164, %cond.false47 ]
  %mul56 = fmul float %conv1, %fac
  %conv57 = fpext float %mul56 to double
  %conv58 = fpext float %cond55 to double
  %mul59 = fmul double %conv58, 1.100000e+00
  %cmp60 = fcmp olt double %conv57, %mul59
  br i1 %cmp60, label %return, label %for.body67

for.body67:                                       ; preds = %for.end, %cond.end54, %for.body67
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body67 ], [ 0, %cond.end54 ], [ 0, %for.end ]
  %arrayidx70 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 %indvars.iv
  %31 = load float* %arrayidx70, align 4, !tbaa !0
  %mul71 = fmul float %31, %fac
  store float %mul71, float* %arrayidx70, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end74, label %for.body67

for.end74:                                        ; preds = %for.body67
  tail call void @calculate_view(%struct.t_3dview* %view) #5
  br label %return

return:                                           ; preds = %cond.end54, %for.end74
  %retval.0 = phi i32 [ 1, %for.end74 ], [ 0, %cond.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @rotate_3d(%struct.t_3dview* nocapture %view, i32 %axis, i32 %bPositive) #0 {
entry:
  %m4 = alloca [4 x [4 x float]], align 16
  %0 = bitcast [4 x [4 x float]]* %m4 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #3
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arraydecay = getelementptr inbounds [3 x [4 x [4 x float]]]* @rotate_3d.RotP, i64 0, i64 %indvars.iv, i64 0
  %1 = trunc i64 %indvars.iv to i32
  call void @rotate(i32 %1, float 0x3FD0C15240000000, [4 x float]* %arraydecay) #5
  %arraydecay3 = getelementptr inbounds [3 x [4 x [4 x float]]]* @rotate_3d.RotM, i64 0, i64 %indvars.iv, i64 0
  call void @rotate(i32 %1, float 0xBFD0C15240000000, [4 x float]* %arraydecay3) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv60 = trunc i64 %indvars.iv.next to i32
  %exitcond61 = icmp eq i32 %lftr.wideiv60, 3
  br i1 %exitcond61, label %if.end, label %for.body

if.end:                                           ; preds = %for.body
  %tobool4 = icmp eq i32 %bPositive, 0
  %arraydecay6 = getelementptr inbounds [4 x [4 x float]]* %m4, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 4, i64 0
  %idxprom8 = sext i32 %axis to i64
  br i1 %tobool4, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %arraydecay10 = getelementptr inbounds [3 x [4 x [4 x float]]]* @rotate_3d.RotP, i64 0, i64 %idxprom8, i64 0
  call void @mult_matrix([4 x float]* %arraydecay6, [4 x float]* %arraydecay7, [4 x float]* %arraydecay10) #5
  br label %for.cond21.preheader

if.else:                                          ; preds = %if.end
  %arraydecay16 = getelementptr inbounds [3 x [4 x [4 x float]]]* @rotate_3d.RotM, i64 0, i64 %idxprom8, i64 0
  call void @mult_matrix([4 x float]* %arraydecay6, [4 x float]* %arraydecay7, [4 x float]* %arraydecay16) #5
  br label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %if.then5, %if.else, %for.cond21.preheader
  %indvar = phi i64 [ %indvar.next, %for.cond21.preheader ], [ 0, %if.else ], [ 0, %if.then5 ]
  %scevgep = getelementptr %struct.t_3dview* %view, i64 0, i32 4, i64 %indvar, i64 0
  %scevgep57 = bitcast float* %scevgep to i8*
  %scevgep58 = getelementptr [4 x [4 x float]]* %m4, i64 0, i64 %indvar, i64 0
  %scevgep5859 = bitcast float* %scevgep58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep57, i8* %scevgep5859, i64 16, i32 4, i1 false)
  %indvar.next = add i64 %indvar, 1
  %lftr.wideiv = trunc i64 %indvar.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end38, label %for.cond21.preheader

for.end38:                                        ; preds = %for.cond21.preheader
  call void @calculate_view(%struct.t_3dview* %view) #5
  call void @llvm.lifetime.end(i64 64, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @translate_view(%struct.t_3dview* nocapture %view, i32 %axis, i32 %bPositive) #0 {
entry:
  %tobool = icmp eq i32 %bPositive, 0
  %idxprom = sext i32 %axis to i64
  %arrayidx2 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 %idxprom, i64 %idxprom
  %0 = load float* %arrayidx2, align 4, !tbaa !0
  %div = fmul float %0, 1.250000e-01
  %arrayidx4 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 %idxprom
  %1 = load float* %arrayidx4, align 4, !tbaa !0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add = fadd float %1, %div
  br label %if.end

if.else:                                          ; preds = %entry
  %sub = fsub float %1, %div
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi float [ %sub, %if.else ], [ %add, %if.then ]
  store float %storemerge, float* %arrayidx4, align 4, !tbaa !0
  tail call void @calculate_view(%struct.t_3dview* %view) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @reset_view(%struct.t_3dview* %view) #0 {
entry:
  %sc_x.i = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 5
  store float 4.000000e+00, float* %sc_x.i, align 4, !tbaa !0
  %sc_y.i = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 6
  store float 4.000000e+00, float* %sc_y.i, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 0
  store float 0.000000e+00, float* %arraydecay, align 4, !tbaa !0
  %arrayidx1.i = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !0
  %arraydecay1 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 0
  tail call void @calc_box_center([3 x float]* %arraydecay1, float* %arraydecay2) #4
  %arrayidx4 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0, i64 0
  %0 = load float* %arrayidx4, align 4, !tbaa !0
  %arrayidx7 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 1, i64 1
  %1 = load float* %arrayidx7, align 4, !tbaa !0
  %cmp = fcmp ogt float %0, %1
  %. = select i1 %cmp, float %0, float %1
  %conv14 = fmul float %., 3.000000e+00
  store float %conv14, float* %arrayidx2.i, align 4, !tbaa !0
  %call = tail call i32 @zoom_3d(%struct.t_3dview* %view, float 1.000000e+00) #5
  %arrayidx18 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 3
  store float 0.000000e+00, float* %arrayidx18, align 4, !tbaa !0
  %arrayidx20 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 3
  store float 0.000000e+00, float* %arrayidx20, align 4, !tbaa !0
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc11.i, %entry
  %indvars.iv21.i = phi i64 [ 0, %entry ], [ %indvars.iv.next22.i, %for.inc11.i ]
  %2 = trunc i64 %indvars.iv21.i to i32
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %3 = trunc i64 %indvars.iv.i to i32
  %cmp4.i = icmp eq i32 %2, %3
  %arrayidx6.i = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 4, i64 %indvars.iv21.i, i64 %indvars.iv.i
  %..i = select i1 %cmp4.i, float 1.000000e+00, float 0.000000e+00
  store float %..i, float* %arrayidx6.i, align 4, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc11.i, label %for.body3.i

for.inc11.i:                                      ; preds = %for.body3.i
  %indvars.iv.next22.i = add i64 %indvars.iv21.i, 1
  %lftr.wideiv34 = trunc i64 %indvars.iv.next22.i to i32
  %exitcond35 = icmp eq i32 %lftr.wideiv34, 4
  br i1 %exitcond35, label %unity_m4.exit, label %for.cond1.preheader.i

unity_m4.exit:                                    ; preds = %for.inc11.i
  tail call void @calculate_view(%struct.t_3dview* %view) #5
  ret void
}

; Function Attrs: optsize
declare void @calc_box_center([3 x float]*, float*) #2

; Function Attrs: nounwind optsize uwtable
define %struct.t_3dview* @init_view([3 x float]* nocapture %box) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str7, i64 0, i64 0), i32 305, i32 1, i32 204) #4
  %box8 = bitcast i8* %call to [3 x [3 x float]]*
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc11, %entry
  %indvars.iv24 = phi i64 [ 0, %entry ], [ %indvars.iv.next25, %for.inc11 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx5 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv24, i64 %indvars.iv
  %0 = load float* %arrayidx5, align 4, !tbaa !0
  %arrayidx10 = getelementptr inbounds [3 x [3 x float]]* %box8, i64 0, i64 %indvars.iv24, i64 %indvars.iv
  store float %0, float* %arrayidx10, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc11, label %for.body3

for.inc11:                                        ; preds = %for.body3
  %indvars.iv.next25 = add i64 %indvars.iv24, 1
  %lftr.wideiv26 = trunc i64 %indvars.iv.next25 to i32
  %exitcond27 = icmp eq i32 %lftr.wideiv26, 3
  br i1 %exitcond27, label %for.end13, label %for.cond1.preheader

for.end13:                                        ; preds = %for.inc11
  %1 = bitcast i8* %call to %struct.t_3dview*
  tail call void @reset_view(%struct.t_3dview* %1) #5
  ret %struct.t_3dview* %1
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
