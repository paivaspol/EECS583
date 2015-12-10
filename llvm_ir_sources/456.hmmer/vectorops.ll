; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define void @DSet(double* nocapture %vec, i32 %n, double %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !12), !dbg !202
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !13), !dbg !202
  tail call void @llvm.dbg.value(metadata !{double %value}, i64 0, metadata !14), !dbg !202
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !15), !dbg !203
  %cmp3 = icmp sgt i32 %n, 0, !dbg !203
  br i1 %cmp3, label %for.body, label %for.end, !dbg !203

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !203
  store double %value, double* %arrayidx, align 8, !dbg !203, !tbaa !205
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !203
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !203
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !203
  br i1 %exitcond, label %for.end, label %for.body, !dbg !203

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !208
}

; Function Attrs: nounwind optsize uwtable
define void @FSet(float* nocapture %vec, i32 %n, float %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !22), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !23), !dbg !209
  tail call void @llvm.dbg.value(metadata !{float %value}, i64 0, metadata !24), !dbg !209
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !25), !dbg !210
  %cmp3 = icmp sgt i32 %n, 0, !dbg !210
  br i1 %cmp3, label %for.body, label %for.end, !dbg !210

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !210
  store float %value, float* %arrayidx, align 4, !dbg !210, !tbaa !212
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !210
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !210
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !210
  br i1 %exitcond, label %for.end, label %for.body, !dbg !210

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !213
}

; Function Attrs: nounwind optsize uwtable
define void @DScale(double* nocapture %vec, i32 %n, double %scale) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !28), !dbg !214
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !29), !dbg !214
  tail call void @llvm.dbg.value(metadata !{double %scale}, i64 0, metadata !30), !dbg !214
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !31), !dbg !215
  %cmp3 = icmp sgt i32 %n, 0, !dbg !215
  br i1 %cmp3, label %for.body, label %for.end, !dbg !215

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !215
  %0 = load double* %arrayidx, align 8, !dbg !215, !tbaa !205
  %mul = fmul double %0, %scale, !dbg !215
  store double %mul, double* %arrayidx, align 8, !dbg !215, !tbaa !205
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !215
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !215
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !215
  br i1 %exitcond, label %for.end, label %for.body, !dbg !215

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !217
}

; Function Attrs: nounwind optsize uwtable
define void @FScale(float* nocapture %vec, i32 %n, float %scale) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !34), !dbg !218
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !35), !dbg !218
  tail call void @llvm.dbg.value(metadata !{float %scale}, i64 0, metadata !36), !dbg !218
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !37), !dbg !219
  %cmp3 = icmp sgt i32 %n, 0, !dbg !219
  br i1 %cmp3, label %for.body, label %for.end, !dbg !219

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !219
  %0 = load float* %arrayidx, align 4, !dbg !219, !tbaa !212
  %mul = fmul float %0, %scale, !dbg !219
  store float %mul, float* %arrayidx, align 4, !dbg !219, !tbaa !212
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !219
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !219
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !219
  br i1 %exitcond, label %for.end, label %for.body, !dbg !219

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !221
}

; Function Attrs: nounwind optsize readonly uwtable
define double @DSum(double* nocapture %vec, i32 %n) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !42), !dbg !222
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !43), !dbg !222
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !44), !dbg !224
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !225
  %cmp4 = icmp sgt i32 %n, 0, !dbg !225
  br i1 %cmp4, label %for.body, label %for.end, !dbg !225

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %sum.05 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !225
  %0 = load double* %arrayidx, align 8, !dbg !225, !tbaa !205
  %add = fadd double %sum.05, %0, !dbg !225
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !44), !dbg !225
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !225
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !225
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !225
  br i1 %exitcond, label %for.end, label %for.body, !dbg !225

for.end:                                          ; preds = %for.body, %entry
  %sum.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  ret double %sum.0.lcssa, !dbg !227
}

; Function Attrs: nounwind optsize readonly uwtable
define float @FSum(float* nocapture %vec, i32 %n) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !50), !dbg !228
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !51), !dbg !228
  tail call void @llvm.dbg.value(metadata !229, i64 0, metadata !52), !dbg !230
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !53), !dbg !231
  %cmp4 = icmp sgt i32 %n, 0, !dbg !231
  br i1 %cmp4, label %for.body, label %for.end, !dbg !231

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %sum.05 = phi float [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !231
  %0 = load float* %arrayidx, align 4, !dbg !231, !tbaa !212
  %add = fadd float %sum.05, %0, !dbg !231
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !52), !dbg !231
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !231
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !231
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !231
  br i1 %exitcond, label %for.end, label %for.body, !dbg !231

for.end:                                          ; preds = %for.body, %entry
  %sum.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.body ]
  ret float %sum.0.lcssa, !dbg !233
}

; Function Attrs: nounwind optsize uwtable
define void @DAdd(double* nocapture %vec1, double* nocapture %vec2, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %vec1}, i64 0, metadata !58), !dbg !234
  tail call void @llvm.dbg.value(metadata !{double* %vec2}, i64 0, metadata !59), !dbg !234
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !60), !dbg !234
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !61), !dbg !235
  %cmp6 = icmp sgt i32 %n, 0, !dbg !235
  br i1 %cmp6, label %for.body, label %for.end, !dbg !235

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec2, i64 %indvars.iv, !dbg !235
  %0 = load double* %arrayidx, align 8, !dbg !235, !tbaa !205
  %arrayidx2 = getelementptr inbounds double* %vec1, i64 %indvars.iv, !dbg !235
  %1 = load double* %arrayidx2, align 8, !dbg !235, !tbaa !205
  %add = fadd double %0, %1, !dbg !235
  store double %add, double* %arrayidx2, align 8, !dbg !235, !tbaa !205
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !235
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !235
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !235
  br i1 %exitcond, label %for.end, label %for.body, !dbg !235

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !237
}

; Function Attrs: nounwind optsize uwtable
define void @FAdd(float* nocapture %vec1, float* nocapture %vec2, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec1}, i64 0, metadata !66), !dbg !238
  tail call void @llvm.dbg.value(metadata !{float* %vec2}, i64 0, metadata !67), !dbg !238
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !68), !dbg !238
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !69), !dbg !239
  %cmp6 = icmp sgt i32 %n, 0, !dbg !239
  br i1 %cmp6, label %for.body, label %for.end, !dbg !239

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec2, i64 %indvars.iv, !dbg !239
  %0 = load float* %arrayidx, align 4, !dbg !239, !tbaa !212
  %arrayidx2 = getelementptr inbounds float* %vec1, i64 %indvars.iv, !dbg !239
  %1 = load float* %arrayidx2, align 4, !dbg !239, !tbaa !212
  %add = fadd float %0, %1, !dbg !239
  store float %add, float* %arrayidx2, align 4, !dbg !239, !tbaa !212
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !239
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !239
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !239
  br i1 %exitcond, label %for.end, label %for.body, !dbg !239

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !241
}

; Function Attrs: nounwind optsize uwtable
define void @DCopy(double* nocapture %vec1, double* nocapture %vec2, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %vec1}, i64 0, metadata !72), !dbg !242
  tail call void @llvm.dbg.value(metadata !{double* %vec2}, i64 0, metadata !73), !dbg !242
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !74), !dbg !242
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !75), !dbg !243
  %cmp6 = icmp sgt i32 %n, 0, !dbg !243
  br i1 %cmp6, label %for.body, label %for.end, !dbg !243

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec2, i64 %indvars.iv, !dbg !243
  %0 = load double* %arrayidx, align 8, !dbg !243, !tbaa !205
  %arrayidx2 = getelementptr inbounds double* %vec1, i64 %indvars.iv, !dbg !243
  store double %0, double* %arrayidx2, align 8, !dbg !243, !tbaa !205
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !243
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !243
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !243
  br i1 %exitcond, label %for.end, label %for.body, !dbg !243

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !245
}

; Function Attrs: nounwind optsize uwtable
define void @FCopy(float* nocapture %vec1, float* nocapture %vec2, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec1}, i64 0, metadata !78), !dbg !246
  tail call void @llvm.dbg.value(metadata !{float* %vec2}, i64 0, metadata !79), !dbg !246
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !80), !dbg !246
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !81), !dbg !247
  %cmp6 = icmp sgt i32 %n, 0, !dbg !247
  br i1 %cmp6, label %for.body, label %for.end, !dbg !247

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec2, i64 %indvars.iv, !dbg !247
  %0 = load float* %arrayidx, align 4, !dbg !247, !tbaa !212
  %arrayidx2 = getelementptr inbounds float* %vec1, i64 %indvars.iv, !dbg !247
  store float %0, float* %arrayidx2, align 4, !dbg !247, !tbaa !212
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !247
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !247
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !247
  br i1 %exitcond, label %for.end, label %for.body, !dbg !247

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !249
}

