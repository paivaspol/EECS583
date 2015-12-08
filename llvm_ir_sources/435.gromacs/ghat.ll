; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str1 = private unnamed_addr constant [41 x i8] c"%8d  %8d  %8d  %15.10e  %15.10e %15.10e\0A\00", align 1
@.str2 = private unnamed_addr constant [47 x i8] c"%8d  %8d  %8d  %8d  %15.10e  %15.10e  %15.10e\0A\00", align 1
@.str3 = private unnamed_addr constant [36 x i8] c"%10g  %10g  %10g  %10g  %10g  %10g\0A\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"  %12.5e\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"ghat.xvg\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"G-Hat\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"gk\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"%10g  %10g\0A\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str12 = private unnamed_addr constant [16 x i8] c"%d%d%d%lf%lf%lf\00", align 1
@.str13 = private unnamed_addr constant [18 x i8] c"%d%d%d%d%lf%lf%lf\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"%lf%lf%lf%lf%lf%lf\00", align 1
@.str15 = private unnamed_addr constant [38 x i8] c"\0AOpened %s for reading ghat function\0A\00", align 1
@.str16 = private unnamed_addr constant [26 x i8] c"gridsize: %10d %10d %10d\0A\00", align 1
@.str17 = private unnamed_addr constant [26 x i8] c"spacing:  %10g %10g %10g\0A\00", align 1
@.str18 = private unnamed_addr constant [86 x i8] c"    nalias    porder     niter      bSym      beta[X-Z]\0A%10d%10d%10d%10d%10g%10g%10g\0A\00", align 1
@.str19 = private unnamed_addr constant [87 x i8] c"      acut        r1      pval      zval      eref      qopt\0A%10g%10g%10g%10g%10g%10g\0A\00", align 1
@.str20 = private unnamed_addr constant [26 x i8] c"Reading ghat of %d %d %d\0A\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str22 = private unnamed_addr constant [11 x i8] c"output.hat\00", align 1
@.str23 = private unnamed_addr constant [35 x i8] c"\0ASuccessfully read ghat function!\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @symmetrize_ghat(i32 %nx, i32 %ny, i32 %nz, float*** nocapture %ghat) #0 {
entry:
  %div = sdiv i32 %nx, 2
  %cmp115 = icmp slt i32 %nx, -1
  br i1 %cmp115, label %for.end64, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %div2 = sdiv i32 %ny, 2
  %cmp3113 = icmp slt i32 %ny, -1
  %div8 = sdiv i32 %nz, 2
  %cmp9111 = icmp slt i32 %nz, -1
  br label %for.body

for.body:                                         ; preds = %for.inc62, %for.body.lr.ph
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.inc62 ], [ 0, %for.body.lr.ph ]
  %.pre = trunc i64 %indvars.iv119 to i32
  br i1 %cmp3113, label %for.inc62, label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %for.body
  %sub = sub nsw i32 %nx, %.pre
  %rem = srem i32 %sub, %nx
  %arrayidx = getelementptr inbounds float*** %ghat, i64 %indvars.iv119
  %idxprom37 = sext i32 %rem to i64
  %arrayidx38 = getelementptr inbounds float*** %ghat, i64 %idxprom37
  br label %for.body4

for.body4:                                        ; preds = %for.inc59, %for.body4.lr.ph
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %for.inc59 ], [ 0, %for.body4.lr.ph ]
  %.pre121 = trunc i64 %indvars.iv117 to i32
  br i1 %cmp9111, label %for.inc59, label %for.body10.lr.ph

for.body10.lr.ph:                                 ; preds = %for.body4
  %sub5 = sub nsw i32 %ny, %.pre121
  %rem6 = srem i32 %sub5, %ny
  %0 = load float*** %arrayidx, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds float** %0, i64 %indvars.iv117
  %1 = load float** %arrayidx15, align 8, !tbaa !0
  %idxprom18 = sext i32 %rem6 to i64
  %arrayidx21 = getelementptr inbounds float** %0, i64 %idxprom18
  %2 = load float** %arrayidx21, align 8, !tbaa !0
  %3 = load float*** %arrayidx38, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds float** %3, i64 %indvars.iv117
  %4 = load float** %arrayidx39, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds float** %3, i64 %idxprom18
  %5 = load float** %arrayidx45, align 8, !tbaa !0
  br label %for.body10

for.body10:                                       ; preds = %for.body10, %for.body10.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body10 ], [ 0, %for.body10.lr.ph ]
  %6 = trunc i64 %indvars.iv to i32
  %sub11 = sub nsw i32 %nz, %6
  %rem12 = srem i32 %sub11, %nz
  %arrayidx16 = getelementptr inbounds float* %1, i64 %indvars.iv
  %7 = load float* %arrayidx16, align 4, !tbaa !3
  %arrayidx22 = getelementptr inbounds float* %2, i64 %indvars.iv
  store float %7, float* %arrayidx22, align 4, !tbaa !3
  %idxprom23 = sext i32 %rem12 to i64
  %arrayidx28 = getelementptr inbounds float* %1, i64 %idxprom23
  store float %7, float* %arrayidx28, align 4, !tbaa !3
  %arrayidx34 = getelementptr inbounds float* %2, i64 %idxprom23
  store float %7, float* %arrayidx34, align 4, !tbaa !3
  %arrayidx40 = getelementptr inbounds float* %4, i64 %indvars.iv
  store float %7, float* %arrayidx40, align 4, !tbaa !3
  %arrayidx46 = getelementptr inbounds float* %5, i64 %indvars.iv
  store float %7, float* %arrayidx46, align 4, !tbaa !3
  %arrayidx52 = getelementptr inbounds float* %4, i64 %idxprom23
  store float %7, float* %arrayidx52, align 4, !tbaa !3
  %arrayidx58 = getelementptr inbounds float* %5, i64 %idxprom23
  store float %7, float* %arrayidx58, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %cmp9 = icmp slt i32 %6, %div8
  br i1 %cmp9, label %for.body10, label %for.inc59

