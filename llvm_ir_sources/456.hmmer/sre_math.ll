; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/sre_math.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@Gammln.cof = internal unnamed_addr constant [11 x double] [double 0x40E6EC39B523E5C6, double 0xC1030CE42A8DE3A0, double 0x41093547A7877F7A, double 0xC100F46BD1F08565, double 0x40E891BEDA52E5F4, double 0xC0C2C0CBD1715240, double 0x408B74AF4B6E0230, double 0xC03F8D31A9F566E2, double 0x3FD29CB3C2263426, double 0xBF2E680CC2D54303, double 0x3DE133D0CA52FB5A], align 16
@.str = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/sre_math.c\00", align 1
@.str1 = private unnamed_addr constant [33 x i8] c"IncompleteGamma(): a must be > 0\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"IncompleteGamma(): x must be >= 0\00", align 1
@.str3 = private unnamed_addr constant [70 x i8] c"IncompleteGamma(): failed to converge using continued fraction approx\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"IncompleteGamma(): failed to converge using series approx\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Linefit(float* nocapture readonly %x, float* nocapture readonly %y, i32 %N, float* nocapture %ret_a, float* nocapture %ret_b, float* nocapture %ret_r) #0 {
  tail call void @llvm.dbg.value(metadata float* %x, i64 0, metadata !16, metadata !122), !dbg !123
  tail call void @llvm.dbg.value(metadata float* %y, i64 0, metadata !17, metadata !122), !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %N, i64 0, metadata !18, metadata !122), !dbg !125
  tail call void @llvm.dbg.value(metadata float* %ret_a, i64 0, metadata !19, metadata !122), !dbg !126
  tail call void @llvm.dbg.value(metadata float* %ret_b, i64 0, metadata !20, metadata !122), !dbg !127
  tail call void @llvm.dbg.value(metadata float* %ret_r, i64 0, metadata !21, metadata !122), !dbg !128
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !23, metadata !122), !dbg !129
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !22, metadata !122), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !122), !dbg !131
  %1 = icmp sgt i32 %N, 0, !dbg !132
  br i1 %1, label %.lr.ph11, label %._crit_edge12.thread, !dbg !135

._crit_edge12.thread:                             ; preds = %0
  %2 = sitofp i32 %N to float, !dbg !136
  %3 = fdiv float 0.000000e+00, %2, !dbg !137
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !22, metadata !122), !dbg !130
  %4 = fdiv float 0.000000e+00, %2, !dbg !138
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !23, metadata !122), !dbg !129
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !26, metadata !122), !dbg !139
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !25, metadata !122), !dbg !140
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !24, metadata !122), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !122), !dbg !131
  br label %39, !dbg !142

.lr.ph11:                                         ; preds = %0
  %5 = add i32 %N, -1, !dbg !135
  br label %6, !dbg !135

; <label>:6                                       ; preds = %6, %.lr.ph11
  %indvars.iv19 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next20, %6 ]
  %7 = phi <2 x float> [ zeroinitializer, %.lr.ph11 ], [ %14, %6 ]
  %8 = getelementptr inbounds float* %x, i64 %indvars.iv19, !dbg !144
  %9 = load float* %8, align 4, !dbg !144, !tbaa !146
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !22, metadata !122), !dbg !130
  %10 = getelementptr inbounds float* %y, i64 %indvars.iv19, !dbg !150
  %11 = load float* %10, align 4, !dbg !150, !tbaa !146
  %12 = insertelement <2 x float> undef, float %9, i32 0, !dbg !151
  %13 = insertelement <2 x float> %12, float %11, i32 1, !dbg !151
  %14 = fadd <2 x float> %7, %13, !dbg !151
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !23, metadata !122), !dbg !129
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !135
  %lftr.wideiv21 = trunc i64 %indvars.iv19 to i32, !dbg !135
  %exitcond22 = icmp eq i32 %lftr.wideiv21, %5, !dbg !135
  br i1 %exitcond22, label %._crit_edge12, label %6, !dbg !135

._crit_edge12:                                    ; preds = %6
  %15 = sitofp i32 %N to float, !dbg !136
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !22, metadata !122), !dbg !130
  %16 = insertelement <2 x float> undef, float %15, i32 0, !dbg !137
  %17 = insertelement <2 x float> %16, float %15, i32 1, !dbg !137
  %18 = fdiv <2 x float> %14, %17, !dbg !137
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !23, metadata !122), !dbg !129
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !26, metadata !122), !dbg !139
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !25, metadata !122), !dbg !140
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !24, metadata !122), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !122), !dbg !131
  %19 = extractelement <2 x float> %18, i32 0, !dbg !142
  %20 = extractelement <2 x float> %18, i32 1, !dbg !142
  br i1 %1, label %.lr.ph, label %39, !dbg !142

.lr.ph:                                           ; preds = %._crit_edge12
  %21 = add i32 %N, -1, !dbg !142
  br label %22, !dbg !142

; <label>:22                                      ; preds = %22, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %22 ]
  %sxy.03 = phi float [ 0.000000e+00, %.lr.ph ], [ %38, %22 ]
  %syy.02 = phi float [ 0.000000e+00, %.lr.ph ], [ %36, %22 ]
  %sxx.01 = phi float [ 0.000000e+00, %.lr.ph ], [ %32, %22 ]
  %23 = getelementptr inbounds float* %x, i64 %indvars.iv, !dbg !152
  %24 = load float* %23, align 4, !dbg !152, !tbaa !146
  %25 = getelementptr inbounds float* %y, i64 %indvars.iv, !dbg !155
  %26 = load float* %25, align 4, !dbg !155, !tbaa !146
  %27 = insertelement <2 x float> undef, float %24, i32 0, !dbg !156
  %28 = insertelement <2 x float> %27, float %26, i32 1, !dbg !156
  %29 = fsub <2 x float> %28, %18, !dbg !156
  %30 = extractelement <2 x float> %29, i32 0, !dbg !157
  %31 = fmul float %30, %30, !dbg !157
  %32 = fadd float %sxx.01, %31, !dbg !158
  tail call void @llvm.dbg.value(metadata float %32, i64 0, metadata !24, metadata !122), !dbg !141
  %33 = fsub float %26, %19, !dbg !159
  %34 = extractelement <2 x float> %29, i32 1, !dbg !160
  %35 = fmul float %34, %33, !dbg !160
  %36 = fadd float %syy.02, %35, !dbg !161
  tail call void @llvm.dbg.value(metadata float %36, i64 0, metadata !25, metadata !122), !dbg !140
  %37 = fmul float %30, %34, !dbg !162
  %38 = fadd float %sxy.03, %37, !dbg !163
  tail call void @llvm.dbg.value(metadata float %38, i64 0, metadata !26, metadata !122), !dbg !139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !142
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !142
  %exitcond = icmp eq i32 %lftr.wideiv, %21, !dbg !142
  br i1 %exitcond, label %._crit_edge, label %22, !dbg !142

._crit_edge:                                      ; preds = %22
  %phitmp = fpext float %36 to double, !dbg !142
  br label %39, !dbg !142

