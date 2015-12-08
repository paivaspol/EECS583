; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [119 x i8] c"Only triclinic boxes with the first vector parallel to the x-axis and the second vector in the xy-plane are supported.\00", align 1
@.str1 = private unnamed_addr constant [29 x i8] c"Triclinic box is too skewed.\00", align 1
@init_pbc.nalloc = internal unnamed_addr global i32 0, align 4
@stderr = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [13 x i8] c"Warning: %s\0A\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"         Box\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"         Can not fix pbc.\0A\00", align 1
@bSupported = internal unnamed_addr global i1 false
@gl_fbox = internal global [3 x float] zeroinitializer, align 4
@gl_hbox = internal unnamed_addr global [3 x float] zeroinitializer, align 4
@gl_mhbox = internal unnamed_addr global [3 x float] zeroinitializer, align 4
@bTriclinic = internal unnamed_addr global i32 0, align 4
@gl_box = internal global [3 x [3 x float]] zeroinitializer, align 16
@sure_dist2 = internal unnamed_addr global float 0.000000e+00, align 4
@ntric_vec = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [9 x i8] c"tric_vec\00", align 1
@.str6 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c\00", align 1
@tric_vec = internal unnamed_addr global [3 x float]* null, align 8
@bInit = internal unnamed_addr global i1 false
@.str7 = private unnamed_addr constant [30 x i8] c"pbc_dx called before init_pbc\00", align 1
@stdlog = external global %struct._IO_FILE*
@.str8 = private unnamed_addr constant [15 x i8] c"n=%d, test=%d\0A\00", align 1
@compact_unitcell_edges.edge = internal global [72 x i32] zeroinitializer, align 16
@compact_unitcell_edges.hexcon = internal unnamed_addr constant [24 x i32] [i32 0, i32 9, i32 1, i32 19, i32 2, i32 15, i32 3, i32 21, i32 4, i32 17, i32 5, i32 11, i32 6, i32 23, i32 7, i32 13, i32 8, i32 20, i32 10, i32 18, i32 12, i32 16, i32 14, i32 22], align 16

; Function Attrs: nounwind optsize readonly uwtable
define i8* @check_box([3 x float]* nocapture %box) #0 {
entry:
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %0 = load float* %arrayidx1, align 4, !tbaa !0
  %fabsf = tail call float @fabsf(float %0) #5
  %1 = fpext float %fabsf to double
  %cmp = fcmp ogt double %1, 1.200000e-38
  br i1 %cmp, label %if.end49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %2 = load float* %arrayidx4, align 4, !tbaa !0
  %fabsf58 = tail call float @fabsf(float %2) #5
  %3 = fpext float %fabsf58 to double
  %cmp7 = fcmp ogt double %3, 1.200000e-38
  br i1 %cmp7, label %if.end49, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %arrayidx11 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %4 = load float* %arrayidx11, align 4, !tbaa !0
  %fabsf59 = tail call float @fabsf(float %4) #5
  %5 = fpext float %fabsf59 to double
  %cmp14 = fcmp ogt double %5, 1.200000e-38
  br i1 %cmp14, label %if.end49, label %if.else

if.else:                                          ; preds = %lor.lhs.false9
  %arrayidx17 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %6 = load float* %arrayidx17, align 4, !tbaa !0
  %fabsf60 = tail call float @fabsf(float %6) #5
  %7 = fpext float %fabsf60 to double
  %arrayidx21 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %8 = load float* %arrayidx21, align 4, !tbaa !0
  %conv22 = fpext float %8 to double
  %mul = fmul double %conv22, 5.001000e-01
  %cmp23 = fcmp ogt double %7, %mul
  br i1 %cmp23, label %if.end49, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.else
  %arrayidx27 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %9 = load float* %arrayidx27, align 4, !tbaa !0
  %fabsf61 = tail call float @fabsf(float %9) #5
  %10 = fpext float %fabsf61 to double
  %cmp34 = fcmp ogt double %10, %mul
  br i1 %cmp34, label %if.end49, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false25
  %arrayidx38 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %11 = load float* %arrayidx38, align 4, !tbaa !0
  %fabsf62 = tail call float @fabsf(float %11) #5
  %12 = fpext float %fabsf62 to double
  %arrayidx42 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %13 = load float* %arrayidx42, align 4, !tbaa !0
  %conv43 = fpext float %13 to double
  %mul44 = fmul double %conv43, 5.001000e-01
  %cmp45 = fcmp ogt double %12, %mul44
  br i1 %cmp45, label %if.end49, label %if.else48

if.else48:                                        ; preds = %lor.lhs.false36
  br label %if.end49

if.end49:                                         ; preds = %if.else, %lor.lhs.false25, %lor.lhs.false36, %entry, %lor.lhs.false, %lor.lhs.false9, %if.else48
  %ptr.0 = phi i8* [ null, %if.else48 ], [ getelementptr inbounds ([119 x i8]* @.str, i64 0, i64 0), %lor.lhs.false9 ], [ getelementptr inbounds ([119 x i8]* @.str, i64 0, i64 0), %lor.lhs.false ], [ getelementptr inbounds ([119 x i8]* @.str, i64 0, i64 0), %entry ], [ getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), %lor.lhs.false36 ], [ getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), %lor.lhs.false25 ], [ getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), %if.else ]
  ret i8* %ptr.0
}

; Function Attrs: nounwind optsize uwtable
define void @init_pbc([3 x float]* %box) #1 {
entry:
  %try = alloca [3 x float], align 4
  %call = call i8* @check_box([3 x float]* %box) #6
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i8* %call) #7
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  call void @pr_rvecs(%struct._IO_FILE* %1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), [3 x float]* %box, i32 3) #7
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %2)
  store i1 false, i1* @bSupported, align 1
  br label %if.end159

if.else:                                          ; preds = %entry
  store i1 true, i1* @bSupported, align 1
  br label %for.body

for.body:                                         ; preds = %for.body, %if.else
  %indvars.iv229 = phi i64 [ 0, %if.else ], [ %indvars.iv.next230, %for.body ]
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv229, i64 %indvars.iv229
  %4 = load float* %arrayidx4, align 4, !tbaa !0
  %arrayidx6 = getelementptr inbounds [3 x float]* @gl_fbox, i64 0, i64 %indvars.iv229
  store float %4, float* %arrayidx6, align 4, !tbaa !0
  %conv9 = fmul float %4, 5.000000e-01
  %arrayidx11 = getelementptr inbounds [3 x float]* @gl_hbox, i64 0, i64 %indvars.iv229
  store float %conv9, float* %arrayidx11, align 4, !tbaa !0
  %sub = fsub float -0.000000e+00, %conv9
  %arrayidx15 = getelementptr inbounds [3 x float]* @gl_mhbox, i64 0, i64 %indvars.iv229
  store float %sub, float* %arrayidx15, align 4, !tbaa !0
  %indvars.iv.next230 = add i64 %indvars.iv229, 1
  %lftr.wideiv231 = trunc i64 %indvars.iv.next230 to i32
  %exitcond232 = icmp eq i32 %lftr.wideiv231, 3
  br i1 %exitcond232, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %arrayidx17 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %5 = load float* %arrayidx17, align 4, !tbaa !0
  %fabsf = call float @fabsf(float %5) #5
  %6 = fpext float %fabsf to double
  %cmp20 = fcmp ogt double %6, 1.200000e-38
  %arraydecay8.i.pre.pre = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  br i1 %cmp20, label %lor.end.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %7 = load float* %arraydecay8.i.pre.pre, align 4, !tbaa !0
  %fabsf200 = call float @fabsf(float %7) #5
  %8 = fpext float %fabsf200 to double
  %cmp26 = fcmp ogt double %8, 1.200000e-38
  br i1 %cmp26, label %lor.end.thread, label %lor.end

lor.end.thread:                                   ; preds = %for.end, %lor.lhs.false
  store i32 1, i32* @bTriclinic, align 4, !tbaa !4
  %arrayidx2.i1.i.pre = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  br label %if.then35

lor.end:                                          ; preds = %lor.lhs.false
  %arrayidx29 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %9 = load float* %arrayidx29, align 4, !tbaa !0
  %fabsf201 = call float @fabsf(float %9) #5
  %10 = fpext float %fabsf201 to double
  %cmp32 = fcmp ogt double %10, 1.200000e-38
  %lor.ext = zext i1 %cmp32 to i32
  store i32 %lor.ext, i32* @bTriclinic, align 4, !tbaa !4
  br i1 %cmp32, label %if.then35, label %if.end159

if.then35:                                        ; preds = %lor.end.thread, %lor.end
  %arrayidx2.i1.i.pre-phi = phi float* [ %arrayidx2.i1.i.pre, %lor.end.thread ], [ %arrayidx29, %lor.end ]
  %arraydecay.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %11 = load float* %arraydecay.i, align 4, !tbaa !0
  store float %11, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 0, i64 0), align 16, !tbaa !0
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %12 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  store float %12, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 0, i64 1), align 4, !tbaa !0
  %arrayidx4.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %13 = load float* %arrayidx4.i.i, align 4, !tbaa !0
  store float %13, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 0, i64 2), align 8, !tbaa !0
  %14 = load float* %arrayidx17, align 4, !tbaa !0
  store float %14, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 1, i64 0), align 4, !tbaa !0
  %arrayidx2.i3.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %15 = load float* %arrayidx2.i3.i, align 4, !tbaa !0
  store float %15, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 1, i64 1), align 4, !tbaa !0
  %arrayidx4.i4.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %16 = load float* %arrayidx4.i4.i, align 4, !tbaa !0
  store float %16, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 1, i64 2), align 4, !tbaa !0
  %17 = load float* %arraydecay8.i.pre.pre, align 4, !tbaa !0
  store float %17, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 2, i64 0), align 8, !tbaa !0
  %18 = load float* %arrayidx2.i1.i.pre-phi, align 4, !tbaa !0
  store float %18, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 2, i64 1), align 4, !tbaa !0
  %arrayidx4.i2.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %19 = load float* %arrayidx4.i2.i, align 4, !tbaa !0
  store float %19, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 2, i64 2), align 8, !tbaa !0
  %20 = load float* %arraydecay.i, align 4, !tbaa !0
  %mul.i219 = fmul float %20, %20
  %21 = load float* %arrayidx2.i3.i, align 4, !tbaa !0
  %mul.i218 = fmul float %21, %21
  %22 = load float* %arrayidx4.i2.i, align 4, !tbaa !0
  %mul.i217 = fmul float %22, %22
  %cmp45 = fcmp olt float %mul.i218, %mul.i217
  %cond = select i1 %cmp45, float %mul.i218, float %mul.i217
  %cmp53 = fcmp olt float %mul.i219, %cond
  %brmerge = or i1 %cmp53, %cmp45
  %mul.i219.mux = select i1 %cmp53, float %mul.i219, float %mul.i218
  %cond79 = select i1 %brmerge, float %mul.i219.mux, float %mul.i217
  %conv82 = fmul float %cond79, 2.500000e-01
  store float %conv82, float* @sure_dist2, align 4, !tbaa !0
  %23 = load float* getelementptr inbounds ([3 x float]* @gl_fbox, i64 0, i64 0), align 4, !tbaa !0
  %mul.i205 = fmul float %23, %23
  %24 = load float* getelementptr inbounds ([3 x float]* @gl_fbox, i64 0, i64 1), align 4, !tbaa !0
  %mul4.i206 = fmul float %24, %24
  %add.i207 = fadd float %mul.i205, %mul4.i206
  %25 = load float* getelementptr inbounds ([3 x float]* @gl_fbox, i64 0, i64 2), align 4, !tbaa !0
  %mul7.i208 = fmul float %25, %25
  %add8.i209 = fadd float %add.i207, %mul7.i208
  store i32 0, i32* @ntric_vec, align 4, !tbaa !4
  %arraydecay = getelementptr inbounds [3 x float]* %try, i64 0, i64 0
  %arrayidx2.i203 = getelementptr inbounds [3 x float]* %try, i64 0, i64 1
  %arrayidx5.i204 = getelementptr inbounds [3 x float]* %try, i64 0, i64 2
  br label %for.cond88.preheader

for.cond88.preheader:                             ; preds = %for.inc155, %if.then35
  %26 = phi i32 [ 0, %if.then35 ], [ %44, %for.inc155 ]
  %i.1224 = phi i32 [ -2, %if.then35 ], [ %inc156, %for.inc155 ]
  %conv109 = sitofp i32 %i.1224 to float
  br label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %for.inc152, %for.cond88.preheader
  %27 = phi i32 [ %26, %for.cond88.preheader ], [ %44, %for.inc152 ]
  %j.0223 = phi i32 [ -2, %for.cond88.preheader ], [ %inc153, %for.inc152 ]
  %28 = or i32 %j.0223, %i.1224
  %conv114 = sitofp i32 %j.0223 to float
  br label %for.body95

for.body95:                                       ; preds = %for.inc149, %for.cond92.preheader
  %29 = phi i32 [ %27, %for.cond92.preheader ], [ %44, %for.inc149 ]
  %k.0222 = phi i32 [ -2, %for.cond92.preheader ], [ %inc150, %for.inc149 ]
  %30 = or i32 %28, %k.0222
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %for.inc149, label %for.cond105.preheader

for.cond105.preheader:                            ; preds = %for.body95
  %conv119 = sitofp i32 %k.0222 to float
  br label %for.body108

