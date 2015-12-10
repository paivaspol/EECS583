; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@ILogsum.firsttime = internal unnamed_addr global i1 false
@ilogsum_lookup = internal unnamed_addr global [20000 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [46 x i8] c"Invalid argument alpha < 0.0 to SampleGamma()\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Prob2Score(float %p, float %null) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %p}, i64 0, metadata !11), !dbg !179
  tail call void @llvm.dbg.value(metadata !{float %null}, i64 0, metadata !12), !dbg !179
  %cmp = fcmp oeq float %p, 0.000000e+00, !dbg !180
  br i1 %cmp, label %return, label %if.else, !dbg !180

if.else:                                          ; preds = %entry
  %div = fdiv float %p, %null, !dbg !181
  %cmp2 = fcmp ogt float %div, 0.000000e+00, !dbg !181
  br i1 %cmp2, label %cond.true, label %cond.end, !dbg !181

cond.true:                                        ; preds = %if.else
  %conv5 = fpext float %div to double, !dbg !181
  %call = tail call double @log(double %conv5) #6, !dbg !181
  %mul = fmul double %call, 0x3FF7154764EE6C2F, !dbg !181
  %phitmp = fmul double %mul, 1.000000e+03, !dbg !181
  %phitmp12 = fadd double %phitmp, 5.000000e-01, !dbg !181
  br label %cond.end, !dbg !181

cond.end:                                         ; preds = %if.else, %cond.true
  %cond = phi double [ %phitmp12, %cond.true ], [ 0xC1631252F0000000, %if.else ]
  %call7 = tail call double @floor(double %cond) #7, !dbg !181
  %conv8 = fptosi double %call7 to i32, !dbg !181
  br label %return, !dbg !181

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %conv8, %cond.end ], [ -987654321, %entry ]
  ret i32 %retval.0, !dbg !182
}

; Function Attrs: nounwind optsize readnone
declare double @floor(double) #1

; Function Attrs: nounwind optsize
declare double @log(double) #2

; Function Attrs: nounwind optsize uwtable
define float @Score2Prob(i32 %sc, float %null) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sc}, i64 0, metadata !17), !dbg !183
  tail call void @llvm.dbg.value(metadata !{float %null}, i64 0, metadata !18), !dbg !183
  %cmp = icmp eq i32 %sc, -987654321, !dbg !184
  br i1 %cmp, label %return, label %if.else, !dbg !184

if.else:                                          ; preds = %entry
  %conv = fpext float %null to double, !dbg !185
  %conv1 = sitofp i32 %sc to float, !dbg !185
  %conv2 = fpext float %conv1 to double, !dbg !185
  %div = fdiv double %conv2, 1.000000e+03, !dbg !185
  %mul = fmul double %div, 0x3FE62E42FEAD449C, !dbg !185
  %call = tail call double @exp(double %mul) #6, !dbg !185
  %mul3 = fmul double %conv, %call, !dbg !185
  %conv4 = fptrunc double %mul3 to float, !dbg !185
  br label %return, !dbg !185

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi float [ %conv4, %if.else ], [ 0.000000e+00, %entry ]
  ret float %retval.0, !dbg !186
}

; Function Attrs: nounwind optsize
declare double @exp(double) #2

; Function Attrs: nounwind optsize readnone uwtable
define float @Scorify(i32 %sc) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sc}, i64 0, metadata !23), !dbg !187
  %conv = sitofp i32 %sc to float, !dbg !188
  %conv2 = fdiv float %conv, 1.000000e+03, !dbg !188
  ret float %conv2, !dbg !188
}

; Function Attrs: nounwind optsize uwtable
define double @PValue(%struct.plan7_s* %hmm, float %sc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !95), !dbg !189
  tail call void @llvm.dbg.value(metadata !{float %sc}, i64 0, metadata !96), !dbg !189
  %conv = fpext float %sc to double, !dbg !190
  %cmp = fcmp ult double %conv, 0x408FFFFFFFAB5002, !dbg !190
  br i1 %cmp, label %if.else, label %if.end13, !dbg !190

if.else:                                          ; preds = %entry
  %cmp6 = fcmp ugt double %conv, 0xC08FFFFFFFAB5002, !dbg !191
  br i1 %cmp6, label %if.else9, label %if.end13, !dbg !191

if.else9:                                         ; preds = %if.else
  %mul11 = fmul double %conv, 0x3FE62E42FEAD449C, !dbg !192
  %call12 = tail call double @exp(double %mul11) #6, !dbg !192
  %add = fadd double %call12, 1.000000e+00, !dbg !192
  %div = fdiv double 1.000000e+00, %add, !dbg !192
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !97), !dbg !192
  br label %if.end13

if.end13:                                         ; preds = %if.else, %entry, %if.else9
  %pval.0 = phi double [ %div, %if.else9 ], [ 0.000000e+00, %entry ], [ 1.000000e+00, %if.else ]
  %cmp14 = icmp eq %struct.plan7_s* %hmm, null, !dbg !193
  br i1 %cmp14, label %if.end22, label %land.lhs.true, !dbg !193

land.lhs.true:                                    ; preds = %if.end13
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !193
  %0 = load i32* %flags, align 4, !dbg !193, !tbaa !194
  %and = and i32 %0, 128, !dbg !193
  %tobool = icmp eq i32 %and, 0, !dbg !193
  br i1 %tobool, label %if.end22, label %if.then16, !dbg !193

if.then16:                                        ; preds = %land.lhs.true
  %mu = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 45, !dbg !197
  %1 = load float* %mu, align 4, !dbg !197, !tbaa !199
  %lambda = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 46, !dbg !197
  %2 = load float* %lambda, align 4, !dbg !197, !tbaa !199
  %call17 = tail call double @ExtremeValueP(float %sc, float %1, float %2) #6, !dbg !197
  tail call void @llvm.dbg.value(metadata !{double %call17}, i64 0, metadata !98), !dbg !197
  %cmp18 = fcmp olt double %call17, %pval.0, !dbg !200
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !200

if.then20:                                        ; preds = %if.then16
  tail call void @llvm.dbg.value(metadata !{double %call17}, i64 0, metadata !97), !dbg !200
  br label %if.end22, !dbg !200

if.end22:                                         ; preds = %land.lhs.true, %if.end13, %if.then16, %if.then20
  %pval.1 = phi double [ %call17, %if.then20 ], [ %pval.0, %if.then16 ], [ %pval.0, %land.lhs.true ], [ %pval.0, %if.end13 ]
  ret double %pval.1, !dbg !201
}

; Function Attrs: optsize
declare double @ExtremeValueP(float, float, float) #4

; Function Attrs: nounwind optsize uwtable
define float @LogSum(float %p1, float %p2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %p1}, i64 0, metadata !103), !dbg !202
  tail call void @llvm.dbg.value(metadata !{float %p2}, i64 0, metadata !104), !dbg !202
  %cmp = fcmp ogt float %p1, %p2, !dbg !203
  br i1 %cmp, label %if.then, label %if.else, !dbg !203

if.then:                                          ; preds = %entry
  %sub = fsub float %p1, %p2, !dbg !204
  %cmp1 = fcmp ogt float %sub, 5.000000e+01, !dbg !204
  %conv3 = fpext float %p1 to double, !dbg !204
  br i1 %cmp1, label %return, label %cond.false, !dbg !204