; <label>:39                                      ; preds = %._crit_edge12.thread, %._crit_edge, %._crit_edge12
  %40 = phi float [ %20, %._crit_edge ], [ %20, %._crit_edge12 ], [ %4, %._crit_edge12.thread ]
  %41 = phi float [ %19, %._crit_edge ], [ %19, %._crit_edge12 ], [ %3, %._crit_edge12.thread ]
  %sxy.0.lcssa = phi float [ %38, %._crit_edge ], [ 0.000000e+00, %._crit_edge12 ], [ 0.000000e+00, %._crit_edge12.thread ]
  %syy.0.lcssa = phi double [ %phitmp, %._crit_edge ], [ 0.000000e+00, %._crit_edge12 ], [ 0.000000e+00, %._crit_edge12.thread ]
  %sxx.0.lcssa = phi float [ %32, %._crit_edge ], [ 0.000000e+00, %._crit_edge12 ], [ 0.000000e+00, %._crit_edge12.thread ]
  %42 = fdiv float %sxy.0.lcssa, %sxx.0.lcssa, !dbg !164
  store float %42, float* %ret_b, align 4, !dbg !165, !tbaa !146
  %43 = fmul float %41, %42, !dbg !166
  %44 = fsub float %40, %43, !dbg !167
  store float %44, float* %ret_a, align 4, !dbg !168, !tbaa !146
  %45 = fpext float %sxy.0.lcssa to double, !dbg !169
  %46 = fpext float %sxx.0.lcssa to double, !dbg !170
  %47 = tail call double @sqrt(double %46) #6, !dbg !171
  %48 = tail call double @sqrt(double %syy.0.lcssa) #6, !dbg !172
  %49 = fmul double %47, %48, !dbg !173
  %50 = fdiv double %45, %49, !dbg !174
  %51 = fptrunc double %50 to float, !dbg !169
  store float %51, float* %ret_r, align 4, !dbg !175, !tbaa !146
  ret i32 1, !dbg !176
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @WeightedLinefit(float* nocapture readonly %x, float* nocapture readonly %y, float* nocapture readonly %var, i32 %N, float* nocapture %ret_m, float* nocapture %ret_b) #0 {
  tail call void @llvm.dbg.value(metadata float* %x, i64 0, metadata !32, metadata !122), !dbg !177
  tail call void @llvm.dbg.value(metadata float* %y, i64 0, metadata !33, metadata !122), !dbg !178
  tail call void @llvm.dbg.value(metadata float* %var, i64 0, metadata !34, metadata !122), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %N, i64 0, metadata !35, metadata !122), !dbg !180
  tail call void @llvm.dbg.value(metadata float* %ret_m, i64 0, metadata !36, metadata !122), !dbg !181
  tail call void @llvm.dbg.value(metadata float* %ret_b, i64 0, metadata !37, metadata !122), !dbg !182
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !43, metadata !122), !dbg !183
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !42, metadata !122), !dbg !184
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !41, metadata !122), !dbg !185
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !40, metadata !122), !dbg !186
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !39, metadata !122), !dbg !187
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !38, metadata !122), !dbg !188
  %1 = icmp sgt i32 %N, 0, !dbg !189
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !192

.lr.ph:                                           ; preds = %0
  %2 = add i32 %N, -1, !dbg !192
  br label %3, !dbg !192

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %s.05 = phi double [ 0.000000e+00, %.lr.ph ], [ %10, %3 ]
  %4 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %28, %3 ]
  %5 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %22, %3 ]
  %6 = getelementptr inbounds float* %var, i64 %indvars.iv, !dbg !193
  %7 = load float* %6, align 4, !dbg !193, !tbaa !146
  %8 = fpext float %7 to double, !dbg !193
  %9 = fdiv double 1.000000e+00, %8, !dbg !195
  %10 = fadd double %s.05, %9, !dbg !196
  tail call void @llvm.dbg.value(metadata double %10, i64 0, metadata !39, metadata !122), !dbg !187
  %11 = getelementptr inbounds float* %x, i64 %indvars.iv, !dbg !197
  %12 = load float* %11, align 4, !dbg !197, !tbaa !146
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !40, metadata !122), !dbg !186
  %13 = getelementptr inbounds float* %y, i64 %indvars.iv, !dbg !198
  %14 = load float* %13, align 4, !dbg !198, !tbaa !146
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !41, metadata !122), !dbg !185
  %15 = fmul float %12, %12, !dbg !199
  %16 = insertelement <2 x float> undef, float %15, i32 0, !dbg !200
  %17 = insertelement <2 x float> %16, float %14, i32 1, !dbg !200
  %18 = insertelement <2 x float> undef, float %7, i32 0, !dbg !200
  %19 = insertelement <2 x float> %18, float %7, i32 1, !dbg !200
  %20 = fdiv <2 x float> %17, %19, !dbg !200
  %21 = fpext <2 x float> %20 to <2 x double>, !dbg !201
  %22 = fadd <2 x double> %5, %21, !dbg !202
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !42, metadata !122), !dbg !184
  %23 = fmul float %12, %14, !dbg !203
  %24 = insertelement <2 x float> undef, float %12, i32 0, !dbg !204
  %25 = insertelement <2 x float> %24, float %23, i32 1, !dbg !204
  %26 = fdiv <2 x float> %25, %19, !dbg !204
  %27 = fpext <2 x float> %26 to <2 x double>, !dbg !197
  %28 = fadd <2 x double> %4, %27, !dbg !205
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !43, metadata !122), !dbg !183
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !192
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !192
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !192
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !192

._crit_edge:                                      ; preds = %3, %0
  %s.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %10, %3 ]
  %29 = phi <2 x double> [ zeroinitializer, %0 ], [ %28, %3 ]
  %30 = phi <2 x double> [ zeroinitializer, %0 ], [ %22, %3 ]
  %31 = extractelement <2 x double> %30, i32 0, !dbg !206
  %32 = fmul double %31, %s.0.lcssa, !dbg !206
  %33 = extractelement <2 x double> %29, i32 0, !dbg !207
  %34 = fmul double %33, %33, !dbg !207
  %35 = fsub double %32, %34, !dbg !208
  tail call void @llvm.dbg.value(metadata double %35, i64 0, metadata !44, metadata !122), !dbg !209
  %36 = extractelement <2 x double> %30, i32 1, !dbg !210
  %37 = fmul double %36, %31, !dbg !210
  %38 = extractelement <2 x double> %29, i32 1, !dbg !211
  %39 = fmul double %38, %33, !dbg !211
  %40 = fsub double %37, %39, !dbg !212
  %41 = fdiv double %40, %35, !dbg !213
  tail call void @llvm.dbg.value(metadata double %41, i64 0, metadata !46, metadata !122), !dbg !214
  %42 = fmul double %38, %s.0.lcssa, !dbg !215
  %43 = fmul double %36, %33, !dbg !216
  %44 = fsub double %42, %43, !dbg !217
  %45 = fdiv double %44, %35, !dbg !218
  tail call void @llvm.dbg.value(metadata double %45, i64 0, metadata !45, metadata !122), !dbg !219
  %46 = fptrunc double %45 to float, !dbg !220
  store float %46, float* %ret_m, align 4, !dbg !221, !tbaa !146
  %47 = fptrunc double %41 to float, !dbg !222
  store float %47, float* %ret_b, align 4, !dbg !223, !tbaa !146
  ret void, !dbg !224
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define double @Gammln(double %x) #2 {
  tail call void @llvm.dbg.value(metadata double %x, i64 0, metadata !51, metadata !122), !dbg !225
  %1 = fcmp ugt double %x, 0.000000e+00, !dbg !226
  br i1 %1, label %2, label %21, !dbg !228

; <label>:2                                       ; preds = %0
  %3 = fadd double %x, -1.000000e+00, !dbg !229
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !53, metadata !122), !dbg !230
  %4 = fadd double %3, 1.100000e+01, !dbg !231
  tail call void @llvm.dbg.value(metadata double %4, i64 0, metadata !55, metadata !122), !dbg !232
  tail call void @llvm.dbg.value(metadata double %4, i64 0, metadata !54, metadata !122), !dbg !233
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, i64 0, metadata !56, metadata !122), !dbg !234
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !52, metadata !122), !dbg !235
  br label %5, !dbg !236

; <label>:5                                       ; preds = %2, %5
  %indvars.iv = phi i64 [ 10, %2 ], [ %indvars.iv.next, %5 ]
  %value.03 = phi double [ 1.000000e+00, %2 ], [ %9, %5 ]
  %tmp.02 = phi double [ %4, %2 ], [ %10, %5 ]
  %6 = getelementptr inbounds [11 x double]* @Gammln.cof, i64 0, i64 %indvars.iv, !dbg !238
  %7 = load double* %6, align 8, !dbg !238, !tbaa !241
  %8 = fdiv double %7, %tmp.02, !dbg !243
  %9 = fadd double %value.03, %8, !dbg !244
  tail call void @llvm.dbg.value(metadata double %9, i64 0, metadata !56, metadata !122), !dbg !234
  %10 = fadd double %tmp.02, -1.000000e+00, !dbg !245
  tail call void @llvm.dbg.value(metadata double %10, i64 0, metadata !55, metadata !122), !dbg !232
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !236
  %11 = icmp sgt i64 %indvars.iv, 0, !dbg !246
  br i1 %11, label %5, label %12, !dbg !236

