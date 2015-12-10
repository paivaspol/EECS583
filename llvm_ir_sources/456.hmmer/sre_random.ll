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
  tail call void @llvm.dbg.value(metadata !89, i64 0, metadata !15), !dbg !90
  tail call void @llvm.dbg.value(metadata !91, i64 0, metadata !16), !dbg !92
  tail call void @llvm.dbg.value(metadata !93, i64 0, metadata !17), !dbg !94
  tail call void @llvm.dbg.value(metadata !95, i64 0, metadata !18), !dbg !96
  tail call void @llvm.dbg.value(metadata !97, i64 0, metadata !19), !dbg !98
  tail call void @llvm.dbg.value(metadata !99, i64 0, metadata !20), !dbg !100
  tail call void @llvm.dbg.value(metadata !101, i64 0, metadata !21), !dbg !102
  tail call void @llvm.dbg.value(metadata !103, i64 0, metadata !22), !dbg !104
  %0 = load i32* @sre_randseed, align 4, !dbg !105, !tbaa !106
  %cmp = icmp sgt i32 %0, 0, !dbg !105
  br i1 %cmp, label %if.then, label %entry.if.end28_crit_edge, !dbg !105

entry.if.end28_crit_edge:                         ; preds = %entry
  %.pre = load i64* @sre_random.rnd1, align 8, !dbg !109, !tbaa !110
  %.pre109 = load i64* @sre_random.rnd2, align 8, !dbg !111, !tbaa !110
  br label %if.end28, !dbg !105

if.then:                                          ; preds = %entry
  %conv = sext i32 %0 to i64, !dbg !112
  store i64 %conv, i64* @sre_random.rnd1, align 8, !dbg !112, !tbaa !110
  store i64 %conv, i64* @sre_random.rnd2, align 8, !dbg !114, !tbaa !110
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !13), !dbg !115
  br label %for.body, !dbg !115

for.body:                                         ; preds = %for.body, %if.then
  %indvars.iv = phi i64 [ 0, %if.then ], [ %indvars.iv.next, %for.body ]
  %storemerge104108 = phi i64 [ %conv, %if.then ], [ %storemerge104, %for.body ], !dbg !117
  %add.sub107 = phi i64 [ %conv, %if.then ], [ %add.sub, %for.body ], !dbg !117
  %rem = srem i64 %add.sub107, 53668, !dbg !117
  %mul = mul nsw i64 %rem, 40014, !dbg !117
  tail call void @llvm.dbg.value(metadata !{i64 %mul}, i64 0, metadata !10), !dbg !117
  %div = sdiv i64 %add.sub107, 53668, !dbg !119
  %1 = mul i64 %div, -12211, !dbg !120
  %sub = add i64 %1, %mul, !dbg !120
  %cmp5 = icmp slt i64 %sub, 0, !dbg !121
  %add = add nsw i64 %sub, 2147483563, !dbg !121
  %add.sub = select i1 %cmp5, i64 %add, i64 %sub, !dbg !121
  %rem8 = srem i64 %storemerge104108, 52774, !dbg !122
  %mul9 = mul nsw i64 %rem8, 40692, !dbg !122
  tail call void @llvm.dbg.value(metadata !{i64 %mul9}, i64 0, metadata !10), !dbg !122
  %div10 = sdiv i64 %storemerge104108, 52774, !dbg !123
  %2 = mul i64 %div10, -3791, !dbg !124
  %sub12 = add i64 %2, %mul9, !dbg !124
  %cmp13 = icmp slt i64 %sub12, 0, !dbg !125
  %add16 = add nsw i64 %sub12, 2147483399, !dbg !125
  %storemerge104 = select i1 %cmp13, i64 %add16, i64 %sub12, !dbg !125
  %sub18 = sub nsw i64 %add.sub, %storemerge104, !dbg !126
  %arrayidx = getelementptr inbounds [64 x i64]* @sre_random.tbl, i64 0, i64 %indvars.iv, !dbg !126
  %cmp21 = icmp slt i64 %sub18, 0, !dbg !127
  %add26 = add nsw i64 %sub18, 2147483563, !dbg !127
  %add26.sub18 = select i1 %cmp21, i64 %add26, i64 %sub18, !dbg !127
  store i64 %add26.sub18, i64* %arrayidx, align 8, !dbg !126, !tbaa !110
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !115
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !115
  %exitcond = icmp eq i32 %lftr.wideiv, 64, !dbg !115
  br i1 %exitcond, label %for.end, label %for.body, !dbg !115

for.end:                                          ; preds = %for.body
  store i64 %add.sub, i64* @sre_random.rnd1, align 8, !dbg !120, !tbaa !110
  store i64 %storemerge104, i64* @sre_random.rnd2, align 8, !dbg !124, !tbaa !110
  store i32 0, i32* @sre_randseed, align 4, !dbg !128, !tbaa !106
  br label %if.end28, !dbg !129