for.body108:                                      ; preds = %for.body108, %for.cond105.preheader
  %indvars.iv = phi i64 [ 0, %for.cond105.preheader ], [ %indvars.iv.next, %for.body108 ]
  %arrayidx112 = getelementptr inbounds [3 x float]* %box, i64 0, i64 %indvars.iv
  %32 = load float* %arrayidx112, align 4, !tbaa !0
  %mul113 = fmul float %conv109, %32
  %arrayidx117 = getelementptr inbounds [3 x float]* %box, i64 1, i64 %indvars.iv
  %33 = load float* %arrayidx117, align 4, !tbaa !0
  %mul118 = fmul float %conv114, %33
  %add = fadd float %mul113, %mul118
  %arrayidx122 = getelementptr inbounds [3 x float]* %box, i64 2, i64 %indvars.iv
  %34 = load float* %arrayidx122, align 4, !tbaa !0
  %mul123 = fmul float %conv119, %34
  %add124 = fadd float %add, %mul123
  %arrayidx126 = getelementptr inbounds [3 x float]* %try, i64 0, i64 %indvars.iv
  store float %add124, float* %arrayidx126, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end129, label %for.body108

for.end129:                                       ; preds = %for.body108
  %35 = load float* %arraydecay, align 4, !tbaa !0
  %mul.i = fmul float %35, %35
  %36 = load float* %arrayidx2.i203, align 4, !tbaa !0
  %mul4.i = fmul float %36, %36
  %add.i = fadd float %mul.i, %mul4.i
  %37 = load float* %arrayidx5.i204, align 4, !tbaa !0
  %mul7.i = fmul float %37, %37
  %add8.i = fadd float %add.i, %mul7.i
  %cmp131 = fcmp olt float %add8.i, %add8.i209
  br i1 %cmp131, label %if.then133, label %for.inc149

if.then133:                                       ; preds = %for.end129
  %38 = load i32* @init_pbc.nalloc, align 4, !tbaa !4
  %cmp134 = icmp slt i32 %29, %38
  br i1 %cmp134, label %if.then133.if.end_crit_edge, label %if.then136

if.then133.if.end_crit_edge:                      ; preds = %if.then133
  %.pre233 = load [3 x float]** @tric_vec, align 8, !tbaa !3
  br label %if.end

if.then136:                                       ; preds = %if.then133
  %add137 = add nsw i32 %38, 20
  store i32 %add137, i32* @init_pbc.nalloc, align 4, !tbaa !4
  %39 = load [3 x float]** @tric_vec, align 8, !tbaa !3
  %40 = bitcast [3 x float]* %39 to i8*
  %mul139 = mul i32 %add137, 12
  %call141 = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str6, i64 0, i64 0), i32 119, i8* %40, i32 %mul139) #7
  %41 = bitcast i8* %call141 to [3 x float]*
  store [3 x float]* %41, [3 x float]** @tric_vec, align 8, !tbaa !3
  %.pre = load i32* @ntric_vec, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then133.if.end_crit_edge, %if.then136
  %42 = phi [3 x float]* [ %.pre233, %if.then133.if.end_crit_edge ], [ %41, %if.then136 ]
  %43 = phi i32 [ %29, %if.then133.if.end_crit_edge ], [ %.pre, %if.then136 ]
  %idxprom143 = sext i32 %43 to i64
  %arraydecay145 = getelementptr inbounds [3 x float]* %42, i64 %idxprom143, i64 0
  store float %35, float* %arraydecay145, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %42, i64 %idxprom143, i64 1
  store float %36, float* %arrayidx3.i, align 4, !tbaa !0
  %arrayidx5.i = getelementptr inbounds [3 x float]* %42, i64 %idxprom143, i64 2
  store float %37, float* %arrayidx5.i, align 4, !tbaa !0
  %inc146 = add nsw i32 %43, 1
  store i32 %inc146, i32* @ntric_vec, align 4, !tbaa !4
  br label %for.inc149

for.inc149:                                       ; preds = %for.body95, %if.end, %for.end129
  %44 = phi i32 [ %29, %for.body95 ], [ %inc146, %if.end ], [ %29, %for.end129 ]
  %inc150 = add nsw i32 %k.0222, 1
  %exitcond226 = icmp eq i32 %inc150, 3
  br i1 %exitcond226, label %for.inc152, label %for.body95

for.inc152:                                       ; preds = %for.inc149
  %inc153 = add nsw i32 %j.0223, 1
  %exitcond227 = icmp eq i32 %inc153, 3
  br i1 %exitcond227, label %for.inc155, label %for.cond92.preheader

for.inc155:                                       ; preds = %for.inc152
  %inc156 = add nsw i32 %i.1224, 1
  %exitcond228 = icmp eq i32 %inc156, 3
  br i1 %exitcond228, label %if.end159, label %for.cond88.preheader

if.end159:                                        ; preds = %for.inc155, %lor.end, %if.then
  store i1 true, i1* @bInit, align 1
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @pr_rvecs(%struct._IO_FILE*, i32, i8*, [3 x float]*, i32) #3

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @pbc_dx(float* nocapture %x1, float* nocapture %x2, float* nocapture %dx) #1 {
entry:
  %.b128 = load i1* @bInit, align 1
  br i1 %.b128, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str7, i64 0, i64 0)) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load float* %x1, align 4, !tbaa !0
  %1 = load float* %x2, align 4, !tbaa !0
  %sub.i = fsub float %0, %1
  %arrayidx2.i = getelementptr inbounds float* %x1, i64 1
  %2 = load float* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds float* %x2, i64 1
  %3 = load float* %arrayidx3.i, align 4, !tbaa !0
  %sub4.i = fsub float %2, %3
  %arrayidx5.i = getelementptr inbounds float* %x1, i64 2
  %4 = load float* %arrayidx5.i, align 4, !tbaa !0
  %arrayidx6.i = getelementptr inbounds float* %x2, i64 2
  %5 = load float* %arrayidx6.i, align 4, !tbaa !0
  %sub7.i = fsub float %4, %5
  store float %sub.i, float* %dx, align 4, !tbaa !0
  %arrayidx9.i = getelementptr inbounds float* %dx, i64 1
  store float %sub4.i, float* %arrayidx9.i, align 4, !tbaa !0
  %arrayidx10.i = getelementptr inbounds float* %dx, i64 2
  store float %sub7.i, float* %arrayidx10.i, align 4, !tbaa !0
  %.b = load i1* @bSupported, align 1
  br i1 %.b, label %if.then2, label %if.end87

if.then2:                                         ; preds = %if.end
  %6 = load i32* @bTriclinic, align 4, !tbaa !4
  %tobool3 = icmp eq i32 %6, 0
  br i1 %tobool3, label %for.body57, label %for.body

for.body:                                         ; preds = %if.then2, %for.inc38.for.body_crit_edge
  %7 = phi float [ %.pre181, %for.inc38.for.body_crit_edge ], [ %sub7.i, %if.then2 ]
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %for.inc38.for.body_crit_edge ], [ 2, %if.then2 ]
  %arrayidx6 = getelementptr inbounds [3 x float]* @gl_hbox, i64 0, i64 %indvars.iv178
  %8 = load float* %arrayidx6, align 4, !tbaa !0
  %cmp7 = fcmp ogt float %7, %8
  br i1 %cmp7, label %for.body11, label %if.else

for.body11:                                       ; preds = %for.body, %for.body11.for.body11_crit_edge
  %9 = phi float [ %.pre183, %for.body11.for.body11_crit_edge ], [ %7, %for.body ]
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %for.body11.for.body11_crit_edge ], [ %indvars.iv178, %for.body ]
  %arrayidx15 = getelementptr inbounds [3 x [3 x float]]* @gl_box, i64 0, i64 %indvars.iv178, i64 %indvars.iv176
  %10 = load float* %arrayidx15, align 4, !tbaa !0
  %arrayidx17 = getelementptr inbounds float* %dx, i64 %indvars.iv176
  %sub = fsub float %9, %10
  store float %sub, float* %arrayidx17, align 4, !tbaa !0
  %indvars.iv.next177 = add i64 %indvars.iv176, -1
  %11 = trunc i64 %indvars.iv176 to i32
  %cmp10 = icmp sgt i32 %11, 0
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.inc38

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  %arrayidx17.phi.trans.insert = getelementptr inbounds float* %dx, i64 %indvars.iv.next177
  %.pre183 = load float* %arrayidx17.phi.trans.insert, align 4, !tbaa !0
  br label %for.body11

if.else:                                          ; preds = %for.body
  %arrayidx21 = getelementptr inbounds [3 x float]* @gl_mhbox, i64 0, i64 %indvars.iv178
  %12 = load float* %arrayidx21, align 4, !tbaa !0
  %cmp22 = fcmp ugt float %7, %12
  br i1 %cmp22, label %for.inc38, label %for.body26

for.body26:                                       ; preds = %if.else, %for.body26.for.body26_crit_edge
  %13 = phi float [ %.pre182, %for.body26.for.body26_crit_edge ], [ %7, %if.else ]
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %for.body26.for.body26_crit_edge ], [ %indvars.iv178, %if.else ]
  %arrayidx30 = getelementptr inbounds [3 x [3 x float]]* @gl_box, i64 0, i64 %indvars.iv178, i64 %indvars.iv172
  %14 = load float* %arrayidx30, align 4, !tbaa !0
  %arrayidx32 = getelementptr inbounds float* %dx, i64 %indvars.iv172
  %add = fadd float %14, %13
  store float %add, float* %arrayidx32, align 4, !tbaa !0
  %indvars.iv.next173 = add i64 %indvars.iv172, -1
  %15 = trunc i64 %indvars.iv172 to i32
  %cmp25 = icmp sgt i32 %15, 0
  br i1 %cmp25, label %for.body26.for.body26_crit_edge, label %for.inc38

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  %arrayidx32.phi.trans.insert = getelementptr inbounds float* %dx, i64 %indvars.iv.next173
  %.pre182 = load float* %arrayidx32.phi.trans.insert, align 4, !tbaa !0
  br label %for.body26

for.inc38:                                        ; preds = %for.body11, %for.body26, %if.else
  %indvars.iv.next179 = add i64 %indvars.iv178, -1
  %16 = trunc i64 %indvars.iv178 to i32
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %for.inc38.for.body_crit_edge, label %for.end40

for.inc38.for.body_crit_edge:                     ; preds = %for.inc38
  %arrayidx.phi.trans.insert = getelementptr inbounds float* %dx, i64 %indvars.iv.next179
  %.pre181 = load float* %arrayidx.phi.trans.insert, align 4, !tbaa !0
  br label %for.body

for.end40:                                        ; preds = %for.inc38
  %17 = load float* %dx, align 4, !tbaa !0
  %18 = load float* %arrayidx9.i, align 4, !tbaa !0
  %19 = load float* %arrayidx10.i, align 4, !tbaa !0
  %mul.i141 = fmul float %17, %17
  %mul4.i143 = fmul float %18, %18
  %add.i144 = fadd float %mul.i141, %mul4.i143
  %mul7.i146 = fmul float %19, %19
  %add8.i147 = fadd float %add.i144, %mul7.i146
  %20 = load float* @sure_dist2, align 4, !tbaa !0
  %cmp41157 = fcmp ogt float %add8.i147, %20
  %21 = load i32* @ntric_vec, align 4, !tbaa !4
  %cmp42158 = icmp sgt i32 %21, 0
  %or.cond159 = and i1 %cmp41157, %cmp42158
  br i1 %or.cond159, label %while.body.lr.ph, label %if.end87

while.body.lr.ph:                                 ; preds = %for.end40
  %22 = load [3 x float]** @tric_vec, align 8, !tbaa !3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end53
  %23 = phi float [ %20, %while.body.lr.ph ], [ %27, %if.end53 ]
  %indvars.iv168 = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next169, %if.end53 ]
  %d2min.0160 = phi float [ %add8.i147, %while.body.lr.ph ], [ %d2min.1, %if.end53 ]
  %arraydecay46 = getelementptr inbounds [3 x float]* %22, i64 %indvars.iv168, i64 0
  %24 = load float* %arraydecay46, align 4, !tbaa !0
  %add.i134 = fadd float %17, %24
  %arrayidx3.i136 = getelementptr inbounds [3 x float]* %22, i64 %indvars.iv168, i64 1
  %25 = load float* %arrayidx3.i136, align 4, !tbaa !0
  %add4.i = fadd float %18, %25
  %arrayidx6.i138 = getelementptr inbounds [3 x float]* %22, i64 %indvars.iv168, i64 2
  %26 = load float* %arrayidx6.i138, align 4, !tbaa !0
  %add7.i = fadd float %19, %26
  %mul.i = fmul float %add.i134, %add.i134
  %mul4.i = fmul float %add4.i, %add4.i
  %add.i = fadd float %mul.i, %mul4.i
  %mul7.i = fmul float %add7.i, %add7.i
  %add8.i = fadd float %add.i, %mul7.i
  %cmp50 = fcmp olt float %add8.i, %d2min.0160
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %while.body
  store float %add.i134, float* %dx, align 4, !tbaa !0
  store float %add4.i, float* %arrayidx9.i, align 4, !tbaa !0
  store float %add7.i, float* %arrayidx10.i, align 4, !tbaa !0
  %.pre = load float* @sure_dist2, align 4, !tbaa !0
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %while.body
  %27 = phi float [ %.pre, %if.then51 ], [ %23, %while.body ]
  %d2min.1 = phi float [ %add8.i, %if.then51 ], [ %d2min.0160, %while.body ]
  %indvars.iv.next169 = add i64 %indvars.iv168, 1
  %cmp41 = fcmp ogt float %d2min.1, %27
  %28 = trunc i64 %indvars.iv.next169 to i32
  %cmp42 = icmp slt i32 %28, %21
  %or.cond = and i1 %cmp41, %cmp42
  br i1 %or.cond, label %while.body, label %if.end87