; Function Attrs: nounwind optsize readonly uwtable
define double @DDot(double* nocapture %vec1, double* nocapture %vec2, i32 %n) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %vec1}, i64 0, metadata !86), !dbg !250
  tail call void @llvm.dbg.value(metadata !{double* %vec2}, i64 0, metadata !87), !dbg !250
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !88), !dbg !250
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !89), !dbg !251
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !90), !dbg !252
  %cmp7 = icmp sgt i32 %n, 0, !dbg !252
  br i1 %cmp7, label %for.body, label %for.end, !dbg !252

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %result.08 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %vec1, i64 %indvars.iv, !dbg !252
  %0 = load double* %arrayidx, align 8, !dbg !252, !tbaa !205
  %arrayidx2 = getelementptr inbounds double* %vec2, i64 %indvars.iv, !dbg !252
  %1 = load double* %arrayidx2, align 8, !dbg !252, !tbaa !205
  %mul = fmul double %0, %1, !dbg !252
  %add = fadd double %result.08, %mul, !dbg !252
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !89), !dbg !252
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !252
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !252
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !252
  br i1 %exitcond, label %for.end, label %for.body, !dbg !252

for.end:                                          ; preds = %for.body, %entry
  %result.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  ret double %result.0.lcssa, !dbg !254
}

; Function Attrs: nounwind optsize readonly uwtable
define float @FDot(float* nocapture %vec1, float* nocapture %vec2, i32 %n) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec1}, i64 0, metadata !95), !dbg !255
  tail call void @llvm.dbg.value(metadata !{float* %vec2}, i64 0, metadata !96), !dbg !255
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !97), !dbg !255
  tail call void @llvm.dbg.value(metadata !229, i64 0, metadata !98), !dbg !256
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !99), !dbg !257
  %cmp7 = icmp sgt i32 %n, 0, !dbg !257
  br i1 %cmp7, label %for.body, label %for.end, !dbg !257

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %result.08 = phi float [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %vec1, i64 %indvars.iv, !dbg !257
  %0 = load float* %arrayidx, align 4, !dbg !257, !tbaa !212
  %arrayidx2 = getelementptr inbounds float* %vec2, i64 %indvars.iv, !dbg !257
  %1 = load float* %arrayidx2, align 4, !dbg !257, !tbaa !212
  %mul = fmul float %0, %1, !dbg !257
  %add = fadd float %result.08, %mul, !dbg !257
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !98), !dbg !257
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !257
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !257
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !257
  br i1 %exitcond, label %for.end, label %for.body, !dbg !257

for.end:                                          ; preds = %for.body, %entry
  %result.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.body ]
  ret float %result.0.lcssa, !dbg !259
}

; Function Attrs: nounwind optsize readonly uwtable
define double @DMax(double* nocapture %vec, i32 %n) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !102), !dbg !260
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !103), !dbg !260
  %0 = load double* %vec, align 8, !dbg !261, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !105), !dbg !261
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !104), !dbg !263
  %cmp11 = icmp sgt i32 %n, 1, !dbg !263
  br i1 %cmp11, label %for.body, label %for.end, !dbg !263

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.013 = phi double [ %best.1, %for.body ], [ %0, %entry ]
  %arrayidx1 = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !265
  %1 = load double* %arrayidx1, align 8, !dbg !265, !tbaa !205
  %cmp2 = fcmp ogt double %1, %best.013, !dbg !265
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !105), !dbg !265
  %best.1 = select i1 %cmp2, double %1, double %best.013, !dbg !265
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !263
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !263
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !263
  br i1 %exitcond, label %for.end, label %for.body, !dbg !263

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi double [ %0, %entry ], [ %best.1, %for.body ]
  ret double %best.0.lcssa, !dbg !266
}

; Function Attrs: nounwind optsize readonly uwtable
define float @FMax(float* nocapture %vec, i32 %n) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !108), !dbg !267
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !109), !dbg !267
  %0 = load float* %vec, align 4, !dbg !268, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !111), !dbg !268
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !110), !dbg !269
  %cmp11 = icmp sgt i32 %n, 1, !dbg !269
  br i1 %cmp11, label %for.body, label %for.end, !dbg !269

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.013 = phi float [ %best.1, %for.body ], [ %0, %entry ]
  %arrayidx1 = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !271
  %1 = load float* %arrayidx1, align 4, !dbg !271, !tbaa !212
  %cmp2 = fcmp ogt float %1, %best.013, !dbg !271
  tail call void @llvm.dbg.value(metadata !{float %1}, i64 0, metadata !111), !dbg !271
  %best.1 = select i1 %cmp2, float %1, float %best.013, !dbg !271
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !269
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !269
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !269
  br i1 %exitcond, label %for.end, label %for.body, !dbg !269

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi float [ %0, %entry ], [ %best.1, %for.body ]
  ret float %best.0.lcssa, !dbg !272
}

; Function Attrs: nounwind optsize readonly uwtable
define double @DMin(double* nocapture %vec, i32 %n) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !114), !dbg !273
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !115), !dbg !273
  %0 = load double* %vec, align 8, !dbg !274, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !117), !dbg !274
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !116), !dbg !275
  %cmp11 = icmp sgt i32 %n, 1, !dbg !275
  br i1 %cmp11, label %for.body, label %for.end, !dbg !275

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.013 = phi double [ %best.1, %for.body ], [ %0, %entry ]
  %arrayidx1 = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !277
  %1 = load double* %arrayidx1, align 8, !dbg !277, !tbaa !205
  %cmp2 = fcmp olt double %1, %best.013, !dbg !277
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !117), !dbg !277
  %best.1 = select i1 %cmp2, double %1, double %best.013, !dbg !277
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !275
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !275
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !275
  br i1 %exitcond, label %for.end, label %for.body, !dbg !275

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi double [ %0, %entry ], [ %best.1, %for.body ]
  ret double %best.0.lcssa, !dbg !278
}

; Function Attrs: nounwind optsize readonly uwtable
define float @FMin(float* nocapture %vec, i32 %n) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !120), !dbg !279
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !121), !dbg !279
  %0 = load float* %vec, align 4, !dbg !280, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !123), !dbg !280
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !122), !dbg !281
  %cmp11 = icmp sgt i32 %n, 1, !dbg !281
  br i1 %cmp11, label %for.body, label %for.end, !dbg !281

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.013 = phi float [ %best.1, %for.body ], [ %0, %entry ]
  %arrayidx1 = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !283
  %1 = load float* %arrayidx1, align 4, !dbg !283, !tbaa !212
  %cmp2 = fcmp olt float %1, %best.013, !dbg !283
  tail call void @llvm.dbg.value(metadata !{float %1}, i64 0, metadata !123), !dbg !283
  %best.1 = select i1 %cmp2, float %1, float %best.013, !dbg !283
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !281
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !281
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !281
  br i1 %exitcond, label %for.end, label %for.body, !dbg !281

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi float [ %0, %entry ], [ %best.1, %for.body ]
  ret float %best.0.lcssa, !dbg !284
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @DArgMax(double* nocapture %vec, i32 %n) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !128), !dbg !285
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !129), !dbg !285
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !131), !dbg !286
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !130), !dbg !287
  %cmp9 = icmp sgt i32 %n, 1, !dbg !287
  br i1 %cmp9, label %for.body, label %for.end, !dbg !287

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.011 = phi i32 [ %best.1, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !289
  %0 = load double* %arrayidx, align 8, !dbg !289, !tbaa !205
  %idxprom1 = sext i32 %best.011 to i64, !dbg !289
  %arrayidx2 = getelementptr inbounds double* %vec, i64 %idxprom1, !dbg !289
  %1 = load double* %arrayidx2, align 8, !dbg !289, !tbaa !205
  %cmp3 = fcmp ogt double %0, %1, !dbg !289
  tail call void @llvm.dbg.value(metadata !290, i64 0, metadata !131), !dbg !289
  %2 = trunc i64 %indvars.iv to i32, !dbg !289
  %best.1 = select i1 %cmp3, i32 %2, i32 %best.011, !dbg !289
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !287
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !287
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !287
  br i1 %exitcond, label %for.end, label %for.body, !dbg !287

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi i32 [ 0, %entry ], [ %best.1, %for.body ]
  ret i32 %best.0.lcssa, !dbg !291
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @FArgMax(float* nocapture %vec, i32 %n) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !136), !dbg !292
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !137), !dbg !292
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !139), !dbg !293
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !138), !dbg !294
  %cmp9 = icmp sgt i32 %n, 1, !dbg !294
  br i1 %cmp9, label %for.body, label %for.end, !dbg !294

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.011 = phi i32 [ %best.1, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !296
  %0 = load float* %arrayidx, align 4, !dbg !296, !tbaa !212
  %idxprom1 = sext i32 %best.011 to i64, !dbg !296
  %arrayidx2 = getelementptr inbounds float* %vec, i64 %idxprom1, !dbg !296
  %1 = load float* %arrayidx2, align 4, !dbg !296, !tbaa !212
  %cmp3 = fcmp ogt float %0, %1, !dbg !296
  tail call void @llvm.dbg.value(metadata !290, i64 0, metadata !139), !dbg !296
  %2 = trunc i64 %indvars.iv to i32, !dbg !296
  %best.1 = select i1 %cmp3, i32 %2, i32 %best.011, !dbg !296
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !294
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !294
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !294
  br i1 %exitcond, label %for.end, label %for.body, !dbg !294

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi i32 [ 0, %entry ], [ %best.1, %for.body ]
  ret i32 %best.0.lcssa, !dbg !297
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @DArgMin(double* nocapture %vec, i32 %n) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !142), !dbg !298
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !143), !dbg !298
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !145), !dbg !299
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !144), !dbg !300
  %cmp9 = icmp sgt i32 %n, 1, !dbg !300
  br i1 %cmp9, label %for.body, label %for.end, !dbg !300

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.011 = phi i32 [ %best.1, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !302
  %0 = load double* %arrayidx, align 8, !dbg !302, !tbaa !205
  %idxprom1 = sext i32 %best.011 to i64, !dbg !302
  %arrayidx2 = getelementptr inbounds double* %vec, i64 %idxprom1, !dbg !302
  %1 = load double* %arrayidx2, align 8, !dbg !302, !tbaa !205
  %cmp3 = fcmp olt double %0, %1, !dbg !302
  tail call void @llvm.dbg.value(metadata !290, i64 0, metadata !145), !dbg !302
  %2 = trunc i64 %indvars.iv to i32, !dbg !302
  %best.1 = select i1 %cmp3, i32 %2, i32 %best.011, !dbg !302
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !300
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !300
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !300
  br i1 %exitcond, label %for.end, label %for.body, !dbg !300

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi i32 [ 0, %entry ], [ %best.1, %for.body ]
  ret i32 %best.0.lcssa, !dbg !303
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @FArgMin(float* nocapture %vec, i32 %n) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !148), !dbg !304
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !149), !dbg !304
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !151), !dbg !305
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !150), !dbg !306
  %cmp9 = icmp sgt i32 %n, 1, !dbg !306
  br i1 %cmp9, label %for.body, label %for.end, !dbg !306

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.011 = phi i32 [ %best.1, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !308
  %0 = load float* %arrayidx, align 4, !dbg !308, !tbaa !212
  %idxprom1 = sext i32 %best.011 to i64, !dbg !308
  %arrayidx2 = getelementptr inbounds float* %vec, i64 %idxprom1, !dbg !308
  %1 = load float* %arrayidx2, align 4, !dbg !308, !tbaa !212
  %cmp3 = fcmp olt float %0, %1, !dbg !308
  tail call void @llvm.dbg.value(metadata !290, i64 0, metadata !151), !dbg !308
  %2 = trunc i64 %indvars.iv to i32, !dbg !308
  %best.1 = select i1 %cmp3, i32 %2, i32 %best.011, !dbg !308
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !306
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !306
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !306
  br i1 %exitcond, label %for.end, label %for.body, !dbg !306

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi i32 [ 0, %entry ], [ %best.1, %for.body ]
  ret i32 %best.0.lcssa, !dbg !309
}