if.end28:                                         ; preds = %entry.if.end28_crit_edge, %for.end
  %3 = phi i64 [ %.pre109, %entry.if.end28_crit_edge ], [ %storemerge104, %for.end ]
  %4 = phi i64 [ %.pre, %entry.if.end28_crit_edge ], [ %add.sub, %for.end ]
  %rem29 = srem i64 %4, 53668, !dbg !109
  %mul30 = mul nsw i64 %rem29, 40014, !dbg !109
  tail call void @llvm.dbg.value(metadata !{i64 %mul30}, i64 0, metadata !10), !dbg !109
  %div31 = sdiv i64 %4, 53668, !dbg !130
  %5 = mul i64 %div31, -12211, !dbg !131
  %sub33 = add i64 %5, %mul30, !dbg !131
  %cmp34 = icmp slt i64 %sub33, 0, !dbg !132
  %add37 = add nsw i64 %sub33, 2147483563, !dbg !132
  %add37.sub33 = select i1 %cmp34, i64 %add37, i64 %sub33, !dbg !132
  store i64 %add37.sub33, i64* @sre_random.rnd1, align 8, !dbg !131, !tbaa !110
  %rem39 = srem i64 %3, 52774, !dbg !111
  %mul40 = mul nsw i64 %rem39, 40692, !dbg !111
  tail call void @llvm.dbg.value(metadata !{i64 %mul40}, i64 0, metadata !10), !dbg !111
  %div41 = sdiv i64 %3, 52774, !dbg !133
  %6 = mul i64 %div41, -3791, !dbg !134
  %sub43 = add i64 %6, %mul40, !dbg !134
  %cmp44 = icmp slt i64 %sub43, 0, !dbg !135
  %add47 = add nsw i64 %sub43, 2147483399, !dbg !135
  %storemerge101 = select i1 %cmp44, i64 %add47, i64 %sub43, !dbg !135
  store i64 %storemerge101, i64* @sre_random.rnd2, align 8, !dbg !134, !tbaa !110
  %7 = load i64* @sre_random.rnd, align 8, !dbg !136, !tbaa !110
  %conv49 = sitofp i64 %7 to double, !dbg !136
  %div51 = fdiv double %conv49, 0x41DFFFFFEAC00000, !dbg !136
  %mul52 = fmul double %div51, 6.400000e+01, !dbg !136
  %conv53 = fptosi double %mul52 to i32, !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32 %conv53}, i64 0, metadata !13), !dbg !136
  %idxprom54 = sext i32 %conv53 to i64, !dbg !137
  %arrayidx55 = getelementptr inbounds [64 x i64]* @sre_random.tbl, i64 0, i64 %idxprom54, !dbg !137
  %8 = load i64* %arrayidx55, align 8, !dbg !137, !tbaa !110
  store i64 %8, i64* @sre_random.rnd, align 8, !dbg !137, !tbaa !110
  %sub56 = sub nsw i64 %add37.sub33, %storemerge101, !dbg !138
  %cmp61 = icmp slt i64 %sub56, 0, !dbg !139
  %add66 = add nsw i64 %sub56, 2147483563, !dbg !139
  %add66.sub56 = select i1 %cmp61, i64 %add66, i64 %sub56, !dbg !139
  store i64 %add66.sub56, i64* %arrayidx55, align 8, !dbg !138, !tbaa !110
  %conv68 = sitofp i64 %8 to double, !dbg !140
  %div70 = fdiv double %conv68, 0x41DFFFFFEAC00000, !dbg !140
  ret double %div70, !dbg !140
}

; Function Attrs: nounwind optsize uwtable
define void @sre_srandom(i32 %seed) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !27), !dbg !141
  %cmp = icmp slt i32 %seed, 0, !dbg !142
  %mul = sub i32 0, %seed, !dbg !142
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !27), !dbg !142
  %mul.seed = select i1 %cmp, i32 %mul, i32 %seed, !dbg !142
  %cmp1 = icmp eq i32 %mul.seed, 0, !dbg !143
  tail call void @llvm.dbg.value(metadata !144, i64 0, metadata !27), !dbg !143
  %seed.addr.1 = select i1 %cmp1, i32 42, i32 %mul.seed, !dbg !143
  store i32 %seed.addr.1, i32* @sre_randseed, align 4, !dbg !145, !tbaa !106
  ret void, !dbg !146
}

; Function Attrs: nounwind optsize uwtable
define double @sre_random_positive() #0 {
entry:
  br label %do.body, !dbg !147

do.body:                                          ; preds = %do.body, %entry
  %call = tail call double @sre_random() #3, !dbg !148
  tail call void @llvm.dbg.value(metadata !{double %call}, i64 0, metadata !30), !dbg !148
  %cmp = fcmp oeq double %call, 0.000000e+00, !dbg !148
  br i1 %cmp, label %do.body, label %do.end, !dbg !148

do.end:                                           ; preds = %do.body
  ret double %call, !dbg !150
}

; Function Attrs: nounwind optsize uwtable
define double @ExponentialRandom() #0 {
entry:
  br label %do.body, !dbg !151

do.body:                                          ; preds = %do.body, %entry
  %call = tail call double @sre_random() #3, !dbg !151
  tail call void @llvm.dbg.value(metadata !{double %call}, i64 0, metadata !33), !dbg !151
  %cmp = fcmp oeq double %call, 0.000000e+00, !dbg !151
  br i1 %cmp, label %do.body, label %do.end, !dbg !151

do.end:                                           ; preds = %do.body
  %call1 = tail call double @log(double %call) #4, !dbg !152
  %sub = fsub double -0.000000e+00, %call1, !dbg !152
  ret double %sub, !dbg !152
}

; Function Attrs: nounwind optsize
declare double @log(double) #1

; Function Attrs: nounwind optsize uwtable
define double @Gaussrandom(double %mean, double %stddev) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double %mean}, i64 0, metadata !38), !dbg !153
  tail call void @llvm.dbg.value(metadata !{double %stddev}, i64 0, metadata !39), !dbg !153
  %call = tail call double @sre_random() #3, !dbg !154
  %cmp = fcmp ogt double %call, 5.000000e-01, !dbg !155
  %storemerge78 = select i1 %cmp, double 1.000000e+00, double 0.000000e+00, !dbg !155
  store double %storemerge78, double* @Gaussrandom.s, align 8, !dbg !156, !tbaa !157
  %sub = fsub double %call, %storemerge78, !dbg !158
  %add = fadd double %call, %sub, !dbg !158
  %mul = fmul double %add, 3.200000e+01, !dbg !159
  store double %mul, double* @Gaussrandom.u, align 8, !dbg !159, !tbaa !157
  %conv = fptosi double %mul to i64, !dbg !160
  %cmp1 = icmp eq i64 %conv, 32, !dbg !161
  %.conv = select i1 %cmp1, i64 31, i64 %conv, !dbg !161
  store i64 %.conv, i64* @Gaussrandom.i, align 8, !dbg !161, !tbaa !110
  %cmp5 = icmp eq i64 %.conv, 0, !dbg !162
  br i1 %cmp5, label %S100, label %if.end8, !dbg !162