cond.false:                                       ; preds = %if.then
  %sub5 = fsub float %p2, %p1, !dbg !204
  %conv6 = fpext float %sub5 to double, !dbg !204
  %call = tail call double @exp(double %conv6) #6, !dbg !204
  %add = fadd double %call, 1.000000e+00, !dbg !204
  %call7 = tail call double @log(double %add) #6, !dbg !204
  %add8 = fadd double %conv3, %call7, !dbg !204
  br label %return, !dbg !204

if.else:                                          ; preds = %entry
  %sub10 = fsub float %p2, %p1, !dbg !205
  %cmp12 = fcmp ogt float %sub10, 5.000000e+01, !dbg !205
  %conv15 = fpext float %p2 to double, !dbg !205
  br i1 %cmp12, label %return, label %cond.false16, !dbg !205

cond.false16:                                     ; preds = %if.else
  %sub18 = fsub float %p1, %p2, !dbg !205
  %conv19 = fpext float %sub18 to double, !dbg !205
  %call20 = tail call double @exp(double %conv19) #6, !dbg !205
  %add21 = fadd double %call20, 1.000000e+00, !dbg !205
  %call22 = tail call double @log(double %add21) #6, !dbg !205
  %add23 = fadd double %conv15, %call22, !dbg !205
  br label %return, !dbg !205

return:                                           ; preds = %cond.false16, %if.else, %cond.false, %if.then
  %retval.0.in = phi double [ %add8, %cond.false ], [ %conv3, %if.then ], [ %add23, %cond.false16 ], [ %conv15, %if.else ]
  %retval.0 = fptrunc double %retval.0.in to float, !dbg !204
  ret float %retval.0, !dbg !206
}

; Function Attrs: nounwind optsize uwtable
define i32 @ILogsum(i32 %p1, i32 %p2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %p1}, i64 0, metadata !109), !dbg !207
  tail call void @llvm.dbg.value(metadata !{i32 %p2}, i64 0, metadata !110), !dbg !207
  %.b = load i1* @ILogsum.firsttime, align 1
  br i1 %.b, label %if.end, label %for.body.i, !dbg !208

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %0 = sub nsw i64 0, %indvars.iv.i, !dbg !209
  %1 = trunc i64 %0 to i32, !dbg !209
  %conv.i = sitofp i32 %1 to float, !dbg !209
  %conv1.i = fpext float %conv.i to double, !dbg !209
  %mul.i = fmul double %conv1.i, 0x3FE62E42FEAD449C, !dbg !209
  %div.i = fdiv double %mul.i, 1.000000e+03, !dbg !209
  %call.i = tail call double @exp(double %div.i) #6, !dbg !209
  %add.i = fadd double %call.i, 1.000000e+00, !dbg !209
  %call2.i = tail call double @log(double %add.i) #6, !dbg !209
  %mul3.i = fmul double %call2.i, 0x40968AC7B890D5A6, !dbg !209
  %conv4.i = fptosi double %mul3.i to i32, !dbg !209
  %arrayidx.i = getelementptr inbounds [20000 x i32]* @ilogsum_lookup, i64 0, i64 %indvars.iv.i, !dbg !209
  store i32 %conv4.i, i32* %arrayidx.i, align 4, !dbg !209, !tbaa !194
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !213
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !213
  %exitcond = icmp eq i32 %lftr.wideiv, 20000, !dbg !213
  br i1 %exitcond, label %init_ilogsum.exit, label %for.body.i, !dbg !213

init_ilogsum.exit:                                ; preds = %for.body.i
  store i1 true, i1* @ILogsum.firsttime, align 1
  br label %if.end, !dbg !211

if.end:                                           ; preds = %entry, %init_ilogsum.exit
  %sub = sub nsw i32 %p1, %p2, !dbg !214
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !111), !dbg !214
  %cmp = icmp sgt i32 %sub, 19999, !dbg !215
  br i1 %cmp, label %return, label %if.else, !dbg !215

if.else:                                          ; preds = %if.end
  %cmp2 = icmp slt i32 %sub, -19999, !dbg !216
  br i1 %cmp2, label %return, label %if.else4, !dbg !216

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %sub, 0, !dbg !217
  br i1 %cmp5, label %if.then6, label %if.else7, !dbg !217

if.then6:                                         ; preds = %if.else4
  %idxprom = sext i32 %sub to i64, !dbg !217
  %arrayidx = getelementptr inbounds [20000 x i32]* @ilogsum_lookup, i64 0, i64 %idxprom, !dbg !217
  %2 = load i32* %arrayidx, align 4, !dbg !217, !tbaa !194
  %add = add nsw i32 %2, %p1, !dbg !217
  br label %return, !dbg !217

if.else7:                                         ; preds = %if.else4
  %sub8 = sub nsw i32 0, %sub, !dbg !218
  %idxprom9 = sext i32 %sub8 to i64, !dbg !218
  %arrayidx10 = getelementptr inbounds [20000 x i32]* @ilogsum_lookup, i64 0, i64 %idxprom9, !dbg !218
  %3 = load i32* %arrayidx10, align 4, !dbg !218, !tbaa !194
  %add11 = add nsw i32 %3, %p2, !dbg !218
  br label %return, !dbg !218

return:                                           ; preds = %if.else, %if.end, %if.else7, %if.then6
  %retval.0 = phi i32 [ %add, %if.then6 ], [ %add11, %if.else7 ], [ %p1, %if.end ], [ %p2, %if.else ]
  ret i32 %retval.0, !dbg !219
}

; Function Attrs: nounwind optsize uwtable
define void @LogNorm(float* nocapture %vec, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !116), !dbg !220
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !117), !dbg !220
  tail call void @llvm.dbg.value(metadata !221, i64 0, metadata !119), !dbg !222
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !120), !dbg !224
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !118), !dbg !225
  %cmp80 = icmp sgt i32 %n, 0, !dbg !225
  br i1 %cmp80, label %for.body, label %for.end49, !dbg !225

for.cond4.preheader:                              ; preds = %for.body
  br i1 %cmp80, label %for.body6.lr.ph, label %for.end49, !dbg !227

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %conv9 = fpext float %max.1 to double, !dbg !229
  %sub = fadd double %conv9, -5.000000e+01, !dbg !229
  br label %for.body6, !dbg !227

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body ], [ 0, %entry ]
  %max.082 = phi float [ %max.1, %for.body ], [ 0xC6293E5940000000, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv88, !dbg !230
  %0 = load float* %arrayidx, align 4, !dbg !230, !tbaa !199
  %cmp1 = fcmp ogt float %0, %max.082, !dbg !230
  tail call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !119), !dbg !230
  %max.1 = select i1 %cmp1, float %0, float %max.082, !dbg !230
  %indvars.iv.next89 = add i64 %indvars.iv88, 1, !dbg !225
  %lftr.wideiv90 = trunc i64 %indvars.iv.next89 to i32, !dbg !225
  %exitcond91 = icmp eq i32 %lftr.wideiv90, %n, !dbg !225
  br i1 %exitcond91, label %for.cond4.preheader, label %for.body, !dbg !225