for.body57:                                       ; preds = %if.then2, %for.inc83.for.body57_crit_edge
  %29 = phi float [ %.pre180, %for.inc83.for.body57_crit_edge ], [ %sub.i, %if.then2 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc83.for.body57_crit_edge ], [ 0, %if.then2 ]
  %arrayidx59 = getelementptr inbounds float* %dx, i64 %indvars.iv
  %arrayidx61 = getelementptr inbounds [3 x float]* @gl_hbox, i64 0, i64 %indvars.iv
  %30 = load float* %arrayidx61, align 4, !tbaa !0
  %cmp62 = fcmp ogt float %29, %30
  br i1 %cmp62, label %if.then63, label %if.else69

if.then63:                                        ; preds = %for.body57
  %arrayidx65 = getelementptr inbounds [3 x float]* @gl_fbox, i64 0, i64 %indvars.iv
  %31 = load float* %arrayidx65, align 4, !tbaa !0
  %sub68 = fsub float %29, %31
  store float %sub68, float* %arrayidx59, align 4, !tbaa !0
  br label %for.inc83

if.else69:                                        ; preds = %for.body57
  %arrayidx73 = getelementptr inbounds [3 x float]* @gl_mhbox, i64 0, i64 %indvars.iv
  %32 = load float* %arrayidx73, align 4, !tbaa !0
  %cmp74 = fcmp ugt float %29, %32
  br i1 %cmp74, label %for.inc83, label %if.then75

if.then75:                                        ; preds = %if.else69
  %arrayidx77 = getelementptr inbounds [3 x float]* @gl_fbox, i64 0, i64 %indvars.iv
  %33 = load float* %arrayidx77, align 4, !tbaa !0
  %add80 = fadd float %29, %33
  store float %add80, float* %arrayidx59, align 4, !tbaa !0
  br label %for.inc83

for.inc83:                                        ; preds = %if.else69, %if.then63, %if.then75
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %if.end87, label %for.inc83.for.body57_crit_edge

for.inc83.for.body57_crit_edge:                   ; preds = %for.inc83
  %arrayidx59.phi.trans.insert = getelementptr inbounds float* %dx, i64 %indvars.iv.next
  %.pre180 = load float* %arrayidx59.phi.trans.insert, align 4, !tbaa !0
  br label %for.body57

if.end87:                                         ; preds = %for.end40, %if.end53, %for.inc83, %if.end
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define i32 @image_rect(i32* nocapture %xi, i32* nocapture %xj, i32* nocapture %box_size, float %rlong2, i32* nocapture %shift, float* nocapture %r2) #1 {
entry:
  br label %for.body

for.cond:                                         ; preds = %if.end13
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %rij2.041 = phi float [ 0.000000e+00, %entry ], [ %add15, %for.cond ]
  %t.039 = phi i32 [ 0, %entry ], [ %t.1, %for.cond ]
  %arrayidx = getelementptr inbounds i32* %xi, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  %arrayidx2 = getelementptr inbounds i32* %xj, i64 %indvars.iv
  %2 = load i32* %arrayidx2, align 4, !tbaa !4
  %sub = sub nsw i32 %1, %2
  %mul = mul nsw i32 %t.039, 3
  %arrayidx4 = getelementptr inbounds i32* %box_size, i64 %indvars.iv
  %3 = load i32* %arrayidx4, align 4, !tbaa !4
  %div = sdiv i32 %3, 2
  %sub5 = sub nsw i32 0, %div
  %cmp6 = icmp slt i32 %sub, %sub5
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %mul, 2
  %add7 = add nsw i32 %sub, %3
  br label %if.end13

if.else:                                          ; preds = %for.body
  %cmp8 = icmp sgt i32 %sub, %div
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  %sub10 = sub nsw i32 %sub, %3
  br label %if.end13

if.else11:                                        ; preds = %if.else
  %add12 = add nsw i32 %mul, 1
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.else11, %if.then
  %dx.0 = phi i32 [ %add7, %if.then ], [ %sub10, %if.then9 ], [ %sub, %if.else11 ]
  %t.1 = phi i32 [ %add, %if.then ], [ %mul, %if.then9 ], [ %add12, %if.else11 ]
  %conv = sitofp i32 %dx.0 to float
  %mul14 = fmul float %conv, %conv
  %add15 = fadd float %rij2.041, %mul14
  %cmp16 = fcmp ult float %add15, %rlong2
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp16, label %for.cond, label %return

for.end:                                          ; preds = %for.cond
  store i32 %t.1, i32* %shift, align 4, !tbaa !4
  store float %add15, float* %r2, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end13, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @image_cylindric(i32* nocapture %xi, i32* nocapture %xj, i32* nocapture %box_size, float %rlong2, i32* nocapture %shift, float* nocapture %r2) #1 {
entry:
  br label %for.body

for.cond:                                         ; preds = %if.end13
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %rij2.046 = phi float [ 0.000000e+00, %entry ], [ %add15, %for.cond ]
  %t.044 = phi i32 [ 0, %entry ], [ %t.1, %for.cond ]
  %arrayidx = getelementptr inbounds i32* %xi, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  %arrayidx2 = getelementptr inbounds i32* %xj, i64 %indvars.iv
  %2 = load i32* %arrayidx2, align 4, !tbaa !4
  %sub = sub nsw i32 %1, %2
  %mul = mul nsw i32 %t.044, 3
  %arrayidx4 = getelementptr inbounds i32* %box_size, i64 %indvars.iv
  %3 = load i32* %arrayidx4, align 4, !tbaa !4
  %div = sdiv i32 %3, 2
  %sub5 = sub nsw i32 0, %div
  %cmp6 = icmp slt i32 %sub, %sub5
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %mul, 2
  %add7 = add nsw i32 %sub, %3
  br label %if.end13

if.else:                                          ; preds = %for.body
  %cmp8 = icmp sgt i32 %sub, %div
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  %sub10 = sub nsw i32 %sub, %3
  br label %if.end13

if.else11:                                        ; preds = %if.else
  %add12 = add nsw i32 %mul, 1
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.else11, %if.then
  %dx.0 = phi i32 [ %add7, %if.then ], [ %sub10, %if.then9 ], [ %sub, %if.else11 ]
  %t.1 = phi i32 [ %add, %if.then ], [ %mul, %if.then9 ], [ %add12, %if.else11 ]
  %conv = sitofp i32 %dx.0 to float
  %mul14 = fmul float %conv, %conv
  %add15 = fadd float %rij2.046, %mul14
  %4 = trunc i64 %indvars.iv to i32
  %cmp16 = icmp sgt i32 %4, 1
  %cmp19 = fcmp ult float %add15, %rlong2
  %or.cond = or i1 %cmp16, %cmp19
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %or.cond, label %for.cond, label %return

for.end:                                          ; preds = %for.cond
  store i32 %t.1, i32* %shift, align 4, !tbaa !4
  store float %add15, float* %r2, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end13, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @calc_shifts([3 x float]* %box, float* nocapture %box_size, [3 x float]* nocapture %shift_vec) #1 {
entry:
  tail call void @init_pbc([3 x float]* %box) #6
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv98 = phi i64 [ 0, %entry ], [ %indvars.iv.next99, %for.body ]
  %arrayidx2 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv98, i64 %indvars.iv98
  %0 = load float* %arrayidx2, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds float* %box_size, i64 %indvars.iv98
  store float %0, float* %arrayidx4, align 4, !tbaa !0
  %indvars.iv.next99 = add i64 %indvars.iv98, 1
  %lftr.wideiv100 = trunc i64 %indvars.iv.next99 to i32
  %exitcond101 = icmp eq i32 %lftr.wideiv100, 3
  br i1 %exitcond101, label %for.cond8.preheader, label %for.body

for.cond8.preheader:                              ; preds = %for.body, %for.inc53
  %n.088 = phi i32 [ %10, %for.inc53 ], [ 0, %for.body ]
  %m.187 = phi i32 [ %inc54, %for.inc53 ], [ -1, %for.body ]
  %1 = mul i32 %m.187, 3
  %mul = add i32 %1, 3
  %conv33 = sitofp i32 %m.187 to float
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.inc50, %for.cond8.preheader
  %indvars.iv92.in = phi i32 [ %n.088, %for.cond8.preheader ], [ %indvars.iv92, %for.inc50 ]
  %n.186 = phi i32 [ %n.088, %for.cond8.preheader ], [ %9, %for.inc50 ]
  %l.085 = phi i32 [ -1, %for.cond8.preheader ], [ %inc51, %for.inc50 ]
  %indvars.iv92 = add i32 %indvars.iv92.in, 3
  %add14 = add nsw i32 %mul, %l.085
  %2 = mul i32 %add14, 3
  %add17 = add i32 %2, 4
  %conv27 = sitofp i32 %l.085 to float
  %3 = sext i32 %n.186 to i64
  br label %for.body13

for.body13:                                       ; preds = %for.inc46.for.body13_crit_edge, %for.cond11.preheader
  %indvars.iv90 = phi i64 [ %3, %for.cond11.preheader ], [ %indvars.iv.next91, %for.inc46.for.body13_crit_edge ]
  %k.084 = phi i32 [ -1, %for.cond11.preheader ], [ %inc47, %for.inc46.for.body13_crit_edge ]
  %add18 = add i32 %add17, %k.084
  %4 = trunc i64 %indvars.iv90 to i32
  %cmp19 = icmp ne i32 %4, %add18
  %5 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %tobool = icmp ne %struct._IO_FILE* %5, null
  %or.cond = and i1 %cmp19, %tobool
  br i1 %or.cond, label %if.then, label %for.cond20.preheader

if.then:                                          ; preds = %for.body13
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0), i32 %4, i32 %add18) #7
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %if.then, %for.body13
  %conv = sitofp i32 %k.084 to float
  br label %for.body22

for.body22:                                       ; preds = %for.body22, %for.cond20.preheader
  %indvars.iv = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next, %for.body22 ]
  %arrayidx25 = getelementptr inbounds [3 x float]* %box, i64 0, i64 %indvars.iv
  %6 = load float* %arrayidx25, align 4, !tbaa !0
  %mul26 = fmul float %conv, %6
  %arrayidx30 = getelementptr inbounds [3 x float]* %box, i64 1, i64 %indvars.iv
  %7 = load float* %arrayidx30, align 4, !tbaa !0
  %mul31 = fmul float %conv27, %7
  %add32 = fadd float %mul26, %mul31
  %arrayidx36 = getelementptr inbounds [3 x float]* %box, i64 2, i64 %indvars.iv
  %8 = load float* %arrayidx36, align 4, !tbaa !0
  %mul37 = fmul float %conv33, %8
  %add38 = fadd float %add32, %mul37
  %arrayidx42 = getelementptr inbounds [3 x float]* %shift_vec, i64 %indvars.iv90, i64 %indvars.iv
  store float %add38, float* %arrayidx42, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc46, label %for.body22

for.inc46:                                        ; preds = %for.body22
  %indvars.iv.next91 = add i64 %indvars.iv90, 1
  %lftr.wideiv94 = trunc i64 %indvars.iv.next91 to i32
  %exitcond95 = icmp eq i32 %lftr.wideiv94, %indvars.iv92
  br i1 %exitcond95, label %for.inc50, label %for.inc46.for.body13_crit_edge

for.inc46.for.body13_crit_edge:                   ; preds = %for.inc46
  %inc47 = add nsw i32 %k.084, 1
  br label %for.body13

for.inc50:                                        ; preds = %for.inc46
  %9 = add i32 %n.186, 3
  %inc51 = add nsw i32 %l.085, 1
  %exitcond96 = icmp eq i32 %inc51, 2
  br i1 %exitcond96, label %for.inc53, label %for.cond11.preheader

for.inc53:                                        ; preds = %for.inc50
  %10 = add i32 %n.088, 9
  %inc54 = add nsw i32 %m.187, 1
  %exitcond97 = icmp eq i32 %inc54, 2
  br i1 %exitcond97, label %for.end55, label %for.cond8.preheader