for.inc59:                                        ; preds = %for.body4, %for.body10
  %indvars.iv.next118 = add i64 %indvars.iv117, 1
  %cmp3 = icmp slt i32 %.pre121, %div2
  br i1 %cmp3, label %for.body4, label %for.inc62

for.inc62:                                        ; preds = %for.body, %for.inc59
  %indvars.iv.next120 = add i64 %indvars.iv119, 1
  %cmp = icmp slt i32 %.pre, %div
  br i1 %cmp, label %for.body, label %for.end64

for.end64:                                        ; preds = %for.inc62, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @mk_ghat(%struct._IO_FILE* nocapture %fp, i32 %nx, i32 %ny, i32 %nz, float*** nocapture %ghat, float* nocapture %box, float %r1, float %rc, i32 %bSym, i32 %bOld) #0 {
entry:
  %k = alloca [3 x float], align 4
  %lll = alloca [3 x float], align 4
  %arraydecay = getelementptr inbounds [3 x float]* %lll, i64 0, i64 0
  %0 = load float* %box, align 4, !tbaa !3
  %conv.i = fpext float %0 to double
  %div.i = fdiv double 0x401921FB54442D18, %conv.i
  %conv1.i = fptrunc double %div.i to float
  store float %conv1.i, float* %arraydecay, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds float* %box, i64 1
  %1 = load float* %arrayidx3.i, align 4, !tbaa !3
  %conv4.i = fpext float %1 to double
  %div5.i = fdiv double 0x401921FB54442D18, %conv4.i
  %conv6.i = fptrunc double %div5.i to float
  %arrayidx7.i = getelementptr inbounds [3 x float]* %lll, i64 0, i64 1
  store float %conv6.i, float* %arrayidx7.i, align 4, !tbaa !3
  %arrayidx8.i = getelementptr inbounds float* %box, i64 2
  %2 = load float* %arrayidx8.i, align 4, !tbaa !3
  %conv9.i = fpext float %2 to double
  %div10.i = fdiv double 0x401921FB54442D18, %conv9.i
  %conv11.i = fptrunc double %div10.i to float
  %arrayidx12.i = getelementptr inbounds [3 x float]* %lll, i64 0, i64 2
  store float %conv11.i, float* %arrayidx12.i, align 4, !tbaa !3
  %tobool = icmp ne i32 %bSym, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %div = sdiv i32 %nx, 2
  %add = add nsw i32 %div, 1
  %div1 = sdiv i32 %ny, 2
  %add2 = add nsw i32 %div1, 1
  %div3 = sdiv i32 %nz, 2
  %add4 = add nsw i32 %div3, 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %ixmax.0 = phi i32 [ %add, %if.then ], [ %nx, %entry ]
  %iymax.0 = phi i32 [ %add2, %if.then ], [ %ny, %entry ]
  %izmax.0 = phi i32 [ %add4, %if.then ], [ %nz, %entry ]
  %cmp85 = icmp sgt i32 %ixmax.0, 0
  br i1 %cmp85, label %for.cond5.preheader.lr.ph, label %for.end51

for.cond5.preheader.lr.ph:                        ; preds = %if.end
  %cmp683 = icmp sgt i32 %iymax.0, 0
  %cmp981 = icmp sgt i32 %izmax.0, 0
  %arraydecay12 = getelementptr inbounds [3 x float]* %k, i64 0, i64 0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %k, i64 0, i64 1
  %arrayidx5.i = getelementptr inbounds [3 x float]* %k, i64 0, i64 2
  %tobool21 = icmp eq i32 %bOld, 0
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.inc49, %for.cond5.preheader.lr.ph
  %indvars.iv92 = phi i64 [ 0, %for.cond5.preheader.lr.ph ], [ %indvars.iv.next93, %for.inc49 ]
  br i1 %cmp683, label %for.cond8.preheader.lr.ph, label %for.inc49

for.cond8.preheader.lr.ph:                        ; preds = %for.cond5.preheader
  %arrayidx = getelementptr inbounds float*** %ghat, i64 %indvars.iv92
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.inc46, %for.cond8.preheader.lr.ph
  %indvars.iv88 = phi i64 [ 0, %for.cond8.preheader.lr.ph ], [ %indvars.iv.next89, %for.inc46 ]
  br i1 %cmp981, label %for.body10.lr.ph, label %for.inc46

for.body10.lr.ph:                                 ; preds = %for.cond8.preheader
  %3 = trunc i64 %indvars.iv88 to i32
  %4 = trunc i64 %indvars.iv92 to i32
  %5 = or i64 %indvars.iv88, %indvars.iv92
  br label %for.body10

for.body10:                                       ; preds = %if.end41, %for.body10.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next, %if.end41 ]
  %6 = trunc i64 %indvars.iv to i32
  call fastcc void @calc_k(float* %arraydecay, i32 %4, i32 %3, i32 %6, i32 %nx, i32 %ny, i32 %nz, float* %arraydecay12) #4
  %7 = load float* %arraydecay12, align 4, !tbaa !3
  %mul.i = fmul float %7, %7
  %8 = load float* %arrayidx2.i, align 4, !tbaa !3
  %mul4.i = fmul float %8, %8
  %add.i = fadd float %mul.i, %mul4.i
  %9 = load float* %arrayidx5.i, align 4, !tbaa !3
  %mul7.i = fmul float %9, %9
  %add8.i = fadd float %add.i, %mul7.i
  %10 = or i64 %5, %indvars.iv
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.end41, label %if.else20

