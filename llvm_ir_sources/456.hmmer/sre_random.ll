; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_random.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sre_random.rnd1 = internal unnamed_addr global i64 0, align 8
@sre_random.rnd2 = internal unnamed_addr global i64 0, align 8
@sre_random.rnd = internal unnamed_addr global i64 0, align 8
@sre_random.tbl = internal unnamed_addr global [64 x i64] zeroinitializer, align 16
@sre_randseed = internal unnamed_addr global i32 42, align 4
@Gaussrandom.a = internal unnamed_addr constant [32 x double] [double 0.000000e+00, double 3.917609e-02, double 7.841241e-02, double 1.177700e-01, double 1.573107e-01, double 1.970991e-01, double 2.372021e-01, double 2.776904e-01, double 3.186394e-01, double 3.601300e-01, double 4.022501e-01, double 4.450965e-01, double 4.887764e-01, double 5.334097e-01, double 5.791322e-01, double 6.260990e-01, double 6.744898e-01, double 7.245144e-01, double 7.764218e-01, double 8.305109e-01, double 8.871466e-01, double 9.467818e-01, double 1.009990e+00, double 1.077516e+00, double 1.150349e+00, double 1.229859e+00, double 1.318011e+00, double 1.417797e+00, double 1.534121e+00, double 1.675940e+00, double 1.862732e+00, double 2.153875e+00], align 16
@Gaussrandom.d = internal unnamed_addr constant [31 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.636843e-01, double 2.425085e-01, double 2.255674e-01, double 2.116342e-01, double 1.999243e-01, double 1.899108e-01, double 1.812252e-01, double 1.736014e-01, double 1.668419e-01, double 1.607967e-01, double 1.553497e-01, double 1.504094e-01, double 1.459026e-01, double 1.417700e-01, double 1.379632e-01, double 1.344418e-01, double 1.311722e-01, double 1.281260e-01, double 1.252791e-01, double 1.226109e-01, double 1.201036e-01, double 1.177417e-01, double 1.155119e-01, double 1.134023e-01, double 1.114027e-01, double 1.095039e-01], align 16
@Gaussrandom.t = internal unnamed_addr constant [31 x double] [double 7.673828e-04, double 2.306870e-03, double 3.860618e-03, double 5.438454e-03, double 7.050700e-03, double 8.708396e-03, double 1.042357e-02, double 1.220953e-02, double 1.408125e-02, double 1.605579e-02, double 1.815290e-02, double 2.039573e-02, double 2.281177e-02, double 2.543407e-02, double 2.830296e-02, double 3.146822e-02, double 3.499233e-02, double 3.895483e-02, double 4.345878e-02, double 4.864035e-02, double 5.468334e-02, double 6.184222e-02, double 7.047983e-02, double 8.113195e-02, double 9.462444e-02, double 1.123001e-01, double 1.364980e-01, double 1.716886e-01, double 2.276241e-01, double 3.304980e-01, double 5.847031e-01], align 16
@Gaussrandom.h = internal unnamed_addr constant [31 x double] [double 3.920617e-02, double 3.932705e-02, double 3.951000e-02, double 3.975703e-02, double 4.007093e-02, double 4.045533e-02, double 4.091481e-02, double 4.145507e-02, double 4.208311e-02, double 4.280748e-02, double 4.363863e-02, double 4.458932e-02, double 4.567523e-02, double 4.691571e-02, double 4.833487e-02, double 4.996298e-02, double 5.183859e-02, double 5.401138e-02, double 5.654656e-02, double 5.953130e-02, double 6.308489e-02, double 6.737503e-02, double 7.264544e-02, double 7.926471e-02, double 8.781922e-02, double 9.930398e-02, double 1.155600e-01, double 1.404344e-01, double 1.836142e-01, double 2.790016e-01, double 7.010474e-01], align 16
@Gaussrandom.i = internal unnamed_addr global i64 0, align 8
@Gaussrandom.snorm = internal unnamed_addr global double 0.000000e+00, align 8
@Gaussrandom.u = internal unnamed_addr global double 0.000000e+00, align 8
@Gaussrandom.s = internal unnamed_addr global double 0.000000e+00, align 8
@Gaussrandom.ustar = internal unnamed_addr global double 0.000000e+00, align 8
@Gaussrandom.aa = internal unnamed_addr global double 0.000000e+00, align 8
@Gaussrandom.w = internal unnamed_addr global double 0.000000e+00, align 8
@Gaussrandom.y = internal unnamed_addr global double 0.000000e+00, align 8
@Gaussrandom.tt = internal unnamed_addr global double 0.000000e+00, align 8