for.cond23.preheader:                             ; preds = %for.inc20
  br i1 %cmp80, label %for.body26.lr.ph, label %for.end49, !dbg !231

for.body26.lr.ph:                                 ; preds = %for.cond23.preheader
  %conv30 = fpext float %max.1 to double, !dbg !233
  %sub31 = fadd double %conv30, -5.000000e+01, !dbg !233
  %conv40 = fpext float %denom.1 to double, !dbg !234
  br label %for.body26, !dbg !231

for.body6:                                        ; preds = %for.inc20, %for.body6.lr.ph
  %indvars.iv84 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next85, %for.inc20 ]
  %denom.079 = phi float [ 0.000000e+00, %for.body6.lr.ph ], [ %denom.1, %for.inc20 ]
  %arrayidx8 = getelementptr inbounds float* %vec, i64 %indvars.iv84, !dbg !229
  %1 = load float* %arrayidx8, align 4, !dbg !229, !tbaa !199
  %conv = fpext float %1 to double, !dbg !229
  %cmp10 = fcmp ogt double %conv, %sub, !dbg !229
  br i1 %cmp10, label %if.then12, label %for.inc20, !dbg !229

if.then12:                                        ; preds = %for.body6
  %sub15 = fsub float %1, %max.1, !dbg !235
  %conv16 = fpext float %sub15 to double, !dbg !235
  %call = tail call double @exp(double %conv16) #6, !dbg !235
  %conv17 = fpext float %denom.079 to double, !dbg !235
  %add = fadd double %conv17, %call, !dbg !235
  %conv18 = fptrunc double %add to float, !dbg !235
  tail call void @llvm.dbg.value(metadata !{float %conv18}, i64 0, metadata !120), !dbg !235
  br label %for.inc20, !dbg !235

for.inc20:                                        ; preds = %for.body6, %if.then12
  %denom.1 = phi float [ %conv18, %if.then12 ], [ %denom.079, %for.body6 ]
  %indvars.iv.next85 = add i64 %indvars.iv84, 1, !dbg !227
  %lftr.wideiv86 = trunc i64 %indvars.iv.next85 to i32, !dbg !227
  %exitcond87 = icmp eq i32 %lftr.wideiv86, %n, !dbg !227
  br i1 %exitcond87, label %for.cond23.preheader, label %for.body6, !dbg !227

for.body26:                                       ; preds = %for.inc47, %for.body26.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next, %for.inc47 ]
  %arrayidx28 = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !233
  %2 = load float* %arrayidx28, align 4, !dbg !233, !tbaa !199
  %conv29 = fpext float %2 to double, !dbg !233
  %cmp32 = fcmp ogt double %conv29, %sub31, !dbg !233
  br i1 %cmp32, label %if.then34, label %for.inc47, !dbg !233

if.then34:                                        ; preds = %for.body26
  %sub37 = fsub float %2, %max.1, !dbg !234
  %conv38 = fpext float %sub37 to double, !dbg !234
  %call39 = tail call double @exp(double %conv38) #6, !dbg !234
  %div = fdiv double %call39, %conv40, !dbg !234
  %conv41 = fptrunc double %div to float, !dbg !234
  br label %for.inc47, !dbg !234

for.inc47:                                        ; preds = %for.body26, %if.then34
  %storemerge = phi float [ %conv41, %if.then34 ], [ 0.000000e+00, %for.body26 ]
  store float %storemerge, float* %arrayidx28, align 4, !dbg !234, !tbaa !199
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !231
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !231
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !231
  br i1 %exitcond, label %for.end49, label %for.body26, !dbg !231

for.end49:                                        ; preds = %entry, %for.cond4.preheader, %for.inc47, %for.cond23.preheader
  ret void, !dbg !236
}

; Function Attrs: nounwind optsize uwtable
define float @Logp_cvec(float* nocapture %cvec, i32 %n, float* nocapture %alpha) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %cvec}, i64 0, metadata !125), !dbg !237
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !126), !dbg !237
  tail call void @llvm.dbg.value(metadata !{float* %alpha}, i64 0, metadata !127), !dbg !237
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !128), !dbg !238
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !131), !dbg !238
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !130), !dbg !238
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !129), !dbg !238
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !132), !dbg !239
  %cmp72 = icmp sgt i32 %n, 0, !dbg !239
  br i1 %cmp72, label %for.body, label %for.end, !dbg !239

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %sum3.076 = phi float [ %add9, %for.body ], [ 0.000000e+00, %entry ]
  %sum2.075 = phi float [ %add6, %for.body ], [ 0.000000e+00, %entry ]
  %sum1.074 = phi float [ %add3, %for.body ], [ 0.000000e+00, %entry ]
  %lnp.073 = phi double [ %phitmp, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %cvec, i64 %indvars.iv, !dbg !241
  %0 = load float* %arrayidx, align 4, !dbg !241, !tbaa !199
  %arrayidx2 = getelementptr inbounds float* %alpha, i64 %indvars.iv, !dbg !241
  %1 = load float* %arrayidx2, align 4, !dbg !241, !tbaa !199
  %add = fadd float %0, %1, !dbg !241
  %add3 = fadd float %sum1.074, %add, !dbg !241
  tail call void @llvm.dbg.value(metadata !{float %add3}, i64 0, metadata !129), !dbg !241
  %add6 = fadd float %sum2.075, %1, !dbg !243
  tail call void @llvm.dbg.value(metadata !{float %add6}, i64 0, metadata !130), !dbg !243
  %add9 = fadd float %sum3.076, %0, !dbg !244
  tail call void @llvm.dbg.value(metadata !{float %add9}, i64 0, metadata !131), !dbg !244
  %conv = fpext float %add to double, !dbg !245
  %call = tail call double @Gammln(double %conv) #6, !dbg !245
  %add16 = fadd double %lnp.073, %call, !dbg !245
  %conv17 = fptrunc double %add16 to float, !dbg !245
  tail call void @llvm.dbg.value(metadata !{float %conv17}, i64 0, metadata !128), !dbg !245
  %2 = load float* %arrayidx, align 4, !dbg !246, !tbaa !199
  %conv20 = fpext float %2 to double, !dbg !246
  %add21 = fadd double %conv20, 1.000000e+00, !dbg !246
  %call22 = tail call double @Gammln(double %add21) #6, !dbg !246
  %conv23 = fpext float %conv17 to double, !dbg !246
  %sub = fsub double %conv23, %call22, !dbg !246
  %conv24 = fptrunc double %sub to float, !dbg !246
  tail call void @llvm.dbg.value(metadata !{float %conv24}, i64 0, metadata !128), !dbg !246
  %3 = load float* %arrayidx2, align 4, !dbg !247, !tbaa !199
  %conv27 = fpext float %3 to double, !dbg !247
  %call28 = tail call double @Gammln(double %conv27) #6, !dbg !247
  %conv29 = fpext float %conv24 to double, !dbg !247
  %sub30 = fsub double %conv29, %call28, !dbg !247
  %conv31 = fptrunc double %sub30 to float, !dbg !247
  tail call void @llvm.dbg.value(metadata !{float %conv31}, i64 0, metadata !128), !dbg !247
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !239
  %phitmp = fpext float %conv31 to double, !dbg !239
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !239
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !239
  br i1 %exitcond, label %for.cond.for.end_crit_edge, label %for.body, !dbg !239

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp81 = fpext float %add3 to double, !dbg !239
  %phitmp82 = fpext float %add6 to double, !dbg !239
  %phitmp83 = fpext float %add9 to double, !dbg !239
  %phitmp84 = fadd double %phitmp83, 1.000000e+00, !dbg !239
  br label %for.end, !dbg !239

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %sum3.0.lcssa = phi double [ %phitmp84, %for.cond.for.end_crit_edge ], [ 1.000000e+00, %entry ]
  %sum2.0.lcssa = phi double [ %phitmp82, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %sum1.0.lcssa = phi double [ %phitmp81, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %lnp.0.lcssa = phi double [ %phitmp, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %call33 = tail call double @Gammln(double %sum1.0.lcssa) #6, !dbg !248
  %sub35 = fsub double %lnp.0.lcssa, %call33, !dbg !248
  %conv36 = fptrunc double %sub35 to float, !dbg !248
  tail call void @llvm.dbg.value(metadata !{float %conv36}, i64 0, metadata !128), !dbg !248
  %call38 = tail call double @Gammln(double %sum2.0.lcssa) #6, !dbg !249
  %conv39 = fpext float %conv36 to double, !dbg !249
  %add40 = fadd double %call38, %conv39, !dbg !249
  %conv41 = fptrunc double %add40 to float, !dbg !249
  tail call void @llvm.dbg.value(metadata !{float %conv41}, i64 0, metadata !128), !dbg !249
  %call44 = tail call double @Gammln(double %sum3.0.lcssa) #6, !dbg !250
  %conv45 = fpext float %conv41 to double, !dbg !250
  %add46 = fadd double %call44, %conv45, !dbg !250
  %conv47 = fptrunc double %add46 to float, !dbg !250
  tail call void @llvm.dbg.value(metadata !{float %conv47}, i64 0, metadata !128), !dbg !250
  ret float %conv47, !dbg !251
}

; Function Attrs: optsize
declare double @Gammln(double) #4

; Function Attrs: nounwind optsize uwtable
define void @SampleDirichlet(float* nocapture %alpha, i32 %n, float* %p) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %alpha}, i64 0, metadata !137), !dbg !252
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !138), !dbg !252
  tail call void @llvm.dbg.value(metadata !{float* %p}, i64 0, metadata !139), !dbg !252
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !140), !dbg !253
  %cmp8 = icmp sgt i32 %n, 0, !dbg !253
  br i1 %cmp8, label %for.body, label %for.end, !dbg !253

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %alpha, i64 %indvars.iv, !dbg !255
  %0 = load float* %arrayidx, align 4, !dbg !255, !tbaa !199
  %call = tail call float @SampleGamma(float %0) #8, !dbg !255
  %arrayidx2 = getelementptr inbounds float* %p, i64 %indvars.iv, !dbg !255
  store float %call, float* %arrayidx2, align 4, !dbg !255, !tbaa !199
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !253
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !253
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !253
  br i1 %exitcond, label %for.end, label %for.body, !dbg !253