if.end8:                                          ; preds = %entry
  %conv9 = sitofp i64 %.conv to double, !dbg !163
  %sub10 = fsub double %mul, %conv9, !dbg !163
  store double %sub10, double* @Gaussrandom.ustar, align 8, !dbg !163, !tbaa !157
  %add.ptr.sum = add i64 %.conv, -1, !dbg !164
  %add.ptr11 = getelementptr inbounds [32 x double]* @Gaussrandom.a, i64 0, i64 %add.ptr.sum, !dbg !164
  %0 = load double* %add.ptr11, align 8, !dbg !164, !tbaa !157
  store double %0, double* @Gaussrandom.aa, align 8, !dbg !164, !tbaa !157
  %add.ptr1395 = getelementptr inbounds [31 x double]* @Gaussrandom.t, i64 0, i64 %add.ptr.sum, !dbg !165
  %1 = load double* %add.ptr1395, align 8, !dbg !165, !tbaa !157
  %cmp1496 = fcmp ugt double %sub10, %1, !dbg !165
  br i1 %cmp1496, label %if.end17, label %S60, !dbg !165

if.end17:                                         ; preds = %if.end48, %if.end8
  %.lcssa91 = phi double [ %1, %if.end8 ], [ %14, %if.end48 ]
  %add.ptr12.sum.lcssa = phi i64 [ %add.ptr.sum, %if.end8 ], [ %add.ptr12.sum, %if.end48 ]
  %.lcssa = phi double [ %sub10, %if.end8 ], [ %call49, %if.end48 ]
  %sub20 = fsub double %.lcssa, %.lcssa91, !dbg !166
  %add.ptr22 = getelementptr inbounds [31 x double]* @Gaussrandom.h, i64 0, i64 %add.ptr12.sum.lcssa, !dbg !166
  %2 = load double* %add.ptr22, align 8, !dbg !166, !tbaa !157
  %mul23 = fmul double %sub20, %2, !dbg !166
  store double %mul23, double* @Gaussrandom.w, align 8, !dbg !166, !tbaa !157
  br label %S50, !dbg !166

S50:                                              ; preds = %if.then47, %S60, %S160, %if.end17
  %3 = load double* @Gaussrandom.aa, align 8, !dbg !167, !tbaa !157
  %4 = load double* @Gaussrandom.w, align 8, !dbg !167, !tbaa !157
  %add24 = fadd double %3, %4, !dbg !167
  store double %add24, double* @Gaussrandom.y, align 8, !dbg !167, !tbaa !157
  store double %add24, double* @Gaussrandom.snorm, align 8, !dbg !168, !tbaa !157
  %5 = load double* @Gaussrandom.s, align 8, !dbg !169, !tbaa !157
  %cmp25 = fcmp oeq double %5, 1.000000e+00, !dbg !169
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !169

if.then27:                                        ; preds = %S50
  %sub28 = fsub double -0.000000e+00, %add24, !dbg !169
  store double %sub28, double* @Gaussrandom.snorm, align 8, !dbg !169, !tbaa !157
  br label %if.end29, !dbg !169

if.end29:                                         ; preds = %if.then27, %S50
  %6 = phi double [ %sub28, %if.then27 ], [ %add24, %S50 ]
  %mul30 = fmul double %6, %stddev, !dbg !170
  %add31 = fadd double %mul30, %mean, !dbg !170
  ret double %add31, !dbg !170

S60:                                              ; preds = %if.end8, %if.end48
  %call32 = tail call double @sre_random() #3, !dbg !171
  store double %call32, double* @Gaussrandom.u, align 8, !dbg !171, !tbaa !157
  %7 = load i64* @Gaussrandom.i, align 8, !dbg !172, !tbaa !110
  %add.ptr33 = getelementptr inbounds [32 x double]* @Gaussrandom.a, i64 0, i64 %7, !dbg !172
  %8 = load double* %add.ptr33, align 8, !dbg !172, !tbaa !157
  %9 = load double* @Gaussrandom.aa, align 8, !dbg !172, !tbaa !157
  %sub34 = fsub double %8, %9, !dbg !172
  %mul35 = fmul double %call32, %sub34, !dbg !172
  store double %mul35, double* @Gaussrandom.w, align 8, !dbg !172, !tbaa !157
  %mul36 = fmul double %mul35, 5.000000e-01, !dbg !173
  %add37 = fadd double %9, %mul36, !dbg !173
  %mul38 = fmul double %mul35, %add37, !dbg !173
  store double %mul38, double* @Gaussrandom.tt, align 8, !dbg !173, !tbaa !157
  %10 = load double* @Gaussrandom.ustar, align 8, !dbg !174, !tbaa !157
  %cmp4086 = fcmp ogt double %10, %mul38, !dbg !174
  br i1 %cmp4086, label %S50, label %if.end43, !dbg !174

if.end43:                                         ; preds = %S60, %if.then47
  %call44 = tail call double @sre_random() #3, !dbg !175
  store double %call44, double* @Gaussrandom.u, align 8, !dbg !175, !tbaa !157
  %11 = load double* @Gaussrandom.ustar, align 8, !dbg !176, !tbaa !157
  %cmp45 = fcmp ult double %11, %call44, !dbg !176
  br i1 %cmp45, label %if.end48, label %if.then47, !dbg !176

if.then47:                                        ; preds = %if.end43
  store double %call44, double* @Gaussrandom.tt, align 8, !dbg !177, !tbaa !157
  %call39 = tail call double @sre_random() #3, !dbg !178
  store double %call39, double* @Gaussrandom.ustar, align 8, !dbg !178, !tbaa !157
  %12 = load double* @Gaussrandom.tt, align 8, !dbg !174, !tbaa !157
  %cmp40 = fcmp ogt double %call39, %12, !dbg !174
  br i1 %cmp40, label %S50, label %if.end43, !dbg !174