if.else20:                                        ; preds = %for.body10
  %conv = fpext float %add8.i to double
  %conv24 = call float @sqrtf(float %add8.i) #2
  br i1 %tobool21, label %if.else30, label %if.then22

if.then22:                                        ; preds = %if.else20
  %call25 = call float @gk(float %conv24, float %rc, float %r1) #5
  %conv26 = fpext float %call25 to double
  %mul = fmul double %conv, 5.727650e-04
  %div28 = fdiv double %conv26, %mul
  %conv29 = fptrunc double %div28 to float
  br label %if.end41

if.else30:                                        ; preds = %if.else20
  %call34 = call float @gknew(float %conv24, float %rc, float %r1) #5
  %conv35 = fpext float %call34 to double
  %mul37 = fmul double %conv, 5.727650e-04
  %div38 = fdiv double %conv35, %mul37
  %conv39 = fptrunc double %div38 to float
  br label %if.end41

if.end41:                                         ; preds = %for.body10, %if.then22, %if.else30
  %ggg.0 = phi float [ %conv29, %if.then22 ], [ %conv39, %if.else30 ], [ 0.000000e+00, %for.body10 ]
  %13 = load float*** %arrayidx, align 8, !tbaa !0
  %arrayidx44 = getelementptr inbounds float** %13, i64 %indvars.iv88
  %14 = load float** %arrayidx44, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds float* %14, i64 %indvars.iv
  store float %ggg.0, float* %arrayidx45, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %izmax.0
  br i1 %exitcond, label %for.inc46, label %for.body10

for.inc46:                                        ; preds = %if.end41, %for.cond8.preheader
  %indvars.iv.next89 = add i64 %indvars.iv88, 1
  %lftr.wideiv90 = trunc i64 %indvars.iv.next89 to i32
  %exitcond91 = icmp eq i32 %lftr.wideiv90, %iymax.0
  br i1 %exitcond91, label %for.inc49, label %for.cond8.preheader

for.inc49:                                        ; preds = %for.inc46, %for.cond5.preheader
  %indvars.iv.next93 = add i64 %indvars.iv92, 1
  %lftr.wideiv94 = trunc i64 %indvars.iv.next93 to i32
  %exitcond95 = icmp eq i32 %lftr.wideiv94, %ixmax.0
  br i1 %exitcond95, label %for.end51, label %for.cond5.preheader

for.end51:                                        ; preds = %for.inc49, %if.end
  br i1 %tobool, label %if.then53, label %if.end54

if.then53:                                        ; preds = %for.end51
  call void @symmetrize_ghat(i32 %nx, i32 %ny, i32 %nz, float*** %ghat) #4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %for.end51
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @calc_k(float* nocapture %lll, i32 %ix, i32 %iy, i32 %iz, i32 %nx, i32 %ny, i32 %nz, float* nocapture %k) #0 {
entry:
  %div = sdiv i32 %nx, 2
  %cmp = icmp slt i32 %div, %ix
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %conv = sitofp i32 %ix to float
  %0 = load float* %lll, align 4, !tbaa !3
  %mul = fmul float %conv, %0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %sub = sub nsw i32 %ix, %nx
  %conv1 = sitofp i32 %sub to float
  %1 = load float* %lll, align 4, !tbaa !3
  %mul3 = fmul float %conv1, %1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %mul, %cond.true ], [ %mul3, %cond.false ]
  store float %cond, float* %k, align 4, !tbaa !3
  %div5 = sdiv i32 %ny, 2
  %cmp6 = icmp slt i32 %div5, %iy
  br i1 %cmp6, label %cond.false12, label %cond.true8

cond.true8:                                       ; preds = %cond.end
  %conv9 = sitofp i32 %iy to float
  %arrayidx10 = getelementptr inbounds float* %lll, i64 1
  %2 = load float* %arrayidx10, align 4, !tbaa !3
  %mul11 = fmul float %conv9, %2
  br label %cond.end17

cond.false12:                                     ; preds = %cond.end
  %sub13 = sub nsw i32 %iy, %ny
  %conv14 = sitofp i32 %sub13 to float
  %arrayidx15 = getelementptr inbounds float* %lll, i64 1
  %3 = load float* %arrayidx15, align 4, !tbaa !3
  %mul16 = fmul float %conv14, %3
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false12, %cond.true8
  %cond18 = phi float [ %mul11, %cond.true8 ], [ %mul16, %cond.false12 ]
  %arrayidx19 = getelementptr inbounds float* %k, i64 1
  store float %cond18, float* %arrayidx19, align 4, !tbaa !3
  %div20 = sdiv i32 %nz, 2
  %cmp21 = icmp slt i32 %div20, %iz
  br i1 %cmp21, label %cond.false27, label %cond.true23

cond.true23:                                      ; preds = %cond.end17
  %conv24 = sitofp i32 %iz to float
  %arrayidx25 = getelementptr inbounds float* %lll, i64 2
  %4 = load float* %arrayidx25, align 4, !tbaa !3
  %mul26 = fmul float %conv24, %4
  br label %cond.end32

cond.false27:                                     ; preds = %cond.end17
  %sub28 = sub nsw i32 %iz, %nz
  %conv29 = sitofp i32 %sub28 to float
  %arrayidx30 = getelementptr inbounds float* %lll, i64 2
  %5 = load float* %arrayidx30, align 4, !tbaa !3
  %mul31 = fmul float %conv29, %5
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false27, %cond.true23
  %cond33 = phi float [ %mul26, %cond.true23 ], [ %mul31, %cond.false27 ]
  %arrayidx34 = getelementptr inbounds float* %k, i64 2
  store float %cond33, float* %arrayidx34, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare float @gk(float, float, float) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: optsize