for.end55:                                        ; preds = %for.inc53
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @calc_cgcm(%struct._IO_FILE* nocapture %log, i32 %cg0, i32 %cg1, %struct.t_block* nocapture %cgs, [3 x float]* nocapture %pos, [3 x float]* nocapture %cg_cm) #1 {
entry:
  %cg = alloca [3 x float], align 4
  %a = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 4
  %0 = load i32** %a, align 8, !tbaa !3
  %index = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 2
  %1 = load i32** %index, align 8, !tbaa !3
  %cmp78 = icmp slt i32 %cg0, %cg1
  br i1 %cmp78, label %for.body.lr.ph, label %for.end48

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay12 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 0
  %arrayidx1.i = getelementptr inbounds [3 x float]* %cg, i64 0, i64 1
  %arrayidx2.i73 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 2
  %2 = sext i32 %cg0 to i64
  %arrayidx.phi.trans.insert = getelementptr inbounds i32* %1, i64 %2
  %.pre = load i32* %arrayidx.phi.trans.insert, align 4, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %3 = phi i32 [ %.pre, %for.body.lr.ph ], [ %4, %for.cond.backedge ]
  %indvars.iv86 = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next87, %for.cond.backedge ]
  %indvars.iv.next87 = add i64 %indvars.iv86, 1
  %arrayidx2 = getelementptr inbounds i32* %1, i64 %indvars.iv.next87
  %4 = load i32* %arrayidx2, align 4, !tbaa !4
  %sub = sub nsw i32 %4, %3
  %cmp3 = icmp eq i32 %sub, 1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds i32* %0, i64 %idxprom4
  %5 = load i32* %arrayidx5, align 4, !tbaa !4
  %idxprom6 = sext i32 %5 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %pos, i64 %idxprom6, i64 0
  %arraydecay10 = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv86, i64 0
  %6 = load float* %arraydecay, align 4, !tbaa !0
  store float %6, float* %arraydecay10, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %pos, i64 %idxprom6, i64 1
  %7 = load float* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv86, i64 1
  store float %7, float* %arrayidx3.i, align 4, !tbaa !0
  %arrayidx4.i = getelementptr inbounds [3 x float]* %pos, i64 %idxprom6, i64 2
  %8 = load float* %arrayidx4.i, align 4, !tbaa !0
  %arrayidx5.i = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv86, i64 2
  store float %8, float* %arrayidx5.i, align 4, !tbaa !0
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body36, %if.then
  %9 = trunc i64 %indvars.iv.next87 to i32
  %cmp = icmp slt i32 %9, %cg1
  br i1 %cmp, label %for.body, label %for.end48

if.else:                                          ; preds = %for.body
  %conv = sitofp i32 %sub to double
  %div = fdiv double 1.000000e+00, %conv
  %conv11 = fptrunc double %div to float
  store float 0.000000e+00, float* %arraydecay12, align 4, !tbaa !0
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !0
  store float 0.000000e+00, float* %arrayidx2.i73, align 4, !tbaa !0
  %cmp1475 = icmp slt i32 %3, %4
  br i1 %cmp1475, label %for.body16.lr.ph, label %for.body36

for.body16.lr.ph:                                 ; preds = %if.else
  %10 = sext i32 %3 to i64
  br label %for.body16

for.body16:                                       ; preds = %for.body16.lr.ph, %for.inc30
  %indvars.iv80 = phi i64 [ %10, %for.body16.lr.ph ], [ %indvars.iv.next81, %for.inc30 ]
  %arrayidx18 = getelementptr inbounds i32* %0, i64 %indvars.iv80
  %11 = load i32* %arrayidx18, align 4, !tbaa !4
  %idxprom24 = sext i32 %11 to i64
  br label %for.body22

for.body22:                                       ; preds = %for.body22, %for.body16
  %indvars.iv = phi i64 [ 0, %for.body16 ], [ %indvars.iv.next, %for.body22 ]
  %arrayidx26 = getelementptr inbounds [3 x float]* %pos, i64 %idxprom24, i64 %indvars.iv
  %12 = load float* %arrayidx26, align 4, !tbaa !0
  %arrayidx28 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv
  %13 = load float* %arrayidx28, align 4, !tbaa !0
  %add29 = fadd float %12, %13
  store float %add29, float* %arrayidx28, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc30, label %for.body22

for.inc30:                                        ; preds = %for.body22
  %indvars.iv.next81 = add i64 %indvars.iv80, 1
  %14 = trunc i64 %indvars.iv.next81 to i32
  %cmp14 = icmp slt i32 %14, %4
  br i1 %cmp14, label %for.body16, label %for.body36

for.body36:                                       ; preds = %for.body36, %if.else, %for.inc30
  %indvars.iv82 = phi i64 [ 0, %for.inc30 ], [ 0, %if.else ], [ %indvars.iv.next83, %for.body36 ]
  %arrayidx38 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv82
  %15 = load float* %arrayidx38, align 4, !tbaa !0
  %mul = fmul float %conv11, %15
  %arrayidx42 = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv86, i64 %indvars.iv82
  store float %mul, float* %arrayidx42, align 4, !tbaa !0
  %indvars.iv.next83 = add i64 %indvars.iv82, 1
  %lftr.wideiv84 = trunc i64 %indvars.iv.next83 to i32
  %exitcond85 = icmp eq i32 %lftr.wideiv84, 3
  br i1 %exitcond85, label %for.cond.backedge, label %for.body36

for.end48:                                        ; preds = %for.cond.backedge, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @put_charge_groups_in_box(%struct._IO_FILE* nocapture %log, i32 %cg0, i32 %cg1, [3 x float]* nocapture %box, float* nocapture %box_size, %struct.t_block* nocapture %cgs, [3 x float]* nocapture %pos, [3 x float]* nocapture %cg_cm) #1 {
entry:
  %cg = alloca [3 x float], align 4
  %a = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 4
  %0 = load i32** %a, align 8, !tbaa !3
  %index = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 2
  %1 = load i32** %index, align 8, !tbaa !3
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %2 = load float* %arrayidx1, align 4, !tbaa !0
  %fabsf = call float @fabsf(float %2) #5
  %3 = fpext float %fabsf to double
  %cmp = fcmp ogt double %3, 1.200000e-38
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %4 = load float* %arrayidx4, align 4, !tbaa !0
  %fabsf313 = call float @fabsf(float %4) #5
  %5 = fpext float %fabsf313 to double
  %cmp7 = fcmp ogt double %5, 1.200000e-38
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx10 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %6 = load float* %arrayidx10, align 4, !tbaa !0
  %fabsf314 = call float @fabsf(float %6) #5
  %7 = fpext float %fabsf314 to double
  %cmp13 = fcmp ogt double %7, 1.200000e-38
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %8 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp13, %lor.rhs ]
  %cmp15346 = icmp slt i32 %cg0, %cg1
  br i1 %cmp15346, label %for.body.lr.ph, label %for.end216

for.body.lr.ph:                                   ; preds = %lor.end
  %arraydecay = getelementptr inbounds [3 x float]* %cg, i64 0, i64 0
  %arrayidx1.i = getelementptr inbounds [3 x float]* %cg, i64 0, i64 1
  %arrayidx2.i = getelementptr inbounds [3 x float]* %cg, i64 0, i64 2
  %9 = sext i32 %cg0 to i64
  %arrayidx17.phi.trans.insert = getelementptr inbounds i32* %1, i64 %9
  %.pre = load i32* %arrayidx17.phi.trans.insert, align 4, !tbaa !4
  br label %for.body

for.cond.backedge:                                ; preds = %while.end123, %while.end204
  %10 = trunc i64 %indvars.iv.next375 to i32
  %cmp15 = icmp slt i32 %10, %cg1
  br i1 %cmp15, label %for.body, label %for.end216

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %11 = phi i32 [ %.pre, %for.body.lr.ph ], [ %12, %for.cond.backedge ]
  %indvars.iv374 = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next375, %for.cond.backedge ]
  %indvars.iv.next375 = add i64 %indvars.iv374, 1
  %arrayidx19 = getelementptr inbounds i32* %1, i64 %indvars.iv.next375
  %12 = load i32* %arrayidx19, align 4, !tbaa !4
  %sub = sub nsw i32 %12, %11
  %conv20 = sitofp i32 %sub to double
  %div = fdiv double 1.000000e+00, %conv20
  %conv21 = fptrunc double %div to float
  store float 0.000000e+00, float* %arraydecay, align 4, !tbaa !0
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !0
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !0
  %cmp23316 = icmp slt i32 %11, %12
  br i1 %cmp23316, label %for.body25.lr.ph, label %for.end41

for.body25.lr.ph:                                 ; preds = %for.body
  %13 = sext i32 %11 to i64
  br label %for.body25

for.body25:                                       ; preds = %for.body25.lr.ph, %for.inc39
  %indvars.iv348 = phi i64 [ %13, %for.body25.lr.ph ], [ %indvars.iv.next349, %for.inc39 ]
  %arrayidx27 = getelementptr inbounds i32* %0, i64 %indvars.iv348
  %14 = load i32* %arrayidx27, align 4, !tbaa !4
  %idxprom33 = sext i32 %14 to i64
  br label %for.body31

for.body31:                                       ; preds = %for.body31, %for.body25
  %indvars.iv = phi i64 [ 0, %for.body25 ], [ %indvars.iv.next, %for.body31 ]
  %arrayidx35 = getelementptr inbounds [3 x float]* %pos, i64 %idxprom33, i64 %indvars.iv
  %15 = load float* %arrayidx35, align 4, !tbaa !0
  %mul = fmul float %conv21, %15
  %arrayidx37 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv
  %16 = load float* %arrayidx37, align 4, !tbaa !0
  %add38 = fadd float %16, %mul
  store float %add38, float* %arrayidx37, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc39, label %for.body31

for.inc39:                                        ; preds = %for.body31
  %indvars.iv.next349 = add i64 %indvars.iv348, 1
  %17 = trunc i64 %indvars.iv.next349 to i32
  %cmp23 = icmp slt i32 %17, %12
  br i1 %cmp23, label %for.body25, label %for.end41

for.end41:                                        ; preds = %for.inc39, %for.body
  %18 = sext i32 %11 to i64
  br i1 %8, label %while.cond.preheader, label %while.cond137.preheader

while.cond.preheader:                             ; preds = %for.end41, %while.end123.while.cond.preheader_crit_edge
  %indvars.iv372 = phi i64 [ %indvars.iv.next373, %while.end123.while.cond.preheader_crit_edge ], [ 2, %for.end41 ]
  %arrayidx47 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv372
  %19 = load float* %arrayidx47, align 4, !tbaa !0
  %cmp48332 = fcmp olt float %19, 0.000000e+00
  br i1 %cmp48332, label %for.body53, label %while.cond81.loopexit

while.cond.loopexit:                              ; preds = %for.inc79
  %.pre379 = load float* %arrayidx47, align 4, !tbaa !0
  %cmp48 = fcmp olt float %.pre379, 0.000000e+00
  br i1 %cmp48, label %for.body53, label %while.cond81.loopexit

for.body53:                                       ; preds = %while.cond.preheader, %while.cond.loopexit, %for.inc79.for.body53_crit_edge
  %20 = phi float [ %.pre385, %for.inc79.for.body53_crit_edge ], [ %.pre379, %while.cond.loopexit ], [ %19, %while.cond.preheader ]
  %indvars.iv363 = phi i64 [ %indvars.iv.next364, %for.inc79.for.body53_crit_edge ], [ %indvars.iv372, %while.cond.loopexit ], [ %indvars.iv372, %while.cond.preheader ]
  %arrayidx57 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv372, i64 %indvars.iv363
  %21 = load float* %arrayidx57, align 4, !tbaa !0
  %arrayidx59 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv363
  %add60 = fadd float %21, %20
  store float %add60, float* %arrayidx59, align 4, !tbaa !0
  br i1 %cmp23316, label %for.body64, label %for.inc79

for.body64:                                       ; preds = %for.body53, %for.body64.for.body64_crit_edge
  %22 = phi float [ %.pre386, %for.body64.for.body64_crit_edge ], [ %21, %for.body53 ]
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %for.body64.for.body64_crit_edge ], [ %18, %for.body53 ]
  %arrayidx71 = getelementptr inbounds i32* %0, i64 %indvars.iv359
  %23 = load i32* %arrayidx71, align 4, !tbaa !4
  %idxprom72 = sext i32 %23 to i64
  %arrayidx74 = getelementptr inbounds [3 x float]* %pos, i64 %idxprom72, i64 %indvars.iv363
  %24 = load float* %arrayidx74, align 4, !tbaa !0
  %add75 = fadd float %22, %24
  store float %add75, float* %arrayidx74, align 4, !tbaa !0
  %indvars.iv.next360 = add i64 %indvars.iv359, 1
  %25 = trunc i64 %indvars.iv.next360 to i32
  %cmp62 = icmp slt i32 %25, %12
  br i1 %cmp62, label %for.body64.for.body64_crit_edge, label %for.inc79

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  %.pre386 = load float* %arrayidx57, align 4, !tbaa !0
  br label %for.body64

for.inc79:                                        ; preds = %for.body64, %for.body53
  %indvars.iv.next364 = add i64 %indvars.iv363, -1
  %26 = trunc i64 %indvars.iv363 to i32
  %cmp51 = icmp sgt i32 %26, 0
  br i1 %cmp51, label %for.inc79.for.body53_crit_edge, label %while.cond.loopexit

for.inc79.for.body53_crit_edge:                   ; preds = %for.inc79
  %arrayidx59.phi.trans.insert = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv.next364
  %.pre385 = load float* %arrayidx59.phi.trans.insert, align 4, !tbaa !0
  br label %for.body53

while.cond81.loopexit:                            ; preds = %while.cond.loopexit, %while.cond.preheader
  %27 = phi float [ %19, %while.cond.preheader ], [ %.pre379, %while.cond.loopexit ]
  %arrayidx87 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv372, i64 %indvars.iv372
  %28 = load float* %arrayidx87, align 4, !tbaa !0
  %cmp88341 = fcmp ult float %27, %28
  br i1 %cmp88341, label %while.end123, label %for.body94

