; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/sre_random.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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

; Function Attrs: nounwind optsize ssp uwtable
define double @sre_random() #0 {
  tail call void @llvm.dbg.value(metadata i64 40014, i64 0, metadata !15, metadata !93), !dbg !94
  tail call void @llvm.dbg.value(metadata i64 2147483563, i64 0, metadata !16, metadata !93), !dbg !95
  tail call void @llvm.dbg.value(metadata i64 53668, i64 0, metadata !17, metadata !93), !dbg !96
  tail call void @llvm.dbg.value(metadata i64 12211, i64 0, metadata !18, metadata !93), !dbg !97
  tail call void @llvm.dbg.value(metadata i64 40692, i64 0, metadata !19, metadata !93), !dbg !98
  tail call void @llvm.dbg.value(metadata i64 2147483399, i64 0, metadata !20, metadata !93), !dbg !99
  tail call void @llvm.dbg.value(metadata i64 52774, i64 0, metadata !21, metadata !93), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 3791, i64 0, metadata !22, metadata !93), !dbg !101
  %1 = load i32* @sre_randseed, align 4, !dbg !102, !tbaa !104
  %2 = icmp sgt i32 %1, 0, !dbg !108
  br i1 %2, label %3, label %._crit_edge, !dbg !109

._crit_edge:                                      ; preds = %0
  %.pre = load i64* @sre_random.rnd1, align 8, !dbg !110, !tbaa !111
  %.pre12 = load i64* @sre_random.rnd2, align 8, !dbg !113, !tbaa !111
  br label %25, !dbg !109

; <label>:3                                       ; preds = %0
  %4 = sext i32 %1 to i64, !dbg !114
  store i64 %4, i64* @sre_random.rnd1, align 8, !dbg !116, !tbaa !111
  store i64 %4, i64* @sre_random.rnd2, align 8, !dbg !117, !tbaa !111
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !14, metadata !93), !dbg !118
  br label %5, !dbg !119

; <label>:5                                       ; preds = %5, %3
  %indvars.iv = phi i64 [ 0, %3 ], [ %indvars.iv.next, %5 ]
  %storemerge411 = phi i64 [ %4, %3 ], [ %storemerge4, %5 ], !dbg !121
  %.10 = phi i64 [ %4, %3 ], [ %., %5 ], !dbg !124
  %6 = srem i64 %.10, 53668, !dbg !121
  %7 = mul nsw i64 %6, 40014, !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !12, metadata !93), !dbg !126
  %8 = sdiv i64 %.10, 53668, !dbg !127
  %9 = mul nsw i64 %8, -12211, !dbg !128
  %10 = add i64 %7, %9, !dbg !128
  %11 = icmp slt i64 %10, 0, !dbg !129
  %12 = add nsw i64 %10, 2147483563, !dbg !131
  %. = select i1 %11, i64 %12, i64 %10, !dbg !132
  %13 = srem i64 %storemerge411, 52774, !dbg !133
  %14 = mul nsw i64 %13, 40692, !dbg !134
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !12, metadata !93), !dbg !126
  %15 = sdiv i64 %storemerge411, 52774, !dbg !135
  %16 = mul nsw i64 %15, -3791, !dbg !136
  %17 = add i64 %14, %16, !dbg !136
  %18 = icmp slt i64 %17, 0, !dbg !137
  %19 = add nsw i64 %17, 2147483399, !dbg !139
  %storemerge4 = select i1 %18, i64 %19, i64 %17, !dbg !140
  %20 = sub nsw i64 %., %storemerge4, !dbg !141
  %21 = getelementptr inbounds [64 x i64]* @sre_random.tbl, i64 0, i64 %indvars.iv, !dbg !142
  %22 = icmp slt i64 %20, 0, !dbg !143
  %23 = add nsw i64 %20, 2147483563, !dbg !145
  %.6 = select i1 %22, i64 %23, i64 %20, !dbg !146
  store i64 %.6, i64* %21, align 8, !dbg !147, !tbaa !111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !119
  %exitcond = icmp eq i64 %indvars.iv.next, 64, !dbg !119
  br i1 %exitcond, label %24, label %5, !dbg !119

; <label>:24                                      ; preds = %5
  store i64 %., i64* @sre_random.rnd1, align 8, !dbg !148, !tbaa !111
  store i64 %storemerge4, i64* @sre_random.rnd2, align 8, !dbg !149, !tbaa !111
  store i32 0, i32* @sre_randseed, align 4, !dbg !150, !tbaa !104
  br label %25, !dbg !151

; <label>:25                                      ; preds = %._crit_edge, %24
  %26 = phi i64 [ %.pre12, %._crit_edge ], [ %storemerge4, %24 ]
  %27 = phi i64 [ %.pre, %._crit_edge ], [ %., %24 ]
  %28 = srem i64 %27, 53668, !dbg !152
  %29 = mul nsw i64 %28, 40014, !dbg !153
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !12, metadata !93), !dbg !126
  %30 = sdiv i64 %27, 53668, !dbg !154
  %31 = mul nsw i64 %30, -12211, !dbg !155
  %32 = add i64 %29, %31, !dbg !155
  %33 = icmp slt i64 %32, 0, !dbg !156
  %34 = add nsw i64 %32, 2147483563, !dbg !158
  %.7 = select i1 %33, i64 %34, i64 %32, !dbg !159
  store i64 %.7, i64* @sre_random.rnd1, align 8, !dbg !160, !tbaa !111
  %35 = srem i64 %26, 52774, !dbg !161
  %36 = mul nsw i64 %35, 40692, !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !12, metadata !93), !dbg !126
  %37 = sdiv i64 %26, 52774, !dbg !163
  %38 = mul nsw i64 %37, -3791, !dbg !164
  %39 = add i64 %36, %38, !dbg !164
  %40 = icmp slt i64 %39, 0, !dbg !165
  %41 = add nsw i64 %39, 2147483399, !dbg !167
  %storemerge1 = select i1 %40, i64 %41, i64 %39, !dbg !168
  store i64 %storemerge1, i64* @sre_random.rnd2, align 8, !dbg !169, !tbaa !111
  %42 = load i64* @sre_random.rnd, align 8, !dbg !170, !tbaa !111
  %43 = sitofp i64 %42 to double, !dbg !171
  %44 = fdiv double %43, 0x41DFFFFFEAC00000, !dbg !172
  %45 = fmul double %44, 6.400000e+01, !dbg !173
  %46 = fptosi double %45 to i32, !dbg !174
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !14, metadata !93), !dbg !118
  %47 = sext i32 %46 to i64, !dbg !175
  %48 = getelementptr inbounds [64 x i64]* @sre_random.tbl, i64 0, i64 %47, !dbg !175
  %49 = load i64* %48, align 8, !dbg !175, !tbaa !111
  store i64 %49, i64* @sre_random.rnd, align 8, !dbg !176, !tbaa !111
  %50 = sub nsw i64 %.7, %storemerge1, !dbg !177
  %51 = icmp slt i64 %50, 0, !dbg !178
  %52 = add nsw i64 %50, 2147483563, !dbg !180
  %.8 = select i1 %51, i64 %52, i64 %50, !dbg !181
  store i64 %.8, i64* %48, align 8, !dbg !182, !tbaa !111
  %53 = sitofp i64 %49 to double, !dbg !183
  %54 = fdiv double %53, 0x41DFFFFFEAC00000, !dbg !184
  ret double %54, !dbg !185
}