; <label>:12                                      ; preds = %5
  %13 = tail call double @log(double %9) #6, !dbg !247
  tail call void @llvm.dbg.value(metadata double %13, i64 0, metadata !56, metadata !122), !dbg !234
  %14 = fadd double %4, 5.000000e-01, !dbg !248
  tail call void @llvm.dbg.value(metadata double %14, i64 0, metadata !54, metadata !122), !dbg !233
  %15 = fadd double %3, 5.000000e-01, !dbg !249
  %16 = tail call double @log(double %14) #6, !dbg !250
  %17 = fmul double %15, %16, !dbg !251
  %18 = fadd double %17, 0x3FED67F1C8489D6C, !dbg !252
  %19 = fsub double %18, %14, !dbg !253
  %20 = fadd double %13, %19, !dbg !254
  tail call void @llvm.dbg.value(metadata double %20, i64 0, metadata !56, metadata !122), !dbg !234
  br label %21, !dbg !255

; <label>:21                                      ; preds = %0, %12
  %.0 = phi double [ %20, %12 ], [ 9.999990e+05, %0 ]
  ret double %.0, !dbg !256
}

; Function Attrs: nounwind optsize readnone
declare double @log(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define float** @FMX2Alloc(i32 %rows, i32 %cols) #0 {
  tail call void @llvm.dbg.value(metadata i32 %rows, i64 0, metadata !61, metadata !122), !dbg !257
  tail call void @llvm.dbg.value(metadata i32 %cols, i64 0, metadata !62, metadata !122), !dbg !258
  %1 = sext i32 %rows to i64, !dbg !259
  %2 = shl nsw i64 %1, 3, !dbg !259
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i32 172, i64 %2) #7, !dbg !259
  %4 = bitcast i8* %3 to float**, !dbg !260
  tail call void @llvm.dbg.value(metadata float** %4, i64 0, metadata !63, metadata !122), !dbg !261
  %5 = shl nsw i64 %1, 2, !dbg !262
  %6 = sext i32 %cols to i64, !dbg !262
  %7 = mul i64 %5, %6, !dbg !262
  %8 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i32 173, i64 %7) #7, !dbg !262
  %9 = bitcast i8* %3 to i8**, !dbg !263
  store i8* %8, i8** %9, align 8, !dbg !263, !tbaa !264
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !64, metadata !122), !dbg !266
  %10 = icmp sgt i32 %rows, 1, !dbg !267
  br i1 %10, label %.lr.ph, label %._crit_edge, !dbg !270

.lr.ph:                                           ; preds = %0
  %11 = bitcast i8* %8 to float*
  %12 = add i32 %rows, -1, !dbg !270
  %13 = getelementptr inbounds float* %11, i64 %6, !dbg !271
  %14 = getelementptr inbounds i8* %3, i64 8, !dbg !272
  %15 = bitcast i8* %14 to float**, !dbg !272
  store float* %13, float** %15, align 8, !dbg !273, !tbaa !264
  %exitcond3 = icmp eq i32 %12, 1, !dbg !270
  br i1 %exitcond3, label %._crit_edge, label %._crit_edge2, !dbg !270

._crit_edge2:                                     ; preds = %.lr.ph, %._crit_edge2
  %indvars.iv4 = phi i64 [ %indvars.iv.next, %._crit_edge2 ], [ 1, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv4, 1, !dbg !270
  %.pre = load float** %4, align 8, !dbg !274, !tbaa !264
  %16 = mul nsw i64 %indvars.iv.next, %6, !dbg !275
  %17 = getelementptr inbounds float* %.pre, i64 %16, !dbg !271
  %18 = getelementptr inbounds float** %4, i64 %indvars.iv.next, !dbg !272
  store float* %17, float** %18, align 8, !dbg !273, !tbaa !264
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !270
  %exitcond = icmp eq i32 %lftr.wideiv, %12, !dbg !270
  br i1 %exitcond, label %._crit_edge, label %._crit_edge2, !dbg !270

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge2, %0
  ret float** %4, !dbg !276
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @FMX2Free(float** nocapture %mx) #0 {
  tail call void @llvm.dbg.value(metadata float** %mx, i64 0, metadata !69, metadata !122), !dbg !277
  %1 = bitcast float** %mx to i8**, !dbg !278
  %2 = load i8** %1, align 8, !dbg !278, !tbaa !264
  tail call void @free(i8* %2) #8, !dbg !279
  %3 = bitcast float** %mx to i8*, !dbg !280
  tail call void @free(i8* %3) #8, !dbg !281
  ret void, !dbg !282
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define double** @DMX2Alloc(i32 %rows, i32 %cols) #0 {
  tail call void @llvm.dbg.value(metadata i32 %rows, i64 0, metadata !74, metadata !122), !dbg !283
  tail call void @llvm.dbg.value(metadata i32 %cols, i64 0, metadata !75, metadata !122), !dbg !284
  %1 = sext i32 %rows to i64, !dbg !285
  %2 = shl nsw i64 %1, 3, !dbg !285
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i32 190, i64 %2) #7, !dbg !285
  %4 = bitcast i8* %3 to double**, !dbg !286
  tail call void @llvm.dbg.value(metadata double** %4, i64 0, metadata !76, metadata !122), !dbg !287
  %5 = sext i32 %cols to i64, !dbg !288
  %6 = mul i64 %2, %5, !dbg !288
  %7 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i32 191, i64 %6) #7, !dbg !288
  %8 = bitcast i8* %3 to i8**, !dbg !289
  store i8* %7, i8** %8, align 8, !dbg !289, !tbaa !264
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !77, metadata !122), !dbg !290
  %9 = icmp sgt i32 %rows, 1, !dbg !291
  br i1 %9, label %.lr.ph, label %._crit_edge, !dbg !294

.lr.ph:                                           ; preds = %0
  %10 = bitcast i8* %7 to double*
  %11 = add i32 %rows, -1, !dbg !294
  %12 = getelementptr inbounds double* %10, i64 %5, !dbg !295
  %13 = getelementptr inbounds i8* %3, i64 8, !dbg !296
  %14 = bitcast i8* %13 to double**, !dbg !296
  store double* %12, double** %14, align 8, !dbg !297, !tbaa !264
  %exitcond3 = icmp eq i32 %11, 1, !dbg !294
  br i1 %exitcond3, label %._crit_edge, label %._crit_edge2, !dbg !294

._crit_edge2:                                     ; preds = %.lr.ph, %._crit_edge2
  %indvars.iv4 = phi i64 [ %indvars.iv.next, %._crit_edge2 ], [ 1, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv4, 1, !dbg !294
  %.pre = load double** %4, align 8, !dbg !298, !tbaa !264
  %15 = mul nsw i64 %indvars.iv.next, %5, !dbg !299
  %16 = getelementptr inbounds double* %.pre, i64 %15, !dbg !295
  %17 = getelementptr inbounds double** %4, i64 %indvars.iv.next, !dbg !296
  store double* %16, double** %17, align 8, !dbg !297, !tbaa !264
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !294
  %exitcond = icmp eq i32 %lftr.wideiv, %11, !dbg !294
  br i1 %exitcond, label %._crit_edge, label %._crit_edge2, !dbg !294

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge2, %0
  ret double** %4, !dbg !300
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DMX2Free(double** nocapture %mx) #0 {
  tail call void @llvm.dbg.value(metadata double** %mx, i64 0, metadata !82, metadata !122), !dbg !301
  %1 = bitcast double** %mx to i8**, !dbg !302
  %2 = load i8** %1, align 8, !dbg !302, !tbaa !264
  tail call void @free(i8* %2) #8, !dbg !303
  %3 = bitcast double** %mx to i8*, !dbg !304
  tail call void @free(i8* %3) #8, !dbg !305
  ret void, !dbg !306
}