; Function Attrs: nounwind optsize uwtable
define double @sre_random() #0 {
entry:
  %0 = load i32* @sre_randseed, align 4, !tbaa !0
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  %.pre = load i64* @sre_random.rnd1, align 8, !tbaa !3
  %.pre109 = load i64* @sre_random.rnd2, align 8, !tbaa !3
  br label %if.end28

if.then:                                          ; preds = %entry
  %conv = sext i32 %0 to i64
  store i64 %conv, i64* @sre_random.rnd1, align 8, !tbaa !3
  store i64 %conv, i64* @sre_random.rnd2, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body, %if.then
  %indvars.iv = phi i64 [ 0, %if.then ], [ %indvars.iv.next, %for.body ]
  %storemerge104108 = phi i64 [ %conv, %if.then ], [ %storemerge104, %for.body ]
  %add.sub107 = phi i64 [ %conv, %if.then ], [ %add.sub, %for.body ]
  %rem = srem i64 %add.sub107, 53668
  %mul = mul nsw i64 %rem, 40014
  %div = sdiv i64 %add.sub107, 53668
  %1 = mul i64 %div, -12211
  %sub = add i64 %1, %mul
  %cmp5 = icmp slt i64 %sub, 0
  %add = add nsw i64 %sub, 2147483563
  %add.sub = select i1 %cmp5, i64 %add, i64 %sub
  %rem8 = srem i64 %storemerge104108, 52774
  %mul9 = mul nsw i64 %rem8, 40692
  %div10 = sdiv i64 %storemerge104108, 52774
  %2 = mul i64 %div10, -3791
  %sub12 = add i64 %2, %mul9
  %cmp13 = icmp slt i64 %sub12, 0
  %add16 = add nsw i64 %sub12, 2147483399
  %storemerge104 = select i1 %cmp13, i64 %add16, i64 %sub12
  %sub18 = sub nsw i64 %add.sub, %storemerge104
  %arrayidx = getelementptr inbounds [64 x i64]* @sre_random.tbl, i64 0, i64 %indvars.iv
  %cmp21 = icmp slt i64 %sub18, 0
  %add26 = add nsw i64 %sub18, 2147483563
  %add26.sub18 = select i1 %cmp21, i64 %add26, i64 %sub18
  store i64 %add26.sub18, i64* %arrayidx, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 64
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  store i64 %add.sub, i64* @sre_random.rnd1, align 8, !tbaa !3
  store i64 %storemerge104, i64* @sre_random.rnd2, align 8, !tbaa !3
  store i32 0, i32* @sre_randseed, align 4, !tbaa !0
  br label %if.end28