declare float @gknew(float, float, float) #1

; Function Attrs: nounwind optsize uwtable
define void @wr_ghat(i8* %fn, i32 %n1max, i32 %n2max, i32 %n3max, float %h1, float %h2, float %h3, float*** nocapture %ghat, i32 %nalias, i32 %porder, i32 %niter, i32 %bSym, float* nocapture %beta, float %r1, float %rc, float %pval, float %zval, float %eref, float %qopt) #0 {
entry:
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #5
  %conv = fpext float %h1 to double
  %conv1 = fpext float %h2 to double
  %conv2 = fpext float %h3 to double
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), i32 %n1max, i32 %n2max, i32 %n3max, double %conv, double %conv1, double %conv2) #5
  %0 = load float* %beta, align 4, !tbaa !3
  %conv4 = fpext float %0 to double
  %arrayidx5 = getelementptr inbounds float* %beta, i64 1
  %1 = load float* %arrayidx5, align 4, !tbaa !3
  %conv6 = fpext float %1 to double
  %arrayidx7 = getelementptr inbounds float* %beta, i64 2
  %2 = load float* %arrayidx7, align 4, !tbaa !3
  %conv8 = fpext float %2 to double
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([47 x i8]* @.str2, i64 0, i64 0), i32 %nalias, i32 %porder, i32 %niter, i32 %bSym, double %conv4, double %conv6, double %conv8) #5
  %conv10 = fpext float %rc to double
  %conv11 = fpext float %r1 to double
  %conv12 = fpext float %pval to double
  %conv13 = fpext float %zval to double
  %conv14 = fpext float %eref to double
  %conv15 = fpext float %qopt to double
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), double %conv10, double %conv11, double %conv12, double %conv13, double %conv14, double %conv15) #5
  %tobool = icmp eq i32 %bSym, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %div = sdiv i32 %n1max, 2
  %add = add nsw i32 %div, 1
  %div17 = sdiv i32 %n2max, 2
  %add18 = add nsw i32 %div17, 1
  %div19 = sdiv i32 %n3max, 2
  %add20 = add nsw i32 %div19, 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %N3MAX.0 = phi i32 [ %add20, %if.then ], [ %n3max, %entry ]
  %N2MAX.0 = phi i32 [ %add18, %if.then ], [ %n2max, %entry ]
  %N1MAX.0 = phi i32 [ %add, %if.then ], [ %n1max, %entry ]
  %cmp155 = icmp sgt i32 %N1MAX.0, 0
  br i1 %cmp155, label %for.cond22.preheader.lr.ph, label %for.end52

for.cond22.preheader.lr.ph:                       ; preds = %if.end
  %cmp23151 = icmp sgt i32 %N2MAX.0, 0
  %cmp27148 = icmp sgt i32 %N3MAX.0, 0
  br label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.inc50, %for.cond22.preheader.lr.ph
  %indvars.iv174 = phi i64 [ 0, %for.cond22.preheader.lr.ph ], [ %indvars.iv.next175, %for.inc50 ]
  %bNL.0156 = phi i32 [ 0, %for.cond22.preheader.lr.ph ], [ %bNL.1.lcssa, %for.inc50 ]
  br i1 %cmp23151, label %for.cond26.preheader.lr.ph, label %for.inc50

for.cond26.preheader.lr.ph:                       ; preds = %for.cond22.preheader
  %arrayidx32 = getelementptr inbounds float*** %ghat, i64 %indvars.iv174
  br label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.inc47, %for.cond26.preheader.lr.ph
  %indvars.iv170 = phi i64 [ 0, %for.cond26.preheader.lr.ph ], [ %indvars.iv.next171, %for.inc47 ]
  %bNL.1152 = phi i32 [ %bNL.0156, %for.cond26.preheader.lr.ph ], [ %bNL.2.lcssa, %for.inc47 ]
  br i1 %cmp27148, label %for.body29, label %for.end

for.body29:                                       ; preds = %for.cond26.preheader, %for.inc
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %for.inc ], [ 0, %for.cond26.preheader ]
  %nn.0150 = phi i32 [ %inc42, %for.inc ], [ 1, %for.cond26.preheader ]
  %3 = load float*** %arrayidx32, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds float** %3, i64 %indvars.iv170
  %4 = load float** %arrayidx33, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds float* %4, i64 %indvars.iv166
  %5 = load float* %arrayidx34, align 4, !tbaa !3
  %conv35 = fpext float %5 to double
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), double %conv35) #5
  %rem = srem i32 %nn.0150, 6
  %cmp37 = icmp eq i32 %rem, 0
  br i1 %cmp37, label %if.then39, label %for.inc

if.then39:                                        ; preds = %for.body29
  %fputc139 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body29, %if.then39
  %bNL.3 = phi i32 [ 1, %if.then39 ], [ 0, %for.body29 ]
  %indvars.iv.next167 = add i64 %indvars.iv166, 1
  %inc42 = add nsw i32 %nn.0150, 1
  %lftr.wideiv168 = trunc i64 %indvars.iv.next167 to i32
  %exitcond169 = icmp eq i32 %lftr.wideiv168, %N3MAX.0
  br i1 %exitcond169, label %for.end, label %for.body29

for.end:                                          ; preds = %for.inc, %for.cond26.preheader
  %bNL.2.lcssa = phi i32 [ %bNL.1152, %for.cond26.preheader ], [ %bNL.3, %for.inc ]
  %tobool43 = icmp eq i32 %bNL.2.lcssa, 0
  br i1 %tobool43, label %if.then44, label %for.inc47