; Function Attrs: nounwind optsize uwtable
define void @DNorm(double* nocapture %vec, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !156), !dbg !310
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !157), !dbg !310
  tail call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !311), !dbg !313
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !314), !dbg !313
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !315), !dbg !316
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !317), !dbg !318
  %cmp4.i = icmp sgt i32 %n, 0, !dbg !318
  br i1 %cmp4.i, label %for.body.i, label %if.end, !dbg !318

for.cond2.preheader:                              ; preds = %DSum.exit
  br i1 %cmp4.i, label %for.body4.lr.ph, label %if.end, !dbg !319

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %conv = sitofp i32 %n to double, !dbg !319
  %div5 = fdiv double 1.000000e+00, %conv, !dbg !319
  br label %for.body4, !dbg !319

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %sum.05.i = phi double [ %add.i, %for.body.i ], [ 0.000000e+00, %entry ]
  %arrayidx.i = getelementptr inbounds double* %vec, i64 %indvars.iv.i, !dbg !318
  %0 = load double* %arrayidx.i, align 8, !dbg !318, !tbaa !205
  %add.i = fadd double %sum.05.i, %0, !dbg !318
  tail call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !315), !dbg !318
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !318
  %lftr.wideiv32 = trunc i64 %indvars.iv.next.i to i32, !dbg !318
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %n, !dbg !318
  br i1 %exitcond33, label %DSum.exit, label %for.body.i, !dbg !318

DSum.exit:                                        ; preds = %for.body.i
  tail call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !159), !dbg !312
  %cmp = fcmp une double %add.i, 0.000000e+00, !dbg !321
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !158), !dbg !322
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !dbg !321

for.body:                                         ; preds = %DSum.exit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %DSum.exit ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !322
  %1 = load double* %arrayidx, align 8, !dbg !322, !tbaa !205
  %div = fdiv double %1, %add.i, !dbg !322
  store double %div, double* %arrayidx, align 8, !dbg !322, !tbaa !205
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !322
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !322
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !322
  br i1 %exitcond, label %if.end, label %for.body, !dbg !322

for.body4:                                        ; preds = %for.body4, %for.body4.lr.ph
  %indvars.iv28 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next29, %for.body4 ]
  %arrayidx7 = getelementptr inbounds double* %vec, i64 %indvars.iv28, !dbg !319
  store double %div5, double* %arrayidx7, align 8, !dbg !319, !tbaa !205
  %indvars.iv.next29 = add i64 %indvars.iv28, 1, !dbg !319
  %lftr.wideiv30 = trunc i64 %indvars.iv.next29 to i32, !dbg !319
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %n, !dbg !319
  br i1 %exitcond31, label %if.end, label %for.body4, !dbg !319

if.end:                                           ; preds = %entry, %for.cond2.preheader, %for.body4, %for.body
  ret void, !dbg !324
}

; Function Attrs: nounwind optsize uwtable
define void @FNorm(float* nocapture %vec, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !164), !dbg !325
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !165), !dbg !325
  tail call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !326), !dbg !328
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !329), !dbg !328
  tail call void @llvm.dbg.value(metadata !229, i64 0, metadata !330), !dbg !331
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !332), !dbg !333
  %cmp4.i = icmp sgt i32 %n, 0, !dbg !333
  br i1 %cmp4.i, label %for.body.i, label %if.end, !dbg !333

for.cond4.preheader:                              ; preds = %FSum.exit
  br i1 %cmp4.i, label %for.body7.lr.ph, label %if.end, !dbg !334

for.body7.lr.ph:                                  ; preds = %for.cond4.preheader
  %conv8 = sitofp i32 %n to float, !dbg !334
  %conv11 = fdiv float 1.000000e+00, %conv8, !dbg !334
  br label %for.body7, !dbg !334

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %sum.05.i = phi float [ %add.i, %for.body.i ], [ 0.000000e+00, %entry ]
  %arrayidx.i = getelementptr inbounds float* %vec, i64 %indvars.iv.i, !dbg !333
  %0 = load float* %arrayidx.i, align 4, !dbg !333, !tbaa !212
  %add.i = fadd float %sum.05.i, %0, !dbg !333
  tail call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !330), !dbg !333
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !333
  %lftr.wideiv38 = trunc i64 %indvars.iv.next.i to i32, !dbg !333
  %exitcond39 = icmp eq i32 %lftr.wideiv38, %n, !dbg !333
  br i1 %exitcond39, label %FSum.exit, label %for.body.i, !dbg !333

FSum.exit:                                        ; preds = %for.body.i
  tail call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !167), !dbg !327
  %cmp = fcmp une float %add.i, 0.000000e+00, !dbg !336
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !166), !dbg !337
  br i1 %cmp, label %for.body, label %for.cond4.preheader, !dbg !336

for.body:                                         ; preds = %FSum.exit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %FSum.exit ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !337
  %1 = load float* %arrayidx, align 4, !dbg !337, !tbaa !212
  %div = fdiv float %1, %add.i, !dbg !337
  store float %div, float* %arrayidx, align 4, !dbg !337, !tbaa !212
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !337
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !337
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !337
  br i1 %exitcond, label %if.end, label %for.body, !dbg !337

for.body7:                                        ; preds = %for.body7, %for.body7.lr.ph
  %indvars.iv34 = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next35, %for.body7 ]
  %arrayidx13 = getelementptr inbounds float* %vec, i64 %indvars.iv34, !dbg !334
  store float %conv11, float* %arrayidx13, align 4, !dbg !334, !tbaa !212
  %indvars.iv.next35 = add i64 %indvars.iv34, 1, !dbg !334
  %lftr.wideiv36 = trunc i64 %indvars.iv.next35 to i32, !dbg !334
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %n, !dbg !334
  br i1 %exitcond37, label %if.end, label %for.body7, !dbg !334

if.end:                                           ; preds = %entry, %for.cond4.preheader, %for.body7, %for.body
  ret void, !dbg !339
}

; Function Attrs: nounwind optsize uwtable
define void @DLog(double* nocapture %vec, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !170), !dbg !340
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !171), !dbg !340
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !172), !dbg !341
  %cmp14 = icmp sgt i32 %n, 0, !dbg !341
  br i1 %cmp14, label %for.body, label %for.end, !dbg !341

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !343
  %0 = load double* %arrayidx, align 8, !dbg !343, !tbaa !205
  %cmp1 = fcmp ogt double %0, 0.000000e+00, !dbg !343
  br i1 %cmp1, label %if.then, label %for.inc, !dbg !343

if.then:                                          ; preds = %for.body
  %call = tail call double @log(double %0) #4, !dbg !343
  br label %for.inc, !dbg !343

for.inc:                                          ; preds = %for.body, %if.then
  %storemerge = phi double [ %call, %if.then ], [ 0xFFEFFFFFFFFFFFFF, %for.body ]
  store double %storemerge, double* %arrayidx, align 8, !dbg !343, !tbaa !205
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !341
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !341
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !341
  br i1 %exitcond, label %for.end, label %for.body, !dbg !341

for.end:                                          ; preds = %for.inc, %entry
  ret void, !dbg !344
}