if.end28:                                         ; preds = %entry.if.end28_crit_edge, %for.end
  %3 = phi i64 [ %.pre109, %entry.if.end28_crit_edge ], [ %storemerge104, %for.end ]
  %4 = phi i64 [ %.pre, %entry.if.end28_crit_edge ], [ %add.sub, %for.end ]
  %rem29 = srem i64 %4, 53668
  %mul30 = mul nsw i64 %rem29, 40014
  %div31 = sdiv i64 %4, 53668
  %5 = mul i64 %div31, -12211
  %sub33 = add i64 %5, %mul30
  %cmp34 = icmp slt i64 %sub33, 0
  %add37 = add nsw i64 %sub33, 2147483563
  %add37.sub33 = select i1 %cmp34, i64 %add37, i64 %sub33
  store i64 %add37.sub33, i64* @sre_random.rnd1, align 8, !tbaa !3
  %rem39 = srem i64 %3, 52774
  %mul40 = mul nsw i64 %rem39, 40692
  %div41 = sdiv i64 %3, 52774
  %6 = mul i64 %div41, -3791
  %sub43 = add i64 %6, %mul40
  %cmp44 = icmp slt i64 %sub43, 0
  %add47 = add nsw i64 %sub43, 2147483399
  %storemerge101 = select i1 %cmp44, i64 %add47, i64 %sub43
  store i64 %storemerge101, i64* @sre_random.rnd2, align 8, !tbaa !3
  %7 = load i64* @sre_random.rnd, align 8, !tbaa !3
  %conv49 = sitofp i64 %7 to double
  %div51 = fdiv double %conv49, 0x41DFFFFFEAC00000
  %mul52 = fmul double %div51, 6.400000e+01
  %conv53 = fptosi double %mul52 to i32
  %idxprom54 = sext i32 %conv53 to i64
  %arrayidx55 = getelementptr inbounds [64 x i64]* @sre_random.tbl, i64 0, i64 %idxprom54
  %8 = load i64* %arrayidx55, align 8, !tbaa !3
  store i64 %8, i64* @sre_random.rnd, align 8, !tbaa !3
  %sub56 = sub nsw i64 %add37.sub33, %storemerge101
  %cmp61 = icmp slt i64 %sub56, 0
  %add66 = add nsw i64 %sub56, 2147483563
  %add66.sub56 = select i1 %cmp61, i64 %add66, i64 %sub56
  store i64 %add66.sub56, i64* %arrayidx55, align 8, !tbaa !3
  %conv68 = sitofp i64 %8 to double
  %div70 = fdiv double %conv68, 0x41DFFFFFEAC00000
  ret double %div70
}

; Function Attrs: nounwind optsize uwtable
define void @sre_srandom(i32 %seed) #0 {
entry:
  %cmp = icmp slt i32 %seed, 0
  %mul = sub i32 0, %seed
  %mul.seed = select i1 %cmp, i32 %mul, i32 %seed
  %cmp1 = icmp eq i32 %mul.seed, 0
  %seed.addr.1 = select i1 %cmp1, i32 42, i32 %mul.seed
  store i32 %seed.addr.1, i32* @sre_randseed, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double @sre_random_positive() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %call = tail call double @sre_random() #2
  %cmp = fcmp oeq double %call, 0.000000e+00
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  ret double %call
}

; Function Attrs: nounwind optsize uwtable
define double @ExponentialRandom() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %call = tail call double @sre_random() #2
  %cmp = fcmp oeq double %call, 0.000000e+00
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %call1 = tail call double @log(double %call) #3
  %sub = fsub double -0.000000e+00, %call1
  ret double %sub
}

; Function Attrs: nounwind optsize
declare double @log(double) #1

; Function Attrs: nounwind optsize uwtable
define double @Gaussrandom(double %mean, double %stddev) #0 {
entry:
  %call = tail call double @sre_random() #2
  %cmp = fcmp ogt double %call, 5.000000e-01
  %storemerge78 = select i1 %cmp, double 1.000000e+00, double 0.000000e+00
  store double %storemerge78, double* @Gaussrandom.s, align 8, !tbaa !4
  %sub = fsub double %call, %storemerge78
  %add = fadd double %call, %sub
  %mul = fmul double %add, 3.200000e+01
  store double %mul, double* @Gaussrandom.u, align 8, !tbaa !4
  %conv = fptosi double %mul to i64
  %cmp1 = icmp eq i64 %conv, 32
  %.conv = select i1 %cmp1, i64 31, i64 %conv
  store i64 %.conv, i64* @Gaussrandom.i, align 8, !tbaa !3
  %cmp5 = icmp eq i64 %.conv, 0
  br i1 %cmp5, label %S100, label %if.end8