while.cond81.loopexit337:                         ; preds = %for.inc120
  %.pre377 = load float* %arrayidx47, align 4, !tbaa !0
  %.pre378 = load float* %arrayidx87, align 4, !tbaa !0
  %cmp88 = fcmp ult float %.pre377, %.pre378
  br i1 %cmp88, label %while.end123, label %for.body94

for.body94:                                       ; preds = %while.cond81.loopexit, %while.cond81.loopexit337, %for.inc120.for.body94_crit_edge
  %29 = phi float [ %.pre383, %for.inc120.for.body94_crit_edge ], [ %.pre377, %while.cond81.loopexit337 ], [ %27, %while.cond81.loopexit ]
  %30 = phi float [ %.pre382, %for.inc120.for.body94_crit_edge ], [ %.pre378, %while.cond81.loopexit337 ], [ %28, %while.cond81.loopexit ]
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %for.inc120.for.body94_crit_edge ], [ %indvars.iv372, %while.cond81.loopexit337 ], [ %indvars.iv372, %while.cond81.loopexit ]
  %arrayidx98 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv372, i64 %indvars.iv369
  %arrayidx100 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv369
  %sub101 = fsub float %29, %30
  store float %sub101, float* %arrayidx100, align 4, !tbaa !0
  br i1 %cmp23316, label %for.body105, label %for.inc120

for.body105:                                      ; preds = %for.body94, %for.body105.for.body105_crit_edge
  %31 = phi float [ %.pre384, %for.body105.for.body105_crit_edge ], [ %30, %for.body94 ]
  %indvars.iv365 = phi i64 [ %indvars.iv.next366, %for.body105.for.body105_crit_edge ], [ %18, %for.body94 ]
  %arrayidx112 = getelementptr inbounds i32* %0, i64 %indvars.iv365
  %32 = load i32* %arrayidx112, align 4, !tbaa !4
  %idxprom113 = sext i32 %32 to i64
  %arrayidx115 = getelementptr inbounds [3 x float]* %pos, i64 %idxprom113, i64 %indvars.iv369
  %33 = load float* %arrayidx115, align 4, !tbaa !0
  %sub116 = fsub float %33, %31
  store float %sub116, float* %arrayidx115, align 4, !tbaa !0
  %indvars.iv.next366 = add i64 %indvars.iv365, 1
  %34 = trunc i64 %indvars.iv.next366 to i32
  %cmp103 = icmp slt i32 %34, %12
  br i1 %cmp103, label %for.body105.for.body105_crit_edge, label %for.inc120

for.body105.for.body105_crit_edge:                ; preds = %for.body105
  %.pre384 = load float* %arrayidx98, align 4, !tbaa !0
  br label %for.body105

for.inc120:                                       ; preds = %for.body105, %for.body94
  %indvars.iv.next370 = add i64 %indvars.iv369, -1
  %35 = trunc i64 %indvars.iv369 to i32
  %cmp92 = icmp sgt i32 %35, 0
  br i1 %cmp92, label %for.inc120.for.body94_crit_edge, label %while.cond81.loopexit337

for.inc120.for.body94_crit_edge:                  ; preds = %for.inc120
  %arrayidx98.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv372, i64 %indvars.iv.next370
  %.pre382 = load float* %arrayidx98.phi.trans.insert, align 4, !tbaa !0
  %arrayidx100.phi.trans.insert = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv.next370
  %.pre383 = load float* %arrayidx100.phi.trans.insert, align 4, !tbaa !0
  br label %for.body94

while.end123:                                     ; preds = %while.cond81.loopexit337, %while.cond81.loopexit
  %.lcssa340 = phi float [ %27, %while.cond81.loopexit ], [ %.pre377, %while.cond81.loopexit337 ]
  %arrayidx129 = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv374, i64 %indvars.iv372
  store float %.lcssa340, float* %arrayidx129, align 4, !tbaa !0
  %36 = trunc i64 %indvars.iv372 to i32
  %cmp43 = icmp sgt i32 %36, 0
  br i1 %cmp43, label %while.end123.while.cond.preheader_crit_edge, label %for.cond.backedge

while.end123.while.cond.preheader_crit_edge:      ; preds = %while.end123
  %indvars.iv.next373 = add i64 %indvars.iv372, -1
  br label %while.cond.preheader

while.cond137.preheader:                          ; preds = %for.end41, %while.end204
  %indvars.iv355 = phi i64 [ %indvars.iv.next356, %while.end204 ], [ 0, %for.end41 ]
  %arrayidx139 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv355
  %37 = load float* %arrayidx139, align 4, !tbaa !0
  %cmp140320 = fcmp olt float %37, 0.000000e+00
  %arrayidx146 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv355, i64 %indvars.iv355
  br i1 %cmp140320, label %while.body142, label %while.cond169.loopexit

while.cond137.loopexit:                           ; preds = %for.body153, %while.body142
  %cmp140 = fcmp olt float %add149, 0.000000e+00
  br i1 %cmp140, label %while.body142, label %while.cond137.while.cond169.loopexit_crit_edge

while.body142:                                    ; preds = %while.cond137.preheader, %while.cond137.loopexit
  %38 = phi float [ %add149, %while.cond137.loopexit ], [ %37, %while.cond137.preheader ]
  %39 = load float* %arrayidx146, align 4, !tbaa !0
  %add149 = fadd float %38, %39
  br i1 %cmp23316, label %for.body153, label %while.cond137.loopexit

for.body153:                                      ; preds = %while.body142, %for.body153.for.body153_crit_edge
  %40 = phi float [ %.pre381, %for.body153.for.body153_crit_edge ], [ %39, %while.body142 ]
  %indvars.iv350 = phi i64 [ %indvars.iv.next351, %for.body153.for.body153_crit_edge ], [ %18, %while.body142 ]
  %arrayidx160 = getelementptr inbounds i32* %0, i64 %indvars.iv350
  %41 = load i32* %arrayidx160, align 4, !tbaa !4
  %idxprom161 = sext i32 %41 to i64
  %arrayidx163 = getelementptr inbounds [3 x float]* %pos, i64 %idxprom161, i64 %indvars.iv355
  %42 = load float* %arrayidx163, align 4, !tbaa !0
  %add164 = fadd float %40, %42
  store float %add164, float* %arrayidx163, align 4, !tbaa !0
  %indvars.iv.next351 = add i64 %indvars.iv350, 1
  %43 = trunc i64 %indvars.iv.next351 to i32
  %cmp151 = icmp slt i32 %43, %12
  br i1 %cmp151, label %for.body153.for.body153_crit_edge, label %while.cond137.loopexit

for.body153.for.body153_crit_edge:                ; preds = %for.body153
  %.pre381 = load float* %arrayidx146, align 4, !tbaa !0
  br label %for.body153

while.cond137.while.cond169.loopexit_crit_edge:   ; preds = %while.cond137.loopexit
  store float %add149, float* %arrayidx139, align 4, !tbaa !0
  br label %while.cond169.loopexit

while.cond169.loopexit:                           ; preds = %while.cond137.preheader, %while.cond137.while.cond169.loopexit_crit_edge
  %44 = phi float [ %add149, %while.cond137.while.cond169.loopexit_crit_edge ], [ %37, %while.cond137.preheader ]
  %45 = load float* %arrayidx146, align 4, !tbaa !0
  %cmp176325 = fcmp ult float %44, %45
  br i1 %cmp176325, label %while.end204, label %while.body178

while.cond169.loopexit322:                        ; preds = %for.body189, %while.body178
  %46 = phi float [ %47, %while.body178 ], [ %.pre380, %for.body189 ]
  %cmp176 = fcmp ult float %sub185, %46
  br i1 %cmp176, label %while.end204, label %while.body178

while.body178:                                    ; preds = %while.cond169.loopexit, %while.cond169.loopexit322
  %47 = phi float [ %46, %while.cond169.loopexit322 ], [ %45, %while.cond169.loopexit ]
  %48 = phi float [ %sub185, %while.cond169.loopexit322 ], [ %44, %while.cond169.loopexit ]
  %sub185 = fsub float %48, %47
  store float %sub185, float* %arrayidx139, align 4, !tbaa !0
  br i1 %cmp23316, label %for.body189, label %while.cond169.loopexit322

for.body189:                                      ; preds = %for.body189, %while.body178
  %49 = phi float [ %47, %while.body178 ], [ %.pre380, %for.body189 ]
  %indvars.iv352 = phi i64 [ %18, %while.body178 ], [ %indvars.iv.next353, %for.body189 ]
  %arrayidx196 = getelementptr inbounds i32* %0, i64 %indvars.iv352
  %50 = load i32* %arrayidx196, align 4, !tbaa !4
  %idxprom197 = sext i32 %50 to i64
  %arrayidx199 = getelementptr inbounds [3 x float]* %pos, i64 %idxprom197, i64 %indvars.iv355
  %51 = load float* %arrayidx199, align 4, !tbaa !0
  %sub200 = fsub float %51, %49
  store float %sub200, float* %arrayidx199, align 4, !tbaa !0
  %indvars.iv.next353 = add i64 %indvars.iv352, 1
  %52 = trunc i64 %indvars.iv.next353 to i32
  %cmp187 = icmp slt i32 %52, %12
  %.pre380 = load float* %arrayidx146, align 4, !tbaa !0
  br i1 %cmp187, label %for.body189, label %while.cond169.loopexit322

while.end204:                                     ; preds = %while.cond169.loopexit322, %while.cond169.loopexit
  %.lcssa = phi float [ %44, %while.cond169.loopexit ], [ %sub185, %while.cond169.loopexit322 ]
  %arrayidx210 = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv374, i64 %indvars.iv355
  store float %.lcssa, float* %arrayidx210, align 4, !tbaa !0
  %indvars.iv.next356 = add i64 %indvars.iv355, 1
  %lftr.wideiv357 = trunc i64 %indvars.iv.next356 to i32
  %exitcond358 = icmp eq i32 %lftr.wideiv357, 3
  br i1 %exitcond358, label %for.cond.backedge, label %while.cond137.preheader

for.end216:                                       ; preds = %for.cond.backedge, %lor.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @calc_box_center([3 x float]* nocapture %box, float* nocapture %box_center) #1 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx2 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %0 = load float* %arrayidx2, align 4, !tbaa !0
  %conv3 = fmul float %0, 5.000000e-01
  %arrayidx5 = getelementptr inbounds float* %box_center, i64 %indvars.iv
  store float %conv3, float* %arrayidx5, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @calc_triclinic_images([3 x float]* nocapture %box, [3 x float]* nocapture %img) #1 {