if.end48:                                         ; preds = %if.end43
  %call49 = tail call double @sre_random() #3, !dbg !179
  store double %call49, double* @Gaussrandom.ustar, align 8, !dbg !179, !tbaa !157
  %13 = load i64* @Gaussrandom.i, align 8, !dbg !165, !tbaa !110
  %add.ptr12.sum = add i64 %13, -1, !dbg !165
  %add.ptr13 = getelementptr inbounds [31 x double]* @Gaussrandom.t, i64 0, i64 %add.ptr12.sum, !dbg !165
  %14 = load double* %add.ptr13, align 8, !dbg !165, !tbaa !157
  %cmp14 = fcmp ugt double %call49, %14, !dbg !165
  br i1 %cmp14, label %if.end17, label %S60, !dbg !165

S100:                                             ; preds = %entry
  store i64 6, i64* @Gaussrandom.i, align 8, !dbg !180, !tbaa !110
  store double 2.153875e+00, double* @Gaussrandom.aa, align 8, !dbg !181, !tbaa !157
  %add5479 = fadd double %mul, %mul, !dbg !182
  store double %add5479, double* @Gaussrandom.u, align 8, !dbg !182, !tbaa !157
  %cmp5580 = fcmp olt double %add5479, 1.000000e+00, !dbg !183
  br i1 %cmp5580, label %if.then57, label %if.end58, !dbg !183

if.then57:                                        ; preds = %S100, %if.then57
  %add5483 = phi double [ %add54, %if.then57 ], [ %add5479, %S100 ], !dbg !184
  %add5282 = phi double [ %add52, %if.then57 ], [ 2.153875e+00, %S100 ], !dbg !184
  %add5381 = phi i64 [ %add53, %if.then57 ], [ 6, %S100 ], !dbg !184
  %add.ptr50.sum = add i64 %add5381, -1, !dbg !184
  %add.ptr51 = getelementptr inbounds [31 x double]* @Gaussrandom.d, i64 0, i64 %add.ptr50.sum, !dbg !184
  %15 = load double* %add.ptr51, align 8, !dbg !184, !tbaa !157
  %add52 = fadd double %15, %add5282, !dbg !184
  %add53 = add nsw i64 %add5381, 1, !dbg !185
  %add54 = fadd double %add5483, %add5483, !dbg !182
  %cmp55 = fcmp olt double %add54, 1.000000e+00, !dbg !183
  br i1 %cmp55, label %if.then57, label %S120.if.end58_crit_edge, !dbg !183

S120.if.end58_crit_edge:                          ; preds = %if.then57
  store i64 %add53, i64* @Gaussrandom.i, align 8, !dbg !185, !tbaa !110
  store double %add52, double* @Gaussrandom.aa, align 8, !dbg !184, !tbaa !157
  store double %add54, double* @Gaussrandom.u, align 8, !dbg !182, !tbaa !157
  br label %if.end58, !dbg !183

if.end58:                                         ; preds = %S120.if.end58_crit_edge, %S100
  %16 = phi double [ %add52, %S120.if.end58_crit_edge ], [ 2.153875e+00, %S100 ]
  %17 = phi i64 [ %add53, %S120.if.end58_crit_edge ], [ 6, %S100 ]
  %add54.lcssa = phi double [ %add54, %S120.if.end58_crit_edge ], [ %add5479, %S100 ]
  %sub59 = fadd double %add54.lcssa, -1.000000e+00, !dbg !186
  br label %S140, !dbg !186

S140:                                             ; preds = %if.end75, %if.end58
  %18 = phi double [ %16, %if.end58 ], [ %.pre103, %if.end75 ]
  %19 = phi i64 [ %17, %if.end58 ], [ %.pre, %if.end75 ]
  %storemerge = phi double [ %sub59, %if.end58 ], [ %call76, %if.end75 ]
  store double %storemerge, double* @Gaussrandom.u, align 8, !dbg !187, !tbaa !157
  %add.ptr60.sum = add i64 %19, -1, !dbg !188
  %add.ptr61 = getelementptr inbounds [31 x double]* @Gaussrandom.d, i64 0, i64 %add.ptr60.sum, !dbg !188
  %20 = load double* %add.ptr61, align 8, !dbg !188, !tbaa !157
  %mul62 = fmul double %storemerge, %20, !dbg !188
  store double %mul62, double* @Gaussrandom.w, align 8, !dbg !188, !tbaa !157
  %mul63 = fmul double %mul62, 5.000000e-01, !dbg !189
  %add64 = fadd double %18, %mul63, !dbg !189
  %mul65 = fmul double %mul62, %add64, !dbg !189
  br label %S160, !dbg !190

S160:                                             ; preds = %if.end70, %S140
  %storemerge77 = phi double [ %mul65, %S140 ], [ %call71, %if.end70 ]
  store double %storemerge77, double* @Gaussrandom.tt, align 8, !dbg !191, !tbaa !157
  %call66 = tail call double @sre_random() #3, !dbg !192
  store double %call66, double* @Gaussrandom.ustar, align 8, !dbg !192, !tbaa !157
  %21 = load double* @Gaussrandom.tt, align 8, !dbg !193, !tbaa !157
  %cmp67 = fcmp ogt double %call66, %21, !dbg !193
  br i1 %cmp67, label %S50, label %if.end70, !dbg !193

if.end70:                                         ; preds = %S160
  %call71 = tail call double @sre_random() #3, !dbg !194
  store double %call71, double* @Gaussrandom.u, align 8, !dbg !194, !tbaa !157
  %22 = load double* @Gaussrandom.ustar, align 8, !dbg !195, !tbaa !157
  %cmp72 = fcmp ult double %22, %call71, !dbg !195
  br i1 %cmp72, label %if.end75, label %S160, !dbg !195