if.end8:                                          ; preds = %entry
  %conv9 = sitofp i64 %.conv to double
  %sub10 = fsub double %mul, %conv9
  store double %sub10, double* @Gaussrandom.ustar, align 8, !tbaa !4
  %add.ptr.sum = add i64 %.conv, -1
  %add.ptr11 = getelementptr inbounds [32 x double]* @Gaussrandom.a, i64 0, i64 %add.ptr.sum
  %0 = load double* %add.ptr11, align 8, !tbaa !4
  store double %0, double* @Gaussrandom.aa, align 8, !tbaa !4
  %add.ptr1395 = getelementptr inbounds [31 x double]* @Gaussrandom.t, i64 0, i64 %add.ptr.sum
  %1 = load double* %add.ptr1395, align 8, !tbaa !4
  %cmp1496 = fcmp ugt double %sub10, %1
  br i1 %cmp1496, label %if.end17, label %S60

if.end17:                                         ; preds = %if.end48, %if.end8
  %.lcssa91 = phi double [ %1, %if.end8 ], [ %14, %if.end48 ]
  %add.ptr12.sum.lcssa = phi i64 [ %add.ptr.sum, %if.end8 ], [ %add.ptr12.sum, %if.end48 ]
  %.lcssa = phi double [ %sub10, %if.end8 ], [ %call49, %if.end48 ]
  %sub20 = fsub double %.lcssa, %.lcssa91
  %add.ptr22 = getelementptr inbounds [31 x double]* @Gaussrandom.h, i64 0, i64 %add.ptr12.sum.lcssa
  %2 = load double* %add.ptr22, align 8, !tbaa !4
  %mul23 = fmul double %sub20, %2
  store double %mul23, double* @Gaussrandom.w, align 8, !tbaa !4
  br label %S50

S50:                                              ; preds = %if.then47, %S60, %S160, %if.end17
  %3 = load double* @Gaussrandom.aa, align 8, !tbaa !4
  %4 = load double* @Gaussrandom.w, align 8, !tbaa !4
  %add24 = fadd double %3, %4
  store double %add24, double* @Gaussrandom.y, align 8, !tbaa !4
  store double %add24, double* @Gaussrandom.snorm, align 8, !tbaa !4
  %5 = load double* @Gaussrandom.s, align 8, !tbaa !4
  %cmp25 = fcmp oeq double %5, 1.000000e+00
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %S50
  %sub28 = fsub double -0.000000e+00, %add24
  store double %sub28, double* @Gaussrandom.snorm, align 8, !tbaa !4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %S50
  %6 = phi double [ %sub28, %if.then27 ], [ %add24, %S50 ]
  %mul30 = fmul double %6, %stddev
  %add31 = fadd double %mul30, %mean
  ret double %add31

S60:                                              ; preds = %if.end8, %if.end48
  %call32 = tail call double @sre_random() #2
  store double %call32, double* @Gaussrandom.u, align 8, !tbaa !4
  %7 = load i64* @Gaussrandom.i, align 8, !tbaa !3
  %add.ptr33 = getelementptr inbounds [32 x double]* @Gaussrandom.a, i64 0, i64 %7
  %8 = load double* %add.ptr33, align 8, !tbaa !4
  %9 = load double* @Gaussrandom.aa, align 8, !tbaa !4
  %sub34 = fsub double %8, %9
  %mul35 = fmul double %call32, %sub34
  store double %mul35, double* @Gaussrandom.w, align 8, !tbaa !4
  %mul36 = fmul double %mul35, 5.000000e-01
  %add37 = fadd double %9, %mul36
  %mul38 = fmul double %mul35, %add37
  store double %mul38, double* @Gaussrandom.tt, align 8, !tbaa !4
  %10 = load double* @Gaussrandom.ustar, align 8, !tbaa !4
  %cmp4086 = fcmp ogt double %10, %mul38
  br i1 %cmp4086, label %S50, label %if.end43