for.end:                                          ; preds = %for.body, %entry
  tail call void @FNorm(float* %p, i32 %n) #6, !dbg !256
  ret void, !dbg !257
}

; Function Attrs: nounwind optsize uwtable
define float @SampleGamma(float %alpha) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %alpha}, i64 0, metadata !145), !dbg !258
  %conv = fpext float %alpha to double, !dbg !259
  %cmp = fcmp ult float %alpha, 1.000000e+00, !dbg !259
  br i1 %cmp, label %if.else, label %while.body.preheader, !dbg !259

while.body.preheader:                             ; preds = %entry
  %mul = fmul double %conv, 2.000000e+00, !dbg !260
  %sub = fadd double %mul, -1.000000e+00, !dbg !260
  br label %while.body, !dbg !260

while.body:                                       ; preds = %while.body.preheader, %while.body
  %call = tail call double @sqrt(double %sub) #6, !dbg !260
  %conv3 = fptrunc double %call to float, !dbg !260
  tail call void @llvm.dbg.value(metadata !{float %conv3}, i64 0, metadata !150), !dbg !260
  %call4 = tail call double @sre_random() #6, !dbg !263
  %conv5 = fptrunc double %call4 to float, !dbg !263
  tail call void @llvm.dbg.value(metadata !{float %conv5}, i64 0, metadata !146), !dbg !263
  %sub6 = fsub float 1.000000e+00, %conv5, !dbg !264
  %div = fdiv float %conv5, %sub6, !dbg !264
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !147), !dbg !264
  %conv8 = fpext float %div to double, !dbg !265
  %div9 = fdiv float 1.000000e+00, %conv3, !dbg !265
  %conv10 = fpext float %div9 to double, !dbg !265
  %call11 = tail call double @pow(double %conv8, double %conv10) #6, !dbg !265
  %mul12 = fmul double %conv, %call11, !dbg !265
  %conv13 = fptrunc double %mul12 to float, !dbg !265
  tail call void @llvm.dbg.value(metadata !{float %conv13}, i64 0, metadata !148), !dbg !265
  %add = fsub float %alpha, %conv13, !dbg !266
  %conv15 = fpext float %add to double, !dbg !266
  %call16 = tail call double @exp(double %conv15) #6, !dbg !266
  %mul17 = fmul double %call16, 2.500000e-01, !dbg !266
  %div19 = fdiv float %alpha, %conv3, !dbg !266
  %conv20 = fpext float %div19 to double, !dbg !266
  %add21 = fadd double %conv20, 1.000000e+00, !dbg !266
  %call22 = tail call double @pow(double %conv8, double %add21) #6, !dbg !266
  %mul23 = fmul double %mul17, %call22, !dbg !266
  %div25 = fdiv double 1.000000e+00, %conv8, !dbg !266
  %add26 = fadd double %div25, 1.000000e+00, !dbg !266
  %pow2 = fmul double %add26, %add26, !dbg !266
  %mul28 = fmul double %mul23, %pow2, !dbg !266
  %conv29 = fptrunc double %mul28 to float, !dbg !266
  tail call void @llvm.dbg.value(metadata !{float %conv29}, i64 0, metadata !149), !dbg !266
  %call30 = tail call double @sre_random() #6, !dbg !267
  %conv31 = fpext float %conv29 to double, !dbg !267
  %cmp32 = fcmp ugt double %call30, %conv31, !dbg !267
  br i1 %cmp32, label %while.body, label %return, !dbg !267

if.else:                                          ; preds = %entry
  %cmp36 = fcmp ogt float %alpha, 0.000000e+00, !dbg !268
  br i1 %cmp36, label %while.body39.preheader, label %if.end89, !dbg !268

while.body39.preheader:                           ; preds = %if.else
  %div45 = fdiv double %conv, 0x4005BF0A8B145769, !dbg !269
  %add46 = fadd double %div45, 1.000000e+00, !dbg !269
  %sub67 = fadd double %conv, -1.000000e+00, !dbg !272
  %div76 = fdiv double 1.000000e+00, %conv, !dbg !274
  br label %while.body39, !dbg !276