; Function Attrs: nounwind optsize
declare double @log(double) #2

; Function Attrs: nounwind optsize uwtable
define void @FLog(float* nocapture %vec, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !175), !dbg !345
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !176), !dbg !345
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !177), !dbg !346
  %cmp17 = icmp sgt i32 %n, 0, !dbg !346
  br i1 %cmp17, label %for.body, label %for.end, !dbg !346

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !348
  %0 = load float* %arrayidx, align 4, !dbg !348, !tbaa !212
  %cmp1 = fcmp ogt float %0, 0.000000e+00, !dbg !348
  br i1 %cmp1, label %if.then, label %for.inc, !dbg !348

if.then:                                          ; preds = %for.body
  %conv = fpext float %0 to double, !dbg !348
  %call = tail call double @log(double %conv) #4, !dbg !348
  %conv6 = fptrunc double %call to float, !dbg !348
  br label %for.inc, !dbg !348

for.inc:                                          ; preds = %for.body, %if.then
  %storemerge = phi float [ %conv6, %if.then ], [ 0xC7EFFFFFE0000000, %for.body ]
  store float %storemerge, float* %arrayidx, align 4, !dbg !348, !tbaa !212
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !346
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !346
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !346
  br i1 %exitcond, label %for.end, label %for.body, !dbg !346

for.end:                                          ; preds = %for.inc, %entry
  ret void, !dbg !349
}

; Function Attrs: nounwind optsize uwtable
define void @DExp(double* nocapture %vec, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !180), !dbg !350
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !181), !dbg !350
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !182), !dbg !351
  %cmp7 = icmp sgt i32 %n, 0, !dbg !351
  br i1 %cmp7, label %for.body, label %for.end, !dbg !351

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv, !dbg !351
  %0 = load double* %arrayidx, align 8, !dbg !351, !tbaa !205
  %call = tail call double @exp(double %0) #4, !dbg !351
  store double %call, double* %arrayidx, align 8, !dbg !351, !tbaa !205
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !351
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !351
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !351
  br i1 %exitcond, label %for.end, label %for.body, !dbg !351

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !353
}

; Function Attrs: nounwind optsize
declare double @exp(double) #2

; Function Attrs: nounwind optsize uwtable
define void @FExp(float* nocapture %vec, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !185), !dbg !354
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !186), !dbg !354
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !187), !dbg !355
  %cmp8 = icmp sgt i32 %n, 0, !dbg !355
  br i1 %cmp8, label %for.body, label %for.end, !dbg !355

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv, !dbg !355
  %0 = load float* %arrayidx, align 4, !dbg !355, !tbaa !212
  %conv = fpext float %0 to double, !dbg !355
  %call = tail call double @exp(double %conv) #4, !dbg !355
  %conv1 = fptrunc double %call to float, !dbg !355
  store float %conv1, float* %arrayidx, align 4, !dbg !355, !tbaa !212
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !355
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !355
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !355
  br i1 %exitcond, label %for.end, label %for.body, !dbg !355

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !357
}

; Function Attrs: nounwind optsize uwtable
define double @DLogSum(double* nocapture %vec, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !190), !dbg !358
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !191), !dbg !358
  tail call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !359), !dbg !361
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !362), !dbg !361
  %0 = load double* %vec, align 8, !dbg !363, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !364), !dbg !363
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !365), !dbg !366
  %cmp11.i = icmp sgt i32 %n, 1, !dbg !366
  br i1 %cmp11.i, label %for.body.i, label %DMax.exit, !dbg !366

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 1, %entry ]
  %best.013.i = phi double [ %best.1.i, %for.body.i ], [ %0, %entry ]
  %arrayidx1.i = getelementptr inbounds double* %vec, i64 %indvars.iv.i, !dbg !367
  %1 = load double* %arrayidx1.i, align 8, !dbg !367, !tbaa !205
  %cmp2.i = fcmp ogt double %1, %best.013.i, !dbg !367
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !364), !dbg !367
  %best.1.i = select i1 %cmp2.i, double %1, double %best.013.i, !dbg !367
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !366
  %lftr.wideiv21 = trunc i64 %indvars.iv.next.i to i32, !dbg !366
  %exitcond22 = icmp eq i32 %lftr.wideiv21, %n, !dbg !366
  br i1 %exitcond22, label %DMax.exit, label %for.body.i, !dbg !366

DMax.exit:                                        ; preds = %for.body.i, %entry
  %best.0.lcssa.i = phi double [ %0, %entry ], [ %best.1.i, %for.body.i ]
  tail call void @llvm.dbg.value(metadata !{double %best.0.lcssa.i}, i64 0, metadata !193), !dbg !360
  tail call void @llvm.dbg.value(metadata !223, i64 0, metadata !194), !dbg !368
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !192), !dbg !369
  %cmp18 = icmp sgt i32 %n, 0, !dbg !369
  br i1 %cmp18, label %for.body.lr.ph, label %for.end, !dbg !369

for.body.lr.ph:                                   ; preds = %DMax.exit
  %sub = fadd double %best.0.lcssa.i, -5.000000e+01, !dbg !371
  br label %for.body, !dbg !369

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi double [ %0, %for.body.lr.ph ], [ %.pre, %for.inc.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %phitmp, %for.inc.for.body_crit_edge ]
  %sum.020 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %sum.1, %for.inc.for.body_crit_edge ]
  %cmp1 = fcmp ogt double %2, %sub, !dbg !371
  br i1 %cmp1, label %if.then, label %for.inc, !dbg !371

if.then:                                          ; preds = %for.body
  %sub4 = fsub double %2, %best.0.lcssa.i, !dbg !372
  %call5 = tail call double @exp(double %sub4) #4, !dbg !372
  %add = fadd double %sum.020, %call5, !dbg !372
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !194), !dbg !372
  br label %for.inc, !dbg !372

for.inc:                                          ; preds = %for.body, %if.then
  %sum.1 = phi double [ %add, %if.then ], [ %sum.020, %for.body ]
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !369
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !369
  br i1 %exitcond, label %for.end, label %for.inc.for.body_crit_edge, !dbg !369

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %arrayidx.phi.trans.insert = getelementptr inbounds double* %vec, i64 %indvars.iv
  %.pre = load double* %arrayidx.phi.trans.insert, align 8, !dbg !371, !tbaa !205
  %phitmp = add i64 %indvars.iv, 1, !dbg !369
  br label %for.body, !dbg !369

for.end:                                          ; preds = %for.inc, %DMax.exit
  %sum.0.lcssa = phi double [ 0.000000e+00, %DMax.exit ], [ %sum.1, %for.inc ]
  %call6 = tail call double @log(double %sum.0.lcssa) #4, !dbg !373
  %add7 = fadd double %best.0.lcssa.i, %call6, !dbg !373
  tail call void @llvm.dbg.value(metadata !{double %add7}, i64 0, metadata !194), !dbg !373
  ret double %add7, !dbg !374
}

; Function Attrs: nounwind optsize uwtable
define float @FLogSum(float* nocapture %vec, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !197), !dbg !375
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !198), !dbg !375
  tail call void @llvm.dbg.value(metadata !{float* %vec}, i64 0, metadata !376), !dbg !378
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !379), !dbg !378
  %0 = load float* %vec, align 4, !dbg !380, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !381), !dbg !380
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !382), !dbg !383
  %cmp11.i = icmp sgt i32 %n, 1, !dbg !383
  br i1 %cmp11.i, label %for.body.i, label %FMax.exit, !dbg !383

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 1, %entry ]
  %best.013.i = phi float [ %best.1.i, %for.body.i ], [ %0, %entry ]
  %arrayidx1.i = getelementptr inbounds float* %vec, i64 %indvars.iv.i, !dbg !384
  %1 = load float* %arrayidx1.i, align 4, !dbg !384, !tbaa !212
  %cmp2.i = fcmp ogt float %1, %best.013.i, !dbg !384
  tail call void @llvm.dbg.value(metadata !{float %1}, i64 0, metadata !381), !dbg !384
  %best.1.i = select i1 %cmp2.i, float %1, float %best.013.i, !dbg !384
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !383
  %lftr.wideiv29 = trunc i64 %indvars.iv.next.i to i32, !dbg !383
  %exitcond30 = icmp eq i32 %lftr.wideiv29, %n, !dbg !383
  br i1 %exitcond30, label %FMax.exit, label %for.body.i, !dbg !383

FMax.exit:                                        ; preds = %for.body.i, %entry
  %best.0.lcssa.i = phi float [ %0, %entry ], [ %best.1.i, %for.body.i ]
  tail call void @llvm.dbg.value(metadata !{float %best.0.lcssa.i}, i64 0, metadata !200), !dbg !377
  tail call void @llvm.dbg.value(metadata !229, i64 0, metadata !201), !dbg !385
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !199), !dbg !386
  %cmp26 = icmp sgt i32 %n, 0, !dbg !386
  %conv1 = fpext float %best.0.lcssa.i to double, !dbg !388
  br i1 %cmp26, label %for.body.lr.ph, label %for.end, !dbg !386

for.body.lr.ph:                                   ; preds = %FMax.exit
  %sub = fadd double %conv1, -5.000000e+01, !dbg !388
  br label %for.body, !dbg !386

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi float [ %0, %for.body.lr.ph ], [ %.pre, %for.inc.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %phitmp, %for.inc.for.body_crit_edge ]
  %sum.028 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %sum.1, %for.inc.for.body_crit_edge ]
  %conv = fpext float %2 to double, !dbg !388
  %cmp2 = fcmp ogt double %conv, %sub, !dbg !388
  br i1 %cmp2, label %if.then, label %for.inc, !dbg !388