if.end43:                                         ; preds = %S60, %if.then47
  %call44 = tail call double @sre_random() #2
  store double %call44, double* @Gaussrandom.u, align 8, !tbaa !4
  %11 = load double* @Gaussrandom.ustar, align 8, !tbaa !4
  %cmp45 = fcmp ult double %11, %call44
  br i1 %cmp45, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end43
  store double %call44, double* @Gaussrandom.tt, align 8, !tbaa !4
  %call39 = tail call double @sre_random() #2
  store double %call39, double* @Gaussrandom.ustar, align 8, !tbaa !4
  %12 = load double* @Gaussrandom.tt, align 8, !tbaa !4
  %cmp40 = fcmp ogt double %call39, %12
  br i1 %cmp40, label %S50, label %if.end43

if.end48:                                         ; preds = %if.end43
  %call49 = tail call double @sre_random() #2
  store double %call49, double* @Gaussrandom.ustar, align 8, !tbaa !4
  %13 = load i64* @Gaussrandom.i, align 8, !tbaa !3
  %add.ptr12.sum = add i64 %13, -1
  %add.ptr13 = getelementptr inbounds [31 x double]* @Gaussrandom.t, i64 0, i64 %add.ptr12.sum
  %14 = load double* %add.ptr13, align 8, !tbaa !4
  %cmp14 = fcmp ugt double %call49, %14
  br i1 %cmp14, label %if.end17, label %S60

S100:                                             ; preds = %entry
  store i64 6, i64* @Gaussrandom.i, align 8, !tbaa !3
  store double 2.153875e+00, double* @Gaussrandom.aa, align 8, !tbaa !4
  %add5479 = fadd double %mul, %mul
  store double %add5479, double* @Gaussrandom.u, align 8, !tbaa !4
  %cmp5580 = fcmp olt double %add5479, 1.000000e+00
  br i1 %cmp5580, label %if.then57, label %if.end58

if.then57:                                        ; preds = %S100, %if.then57
  %add5483 = phi double [ %add54, %if.then57 ], [ %add5479, %S100 ]
  %add5282 = phi double [ %add52, %if.then57 ], [ 2.153875e+00, %S100 ]
  %add5381 = phi i64 [ %add53, %if.then57 ], [ 6, %S100 ]
  %add.ptr50.sum = add i64 %add5381, -1
  %add.ptr51 = getelementptr inbounds [31 x double]* @Gaussrandom.d, i64 0, i64 %add.ptr50.sum
  %15 = load double* %add.ptr51, align 8, !tbaa !4
  %add52 = fadd double %15, %add5282
  %add53 = add nsw i64 %add5381, 1
  %add54 = fadd double %add5483, %add5483
  %cmp55 = fcmp olt double %add54, 1.000000e+00
  br i1 %cmp55, label %if.then57, label %S120.if.end58_crit_edge

S120.if.end58_crit_edge:                          ; preds = %if.then57
  store i64 %add53, i64* @Gaussrandom.i, align 8, !tbaa !3
  store double %add52, double* @Gaussrandom.aa, align 8, !tbaa !4
  store double %add54, double* @Gaussrandom.u, align 8, !tbaa !4
  br label %if.end58

if.end58:                                         ; preds = %S120.if.end58_crit_edge, %S100
  %16 = phi double [ %add52, %S120.if.end58_crit_edge ], [ 2.153875e+00, %S100 ]
  %17 = phi i64 [ %add53, %S120.if.end58_crit_edge ], [ 6, %S100 ]
  %add54.lcssa = phi double [ %add54, %S120.if.end58_crit_edge ], [ %add5479, %S100 ]
  %sub59 = fadd double %add54.lcssa, -1.000000e+00
  br label %S140