while.body39:                                     ; preds = %if.then52, %if.else73, %while.body39.preheader
  %call40 = tail call double @sre_random() #6, !dbg !276
  %conv41 = fptrunc double %call40 to float, !dbg !276
  tail call void @llvm.dbg.value(metadata !{float %conv41}, i64 0, metadata !146), !dbg !276
  %conv42 = fpext float %conv41 to double, !dbg !269
  %mul47 = fmul double %conv42, %add46, !dbg !269
  %conv48 = fptrunc double %mul47 to float, !dbg !269
  tail call void @llvm.dbg.value(metadata !{float %conv48}, i64 0, metadata !147), !dbg !269
  %cmp50 = fcmp ogt float %conv48, 1.000000e+00, !dbg !277
  br i1 %cmp50, label %if.then52, label %if.else73, !dbg !277

if.then52:                                        ; preds = %while.body39
  %sub53 = fsub float 1.000000e+00, %conv48, !dbg !278
  %conv54 = fpext float %sub53 to double, !dbg !278
  %add58 = fadd double %div45, %conv54, !dbg !278
  %div60 = fdiv double %add58, %conv, !dbg !278
  %call61 = tail call double @log(double %div60) #6, !dbg !278
  %0 = fptrunc double %call61 to float, !dbg !278
  %conv63 = fsub float -0.000000e+00, %0, !dbg !278
  tail call void @llvm.dbg.value(metadata !{float %conv63}, i64 0, metadata !148), !dbg !278
  %call64 = tail call double @sre_random() #6, !dbg !272
  %conv65 = fpext float %conv63 to double, !dbg !272
  %call68 = tail call double @pow(double %conv65, double %sub67) #6, !dbg !272
  %cmp69 = fcmp ugt double %call64, %call68, !dbg !272
  br i1 %cmp69, label %while.body39, label %return, !dbg !272

if.else73:                                        ; preds = %while.body39
  %conv49 = fpext float %conv48 to double, !dbg !277
  %call77 = tail call double @pow(double %conv49, double %div76) #6, !dbg !274
  %conv78 = fptrunc double %call77 to float, !dbg !274
  tail call void @llvm.dbg.value(metadata !{float %conv78}, i64 0, metadata !148), !dbg !274
  %call79 = tail call double @sre_random() #6, !dbg !279
  %sub80 = fsub float -0.000000e+00, %conv78, !dbg !279
  %conv81 = fpext float %sub80 to double, !dbg !279
  %call82 = tail call double @exp(double %conv81) #6, !dbg !279
  %cmp83 = fcmp ugt double %call79, %call82, !dbg !279
  br i1 %cmp83, label %while.body39, label %return, !dbg !279

if.end89:                                         ; preds = %if.else
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0)) #6, !dbg !280
  br label %return, !dbg !281

return:                                           ; preds = %while.body, %if.else73, %if.then52, %if.end89
  %retval.0 = phi float [ 0.000000e+00, %if.end89 ], [ %conv78, %if.else73 ], [ %conv63, %if.then52 ], [ %conv13, %while.body ]
  ret float %retval.0, !dbg !282
}

; Function Attrs: optsize
declare void @FNorm(float*, i32) #4

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: optsize
declare double @sre_random() #4

; Function Attrs: nounwind optsize
declare double @pow(double, double) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #4

; Function Attrs: nounwind optsize uwtable
define void @SampleCountvector(float* %p, i32 %n, i32 %c, float* %cvec) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %p}, i64 0, metadata !155), !dbg !283
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !156), !dbg !283
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !157), !dbg !283
  tail call void @llvm.dbg.value(metadata !{float* %cvec}, i64 0, metadata !158), !dbg !283
  tail call void @FSet(float* %cvec, i32 %n, float 0.000000e+00) #6, !dbg !284
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !159), !dbg !285
  %cmp5 = icmp sgt i32 %c, 0, !dbg !285
  br i1 %cmp5, label %for.body, label %for.end, !dbg !285

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call = tail call i32 @FChoose(float* %p, i32 %n) #6, !dbg !287
  %idxprom = sext i32 %call to i64, !dbg !287
  %arrayidx = getelementptr inbounds float* %cvec, i64 %idxprom, !dbg !287
  %0 = load float* %arrayidx, align 4, !dbg !287, !tbaa !199
  %conv1 = fadd float %0, 1.000000e+00, !dbg !287
  store float %conv1, float* %arrayidx, align 4, !dbg !287, !tbaa !199
  %inc = add nsw i32 %i.06, 1, !dbg !285
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !159), !dbg !285
  %exitcond = icmp eq i32 %inc, %c, !dbg !285
  br i1 %exitcond, label %for.end, label %for.body, !dbg !285

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !288
}

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #4

; Function Attrs: optsize
declare i32 @FChoose(float*, i32) #4