; Function Attrs: nounwind optsize ssp uwtable
define void @sre_srandom(i32 %seed) #0 {
  tail call void @llvm.dbg.value(metadata i32 %seed, i64 0, metadata !27, metadata !93), !dbg !186
  %1 = icmp slt i32 %seed, 0, !dbg !187
  %2 = sub nsw i32 0, %seed, !dbg !189
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !27, metadata !93), !dbg !186
  %.seed = select i1 %1, i32 %2, i32 %seed, !dbg !190
  %3 = icmp eq i32 %.seed, 0, !dbg !191
  tail call void @llvm.dbg.value(metadata i32 42, i64 0, metadata !27, metadata !93), !dbg !186
  %.1 = select i1 %3, i32 42, i32 %.seed, !dbg !193
  store i32 %.1, i32* @sre_randseed, align 4, !dbg !194, !tbaa !104
  ret void, !dbg !195
}

; Function Attrs: nounwind optsize ssp uwtable
define double @sre_random_positive() #0 {
  br label %1, !dbg !196

; <label>:1                                       ; preds = %1, %0
  %2 = tail call double @sre_random() #3, !dbg !197
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !30, metadata !93), !dbg !199
  %3 = fcmp oeq double %2, 0.000000e+00, !dbg !200
  br i1 %3, label %1, label %4, !dbg !201

; <label>:4                                       ; preds = %1
  ret double %2, !dbg !202
}

; Function Attrs: nounwind optsize ssp uwtable
define double @ExponentialRandom() #0 {
  br label %1, !dbg !203

; <label>:1                                       ; preds = %1, %0
  %2 = tail call double @sre_random() #3, !dbg !204
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !33, metadata !93), !dbg !205
  %3 = fcmp oeq double %2, 0.000000e+00, !dbg !206
  br i1 %3, label %1, label %4, !dbg !207

; <label>:4                                       ; preds = %1
  %5 = tail call double @log(double %2) #4, !dbg !208
  %6 = fsub double -0.000000e+00, %5, !dbg !209
  ret double %6, !dbg !210
}

