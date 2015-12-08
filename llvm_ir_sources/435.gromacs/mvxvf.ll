; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/mvxvf.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_nrnb = type { [129 x double] }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/mvxvf.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @move_rvecs(%struct._IO_FILE* nocapture %log, i32 %bForward, i32 %bSum, i32 %left, i32 %right, [3 x float]* %vecs, [3 x float]* %buf, i32 %shift, %struct.t_nsborder* %nsb, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  %tobool = icmp ne i32 %bSum, 0
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %0 = load i32* %nodeid, align 4, !tbaa !0
  br i1 %tobool, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %shift1 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5
  %1 = load i32* %shift1, align 4, !tbaa !0
  %add = add nsw i32 %1, %0
  %nnodes = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %2 = load i32* %nnodes, align 4, !tbaa !0
  %rem = srem i32 %add, %2
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.then
  %cur.1.ph = phi i32 [ %rem, %if.then ], [ %0, %entry ]
  %cmp285 = icmp sgt i32 %shift, 0
  br i1 %cmp285, label %for.body.lr.ph, label %if.end199

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool5 = icmp eq i32 %bForward, 0
  %nnodes21 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %tobool40 = icmp ne i32 %bForward, 0
  br label %for.body

for.body:                                         ; preds = %for.inc192, %for.body.lr.ph
  %nsum.0290 = phi i32 [ 0, %for.body.lr.ph ], [ %nsum.1, %for.inc192 ]
  %cur.1289 = phi i32 [ %cur.1.ph, %for.body.lr.ph ], [ %cur.2, %for.inc192 ]
  %j1.0288 = phi i32 [ 391, %for.body.lr.ph ], [ %j1.2, %for.inc192 ]
  %j0.0287 = phi i32 [ 137, %for.body.lr.ph ], [ %j0.2, %for.inc192 ]
  %i.0286 = phi i32 [ 0, %for.body.lr.ph ], [ %inc193, %for.inc192 ]
  br i1 %tobool, label %if.then4, label %if.end39

if.then4:                                         ; preds = %for.body
  br i1 %tobool5, label %if.else19, label %if.then6

if.then6:                                         ; preds = %if.then4
  %sub = add nsw i32 %cur.1289, -1
  %3 = load i32* %nnodes21, align 4, !tbaa !0
  %add8 = add nsw i32 %sub, %3
  %rem10 = srem i32 %add8, %3
  %idxprom = sext i32 %rem10 to i64
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom
  %4 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx17 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom
  %5 = load i32* %arrayidx17, align 4, !tbaa !0
  %add18 = add nsw i32 %5, %4
  br label %if.end33

if.else19:                                        ; preds = %if.then4
  %add20 = add nsw i32 %cur.1289, 1
  %6 = load i32* %nnodes21, align 4, !tbaa !0
  %rem22 = srem i32 %add20, %6
  %idxprom23 = sext i32 %rem22 to i64
  %arrayidx25 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom23
  %7 = load i32* %arrayidx25, align 4, !tbaa !0
  %arrayidx31 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom23
  %8 = load i32* %arrayidx31, align 4, !tbaa !0
  %add32 = add nsw i32 %8, %7
  br label %if.end33

if.end33:                                         ; preds = %if.else19, %if.then6
  %j0.1 = phi i32 [ %4, %if.then6 ], [ %7, %if.else19 ]
  %j1.1 = phi i32 [ %add18, %if.then6 ], [ %add32, %if.else19 ]
  %cmp35281 = icmp slt i32 %j0.1, %j1.1
  br i1 %cmp35281, label %for.body36.lr.ph, label %if.end39

for.body36.lr.ph:                                 ; preds = %if.end33
  %9 = sext i32 %j0.1 to i64
  br label %for.body36

for.body36:                                       ; preds = %for.body36.lr.ph, %for.body36
  %indvars.iv = phi i64 [ %9, %for.body36.lr.ph ], [ %indvars.iv.next, %for.body36 ]
  %arraydecay = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv, i64 0
  store float 0.000000e+00, float* %arraydecay, align 4, !tbaa !3
  %arrayidx1.i = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp35 = icmp slt i32 %10, %j1.1
  br i1 %cmp35, label %for.body36, label %if.end39

if.end39:                                         ; preds = %if.end33, %for.body36, %for.body
  %j0.2 = phi i32 [ %j0.0287, %for.body ], [ %j0.1, %for.body36 ], [ %j0.1, %if.end33 ]
  %j1.2 = phi i32 [ %j1.0288, %for.body ], [ %j1.1, %for.body36 ], [ %j1.1, %if.end33 ]
  %idxprom44 = sext i32 %cur.1289 to i64
  %arrayidx46 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom44
  %11 = load i32* %arrayidx46, align 4, !tbaa !0
  %idxprom47 = sext i32 %11 to i64
  %arraydecay49 = getelementptr inbounds [3 x float]* %vecs, i64 %idxprom47, i64 0
  %arrayidx52 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom44
  %12 = load i32* %arrayidx52, align 4, !tbaa !0
  %mul = mul nsw i32 %12, 3
  br i1 %tobool40, label %if.then41, label %if.else105

if.then41:                                        ; preds = %if.end39
  %sub53 = add nsw i32 %cur.1289, -1
  %13 = load i32* %nnodes21, align 4, !tbaa !0
  %add55 = add nsw i32 %sub53, %13
  %rem57 = srem i32 %add55, %13
  %idxprom58 = sext i32 %rem57 to i64
  %arrayidx60 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom58
  %14 = load i32* %arrayidx60, align 4, !tbaa !0
  %idxprom61 = sext i32 %14 to i64
  br i1 %tobool, label %if.then43, label %if.else73

if.then43:                                        ; preds = %if.then41
  %arraydecay63 = getelementptr inbounds [3 x float]* %buf, i64 %idxprom61, i64 0
  %arrayidx71 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom58
  %15 = load i32* %arrayidx71, align 4, !tbaa !0
  %mul72 = mul nsw i32 %15, 3
  tail call void @gmx_tx_rx_real(i32 %right, float* %arraydecay49, i32 %mul, i32 %left, float* %arraydecay63, i32 %mul72) #2
  br label %if.end104

if.else73:                                        ; preds = %if.then41
  %arraydecay94 = getelementptr inbounds [3 x float]* %vecs, i64 %idxprom61, i64 0
  %arrayidx102 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom58
  %16 = load i32* %arrayidx102, align 4, !tbaa !0
  %mul103 = mul nsw i32 %16, 3
  tail call void @gmx_tx_rx_real(i32 %right, float* %arraydecay49, i32 %mul, i32 %left, float* %arraydecay94, i32 %mul103) #2
  br label %if.end104

if.end104:                                        ; preds = %if.else73, %if.then43
  tail call void @gmx_wait(i32 %right, i32 %left) #2
  br label %if.end162

if.else105:                                       ; preds = %if.end39
  %add118 = add nsw i32 %cur.1289, 1
  %17 = load i32* %nnodes21, align 4, !tbaa !0
  %rem120 = srem i32 %add118, %17
  %idxprom121 = sext i32 %rem120 to i64
  %arrayidx123 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom121
  %18 = load i32* %arrayidx123, align 4, !tbaa !0
  %idxprom124 = sext i32 %18 to i64
  br i1 %tobool, label %if.then107, label %if.else134

if.then107:                                       ; preds = %if.else105
  %arraydecay126 = getelementptr inbounds [3 x float]* %buf, i64 %idxprom124, i64 0
  %arrayidx132 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom121
  %19 = load i32* %arrayidx132, align 4, !tbaa !0
  %mul133 = mul nsw i32 %19, 3
  tail call void @gmx_tx_rx_real(i32 %left, float* %arraydecay49, i32 %mul, i32 %right, float* %arraydecay126, i32 %mul133) #2
  br label %if.end161

if.else134:                                       ; preds = %if.else105
  %arraydecay153 = getelementptr inbounds [3 x float]* %vecs, i64 %idxprom124, i64 0
  %arrayidx159 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom121
  %20 = load i32* %arrayidx159, align 4, !tbaa !0
  %mul160 = mul nsw i32 %20, 3
  tail call void @gmx_tx_rx_real(i32 %left, float* %arraydecay49, i32 %mul, i32 %right, float* %arraydecay153, i32 %mul160) #2
  br label %if.end161

if.end161:                                        ; preds = %if.else134, %if.then107
  tail call void @gmx_wait(i32 %left, i32 %right) #2
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.end104
  br i1 %tobool, label %for.cond165.preheader, label %if.end179

for.cond165.preheader:                            ; preds = %if.end162
  %cmp166283 = icmp slt i32 %j0.2, %j1.2
  br i1 %cmp166283, label %for.body167.lr.ph, label %for.end176

for.body167.lr.ph:                                ; preds = %for.cond165.preheader
  %21 = sext i32 %j0.2 to i64
  br label %for.body167

for.body167:                                      ; preds = %for.body167.lr.ph, %for.body167
  %indvars.iv291 = phi i64 [ %21, %for.body167.lr.ph ], [ %indvars.iv.next292, %for.body167 ]
  %arraydecay170 = getelementptr inbounds [3 x float]* %vecs, i64 %indvars.iv291, i64 0
  %arraydecay173 = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv291, i64 0
  %22 = load float* %arraydecay170, align 4, !tbaa !3
  %23 = load float* %arraydecay173, align 4, !tbaa !3
  %add.i = fadd float %22, %23
  %arrayidx2.i280 = getelementptr inbounds [3 x float]* %vecs, i64 %indvars.iv291, i64 1
  %24 = load float* %arrayidx2.i280, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv291, i64 1
  %25 = load float* %arrayidx3.i, align 4, !tbaa !3
  %add4.i = fadd float %24, %25
  %arrayidx5.i = getelementptr inbounds [3 x float]* %vecs, i64 %indvars.iv291, i64 2
  %26 = load float* %arrayidx5.i, align 4, !tbaa !3
  %arrayidx6.i = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv291, i64 2
  %27 = load float* %arrayidx6.i, align 4, !tbaa !3
  %add7.i = fadd float %26, %27
  store float %add.i, float* %arraydecay170, align 4, !tbaa !3
  store float %add4.i, float* %arrayidx2.i280, align 4, !tbaa !3
  store float %add7.i, float* %arrayidx5.i, align 4, !tbaa !3
  %indvars.iv.next292 = add i64 %indvars.iv291, 1
  %28 = trunc i64 %indvars.iv.next292 to i32
  %cmp166 = icmp slt i32 %28, %j1.2
  br i1 %cmp166, label %for.body167, label %for.end176

for.end176:                                       ; preds = %for.body167, %for.cond165.preheader
  %sub177 = sub i32 %nsum.0290, %j0.2
  %add178 = add i32 %sub177, %j1.2
  br label %if.end179

if.end179:                                        ; preds = %for.end176, %if.end162
  %nsum.1 = phi i32 [ %add178, %for.end176 ], [ %nsum.0290, %if.end162 ]
  br i1 %tobool40, label %if.then181, label %if.else187

if.then181:                                       ; preds = %if.end179
  %sub182 = add nsw i32 %cur.1289, -1
  %29 = load i32* %nnodes21, align 4, !tbaa !0
  %add184 = add nsw i32 %sub182, %29
  %rem186 = srem i32 %add184, %29
  br label %for.inc192

if.else187:                                       ; preds = %if.end179
  %add188 = add nsw i32 %cur.1289, 1
  %30 = load i32* %nnodes21, align 4, !tbaa !0
  %rem190 = srem i32 %add188, %30
  br label %for.inc192

for.inc192:                                       ; preds = %if.then181, %if.else187
  %cur.2 = phi i32 [ %rem186, %if.then181 ], [ %rem190, %if.else187 ]
  %inc193 = add nsw i32 %i.0286, 1
  %exitcond = icmp eq i32 %inc193, %shift
  br i1 %exitcond, label %for.end194, label %for.body

for.end194:                                       ; preds = %for.inc192
  %cmp195 = icmp sgt i32 %nsum.1, 0
  br i1 %cmp195, label %if.then196, label %if.end199

if.then196:                                       ; preds = %for.end194
  %conv = sitofp i32 %nsum.1 to double
  %arrayidx197 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 91
  %31 = load double* %arrayidx197, align 8, !tbaa !4
  %add198 = fadd double %conv, %31
  store double %add198, double* %arrayidx197, align 8, !tbaa !4
  br label %if.end199

if.end199:                                        ; preds = %for.cond.preheader, %if.then196, %for.end194
  ret void
}