if.then44:                                        ; preds = %for.end
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %call)
  br label %for.inc47

for.inc47:                                        ; preds = %for.end, %if.then44
  %indvars.iv.next171 = add i64 %indvars.iv170, 1
  %lftr.wideiv172 = trunc i64 %indvars.iv.next171 to i32
  %exitcond173 = icmp eq i32 %lftr.wideiv172, %N2MAX.0
  br i1 %exitcond173, label %for.inc50, label %for.cond26.preheader

for.inc50:                                        ; preds = %for.inc47, %for.cond22.preheader
  %bNL.1.lcssa = phi i32 [ %bNL.0156, %for.cond22.preheader ], [ %bNL.2.lcssa, %for.inc47 ]
  %indvars.iv.next175 = add i64 %indvars.iv174, 1
  %lftr.wideiv176 = trunc i64 %indvars.iv.next175 to i32
  %exitcond177 = icmp eq i32 %lftr.wideiv176, %N1MAX.0
  br i1 %exitcond177, label %for.end52, label %for.cond22.preheader

for.end52:                                        ; preds = %for.inc50, %if.end
  tail call void @ffclose(%struct._IO_FILE* %call) #5
  %call53 = tail call %struct._IO_FILE* @xvgropen(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #5
  br i1 %cmp155, label %for.body57.lr.ph, label %for.end94

for.body57.lr.ph:                                 ; preds = %for.end52
  %cmp61144 = icmp sgt i32 %N2MAX.0, 0
  %cmp69142 = icmp sgt i32 %N3MAX.0, 0
  br label %for.body57

for.body57:                                       ; preds = %for.inc92, %for.body57.lr.ph
  %indvars.iv162 = phi i64 [ 0, %for.body57.lr.ph ], [ %indvars.iv.next163, %for.inc92 ]
  %6 = trunc i64 %indvars.iv162 to i32
  %conv58 = sitofp i32 %6 to float
  %mul = fmul float %conv58, %h1
  %mul.i = fmul float %mul, %mul
  br i1 %cmp61144, label %for.body63.lr.ph, label %for.inc92

for.body63.lr.ph:                                 ; preds = %for.body57
  %arrayidx81 = getelementptr inbounds float*** %ghat, i64 %indvars.iv162
  br label %for.body63

for.body63:                                       ; preds = %for.inc89, %for.body63.lr.ph
  %indvars.iv158 = phi i64 [ 0, %for.body63.lr.ph ], [ %indvars.iv.next159, %for.inc89 ]
  %7 = trunc i64 %indvars.iv158 to i32
  %conv64 = sitofp i32 %7 to float
  %mul65 = fmul float %conv64, %h2
  %mul.i141 = fmul float %mul65, %mul65
  %add67 = fadd float %mul.i, %mul.i141
  br i1 %cmp69142, label %for.body71, label %for.inc89

for.body71:                                       ; preds = %for.body63, %for.body71
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body71 ], [ 0, %for.body63 ]
  %8 = trunc i64 %indvars.iv to i32
  %conv72 = sitofp i32 %8 to float
  %mul73 = fmul float %conv72, %h3
  %mul.i140 = fmul float %mul73, %mul73
  %add75 = fadd float %add67, %mul.i140
  %conv76 = fpext float %add75 to double
  %call77 = tail call double @sqrt(double %conv76) #5
  %9 = load float*** %arrayidx81, align 8, !tbaa !0
  %arrayidx82 = getelementptr inbounds float** %9, i64 %indvars.iv158
  %10 = load float** %arrayidx82, align 8, !tbaa !0
  %arrayidx83 = getelementptr inbounds float* %10, i64 %indvars.iv
  %11 = load float* %arrayidx83, align 4, !tbaa !3
  %conv84 = fpext float %11 to double
  %call85 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call53, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), double %call77, double %conv84) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %N3MAX.0
  br i1 %exitcond, label %for.inc89, label %for.body71

for.inc89:                                        ; preds = %for.body71, %for.body63
  %indvars.iv.next159 = add i64 %indvars.iv158, 1
  %lftr.wideiv160 = trunc i64 %indvars.iv.next159 to i32
  %exitcond161 = icmp eq i32 %lftr.wideiv160, %N2MAX.0
  br i1 %exitcond161, label %for.inc92, label %for.body63

for.inc92:                                        ; preds = %for.inc89, %for.body57
  %indvars.iv.next163 = add i64 %indvars.iv162, 1
  %lftr.wideiv164 = trunc i64 %indvars.iv.next163 to i32
  %exitcond165 = icmp eq i32 %lftr.wideiv164, %N1MAX.0
  br i1 %exitcond165, label %for.end94, label %for.body57

for.end94:                                        ; preds = %for.inc92, %for.end52
  tail call void @ffclose(%struct._IO_FILE* %call53) #5
  ret void
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #1