; Function Attrs: nounwind optsize readnone
declare double @log(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define double @Gaussrandom(double %mean, double %stddev) #0 {
  tail call void @llvm.dbg.value(metadata double %mean, i64 0, metadata !38, metadata !93), !dbg !211
  tail call void @llvm.dbg.value(metadata double %stddev, i64 0, metadata !39, metadata !93), !dbg !212
  %1 = tail call double @sre_random() #3, !dbg !213
  %2 = fcmp ogt double %1, 5.000000e-01, !dbg !214
  %storemerge6 = select i1 %2, double 1.000000e+00, double 0.000000e+00, !dbg !216
  store double %storemerge6, double* @Gaussrandom.s, align 8, !dbg !217, !tbaa !218
  %3 = fsub double %1, %storemerge6, !dbg !220
  %4 = fadd double %1, %3, !dbg !221
  %5 = fmul double %4, 3.200000e+01, !dbg !222
  store double %5, double* @Gaussrandom.u, align 8, !dbg !223, !tbaa !218
  %6 = fptosi double %5 to i64, !dbg !224
  %7 = icmp eq i64 %6, 32, !dbg !225
  %. = select i1 %7, i64 31, i64 %6, !dbg !227
  store i64 %., i64* @Gaussrandom.i, align 8, !dbg !228, !tbaa !111
  %8 = icmp eq i64 %., 0, !dbg !229
  br i1 %8, label %58, label %9, !dbg !231

; <label>:9                                       ; preds = %0
  %10 = sitofp i64 %. to double, !dbg !232
  %11 = fsub double %5, %10, !dbg !233
  store double %11, double* @Gaussrandom.ustar, align 8, !dbg !234, !tbaa !218
  %.sum = add i64 %., -1, !dbg !235
  %12 = getelementptr inbounds [32 x double]* @Gaussrandom.a, i64 0, i64 %.sum, !dbg !235
  %13 = bitcast double* %12 to i64*, !dbg !236
  %14 = load i64* %13, align 8, !dbg !236, !tbaa !218
  store i64 %14, i64* bitcast (double* @Gaussrandom.aa to i64*), align 8, !dbg !237, !tbaa !218
  %15 = getelementptr inbounds [31 x double]* @Gaussrandom.t, i64 0, i64 %.sum, !dbg !238
  %16 = load double* %15, align 8, !dbg !240, !tbaa !218
  %17 = fcmp ugt double %11, %16, !dbg !241
  br i1 %17, label %._crit_edge22, label %.lr.ph21, !dbg !242

._crit_edge22:                                    ; preds = %52, %9
  %.lcssa11 = phi double [ %16, %9 ], [ %56, %52 ]
  %.sum1.lcssa = phi i64 [ %.sum, %9 ], [ %.sum1, %52 ]
  %.lcssa8 = phi double [ %11, %9 ], [ %53, %52 ]
  %18 = fsub double %.lcssa8, %.lcssa11, !dbg !243
  %19 = getelementptr inbounds [31 x double]* @Gaussrandom.h, i64 0, i64 %.sum1.lcssa, !dbg !244
  %20 = load double* %19, align 8, !dbg !245, !tbaa !218
  %21 = fmul double %18, %20, !dbg !246
  store double %21, double* @Gaussrandom.w, align 8, !dbg !247, !tbaa !218
  br label %.loopexit, !dbg !248

.loopexit:                                        ; preds = %.lr.ph21, %48, %83, %._crit_edge22
  %22 = load double* @Gaussrandom.aa, align 8, !dbg !249, !tbaa !218
  %23 = load double* @Gaussrandom.w, align 8, !dbg !250, !tbaa !218
  %24 = fadd double %22, %23, !dbg !251
  store double %24, double* @Gaussrandom.y, align 8, !dbg !252, !tbaa !218
  store double %24, double* @Gaussrandom.snorm, align 8, !dbg !253, !tbaa !218
  %25 = load double* @Gaussrandom.s, align 8, !dbg !254, !tbaa !218
  %26 = fcmp oeq double %25, 1.000000e+00, !dbg !256
  br i1 %26, label %27, label %29, !dbg !257

; <label>:27                                      ; preds = %.loopexit
  %28 = fsub double -0.000000e+00, %24, !dbg !258
  store double %28, double* @Gaussrandom.snorm, align 8, !dbg !259, !tbaa !218
  br label %29, !dbg !260

; <label>:29                                      ; preds = %27, %.loopexit
  %30 = phi double [ %28, %27 ], [ %24, %.loopexit ]
  %31 = fmul double %30, %stddev, !dbg !261
  %32 = fadd double %31, %mean, !dbg !262
  ret double %32, !dbg !263

.lr.ph21:                                         ; preds = %9, %52
  %33 = tail call double @sre_random() #3, !dbg !264
  store double %33, double* @Gaussrandom.u, align 8, !dbg !265, !tbaa !218
  %34 = load i64* @Gaussrandom.i, align 8, !dbg !266, !tbaa !111
  %35 = getelementptr inbounds [32 x double]* @Gaussrandom.a, i64 0, i64 %34, !dbg !267
  %36 = load double* %35, align 8, !dbg !268, !tbaa !218
  %37 = load double* @Gaussrandom.aa, align 8, !dbg !269, !tbaa !218
  %38 = fsub double %36, %37, !dbg !270
  %39 = fmul double %33, %38, !dbg !271
  store double %39, double* @Gaussrandom.w, align 8, !dbg !272, !tbaa !218
  %40 = fmul double %39, 5.000000e-01, !dbg !273
  %41 = fadd double %37, %40, !dbg !274
  %42 = fmul double %39, %41, !dbg !275
  store double %42, double* @Gaussrandom.tt, align 8, !dbg !276, !tbaa !218
  %43 = load double* @Gaussrandom.ustar, align 8, !dbg !277, !tbaa !218
  %44 = fcmp ogt double %43, %42, !dbg !279
  br i1 %44, label %.loopexit, label %.lr.ph17, !dbg !280

.lr.ph17:                                         ; preds = %.lr.ph21, %48
  %45 = tail call double @sre_random() #3, !dbg !281
  store double %45, double* @Gaussrandom.u, align 8, !dbg !282, !tbaa !218
  %46 = load double* @Gaussrandom.ustar, align 8, !dbg !283, !tbaa !218
  %47 = fcmp ult double %46, %45, !dbg !285
  br i1 %47, label %52, label %48, !dbg !286

; <label>:48                                      ; preds = %.lr.ph17
  store double %45, double* @Gaussrandom.tt, align 8, !dbg !287, !tbaa !218
  %49 = tail call double @sre_random() #3, !dbg !288
  store double %49, double* @Gaussrandom.ustar, align 8, !dbg !289, !tbaa !218
  %50 = load double* @Gaussrandom.tt, align 8, !dbg !290, !tbaa !218
  %51 = fcmp ogt double %49, %50, !dbg !279
  br i1 %51, label %.loopexit, label %.lr.ph17, !dbg !280

; <label>:52                                      ; preds = %.lr.ph17
  %53 = tail call double @sre_random() #3, !dbg !291
  store double %53, double* @Gaussrandom.ustar, align 8, !dbg !292, !tbaa !218
  %54 = load i64* @Gaussrandom.i, align 8, !dbg !293, !tbaa !111
  %.sum1 = add i64 %54, -1, !dbg !238
  %55 = getelementptr inbounds [31 x double]* @Gaussrandom.t, i64 0, i64 %.sum1, !dbg !238
  %56 = load double* %55, align 8, !dbg !240, !tbaa !218
  %57 = fcmp ugt double %53, %56, !dbg !241
  br i1 %57, label %._crit_edge22, label %.lr.ph21, !dbg !242

; <label>:58                                      ; preds = %0
  store i64 6, i64* @Gaussrandom.i, align 8, !dbg !294, !tbaa !111
  store double 2.153875e+00, double* @Gaussrandom.aa, align 8, !dbg !295, !tbaa !218
  %59 = fadd double %5, %5, !dbg !296
  store double %59, double* @Gaussrandom.u, align 8, !dbg !296, !tbaa !218
  %60 = fcmp olt double %59, 1.000000e+00, !dbg !297
  br i1 %60, label %.lr.ph, label %70, !dbg !299

.lr.ph:                                           ; preds = %58, %.lr.ph
  %61 = phi double [ %68, %.lr.ph ], [ %59, %58 ], !dbg !300
  %62 = phi double [ %66, %.lr.ph ], [ 2.153875e+00, %58 ], !dbg !300
  %63 = phi i64 [ %67, %.lr.ph ], [ 6, %58 ], !dbg !301
  %.sum5 = add i64 %63, -1, !dbg !300
  %64 = getelementptr inbounds [31 x double]* @Gaussrandom.d, i64 0, i64 %.sum5, !dbg !300
  %65 = load double* %64, align 8, !dbg !302, !tbaa !218
  %66 = fadd double %65, %62, !dbg !303
  %67 = add nsw i64 %63, 1, !dbg !304
  %68 = fadd double %61, %61, !dbg !296
  %69 = fcmp olt double %68, 1.000000e+00, !dbg !297
  br i1 %69, label %.lr.ph, label %._crit_edge, !dbg !299

._crit_edge:                                      ; preds = %.lr.ph
  store i64 %67, i64* @Gaussrandom.i, align 8, !dbg !304, !tbaa !111
  store double %66, double* @Gaussrandom.aa, align 8, !dbg !303, !tbaa !218
  store double %68, double* @Gaussrandom.u, align 8, !dbg !296, !tbaa !218
  br label %70, !dbg !299

; <label>:70                                      ; preds = %._crit_edge, %58
  %71 = phi double [ %66, %._crit_edge ], [ 2.153875e+00, %58 ]
  %72 = phi i64 [ %67, %._crit_edge ], [ 6, %58 ]
  %.lcssa = phi double [ %68, %._crit_edge ], [ %59, %58 ]
  %73 = fadd double %.lcssa, -1.000000e+00, !dbg !305
  br label %74, !dbg !306

; <label>:74                                      ; preds = %91, %70
  %75 = phi double [ %71, %70 ], [ %.pre32, %91 ]
  %76 = phi i64 [ %72, %70 ], [ %.pre, %91 ]
  %storemerge = phi double [ %73, %70 ], [ %92, %91 ]
  store double %storemerge, double* @Gaussrandom.u, align 8, !dbg !307, !tbaa !218
  %.sum3 = add i64 %76, -1, !dbg !308
  %77 = getelementptr inbounds [31 x double]* @Gaussrandom.d, i64 0, i64 %.sum3, !dbg !308
  %78 = load double* %77, align 8, !dbg !309, !tbaa !218
  %79 = fmul double %storemerge, %78, !dbg !310
  store double %79, double* @Gaussrandom.w, align 8, !dbg !311, !tbaa !218
  %80 = fmul double %79, 5.000000e-01, !dbg !312
  %81 = fadd double %75, %80, !dbg !313
  %82 = fmul double %79, %81, !dbg !314
  br label %83, !dbg !315

; <label>:83                                      ; preds = %87, %74
  %storemerge4 = phi double [ %82, %74 ], [ %88, %87 ]
  store double %storemerge4, double* @Gaussrandom.tt, align 8, !dbg !316, !tbaa !218
  %84 = tail call double @sre_random() #3, !dbg !317
  store double %84, double* @Gaussrandom.ustar, align 8, !dbg !318, !tbaa !218
  %85 = load double* @Gaussrandom.tt, align 8, !dbg !319, !tbaa !218
  %86 = fcmp ogt double %84, %85, !dbg !321
  br i1 %86, label %.loopexit, label %87, !dbg !322

; <label>:87                                      ; preds = %83
  %88 = tail call double @sre_random() #3, !dbg !323
  store double %88, double* @Gaussrandom.u, align 8, !dbg !324, !tbaa !218
  %89 = load double* @Gaussrandom.ustar, align 8, !dbg !325, !tbaa !218
  %90 = fcmp ult double %89, %88, !dbg !327
  br i1 %90, label %91, label %83, !dbg !328

; <label>:91                                      ; preds = %87
  %92 = tail call double @sre_random() #3, !dbg !329
  %.pre = load i64* @Gaussrandom.i, align 8, !dbg !330, !tbaa !111
  %.pre32 = load double* @Gaussrandom.aa, align 8, !dbg !331, !tbaa !218
  br label %74, !dbg !332
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DChoose(double* nocapture readonly %p, i32 %N) #0 {
  tail call void @llvm.dbg.value(metadata double* %p, i64 0, metadata !45, metadata !93), !dbg !333
  tail call void @llvm.dbg.value(metadata i32 %N, i64 0, metadata !46, metadata !93), !dbg !334
  %1 = tail call double @sre_random() #3, !dbg !335
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !47, metadata !93), !dbg !336
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !48, metadata !93), !dbg !337
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !49, metadata !93), !dbg !338
  %2 = icmp sgt i32 %N, 0, !dbg !339
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !342