entry:
  %arraydecay = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [3 x float]* %img, i64 0, i64 0
  %0 = load float* %arraydecay, align 4, !tbaa !0
  store float %0, float* %arraydecay2, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %1 = load float* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %img, i64 0, i64 1
  store float %1, float* %arrayidx3.i, align 4, !tbaa !0
  %arrayidx4.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %2 = load float* %arrayidx4.i, align 4, !tbaa !0
  %arrayidx5.i = getelementptr inbounds [3 x float]* %img, i64 0, i64 2
  store float %2, float* %arrayidx5.i, align 4, !tbaa !0
  %arraydecay4 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %arraydecay6 = getelementptr inbounds [3 x float]* %img, i64 1, i64 0
  %3 = load float* %arraydecay4, align 4, !tbaa !0
  store float %3, float* %arraydecay6, align 4, !tbaa !0
  %arrayidx2.i137 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %4 = load float* %arrayidx2.i137, align 4, !tbaa !0
  %arrayidx3.i138 = getelementptr inbounds [3 x float]* %img, i64 1, i64 1
  store float %4, float* %arrayidx3.i138, align 4, !tbaa !0
  %arrayidx4.i139 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %5 = load float* %arrayidx4.i139, align 4, !tbaa !0
  %arrayidx5.i140 = getelementptr inbounds [3 x float]* %img, i64 1, i64 2
  store float %5, float* %arrayidx5.i140, align 4, !tbaa !0
  %cmp = fcmp olt float %3, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul.i130 = fmul float %3, -1.000000e+00
  store float %mul.i130, float* %arraydecay6, align 4, !tbaa !0
  %mul3.i132 = fmul float %4, -1.000000e+00
  store float %mul3.i132, float* %arrayidx3.i138, align 4, !tbaa !0
  %mul6.i135 = fmul float %5, -1.000000e+00
  store float %mul6.i135, float* %arrayidx5.i140, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = phi float [ %mul6.i135, %if.then ], [ %5, %entry ]
  %7 = phi float [ %mul3.i132, %if.then ], [ %4, %entry ]
  %8 = phi float [ %mul.i130, %if.then ], [ %3, %entry ]
  %arraydecay18 = getelementptr inbounds [3 x float]* %img, i64 2, i64 0
  %sub.i = fsub float %8, %0
  %sub4.i = fsub float %7, %1
  %sub7.i = fsub float %6, %2
  store float %sub.i, float* %arraydecay18, align 4, !tbaa !0
  %arrayidx9.i128 = getelementptr inbounds [3 x float]* %img, i64 2, i64 1
  store float %sub4.i, float* %arrayidx9.i128, align 4, !tbaa !0
  %arrayidx10.i129 = getelementptr inbounds [3 x float]* %img, i64 2, i64 2
  store float %sub7.i, float* %arrayidx10.i129, align 4, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %9 = phi float [ %2, %if.end ], [ %.pre157, %for.body.for.body_crit_edge ]
  %10 = phi float [ %1, %if.end ], [ %.pre156, %for.body.for.body_crit_edge ]
  %11 = phi float [ %0, %if.end ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv151 = phi i64 [ 0, %if.end ], [ %indvars.iv.next152, %for.body.for.body_crit_edge ]
  %12 = add nsw i64 %indvars.iv151, 3
  %arraydecay24 = getelementptr inbounds [3 x float]* %img, i64 %12, i64 0
  %mul.i117 = fmul float %11, -1.000000e+00
  store float %mul.i117, float* %arraydecay24, align 4, !tbaa !0
  %mul3.i119 = fmul float %10, -1.000000e+00
  %arrayidx4.i120 = getelementptr inbounds [3 x float]* %img, i64 %12, i64 1
  store float %mul3.i119, float* %arrayidx4.i120, align 4, !tbaa !0
  %mul6.i122 = fmul float %9, -1.000000e+00
  %arrayidx7.i123 = getelementptr inbounds [3 x float]* %img, i64 %12, i64 2
  store float %mul6.i122, float* %arrayidx7.i123, align 4, !tbaa !0
  %indvars.iv.next152 = add i64 %indvars.iv151, 1
  %lftr.wideiv154 = trunc i64 %indvars.iv.next152 to i32
  %exitcond155 = icmp eq i32 %lftr.wideiv154, 3
  br i1 %exitcond155, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arraydecay21.phi.trans.insert = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next152, i64 0
  %.pre = load float* %arraydecay21.phi.trans.insert, align 4, !tbaa !0
  %arrayidx2.i118.phi.trans.insert = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next152, i64 1
  %.pre156 = load float* %arrayidx2.i118.phi.trans.insert, align 4, !tbaa !0
  %arrayidx5.i121.phi.trans.insert = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next152, i64 2
  %.pre157 = load float* %arrayidx5.i121.phi.trans.insert, align 4, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %for.body
  %arraydecay26 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %arraydecay28 = getelementptr inbounds [3 x float]* %img, i64 6, i64 0
  %13 = load float* %arraydecay26, align 4, !tbaa !0
  store float %13, float* %arraydecay28, align 4, !tbaa !0
  %arrayidx2.i113 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %14 = load float* %arrayidx2.i113, align 4, !tbaa !0
  %arrayidx3.i114 = getelementptr inbounds [3 x float]* %img, i64 6, i64 1
  store float %14, float* %arrayidx3.i114, align 4, !tbaa !0
  %arrayidx4.i115 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %15 = load float* %arrayidx4.i115, align 4, !tbaa !0
  %arrayidx5.i116 = getelementptr inbounds [3 x float]* %img, i64 6, i64 2
  store float %15, float* %arrayidx5.i116, align 4, !tbaa !0
  %cmp31 = fcmp olt float %13, 0.000000e+00
  br i1 %cmp31, label %if.then32, label %for.body40

if.then32:                                        ; preds = %for.end
  %mul.i106 = fmul float %13, -1.000000e+00
  store float %mul.i106, float* %arraydecay28, align 4, !tbaa !0
  %mul3.i108 = fmul float %14, -1.000000e+00
  store float %mul3.i108, float* %arrayidx3.i114, align 4, !tbaa !0
  %mul6.i111 = fmul float %15, -1.000000e+00
  store float %mul6.i111, float* %arrayidx5.i116, align 4, !tbaa !0
  br label %for.body40

for.body40:                                       ; preds = %for.end, %if.then32, %for.body40.for.body40_crit_edge
  %16 = phi float [ %.pre160, %for.body40.for.body40_crit_edge ], [ %mul6.i111, %if.then32 ], [ %15, %for.end ]
  %17 = phi float [ %.pre159, %for.body40.for.body40_crit_edge ], [ %mul3.i108, %if.then32 ], [ %14, %for.end ]
  %18 = phi float [ %.pre158, %for.body40.for.body40_crit_edge ], [ %mul.i106, %if.then32 ], [ %13, %for.end ]
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.body40.for.body40_crit_edge ], [ 0, %if.then32 ], [ 0, %for.end ]
  %indvars.iv.next147 = add i64 %indvars.iv146, 1
  %arraydecay46 = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next147, i64 0
  %19 = add nsw i64 %indvars.iv146, 7
  %arraydecay50 = getelementptr inbounds [3 x float]* %img, i64 %19, i64 0
  %20 = load float* %arraydecay46, align 4, !tbaa !0
  %add.i = fadd float %18, %20
  %arrayidx3.i104 = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next147, i64 1
  %21 = load float* %arrayidx3.i104, align 4, !tbaa !0
  %add4.i = fadd float %17, %21
  %arrayidx6.i = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next147, i64 2
  %22 = load float* %arrayidx6.i, align 4, !tbaa !0
  %add7.i = fadd float %16, %22
  store float %add.i, float* %arraydecay50, align 4, !tbaa !0
  %arrayidx9.i = getelementptr inbounds [3 x float]* %img, i64 %19, i64 1
  store float %add4.i, float* %arrayidx9.i, align 4, !tbaa !0
  %arrayidx10.i = getelementptr inbounds [3 x float]* %img, i64 %19, i64 2
  store float %add7.i, float* %arrayidx10.i, align 4, !tbaa !0
  %lftr.wideiv149 = trunc i64 %indvars.iv.next147 to i32
  %exitcond150 = icmp eq i32 %lftr.wideiv149, 3
  br i1 %exitcond150, label %for.body56, label %for.body40.for.body40_crit_edge

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  %.pre158 = load float* %arraydecay28, align 4, !tbaa !0
  %.pre159 = load float* %arrayidx3.i114, align 4, !tbaa !0
  %.pre160 = load float* %arrayidx5.i116, align 4, !tbaa !0
  br label %for.body40

for.body56:                                       ; preds = %for.body40, %for.body56
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body56 ], [ 0, %for.body40 ]
  %23 = add nsw i64 %indvars.iv, 2
  %24 = trunc i64 %23 to i32
  %rem = srem i32 %24, 4
  %add58 = add nsw i32 %rem, 6
  %idxprom59 = sext i32 %add58 to i64
  %arraydecay61 = getelementptr inbounds [3 x float]* %img, i64 %idxprom59, i64 0
  %25 = add nsw i64 %indvars.iv, 10
  %arraydecay65 = getelementptr inbounds [3 x float]* %img, i64 %25, i64 0
  %26 = load float* %arraydecay61, align 4, !tbaa !0
  %mul.i = fmul float %26, -1.000000e+00
  store float %mul.i, float* %arraydecay65, align 4, !tbaa !0
  %arrayidx2.i100 = getelementptr inbounds [3 x float]* %img, i64 %idxprom59, i64 1
  %27 = load float* %arrayidx2.i100, align 4, !tbaa !0
  %mul3.i = fmul float %27, -1.000000e+00
  %arrayidx4.i101 = getelementptr inbounds [3 x float]* %img, i64 %25, i64 1
  store float %mul3.i, float* %arrayidx4.i101, align 4, !tbaa !0
  %arrayidx5.i102 = getelementptr inbounds [3 x float]* %img, i64 %idxprom59, i64 2
  %28 = load float* %arrayidx5.i102, align 4, !tbaa !0
  %mul6.i = fmul float %28, -1.000000e+00
  %arrayidx7.i = getelementptr inbounds [3 x float]* %img, i64 %25, i64 2
  store float %mul6.i, float* %arrayidx7.i, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end68, label %for.body56

for.end68:                                        ; preds = %for.body56
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @calc_compact_unitcell_vertices([3 x float]* nocapture %box, [3 x float]* nocapture %vert) #1 {
entry:
  %img = alloca [14 x [3 x float]], align 16
  %box_center = alloca [3 x float], align 4
  %tmp = alloca [4 x i32], align 16
  %0 = bitcast [14 x [3 x float]]* %img to i8*
  call void @llvm.lifetime.start(i64 168, i8* %0) #4
  %arraydecay = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 0
  call void @calc_triclinic_images([3 x float]* %box, [3 x float]* %arraydecay) #6
  %arrayidx = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 0
  %arrayidx3 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 1
  %arrayidx5 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 2
  %arrayidx8 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 3
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc42
  %indvars.iv324 = phi i64 [ 0, %entry ], [ %indvars.iv.next325, %for.inc42 ]
  %indvars.iv320 = phi i64 [ 2, %entry ], [ %indvars.iv.next321, %for.inc42 ]
  %1 = add nsw i64 %indvars.iv320, 4294967295
  %2 = trunc i64 %1 to i32
  store i32 %2, i32* %arrayidx, align 16, !tbaa !4
  %3 = trunc i64 %indvars.iv320 to i32
  %cmp2 = icmp eq i32 %3, 2
  %. = select i1 %cmp2, i32 8, i32 6
  store i32 %., i32* %arrayidx3, align 4, !tbaa !4
  %4 = add nsw i64 %indvars.iv320, 1
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %5, 6
  %tmp319 = select i1 %6, i32 0, i32 %5
  store i32 %tmp319, i32* %arrayidx5, align 8, !tbaa !4
  %add7 = add nsw i32 %., 4
  store i32 %add7, i32* %arrayidx8, align 4, !tbaa !4
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.end.for.cond12.preheader_crit_edge, %for.body
  %7 = phi i32 [ %2, %for.body ], [ %.pre, %for.end.for.cond12.preheader_crit_edge ]
  %indvars.iv315 = phi i64 [ %indvars.iv324, %for.body ], [ %indvars.iv.next316, %for.end.for.cond12.preheader_crit_edge ]
  %indvars.iv313 = phi i64 [ 1, %for.body ], [ %phitmp, %for.end.for.cond12.preheader_crit_edge ]
  %idxprom21 = sext i32 %7 to i64
  %8 = trunc i64 %indvars.iv313 to i32
  %9 = icmp eq i32 %8, 4
  %sext = shl i64 %indvars.iv313, 32
  %10 = ashr exact i64 %sext, 32
  %idxprom28 = select i1 %9, i64 0, i64 %10
  %arrayidx29 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %idxprom28
  %11 = load i32* %arrayidx29, align 4, !tbaa !4
  %idxprom30 = sext i32 %11 to i64
  br label %for.body14

for.body14:                                       ; preds = %for.body14, %for.cond12.preheader
  %indvars.iv308 = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next309, %for.body14 ]
  %arrayidx17 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %indvars.iv320, i64 %indvars.iv308
  %12 = load float* %arrayidx17, align 4, !tbaa !0
  %arrayidx23 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %idxprom21, i64 %indvars.iv308
  %13 = load float* %arrayidx23, align 4, !tbaa !0
  %add24 = fadd float %12, %13
  %arrayidx32 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %idxprom30, i64 %indvars.iv308
  %14 = load float* %arrayidx32, align 4, !tbaa !0
  %add33 = fadd float %add24, %14
  %arrayidx37 = getelementptr inbounds [3 x float]* %vert, i64 %indvars.iv315, i64 %indvars.iv308
  store float %add33, float* %arrayidx37, align 4, !tbaa !0
  %indvars.iv.next309 = add i64 %indvars.iv308, 1
  %lftr.wideiv310 = trunc i64 %indvars.iv.next309 to i32
  %exitcond311 = icmp eq i32 %lftr.wideiv310, 3
  br i1 %exitcond311, label %for.end, label %for.body14

for.end:                                          ; preds = %for.body14
  %exitcond318 = icmp eq i32 %8, 4
  br i1 %exitcond318, label %for.inc42, label %for.end.for.cond12.preheader_crit_edge

for.end.for.cond12.preheader_crit_edge:           ; preds = %for.end
  %indvars.iv.next316 = add i64 %indvars.iv315, 1
  %arrayidx20.phi.trans.insert = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %indvars.iv313
  %.pre = load i32* %arrayidx20.phi.trans.insert, align 4, !tbaa !4
  %phitmp = add i64 %indvars.iv313, 1
  br label %for.cond12.preheader

for.inc42:                                        ; preds = %for.end
  %indvars.iv.next325 = add i64 %indvars.iv324, 4
  %indvars.iv.next321 = add i64 %indvars.iv320, 3
  %15 = trunc i64 %indvars.iv.next321 to i32
  %cmp = icmp slt i32 %15, 6
  br i1 %cmp, label %for.body, label %for.body47

for.body47:                                       ; preds = %for.inc42, %for.inc98
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %for.inc98 ], [ 7, %for.inc42 ]
  %n.2266 = phi i32 [ %30, %for.inc98 ], [ 8, %for.inc42 ]
  %16 = add nsw i64 %indvars.iv304, 4294967289
  %17 = trunc i64 %16 to i32
  %div = sdiv i32 %17, 2
  store i32 %div, i32* %arrayidx, align 16, !tbaa !4
  %add51 = add nsw i32 %div, 1
  store i32 %add51, i32* %arrayidx3, align 4, !tbaa !4
  %18 = trunc i64 %indvars.iv304 to i32
  %cmp53 = icmp eq i32 %18, 7
  %.254 = select i1 %cmp53, i32 8, i32 10
  store i32 %.254, i32* %arrayidx5, align 8, !tbaa !4
  %19 = add nsw i64 %indvars.iv304, 4294967295
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %arrayidx8, align 4, !tbaa !4
  %21 = sext i32 %n.2266 to i64
  br label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %for.end93.for.cond64.preheader_crit_edge, %for.body47
  %22 = phi i32 [ %div, %for.body47 ], [ %.pre326, %for.end93.for.cond64.preheader_crit_edge ]
  %indvars.iv300 = phi i64 [ %21, %for.body47 ], [ %indvars.iv.next301, %for.end93.for.cond64.preheader_crit_edge ]
  %indvars.iv298 = phi i64 [ 1, %for.body47 ], [ %phitmp328, %for.end93.for.cond64.preheader_crit_edge ]
  %idxprom74 = sext i32 %22 to i64
  %23 = trunc i64 %indvars.iv298 to i32
  %24 = icmp eq i32 %23, 4
  %sext329 = shl i64 %indvars.iv298, 32
  %25 = ashr exact i64 %sext329, 32
  %idxprom81 = select i1 %24, i64 0, i64 %25
  %arrayidx82 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %idxprom81
  %26 = load i32* %arrayidx82, align 4, !tbaa !4
  %idxprom83 = sext i32 %26 to i64
  br label %for.body66