; Function Attrs: optsize
declare %struct._IO_FILE* @xvgropen(i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @pr_scalar_gk(i8* %fn, i32 %nx, i32 %ny, i32 %nz, float* nocapture %box, float*** nocapture %ghat) #0 {
entry:
  %k = alloca [3 x float], align 4
  %lll = alloca [3 x float], align 4
  %arraydecay = getelementptr inbounds [3 x float]* %lll, i64 0, i64 0
  %0 = load float* %box, align 4, !tbaa !3
  %conv.i = fpext float %0 to double
  %div.i = fdiv double 0x401921FB54442D18, %conv.i
  %conv1.i = fptrunc double %div.i to float
  store float %conv1.i, float* %arraydecay, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds float* %box, i64 1
  %1 = load float* %arrayidx3.i, align 4, !tbaa !3
  %conv4.i = fpext float %1 to double
  %div5.i = fdiv double 0x401921FB54442D18, %conv4.i
  %conv6.i = fptrunc double %div5.i to float
  %arrayidx7.i = getelementptr inbounds [3 x float]* %lll, i64 0, i64 1
  store float %conv6.i, float* %arrayidx7.i, align 4, !tbaa !3
  %arrayidx8.i = getelementptr inbounds float* %box, i64 2
  %2 = load float* %arrayidx8.i, align 4, !tbaa !3
  %conv9.i = fpext float %2 to double
  %div10.i = fdiv double 0x401921FB54442D18, %conv9.i
  %conv11.i = fptrunc double %div10.i to float
  %arrayidx12.i = getelementptr inbounds [3 x float]* %lll, i64 0, i64 2
  store float %conv11.i, float* %arrayidx12.i, align 4, !tbaa !3
  %call = call %struct._IO_FILE* @xvgropen(i8* %fn, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #5
  %cmp41 = icmp sgt i32 %nx, 0
  br i1 %cmp41, label %for.cond1.preheader.lr.ph, label %for.end22

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp239 = icmp sgt i32 %ny, 0
  %cmp537 = icmp sgt i32 %nz, 0
  %arraydecay8 = getelementptr inbounds [3 x float]* %k, i64 0, i64 0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %k, i64 0, i64 1
  %arrayidx5.i = getelementptr inbounds [3 x float]* %k, i64 0, i64 2
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc20, %for.cond1.preheader.lr.ph
  %indvars.iv47 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next48, %for.inc20 ]
  br i1 %cmp239, label %for.cond4.preheader.lr.ph, label %for.inc20

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float*** %ghat, i64 %indvars.iv47
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc17, %for.cond4.preheader.lr.ph
  %indvars.iv43 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next44, %for.inc17 ]
  br i1 %cmp537, label %for.body6, label %for.inc17

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %3 = trunc i64 %indvars.iv to i32
  %4 = trunc i64 %indvars.iv43 to i32
  %5 = trunc i64 %indvars.iv47 to i32
  call fastcc void @calc_k(float* %arraydecay, i32 %5, i32 %4, i32 %3, i32 %nx, i32 %ny, i32 %nz, float* %arraydecay8) #4
  %6 = load float* %arraydecay8, align 4, !tbaa !3
  %mul.i = fmul float %6, %6
  %7 = load float* %arrayidx2.i, align 4, !tbaa !3
  %mul4.i = fmul float %7, %7
  %add.i = fadd float %mul.i, %mul4.i
  %8 = load float* %arrayidx5.i, align 4, !tbaa !3
  %mul7.i = fmul float %8, %8
  %add8.i = fadd float %add.i, %mul7.i
  %conv9.i36 = call float @sqrtf(float %add8.i) #2
  %conv = fpext float %conv9.i36 to double
  %9 = load float*** %arrayidx, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds float** %9, i64 %indvars.iv43
  %10 = load float** %arrayidx13, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds float* %10, i64 %indvars.iv
  %11 = load float* %arrayidx14, align 4, !tbaa !3
  %conv15 = fpext float %11 to double
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), double %conv, double %conv15) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nz
  br i1 %exitcond, label %for.inc17, label %for.body6

for.inc17:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv.next44 = add i64 %indvars.iv43, 1
  %lftr.wideiv45 = trunc i64 %indvars.iv.next44 to i32
  %exitcond46 = icmp eq i32 %lftr.wideiv45, %ny
  br i1 %exitcond46, label %for.inc20, label %for.cond4.preheader

for.inc20:                                        ; preds = %for.inc17, %for.cond1.preheader
  %indvars.iv.next48 = add i64 %indvars.iv47, 1
  %lftr.wideiv49 = trunc i64 %indvars.iv.next48 to i32
  %exitcond50 = icmp eq i32 %lftr.wideiv49, %nx
  br i1 %exitcond50, label %for.end22, label %for.cond1.preheader

for.end22:                                        ; preds = %for.inc20, %entry
  call void @ffclose(%struct._IO_FILE* %call) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float*** @rd_ghat(%struct._IO_FILE* nocapture %log, i8* %fn, i32* nocapture %igrid, float* nocapture %gridspace, float* nocapture %beta, i32* %porder, float* nocapture %r1, float* nocapture %rc) #0 {