if.end75:                                         ; preds = %if.end70
  %call76 = tail call double @sre_random() #3, !dbg !187
  %.pre = load i64* @Gaussrandom.i, align 8, !dbg !188, !tbaa !110
  %.pre103 = load double* @Gaussrandom.aa, align 8, !dbg !189, !tbaa !157
  br label %S140, !dbg !196
}

; Function Attrs: nounwind optsize uwtable
define i32 @DChoose(double* nocapture %p, i32 %N) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %p}, i64 0, metadata !45), !dbg !197
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !46), !dbg !197
  %call = tail call double @sre_random() #3, !dbg !198
  tail call void @llvm.dbg.value(metadata !{double %call}, i64 0, metadata !47), !dbg !198
  tail call void @llvm.dbg.value(metadata !199, i64 0, metadata !48), !dbg !200
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !49), !dbg !201
  %cmp9 = icmp sgt i32 %N, 0, !dbg !201
  br i1 %cmp9, label %for.body, label %for.end, !dbg !201

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.011, 1, !dbg !201
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !201
  %cmp = icmp slt i32 %0, %N, !dbg !201
  br i1 %cmp, label %for.body, label %for.end, !dbg !201

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %i.011 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %sum.010 = phi double [ %add, %for.cond ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %p, i64 %indvars.iv, !dbg !203
  %1 = load double* %arrayidx, align 8, !dbg !203, !tbaa !157
  %add = fadd double %sum.010, %1, !dbg !203
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !48), !dbg !203
  %cmp1 = fcmp olt double %call, %add, !dbg !205
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !201
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !49), !dbg !201
  br i1 %cmp1, label %return, label %for.cond, !dbg !205

for.end:                                          ; preds = %for.cond, %entry
  %call2 = tail call double @sre_random() #3, !dbg !206
  %conv = sitofp i32 %N to double, !dbg !206
  %mul = fmul double %conv, %call2, !dbg !206
  %conv3 = fptosi double %mul to i32, !dbg !206
  br label %return, !dbg !206

return:                                           ; preds = %for.body, %for.end
  %retval.0 = phi i32 [ %conv3, %for.end ], [ %i.011, %for.body ]
  ret i32 %retval.0, !dbg !207
}

; Function Attrs: nounwind optsize uwtable
define i32 @FChoose(float* nocapture %p, i32 %N) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %p}, i64 0, metadata !56), !dbg !208
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !57), !dbg !208
  %call = tail call double @sre_random() #3, !dbg !209
  %conv = fptrunc double %call to float, !dbg !209
  tail call void @llvm.dbg.value(metadata !{float %conv}, i64 0, metadata !58), !dbg !209
  tail call void @llvm.dbg.value(metadata !210, i64 0, metadata !59), !dbg !211
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !60), !dbg !212
  %cmp12 = icmp sgt i32 %N, 0, !dbg !212
  br i1 %cmp12, label %for.body, label %for.end, !dbg !212

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.014, 1, !dbg !212
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !212
  %cmp = icmp slt i32 %0, %N, !dbg !212
  br i1 %cmp, label %for.body, label %for.end, !dbg !212

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %i.014 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %sum.013 = phi float [ %add, %for.cond ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %p, i64 %indvars.iv, !dbg !214
  %1 = load float* %arrayidx, align 4, !dbg !214, !tbaa !216
  %add = fadd float %sum.013, %1, !dbg !214
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !59), !dbg !214
  %cmp2 = fcmp olt float %conv, %add, !dbg !217
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !212
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !60), !dbg !212
  br i1 %cmp2, label %return, label %for.cond, !dbg !217

for.end:                                          ; preds = %for.cond, %entry
  %call4 = tail call double @sre_random() #3, !dbg !218
  %conv5 = sitofp i32 %N to double, !dbg !218
  %mul = fmul double %conv5, %call4, !dbg !218
  %conv6 = fptosi double %mul to i32, !dbg !218
  br label %return, !dbg !218