S140:                                             ; preds = %if.end75, %if.end58
  %18 = phi double [ %16, %if.end58 ], [ %.pre103, %if.end75 ]
  %19 = phi i64 [ %17, %if.end58 ], [ %.pre, %if.end75 ]
  %storemerge = phi double [ %sub59, %if.end58 ], [ %call76, %if.end75 ]
  store double %storemerge, double* @Gaussrandom.u, align 8, !tbaa !4
  %add.ptr60.sum = add i64 %19, -1
  %add.ptr61 = getelementptr inbounds [31 x double]* @Gaussrandom.d, i64 0, i64 %add.ptr60.sum
  %20 = load double* %add.ptr61, align 8, !tbaa !4
  %mul62 = fmul double %storemerge, %20
  store double %mul62, double* @Gaussrandom.w, align 8, !tbaa !4
  %mul63 = fmul double %mul62, 5.000000e-01
  %add64 = fadd double %18, %mul63
  %mul65 = fmul double %mul62, %add64
  br label %S160

S160:                                             ; preds = %if.end70, %S140
  %storemerge77 = phi double [ %mul65, %S140 ], [ %call71, %if.end70 ]
  store double %storemerge77, double* @Gaussrandom.tt, align 8, !tbaa !4
  %call66 = tail call double @sre_random() #2
  store double %call66, double* @Gaussrandom.ustar, align 8, !tbaa !4
  %21 = load double* @Gaussrandom.tt, align 8, !tbaa !4
  %cmp67 = fcmp ogt double %call66, %21
  br i1 %cmp67, label %S50, label %if.end70

if.end70:                                         ; preds = %S160
  %call71 = tail call double @sre_random() #2
  store double %call71, double* @Gaussrandom.u, align 8, !tbaa !4
  %22 = load double* @Gaussrandom.ustar, align 8, !tbaa !4
  %cmp72 = fcmp ult double %22, %call71
  br i1 %cmp72, label %if.end75, label %S160

if.end75:                                         ; preds = %if.end70
  %call76 = tail call double @sre_random() #2
  %.pre = load i64* @Gaussrandom.i, align 8, !tbaa !3
  %.pre103 = load double* @Gaussrandom.aa, align 8, !tbaa !4
  br label %S140
}

; Function Attrs: nounwind optsize uwtable
define i32 @DChoose(double* nocapture %p, i32 %N) #0 {
entry:
  %call = tail call double @sre_random() #2
  %cmp9 = icmp sgt i32 %N, 0
  br i1 %cmp9, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.011, 1
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %N
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %i.011 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %sum.010 = phi double [ %add, %for.cond ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %p, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !4
  %add = fadd double %sum.010, %1
  %cmp1 = fcmp olt double %call, %add
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp1, label %return, label %for.cond

for.end:                                          ; preds = %for.cond, %entry
  %call2 = tail call double @sre_random() #2
  %conv = sitofp i32 %N to double
  %mul = fmul double %conv, %call2
  %conv3 = fptosi double %mul to i32
  br label %return

return:                                           ; preds = %for.body, %for.end
  %retval.0 = phi i32 [ %conv3, %for.end ], [ %i.011, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @FChoose(float* nocapture %p, i32 %N) #0 {
entry:
  %call = tail call double @sre_random() #2
  %conv = fptrunc double %call to float
  %cmp12 = icmp sgt i32 %N, 0
  br i1 %cmp12, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.014, 1
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %N
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %i.014 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %sum.013 = phi float [ %add, %for.cond ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %p, i64 %indvars.iv
  %1 = load float* %arrayidx, align 4, !tbaa !5
  %add = fadd float %sum.013, %1
  %cmp2 = fcmp olt float %conv, %add
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %return, label %for.cond

for.end:                                          ; preds = %for.cond, %entry
  %call4 = tail call double @sre_random() #2
  %conv5 = sitofp i32 %N to double
  %mul = fmul double %conv5, %call4
  %conv6 = fptosi double %mul to i32
  br label %return

return:                                           ; preds = %for.body, %for.end
  %retval.0 = phi i32 [ %conv6, %for.end ], [ %i.014, %for.body ]
  ret i32 %retval.0
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"long", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