; Function Attrs: nounwind optsize ssp uwtable
define void @FMX2Multiply(float** nocapture readonly %A, float** nocapture readonly %B, float** nocapture readonly %C, i32 %m, i32 %p, i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata float** %A, i64 0, metadata !87, metadata !122), !dbg !307
  tail call void @llvm.dbg.value(metadata float** %B, i64 0, metadata !88, metadata !122), !dbg !308
  tail call void @llvm.dbg.value(metadata float** %C, i64 0, metadata !89, metadata !122), !dbg !309
  tail call void @llvm.dbg.value(metadata i32 %m, i64 0, metadata !90, metadata !122), !dbg !310
  tail call void @llvm.dbg.value(metadata i32 %p, i64 0, metadata !91, metadata !122), !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !92, metadata !122), !dbg !312
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !122), !dbg !313
  %1 = icmp sgt i32 %m, 0, !dbg !314
  br i1 %1, label %.preheader.lr.ph, label %._crit_edge6, !dbg !317

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp sgt i32 %n, 0, !dbg !318
  %3 = icmp sgt i32 %p, 0, !dbg !321
  %4 = sext i32 %p to i64, !dbg !325
  %5 = getelementptr inbounds float** %B, i64 %4, !dbg !326
  %6 = add i32 %p, -1, !dbg !317
  %7 = add i32 %n, -1, !dbg !317
  %8 = add i32 %m, -1, !dbg !317
  br label %.preheader, !dbg !317

.preheader:                                       ; preds = %._crit_edge4, %.preheader.lr.ph
  %indvars.iv8 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next9, %._crit_edge4 ]
  br i1 %2, label %.lr.ph3, label %._crit_edge4, !dbg !327

.lr.ph3:                                          ; preds = %.preheader
  %9 = getelementptr inbounds float** %C, i64 %indvars.iv8, !dbg !328
  %10 = load float** %9, align 8, !dbg !328, !tbaa !264
  %11 = getelementptr inbounds float** %A, i64 %indvars.iv8, !dbg !325
  br label %12, !dbg !327

; <label>:12                                      ; preds = %._crit_edge, %.lr.ph3
  %indvars.iv = phi i64 [ 0, %.lr.ph3 ], [ %indvars.iv.next, %._crit_edge ]
  %13 = getelementptr inbounds float* %10, i64 %indvars.iv, !dbg !328
  store float 0.000000e+00, float* %13, align 4, !dbg !329, !tbaa !146
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !95, metadata !122), !dbg !330
  br i1 %3, label %.lr.ph, label %._crit_edge, !dbg !331

.lr.ph:                                           ; preds = %12
  %14 = load float** %11, align 8, !dbg !325, !tbaa !264
  %15 = getelementptr inbounds float* %14, i64 %4, !dbg !325
  %16 = load float** %5, align 8, !dbg !326, !tbaa !264
  %17 = getelementptr inbounds float* %16, i64 %indvars.iv, !dbg !326
  br label %18, !dbg !331

; <label>:18                                      ; preds = %18, %.lr.ph
  %19 = phi float [ 0.000000e+00, %.lr.ph ], [ %23, %18 ], !dbg !325
  %k.01 = phi i32 [ 0, %.lr.ph ], [ %24, %18 ]
  %20 = load float* %15, align 4, !dbg !325, !tbaa !146
  %21 = load float* %17, align 4, !dbg !326, !tbaa !146
  %22 = fmul float %20, %21, !dbg !332
  %23 = fadd float %22, %19, !dbg !333
  store float %23, float* %13, align 4, !dbg !333, !tbaa !146
  %24 = add nuw nsw i32 %k.01, 1, !dbg !334
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !95, metadata !122), !dbg !330
  %exitcond = icmp eq i32 %k.01, %6, !dbg !331
  br i1 %exitcond, label %._crit_edge, label %18, !dbg !331

._crit_edge:                                      ; preds = %18, %12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !327
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !327
  %exitcond7 = icmp eq i32 %lftr.wideiv, %7, !dbg !327
  br i1 %exitcond7, label %._crit_edge4, label %12, !dbg !327

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !317
  %lftr.wideiv10 = trunc i64 %indvars.iv8 to i32, !dbg !317
  %exitcond11 = icmp eq i32 %lftr.wideiv10, %8, !dbg !317
  br i1 %exitcond11, label %._crit_edge6, label %.preheader, !dbg !317

._crit_edge6:                                     ; preds = %._crit_edge4, %0
  ret void, !dbg !335
}

; Function Attrs: nounwind optsize ssp uwtable
define double @IncompleteGamma(double %a, double %x) #0 {
  tail call void @llvm.dbg.value(metadata double %a, i64 0, metadata !100, metadata !122), !dbg !336
  tail call void @llvm.dbg.value(metadata double %x, i64 0, metadata !101, metadata !122), !dbg !337
  %1 = fcmp ugt double %a, 0.000000e+00, !dbg !338
  br i1 %1, label %3, label %2, !dbg !340

; <label>:2                                       ; preds = %0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([33 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !341
  br label %3, !dbg !341

; <label>:3                                       ; preds = %0, %2
  %4 = fcmp olt double %x, 0.000000e+00, !dbg !342
  br i1 %4, label %5, label %6, !dbg !344

; <label>:5                                       ; preds = %3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !345
  br label %6, !dbg !345

; <label>:6                                       ; preds = %5, %3
  %7 = fadd double %a, 1.000000e+00, !dbg !346
  %8 = fcmp olt double %7, %x, !dbg !347
  br i1 %8, label %.preheader.preheader, label %54, !dbg !348

.preheader.preheader:                             ; preds = %6
  %9 = insertelement <2 x double> undef, double %x, i32 0
  %10 = insertelement <2 x double> %9, double 1.000000e+00, i32 1
  %11 = insertelement <2 x double> %9, double %x, i32 1, !dbg !349
  br label %.preheader, !dbg !353

; <label>:12                                      ; preds = %35
  %13 = icmp slt i32 %44, 100, !dbg !354
  br i1 %13, label %.preheader, label %53, !dbg !355

.preheader:                                       ; preds = %.preheader.preheader, %12
  %iter.01 = phi i32 [ %44, %12 ], [ 1, %.preheader.preheader ]
  %14 = phi <2 x double> [ %36, %12 ], [ <double 1.000000e+00, double 0.000000e+00>, %.preheader.preheader ]
  %15 = phi <2 x double> [ %37, %12 ], [ %10, %.preheader.preheader ]
  %16 = sitofp i32 %iter.01 to double, !dbg !353
  %17 = fsub double %16, %a, !dbg !356
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !106, metadata !122), !dbg !357
  %18 = insertelement <2 x double> undef, double %17, i32 0, !dbg !358
  %19 = insertelement <2 x double> %18, double %17, i32 1, !dbg !358
  %20 = fmul <2 x double> %19, %14, !dbg !358
  %21 = fadd <2 x double> %15, %20, !dbg !359
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !108, metadata !122), !dbg !360
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !107, metadata !122), !dbg !361
  %22 = fmul <2 x double> %11, %21, !dbg !349
  %23 = insertelement <2 x double> undef, double %16, i32 0, !dbg !362
  %24 = insertelement <2 x double> %23, double %16, i32 1, !dbg !362
  %25 = fmul <2 x double> %24, %15, !dbg !362
  %26 = fadd <2 x double> %25, %22, !dbg !363
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !109, metadata !122), !dbg !364
  %27 = extractelement <2 x double> %26, i32 0, !dbg !365
  %28 = fcmp une double %27, 0.000000e+00, !dbg !365
  br i1 %28, label %29, label %35, !dbg !367