entry:
  %gx = alloca double, align 8
  %gy = alloca double, align 8
  %gz = alloca double, align 8
  %alX = alloca double, align 8
  %alY = alloca double, align 8
  %alZ = alloca double, align 8
  %ddd = alloca double, align 8
  %acut = alloca double, align 8
  %pval = alloca double, align 8
  %zval = alloca double, align 8
  %eref = alloca double, align 8
  %qopt = alloca double, align 8
  %r11 = alloca double, align 8
  %nalias = alloca i32, align 4
  %niter = alloca i32, align 4
  %bSym = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  %call = call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #5
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([16 x i8]* @.str12, i64 0, i64 0), i32* %ix, i32* %iy, i32* %iz, double* %gx, double* %gy, double* %gz) #5
  %0 = load i32* %ix, align 4, !tbaa !4
  store i32 %0, i32* %igrid, align 4, !tbaa !4
  %1 = load i32* %iy, align 4, !tbaa !4
  %arrayidx2 = getelementptr inbounds i32* %igrid, i64 1
  store i32 %1, i32* %arrayidx2, align 4, !tbaa !4
  %2 = load i32* %iz, align 4, !tbaa !4
  %arrayidx3 = getelementptr inbounds i32* %igrid, i64 2
  store i32 %2, i32* %arrayidx3, align 4, !tbaa !4
  %3 = load double* %gx, align 8, !tbaa !5
  %conv = fptrunc double %3 to float
  store float %conv, float* %gridspace, align 4, !tbaa !3
  %4 = load double* %gy, align 8, !tbaa !5
  %conv5 = fptrunc double %4 to float
  %arrayidx6 = getelementptr inbounds float* %gridspace, i64 1
  store float %conv5, float* %arrayidx6, align 4, !tbaa !3
  %5 = load double* %gz, align 8, !tbaa !5
  %conv7 = fptrunc double %5 to float
  %arrayidx8 = getelementptr inbounds float* %gridspace, i64 2
  store float %conv7, float* %arrayidx8, align 4, !tbaa !3
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), i32* %nalias, i32* %porder, i32* %niter, i32* %bSym, double* %alX, double* %alY, double* %alZ) #5
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), double* %acut, double* %r11, double* %pval, double* %zval, double* %eref, double* %qopt) #5
  %6 = load double* %r11, align 8, !tbaa !5
  %conv11 = fptrunc double %6 to float
  store float %conv11, float* %r1, align 4, !tbaa !3
  %7 = load double* %acut, align 8, !tbaa !5
  %conv12 = fptrunc double %7 to float
  store float %conv12, float* %rc, align 4, !tbaa !3
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([38 x i8]* @.str15, i64 0, i64 0), i8* %fn) #5
  %8 = load i32* %ix, align 4, !tbaa !4
  %9 = load i32* %iy, align 4, !tbaa !4
  %10 = load i32* %iz, align 4, !tbaa !4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str16, i64 0, i64 0), i32 %8, i32 %9, i32 %10) #5
  %11 = load double* %gx, align 8, !tbaa !5
  %12 = load double* %gy, align 8, !tbaa !5
  %13 = load double* %gz, align 8, !tbaa !5
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str17, i64 0, i64 0), double %11, double %12, double %13) #5
  %14 = load i32* %nalias, align 4, !tbaa !4
  %15 = load i32* %porder, align 4, !tbaa !4
  %16 = load i32* %niter, align 4, !tbaa !4
  %17 = load i32* %bSym, align 4, !tbaa !4
  %18 = load double* %alX, align 8, !tbaa !5
  %19 = load double* %alY, align 8, !tbaa !5
  %20 = load double* %alZ, align 8, !tbaa !5
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([86 x i8]* @.str18, i64 0, i64 0), i32 %14, i32 %15, i32 %16, i32 %17, double %18, double %19, double %20) #5
  %21 = load double* %acut, align 8, !tbaa !5
  %22 = load float* %r1, align 4, !tbaa !3
  %conv17 = fpext float %22 to double
  %23 = load double* %pval, align 8, !tbaa !5
  %24 = load double* %zval, align 8, !tbaa !5
  %25 = load double* %eref, align 8, !tbaa !5
  %26 = load double* %qopt, align 8, !tbaa !5
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([87 x i8]* @.str19, i64 0, i64 0), double %21, double %conv17, double %23, double %24, double %25, double %26) #5
  %call19 = call i32 @fflush(%struct._IO_FILE* %log) #5
  %27 = load double* %alX, align 8, !tbaa !5
  %conv20 = fptrunc double %27 to float
  store float %conv20, float* %beta, align 4, !tbaa !3
  %28 = load double* %alY, align 8, !tbaa !5
  %conv22 = fptrunc double %28 to float
  %arrayidx23 = getelementptr inbounds float* %beta, i64 1
  store float %conv22, float* %arrayidx23, align 4, !tbaa !3
  %29 = load double* %alZ, align 8, !tbaa !5
  %conv24 = fptrunc double %29 to float
  %arrayidx25 = getelementptr inbounds float* %beta, i64 2
  store float %conv24, float* %arrayidx25, align 4, !tbaa !3
  %30 = load i32* %ix, align 4, !tbaa !4
  %31 = load i32* %iy, align 4, !tbaa !4
  %32 = load i32* %iz, align 4, !tbaa !4
  %call26 = call float*** @mk_rgrid(i32 %30, i32 %31, i32 %32) #5
  %33 = load i32* %bSym, align 4, !tbaa !4
  %tobool = icmp eq i32 %33, 0
  %34 = load i32* %igrid, align 4, !tbaa !4
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %div = sdiv i32 %34, 2
  %add = add nsw i32 %div, 1
  %35 = load i32* %arrayidx2, align 4, !tbaa !4
  %div29 = sdiv i32 %35, 2
  %add30 = add nsw i32 %div29, 1
  %36 = load i32* %arrayidx3, align 4, !tbaa !4
  %div32 = sdiv i32 %36, 2
  %add33 = add nsw i32 %div32, 1
  br label %if.end

if.else:                                          ; preds = %entry
  %37 = load i32* %arrayidx2, align 4, !tbaa !4
  %38 = load i32* %arrayidx3, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ixmax.0 = phi i32 [ %add, %if.then ], [ %34, %if.else ]
  %iymax.0 = phi i32 [ %add30, %if.then ], [ %37, %if.else ]
  %izmax.0 = phi i32 [ %add33, %if.then ], [ %38, %if.else ]
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str20, i64 0, i64 0), i32 %ixmax.0, i32 %iymax.0, i32 %izmax.0) #5
  store i32 0, i32* %ix, align 4, !tbaa !4
  %cmp122 = icmp sgt i32 %ixmax.0, 0
  br i1 %cmp122, label %for.cond39.preheader.lr.ph, label %for.end59