return:                                           ; preds = %for.body, %for.end
  %retval.0 = phi i32 [ %conv6, %for.end ], [ %i.014, %for.body ]
  ret i32 %retval.0, !dbg !219
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !61, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_random.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_random.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !23, metadata !28, metadata !31, metadata !34, metadata !40, metadata !50}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sre_random", metadata !"sre_random", metadata !"", i32 46, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double ()* @sre_random, null, null, metadata !9, i32 47} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 47] [sre_random]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_random.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!9 = metadata !{metadata !10, metadata !12, metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22}
!10 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 52, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 52]
!11 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!12 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 52, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 52]
!13 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 53, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 53]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786688, metadata !4, metadata !"a1", metadata !5, i32 58, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a1] [line 58]
!16 = metadata !{i32 786688, metadata !4, metadata !"m1", metadata !5, i32 59, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m1] [line 59]
!17 = metadata !{i32 786688, metadata !4, metadata !"q1", metadata !5, i32 60, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q1] [line 60]
!18 = metadata !{i32 786688, metadata !4, metadata !"r1", metadata !5, i32 61, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r1] [line 61]
!19 = metadata !{i32 786688, metadata !4, metadata !"a2", metadata !5, i32 63, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a2] [line 63]
!20 = metadata !{i32 786688, metadata !4, metadata !"m2", metadata !5, i32 64, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m2] [line 64]
!21 = metadata !{i32 786688, metadata !4, metadata !"q2", metadata !5, i32 65, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q2] [line 65]
!22 = metadata !{i32 786688, metadata !4, metadata !"r2", metadata !5, i32 66, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r2] [line 66]
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sre_srandom", metadata !"sre_srandom", metadata !"", i32 117, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @sre_srandom, null, null, metadata !26, i32 118} ; [ DW_TAG_subprogram ] [line 117] [def] [scope 118] [sre_srandom]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !14}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786689, metadata !23, metadata !"seed", metadata !5, i32 16777333, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 117]
!28 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sre_random_positive", metadata !"sre_random_positive", metadata !"", i32 130, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double ()* @sre_random_positive, null, null, metadata !29, i32 131} ; [ DW_TAG_subprogram ] [line 130] [def] [scope 131] [sre_random_positive]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786688, metadata !28, metadata !"x", metadata !5, i32 132, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 132]
!31 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ExponentialRandom", metadata !"ExponentialRandom", metadata !"", i32 148, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double ()* @ExponentialRandom, null, null, metadata !32, i32 149} ; [ DW_TAG_subprogram ] [line 148] [def] [scope 149] [ExponentialRandom]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786688, metadata !31, metadata !"x", metadata !5, i32 150, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 150]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Gaussrandom", metadata !"Gaussrandom", metadata !"", i32 173, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double, double)* @Gaussrandom, null, null, metadata !37, i32 174} ; [ DW_TAG_subprogram ] [line 173] [def] [scope 174] [Gaussrandom]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{metadata !8, metadata !8, metadata !8}
!37 = metadata !{metadata !38, metadata !39}
!38 = metadata !{i32 786689, metadata !34, metadata !"mean", metadata !5, i32 16777389, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mean] [line 173]
!39 = metadata !{i32 786689, metadata !34, metadata !"stddev", metadata !5, i32 33554605, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stddev] [line 173]
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DChoose", metadata !"DChoose", metadata !"", i32 283, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double*, i32)* @DChoose, null, null, metadata !44, i32 284} ; [ DW_TAG_subprogram ] [line 283] [def] [scope 284] [DChoose]
!41 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !14, metadata !43, metadata !14}
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48, metadata !49}
!45 = metadata !{i32 786689, metadata !40, metadata !"p", metadata !5, i32 16777499, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 283]
!46 = metadata !{i32 786689, metadata !40, metadata !"N", metadata !5, i32 33554715, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 283]
!47 = metadata !{i32 786688, metadata !40, metadata !"roll", metadata !5, i32 285, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [roll] [line 285]
!48 = metadata !{i32 786688, metadata !40, metadata !"sum", metadata !5, i32 286, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 286]
!49 = metadata !{i32 786688, metadata !40, metadata !"i", metadata !5, i32 287, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 287]
!50 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FChoose", metadata !"FChoose", metadata !"", i32 299, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float*, i32)* @FChoose, null, null, metadata !55, i32 300} ; [ DW_TAG_subprogram ] [line 299] [def] [scope 300] [FChoose]
!51 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{metadata !14, metadata !53, metadata !14}
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!54 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59, metadata !60}
!56 = metadata !{i32 786689, metadata !50, metadata !"p", metadata !5, i32 16777515, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 299]
!57 = metadata !{i32 786689, metadata !50, metadata !"N", metadata !5, i32 33554731, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 299]
!58 = metadata !{i32 786688, metadata !50, metadata !"roll", metadata !5, i32 301, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [roll] [line 301]
!59 = metadata !{i32 786688, metadata !50, metadata !"sum", metadata !5, i32 302, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 302]
!60 = metadata !{i32 786688, metadata !50, metadata !"i", metadata !5, i32 303, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 303]
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !69, metadata !73, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88}
!62 = metadata !{i32 786484, i32 0, metadata !4, metadata !"rnd1", metadata !"rnd1", metadata !"", metadata !5, i32 48, metadata !11, i32 1, i32 1, i64* @sre_random.rnd1, null} ; [ DW_TAG_variable ] [rnd1] [line 48] [local] [def]
!63 = metadata !{i32 786484, i32 0, metadata !4, metadata !"rnd2", metadata !"rnd2", metadata !"", metadata !5, i32 49, metadata !11, i32 1, i32 1, i64* @sre_random.rnd2, null} ; [ DW_TAG_variable ] [rnd2] [line 49] [local] [def]
!64 = metadata !{i32 786484, i32 0, metadata !4, metadata !"rnd", metadata !"rnd", metadata !"", metadata !5, i32 50, metadata !11, i32 1, i32 1, i64* @sre_random.rnd, null} ; [ DW_TAG_variable ] [rnd] [line 50] [local] [def]
!65 = metadata !{i32 786484, i32 0, metadata !4, metadata !"tbl", metadata !"tbl", metadata !"", metadata !5, i32 51, metadata !66, i32 1, i32 1, [64 x i64]* @sre_random.tbl, null} ; [ DW_TAG_variable ] [tbl] [line 51] [local] [def]
!66 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4096, i64 64, i32 0, i32 0, metadata !11, metadata !67, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4096, align 64, offset 0] [from long int]
!67 = metadata !{metadata !68}
!68 = metadata !{i32 786465, i64 0, i64 64}       ; [ DW_TAG_subrange_type ] [0, 63]
!69 = metadata !{i32 786484, i32 0, metadata !34, metadata !"a", metadata !"a", metadata !"", metadata !5, i32 175, metadata !70, i32 1, i32 1, [32 x double]* @Gaussrandom.a, null} ; [ DW_TAG_variable ] [a] [line 175] [local] [def]
!70 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 64, i32 0, i32 0, metadata !8, metadata !71, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 64, offset 0] [from double]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786465, i64 0, i64 32}       ; [ DW_TAG_subrange_type ] [0, 31]
!73 = metadata !{i32 786484, i32 0, metadata !34, metadata !"d", metadata !"d", metadata !"", metadata !5, i32 181, metadata !74, i32 1, i32 1, [31 x double]* @Gaussrandom.d, null} ; [ DW_TAG_variable ] [d] [line 181] [local] [def]
!74 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1984, i64 64, i32 0, i32 0, metadata !8, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1984, align 64, offset 0] [from double]
!75 = metadata !{metadata !76}
!76 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ] [0, 30]
!77 = metadata !{i32 786484, i32 0, metadata !34, metadata !"t", metadata !"t", metadata !"", metadata !5, i32 187, metadata !74, i32 1, i32 1, [31 x double]* @Gaussrandom.t, null} ; [ DW_TAG_variable ] [t] [line 187] [local] [def]
!78 = metadata !{i32 786484, i32 0, metadata !34, metadata !"h", metadata !"h", metadata !"", metadata !5, i32 194, metadata !74, i32 1, i32 1, [31 x double]* @Gaussrandom.h, null} ; [ DW_TAG_variable ] [h] [line 194] [local] [def]
!79 = metadata !{i32 786484, i32 0, metadata !34, metadata !"i", metadata !"i", metadata !"", metadata !5, i32 201, metadata !11, i32 1, i32 1, i64* @Gaussrandom.i, null} ; [ DW_TAG_variable ] [i] [line 201] [local] [def]
!80 = metadata !{i32 786484, i32 0, metadata !34, metadata !"snorm", metadata !"snorm", metadata !"", metadata !5, i32 202, metadata !8, i32 1, i32 1, double* @Gaussrandom.snorm, null} ; [ DW_TAG_variable ] [snorm] [line 202] [local] [def]
!81 = metadata !{i32 786484, i32 0, metadata !34, metadata !"u", metadata !"u", metadata !"", metadata !5, i32 202, metadata !8, i32 1, i32 1, double* @Gaussrandom.u, null} ; [ DW_TAG_variable ] [u] [line 202] [local] [def]
!82 = metadata !{i32 786484, i32 0, metadata !34, metadata !"s", metadata !"s", metadata !"", metadata !5, i32 202, metadata !8, i32 1, i32 1, double* @Gaussrandom.s, null} ; [ DW_TAG_variable ] [s] [line 202] [local] [def]
!83 = metadata !{i32 786484, i32 0, metadata !34, metadata !"ustar", metadata !"ustar", metadata !"", metadata !5, i32 202, metadata !8, i32 1, i32 1, double* @Gaussrandom.ustar, null} ; [ DW_TAG_variable ] [ustar] [line 202] [local] [def]
!84 = metadata !{i32 786484, i32 0, metadata !34, metadata !"aa", metadata !"aa", metadata !"", metadata !5, i32 202, metadata !8, i32 1, i32 1, double* @Gaussrandom.aa, null} ; [ DW_TAG_variable ] [aa] [line 202] [local] [def]
!85 = metadata !{i32 786484, i32 0, metadata !34, metadata !"w", metadata !"w", metadata !"", metadata !5, i32 202, metadata !8, i32 1, i32 1, double* @Gaussrandom.w, null} ; [ DW_TAG_variable ] [w] [line 202] [local] [def]
!86 = metadata !{i32 786484, i32 0, metadata !34, metadata !"y", metadata !"y", metadata !"", metadata !5, i32 202, metadata !8, i32 1, i32 1, double* @Gaussrandom.y, null} ; [ DW_TAG_variable ] [y] [line 202] [local] [def]
!87 = metadata !{i32 786484, i32 0, metadata !34, metadata !"tt", metadata !"tt", metadata !"", metadata !5, i32 202, metadata !8, i32 1, i32 1, double* @Gaussrandom.tt, null} ; [ DW_TAG_variable ] [tt] [line 202] [local] [def]
!88 = metadata !{i32 786484, i32 0, null, metadata !"sre_randseed", metadata !"sre_randseed", metadata !"", metadata !5, i32 16, metadata !14, i32 1, i32 1, i32* @sre_randseed, null} ; [ DW_TAG_variable ] [sre_randseed] [line 16] [local] [def]
!89 = metadata !{i64 40014}
!90 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!91 = metadata !{i64 2147483563}
!92 = metadata !{i32 59, i32 0, metadata !4, null}
!93 = metadata !{i64 53668}
!94 = metadata !{i32 60, i32 0, metadata !4, null}
!95 = metadata !{i64 12211}
!96 = metadata !{i32 61, i32 0, metadata !4, null}
!97 = metadata !{i64 40692}
!98 = metadata !{i32 63, i32 0, metadata !4, null}
!99 = metadata !{i64 2147483399}
!100 = metadata !{i32 64, i32 0, metadata !4, null}
!101 = metadata !{i64 52774}
!102 = metadata !{i32 65, i32 0, metadata !4, null}
!103 = metadata !{i64 3791}
!104 = metadata !{i32 66, i32 0, metadata !4, null}
!105 = metadata !{i32 68, i32 0, metadata !4, null}
!106 = metadata !{metadata !"int", metadata !107}
!107 = metadata !{metadata !"omnipotent char", metadata !108}
!108 = metadata !{metadata !"Simple C/C++ TBAA"}
!109 = metadata !{i32 91, i32 0, metadata !4, null}
!110 = metadata !{metadata !"long", metadata !107}
!111 = metadata !{i32 96, i32 0, metadata !4, null}
!112 = metadata !{i32 70, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !4, i32 69, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_random.c]
!114 = metadata !{i32 71, i32 0, metadata !113, null}
!115 = metadata !{i32 73, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !113, i32 73, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_random.c]
!117 = metadata !{i32 74, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !116, i32 73, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_random.c]
!119 = metadata !{i32 75, i32 0, metadata !118, null}
!120 = metadata !{i32 76, i32 0, metadata !118, null}
!121 = metadata !{i32 77, i32 0, metadata !118, null}
!122 = metadata !{i32 79, i32 0, metadata !118, null}
!123 = metadata !{i32 80, i32 0, metadata !118, null}
!124 = metadata !{i32 81, i32 0, metadata !118, null}
!125 = metadata !{i32 82, i32 0, metadata !118, null}
!126 = metadata !{i32 84, i32 0, metadata !118, null}
!127 = metadata !{i32 85, i32 0, metadata !118, null}
!128 = metadata !{i32 87, i32 0, metadata !113, null}
!129 = metadata !{i32 88, i32 0, metadata !113, null}
!130 = metadata !{i32 92, i32 0, metadata !4, null}
!131 = metadata !{i32 93, i32 0, metadata !4, null}
!132 = metadata !{i32 94, i32 0, metadata !4, null}
!133 = metadata !{i32 97, i32 0, metadata !4, null}
!134 = metadata !{i32 98, i32 0, metadata !4, null}
!135 = metadata !{i32 99, i32 0, metadata !4, null}
!136 = metadata !{i32 102, i32 0, metadata !4, null}
!137 = metadata !{i32 103, i32 0, metadata !4, null}
!138 = metadata !{i32 105, i32 0, metadata !4, null}
!139 = metadata !{i32 106, i32 0, metadata !4, null}
!140 = metadata !{i32 108, i32 0, metadata !4, null}
!141 = metadata !{i32 117, i32 0, metadata !23, null}
!142 = metadata !{i32 119, i32 0, metadata !23, null}
!143 = metadata !{i32 120, i32 0, metadata !23, null}
!144 = metadata !{i32 42}
!145 = metadata !{i32 121, i32 0, metadata !23, null}
!146 = metadata !{i32 122, i32 0, metadata !23, null}
!147 = metadata !{i32 133, i32 0, metadata !28, null}
!148 = metadata !{i32 133, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !28, i32 133, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_random.c]
!150 = metadata !{i32 134, i32 0, metadata !28, null}
!151 = metadata !{i32 152, i32 0, metadata !31, null}
!152 = metadata !{i32 153, i32 0, metadata !31, null}
!153 = metadata !{i32 173, i32 0, metadata !34, null}
!154 = metadata !{i32 204, i32 0, metadata !34, null}
!155 = metadata !{i32 206, i32 0, metadata !34, null}
!156 = metadata !{i32 205, i32 0, metadata !34, null}
!157 = metadata !{metadata !"double", metadata !107}
!158 = metadata !{i32 207, i32 0, metadata !34, null}
!159 = metadata !{i32 208, i32 0, metadata !34, null}
!160 = metadata !{i32 209, i32 0, metadata !34, null}
!161 = metadata !{i32 210, i32 0, metadata !34, null}
!162 = metadata !{i32 211, i32 0, metadata !34, null}
!163 = metadata !{i32 215, i32 0, metadata !34, null}
!164 = metadata !{i32 216, i32 0, metadata !34, null}
!165 = metadata !{i32 218, i32 0, metadata !34, null}
!166 = metadata !{i32 219, i32 0, metadata !34, null}
!167 = metadata !{i32 224, i32 0, metadata !34, null}
!168 = metadata !{i32 225, i32 0, metadata !34, null}
!169 = metadata !{i32 226, i32 0, metadata !34, null}
!170 = metadata !{i32 227, i32 0, metadata !34, null}
!171 = metadata !{i32 232, i32 0, metadata !34, null}
!172 = metadata !{i32 233, i32 0, metadata !34, null}
!173 = metadata !{i32 234, i32 0, metadata !34, null}
!174 = metadata !{i32 240, i32 0, metadata !34, null}
!175 = metadata !{i32 241, i32 0, metadata !34, null}
!176 = metadata !{i32 242, i32 0, metadata !34, null}
!177 = metadata !{i32 237, i32 0, metadata !34, null}
!178 = metadata !{i32 238, i32 0, metadata !34, null}
!179 = metadata !{i32 243, i32 0, metadata !34, null}
!180 = metadata !{i32 249, i32 0, metadata !34, null}
!181 = metadata !{i32 250, i32 0, metadata !34, null}
!182 = metadata !{i32 256, i32 0, metadata !34, null}
!183 = metadata !{i32 257, i32 0, metadata !34, null}
!184 = metadata !{i32 253, i32 0, metadata !34, null}
!185 = metadata !{i32 254, i32 0, metadata !34, null}
!186 = metadata !{i32 258, i32 0, metadata !34, null}
!187 = metadata !{i32 270, i32 0, metadata !34, null}
!188 = metadata !{i32 260, i32 0, metadata !34, null}
!189 = metadata !{i32 261, i32 0, metadata !34, null}
!190 = metadata !{i32 262, i32 0, metadata !34, null}
!191 = metadata !{i32 264, i32 0, metadata !34, null}
!192 = metadata !{i32 266, i32 0, metadata !34, null}
!193 = metadata !{i32 267, i32 0, metadata !34, null}
!194 = metadata !{i32 268, i32 0, metadata !34, null}
!195 = metadata !{i32 269, i32 0, metadata !34, null}
!196 = metadata !{i32 271, i32 0, metadata !34, null}
!197 = metadata !{i32 283, i32 0, metadata !40, null}
!198 = metadata !{i32 289, i32 0, metadata !40, null}
!199 = metadata !{double 0.000000e+00}
!200 = metadata !{i32 290, i32 0, metadata !40, null}
!201 = metadata !{i32 291, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !40, i32 291, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_random.c]
!203 = metadata !{i32 293, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !202, i32 292, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_random.c]
!205 = metadata !{i32 294, i32 0, metadata !204, null}
!206 = metadata !{i32 296, i32 0, metadata !40, null}
!207 = metadata !{i32 297, i32 0, metadata !40, null}
!208 = metadata !{i32 299, i32 0, metadata !50, null}
!209 = metadata !{i32 305, i32 0, metadata !50, null}
!210 = metadata !{float 0.000000e+00}
!211 = metadata !{i32 306, i32 0, metadata !50, null}
!212 = metadata !{i32 307, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !50, i32 307, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_random.c]
!214 = metadata !{i32 309, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !213, i32 308, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_random.c]
!216 = metadata !{metadata !"float", metadata !107}
!217 = metadata !{i32 310, i32 0, metadata !215, null}
!218 = metadata !{i32 312, i32 0, metadata !50, null}
!219 = metadata !{i32 313, i32 0, metadata !50, null}