; Function Attrs: nounwind optsize uwtable
define float @P_PvecGivenDirichlet(float* nocapture %p, i32 %n, float* nocapture %alpha) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %p}, i64 0, metadata !162), !dbg !289
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !163), !dbg !289
  tail call void @llvm.dbg.value(metadata !{float* %alpha}, i64 0, metadata !164), !dbg !289
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !166), !dbg !290
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !165), !dbg !290
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !167), !dbg !291
  %cmp39 = icmp sgt i32 %n, 0, !dbg !291
  br i1 %cmp39, label %for.body, label %for.end, !dbg !291

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %logp.041 = phi float [ %logp.1, %for.inc ], [ 0.000000e+00, %entry ]
  %sum.040 = phi float [ %sum.1, %for.inc ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %p, i64 %indvars.iv, !dbg !293
  %0 = load float* %arrayidx, align 4, !dbg !293, !tbaa !199
  %cmp1 = fcmp ogt float %0, 0.000000e+00, !dbg !293
  br i1 %cmp1, label %if.then, label %for.inc, !dbg !293

if.then:                                          ; preds = %for.body
  %conv = fpext float %0 to double, !dbg !293
  %arrayidx4 = getelementptr inbounds float* %alpha, i64 %indvars.iv, !dbg !294
  %1 = load float* %arrayidx4, align 4, !dbg !294, !tbaa !199
  %conv5 = fpext float %1 to double, !dbg !294
  %sub = fadd double %conv5, -1.000000e+00, !dbg !294
  %call = tail call double @log(double %conv) #6, !dbg !294
  %mul = fmul double %call, %sub, !dbg !294
  %conv9 = fpext float %logp.041 to double, !dbg !294
  %add = fadd double %conv9, %mul, !dbg !294
  %conv10 = fptrunc double %add to float, !dbg !294
  tail call void @llvm.dbg.value(metadata !{float %conv10}, i64 0, metadata !166), !dbg !294
  %2 = load float* %arrayidx4, align 4, !dbg !296, !tbaa !199
  %conv13 = fpext float %2 to double, !dbg !296
  %call14 = tail call double @Gammln(double %conv13) #6, !dbg !296
  %conv15 = fpext float %conv10 to double, !dbg !296
  %sub16 = fsub double %conv15, %call14, !dbg !296
  %conv17 = fptrunc double %sub16 to float, !dbg !296
  tail call void @llvm.dbg.value(metadata !{float %conv17}, i64 0, metadata !166), !dbg !296
  %3 = load float* %arrayidx4, align 4, !dbg !297, !tbaa !199
  %add20 = fadd float %sum.040, %3, !dbg !297
  tail call void @llvm.dbg.value(metadata !{float %add20}, i64 0, metadata !165), !dbg !297
  br label %for.inc, !dbg !298

for.inc:                                          ; preds = %for.body, %if.then
  %sum.1 = phi float [ %add20, %if.then ], [ %sum.040, %for.body ]
  %logp.1 = phi float [ %conv17, %if.then ], [ %logp.041, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !291
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !291
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !291
  br i1 %exitcond, label %for.end, label %for.body, !dbg !291

for.end:                                          ; preds = %for.inc, %entry
  %logp.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %logp.1, %for.inc ]
  %sum.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %sum.1, %for.inc ]
  %conv21 = fpext float %sum.0.lcssa to double, !dbg !299
  %call22 = tail call double @Gammln(double %conv21) #6, !dbg !299
  %conv23 = fpext float %logp.0.lcssa to double, !dbg !299
  %add24 = fadd double %conv23, %call22, !dbg !299
  %conv25 = fptrunc double %add24 to float, !dbg !299
  tail call void @llvm.dbg.value(metadata !{float %conv25}, i64 0, metadata !166), !dbg !299
  ret float %conv25, !dbg !300
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !173, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !13, metadata !19, metadata !24, metadata !99, metadata !105, metadata !112, metadata !121, metadata !133, metadata !141, metadata !151, metadata !160, metadata !168}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Prob2Score", metadata !"Prob2Score", metadata !"", i32 44, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float, float)* @Prob2Score, null, null, metadata !10, i32 45} ; [ DW_TAG_subprogram ] [line 44] [def] [scope 45] [Prob2Score]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!10 = metadata !{metadata !11, metadata !12}
!11 = metadata !{i32 786689, metadata !4, metadata !"p", metadata !5, i32 16777260, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 44]
!12 = metadata !{i32 786689, metadata !4, metadata !"null", metadata !5, i32 33554476, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [null] [line 44]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Score2Prob", metadata !"Score2Prob", metadata !"", i32 56, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, float)* @Score2Prob, null, null, metadata !16, i32 57} ; [ DW_TAG_subprogram ] [line 56] [def] [scope 57] [Score2Prob]
!14 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !9, metadata !8, metadata !9}
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786689, metadata !13, metadata !"sc", metadata !5, i32 16777272, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sc] [line 56]
!18 = metadata !{i32 786689, metadata !13, metadata !"null", metadata !5, i32 33554488, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [null] [line 56]
!19 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Scorify", metadata !"Scorify", metadata !"", i32 69, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32)* @Scorify, null, null, metadata !22, i32 70} ; [ DW_TAG_subprogram ] [line 69] [def] [scope 70] [Scorify]
!20 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{metadata !9, metadata !8}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786689, metadata !19, metadata !"sc", metadata !5, i32 16777285, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sc] [line 69]
!24 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PValue", metadata !"PValue", metadata !"", i32 89, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct.plan7_s*, float)* @PValue, null, null, metadata !94, i32 90} ; [ DW_TAG_subprogram ] [line 89] [def] [scope 90] [PValue]
!25 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{metadata !27, metadata !28, metadata !9}
!27 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !59, metadata !60, metadata !61, metadata !62, metadata !67, metadata !68, metadata !69, metadata !73, metadata !74, metadata !76, metadata !77, metadata !78, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!34 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!36 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!37 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!38 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!39 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !33} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!40 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !33} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!41 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !8} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!42 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !33} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!43 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!45 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !8} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!46 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !44} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!47 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !44} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!48 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !44} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!49 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !9} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!50 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !9} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!51 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !9} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!52 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !9} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!53 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !9} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!54 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !9} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!55 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !8} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!56 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !57} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!59 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !57} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!60 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !57} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!61 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !9} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!62 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !63} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !9, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!64 = metadata !{metadata !65, metadata !66}
!65 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!66 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!67 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !58} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!68 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !58} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!69 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !70} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!70 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !9, metadata !71, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!73 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !9} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!74 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !75} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!76 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !75} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!77 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !75} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!78 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !79} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!79 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !8, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!80 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !44} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!81 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !44} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!82 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !44} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!83 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !44} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!84 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !44} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!85 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !44} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!86 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !44} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!87 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !75} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!88 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !75} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!89 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !8} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!90 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !8} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!91 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !9} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!92 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !9} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!93 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !8} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!94 = metadata !{metadata !95, metadata !96, metadata !97, metadata !98}
!95 = metadata !{i32 786689, metadata !24, metadata !"hmm", metadata !5, i32 16777305, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 89]
!96 = metadata !{i32 786689, metadata !24, metadata !"sc", metadata !5, i32 33554521, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sc] [line 89]
!97 = metadata !{i32 786688, metadata !24, metadata !"pval", metadata !5, i32 91, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pval] [line 91]
!98 = metadata !{i32 786688, metadata !24, metadata !"pval2", metadata !5, i32 92, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pval2] [line 92]
!99 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"LogSum", metadata !"LogSum", metadata !"", i32 115, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float)* @LogSum, null, null, metadata !102, i32 116} ; [ DW_TAG_subprogram ] [line 115] [def] [scope 116] [LogSum]
!100 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{metadata !9, metadata !9, metadata !9}
!102 = metadata !{metadata !103, metadata !104}
!103 = metadata !{i32 786689, metadata !99, metadata !"p1", metadata !5, i32 16777331, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p1] [line 115]
!104 = metadata !{i32 786689, metadata !99, metadata !"p2", metadata !5, i32 33554547, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p2] [line 115]
!105 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ILogsum", metadata !"ILogsum", metadata !"", i32 157, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @ILogsum, null, null, metadata !108, i32 158} ; [ DW_TAG_subprogram ] [line 157] [def] [scope 158] [ILogsum]
!106 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!107 = metadata !{metadata !8, metadata !8, metadata !8}
!108 = metadata !{metadata !109, metadata !110, metadata !111}
!109 = metadata !{i32 786689, metadata !105, metadata !"p1", metadata !5, i32 16777373, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p1] [line 157]
!110 = metadata !{i32 786689, metadata !105, metadata !"p2", metadata !5, i32 33554589, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p2] [line 157]
!111 = metadata !{i32 786688, metadata !105, metadata !"diff", metadata !5, i32 159, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff] [line 159]
!112 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"LogNorm", metadata !"LogNorm", metadata !"", i32 185, metadata !113, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, i32)* @LogNorm, null, null, metadata !115, i32 186} ; [ DW_TAG_subprogram ] [line 185] [def] [scope 186] [LogNorm]
!113 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!114 = metadata !{null, metadata !58, metadata !8}
!115 = metadata !{metadata !116, metadata !117, metadata !118, metadata !119, metadata !120}
!116 = metadata !{i32 786689, metadata !112, metadata !"vec", metadata !5, i32 16777401, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 185]
!117 = metadata !{i32 786689, metadata !112, metadata !"n", metadata !5, i32 33554617, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 185]
!118 = metadata !{i32 786688, metadata !112, metadata !"x", metadata !5, i32 187, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 187]
!119 = metadata !{i32 786688, metadata !112, metadata !"max", metadata !5, i32 188, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max] [line 188]
!120 = metadata !{i32 786688, metadata !112, metadata !"denom", metadata !5, i32 189, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [denom] [line 189]
!121 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Logp_cvec", metadata !"Logp_cvec", metadata !"", i32 217, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float*, i32, float*)* @Logp_cvec, null, null, metadata !124, i32 218} ; [ DW_TAG_subprogram ] [line 217] [def] [scope 218] [Logp_cvec]
!122 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!123 = metadata !{metadata !9, metadata !58, metadata !8, metadata !58}
!124 = metadata !{metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132}
!125 = metadata !{i32 786689, metadata !121, metadata !"cvec", metadata !5, i32 16777433, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cvec] [line 217]
!126 = metadata !{i32 786689, metadata !121, metadata !"n", metadata !5, i32 33554649, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 217]
!127 = metadata !{i32 786689, metadata !121, metadata !"alpha", metadata !5, i32 50331865, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 217]
!128 = metadata !{i32 786688, metadata !121, metadata !"lnp", metadata !5, i32 219, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lnp] [line 219]
!129 = metadata !{i32 786688, metadata !121, metadata !"sum1", metadata !5, i32 220, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum1] [line 220]
!130 = metadata !{i32 786688, metadata !121, metadata !"sum2", metadata !5, i32 220, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum2] [line 220]
!131 = metadata !{i32 786688, metadata !121, metadata !"sum3", metadata !5, i32 220, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum3] [line 220]
!132 = metadata !{i32 786688, metadata !121, metadata !"x", metadata !5, i32 221, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 221]
!133 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SampleDirichlet", metadata !"SampleDirichlet", metadata !"", i32 257, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, i32, float*)* @SampleDirichlet, null, null, metadata !136, i32 258} ; [ DW_TAG_subprogram ] [line 257] [def] [scope 258] [SampleDirichlet]
!134 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{null, metadata !58, metadata !8, metadata !58}
!136 = metadata !{metadata !137, metadata !138, metadata !139, metadata !140}
!137 = metadata !{i32 786689, metadata !133, metadata !"alpha", metadata !5, i32 16777473, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 257]
!138 = metadata !{i32 786689, metadata !133, metadata !"n", metadata !5, i32 33554689, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 257]
!139 = metadata !{i32 786689, metadata !133, metadata !"p", metadata !5, i32 50331905, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 257]
!140 = metadata !{i32 786688, metadata !133, metadata !"x", metadata !5, i32 259, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 259]
!141 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SampleGamma", metadata !"SampleGamma", metadata !"", i32 281, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @SampleGamma, null, null, metadata !144, i32 282} ; [ DW_TAG_subprogram ] [line 281] [def] [scope 282] [SampleGamma]
!142 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!143 = metadata !{metadata !9, metadata !9}
!144 = metadata !{metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150}
!145 = metadata !{i32 786689, metadata !141, metadata !"alpha", metadata !5, i32 16777497, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 281]
!146 = metadata !{i32 786688, metadata !141, metadata !"U", metadata !5, i32 283, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [U] [line 283]
!147 = metadata !{i32 786688, metadata !141, metadata !"V", metadata !5, i32 283, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [V] [line 283]
!148 = metadata !{i32 786688, metadata !141, metadata !"X", metadata !5, i32 283, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [X] [line 283]
!149 = metadata !{i32 786688, metadata !141, metadata !"W", metadata !5, i32 283, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [W] [line 283]
!150 = metadata !{i32 786688, metadata !141, metadata !"lambda", metadata !5, i32 283, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 283]
!151 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SampleCountvector", metadata !"SampleCountvector", metadata !"", i32 330, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, i32, i32, float*)* @SampleCountvector, null, null, metadata !154, i32 331} ; [ DW_TAG_subprogram ] [line 330] [def] [scope 331] [SampleCountvector]
!152 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!153 = metadata !{null, metadata !58, metadata !8, metadata !8, metadata !58}
!154 = metadata !{metadata !155, metadata !156, metadata !157, metadata !158, metadata !159}
!155 = metadata !{i32 786689, metadata !151, metadata !"p", metadata !5, i32 16777546, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 330]
!156 = metadata !{i32 786689, metadata !151, metadata !"n", metadata !5, i32 33554762, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 330]
!157 = metadata !{i32 786689, metadata !151, metadata !"c", metadata !5, i32 50331978, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 330]
!158 = metadata !{i32 786689, metadata !151, metadata !"cvec", metadata !5, i32 67109194, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cvec] [line 330]
!159 = metadata !{i32 786688, metadata !151, metadata !"i", metadata !5, i32 332, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 332]
!160 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P_PvecGivenDirichlet", metadata !"P_PvecGivenDirichlet", metadata !"", i32 350, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float*, i32, float*)* @P_PvecGivenDirichlet, null, null, metadata !161, i32 351} ; [ DW_TAG_subprogram ] [line 350] [def] [scope 351] [P_PvecGivenDirichlet]
!161 = metadata !{metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167}
!162 = metadata !{i32 786689, metadata !160, metadata !"p", metadata !5, i32 16777566, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 350]
!163 = metadata !{i32 786689, metadata !160, metadata !"n", metadata !5, i32 33554782, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 350]
!164 = metadata !{i32 786689, metadata !160, metadata !"alpha", metadata !5, i32 50331998, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 350]
!165 = metadata !{i32 786688, metadata !160, metadata !"sum", metadata !5, i32 352, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 352]
!166 = metadata !{i32 786688, metadata !160, metadata !"logp", metadata !5, i32 353, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [logp] [line 353]
!167 = metadata !{i32 786688, metadata !160, metadata !"x", metadata !5, i32 354, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 354]
!168 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"init_ilogsum", metadata !"init_ilogsum", metadata !"", i32 149, metadata !169, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !171, i32 150} ; [ DW_TAG_subprogram ] [line 149] [local] [def] [scope 150] [init_ilogsum]
!169 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!170 = metadata !{null}
!171 = metadata !{metadata !172}
!172 = metadata !{i32 786688, metadata !168, metadata !"i", metadata !5, i32 151, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 151]
!173 = metadata !{metadata !174, metadata !175}
!174 = metadata !{i32 786484, i32 0, metadata !105, metadata !"firsttime", metadata !"firsttime", metadata !"", metadata !5, i32 164, metadata !8, i32 1, i32 1, null, null}
!175 = metadata !{i32 786484, i32 0, null, metadata !"ilogsum_lookup", metadata !"ilogsum_lookup", metadata !"", metadata !5, i32 147, metadata !176, i32 1, i32 1, [20000 x i32]* @ilogsum_lookup, null} ; [ DW_TAG_variable ] [ilogsum_lookup] [line 147] [local] [def]
!176 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640000, i64 32, i32 0, i32 0, metadata !8, metadata !177, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640000, align 32, offset 0] [from int]
!177 = metadata !{metadata !178}
!178 = metadata !{i32 786465, i64 0, i64 20000}   ; [ DW_TAG_subrange_type ] [0, 19999]
!179 = metadata !{i32 44, i32 0, metadata !4, null}
!180 = metadata !{i32 46, i32 0, metadata !4, null}
!181 = metadata !{i32 47, i32 0, metadata !4, null}
!182 = metadata !{i32 48, i32 0, metadata !4, null}
!183 = metadata !{i32 56, i32 0, metadata !13, null}
!184 = metadata !{i32 58, i32 0, metadata !13, null} ; [ DW_TAG_imported_module ]
!185 = metadata !{i32 59, i32 0, metadata !13, null}
!186 = metadata !{i32 60, i32 0, metadata !13, null}
!187 = metadata !{i32 69, i32 0, metadata !19, null}
!188 = metadata !{i32 71, i32 0, metadata !19, null}
!189 = metadata !{i32 89, i32 0, metadata !24, null}
!190 = metadata !{i32 95, i32 0, metadata !24, null}
!191 = metadata !{i32 96, i32 0, metadata !24, null}
!192 = metadata !{i32 97, i32 0, metadata !24, null}
!193 = metadata !{i32 100, i32 0, metadata !24, null}
!194 = metadata !{metadata !"int", metadata !195}
!195 = metadata !{metadata !"omnipotent char", metadata !196}
!196 = metadata !{metadata !"Simple C/C++ TBAA"}
!197 = metadata !{i32 102, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !24, i32 101, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!199 = metadata !{metadata !"float", metadata !195}
!200 = metadata !{i32 103, i32 0, metadata !198, null}
!201 = metadata !{i32 105, i32 0, metadata !24, null}
!202 = metadata !{i32 115, i32 0, metadata !99, null}
!203 = metadata !{i32 117, i32 0, metadata !99, null}
!204 = metadata !{i32 118, i32 0, metadata !99, null}
!205 = metadata !{i32 120, i32 0, metadata !99, null}
!206 = metadata !{i32 121, i32 0, metadata !99, null}
!207 = metadata !{i32 157, i32 0, metadata !105, null}
!208 = metadata !{i32 165, i32 0, metadata !105, null}
!209 = metadata !{i32 154, i32 0, metadata !210, metadata !211}
!210 = metadata !{i32 786443, metadata !1, metadata !168, i32 152, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!211 = metadata !{i32 165, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !105, i32 165, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!213 = metadata !{i32 152, i32 0, metadata !210, metadata !211}
!214 = metadata !{i32 168, i32 0, metadata !105, null}
!215 = metadata !{i32 169, i32 0, metadata !105, null}
!216 = metadata !{i32 170, i32 0, metadata !105, null}
!217 = metadata !{i32 171, i32 0, metadata !105, null}
!218 = metadata !{i32 172, i32 0, metadata !105, null}
!219 = metadata !{i32 173, i32 0, metadata !105, null}
!220 = metadata !{i32 185, i32 0, metadata !112, null}
!221 = metadata !{float 0xC6293E5940000000}
!222 = metadata !{i32 188, i32 0, metadata !112, null}
!223 = metadata !{float 0.000000e+00}
!224 = metadata !{i32 189, i32 0, metadata !112, null}
!225 = metadata !{i32 191, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !112, i32 191, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!227 = metadata !{i32 193, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !112, i32 193, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!229 = metadata !{i32 194, i32 0, metadata !228, null}
!230 = metadata !{i32 192, i32 0, metadata !226, null}
!231 = metadata !{i32 196, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !112, i32 196, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!233 = metadata !{i32 197, i32 0, metadata !232, null}
!234 = metadata !{i32 198, i32 0, metadata !232, null}
!235 = metadata !{i32 195, i32 0, metadata !228, null}
!236 = metadata !{i32 201, i32 0, metadata !112, null}
!237 = metadata !{i32 217, i32 0, metadata !121, null}
!238 = metadata !{i32 223, i32 0, metadata !121, null}
!239 = metadata !{i32 224, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !121, i32 224, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!241 = metadata !{i32 226, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !240, i32 225, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!243 = metadata !{i32 227, i32 0, metadata !242, null}
!244 = metadata !{i32 228, i32 0, metadata !242, null}
!245 = metadata !{i32 229, i32 0, metadata !242, null}
!246 = metadata !{i32 230, i32 0, metadata !242, null}
!247 = metadata !{i32 231, i32 0, metadata !242, null}
!248 = metadata !{i32 233, i32 0, metadata !121, null}
!249 = metadata !{i32 234, i32 0, metadata !121, null}
!250 = metadata !{i32 235, i32 0, metadata !121, null}
!251 = metadata !{i32 236, i32 0, metadata !121, null}
!252 = metadata !{i32 257, i32 0, metadata !133, null}
!253 = metadata !{i32 261, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !133, i32 261, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!255 = metadata !{i32 262, i32 0, metadata !254, null}
!256 = metadata !{i32 263, i32 0, metadata !133, null}
!257 = metadata !{i32 264, i32 0, metadata !133, null}
!258 = metadata !{i32 281, i32 0, metadata !141, null}
!259 = metadata !{i32 285, i32 0, metadata !141, null}
!260 = metadata !{i32 289, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !262, i32 288, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!262 = metadata !{i32 786443, metadata !1, metadata !141, i32 286, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!263 = metadata !{i32 290, i32 0, metadata !261, null}
!264 = metadata !{i32 291, i32 0, metadata !261, null}
!265 = metadata !{i32 292, i32 0, metadata !261, null}
!266 = metadata !{i32 293, i32 0, metadata !261, null}
!267 = metadata !{i32 294, i32 0, metadata !261, null}
!268 = metadata !{i32 298, i32 0, metadata !141, null}
!269 = metadata !{i32 303, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !271, i32 301, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!271 = metadata !{i32 786443, metadata !1, metadata !141, i32 299, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!272 = metadata !{i32 307, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !270, i32 305, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!274 = metadata !{i32 312, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !270, i32 311, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!276 = metadata !{i32 302, i32 0, metadata !270, null}
!277 = metadata !{i32 304, i32 0, metadata !270, null}
!278 = metadata !{i32 306, i32 0, metadata !273, null}
!279 = metadata !{i32 313, i32 0, metadata !275, null}
!280 = metadata !{i32 318, i32 0, metadata !141, null}
!281 = metadata !{i32 320, i32 0, metadata !141, null}
!282 = metadata !{i32 321, i32 0, metadata !141, null}
!283 = metadata !{i32 330, i32 0, metadata !151, null}
!284 = metadata !{i32 334, i32 0, metadata !151, null}
!285 = metadata !{i32 335, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !151, i32 335, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!287 = metadata !{i32 336, i32 0, metadata !286, null}
!288 = metadata !{i32 337, i32 0, metadata !151, null}
!289 = metadata !{i32 350, i32 0, metadata !160, null}
!290 = metadata !{i32 356, i32 0, metadata !160, null}
!291 = metadata !{i32 357, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !160, i32 357, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!293 = metadata !{i32 358, i32 0, metadata !292, null}
!294 = metadata !{i32 360, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !292, i32 359, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c]
!296 = metadata !{i32 361, i32 0, metadata !295, null}
!297 = metadata !{i32 362, i32 0, metadata !295, null}
!298 = metadata !{i32 363, i32 0, metadata !295, null}
!299 = metadata !{i32 364, i32 0, metadata !160, null}
!300 = metadata !{i32 365, i32 0, metadata !160, null}