.lr.ph:                                           ; preds = %0
  %3 = sext i32 %N to i64, !dbg !342
  br label %4, !dbg !342

; <label>:4                                       ; preds = %.lr.ph, %9
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %9 ]
  %sum.02 = phi double [ 0.000000e+00, %.lr.ph ], [ %7, %9 ]
  %5 = getelementptr inbounds double* %p, i64 %indvars.iv, !dbg !343
  %6 = load double* %5, align 8, !dbg !343, !tbaa !218
  %7 = fadd double %sum.02, %6, !dbg !345
  tail call void @llvm.dbg.value(metadata double %7, i64 0, metadata !48, metadata !93), !dbg !337
  %8 = fcmp olt double %1, %7, !dbg !346
  br i1 %8, label %.loopexit, label %9, !dbg !348

; <label>:9                                       ; preds = %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !342
  %10 = icmp slt i64 %indvars.iv.next, %3, !dbg !339
  br i1 %10, label %4, label %._crit_edge, !dbg !342

._crit_edge:                                      ; preds = %9, %0
  %11 = tail call double @sre_random() #3, !dbg !349
  %12 = sitofp i32 %N to double, !dbg !350
  %13 = fmul double %12, %11, !dbg !351
  %14 = fptosi double %13 to i32, !dbg !352
  br label %16, !dbg !353

.loopexit:                                        ; preds = %4
  %15 = trunc i64 %indvars.iv to i32
  br label %16

; <label>:16                                      ; preds = %.loopexit, %._crit_edge
  %.0 = phi i32 [ %14, %._crit_edge ], [ %15, %.loopexit ]
  ret i32 %.0, !dbg !354
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @FChoose(float* nocapture readonly %p, i32 %N) #0 {
  tail call void @llvm.dbg.value(metadata float* %p, i64 0, metadata !56, metadata !93), !dbg !355
  tail call void @llvm.dbg.value(metadata i32 %N, i64 0, metadata !57, metadata !93), !dbg !356
  %1 = tail call double @sre_random() #3, !dbg !357
  %2 = fptrunc double %1 to float, !dbg !357
  tail call void @llvm.dbg.value(metadata float %2, i64 0, metadata !58, metadata !93), !dbg !358
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !59, metadata !93), !dbg !359
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !60, metadata !93), !dbg !360
  %3 = icmp sgt i32 %N, 0, !dbg !361
  br i1 %3, label %.lr.ph, label %._crit_edge, !dbg !364

.lr.ph:                                           ; preds = %0
  %4 = sext i32 %N to i64, !dbg !364
  br label %5, !dbg !364

; <label>:5                                       ; preds = %.lr.ph, %10
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %10 ]
  %sum.02 = phi float [ 0.000000e+00, %.lr.ph ], [ %8, %10 ]
  %6 = getelementptr inbounds float* %p, i64 %indvars.iv, !dbg !365
  %7 = load float* %6, align 4, !dbg !365, !tbaa !367
  %8 = fadd float %sum.02, %7, !dbg !369
  tail call void @llvm.dbg.value(metadata float %8, i64 0, metadata !59, metadata !93), !dbg !359
  %9 = fcmp olt float %2, %8, !dbg !370
  br i1 %9, label %.loopexit, label %10, !dbg !372

; <label>:10                                      ; preds = %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !364
  %11 = icmp slt i64 %indvars.iv.next, %4, !dbg !361
  br i1 %11, label %5, label %._crit_edge, !dbg !364

._crit_edge:                                      ; preds = %10, %0
  %12 = tail call double @sre_random() #3, !dbg !373
  %13 = sitofp i32 %N to double, !dbg !374
  %14 = fmul double %13, %12, !dbg !375
  %15 = fptosi double %14 to i32, !dbg !376
  br label %17, !dbg !377

.loopexit:                                        ; preds = %5
  %16 = trunc i64 %indvars.iv to i32
  br label %17