if.then:                                          ; preds = %for.body
  %sub6 = fsub float %2, %best.0.lcssa.i, !dbg !389
  %conv7 = fpext float %sub6 to double, !dbg !389
  %call8 = tail call double @exp(double %conv7) #4, !dbg !389
  %conv9 = fpext float %sum.028 to double, !dbg !389
  %add = fadd double %conv9, %call8, !dbg !389
  %conv10 = fptrunc double %add to float, !dbg !389
  tail call void @llvm.dbg.value(metadata !{float %conv10}, i64 0, metadata !201), !dbg !389
  br label %for.inc, !dbg !389

for.inc:                                          ; preds = %for.body, %if.then
  %sum.1 = phi float [ %conv10, %if.then ], [ %sum.028, %for.body ]
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !386
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !386
  br i1 %exitcond, label %for.end, label %for.inc.for.body_crit_edge, !dbg !386

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %arrayidx.phi.trans.insert = getelementptr inbounds float* %vec, i64 %indvars.iv
  %.pre = load float* %arrayidx.phi.trans.insert, align 4, !dbg !388, !tbaa !212
  %phitmp = add i64 %indvars.iv, 1, !dbg !386
  br label %for.body, !dbg !386

for.end:                                          ; preds = %FMax.exit, %for.inc
  %sum.0.lcssa = phi float [ %sum.1, %for.inc ], [ 0.000000e+00, %FMax.exit ]
  %conv11 = fpext float %sum.0.lcssa to double, !dbg !390
  %call12 = tail call double @log(double %conv11) #4, !dbg !390
  %add14 = fadd double %conv1, %call12, !dbg !390
  %conv15 = fptrunc double %add14 to float, !dbg !390
  tail call void @llvm.dbg.value(metadata !{float %conv15}, i64 0, metadata !201), !dbg !390
  ret float %conv15, !dbg !391
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !16, metadata !26, metadata !32, metadata !38, metadata !46, metadata !54, metadata !62, metadata !70, metadata !76, metadata !82, metadata !91, metadata !100, metadata !106, metadata !112, metadata !118, metadata !124, metadata !132, metadata !140, metadata !146, metadata !152, metadata !160, metadata !168, metadata !173, metadata !178, metadata !183, metadata !188, metadata !195}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSet", metadata !"DSet", metadata !"", i32 32, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, i32, double)* @DSet, null, null, metadata !11, i32 33} ; [ DW_TAG_subprogram ] [line 32] [def] [scope 33] [DSet]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !10, metadata !9}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!9 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!11 = metadata !{metadata !12, metadata !13, metadata !14, metadata !15}
!12 = metadata !{i32 786689, metadata !4, metadata !"vec", metadata !5, i32 16777248, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 32]
!13 = metadata !{i32 786689, metadata !4, metadata !"n", metadata !5, i32 33554464, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 32]
!14 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 50331680, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 32]
!15 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 34, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 34]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FSet", metadata !"FSet", metadata !"", i32 39, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, i32, float)* @FSet, null, null, metadata !21, i32 40} ; [ DW_TAG_subprogram ] [line 39] [def] [scope 40] [FSet]
!17 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{null, metadata !19, metadata !10, metadata !20}
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!20 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25}
!22 = metadata !{i32 786689, metadata !16, metadata !"vec", metadata !5, i32 16777255, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 39]
!23 = metadata !{i32 786689, metadata !16, metadata !"n", metadata !5, i32 33554471, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 39]
!24 = metadata !{i32 786689, metadata !16, metadata !"value", metadata !5, i32 50331687, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 39]
!25 = metadata !{i32 786688, metadata !16, metadata !"x", metadata !5, i32 41, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 41]
!26 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DScale", metadata !"DScale", metadata !"", i32 46, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, i32, double)* @DScale, null, null, metadata !27, i32 47} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 47] [DScale]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31}
!28 = metadata !{i32 786689, metadata !26, metadata !"vec", metadata !5, i32 16777262, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 46]
!29 = metadata !{i32 786689, metadata !26, metadata !"n", metadata !5, i32 33554478, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 46]
!30 = metadata !{i32 786689, metadata !26, metadata !"scale", metadata !5, i32 50331694, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [scale] [line 46]
!31 = metadata !{i32 786688, metadata !26, metadata !"x", metadata !5, i32 48, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 48]
!32 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FScale", metadata !"FScale", metadata !"", i32 53, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, i32, float)* @FScale, null, null, metadata !33, i32 54} ; [ DW_TAG_subprogram ] [line 53] [def] [scope 54] [FScale]
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37}
!34 = metadata !{i32 786689, metadata !32, metadata !"vec", metadata !5, i32 16777269, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 53]
!35 = metadata !{i32 786689, metadata !32, metadata !"n", metadata !5, i32 33554485, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 53]
!36 = metadata !{i32 786689, metadata !32, metadata !"scale", metadata !5, i32 50331701, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [scale] [line 53]
!37 = metadata !{i32 786688, metadata !32, metadata !"x", metadata !5, i32 55, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 55]
!38 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSum", metadata !"DSum", metadata !"", i32 60, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double*, i32)* @DSum, null, null, metadata !41, i32 61} ; [ DW_TAG_subprogram ] [line 60] [def] [scope 61] [DSum]
!39 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{metadata !9, metadata !8, metadata !10}
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !45}
!42 = metadata !{i32 786689, metadata !38, metadata !"vec", metadata !5, i32 16777276, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 60]
!43 = metadata !{i32 786689, metadata !38, metadata !"n", metadata !5, i32 33554492, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 60]
!44 = metadata !{i32 786688, metadata !38, metadata !"sum", metadata !5, i32 62, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 62]
!45 = metadata !{i32 786688, metadata !38, metadata !"x", metadata !5, i32 63, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 63]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FSum", metadata !"FSum", metadata !"", i32 69, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float*, i32)* @FSum, null, null, metadata !49, i32 70} ; [ DW_TAG_subprogram ] [line 69] [def] [scope 70] [FSum]
!47 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{metadata !20, metadata !19, metadata !10}
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53}
!50 = metadata !{i32 786689, metadata !46, metadata !"vec", metadata !5, i32 16777285, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 69]
!51 = metadata !{i32 786689, metadata !46, metadata !"n", metadata !5, i32 33554501, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 69]
!52 = metadata !{i32 786688, metadata !46, metadata !"sum", metadata !5, i32 71, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 71]
!53 = metadata !{i32 786688, metadata !46, metadata !"x", metadata !5, i32 72, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 72]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DAdd", metadata !"DAdd", metadata !"", i32 78, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, double*, i32)* @DAdd, null, null, metadata !57, i32 79} ; [ DW_TAG_subprogram ] [line 78] [def] [scope 79] [DAdd]
!55 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{null, metadata !8, metadata !8, metadata !10}
!57 = metadata !{metadata !58, metadata !59, metadata !60, metadata !61}
!58 = metadata !{i32 786689, metadata !54, metadata !"vec1", metadata !5, i32 16777294, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec1] [line 78]
!59 = metadata !{i32 786689, metadata !54, metadata !"vec2", metadata !5, i32 33554510, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec2] [line 78]
!60 = metadata !{i32 786689, metadata !54, metadata !"n", metadata !5, i32 50331726, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 78]
!61 = metadata !{i32 786688, metadata !54, metadata !"x", metadata !5, i32 80, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 80]
!62 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FAdd", metadata !"FAdd", metadata !"", i32 85, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, float*, i32)* @FAdd, null, null, metadata !65, i32 86} ; [ DW_TAG_subprogram ] [line 85] [def] [scope 86] [FAdd]
!63 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{null, metadata !19, metadata !19, metadata !10}
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !69}
!66 = metadata !{i32 786689, metadata !62, metadata !"vec1", metadata !5, i32 16777301, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec1] [line 85]
!67 = metadata !{i32 786689, metadata !62, metadata !"vec2", metadata !5, i32 33554517, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec2] [line 85]
!68 = metadata !{i32 786689, metadata !62, metadata !"n", metadata !5, i32 50331733, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 85]
!69 = metadata !{i32 786688, metadata !62, metadata !"x", metadata !5, i32 87, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 87]
!70 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DCopy", metadata !"DCopy", metadata !"", i32 92, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, double*, i32)* @DCopy, null, null, metadata !71, i32 93} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 93] [DCopy]
!71 = metadata !{metadata !72, metadata !73, metadata !74, metadata !75}
!72 = metadata !{i32 786689, metadata !70, metadata !"vec1", metadata !5, i32 16777308, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec1] [line 92]
!73 = metadata !{i32 786689, metadata !70, metadata !"vec2", metadata !5, i32 33554524, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec2] [line 92]
!74 = metadata !{i32 786689, metadata !70, metadata !"n", metadata !5, i32 50331740, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 92]
!75 = metadata !{i32 786688, metadata !70, metadata !"x", metadata !5, i32 94, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 94]
!76 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FCopy", metadata !"FCopy", metadata !"", i32 99, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, float*, i32)* @FCopy, null, null, metadata !77, i32 100} ; [ DW_TAG_subprogram ] [line 99] [def] [scope 100] [FCopy]
!77 = metadata !{metadata !78, metadata !79, metadata !80, metadata !81}
!78 = metadata !{i32 786689, metadata !76, metadata !"vec1", metadata !5, i32 16777315, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec1] [line 99]
!79 = metadata !{i32 786689, metadata !76, metadata !"vec2", metadata !5, i32 33554531, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec2] [line 99]
!80 = metadata !{i32 786689, metadata !76, metadata !"n", metadata !5, i32 50331747, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 99]
!81 = metadata !{i32 786688, metadata !76, metadata !"x", metadata !5, i32 101, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 101]
!82 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DDot", metadata !"DDot", metadata !"", i32 106, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double*, double*, i32)* @DDot, null, null, metadata !85, i32 107} ; [ DW_TAG_subprogram ] [line 106] [def] [scope 107] [DDot]
!83 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{metadata !9, metadata !8, metadata !8, metadata !10}
!85 = metadata !{metadata !86, metadata !87, metadata !88, metadata !89, metadata !90}
!86 = metadata !{i32 786689, metadata !82, metadata !"vec1", metadata !5, i32 16777322, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec1] [line 106]
!87 = metadata !{i32 786689, metadata !82, metadata !"vec2", metadata !5, i32 33554538, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec2] [line 106]
!88 = metadata !{i32 786689, metadata !82, metadata !"n", metadata !5, i32 50331754, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 106]
!89 = metadata !{i32 786688, metadata !82, metadata !"result", metadata !5, i32 108, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 108]
!90 = metadata !{i32 786688, metadata !82, metadata !"x", metadata !5, i32 109, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 109]
!91 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FDot", metadata !"FDot", metadata !"", i32 115, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float*, float*, i32)* @FDot, null, null, metadata !94, i32 116} ; [ DW_TAG_subprogram ] [line 115] [def] [scope 116] [FDot]
!92 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!93 = metadata !{metadata !20, metadata !19, metadata !19, metadata !10}
!94 = metadata !{metadata !95, metadata !96, metadata !97, metadata !98, metadata !99}
!95 = metadata !{i32 786689, metadata !91, metadata !"vec1", metadata !5, i32 16777331, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec1] [line 115]
!96 = metadata !{i32 786689, metadata !91, metadata !"vec2", metadata !5, i32 33554547, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec2] [line 115]
!97 = metadata !{i32 786689, metadata !91, metadata !"n", metadata !5, i32 50331763, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 115]
!98 = metadata !{i32 786688, metadata !91, metadata !"result", metadata !5, i32 117, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 117]
!99 = metadata !{i32 786688, metadata !91, metadata !"x", metadata !5, i32 118, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 118]
!100 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DMax", metadata !"DMax", metadata !"", i32 124, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double*, i32)* @DMax, null, null, metadata !101, i32 125} ; [ DW_TAG_subprogram ] [line 124] [def] [scope 125] [DMax]
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105}
!102 = metadata !{i32 786689, metadata !100, metadata !"vec", metadata !5, i32 16777340, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 124]
!103 = metadata !{i32 786689, metadata !100, metadata !"n", metadata !5, i32 33554556, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 124]
!104 = metadata !{i32 786688, metadata !100, metadata !"i", metadata !5, i32 126, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 126]
!105 = metadata !{i32 786688, metadata !100, metadata !"best", metadata !5, i32 127, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 127]
!106 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FMax", metadata !"FMax", metadata !"", i32 136, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float*, i32)* @FMax, null, null, metadata !107, i32 137} ; [ DW_TAG_subprogram ] [line 136] [def] [scope 137] [FMax]
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111}
!108 = metadata !{i32 786689, metadata !106, metadata !"vec", metadata !5, i32 16777352, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 136]
!109 = metadata !{i32 786689, metadata !106, metadata !"n", metadata !5, i32 33554568, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 136]
!110 = metadata !{i32 786688, metadata !106, metadata !"i", metadata !5, i32 138, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 138]
!111 = metadata !{i32 786688, metadata !106, metadata !"best", metadata !5, i32 139, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 139]
!112 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DMin", metadata !"DMin", metadata !"", i32 148, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double*, i32)* @DMin, null, null, metadata !113, i32 149} ; [ DW_TAG_subprogram ] [line 148] [def] [scope 149] [DMin]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117}
!114 = metadata !{i32 786689, metadata !112, metadata !"vec", metadata !5, i32 16777364, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 148]
!115 = metadata !{i32 786689, metadata !112, metadata !"n", metadata !5, i32 33554580, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 148]
!116 = metadata !{i32 786688, metadata !112, metadata !"i", metadata !5, i32 150, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 150]
!117 = metadata !{i32 786688, metadata !112, metadata !"best", metadata !5, i32 151, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 151]
!118 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FMin", metadata !"FMin", metadata !"", i32 160, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float*, i32)* @FMin, null, null, metadata !119, i32 161} ; [ DW_TAG_subprogram ] [line 160] [def] [scope 161] [FMin]
!119 = metadata !{metadata !120, metadata !121, metadata !122, metadata !123}
!120 = metadata !{i32 786689, metadata !118, metadata !"vec", metadata !5, i32 16777376, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 160]
!121 = metadata !{i32 786689, metadata !118, metadata !"n", metadata !5, i32 33554592, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 160]
!122 = metadata !{i32 786688, metadata !118, metadata !"i", metadata !5, i32 162, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 162]
!123 = metadata !{i32 786688, metadata !118, metadata !"best", metadata !5, i32 163, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 163]
!124 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DArgMax", metadata !"DArgMax", metadata !"", i32 172, metadata !125, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double*, i32)* @DArgMax, null, null, metadata !127, i32 173} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 173] [DArgMax]
!125 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!126 = metadata !{metadata !10, metadata !8, metadata !10}
!127 = metadata !{metadata !128, metadata !129, metadata !130, metadata !131}
!128 = metadata !{i32 786689, metadata !124, metadata !"vec", metadata !5, i32 16777388, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 172]
!129 = metadata !{i32 786689, metadata !124, metadata !"n", metadata !5, i32 33554604, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 172]
!130 = metadata !{i32 786688, metadata !124, metadata !"i", metadata !5, i32 174, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 174]
!131 = metadata !{i32 786688, metadata !124, metadata !"best", metadata !5, i32 175, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 175]
!132 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FArgMax", metadata !"FArgMax", metadata !"", i32 183, metadata !133, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float*, i32)* @FArgMax, null, null, metadata !135, i32 184} ; [ DW_TAG_subprogram ] [line 183] [def] [scope 184] [FArgMax]
!133 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!134 = metadata !{metadata !10, metadata !19, metadata !10}
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139}
!136 = metadata !{i32 786689, metadata !132, metadata !"vec", metadata !5, i32 16777399, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 183]
!137 = metadata !{i32 786689, metadata !132, metadata !"n", metadata !5, i32 33554615, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 183]
!138 = metadata !{i32 786688, metadata !132, metadata !"i", metadata !5, i32 185, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 185]
!139 = metadata !{i32 786688, metadata !132, metadata !"best", metadata !5, i32 186, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 186]
!140 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DArgMin", metadata !"DArgMin", metadata !"", i32 194, metadata !125, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double*, i32)* @DArgMin, null, null, metadata !141, i32 195} ; [ DW_TAG_subprogram ] [line 194] [def] [scope 195] [DArgMin]
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145}
!142 = metadata !{i32 786689, metadata !140, metadata !"vec", metadata !5, i32 16777410, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 194]
!143 = metadata !{i32 786689, metadata !140, metadata !"n", metadata !5, i32 33554626, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 194]
!144 = metadata !{i32 786688, metadata !140, metadata !"i", metadata !5, i32 196, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 196]
!145 = metadata !{i32 786688, metadata !140, metadata !"best", metadata !5, i32 197, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 197]
!146 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FArgMin", metadata !"FArgMin", metadata !"", i32 204, metadata !133, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float*, i32)* @FArgMin, null, null, metadata !147, i32 205} ; [ DW_TAG_subprogram ] [line 204] [def] [scope 205] [FArgMin]
!147 = metadata !{metadata !148, metadata !149, metadata !150, metadata !151}
!148 = metadata !{i32 786689, metadata !146, metadata !"vec", metadata !5, i32 16777420, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 204]
!149 = metadata !{i32 786689, metadata !146, metadata !"n", metadata !5, i32 33554636, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 204]
!150 = metadata !{i32 786688, metadata !146, metadata !"i", metadata !5, i32 206, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 206]
!151 = metadata !{i32 786688, metadata !146, metadata !"best", metadata !5, i32 207, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 207]
!152 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DNorm", metadata !"DNorm", metadata !"", i32 215, metadata !153, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, i32)* @DNorm, null, null, metadata !155, i32 216} ; [ DW_TAG_subprogram ] [line 215] [def] [scope 216] [DNorm]
!153 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!154 = metadata !{null, metadata !8, metadata !10}
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159}
!156 = metadata !{i32 786689, metadata !152, metadata !"vec", metadata !5, i32 16777431, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 215]
!157 = metadata !{i32 786689, metadata !152, metadata !"n", metadata !5, i32 33554647, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 215]
!158 = metadata !{i32 786688, metadata !152, metadata !"x", metadata !5, i32 217, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 217]
!159 = metadata !{i32 786688, metadata !152, metadata !"sum", metadata !5, i32 218, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 218]
!160 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FNorm", metadata !"FNorm", metadata !"", i32 226, metadata !161, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, i32)* @FNorm, null, null, metadata !163, i32 227} ; [ DW_TAG_subprogram ] [line 226] [def] [scope 227] [FNorm]
!161 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !162, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!162 = metadata !{null, metadata !19, metadata !10}
!163 = metadata !{metadata !164, metadata !165, metadata !166, metadata !167}
!164 = metadata !{i32 786689, metadata !160, metadata !"vec", metadata !5, i32 16777442, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 226]
!165 = metadata !{i32 786689, metadata !160, metadata !"n", metadata !5, i32 33554658, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 226]
!166 = metadata !{i32 786688, metadata !160, metadata !"x", metadata !5, i32 228, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 228]
!167 = metadata !{i32 786688, metadata !160, metadata !"sum", metadata !5, i32 229, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 229]
!168 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DLog", metadata !"DLog", metadata !"", i32 237, metadata !153, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, i32)* @DLog, null, null, metadata !169, i32 238} ; [ DW_TAG_subprogram ] [line 237] [def] [scope 238] [DLog]
!169 = metadata !{metadata !170, metadata !171, metadata !172}
!170 = metadata !{i32 786689, metadata !168, metadata !"vec", metadata !5, i32 16777453, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 237]
!171 = metadata !{i32 786689, metadata !168, metadata !"n", metadata !5, i32 33554669, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 237]
!172 = metadata !{i32 786688, metadata !168, metadata !"x", metadata !5, i32 239, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 239]
!173 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FLog", metadata !"FLog", metadata !"", i32 246, metadata !161, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, i32)* @FLog, null, null, metadata !174, i32 247} ; [ DW_TAG_subprogram ] [line 246] [def] [scope 247] [FLog]
!174 = metadata !{metadata !175, metadata !176, metadata !177}
!175 = metadata !{i32 786689, metadata !173, metadata !"vec", metadata !5, i32 16777462, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 246]
!176 = metadata !{i32 786689, metadata !173, metadata !"n", metadata !5, i32 33554678, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 246]
!177 = metadata !{i32 786688, metadata !173, metadata !"x", metadata !5, i32 248, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 248]
!178 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DExp", metadata !"DExp", metadata !"", i32 255, metadata !153, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, i32)* @DExp, null, null, metadata !179, i32 256} ; [ DW_TAG_subprogram ] [line 255] [def] [scope 256] [DExp]
!179 = metadata !{metadata !180, metadata !181, metadata !182}
!180 = metadata !{i32 786689, metadata !178, metadata !"vec", metadata !5, i32 16777471, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 255]
!181 = metadata !{i32 786689, metadata !178, metadata !"n", metadata !5, i32 33554687, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 255]
!182 = metadata !{i32 786688, metadata !178, metadata !"x", metadata !5, i32 257, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 257]
!183 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FExp", metadata !"FExp", metadata !"", i32 262, metadata !161, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, i32)* @FExp, null, null, metadata !184, i32 263} ; [ DW_TAG_subprogram ] [line 262] [def] [scope 263] [FExp]
!184 = metadata !{metadata !185, metadata !186, metadata !187}
!185 = metadata !{i32 786689, metadata !183, metadata !"vec", metadata !5, i32 16777478, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 262]
!186 = metadata !{i32 786689, metadata !183, metadata !"n", metadata !5, i32 33554694, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 262]
!187 = metadata !{i32 786688, metadata !183, metadata !"x", metadata !5, i32 264, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 264]
!188 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DLogSum", metadata !"DLogSum", metadata !"", i32 269, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double*, i32)* @DLogSum, null, null, metadata !189, i32 270} ; [ DW_TAG_subprogram ] [line 269] [def] [scope 270] [DLogSum]
!189 = metadata !{metadata !190, metadata !191, metadata !192, metadata !193, metadata !194}
!190 = metadata !{i32 786689, metadata !188, metadata !"vec", metadata !5, i32 16777485, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 269]
!191 = metadata !{i32 786689, metadata !188, metadata !"n", metadata !5, i32 33554701, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 269]
!192 = metadata !{i32 786688, metadata !188, metadata !"x", metadata !5, i32 271, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 271]
!193 = metadata !{i32 786688, metadata !188, metadata !"max", metadata !5, i32 272, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max] [line 272]
!194 = metadata !{i32 786688, metadata !188, metadata !"sum", metadata !5, i32 272, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 272]
!195 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FLogSum", metadata !"FLogSum", metadata !"", i32 284, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float*, i32)* @FLogSum, null, null, metadata !196, i32 285} ; [ DW_TAG_subprogram ] [line 284] [def] [scope 285] [FLogSum]
!196 = metadata !{metadata !197, metadata !198, metadata !199, metadata !200, metadata !201}
!197 = metadata !{i32 786689, metadata !195, metadata !"vec", metadata !5, i32 16777500, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 284]
!198 = metadata !{i32 786689, metadata !195, metadata !"n", metadata !5, i32 33554716, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 284]
!199 = metadata !{i32 786688, metadata !195, metadata !"x", metadata !5, i32 286, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 286]
!200 = metadata !{i32 786688, metadata !195, metadata !"max", metadata !5, i32 287, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max] [line 287]
!201 = metadata !{i32 786688, metadata !195, metadata !"sum", metadata !5, i32 287, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 287]
!202 = metadata !{i32 32, i32 0, metadata !4, null}
!203 = metadata !{i32 35, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !4, i32 35, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!205 = metadata !{metadata !"double", metadata !206}
!206 = metadata !{metadata !"omnipotent char", metadata !207}
!207 = metadata !{metadata !"Simple C/C++ TBAA"}
!208 = metadata !{i32 36, i32 0, metadata !4, null}
!209 = metadata !{i32 39, i32 0, metadata !16, null}
!210 = metadata !{i32 42, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !16, i32 42, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!212 = metadata !{metadata !"float", metadata !206}
!213 = metadata !{i32 43, i32 0, metadata !16, null}
!214 = metadata !{i32 46, i32 0, metadata !26, null}
!215 = metadata !{i32 49, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !26, i32 49, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!217 = metadata !{i32 50, i32 0, metadata !26, null}
!218 = metadata !{i32 53, i32 0, metadata !32, null}
!219 = metadata !{i32 56, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !32, i32 56, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!221 = metadata !{i32 57, i32 0, metadata !32, null}
!222 = metadata !{i32 60, i32 0, metadata !38, null}
!223 = metadata !{double 0.000000e+00}
!224 = metadata !{i32 62, i32 0, metadata !38, null}
!225 = metadata !{i32 64, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !38, i32 64, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!227 = metadata !{i32 65, i32 0, metadata !38, null}
!228 = metadata !{i32 69, i32 0, metadata !46, null}
!229 = metadata !{float 0.000000e+00}
!230 = metadata !{i32 71, i32 0, metadata !46, null}
!231 = metadata !{i32 73, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !46, i32 73, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!233 = metadata !{i32 74, i32 0, metadata !46, null}
!234 = metadata !{i32 78, i32 0, metadata !54, null}
!235 = metadata !{i32 81, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !54, i32 81, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!237 = metadata !{i32 82, i32 0, metadata !54, null}
!238 = metadata !{i32 85, i32 0, metadata !62, null}
!239 = metadata !{i32 88, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !62, i32 88, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!241 = metadata !{i32 89, i32 0, metadata !62, null}
!242 = metadata !{i32 92, i32 0, metadata !70, null}
!243 = metadata !{i32 95, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !70, i32 95, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!245 = metadata !{i32 96, i32 0, metadata !70, null}
!246 = metadata !{i32 99, i32 0, metadata !76, null}
!247 = metadata !{i32 102, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !76, i32 102, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!249 = metadata !{i32 103, i32 0, metadata !76, null}
!250 = metadata !{i32 106, i32 0, metadata !82, null}
!251 = metadata !{i32 108, i32 0, metadata !82, null}
!252 = metadata !{i32 110, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !82, i32 110, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!254 = metadata !{i32 111, i32 0, metadata !82, null}
!255 = metadata !{i32 115, i32 0, metadata !91, null}
!256 = metadata !{i32 117, i32 0, metadata !91, null}
!257 = metadata !{i32 119, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !91, i32 119, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!259 = metadata !{i32 120, i32 0, metadata !91, null}
!260 = metadata !{i32 124, i32 0, metadata !100, null}
!261 = metadata !{i32 129, i32 0, metadata !100, null}
!262 = metadata !{i32 1}
!263 = metadata !{i32 130, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !100, i32 130, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!265 = metadata !{i32 131, i32 0, metadata !264, null}
!266 = metadata !{i32 132, i32 0, metadata !100, null}
!267 = metadata !{i32 136, i32 0, metadata !106, null}
!268 = metadata !{i32 141, i32 0, metadata !106, null}
!269 = metadata !{i32 142, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !106, i32 142, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!271 = metadata !{i32 143, i32 0, metadata !270, null}
!272 = metadata !{i32 144, i32 0, metadata !106, null}
!273 = metadata !{i32 148, i32 0, metadata !112, null}
!274 = metadata !{i32 153, i32 0, metadata !112, null}
!275 = metadata !{i32 154, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !112, i32 154, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!277 = metadata !{i32 155, i32 0, metadata !276, null}
!278 = metadata !{i32 156, i32 0, metadata !112, null}
!279 = metadata !{i32 160, i32 0, metadata !118, null}
!280 = metadata !{i32 165, i32 0, metadata !118, null}
!281 = metadata !{i32 166, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !118, i32 166, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!283 = metadata !{i32 167, i32 0, metadata !282, null}
!284 = metadata !{i32 168, i32 0, metadata !118, null}
!285 = metadata !{i32 172, i32 0, metadata !124, null}
!286 = metadata !{i32 175, i32 0, metadata !124, null}
!287 = metadata !{i32 177, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !124, i32 177, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!289 = metadata !{i32 178, i32 0, metadata !288, null}
!290 = metadata !{i32 undef}
!291 = metadata !{i32 179, i32 0, metadata !124, null}
!292 = metadata !{i32 183, i32 0, metadata !132, null}
!293 = metadata !{i32 186, i32 0, metadata !132, null}
!294 = metadata !{i32 188, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !132, i32 188, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!296 = metadata !{i32 189, i32 0, metadata !295, null}
!297 = metadata !{i32 190, i32 0, metadata !132, null}
!298 = metadata !{i32 194, i32 0, metadata !140, null}
!299 = metadata !{i32 197, i32 0, metadata !140, null}
!300 = metadata !{i32 198, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !140, i32 198, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!302 = metadata !{i32 199, i32 0, metadata !301, null}
!303 = metadata !{i32 200, i32 0, metadata !140, null}
!304 = metadata !{i32 204, i32 0, metadata !146, null}
!305 = metadata !{i32 207, i32 0, metadata !146, null}
!306 = metadata !{i32 209, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !146, i32 209, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!308 = metadata !{i32 210, i32 0, metadata !307, null}
!309 = metadata !{i32 211, i32 0, metadata !146, null}
!310 = metadata !{i32 215, i32 0, metadata !152, null}
!311 = metadata !{i32 786689, metadata !38, metadata !"vec", metadata !5, i32 16777276, metadata !8, i32 0, metadata !312} ; [ DW_TAG_arg_variable ] [vec] [line 60]
!312 = metadata !{i32 220, i32 0, metadata !152, null}
!313 = metadata !{i32 60, i32 0, metadata !38, metadata !312}
!314 = metadata !{i32 786689, metadata !38, metadata !"n", metadata !5, i32 33554492, metadata !10, i32 0, metadata !312} ; [ DW_TAG_arg_variable ] [n] [line 60]
!315 = metadata !{i32 786688, metadata !38, metadata !"sum", metadata !5, i32 62, metadata !9, i32 0, metadata !312} ; [ DW_TAG_auto_variable ] [sum] [line 62]
!316 = metadata !{i32 62, i32 0, metadata !38, metadata !312}
!317 = metadata !{i32 786688, metadata !38, metadata !"x", metadata !5, i32 63, metadata !10, i32 0, metadata !312} ; [ DW_TAG_auto_variable ] [x] [line 63]
!318 = metadata !{i32 64, i32 0, metadata !226, metadata !312}
!319 = metadata !{i32 222, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !152, i32 222, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!321 = metadata !{i32 221, i32 0, metadata !152, null}
!322 = metadata !{i32 221, i32 0, metadata !323, null}
!323 = metadata !{i32 786443, metadata !1, metadata !152, i32 221, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!324 = metadata !{i32 223, i32 0, metadata !152, null}
!325 = metadata !{i32 226, i32 0, metadata !160, null}
!326 = metadata !{i32 786689, metadata !46, metadata !"vec", metadata !5, i32 16777285, metadata !19, i32 0, metadata !327} ; [ DW_TAG_arg_variable ] [vec] [line 69]
!327 = metadata !{i32 231, i32 0, metadata !160, null}
!328 = metadata !{i32 69, i32 0, metadata !46, metadata !327}
!329 = metadata !{i32 786689, metadata !46, metadata !"n", metadata !5, i32 33554501, metadata !10, i32 0, metadata !327} ; [ DW_TAG_arg_variable ] [n] [line 69]
!330 = metadata !{i32 786688, metadata !46, metadata !"sum", metadata !5, i32 71, metadata !20, i32 0, metadata !327} ; [ DW_TAG_auto_variable ] [sum] [line 71]
!331 = metadata !{i32 71, i32 0, metadata !46, metadata !327}
!332 = metadata !{i32 786688, metadata !46, metadata !"x", metadata !5, i32 72, metadata !10, i32 0, metadata !327} ; [ DW_TAG_auto_variable ] [x] [line 72]
!333 = metadata !{i32 73, i32 0, metadata !232, metadata !327}
!334 = metadata !{i32 233, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !160, i32 233, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!336 = metadata !{i32 232, i32 0, metadata !160, null}
!337 = metadata !{i32 232, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !160, i32 232, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!339 = metadata !{i32 234, i32 0, metadata !160, null}
!340 = metadata !{i32 237, i32 0, metadata !168, null}
!341 = metadata !{i32 240, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !168, i32 240, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!343 = metadata !{i32 241, i32 0, metadata !342, null}
!344 = metadata !{i32 243, i32 0, metadata !168, null}
!345 = metadata !{i32 246, i32 0, metadata !173, null}
!346 = metadata !{i32 249, i32 0, metadata !347, null}
!347 = metadata !{i32 786443, metadata !1, metadata !173, i32 249, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!348 = metadata !{i32 250, i32 0, metadata !347, null}
!349 = metadata !{i32 252, i32 0, metadata !173, null}
!350 = metadata !{i32 255, i32 0, metadata !178, null}
!351 = metadata !{i32 258, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !178, i32 258, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!353 = metadata !{i32 259, i32 0, metadata !178, null}
!354 = metadata !{i32 262, i32 0, metadata !183, null}
!355 = metadata !{i32 265, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !183, i32 265, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!357 = metadata !{i32 266, i32 0, metadata !183, null}
!358 = metadata !{i32 269, i32 0, metadata !188, null}
!359 = metadata !{i32 786689, metadata !100, metadata !"vec", metadata !5, i32 16777340, metadata !8, i32 0, metadata !360} ; [ DW_TAG_arg_variable ] [vec] [line 124]
!360 = metadata !{i32 274, i32 0, metadata !188, null}
!361 = metadata !{i32 124, i32 0, metadata !100, metadata !360}
!362 = metadata !{i32 786689, metadata !100, metadata !"n", metadata !5, i32 33554556, metadata !10, i32 0, metadata !360} ; [ DW_TAG_arg_variable ] [n] [line 124]
!363 = metadata !{i32 129, i32 0, metadata !100, metadata !360}
!364 = metadata !{i32 786688, metadata !100, metadata !"best", metadata !5, i32 127, metadata !9, i32 0, metadata !360} ; [ DW_TAG_auto_variable ] [best] [line 127]
!365 = metadata !{i32 786688, metadata !100, metadata !"i", metadata !5, i32 126, metadata !10, i32 0, metadata !360} ; [ DW_TAG_auto_variable ] [i] [line 126]
!366 = metadata !{i32 130, i32 0, metadata !264, metadata !360}
!367 = metadata !{i32 131, i32 0, metadata !264, metadata !360}
!368 = metadata !{i32 275, i32 0, metadata !188, null}
!369 = metadata !{i32 276, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !188, i32 276, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!371 = metadata !{i32 277, i32 0, metadata !370, null}
!372 = metadata !{i32 278, i32 0, metadata !370, null}
!373 = metadata !{i32 279, i32 0, metadata !188, null}
!374 = metadata !{i32 280, i32 0, metadata !188, null}
!375 = metadata !{i32 284, i32 0, metadata !195, null}
!376 = metadata !{i32 786689, metadata !106, metadata !"vec", metadata !5, i32 16777352, metadata !19, i32 0, metadata !377} ; [ DW_TAG_arg_variable ] [vec] [line 136]
!377 = metadata !{i32 289, i32 0, metadata !195, null}
!378 = metadata !{i32 136, i32 0, metadata !106, metadata !377}
!379 = metadata !{i32 786689, metadata !106, metadata !"n", metadata !5, i32 33554568, metadata !10, i32 0, metadata !377} ; [ DW_TAG_arg_variable ] [n] [line 136]
!380 = metadata !{i32 141, i32 0, metadata !106, metadata !377}
!381 = metadata !{i32 786688, metadata !106, metadata !"best", metadata !5, i32 139, metadata !20, i32 0, metadata !377} ; [ DW_TAG_auto_variable ] [best] [line 139]
!382 = metadata !{i32 786688, metadata !106, metadata !"i", metadata !5, i32 138, metadata !10, i32 0, metadata !377} ; [ DW_TAG_auto_variable ] [i] [line 138]
!383 = metadata !{i32 142, i32 0, metadata !270, metadata !377}
!384 = metadata !{i32 143, i32 0, metadata !270, metadata !377}
!385 = metadata !{i32 290, i32 0, metadata !195, null}
!386 = metadata !{i32 291, i32 0, metadata !387, null}
!387 = metadata !{i32 786443, metadata !1, metadata !195, i32 291, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c]
!388 = metadata !{i32 292, i32 0, metadata !387, null}
!389 = metadata !{i32 293, i32 0, metadata !387, null}
!390 = metadata !{i32 294, i32 0, metadata !195, null}
!391 = metadata !{i32 295, i32 0, metadata !195, null}