; <label>:29                                      ; preds = %.preheader
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !106, metadata !122), !dbg !357
  %30 = shufflevector <2 x double> %26, <2 x double> undef, <2 x i32> zeroinitializer, !dbg !368
  %31 = fdiv <2 x double> %21, %30, !dbg !368
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !108, metadata !122), !dbg !360
  %32 = extractelement <2 x double> %26, i32 1, !dbg !370
  %33 = fdiv double %32, %27, !dbg !370
  tail call void @llvm.dbg.value(metadata double %33, i64 0, metadata !107, metadata !122), !dbg !361
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, i64 0, metadata !109, metadata !122), !dbg !364
  %34 = insertelement <2 x double> <double 1.000000e+00, double undef>, double %33, i32 1
  br label %35, !dbg !371

; <label>:35                                      ; preds = %29, %.preheader
  %36 = phi <2 x double> [ %31, %29 ], [ %21, %.preheader ]
  %37 = phi <2 x double> [ %34, %29 ], [ %26, %.preheader ]
  %38 = extractelement <2 x double> %15, i32 1, !dbg !372
  %39 = extractelement <2 x double> %37, i32 1, !dbg !372
  %40 = fsub double %39, %38, !dbg !372
  %41 = fdiv double %40, %39, !dbg !374
  %42 = tail call double @fabs(double %41) #6, !dbg !375
  %43 = fcmp olt double %42, 1.000000e-07, !dbg !376
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !103, metadata !122), !dbg !377
  %44 = add nuw nsw i32 %iter.01, 1, !dbg !378
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !102, metadata !122), !dbg !379
  br i1 %43, label %45, label %12, !dbg !380

; <label>:45                                      ; preds = %35
  %46 = tail call double @log(double %x) #6, !dbg !381
  %47 = fmul double %46, %a, !dbg !382
  %48 = fsub double %47, %x, !dbg !383
  %49 = tail call double @Gammln(double %a) #8, !dbg !384
  %50 = fsub double %48, %49, !dbg !385
  %51 = tail call double @exp(double %50) #6, !dbg !386
  %52 = fmul double %39, %51, !dbg !387
  br label %78, !dbg !388

; <label>:53                                      ; preds = %12
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([70 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !389
  br label %78, !dbg !390

; <label>:54                                      ; preds = %6
  %55 = fdiv double 1.000000e+00, %a, !dbg !391
  tail call void @llvm.dbg.value(metadata double %55, i64 0, metadata !112, metadata !122), !dbg !392
  tail call void @llvm.dbg.value(metadata double %55, i64 0, metadata !110, metadata !122), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !102, metadata !122), !dbg !379
  br label %58, !dbg !394

; <label>:56                                      ; preds = %58
  %57 = icmp slt i32 %67, 10000, !dbg !396
  br i1 %57, label %58, label %77, !dbg !394

; <label>:58                                      ; preds = %54, %56
  %val.08 = phi double [ %55, %54 ], [ %62, %56 ]
  %p.07 = phi double [ %55, %54 ], [ %63, %56 ]
  %iter.16 = phi i32 [ 1, %54 ], [ %67, %56 ]
  %59 = sitofp i32 %iter.16 to double, !dbg !398
  %60 = fadd double %59, %a, !dbg !400
  %61 = fdiv double %x, %60, !dbg !401
  %62 = fmul double %val.08, %61, !dbg !402
  tail call void @llvm.dbg.value(metadata double %62, i64 0, metadata !112, metadata !122), !dbg !392
  %63 = fadd double %p.07, %62, !dbg !403
  tail call void @llvm.dbg.value(metadata double %63, i64 0, metadata !110, metadata !122), !dbg !393
  %64 = fdiv double %62, %63, !dbg !404
  %65 = tail call double @fabs(double %64) #6, !dbg !406
  %66 = fcmp olt double %65, 1.000000e-07, !dbg !407
  %67 = add nuw nsw i32 %iter.16, 1, !dbg !408
  tail call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !102, metadata !122), !dbg !379
  br i1 %66, label %68, label %56, !dbg !409

; <label>:68                                      ; preds = %58
  %69 = tail call double @log(double %x) #6, !dbg !410
  %70 = fmul double %69, %a, !dbg !411
  %71 = fsub double %70, %x, !dbg !412
  %72 = tail call double @Gammln(double %a) #8, !dbg !413
  %73 = fsub double %71, %72, !dbg !414
  %74 = tail call double @exp(double %73) #6, !dbg !415
  %75 = fmul double %63, %74, !dbg !416
  %76 = fsub double 1.000000e+00, %75, !dbg !417
  br label %78, !dbg !418

; <label>:77                                      ; preds = %56
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !419
  br label %78