; <label>:17                                      ; preds = %.loopexit, %._crit_edge
  %.0 = phi i32 [ %15, %._crit_edge ], [ %16, %.loopexit ]
  ret i32 %.0, !dbg !378
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize }
attributes #4 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!89, !90, !91}
!llvm.ident = !{!92}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !61, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/sre_random.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!6 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!7 = !{!8, !23, !28, !31, !34, !40, !50}
!8 = !DISubprogram(name: "sre_random", scope: !1, file: !1, line: 46, type: !9, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: double ()* @sre_random, variables: !11)
!9 = !DISubroutineType(types: !10)
!10 = !{!5}
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !8, file: !1, line: 52, type: !6)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !8, file: !1, line: 52, type: !6)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 53, type: !4)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !8, file: !1, line: 58, type: !6)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m1", scope: !8, file: !1, line: 59, type: !6)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q1", scope: !8, file: !1, line: 60, type: !6)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r1", scope: !8, file: !1, line: 61, type: !6)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !8, file: !1, line: 63, type: !6)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m2", scope: !8, file: !1, line: 64, type: !6)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q2", scope: !8, file: !1, line: 65, type: !6)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r2", scope: !8, file: !1, line: 66, type: !6)
!23 = !DISubprogram(name: "sre_srandom", scope: !1, file: !1, line: 117, type: !24, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @sre_srandom, variables: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !4}
!26 = !{!27}
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seed", arg: 1, scope: !23, file: !1, line: 117, type: !4)
!28 = !DISubprogram(name: "sre_random_positive", scope: !1, file: !1, line: 130, type: !9, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, function: double ()* @sre_random_positive, variables: !29)
!29 = !{!30}
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !28, file: !1, line: 132, type: !5)
!31 = !DISubprogram(name: "ExponentialRandom", scope: !1, file: !1, line: 148, type: !9, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, function: double ()* @ExponentialRandom, variables: !32)
!32 = !{!33}
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !31, file: !1, line: 150, type: !5)
!34 = !DISubprogram(name: "Gaussrandom", scope: !1, file: !1, line: 173, type: !35, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, function: double (double, double)* @Gaussrandom, variables: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{!5, !5, !5}
!37 = !{!38, !39}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mean", arg: 1, scope: !34, file: !1, line: 173, type: !5)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stddev", arg: 2, scope: !34, file: !1, line: 173, type: !5)
!40 = !DISubprogram(name: "DChoose", scope: !1, file: !1, line: 283, type: !41, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double*, i32)* @DChoose, variables: !44)
!41 = !DISubroutineType(types: !42)
!42 = !{!4, !43, !4}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!44 = !{!45, !46, !47, !48, !49}
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !40, file: !1, line: 283, type: !43)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "N", arg: 2, scope: !40, file: !1, line: 283, type: !4)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "roll", scope: !40, file: !1, line: 285, type: !5)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !40, file: !1, line: 286, type: !5)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !40, file: !1, line: 287, type: !4)
!50 = !DISubprogram(name: "FChoose", scope: !1, file: !1, line: 299, type: !51, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float*, i32)* @FChoose, variables: !55)
!51 = !DISubroutineType(types: !52)
!52 = !{!4, !53, !4}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!55 = !{!56, !57, !58, !59, !60}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !50, file: !1, line: 299, type: !53)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "N", arg: 2, scope: !50, file: !1, line: 299, type: !4)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "roll", scope: !50, file: !1, line: 301, type: !54)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !50, file: !1, line: 302, type: !54)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !50, file: !1, line: 303, type: !4)
!61 = !{!62, !63, !64, !65, !69, !73, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!62 = !DIGlobalVariable(name: "rnd1", scope: !8, file: !1, line: 48, type: !6, isLocal: true, isDefinition: true, variable: i64* @sre_random.rnd1)
!63 = !DIGlobalVariable(name: "rnd2", scope: !8, file: !1, line: 49, type: !6, isLocal: true, isDefinition: true, variable: i64* @sre_random.rnd2)
!64 = !DIGlobalVariable(name: "rnd", scope: !8, file: !1, line: 50, type: !6, isLocal: true, isDefinition: true, variable: i64* @sre_random.rnd)
!65 = !DIGlobalVariable(name: "tbl", scope: !8, file: !1, line: 51, type: !66, isLocal: true, isDefinition: true, variable: [64 x i64]* @sre_random.tbl)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4096, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 64)
!69 = !DIGlobalVariable(name: "a", scope: !34, file: !1, line: 175, type: !70, isLocal: true, isDefinition: true, variable: [32 x double]* @Gaussrandom.a)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, align: 64, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 32)
!73 = !DIGlobalVariable(name: "d", scope: !34, file: !1, line: 181, type: !74, isLocal: true, isDefinition: true, variable: [31 x double]* @Gaussrandom.d)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1984, align: 64, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 31)
!77 = !DIGlobalVariable(name: "t", scope: !34, file: !1, line: 187, type: !74, isLocal: true, isDefinition: true, variable: [31 x double]* @Gaussrandom.t)
!78 = !DIGlobalVariable(name: "h", scope: !34, file: !1, line: 194, type: !74, isLocal: true, isDefinition: true, variable: [31 x double]* @Gaussrandom.h)
!79 = !DIGlobalVariable(name: "i", scope: !34, file: !1, line: 201, type: !6, isLocal: true, isDefinition: true, variable: i64* @Gaussrandom.i)
!80 = !DIGlobalVariable(name: "snorm", scope: !34, file: !1, line: 202, type: !5, isLocal: true, isDefinition: true, variable: double* @Gaussrandom.snorm)
!81 = !DIGlobalVariable(name: "u", scope: !34, file: !1, line: 202, type: !5, isLocal: true, isDefinition: true, variable: double* @Gaussrandom.u)
!82 = !DIGlobalVariable(name: "s", scope: !34, file: !1, line: 202, type: !5, isLocal: true, isDefinition: true, variable: double* @Gaussrandom.s)
!83 = !DIGlobalVariable(name: "ustar", scope: !34, file: !1, line: 202, type: !5, isLocal: true, isDefinition: true, variable: double* @Gaussrandom.ustar)
!84 = !DIGlobalVariable(name: "aa", scope: !34, file: !1, line: 202, type: !5, isLocal: true, isDefinition: true, variable: double* @Gaussrandom.aa)
!85 = !DIGlobalVariable(name: "w", scope: !34, file: !1, line: 202, type: !5, isLocal: true, isDefinition: true, variable: double* @Gaussrandom.w)
!86 = !DIGlobalVariable(name: "y", scope: !34, file: !1, line: 202, type: !5, isLocal: true, isDefinition: true, variable: double* @Gaussrandom.y)
!87 = !DIGlobalVariable(name: "tt", scope: !34, file: !1, line: 202, type: !5, isLocal: true, isDefinition: true, variable: double* @Gaussrandom.tt)
!88 = !DIGlobalVariable(name: "sre_randseed", scope: !0, file: !1, line: 16, type: !4, isLocal: true, isDefinition: true, variable: i32* @sre_randseed)
!89 = !{i32 2, !"Dwarf Version", i32 2}
!90 = !{i32 2, !"Debug Info Version", i32 700000003}
!91 = !{i32 1, !"PIC Level", i32 2}
!92 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!93 = !DIExpression()
!94 = !DILocation(line: 58, column: 8, scope: !8)
!95 = !DILocation(line: 59, column: 8, scope: !8)
!96 = !DILocation(line: 60, column: 8, scope: !8)
!97 = !DILocation(line: 61, column: 8, scope: !8)
!98 = !DILocation(line: 63, column: 8, scope: !8)
!99 = !DILocation(line: 64, column: 8, scope: !8)
!100 = !DILocation(line: 65, column: 8, scope: !8)
!101 = !DILocation(line: 66, column: 8, scope: !8)
!102 = !DILocation(line: 68, column: 7, scope: !103)
!103 = distinct !DILexicalBlock(scope: !8, file: !1, line: 68, column: 7)
!104 = !{!105, !105, i64 0}
!105 = !{!"int", !106, i64 0}
!106 = !{!"omnipotent char", !107, i64 0}
!107 = !{!"Simple C/C++ TBAA"}
!108 = !DILocation(line: 68, column: 20, scope: !103)
!109 = !DILocation(line: 68, column: 7, scope: !8)
!110 = !DILocation(line: 91, column: 14, scope: !8)
!111 = !{!112, !112, i64 0}
!112 = !{!"long", !106, i64 0}
!113 = !DILocation(line: 96, column: 14, scope: !8)
!114 = !DILocation(line: 70, column: 14, scope: !115)
!115 = distinct !DILexicalBlock(scope: !103, file: !1, line: 69, column: 5)
!116 = !DILocation(line: 70, column: 12, scope: !115)
!117 = !DILocation(line: 71, column: 12, scope: !115)
!118 = !DILocation(line: 53, column: 7, scope: !8)
!119 = !DILocation(line: 73, column: 7, scope: !120)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 73, column: 7)
!121 = !DILocation(line: 74, column: 17, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !1, line: 73, column: 32)
!123 = distinct !DILexicalBlock(scope: !120, file: !1, line: 73, column: 7)
!124 = !DILocation(line: 74, column: 13, scope: !122)
!125 = !DILocation(line: 74, column: 11, scope: !122)
!126 = !DILocation(line: 52, column: 8, scope: !8)
!127 = !DILocation(line: 75, column: 17, scope: !122)
!128 = !DILocation(line: 76, column: 10, scope: !122)
!129 = !DILocation(line: 77, column: 11, scope: !130)
!130 = distinct !DILexicalBlock(scope: !122, file: !1, line: 77, column: 6)
!131 = !DILocation(line: 77, column: 21, scope: !130)
!132 = !DILocation(line: 77, column: 6, scope: !122)
!133 = !DILocation(line: 79, column: 17, scope: !122)
!134 = !DILocation(line: 79, column: 11, scope: !122)
!135 = !DILocation(line: 80, column: 17, scope: !122)
!136 = !DILocation(line: 81, column: 10, scope: !122)
!137 = !DILocation(line: 82, column: 11, scope: !138)
!138 = distinct !DILexicalBlock(scope: !122, file: !1, line: 82, column: 6)
!139 = !DILocation(line: 82, column: 21, scope: !138)
!140 = !DILocation(line: 82, column: 6, scope: !122)
!141 = !DILocation(line: 84, column: 15, scope: !122)
!142 = !DILocation(line: 84, column: 2, scope: !122)
!143 = !DILocation(line: 85, column: 13, scope: !144)
!144 = distinct !DILexicalBlock(scope: !122, file: !1, line: 85, column: 6)
!145 = !DILocation(line: 85, column: 25, scope: !144)
!146 = !DILocation(line: 85, column: 6, scope: !122)
!147 = !DILocation(line: 84, column: 9, scope: !122)
!148 = !DILocation(line: 76, column: 7, scope: !122)
!149 = !DILocation(line: 81, column: 7, scope: !122)
!150 = !DILocation(line: 87, column: 20, scope: !115)
!151 = !DILocation(line: 88, column: 5, scope: !115)
!152 = !DILocation(line: 91, column: 18, scope: !8)
!153 = !DILocation(line: 91, column: 12, scope: !8)
!154 = !DILocation(line: 92, column: 18, scope: !8)
!155 = !DILocation(line: 93, column: 11, scope: !8)
!156 = !DILocation(line: 94, column: 12, scope: !157)
!157 = distinct !DILexicalBlock(scope: !8, file: !1, line: 94, column: 7)
!158 = !DILocation(line: 94, column: 22, scope: !157)
!159 = !DILocation(line: 94, column: 7, scope: !8)
!160 = !DILocation(line: 93, column: 8, scope: !8)
!161 = !DILocation(line: 96, column: 18, scope: !8)
!162 = !DILocation(line: 96, column: 12, scope: !8)
!163 = !DILocation(line: 97, column: 18, scope: !8)
!164 = !DILocation(line: 98, column: 11, scope: !8)
!165 = !DILocation(line: 99, column: 12, scope: !166)
!166 = distinct !DILexicalBlock(scope: !8, file: !1, line: 99, column: 7)
!167 = !DILocation(line: 99, column: 22, scope: !166)
!168 = !DILocation(line: 99, column: 7, scope: !8)
!169 = !DILocation(line: 98, column: 8, scope: !8)
!170 = !DILocation(line: 102, column: 26, scope: !8)
!171 = !DILocation(line: 102, column: 17, scope: !8)
!172 = !DILocation(line: 102, column: 30, scope: !8)
!173 = !DILocation(line: 102, column: 45, scope: !8)
!174 = !DILocation(line: 102, column: 9, scope: !8)
!175 = !DILocation(line: 103, column: 9, scope: !8)
!176 = !DILocation(line: 103, column: 7, scope: !8)
!177 = !DILocation(line: 105, column: 16, scope: !8)
!178 = !DILocation(line: 106, column: 14, scope: !179)
!179 = distinct !DILexicalBlock(scope: !8, file: !1, line: 106, column: 7)
!180 = !DILocation(line: 106, column: 26, scope: !179)
!181 = !DILocation(line: 106, column: 7, scope: !8)
!182 = !DILocation(line: 105, column: 10, scope: !8)
!183 = !DILocation(line: 108, column: 11, scope: !8)
!184 = !DILocation(line: 108, column: 24, scope: !8)
!185 = !DILocation(line: 108, column: 3, scope: !8)
!186 = !DILocation(line: 117, column: 17, scope: !23)
!187 = !DILocation(line: 119, column: 12, scope: !188)
!188 = distinct !DILexicalBlock(scope: !23, file: !1, line: 119, column: 7)
!189 = !DILocation(line: 119, column: 28, scope: !188)
!190 = !DILocation(line: 119, column: 7, scope: !23)
!191 = !DILocation(line: 120, column: 12, scope: !192)
!192 = distinct !DILexicalBlock(scope: !23, file: !1, line: 120, column: 7)
!193 = !DILocation(line: 120, column: 7, scope: !23)
!194 = !DILocation(line: 121, column: 16, scope: !23)
!195 = !DILocation(line: 122, column: 1, scope: !23)
!196 = !DILocation(line: 133, column: 3, scope: !28)
!197 = !DILocation(line: 133, column: 12, scope: !198)
!198 = distinct !DILexicalBlock(scope: !28, file: !1, line: 133, column: 6)
!199 = !DILocation(line: 132, column: 10, scope: !28)
!200 = !DILocation(line: 133, column: 37, scope: !28)
!201 = !DILocation(line: 133, column: 26, scope: !198)
!202 = !DILocation(line: 134, column: 3, scope: !28)
!203 = !DILocation(line: 152, column: 3, scope: !31)
!204 = !DILocation(line: 152, column: 10, scope: !31)
!205 = !DILocation(line: 150, column: 10, scope: !31)
!206 = !DILocation(line: 152, column: 33, scope: !31)
!207 = !DILocation(line: 152, column: 6, scope: !31)
!208 = !DILocation(line: 153, column: 11, scope: !31)
!209 = !DILocation(line: 153, column: 10, scope: !31)
!210 = !DILocation(line: 153, column: 3, scope: !31)
!211 = !DILocation(line: 173, column: 20, scope: !34)
!212 = !DILocation(line: 173, column: 33, scope: !34)
!213 = !DILocation(line: 204, column: 7, scope: !34)
!214 = !DILocation(line: 206, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !34, file: !1, line: 206, column: 6)
!216 = !DILocation(line: 206, column: 6, scope: !34)
!217 = !DILocation(line: 205, column: 5, scope: !34)
!218 = !{!219, !219, i64 0}
!219 = !{!"double", !106, i64 0}
!220 = !DILocation(line: 207, column: 10, scope: !34)
!221 = !DILocation(line: 207, column: 5, scope: !34)
!222 = !DILocation(line: 208, column: 11, scope: !34)
!223 = !DILocation(line: 208, column: 5, scope: !34)
!224 = !DILocation(line: 209, column: 7, scope: !34)
!225 = !DILocation(line: 210, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !34, file: !1, line: 210, column: 6)
!227 = !DILocation(line: 210, column: 6, scope: !34)
!228 = !DILocation(line: 210, column: 17, scope: !226)
!229 = !DILocation(line: 211, column: 8, scope: !230)
!230 = distinct !DILexicalBlock(scope: !34, file: !1, line: 211, column: 6)
!231 = !DILocation(line: 211, column: 6, scope: !34)
!232 = !DILocation(line: 215, column: 13, scope: !34)
!233 = !DILocation(line: 215, column: 12, scope: !34)
!234 = !DILocation(line: 215, column: 9, scope: !34)
!235 = !DILocation(line: 216, column: 13, scope: !34)
!236 = !DILocation(line: 216, column: 8, scope: !34)
!237 = !DILocation(line: 216, column: 6, scope: !34)
!238 = !DILocation(line: 218, column: 20, scope: !239)
!239 = distinct !DILexicalBlock(scope: !34, file: !1, line: 218, column: 6)
!240 = !DILocation(line: 218, column: 15, scope: !239)
!241 = !DILocation(line: 218, column: 12, scope: !239)
!242 = !DILocation(line: 218, column: 6, scope: !34)
!243 = !DILocation(line: 219, column: 13, scope: !34)
!244 = !DILocation(line: 219, column: 29, scope: !34)
!245 = !DILocation(line: 219, column: 24, scope: !34)
!246 = !DILocation(line: 219, column: 23, scope: !34)
!247 = !DILocation(line: 219, column: 5, scope: !34)
!248 = !DILocation(line: 219, column: 3, scope: !34)
!249 = !DILocation(line: 224, column: 7, scope: !34)
!250 = !DILocation(line: 224, column: 10, scope: !34)
!251 = !DILocation(line: 224, column: 9, scope: !34)
!252 = !DILocation(line: 224, column: 5, scope: !34)
!253 = !DILocation(line: 225, column: 9, scope: !34)
!254 = !DILocation(line: 226, column: 6, scope: !255)
!255 = distinct !DILexicalBlock(scope: !34, file: !1, line: 226, column: 6)
!256 = !DILocation(line: 226, column: 8, scope: !255)
!257 = !DILocation(line: 226, column: 6, scope: !34)
!258 = !DILocation(line: 226, column: 24, scope: !255)
!259 = !DILocation(line: 226, column: 22, scope: !255)
!260 = !DILocation(line: 226, column: 16, scope: !255)
!261 = !DILocation(line: 227, column: 17, scope: !34)
!262 = !DILocation(line: 227, column: 24, scope: !34)
!263 = !DILocation(line: 227, column: 3, scope: !34)
!264 = !DILocation(line: 232, column: 7, scope: !34)
!265 = !DILocation(line: 232, column: 5, scope: !34)
!266 = !DILocation(line: 233, column: 14, scope: !34)
!267 = !DILocation(line: 233, column: 13, scope: !34)
!268 = !DILocation(line: 233, column: 10, scope: !34)
!269 = !DILocation(line: 233, column: 17, scope: !34)
!270 = !DILocation(line: 233, column: 16, scope: !34)
!271 = !DILocation(line: 233, column: 8, scope: !34)
!272 = !DILocation(line: 233, column: 5, scope: !34)
!273 = !DILocation(line: 234, column: 12, scope: !34)
!274 = !DILocation(line: 234, column: 14, scope: !34)
!275 = !DILocation(line: 234, column: 18, scope: !34)
!276 = !DILocation(line: 234, column: 6, scope: !34)
!277 = !DILocation(line: 240, column: 6, scope: !278)
!278 = distinct !DILexicalBlock(scope: !34, file: !1, line: 240, column: 6)
!279 = !DILocation(line: 240, column: 12, scope: !278)
!280 = !DILocation(line: 240, column: 6, scope: !34)
!281 = !DILocation(line: 241, column: 7, scope: !34)
!282 = !DILocation(line: 241, column: 5, scope: !34)
!283 = !DILocation(line: 242, column: 6, scope: !284)
!284 = distinct !DILexicalBlock(scope: !34, file: !1, line: 242, column: 6)
!285 = !DILocation(line: 242, column: 12, scope: !284)
!286 = !DILocation(line: 242, column: 6, scope: !34)
!287 = !DILocation(line: 237, column: 6, scope: !34)
!288 = !DILocation(line: 238, column: 11, scope: !34)
!289 = !DILocation(line: 238, column: 9, scope: !34)
!290 = !DILocation(line: 240, column: 14, scope: !278)
!291 = !DILocation(line: 243, column: 11, scope: !34)
!292 = !DILocation(line: 243, column: 9, scope: !34)
!293 = !DILocation(line: 218, column: 19, scope: !239)
!294 = !DILocation(line: 249, column: 5, scope: !34)
!295 = !DILocation(line: 250, column: 6, scope: !34)
!296 = !DILocation(line: 256, column: 5, scope: !34)
!297 = !DILocation(line: 257, column: 8, scope: !298)
!298 = distinct !DILexicalBlock(scope: !34, file: !1, line: 257, column: 6)
!299 = !DILocation(line: 257, column: 6, scope: !34)
!300 = !DILocation(line: 253, column: 14, scope: !34)
!301 = !DILocation(line: 253, column: 13, scope: !34)
!302 = !DILocation(line: 253, column: 9, scope: !34)
!303 = !DILocation(line: 253, column: 6, scope: !34)
!304 = !DILocation(line: 254, column: 5, scope: !34)
!305 = !DILocation(line: 258, column: 5, scope: !34)
!306 = !DILocation(line: 258, column: 3, scope: !34)
!307 = !DILocation(line: 270, column: 5, scope: !34)
!308 = !DILocation(line: 260, column: 14, scope: !34)
!309 = !DILocation(line: 260, column: 9, scope: !34)
!310 = !DILocation(line: 260, column: 8, scope: !34)
!311 = !DILocation(line: 260, column: 5, scope: !34)
!312 = !DILocation(line: 261, column: 12, scope: !34)
!313 = !DILocation(line: 261, column: 14, scope: !34)
!314 = !DILocation(line: 261, column: 18, scope: !34)
!315 = !DILocation(line: 262, column: 3, scope: !34)
!316 = !DILocation(line: 264, column: 6, scope: !34)
!317 = !DILocation(line: 266, column: 11, scope: !34)
!318 = !DILocation(line: 266, column: 9, scope: !34)
!319 = !DILocation(line: 267, column: 14, scope: !320)
!320 = distinct !DILexicalBlock(scope: !34, file: !1, line: 267, column: 6)
!321 = !DILocation(line: 267, column: 12, scope: !320)
!322 = !DILocation(line: 267, column: 6, scope: !34)
!323 = !DILocation(line: 268, column: 7, scope: !34)
!324 = !DILocation(line: 268, column: 5, scope: !34)
!325 = !DILocation(line: 269, column: 6, scope: !326)
!326 = distinct !DILexicalBlock(scope: !34, file: !1, line: 269, column: 6)
!327 = !DILocation(line: 269, column: 12, scope: !326)
!328 = !DILocation(line: 269, column: 6, scope: !34)
!329 = !DILocation(line: 270, column: 7, scope: !34)
!330 = !DILocation(line: 260, column: 13, scope: !34)
!331 = !DILocation(line: 261, column: 15, scope: !34)
!332 = !DILocation(line: 271, column: 3, scope: !34)
!333 = !DILocation(line: 283, column: 17, scope: !40)
!334 = !DILocation(line: 283, column: 24, scope: !40)
!335 = !DILocation(line: 289, column: 13, scope: !40)
!336 = !DILocation(line: 285, column: 10, scope: !40)
!337 = !DILocation(line: 286, column: 10, scope: !40)
!338 = !DILocation(line: 287, column: 10, scope: !40)
!339 = !DILocation(line: 291, column: 17, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !1, line: 291, column: 3)
!341 = distinct !DILexicalBlock(scope: !40, file: !1, line: 291, column: 3)
!342 = !DILocation(line: 291, column: 3, scope: !341)
!343 = !DILocation(line: 293, column: 14, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !1, line: 292, column: 5)
!345 = !DILocation(line: 293, column: 11, scope: !344)
!346 = !DILocation(line: 294, column: 16, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !1, line: 294, column: 11)
!348 = !DILocation(line: 294, column: 11, scope: !344)
!349 = !DILocation(line: 296, column: 17, scope: !40)
!350 = !DILocation(line: 296, column: 32, scope: !40)
!351 = !DILocation(line: 296, column: 30, scope: !40)
!352 = !DILocation(line: 296, column: 10, scope: !40)
!353 = !DILocation(line: 296, column: 3, scope: !40)
!354 = !DILocation(line: 297, column: 1, scope: !40)
!355 = !DILocation(line: 299, column: 16, scope: !50)
!356 = !DILocation(line: 299, column: 23, scope: !50)
!357 = !DILocation(line: 305, column: 13, scope: !50)
!358 = !DILocation(line: 301, column: 9, scope: !50)
!359 = !DILocation(line: 302, column: 9, scope: !50)
!360 = !DILocation(line: 303, column: 9, scope: !50)
!361 = !DILocation(line: 307, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !1, line: 307, column: 3)
!363 = distinct !DILexicalBlock(scope: !50, file: !1, line: 307, column: 3)
!364 = !DILocation(line: 307, column: 3, scope: !363)
!365 = !DILocation(line: 309, column: 14, scope: !366)
!366 = distinct !DILexicalBlock(scope: !362, file: !1, line: 308, column: 5)
!367 = !{!368, !368, i64 0}
!368 = !{!"float", !106, i64 0}
!369 = !DILocation(line: 309, column: 11, scope: !366)
!370 = !DILocation(line: 310, column: 16, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !1, line: 310, column: 11)
!372 = !DILocation(line: 310, column: 11, scope: !366)
!373 = !DILocation(line: 312, column: 17, scope: !50)
!374 = !DILocation(line: 312, column: 32, scope: !50)
!375 = !DILocation(line: 312, column: 30, scope: !50)
!376 = !DILocation(line: 312, column: 10, scope: !50)
!377 = !DILocation(line: 312, column: 3, scope: !50)
!378 = !DILocation(line: 313, column: 1, scope: !50)