for.body66:                                       ; preds = %for.body66, %for.cond64.preheader
  %indvars.iv293 = phi i64 [ 0, %for.cond64.preheader ], [ %indvars.iv.next294, %for.body66 ]
  %arrayidx70 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %indvars.iv304, i64 %indvars.iv293
  %27 = load float* %arrayidx70, align 4, !tbaa !0
  %arrayidx76 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %idxprom74, i64 %indvars.iv293
  %28 = load float* %arrayidx76, align 4, !tbaa !0
  %add77 = fadd float %27, %28
  %arrayidx85 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %idxprom83, i64 %indvars.iv293
  %29 = load float* %arrayidx85, align 4, !tbaa !0
  %add86 = fadd float %add77, %29
  %arrayidx90 = getelementptr inbounds [3 x float]* %vert, i64 %indvars.iv300, i64 %indvars.iv293
  store float %add86, float* %arrayidx90, align 4, !tbaa !0
  %indvars.iv.next294 = add i64 %indvars.iv293, 1
  %lftr.wideiv295 = trunc i64 %indvars.iv.next294 to i32
  %exitcond296 = icmp eq i32 %lftr.wideiv295, 3
  br i1 %exitcond296, label %for.end93, label %for.body66

for.end93:                                        ; preds = %for.body66
  %exitcond303 = icmp eq i32 %23, 4
  br i1 %exitcond303, label %for.inc98, label %for.end93.for.cond64.preheader_crit_edge

for.end93.for.cond64.preheader_crit_edge:         ; preds = %for.end93
  %indvars.iv.next301 = add i64 %indvars.iv300, 1
  %arrayidx73.phi.trans.insert = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %indvars.iv298
  %.pre326 = load i32* %arrayidx73.phi.trans.insert, align 4, !tbaa !4
  %phitmp328 = add i64 %indvars.iv298, 1
  br label %for.cond64.preheader

for.inc98:                                        ; preds = %for.end93
  %30 = add i32 %n.2266, 4
  %indvars.iv.next305 = add i64 %indvars.iv304, 6
  %31 = trunc i64 %indvars.iv.next305 to i32
  %cmp46 = icmp slt i32 %31, 14
  br i1 %cmp46, label %for.body47, label %for.body103

for.body103:                                      ; preds = %for.inc98, %for.inc158
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %for.inc158 ], [ 9, %for.inc98 ]
  %n.4261 = phi i32 [ %44, %for.inc158 ], [ 16, %for.inc98 ]
  %32 = trunc i64 %indvars.iv290 to i32
  %cmp104 = icmp eq i32 %32, 9
  %.255 = select i1 %cmp104, i32 3, i32 0
  store i32 %.255, i32* %arrayidx, align 16, !tbaa !4
  %add111 = add nsw i32 %.255, 1
  store i32 %add111, i32* %arrayidx3, align 4, !tbaa !4
  %storemerge = select i1 %cmp104, i32 6, i32 12
  store i32 %storemerge, i32* %arrayidx5, align 8, !tbaa !4
  %33 = add nsw i64 %indvars.iv290, 4294967295
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %arrayidx8, align 4, !tbaa !4
  %35 = sext i32 %n.4261 to i64
  br label %for.cond124.preheader

for.cond124.preheader:                            ; preds = %for.end153.for.cond124.preheader_crit_edge, %for.body103
  %36 = phi i32 [ %.255, %for.body103 ], [ %.pre327, %for.end153.for.cond124.preheader_crit_edge ]
  %indvars.iv286 = phi i64 [ %35, %for.body103 ], [ %indvars.iv.next287, %for.end153.for.cond124.preheader_crit_edge ]
  %indvars.iv284 = phi i64 [ 1, %for.body103 ], [ %phitmp330, %for.end153.for.cond124.preheader_crit_edge ]
  %idxprom134 = sext i32 %36 to i64
  %37 = trunc i64 %indvars.iv284 to i32
  %38 = icmp eq i32 %37, 4
  %sext331 = shl i64 %indvars.iv284, 32
  %39 = ashr exact i64 %sext331, 32
  %idxprom141 = select i1 %38, i64 0, i64 %39
  %arrayidx142 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %idxprom141
  %40 = load i32* %arrayidx142, align 4, !tbaa !4
  %idxprom143 = sext i32 %40 to i64
  br label %for.body126

for.body126:                                      ; preds = %for.body126, %for.cond124.preheader
  %indvars.iv279 = phi i64 [ 0, %for.cond124.preheader ], [ %indvars.iv.next280, %for.body126 ]
  %arrayidx130 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %indvars.iv290, i64 %indvars.iv279
  %41 = load float* %arrayidx130, align 4, !tbaa !0
  %arrayidx136 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %idxprom134, i64 %indvars.iv279
  %42 = load float* %arrayidx136, align 4, !tbaa !0
  %add137 = fadd float %41, %42
  %arrayidx145 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %idxprom143, i64 %indvars.iv279
  %43 = load float* %arrayidx145, align 4, !tbaa !0
  %add146 = fadd float %add137, %43
  %arrayidx150 = getelementptr inbounds [3 x float]* %vert, i64 %indvars.iv286, i64 %indvars.iv279
  store float %add146, float* %arrayidx150, align 4, !tbaa !0
  %indvars.iv.next280 = add i64 %indvars.iv279, 1
  %lftr.wideiv281 = trunc i64 %indvars.iv.next280 to i32
  %exitcond282 = icmp eq i32 %lftr.wideiv281, 3
  br i1 %exitcond282, label %for.end153, label %for.body126

for.end153:                                       ; preds = %for.body126
  %exitcond289 = icmp eq i32 %37, 4
  br i1 %exitcond289, label %for.inc158, label %for.end153.for.cond124.preheader_crit_edge

for.end153.for.cond124.preheader_crit_edge:       ; preds = %for.end153
  %indvars.iv.next287 = add i64 %indvars.iv286, 1
  %arrayidx133.phi.trans.insert = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %indvars.iv284
  %.pre327 = load i32* %arrayidx133.phi.trans.insert, align 4, !tbaa !4
  %phitmp330 = add i64 %indvars.iv284, 1
  br label %for.cond124.preheader

for.inc158:                                       ; preds = %for.end153
  %44 = add i32 %n.4261, 4
  %indvars.iv.next291 = add i64 %indvars.iv290, 2
  %45 = trunc i64 %indvars.iv.next291 to i32
  %cmp102 = icmp slt i32 %45, 12
  br i1 %cmp102, label %for.body103, label %for.body.i

for.body.i:                                       ; preds = %for.inc158, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.inc158 ]
  %arrayidx2.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 %indvars.iv.i
  %46 = load float* %arrayidx2.i, align 4, !tbaa !0
  %conv3.i = fmul float %46, 5.000000e-01
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv.i
  store float %conv3.i, float* %arrayidx5.i, align 4, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv277 = trunc i64 %indvars.iv.next.i to i32
  %exitcond278 = icmp eq i32 %lftr.wideiv277, 3
  br i1 %exitcond278, label %for.cond165.preheader, label %for.body.i

for.cond165.preheader:                            ; preds = %for.body.i, %for.inc184
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %for.inc184 ], [ 0, %for.body.i ]
  br label %for.body167

for.body167:                                      ; preds = %for.body167, %for.cond165.preheader
  %indvars.iv = phi i64 [ 0, %for.cond165.preheader ], [ %indvars.iv.next, %for.body167 ]
  %arrayidx171 = getelementptr inbounds [3 x float]* %vert, i64 %indvars.iv273, i64 %indvars.iv
  %47 = load float* %arrayidx171, align 4, !tbaa !0
  %conv = fpext float %47 to double
  %mul = fmul double %conv, 2.500000e-01
  %arrayidx173 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv
  %48 = load float* %arrayidx173, align 4, !tbaa !0
  %conv174 = fpext float %48 to double
  %add175 = fadd double %mul, %conv174
  %conv176 = fptrunc double %add175 to float
  store float %conv176, float* %arrayidx171, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc184, label %for.body167

for.inc184:                                       ; preds = %for.body167
  %indvars.iv.next274 = add i64 %indvars.iv273, 1
  %lftr.wideiv275 = trunc i64 %indvars.iv.next274 to i32
  %exitcond276 = icmp eq i32 %lftr.wideiv275, 24
  br i1 %exitcond276, label %for.end186, label %for.cond165.preheader

for.end186:                                       ; preds = %for.inc184
  call void @llvm.lifetime.end(i64 168, i8* %0) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32* @compact_unitcell_edges() #1 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc11, %entry
  %indvars.iv48 = phi i64 [ 0, %entry ], [ %indvars.iv.next49, %for.inc11 ]
  %i.040 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ]
  %mul = shl nsw i32 %i.040, 2
  br label %for.body3

for.cond14.preheader:                             ; preds = %for.inc11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([72 x i32]* @compact_unitcell_edges.edge, i64 0, i64 48) to i8*), i8* bitcast ([24 x i32]* @compact_unitcell_edges.hexcon to i8*), i64 96, i32 16, i1 false)
  ret i32* getelementptr inbounds ([72 x i32]* @compact_unitcell_edges.edge, i64 0, i64 0)

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ %indvars.iv48, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %j.038 = phi i32 [ 0, %for.cond1.preheader ], [ %add5, %for.body3 ]
  %add = add nsw i32 %j.038, %mul
  %0 = or i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds [72 x i32]* @compact_unitcell_edges.edge, i64 0, i64 %indvars.iv
  store i32 %add, i32* %arrayidx, align 8, !tbaa !4
  %add5 = add nsw i32 %j.038, 1
  %1 = icmp eq i32 %add5, 4
  %tmp = select i1 %1, i32 0, i32 %add5
  %add6 = add nsw i32 %tmp, %mul
  %indvars.iv.next = add i64 %indvars.iv, 2
  %arrayidx9 = getelementptr inbounds [72 x i32]* @compact_unitcell_edges.edge, i64 0, i64 %0
  store i32 %add6, i32* %arrayidx9, align 4, !tbaa !4
  %exitcond = icmp eq i32 %add5, 4
  br i1 %exitcond, label %for.inc11, label %for.body3

for.inc11:                                        ; preds = %for.body3
  %indvars.iv.next49 = add i64 %indvars.iv48, 8
  %inc12 = add nsw i32 %i.040, 1
  %exitcond50 = icmp eq i32 %inc12, 6
  br i1 %exitcond50, label %for.cond14.preheader, label %for.cond1.preheader
}

; Function Attrs: nounwind optsize uwtable
define void @put_atoms_in_box([3 x float]* nocapture %box, i32 %natoms, [3 x float]* nocapture %x) #1 {
entry:
  %cmp85 = icmp sgt i32 %natoms, 0
  br i1 %cmp85, label %for.cond1.preheader, label %for.end48

for.cond1.preheader:                              ; preds = %entry, %for.inc46
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.inc46 ], [ 0, %entry ]
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond1.preheader, %for.inc44
  %indvars.iv95 = phi i64 [ 2, %for.cond1.preheader ], [ %indvars.iv.next96, %for.inc44 ]
  %indvars.iv91 = phi i32 [ 3, %for.cond1.preheader ], [ %indvars.iv.next92, %for.inc44 ]
  %arrayidx5 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv97, i64 %indvars.iv95
  %0 = load float* %arrayidx5, align 4, !tbaa !0
  %cmp677 = fcmp olt float %0, 0.000000e+00
  br i1 %cmp677, label %for.body9, label %while.cond18.loopexit

while.cond.loopexit:                              ; preds = %for.body9
  %.pre102 = load float* %arrayidx5, align 4, !tbaa !0
  %cmp6 = fcmp olt float %.pre102, 0.000000e+00
  br i1 %cmp6, label %for.body9, label %while.cond18.loopexit

for.body9:                                        ; preds = %while.cond.preheader, %while.cond.loopexit, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %while.cond.loopexit ], [ 0, %while.cond.preheader ]
  %arrayidx13 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv95, i64 %indvars.iv
  %1 = load float* %arrayidx13, align 4, !tbaa !0
  %arrayidx17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv97, i64 %indvars.iv
  %2 = load float* %arrayidx17, align 4, !tbaa !0
  %add = fadd float %1, %2
  store float %add, float* %arrayidx17, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv91
  br i1 %exitcond, label %while.cond.loopexit, label %for.body9

while.cond18.loopexit:                            ; preds = %while.cond.loopexit, %while.cond.preheader
  %3 = phi float [ %0, %while.cond.preheader ], [ %.pre102, %while.cond.loopexit ]
  %arrayidx26 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv95, i64 %indvars.iv95
  %4 = load float* %arrayidx26, align 4, !tbaa !0
  %cmp2783 = fcmp ult float %3, %4
  br i1 %cmp2783, label %for.inc44, label %for.body31