; Function Attrs: optsize
declare void @gmx_tx_rx_real(i32, float*, i32, i32, float*, i32) #1

; Function Attrs: optsize
declare void @gmx_wait(i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @move_x(%struct._IO_FILE* nocapture %log, i32 %left, i32 %right, [3 x float]* %x, %struct.t_nsborder* %nsb, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  %shift = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5
  %0 = load i32* %shift, align 4, !tbaa !0
  tail call void @move_rvecs(%struct._IO_FILE* undef, i32 0, i32 0, i32 %left, i32 %right, [3 x float]* %x, [3 x float]* null, i32 %0, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #3
  %bshift = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6
  %1 = load i32* %bshift, align 4, !tbaa !0
  tail call void @move_rvecs(%struct._IO_FILE* undef, i32 1, i32 0, i32 %left, i32 %right, [3 x float]* %x, [3 x float]* null, i32 %1, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #3
  tail call void @_where(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 128) #2
  ret void
}

; Function Attrs: optsize
declare void @_where(i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @move_f(%struct._IO_FILE* nocapture %log, i32 %left, i32 %right, [3 x float]* %f, [3 x float]* %fadd, %struct.t_nsborder* %nsb, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  %shift = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5
  %0 = load i32* %shift, align 4, !tbaa !0
  tail call void @move_rvecs(%struct._IO_FILE* undef, i32 1, i32 1, i32 %left, i32 %right, [3 x float]* %f, [3 x float]* %fadd, i32 %0, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #3
  %bshift = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6
  %1 = load i32* %bshift, align 4, !tbaa !0
  tail call void @move_rvecs(%struct._IO_FILE* undef, i32 0, i32 1, i32 %left, i32 %right, [3 x float]* %f, [3 x float]* %fadd, i32 %1, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #3
  tail call void @_where(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 138) #2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @move_cgcm(%struct._IO_FILE* nocapture %log, %struct.t_commrec* nocapture %cr, [3 x float]* %cg_cm, i32* nocapture %nload) #0 {
entry:
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %0 = load i32* %nnodes, align 4, !tbaa !0
  %sub63 = add nsw i32 %0, -1
  %cmp64 = icmp sgt i32 %sub63, 0
  br i1 %cmp64, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %1 = load i32* %nodeid, align 4, !tbaa !0
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cond.end20
  %cur.066 = phi i32 [ %1, %for.body.lr.ph ], [ %rem38, %cond.end20 ]
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end20 ]
  %cmp1 = icmp eq i32 %cur.066, 0
  br i1 %cmp1, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.body
  %sub2 = add nsw i32 %cur.066, -1
  %idxprom = sext i32 %sub2 to i64
  %arrayidx = getelementptr inbounds i32* %nload, i64 %idxprom
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi i32 [ %2, %cond.false ], [ 0, %for.body ]
  %idxprom3 = sext i32 %cur.066 to i64
  %arrayidx4 = getelementptr inbounds i32* %nload, i64 %idxprom3
  %3 = load i32* %arrayidx4, align 4, !tbaa !0
  %sub5 = sub nsw i32 %3, %cond
  %4 = load i32* %left, align 4, !tbaa !0
  %idxprom6 = sext i32 %cond to i64
  %arraydecay = getelementptr inbounds [3 x float]* %cg_cm, i64 %idxprom6, i64 0
  %5 = bitcast float* %arraydecay to i8*
  %mul = mul i32 %sub5, 12
  tail call void @gmx_tx(i32 %4, i8* %5, i32 %mul) #2
  %add = add nsw i32 %cur.066, 1
  %6 = load i32* %nnodes, align 4, !tbaa !0
  %rem = srem i32 %add, %6
  %cmp10 = icmp eq i32 %rem, 0
  br i1 %cmp10, label %cond.end20, label %cond.false13

cond.false13:                                     ; preds = %cond.end
  %sub17 = add nsw i32 %rem, -1
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds i32* %nload, i64 %idxprom18
  %7 = load i32* %arrayidx19, align 4, !tbaa !0
  br label %cond.end20

cond.end20:                                       ; preds = %cond.end, %cond.false13
  %cond21 = phi i32 [ %7, %cond.false13 ], [ 0, %cond.end ]
  %idxprom25 = sext i32 %rem to i64
  %arrayidx26 = getelementptr inbounds i32* %nload, i64 %idxprom25
  %8 = load i32* %arrayidx26, align 4, !tbaa !0
  %sub27 = sub nsw i32 %8, %cond21
  %9 = load i32* %right, align 4, !tbaa !0
  %idxprom28 = sext i32 %cond21 to i64
  %arraydecay30 = getelementptr inbounds [3 x float]* %cg_cm, i64 %idxprom28, i64 0
  %10 = bitcast float* %arraydecay30 to i8*
  %mul32 = mul i32 %sub27, 12
  tail call void @gmx_rx(i32 %9, i8* %10, i32 %mul32) #2
  %11 = load i32* %left, align 4, !tbaa !0
  tail call void @gmx_tx_wait(i32 %11) #2
  %12 = load i32* %right, align 4, !tbaa !0
  tail call void @gmx_rx_wait(i32 %12) #2
  %13 = load i32* %nnodes, align 4, !tbaa !0
  %rem38 = srem i32 %add, %13
  %inc = add nsw i32 %i.065, 1
  %sub = add nsw i32 %13, -1
  %cmp = icmp slt i32 %inc, %sub
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cond.end20, %entry
  ret void
}

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_tx_wait(i32) #1

; Function Attrs: optsize
declare void @gmx_rx_wait(i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
attributes #3 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