for.cond39.preheader.lr.ph:                       ; preds = %if.end
  %cmp40121 = icmp sgt i32 %iymax.0, 0
  %cmp44120 = icmp sgt i32 %izmax.0, 0
  br label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.cond39.preheader.lr.ph, %for.inc57
  %39 = phi i32 [ 0, %for.cond39.preheader.lr.ph ], [ %inc58, %for.inc57 ]
  store i32 0, i32* %iy, align 4, !tbaa !4
  br i1 %cmp40121, label %for.cond43.preheader, label %for.inc57

for.cond43.preheader:                             ; preds = %for.cond39.preheader, %for.inc54
  %40 = phi i32 [ %inc55, %for.inc54 ], [ 0, %for.cond39.preheader ]
  %41 = phi i32 [ %49, %for.inc54 ], [ %39, %for.cond39.preheader ]
  store i32 0, i32* %iz, align 4, !tbaa !4
  br i1 %cmp44120, label %for.body46, label %for.inc54

for.body46:                                       ; preds = %for.cond43.preheader, %for.body46
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), double* %ddd) #5
  %42 = load double* %ddd, align 8, !tbaa !5
  %conv48 = fptrunc double %42 to float
  %43 = load i32* %iz, align 4, !tbaa !4
  %idxprom = sext i32 %43 to i64
  %44 = load i32* %iy, align 4, !tbaa !4
  %idxprom49 = sext i32 %44 to i64
  %45 = load i32* %ix, align 4, !tbaa !4
  %idxprom50 = sext i32 %45 to i64
  %arrayidx51 = getelementptr inbounds float*** %call26, i64 %idxprom50
  %46 = load float*** %arrayidx51, align 8, !tbaa !0
  %arrayidx52 = getelementptr inbounds float** %46, i64 %idxprom49
  %47 = load float** %arrayidx52, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds float* %47, i64 %idxprom
  store float %conv48, float* %arrayidx53, align 4, !tbaa !3
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %iz, align 4, !tbaa !4
  %cmp44 = icmp slt i32 %inc, %izmax.0
  br i1 %cmp44, label %for.body46, label %for.inc54

for.inc54:                                        ; preds = %for.body46, %for.cond43.preheader
  %48 = phi i32 [ %40, %for.cond43.preheader ], [ %44, %for.body46 ]
  %49 = phi i32 [ %41, %for.cond43.preheader ], [ %45, %for.body46 ]
  %inc55 = add nsw i32 %48, 1
  store i32 %inc55, i32* %iy, align 4, !tbaa !4
  %cmp40 = icmp slt i32 %inc55, %iymax.0
  br i1 %cmp40, label %for.cond43.preheader, label %for.inc57

for.inc57:                                        ; preds = %for.inc54, %for.cond39.preheader
  %50 = phi i32 [ %39, %for.cond39.preheader ], [ %49, %for.inc54 ]
  %inc58 = add nsw i32 %50, 1
  store i32 %inc58, i32* %ix, align 4, !tbaa !4
  %cmp = icmp slt i32 %inc58, %ixmax.0
  br i1 %cmp, label %for.cond39.preheader, label %for.end59

for.end59:                                        ; preds = %for.inc57, %if.end
  call void @ffclose(%struct._IO_FILE* %call) #5
  %51 = load i32* %igrid, align 4, !tbaa !4
  %52 = load i32* %arrayidx2, align 4, !tbaa !4
  %53 = load i32* %arrayidx3, align 4, !tbaa !4
  %54 = load double* %gx, align 8, !tbaa !5
  %conv63 = fptrunc double %54 to float
  %55 = load double* %gy, align 8, !tbaa !5
  %conv64 = fptrunc double %55 to float
  %56 = load double* %gz, align 8, !tbaa !5
  %conv65 = fptrunc double %56 to float
  %57 = load i32* %nalias, align 4, !tbaa !4
  %58 = load i32* %porder, align 4, !tbaa !4
  %59 = load i32* %niter, align 4, !tbaa !4
  %60 = load i32* %bSym, align 4, !tbaa !4
  %61 = load float* %r1, align 4, !tbaa !3
  %62 = load float* %rc, align 4, !tbaa !3
  %63 = load double* %pval, align 8, !tbaa !5
  %conv66 = fptrunc double %63 to float
  %64 = load double* %zval, align 8, !tbaa !5
  %conv67 = fptrunc double %64 to float
  %65 = load double* %eref, align 8, !tbaa !5
  %conv68 = fptrunc double %65 to float
  %66 = load double* %qopt, align 8, !tbaa !5
  %conv69 = fptrunc double %66 to float
  call void @wr_ghat(i8* getelementptr inbounds ([11 x i8]* @.str22, i64 0, i64 0), i32 %51, i32 %52, i32 %53, float %conv63, float %conv64, float %conv65, float*** %call26, i32 %57, i32 %58, i32 %59, i32 %60, float* %beta, float %61, float %62, float %conv66, float %conv67, float %conv68, float %conv69) #4
  %67 = load i32* %bSym, align 4, !tbaa !4
  %tobool70 = icmp eq i32 %67, 0
  br i1 %tobool70, label %if.end75, label %if.then71

if.then71:                                        ; preds = %for.end59
  %68 = load i32* %igrid, align 4, !tbaa !4
  %69 = load i32* %arrayidx2, align 4, !tbaa !4
  %70 = load i32* %arrayidx3, align 4, !tbaa !4
  call void @symmetrize_ghat(i32 %68, i32 %69, i32 %70, float*** %call26) #4
  br label %if.end75

if.end75:                                         ; preds = %for.end59, %if.then71
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str23, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %log)
  ret float*** %call26
}

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare float*** @mk_rgrid(i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