while.cond18.loopexit80:                          ; preds = %for.body31
  %.pre = load float* %arrayidx5, align 4, !tbaa !0
  %.pre101 = load float* %arrayidx26, align 4, !tbaa !0
  %cmp27 = fcmp ult float %.pre, %.pre101
  br i1 %cmp27, label %for.inc44, label %for.body31

for.body31:                                       ; preds = %while.cond18.loopexit, %while.cond18.loopexit80, %for.body31
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %for.body31 ], [ 0, %while.cond18.loopexit80 ], [ 0, %while.cond18.loopexit ]
  %arrayidx35 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv95, i64 %indvars.iv89
  %5 = load float* %arrayidx35, align 4, !tbaa !0
  %arrayidx39 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv97, i64 %indvars.iv89
  %6 = load float* %arrayidx39, align 4, !tbaa !0
  %sub = fsub float %6, %5
  store float %sub, float* %arrayidx39, align 4, !tbaa !0
  %indvars.iv.next90 = add i64 %indvars.iv89, 1
  %lftr.wideiv93 = trunc i64 %indvars.iv.next90 to i32
  %exitcond94 = icmp eq i32 %lftr.wideiv93, %indvars.iv91
  br i1 %exitcond94, label %while.cond18.loopexit80, label %for.body31

for.inc44:                                        ; preds = %while.cond18.loopexit80, %while.cond18.loopexit
  %indvars.iv.next96 = add i64 %indvars.iv95, -1
  %7 = trunc i64 %indvars.iv95 to i32
  %cmp2 = icmp sgt i32 %7, 0
  %indvars.iv.next92 = add i32 %indvars.iv91, -1
  br i1 %cmp2, label %while.cond.preheader, label %for.inc46

for.inc46:                                        ; preds = %for.inc44
  %indvars.iv.next98 = add i64 %indvars.iv97, 1
  %lftr.wideiv99 = trunc i64 %indvars.iv.next98 to i32
  %exitcond100 = icmp eq i32 %lftr.wideiv99, %natoms
  br i1 %exitcond100, label %for.end48, label %for.cond1.preheader

for.end48:                                        ; preds = %for.inc46, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @put_atoms_in_triclinic_unitcell([3 x float]* nocapture %box, i32 %natoms, [3 x float]* nocapture %x) #1 {
entry:
  %box_center = alloca [3 x float], align 4
  %shift_mat = alloca [3 x [3 x float]], align 16
  %0 = bitcast [3 x [3 x float]]* %shift_mat to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx2.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 %indvars.iv.i
  %1 = load float* %arrayidx2.i, align 4, !tbaa !0
  %conv3.i = fmul float %1, 5.000000e-01
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv.i
  store float %conv3.i, float* %arrayidx5.i, align 4, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv199 = trunc i64 %indvars.iv.next.i to i32
  %exitcond200 = icmp eq i32 %lftr.wideiv199, 3
  br i1 %exitcond200, label %for.cond1.preheader, label %for.body.i

for.cond1.preheader:                              ; preds = %for.body.i, %for.inc14
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %for.inc14 ], [ 2, %for.body.i ]
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %for.inc14 ], [ 3, %for.body.i ]
  %2 = add nsw i64 %indvars.iv196, 1
  %3 = trunc i64 %2 to i32
  %cmp2166 = icmp slt i32 %3, 3
  br i1 %cmp2166, label %for.body3, label %for.inc14

for.cond16.preheader:                             ; preds = %for.inc14
  %cmp17163 = icmp sgt i32 %natoms, 0
  br i1 %cmp17163, label %for.cond19.preheader, label %for.end94

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %for.body3 ], [ %indvars.iv190, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv192, i64 %indvars.iv196
  %4 = load float* %arrayidx5, align 4, !tbaa !0
  %arrayidx9 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv192, i64 %indvars.iv192
  %5 = load float* %arrayidx9, align 4, !tbaa !0
  %div = fdiv float %4, %5
  %arrayidx13 = getelementptr inbounds [3 x [3 x float]]* %shift_mat, i64 0, i64 %indvars.iv192, i64 %indvars.iv196
  store float %div, float* %arrayidx13, align 4, !tbaa !0
  %indvars.iv.next193 = add i64 %indvars.iv192, 1
  %lftr.wideiv194 = trunc i64 %indvars.iv.next193 to i32
  %exitcond195 = icmp eq i32 %lftr.wideiv194, 3
  br i1 %exitcond195, label %for.inc14, label %for.body3

for.inc14:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv.next197 = add i64 %indvars.iv196, -1
  %6 = trunc i64 %indvars.iv196 to i32
  %cmp = icmp sgt i32 %6, 0
  %indvars.iv.next191 = add i64 %indvars.iv190, -1
  br i1 %cmp, label %for.cond1.preheader, label %for.cond16.preheader

for.cond19.preheader:                             ; preds = %for.cond16.preheader, %for.inc92
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %for.inc92 ], [ 0, %for.cond16.preheader ]
  br label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.cond19.preheader, %for.inc89
  %indvars.iv183 = phi i64 [ 2, %for.cond19.preheader ], [ %indvars.iv.next184, %for.inc89 ]
  %indvars.iv179 = phi i32 [ 3, %for.cond19.preheader ], [ %indvars.iv.next180, %for.inc89 ]
  %indvars.iv = phi i64 [ 3, %for.cond19.preheader ], [ %indvars.iv.next, %for.inc89 ]
  %7 = add nsw i64 %indvars.iv183, 1
  %8 = trunc i64 %7 to i32
  %cmp24146 = icmp slt i32 %8, 3
  br i1 %cmp24146, label %for.body25, label %while.cond.loopexit

for.body25:                                       ; preds = %for.cond23.preheader, %for.body25
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %for.body25 ], [ %indvars.iv, %for.cond23.preheader ]
  %shift.0147 = phi float [ %add36, %for.body25 ], [ 0.000000e+00, %for.cond23.preheader ]
  %arrayidx29 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv186, i64 %indvars.iv169
  %9 = load float* %arrayidx29, align 4, !tbaa !0
  %arrayidx31 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv169
  %10 = load float* %arrayidx31, align 4, !tbaa !0
  %sub = fsub float %9, %10
  %arrayidx35 = getelementptr inbounds [3 x [3 x float]]* %shift_mat, i64 0, i64 %indvars.iv169, i64 %indvars.iv183
  %11 = load float* %arrayidx35, align 4, !tbaa !0
  %mul = fmul float %sub, %11
  %add36 = fadd float %shift.0147, %mul
  %indvars.iv.next170 = add i64 %indvars.iv169, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next170 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %while.cond.loopexit, label %for.body25

while.cond.loopexit:                              ; preds = %for.body25, %for.cond23.preheader
  %shift.0.lcssa = phi float [ 0.000000e+00, %for.cond23.preheader ], [ %add36, %for.body25 ]
  %arrayidx43 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv186, i64 %indvars.iv183
  %12 = load float* %arrayidx43, align 4, !tbaa !0
  %sub44152 = fsub float %12, %shift.0.lcssa
  %cmp45153 = fcmp olt float %sub44152, 0.000000e+00
  br i1 %cmp45153, label %for.body48, label %while.cond61.loopexit

while.cond.loopexit149:                           ; preds = %for.body48
  %.pre202 = load float* %arrayidx43, align 4, !tbaa !0
  %sub44 = fsub float %.pre202, %shift.0.lcssa
  %cmp45 = fcmp olt float %sub44, 0.000000e+00
  br i1 %cmp45, label %for.body48, label %while.cond61.loopexit

for.body48:                                       ; preds = %while.cond.loopexit, %while.cond.loopexit149, %for.body48
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %for.body48 ], [ 0, %while.cond.loopexit149 ], [ 0, %while.cond.loopexit ]
  %arrayidx52 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv183, i64 %indvars.iv171
  %13 = load float* %arrayidx52, align 4, !tbaa !0
  %arrayidx56 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv186, i64 %indvars.iv171
  %14 = load float* %arrayidx56, align 4, !tbaa !0
  %add57 = fadd float %13, %14
  store float %add57, float* %arrayidx56, align 4, !tbaa !0
  %indvars.iv.next172 = add i64 %indvars.iv171, 1
  %lftr.wideiv175 = trunc i64 %indvars.iv.next172 to i32
  %exitcond176 = icmp eq i32 %lftr.wideiv175, %indvars.iv179
  br i1 %exitcond176, label %while.cond.loopexit149, label %for.body48

while.cond61.loopexit:                            ; preds = %while.cond.loopexit149, %while.cond.loopexit
  %15 = phi float [ %12, %while.cond.loopexit ], [ %.pre202, %while.cond.loopexit149 ]
  %sub66160 = fsub float %15, %shift.0.lcssa
  %arrayidx70 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv183, i64 %indvars.iv183
  %16 = load float* %arrayidx70, align 4, !tbaa !0
  %cmp71161 = fcmp ult float %sub66160, %16
  br i1 %cmp71161, label %for.inc89, label %for.body75

while.cond61.loopexit157:                         ; preds = %for.body75
  %.pre = load float* %arrayidx43, align 4, !tbaa !0
  %.pre201 = load float* %arrayidx70, align 4, !tbaa !0
  %sub66 = fsub float %.pre, %shift.0.lcssa
  %cmp71 = fcmp ult float %sub66, %.pre201
  br i1 %cmp71, label %for.inc89, label %for.body75

for.body75:                                       ; preds = %while.cond61.loopexit, %while.cond61.loopexit157, %for.body75
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %for.body75 ], [ 0, %while.cond61.loopexit157 ], [ 0, %while.cond61.loopexit ]
  %arrayidx79 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv183, i64 %indvars.iv177
  %17 = load float* %arrayidx79, align 4, !tbaa !0
  %arrayidx83 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv186, i64 %indvars.iv177
  %18 = load float* %arrayidx83, align 4, !tbaa !0
  %sub84 = fsub float %18, %17
  store float %sub84, float* %arrayidx83, align 4, !tbaa !0
  %indvars.iv.next178 = add i64 %indvars.iv177, 1
  %lftr.wideiv181 = trunc i64 %indvars.iv.next178 to i32
  %exitcond182 = icmp eq i32 %lftr.wideiv181, %indvars.iv179
  br i1 %exitcond182, label %while.cond61.loopexit157, label %for.body75

for.inc89:                                        ; preds = %while.cond61.loopexit157, %while.cond61.loopexit
  %indvars.iv.next184 = add i64 %indvars.iv183, -1
  %19 = trunc i64 %indvars.iv183 to i32
  %cmp20 = icmp sgt i32 %19, 0
  %indvars.iv.next = add i64 %indvars.iv, -1
  %indvars.iv.next180 = add i32 %indvars.iv179, -1
  br i1 %cmp20, label %for.cond23.preheader, label %for.inc92

for.inc92:                                        ; preds = %for.inc89
  %indvars.iv.next187 = add i64 %indvars.iv186, 1
  %lftr.wideiv188 = trunc i64 %indvars.iv.next187 to i32
  %exitcond189 = icmp eq i32 %lftr.wideiv188, %natoms
  br i1 %exitcond189, label %for.end94, label %for.cond19.preheader

for.end94:                                        ; preds = %for.inc92, %for.cond16.preheader
  call void @llvm.lifetime.end(i64 36, i8* %0) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @put_atoms_in_compact_unitcell([3 x float]* %box, i32 %natoms, [3 x float]* nocapture %x) #1 {
entry:
  %box_center = alloca [3 x float], align 4
  %dx = alloca [3 x float], align 4
  call void @init_pbc([3 x float]* %box) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx2.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 %indvars.iv.i
  %0 = load float* %arrayidx2.i, align 4, !tbaa !0
  %conv3.i = fmul float %0, 5.000000e-01
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv.i
  store float %conv3.i, float* %arrayidx5.i, align 4, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv18 = trunc i64 %indvars.iv.next.i to i32
  %exitcond19 = icmp eq i32 %lftr.wideiv18, 3
  br i1 %exitcond19, label %for.cond.preheader, label %for.body.i

for.cond.preheader:                               ; preds = %for.body.i
  %arraydecay = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 0
  %cmp16 = icmp sgt i32 %natoms, 0
  br i1 %cmp16, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arraydecay3 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %arrayidx2.i14 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 1
  %arrayidx3.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %arrayidx5.i15 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 2
  %arrayidx6.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arraydecay1 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  call void @pbc_dx(float* %arraydecay1, float* %arraydecay, float* %arraydecay3) #6
  %1 = load float* %arraydecay, align 4, !tbaa !0
  %2 = load float* %arraydecay3, align 4, !tbaa !0
  %add.i = fadd float %1, %2
  %3 = load float* %arrayidx2.i14, align 4, !tbaa !0
  %4 = load float* %arrayidx3.i, align 4, !tbaa !0
  %add4.i = fadd float %3, %4
  %5 = load float* %arrayidx5.i15, align 4, !tbaa !0
  %6 = load float* %arrayidx6.i, align 4, !tbaa !0
  %add7.i = fadd float %5, %6
  store float %add.i, float* %arraydecay1, align 4, !tbaa !0
  %arrayidx9.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  store float %add4.i, float* %arrayidx9.i, align 4, !tbaa !0
  %arrayidx10.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  store float %add7.i, float* %arrayidx10.i, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