; <label>:78                                      ; preds = %53, %77, %68, %45
  %.0 = phi double [ %52, %45 ], [ %76, %68 ], [ 0.000000e+00, %77 ], [ 0.000000e+00, %53 ]
  ret double %.0, !dbg !420
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #1

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!118, !119, !120}
!llvm.ident = !{!121}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !10, globals: !113, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/sre_math.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6, !7, !8, !9}
!4 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!10 = !{!11, !28, !47, !57, !65, !70, !78, !83, !96}
!11 = !DISubprogram(name: "Linefit", scope: !1, file: !1, line: 42, type: !12, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float*, float*, i32, float*, float*, float*)* @Linefit, variables: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !6, !6, !14, !6, !6, !6}
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !11, file: !1, line: 42, type: !6)
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !11, file: !1, line: 42, type: !6)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "N", arg: 3, scope: !11, file: !1, line: 42, type: !14)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_a", arg: 4, scope: !11, file: !1, line: 42, type: !6)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_b", arg: 5, scope: !11, file: !1, line: 42, type: !6)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_r", arg: 6, scope: !11, file: !1, line: 42, type: !6)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xavg", scope: !11, file: !1, line: 44, type: !4)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "yavg", scope: !11, file: !1, line: 44, type: !4)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sxx", scope: !11, file: !1, line: 45, type: !4)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "syy", scope: !11, file: !1, line: 45, type: !4)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sxy", scope: !11, file: !1, line: 45, type: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !11, file: !1, line: 46, type: !14)
!28 = !DISubprogram(name: "WeightedLinefit", scope: !1, file: !1, line: 85, type: !29, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, float*, float*, i32, float*, float*)* @WeightedLinefit, variables: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !6, !6, !6, !14, !6, !6}
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !28, file: !1, line: 85, type: !6)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !28, file: !1, line: 85, type: !6)
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "var", arg: 3, scope: !28, file: !1, line: 85, type: !6)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "N", arg: 4, scope: !28, file: !1, line: 85, type: !14)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_m", arg: 5, scope: !28, file: !1, line: 85, type: !6)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_b", arg: 6, scope: !28, file: !1, line: 85, type: !6)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !28, file: !1, line: 87, type: !14)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !28, file: !1, line: 88, type: !9)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sx", scope: !28, file: !1, line: 89, type: !9)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sy", scope: !28, file: !1, line: 89, type: !9)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sxx", scope: !28, file: !1, line: 90, type: !9)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sxy", scope: !28, file: !1, line: 90, type: !9)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "delta", scope: !28, file: !1, line: 91, type: !9)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !28, file: !1, line: 92, type: !9)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !28, file: !1, line: 92, type: !9)
!47 = !DISubprogram(name: "Gammln", scope: !1, file: !1, line: 124, type: !48, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @Gammln, variables: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{!9, !9}
!50 = !{!51, !52, !53, !54, !55, !56}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !47, file: !1, line: 124, type: !9)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !47, file: !1, line: 126, type: !14)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xx", scope: !47, file: !1, line: 127, type: !9)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tx", scope: !47, file: !1, line: 127, type: !9)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !47, file: !1, line: 128, type: !9)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !47, file: !1, line: 128, type: !9)
!57 = !DISubprogram(name: "FMX2Alloc", scope: !1, file: !1, line: 167, type: !58, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: float** (i32, i32)* @FMX2Alloc, variables: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{!5, !14, !14}
!60 = !{!61, !62, !63, !64}
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rows", arg: 1, scope: !57, file: !1, line: 167, type: !14)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cols", arg: 2, scope: !57, file: !1, line: 167, type: !14)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mx", scope: !57, file: !1, line: 169, type: !5)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !57, file: !1, line: 170, type: !14)
!65 = !DISubprogram(name: "FMX2Free", scope: !1, file: !1, line: 179, type: !66, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, function: void (float**)* @FMX2Free, variables: !68)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !5}
!68 = !{!69}
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mx", arg: 1, scope: !65, file: !1, line: 179, type: !5)
!70 = !DISubprogram(name: "DMX2Alloc", scope: !1, file: !1, line: 185, type: !71, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, function: double** (i32, i32)* @DMX2Alloc, variables: !73)
!71 = !DISubroutineType(types: !72)
!72 = !{!7, !14, !14}
!73 = !{!74, !75, !76, !77}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rows", arg: 1, scope: !70, file: !1, line: 185, type: !14)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cols", arg: 2, scope: !70, file: !1, line: 185, type: !14)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mx", scope: !70, file: !1, line: 187, type: !7)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !70, file: !1, line: 188, type: !14)
!78 = !DISubprogram(name: "DMX2Free", scope: !1, file: !1, line: 197, type: !79, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, function: void (double**)* @DMX2Free, variables: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !7}
!81 = !{!82}
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mx", arg: 1, scope: !78, file: !1, line: 197, type: !7)
!83 = !DISubprogram(name: "FMX2Multiply", scope: !1, file: !1, line: 211, type: !84, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, function: void (float**, float**, float**, i32, i32, i32)* @FMX2Multiply, variables: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !5, !5, !5, !14, !14, !14}
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "A", arg: 1, scope: !83, file: !1, line: 211, type: !5)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "B", arg: 2, scope: !83, file: !1, line: 211, type: !5)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "C", arg: 3, scope: !83, file: !1, line: 211, type: !5)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 4, scope: !83, file: !1, line: 211, type: !14)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 5, scope: !83, file: !1, line: 211, type: !14)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 6, scope: !83, file: !1, line: 211, type: !14)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !83, file: !1, line: 213, type: !14)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !83, file: !1, line: 213, type: !14)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !83, file: !1, line: 213, type: !14)
!96 = !DISubprogram(name: "IncompleteGamma", scope: !1, file: !1, line: 249, type: !97, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, function: double (double, double)* @IncompleteGamma, variables: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{!9, !9, !9}
!99 = !{!100, !101, !102, !103, !106, !107, !108, !109, !110, !112}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !96, file: !1, line: 249, type: !9)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 2, scope: !96, file: !1, line: 249, type: !9)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iter", scope: !96, file: !1, line: 251, type: !14)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldp", scope: !104, file: !1, line: 262, type: !9)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 261, column: 5)
!105 = distinct !DILexicalBlock(scope: !96, file: !1, line: 260, column: 7)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nu0", scope: !104, file: !1, line: 263, type: !9)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nu1", scope: !104, file: !1, line: 263, type: !9)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "de0", scope: !104, file: !1, line: 264, type: !9)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "de1", scope: !104, file: !1, line: 264, type: !9)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !111, file: !1, line: 307, type: !9)
!111 = distinct !DILexicalBlock(scope: !105, file: !1, line: 306, column: 5)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !111, file: !1, line: 308, type: !9)
!113 = !{!114}
!114 = !DIGlobalVariable(name: "cof", scope: !47, file: !1, line: 129, type: !115, isLocal: true, isDefinition: true, variable: [11 x double]* @Gammln.cof)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 704, align: 64, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 11)
!118 = !{i32 2, !"Dwarf Version", i32 2}
!119 = !{i32 2, !"Debug Info Version", i32 700000003}
!120 = !{i32 1, !"PIC Level", i32 2}
!121 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!122 = !DIExpression()
!123 = !DILocation(line: 42, column: 16, scope: !11)
!124 = !DILocation(line: 42, column: 26, scope: !11)
!125 = !DILocation(line: 42, column: 33, scope: !11)
!126 = !DILocation(line: 42, column: 43, scope: !11)
!127 = !DILocation(line: 42, column: 57, scope: !11)
!128 = !DILocation(line: 42, column: 71, scope: !11)
!129 = !DILocation(line: 44, column: 15, scope: !11)
!130 = !DILocation(line: 44, column: 9, scope: !11)
!131 = !DILocation(line: 46, column: 9, scope: !11)
!132 = !DILocation(line: 51, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 51, column: 3)
!134 = distinct !DILexicalBlock(scope: !11, file: !1, line: 51, column: 3)
!135 = !DILocation(line: 51, column: 3, scope: !134)
!136 = !DILocation(line: 56, column: 11, scope: !11)
!137 = !DILocation(line: 56, column: 8, scope: !11)
!138 = !DILocation(line: 57, column: 8, scope: !11)
!139 = !DILocation(line: 45, column: 19, scope: !11)
!140 = !DILocation(line: 45, column: 14, scope: !11)
!141 = !DILocation(line: 45, column: 9, scope: !11)
!142 = !DILocation(line: 60, column: 3, scope: !143)
!143 = distinct !DILexicalBlock(scope: !11, file: !1, line: 60, column: 3)
!144 = !DILocation(line: 53, column: 15, scope: !145)
!145 = distinct !DILexicalBlock(scope: !133, file: !1, line: 52, column: 5)
!146 = !{!147, !147, i64 0}
!147 = !{!"float", !148, i64 0}
!148 = !{!"omnipotent char", !149, i64 0}
!149 = !{!"Simple C/C++ TBAA"}
!150 = !DILocation(line: 54, column: 15, scope: !145)
!151 = !DILocation(line: 53, column: 12, scope: !145)
!152 = !DILocation(line: 62, column: 18, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 61, column: 5)
!154 = distinct !DILexicalBlock(scope: !143, file: !1, line: 60, column: 3)
!155 = !DILocation(line: 63, column: 18, scope: !153)
!156 = !DILocation(line: 62, column: 23, scope: !153)
!157 = !DILocation(line: 62, column: 31, scope: !153)
!158 = !DILocation(line: 62, column: 14, scope: !153)
!159 = !DILocation(line: 63, column: 39, scope: !153)
!160 = !DILocation(line: 63, column: 31, scope: !153)
!161 = !DILocation(line: 63, column: 14, scope: !153)
!162 = !DILocation(line: 64, column: 31, scope: !153)
!163 = !DILocation(line: 64, column: 14, scope: !153)
!164 = !DILocation(line: 66, column: 16, scope: !11)
!165 = !DILocation(line: 66, column: 10, scope: !11)
!166 = !DILocation(line: 67, column: 23, scope: !11)
!167 = !DILocation(line: 67, column: 17, scope: !11)
!168 = !DILocation(line: 67, column: 10, scope: !11)
!169 = !DILocation(line: 68, column: 12, scope: !11)
!170 = !DILocation(line: 68, column: 24, scope: !11)
!171 = !DILocation(line: 68, column: 19, scope: !11)
!172 = !DILocation(line: 68, column: 31, scope: !11)
!173 = !DILocation(line: 68, column: 29, scope: !11)
!174 = !DILocation(line: 68, column: 16, scope: !11)
!175 = !DILocation(line: 68, column: 10, scope: !11)
!176 = !DILocation(line: 69, column: 3, scope: !11)
!177 = !DILocation(line: 85, column: 24, scope: !28)
!178 = !DILocation(line: 85, column: 34, scope: !28)
!179 = !DILocation(line: 85, column: 44, scope: !28)
!180 = !DILocation(line: 85, column: 53, scope: !28)
!181 = !DILocation(line: 85, column: 63, scope: !28)
!182 = !DILocation(line: 85, column: 77, scope: !28)
!183 = !DILocation(line: 90, column: 15, scope: !28)
!184 = !DILocation(line: 90, column: 10, scope: !28)
!185 = !DILocation(line: 89, column: 14, scope: !28)
!186 = !DILocation(line: 89, column: 10, scope: !28)
!187 = !DILocation(line: 88, column: 10, scope: !28)
!188 = !DILocation(line: 87, column: 10, scope: !28)
!189 = !DILocation(line: 95, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 95, column: 3)
!191 = distinct !DILexicalBlock(scope: !28, file: !1, line: 95, column: 3)
!192 = !DILocation(line: 95, column: 3, scope: !191)
!193 = !DILocation(line: 97, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !1, line: 96, column: 5)
!195 = !DILocation(line: 97, column: 16, scope: !194)
!196 = !DILocation(line: 97, column: 11, scope: !194)
!197 = !DILocation(line: 98, column: 14, scope: !194)
!198 = !DILocation(line: 99, column: 14, scope: !194)
!199 = !DILocation(line: 100, column: 19, scope: !194)
!200 = !DILocation(line: 100, column: 26, scope: !194)
!201 = !DILocation(line: 100, column: 14, scope: !194)
!202 = !DILocation(line: 100, column: 11, scope: !194)
!203 = !DILocation(line: 101, column: 19, scope: !194)
!204 = !DILocation(line: 98, column: 19, scope: !194)
!205 = !DILocation(line: 98, column: 11, scope: !194)
!206 = !DILocation(line: 104, column: 13, scope: !28)
!207 = !DILocation(line: 104, column: 25, scope: !28)
!208 = !DILocation(line: 104, column: 19, scope: !28)
!209 = !DILocation(line: 91, column: 10, scope: !28)
!210 = !DILocation(line: 105, column: 12, scope: !28)
!211 = !DILocation(line: 105, column: 22, scope: !28)
!212 = !DILocation(line: 105, column: 17, scope: !28)
!213 = !DILocation(line: 105, column: 29, scope: !28)
!214 = !DILocation(line: 92, column: 13, scope: !28)
!215 = !DILocation(line: 106, column: 10, scope: !28)
!216 = !DILocation(line: 106, column: 21, scope: !28)
!217 = !DILocation(line: 106, column: 16, scope: !28)
!218 = !DILocation(line: 106, column: 27, scope: !28)
!219 = !DILocation(line: 92, column: 10, scope: !28)
!220 = !DILocation(line: 108, column: 12, scope: !28)
!221 = !DILocation(line: 108, column: 10, scope: !28)
!222 = !DILocation(line: 109, column: 12, scope: !28)
!223 = !DILocation(line: 109, column: 10, scope: !28)
!224 = !DILocation(line: 110, column: 1, scope: !28)
!225 = !DILocation(line: 124, column: 15, scope: !47)
!226 = !DILocation(line: 147, column: 9, scope: !227)
!227 = distinct !DILexicalBlock(scope: !47, file: !1, line: 147, column: 7)
!228 = !DILocation(line: 147, column: 7, scope: !47)
!229 = !DILocation(line: 149, column: 16, scope: !47)
!230 = !DILocation(line: 127, column: 10, scope: !47)
!231 = !DILocation(line: 150, column: 17, scope: !47)
!232 = !DILocation(line: 128, column: 10, scope: !47)
!233 = !DILocation(line: 127, column: 14, scope: !47)
!234 = !DILocation(line: 128, column: 15, scope: !47)
!235 = !DILocation(line: 126, column: 7, scope: !47)
!236 = !DILocation(line: 152, column: 3, scope: !237)
!237 = distinct !DILexicalBlock(scope: !47, file: !1, line: 152, column: 3)
!238 = !DILocation(line: 154, column: 16, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 153, column: 5)
!240 = distinct !DILexicalBlock(scope: !237, file: !1, line: 152, column: 3)
!241 = !{!242, !242, i64 0}
!242 = !{!"double", !148, i64 0}
!243 = !DILocation(line: 154, column: 23, scope: !239)
!244 = !DILocation(line: 154, column: 13, scope: !239)
!245 = !DILocation(line: 155, column: 13, scope: !239)
!246 = !DILocation(line: 152, column: 18, scope: !240)
!247 = !DILocation(line: 157, column: 12, scope: !47)
!248 = !DILocation(line: 158, column: 9, scope: !47)
!249 = !DILocation(line: 159, column: 29, scope: !47)
!250 = !DILocation(line: 159, column: 35, scope: !47)
!251 = !DILocation(line: 159, column: 34, scope: !47)
!252 = !DILocation(line: 159, column: 24, scope: !47)
!253 = !DILocation(line: 159, column: 43, scope: !47)
!254 = !DILocation(line: 159, column: 9, scope: !47)
!255 = !DILocation(line: 160, column: 3, scope: !47)
!256 = !DILocation(line: 161, column: 1, scope: !47)
!257 = !DILocation(line: 167, column: 15, scope: !57)
!258 = !DILocation(line: 167, column: 25, scope: !57)
!259 = !DILocation(line: 172, column: 22, scope: !57)
!260 = !DILocation(line: 172, column: 11, scope: !57)
!261 = !DILocation(line: 169, column: 11, scope: !57)
!262 = !DILocation(line: 173, column: 22, scope: !57)
!263 = !DILocation(line: 173, column: 9, scope: !57)
!264 = !{!265, !265, i64 0}
!265 = !{!"any pointer", !148, i64 0}
!266 = !DILocation(line: 170, column: 11, scope: !57)
!267 = !DILocation(line: 174, column: 17, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !1, line: 174, column: 3)
!269 = distinct !DILexicalBlock(scope: !57, file: !1, line: 174, column: 3)
!270 = !DILocation(line: 174, column: 3, scope: !269)
!271 = !DILocation(line: 175, column: 19, scope: !268)
!272 = !DILocation(line: 175, column: 5, scope: !268)
!273 = !DILocation(line: 175, column: 11, scope: !268)
!274 = !DILocation(line: 175, column: 13, scope: !268)
!275 = !DILocation(line: 175, column: 22, scope: !268)
!276 = !DILocation(line: 176, column: 3, scope: !57)
!277 = !DILocation(line: 179, column: 18, scope: !65)
!278 = !DILocation(line: 181, column: 8, scope: !65)
!279 = !DILocation(line: 181, column: 3, scope: !65)
!280 = !DILocation(line: 182, column: 8, scope: !65)
!281 = !DILocation(line: 182, column: 3, scope: !65)
!282 = !DILocation(line: 183, column: 1, scope: !65)
!283 = !DILocation(line: 185, column: 15, scope: !70)
!284 = !DILocation(line: 185, column: 25, scope: !70)
!285 = !DILocation(line: 190, column: 23, scope: !70)
!286 = !DILocation(line: 190, column: 11, scope: !70)
!287 = !DILocation(line: 187, column: 12, scope: !70)
!288 = !DILocation(line: 191, column: 23, scope: !70)
!289 = !DILocation(line: 191, column: 9, scope: !70)
!290 = !DILocation(line: 188, column: 12, scope: !70)
!291 = !DILocation(line: 192, column: 17, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !1, line: 192, column: 3)
!293 = distinct !DILexicalBlock(scope: !70, file: !1, line: 192, column: 3)
!294 = !DILocation(line: 192, column: 3, scope: !293)
!295 = !DILocation(line: 193, column: 19, scope: !292)
!296 = !DILocation(line: 193, column: 5, scope: !292)
!297 = !DILocation(line: 193, column: 11, scope: !292)
!298 = !DILocation(line: 193, column: 13, scope: !292)
!299 = !DILocation(line: 193, column: 22, scope: !292)
!300 = !DILocation(line: 194, column: 3, scope: !70)
!301 = !DILocation(line: 197, column: 19, scope: !78)
!302 = !DILocation(line: 199, column: 8, scope: !78)
!303 = !DILocation(line: 199, column: 3, scope: !78)
!304 = !DILocation(line: 200, column: 8, scope: !78)
!305 = !DILocation(line: 200, column: 3, scope: !78)
!306 = !DILocation(line: 201, column: 1, scope: !78)
!307 = !DILocation(line: 211, column: 22, scope: !83)
!308 = !DILocation(line: 211, column: 33, scope: !83)
!309 = !DILocation(line: 211, column: 44, scope: !83)
!310 = !DILocation(line: 211, column: 51, scope: !83)
!311 = !DILocation(line: 211, column: 58, scope: !83)
!312 = !DILocation(line: 211, column: 65, scope: !83)
!313 = !DILocation(line: 213, column: 7, scope: !83)
!314 = !DILocation(line: 215, column: 17, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !1, line: 215, column: 3)
!316 = distinct !DILexicalBlock(scope: !83, file: !1, line: 215, column: 3)
!317 = !DILocation(line: 215, column: 3, scope: !316)
!318 = !DILocation(line: 216, column: 19, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !1, line: 216, column: 5)
!320 = distinct !DILexicalBlock(scope: !315, file: !1, line: 216, column: 5)
!321 = !DILocation(line: 219, column: 16, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 219, column: 2)
!323 = distinct !DILexicalBlock(scope: !324, file: !1, line: 219, column: 2)
!324 = distinct !DILexicalBlock(scope: !319, file: !1, line: 217, column: 7)
!325 = !DILocation(line: 220, column: 15, scope: !322)
!326 = !DILocation(line: 220, column: 25, scope: !322)
!327 = !DILocation(line: 216, column: 5, scope: !320)
!328 = !DILocation(line: 218, column: 2, scope: !324)
!329 = !DILocation(line: 218, column: 10, scope: !324)
!330 = !DILocation(line: 213, column: 13, scope: !83)
!331 = !DILocation(line: 219, column: 2, scope: !323)
!332 = !DILocation(line: 220, column: 23, scope: !322)
!333 = !DILocation(line: 220, column: 12, scope: !322)
!334 = !DILocation(line: 219, column: 22, scope: !322)
!335 = !DILocation(line: 222, column: 1, scope: !83)
!336 = !DILocation(line: 249, column: 24, scope: !96)
!337 = !DILocation(line: 249, column: 34, scope: !96)
!338 = !DILocation(line: 253, column: 9, scope: !339)
!339 = distinct !DILexicalBlock(scope: !96, file: !1, line: 253, column: 7)
!340 = !DILocation(line: 253, column: 7, scope: !96)
!341 = !DILocation(line: 253, column: 16, scope: !339)
!342 = !DILocation(line: 254, column: 9, scope: !343)
!343 = distinct !DILexicalBlock(scope: !96, file: !1, line: 254, column: 7)
!344 = !DILocation(line: 254, column: 7, scope: !96)
!345 = !DILocation(line: 254, column: 16, scope: !343)
!346 = !DILocation(line: 260, column: 12, scope: !105)
!347 = !DILocation(line: 260, column: 9, scope: !105)
!348 = !DILocation(line: 260, column: 7, scope: !96)
!349 = !DILocation(line: 287, column: 12, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !1, line: 273, column: 2)
!351 = distinct !DILexicalBlock(scope: !352, file: !1, line: 272, column: 7)
!352 = distinct !DILexicalBlock(scope: !104, file: !1, line: 272, column: 7)
!353 = !DILocation(line: 281, column: 17, scope: !350)
!354 = !DILocation(line: 272, column: 27, scope: !351)
!355 = !DILocation(line: 272, column: 7, scope: !352)
!356 = !DILocation(line: 281, column: 30, scope: !350)
!357 = !DILocation(line: 263, column: 14, scope: !104)
!358 = !DILocation(line: 282, column: 35, scope: !350)
!359 = !DILocation(line: 282, column: 14, scope: !350)
!360 = !DILocation(line: 264, column: 14, scope: !104)
!361 = !DILocation(line: 263, column: 19, scope: !104)
!362 = !DILocation(line: 287, column: 34, scope: !350)
!363 = !DILocation(line: 287, column: 18, scope: !350)
!364 = !DILocation(line: 264, column: 19, scope: !104)
!365 = !DILocation(line: 290, column: 12, scope: !366)
!366 = distinct !DILexicalBlock(scope: !350, file: !1, line: 290, column: 8)
!367 = !DILocation(line: 290, column: 8, scope: !350)
!368 = !DILocation(line: 293, column: 12, scope: !369)
!369 = distinct !DILexicalBlock(scope: !366, file: !1, line: 291, column: 6)
!370 = !DILocation(line: 294, column: 12, scope: !369)
!371 = !DILocation(line: 296, column: 6, scope: !369)
!372 = !DILocation(line: 298, column: 17, scope: !373)
!373 = distinct !DILexicalBlock(scope: !350, file: !1, line: 298, column: 8)
!374 = !DILocation(line: 298, column: 23, scope: !373)
!375 = !DILocation(line: 298, column: 8, scope: !373)
!376 = !DILocation(line: 298, column: 29, scope: !373)
!377 = !DILocation(line: 262, column: 14, scope: !104)
!378 = !DILocation(line: 272, column: 38, scope: !351)
!379 = !DILocation(line: 251, column: 7, scope: !96)
!380 = !DILocation(line: 298, column: 8, scope: !350)
!381 = !DILocation(line: 299, column: 27, scope: !373)
!382 = !DILocation(line: 299, column: 25, scope: !373)
!383 = !DILocation(line: 299, column: 34, scope: !373)
!384 = !DILocation(line: 299, column: 40, scope: !373)
!385 = !DILocation(line: 299, column: 38, scope: !373)
!386 = !DILocation(line: 299, column: 19, scope: !373)
!387 = !DILocation(line: 299, column: 17, scope: !373)
!388 = !DILocation(line: 299, column: 6, scope: !373)
!389 = !DILocation(line: 303, column: 7, scope: !104)
!390 = !DILocation(line: 304, column: 5, scope: !104)
!391 = !DILocation(line: 320, column: 20, scope: !111)
!392 = !DILocation(line: 308, column: 14, scope: !111)
!393 = !DILocation(line: 307, column: 14, scope: !111)
!394 = !DILocation(line: 321, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !111, file: !1, line: 321, column: 7)
!396 = !DILocation(line: 321, column: 27, scope: !397)
!397 = distinct !DILexicalBlock(scope: !395, file: !1, line: 321, column: 7)
!398 = !DILocation(line: 323, column: 18, scope: !399)
!399 = distinct !DILexicalBlock(scope: !397, file: !1, line: 322, column: 2)
!400 = !DILocation(line: 323, column: 17, scope: !399)
!401 = !DILocation(line: 323, column: 13, scope: !399)
!402 = !DILocation(line: 323, column: 8, scope: !399)
!403 = !DILocation(line: 324, column: 8, scope: !399)
!404 = !DILocation(line: 326, column: 16, scope: !405)
!405 = distinct !DILexicalBlock(scope: !399, file: !1, line: 326, column: 8)
!406 = !DILocation(line: 326, column: 8, scope: !405)
!407 = !DILocation(line: 326, column: 20, scope: !405)
!408 = !DILocation(line: 321, column: 40, scope: !397)
!409 = !DILocation(line: 326, column: 8, scope: !399)
!410 = !DILocation(line: 327, column: 30, scope: !405)
!411 = !DILocation(line: 327, column: 28, scope: !405)
!412 = !DILocation(line: 327, column: 37, scope: !405)
!413 = !DILocation(line: 327, column: 43, scope: !405)
!414 = !DILocation(line: 327, column: 41, scope: !405)
!415 = !DILocation(line: 327, column: 22, scope: !405)
!416 = !DILocation(line: 327, column: 20, scope: !405)
!417 = !DILocation(line: 327, column: 16, scope: !405)
!418 = !DILocation(line: 327, column: 6, scope: !405)
!419 = !DILocation(line: 329, column: 7, scope: !111)
!420 = !DILocation(line: 333, column: 1, scope: !96)
