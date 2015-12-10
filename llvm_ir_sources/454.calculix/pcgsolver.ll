; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str1 = private unnamed_addr constant [10 x i8] c"alpha=%f\0A\00", align 1
@.str3 = private unnamed_addr constant [36 x i8] c"iteration= %d, error= %e, limit=%e\0A\00", align 1
@.str4 = private unnamed_addr constant [31 x i8] c"*ERROR in PCG: no convergence;\00", align 1
@str5 = private unnamed_addr constant [26 x i8] c"Cholesky preconditioning\0A\00"
@str6 = private unnamed_addr constant [60 x i8] c"Solving the system of equations using the iterative solver\0A\00"

; Function Attrs: nounwind optsize uwtable
define i32 @cgsolver(double* nocapture %A, double* nocapture %x, double* nocapture %b, i32 %neq, i32 %len, i32* nocapture %ia, i32* nocapture %iz, double* nocapture %eps, i32* nocapture %niter, i32 %precFlg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %A}, i64 0, metadata !13), !dbg !172
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !14), !dbg !172
  tail call void @llvm.dbg.value(metadata !{double* %b}, i64 0, metadata !15), !dbg !172
  tail call void @llvm.dbg.value(metadata !{i32 %neq}, i64 0, metadata !16), !dbg !172
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !17), !dbg !172
  tail call void @llvm.dbg.value(metadata !{i32* %ia}, i64 0, metadata !18), !dbg !173
  tail call void @llvm.dbg.value(metadata !{i32* %iz}, i64 0, metadata !19), !dbg !173
  tail call void @llvm.dbg.value(metadata !{double* %eps}, i64 0, metadata !20), !dbg !174
  tail call void @llvm.dbg.value(metadata !{i32* %niter}, i64 0, metadata !21), !dbg !174
  tail call void @llvm.dbg.value(metadata !{i32 %precFlg}, i64 0, metadata !22), !dbg !174
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !23), !dbg !175
  tail call void @llvm.dbg.value(metadata !176, i64 0, metadata !24), !dbg !177
  tail call void @llvm.dbg.value(metadata !176, i64 0, metadata !25), !dbg !177
  tail call void @llvm.dbg.value(metadata !176, i64 0, metadata !26), !dbg !177
  tail call void @llvm.dbg.value(metadata !176, i64 0, metadata !27), !dbg !177
  tail call void @llvm.dbg.value(metadata !176, i64 0, metadata !28), !dbg !177
  tail call void @llvm.dbg.value(metadata !176, i64 0, metadata !29), !dbg !177
  tail call void @llvm.dbg.value(metadata !176, i64 0, metadata !30), !dbg !177
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !23), !dbg !178
  %cmp97 = icmp sgt i32 %neq, 0, !dbg !178
  br i1 %cmp97, label %for.body, label %for.cond1.preheader, !dbg !178

for.cond1.preheader:                              ; preds = %for.body, %entry
  %cmp295 = icmp sgt i32 %len, 0, !dbg !180
  br i1 %cmp295, label %for.body3, label %for.end9, !dbg !180

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %iz, i64 %indvars.iv103, !dbg !178
  %0 = load i32* %arrayidx, align 4, !dbg !178, !tbaa !182
  %dec = add nsw i32 %0, -1, !dbg !178
  store i32 %dec, i32* %arrayidx, align 4, !dbg !178, !tbaa !182
  %indvars.iv.next104 = add i64 %indvars.iv103, 1, !dbg !178
  %lftr.wideiv105 = trunc i64 %indvars.iv.next104 to i32, !dbg !178
  %exitcond106 = icmp eq i32 %lftr.wideiv105, %neq, !dbg !178
  br i1 %exitcond106, label %for.cond1.preheader, label %for.body, !dbg !178

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds i32* %ia, i64 %indvars.iv99, !dbg !180
  %1 = load i32* %arrayidx5, align 4, !dbg !180, !tbaa !182
  %dec6 = add nsw i32 %1, -1, !dbg !180
  store i32 %dec6, i32* %arrayidx5, align 4, !dbg !180, !tbaa !182
  %indvars.iv.next100 = add i64 %indvars.iv99, 1, !dbg !180
  %lftr.wideiv101 = trunc i64 %indvars.iv.next100 to i32, !dbg !180
  %exitcond102 = icmp eq i32 %lftr.wideiv101, %len, !dbg !180
  br i1 %exitcond102, label %for.end9, label %for.body3, !dbg !180

for.end9:                                         ; preds = %for.body3, %for.cond1.preheader
  %conv = sext i32 %neq to i64, !dbg !185
  %call = tail call i8* @u_calloc(i64 %conv, i64 8) #6, !dbg !185
  %2 = bitcast i8* %call to double*, !dbg !185
  tail call void @llvm.dbg.value(metadata !{double* %2}, i64 0, metadata !24), !dbg !185
  tail call void @Scaling(double* %A, double* %b, i32 %neq, i32* %ia, i32* %iz, double* %2) #7, !dbg !186
  switch i32 %precFlg, label %for.cond30.preheader [
    i32 0, label %if.then
    i32 3, label %if.then18
  ], !dbg !187

if.then:                                          ; preds = %for.end9
  %call11 = tail call i8* @u_calloc(i64 %conv, i64 8) #6, !dbg !188
  %3 = bitcast i8* %call11 to double*, !dbg !188
  tail call void @llvm.dbg.value(metadata !{double* %3}, i64 0, metadata !25), !dbg !188
  %call13 = tail call i8* @u_calloc(i64 %conv, i64 8) #6, !dbg !190
  %4 = bitcast i8* %call13 to double*, !dbg !190
  tail call void @llvm.dbg.value(metadata !{double* %4}, i64 0, metadata !26), !dbg !190
  %call15 = tail call i8* @u_calloc(i64 %conv, i64 8) #6, !dbg !191
  %5 = bitcast i8* %call15 to double*, !dbg !191
  tail call void @llvm.dbg.value(metadata !{double* %5}, i64 0, metadata !27), !dbg !191
  tail call void @CG(double* %A, double* %x, double* %b, i32 %neq, i32 undef, i32* %ia, i32* %iz, double* %eps, i32* %niter, double* %3, double* %4, double* %5) #7, !dbg !192
  tail call void @free(i8* %call11) #6, !dbg !193
  tail call void @free(i8* %call13) #6, !dbg !193
  tail call void @free(i8* %call15) #6, !dbg !193
  br label %for.cond30.preheader, !dbg !194

if.then18:                                        ; preds = %for.end9
  %call20 = tail call i8* @u_calloc(i64 %conv, i64 8) #6, !dbg !195
  %6 = bitcast i8* %call20 to double*, !dbg !195
  tail call void @llvm.dbg.value(metadata !{double* %6}, i64 0, metadata !30), !dbg !195
  %call22 = tail call i8* @u_calloc(i64 %conv, i64 8) #6, !dbg !197
  %7 = bitcast i8* %call22 to double*, !dbg !197
  tail call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !25), !dbg !197
  %call24 = tail call i8* @u_calloc(i64 %conv, i64 8) #6, !dbg !198
  %8 = bitcast i8* %call24 to double*, !dbg !198
  tail call void @llvm.dbg.value(metadata !{double* %8}, i64 0, metadata !29), !dbg !198
  %conv25 = sext i32 %len to i64, !dbg !199
  %call26 = tail call i8* @u_calloc(i64 %conv25, i64 8) #6, !dbg !199
  %9 = bitcast i8* %call26 to double*, !dbg !199
  tail call void @llvm.dbg.value(metadata !{double* %9}, i64 0, metadata !28), !dbg !199
  %call28 = tail call i8* @u_calloc(i64 %conv, i64 8) #6, !dbg !200
  %10 = bitcast i8* %call28 to double*, !dbg !200
  tail call void @llvm.dbg.value(metadata !{double* %10}, i64 0, metadata !27), !dbg !200
  tail call void @PCG(double* %A, double* %x, double* %b, i32 %neq, i32 %len, i32* %ia, i32* %iz, double* %eps, i32* %niter, i32 3, double* %6, double* %7, double* %8, double* %9, double* %10) #7, !dbg !201
  tail call void @free(i8* %call20) #6, !dbg !202
  tail call void @free(i8* %call22) #6, !dbg !202
  tail call void @free(i8* %call24) #6, !dbg !202
  tail call void @free(i8* %call26) #6, !dbg !202
  tail call void @free(i8* %call28) #6, !dbg !202
  br label %for.cond30.preheader, !dbg !203

for.cond30.preheader:                             ; preds = %for.end9, %if.then18, %if.then
  br i1 %cmp97, label %for.body33, label %for.end40, !dbg !204

for.body33:                                       ; preds = %for.cond30.preheader, %for.body33
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body33 ], [ 0, %for.cond30.preheader ]
  %arrayidx35 = getelementptr inbounds double* %2, i64 %indvars.iv, !dbg !204
  %11 = load double* %arrayidx35, align 8, !dbg !204, !tbaa !206
  %arrayidx37 = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !204
  %12 = load double* %arrayidx37, align 8, !dbg !204, !tbaa !206
  %mul = fmul double %11, %12, !dbg !204
  store double %mul, double* %arrayidx37, align 8, !dbg !204, !tbaa !206
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !204
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !204
  %exitcond = icmp eq i32 %lftr.wideiv, %neq, !dbg !204
  br i1 %exitcond, label %for.end40, label %for.body33, !dbg !204

for.end40:                                        ; preds = %for.body33, %for.cond30.preheader
  tail call void @free(i8* %call) #6, !dbg !207
  ret i32 0, !dbg !208
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @Scaling(double* nocapture %A, double* nocapture %b, i32 %neq, i32* nocapture %ia, i32* nocapture %iz, double* nocapture %d) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %A}, i64 0, metadata !69), !dbg !209
  tail call void @llvm.dbg.value(metadata !{double* %b}, i64 0, metadata !70), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %neq}, i64 0, metadata !71), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32* %ia}, i64 0, metadata !72), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32* %iz}, i64 0, metadata !73), !dbg !209
  tail call void @llvm.dbg.value(metadata !{double* %d}, i64 0, metadata !74), !dbg !209
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !75), !dbg !210
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !76), !dbg !210
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !77), !dbg !210
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !78), !dbg !210
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !75), !dbg !211
  %cmp82 = icmp sgt i32 %neq, 0, !dbg !211
  br i1 %cmp82, label %for.body, label %for.end14, !dbg !211

for.cond5.preheader:                              ; preds = %for.body
  br i1 %cmp82, label %for.body7, label %for.end14, !dbg !213

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %iz, i64 %indvars.iv91, !dbg !211
  %0 = load i32* %arrayidx, align 4, !dbg !211, !tbaa !182
  %idxprom1 = sext i32 %0 to i64, !dbg !211
  %arrayidx2 = getelementptr inbounds double* %A, i64 %idxprom1, !dbg !211
  %1 = load double* %arrayidx2, align 8, !dbg !211, !tbaa !206
  %call = tail call double @sqrt(double %1) #6, !dbg !211
  %div = fdiv double 1.000000e+00, %call, !dbg !211
  %arrayidx4 = getelementptr inbounds double* %d, i64 %indvars.iv91, !dbg !211
  store double %div, double* %arrayidx4, align 8, !dbg !211, !tbaa !206
  %indvars.iv.next92 = add i64 %indvars.iv91, 1, !dbg !211
  %lftr.wideiv93 = trunc i64 %indvars.iv.next92 to i32, !dbg !211
  %exitcond94 = icmp eq i32 %lftr.wideiv93, %neq, !dbg !211
  br i1 %exitcond94, label %for.cond5.preheader, label %for.body, !dbg !211

for.body7:                                        ; preds = %for.cond5.preheader, %for.body7
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.body7 ], [ 0, %for.cond5.preheader ]
  %arrayidx9 = getelementptr inbounds double* %d, i64 %indvars.iv87, !dbg !213
  %2 = load double* %arrayidx9, align 8, !dbg !213, !tbaa !206
  %arrayidx11 = getelementptr inbounds double* %b, i64 %indvars.iv87, !dbg !213
  %3 = load double* %arrayidx11, align 8, !dbg !213, !tbaa !206
  %4 = fmul double %2, %3, !dbg !213
  %mul = fsub double -0.000000e+00, %4, !dbg !213
  store double %mul, double* %arrayidx11, align 8, !dbg !213, !tbaa !206
  %indvars.iv.next88 = add i64 %indvars.iv87, 1, !dbg !213
  %lftr.wideiv89 = trunc i64 %indvars.iv.next88 to i32, !dbg !213
  %exitcond90 = icmp eq i32 %lftr.wideiv89, %neq, !dbg !213
  br i1 %exitcond90, label %for.end14, label %for.body7, !dbg !213

for.end14:                                        ; preds = %entry, %for.body7, %for.cond5.preheader
  %5 = load double* %d, align 8, !dbg !215, !tbaa !206
  %mul17 = fmul double %5, %5, !dbg !215
  %6 = load i32* %iz, align 4, !dbg !215, !tbaa !182
  %idxprom19 = sext i32 %6 to i64, !dbg !215
  %arrayidx20 = getelementptr inbounds double* %A, i64 %idxprom19, !dbg !215
  %7 = load double* %arrayidx20, align 8, !dbg !215, !tbaa !206
  %mul21 = fmul double %mul17, %7, !dbg !215
  store double %mul21, double* %arrayidx20, align 8, !dbg !215, !tbaa !206
  tail call void @llvm.dbg.value(metadata !216, i64 0, metadata !75), !dbg !217
  %cmp2378 = icmp sgt i32 %neq, 1, !dbg !217
  br i1 %cmp2378, label %for.body24, label %for.end48, !dbg !217

for.body24:                                       ; preds = %for.end14, %for.inc46
  %8 = phi i32 [ %9, %for.inc46 ], [ %6, %for.end14 ], !dbg !219
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.inc46 ], [ 1, %for.end14 ]
  %arrayidx29 = getelementptr inbounds i32* %iz, i64 %indvars.iv84, !dbg !221
  %9 = load i32* %arrayidx29, align 4, !dbg !221, !tbaa !182
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !78), !dbg !221
  %cmp3176 = icmp slt i32 %8, %9, !dbg !222
  br i1 %cmp3176, label %for.body32.lr.ph, label %for.inc46, !dbg !222

for.body32.lr.ph:                                 ; preds = %for.body24
  %arrayidx34 = getelementptr inbounds double* %d, i64 %indvars.iv84, !dbg !222
  %10 = sext i32 %8 to i64
  br label %for.body32, !dbg !222

for.body32:                                       ; preds = %for.body32.lr.ph, %for.body32
  %indvars.iv = phi i64 [ %10, %for.body32.lr.ph ], [ %indvars.iv.next, %for.body32 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !222
  %11 = load double* %arrayidx34, align 8, !dbg !222, !tbaa !206
  %arrayidx36 = getelementptr inbounds i32* %ia, i64 %indvars.iv.next, !dbg !222
  %12 = load i32* %arrayidx36, align 4, !dbg !222, !tbaa !182
  %idxprom37 = sext i32 %12 to i64, !dbg !222
  %arrayidx38 = getelementptr inbounds double* %d, i64 %idxprom37, !dbg !222
  %13 = load double* %arrayidx38, align 8, !dbg !222, !tbaa !206
  %mul39 = fmul double %11, %13, !dbg !222
  %arrayidx41 = getelementptr inbounds double* %A, i64 %indvars.iv.next, !dbg !222
  %14 = load double* %arrayidx41, align 8, !dbg !222, !tbaa !206
  %mul42 = fmul double %14, %mul39, !dbg !222
  store double %mul42, double* %arrayidx41, align 8, !dbg !222, !tbaa !206
  %15 = trunc i64 %indvars.iv.next to i32, !dbg !222
  %cmp31 = icmp slt i32 %15, %9, !dbg !222
  br i1 %cmp31, label %for.body32, label %for.inc46, !dbg !222

for.inc46:                                        ; preds = %for.body32, %for.body24
  %indvars.iv.next85 = add i64 %indvars.iv84, 1, !dbg !217
  %lftr.wideiv = trunc i64 %indvars.iv.next85 to i32, !dbg !217
  %exitcond = icmp eq i32 %lftr.wideiv, %neq, !dbg !217
  br i1 %exitcond, label %for.end48, label %for.body24, !dbg !217

for.end48:                                        ; preds = %for.inc46, %for.end14
  ret void, !dbg !224
}

; Function Attrs: nounwind optsize uwtable
define void @CG(double* nocapture %A, double* nocapture %x, double* nocapture %b, i32 %neq, i32 %len, i32* nocapture %ia, i32* nocapture %iz, double* nocapture %eps, i32* nocapture %niter, double* nocapture %r, double* nocapture %p, double* nocapture %z) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %A}, i64 0, metadata !147), !dbg !225
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !148), !dbg !225
  tail call void @llvm.dbg.value(metadata !{double* %b}, i64 0, metadata !149), !dbg !225
  tail call void @llvm.dbg.value(metadata !{i32 %neq}, i64 0, metadata !150), !dbg !225
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !151), !dbg !225
  tail call void @llvm.dbg.value(metadata !{i32* %ia}, i64 0, metadata !152), !dbg !225
  tail call void @llvm.dbg.value(metadata !{i32* %iz}, i64 0, metadata !153), !dbg !225
  tail call void @llvm.dbg.value(metadata !{double* %eps}, i64 0, metadata !154), !dbg !226
  tail call void @llvm.dbg.value(metadata !{i32* %niter}, i64 0, metadata !155), !dbg !226
  tail call void @llvm.dbg.value(metadata !{double* %r}, i64 0, metadata !156), !dbg !226
  tail call void @llvm.dbg.value(metadata !{double* %p}, i64 0, metadata !157), !dbg !226
  tail call void @llvm.dbg.value(metadata !{double* %z}, i64 0, metadata !158), !dbg !226
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !159), !dbg !227
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !160), !dbg !227
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !161), !dbg !227
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !163), !dbg !229
  tail call void @llvm.dbg.value(metadata !230, i64 0, metadata !164), !dbg !229
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !166), !dbg !229
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !168), !dbg !231
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !232), !dbg !236
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !168), !dbg !237
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !168), !dbg !239
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !168), !dbg !240
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !168), !dbg !241
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !169), !dbg !231
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !242), !dbg !244
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !169), !dbg !239
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !170), !dbg !231
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !171), !dbg !231
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([60 x i8]* @str6, i64 0, i64 0)), !dbg !245
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !165), !dbg !246
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !162), !dbg !246
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !159), !dbg !247
  %cmp184 = icmp sgt i32 %neq, 0, !dbg !247
  br i1 %cmp184, label %for.body, label %return, !dbg !247

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %for.inc ], [ 0, %entry ]
  %qam.0187 = phi double [ %qam.1, %for.inc ], [ 0.000000e+00, %entry ]
  %iam.0185 = phi i32 [ %iam.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv201, !dbg !249
  store double 0.000000e+00, double* %arrayidx, align 8, !dbg !249, !tbaa !206
  %arrayidx2 = getelementptr inbounds double* %b, i64 %indvars.iv201, !dbg !251
  %0 = load double* %arrayidx2, align 8, !dbg !251, !tbaa !206
  %arrayidx4 = getelementptr inbounds double* %r, i64 %indvars.iv201, !dbg !251
  store double %0, double* %arrayidx4, align 8, !dbg !251, !tbaa !206
  %sub = fsub double -0.000000e+00, %0, !dbg !252
  %arrayidx8 = getelementptr inbounds double* %p, i64 %indvars.iv201, !dbg !252
  store double %sub, double* %arrayidx8, align 8, !dbg !252, !tbaa !206
  %1 = load double* %arrayidx4, align 8, !dbg !253, !tbaa !206
  %call11 = tail call double @fabs(double %1) #8, !dbg !253
  tail call void @llvm.dbg.value(metadata !{double %call11}, i64 0, metadata !167), !dbg !253
  %cmp12 = fcmp ogt double %call11, 1.000000e-20, !dbg !254
  br i1 %cmp12, label %if.then, label %for.inc, !dbg !254

if.then:                                          ; preds = %for.body
  %add = fadd double %qam.0187, %call11, !dbg !255
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !165), !dbg !255
  %inc = add nsw i32 %iam.0185, 1, !dbg !255
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !162), !dbg !255
  br label %for.inc, !dbg !255

for.inc:                                          ; preds = %for.body, %if.then
  %iam.1 = phi i32 [ %inc, %if.then ], [ %iam.0185, %for.body ]
  %qam.1 = phi double [ %add, %if.then ], [ %qam.0187, %for.body ]
  %indvars.iv.next202 = add i64 %indvars.iv201, 1, !dbg !247
  %lftr.wideiv203 = trunc i64 %indvars.iv.next202 to i32, !dbg !247
  %exitcond204 = icmp eq i32 %lftr.wideiv203, %neq, !dbg !247
  br i1 %exitcond204, label %for.end, label %for.body, !dbg !247

for.end:                                          ; preds = %for.inc
  %cmp14 = icmp sgt i32 %iam.1, 0, !dbg !257
  br i1 %cmp14, label %if.then15, label %return, !dbg !257

if.then15:                                        ; preds = %for.end
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !165), !dbg !257
  tail call void @llvm.dbg.value(metadata !216, i64 0, metadata !160), !dbg !258
  %2 = load i32* %niter, align 4, !dbg !258, !tbaa !182
  %cmp18176 = icmp slt i32 %2, 1, !dbg !258
  br i1 %cmp18176, label %for.end83, label %for.body20.lr.ph, !dbg !258

for.body20.lr.ph:                                 ; preds = %if.then15
  %conv = sitofp i32 %neq to double, !dbg !257
  %div = fdiv double %qam.1, %conv, !dbg !257
  %mul = fmul double %div, 5.000000e-03, !dbg !259
  br label %for.body20, !dbg !258

for.body20:                                       ; preds = %for.end79, %for.body20.lr.ph
  %ram.0180 = phi double [ 0.000000e+00, %for.body20.lr.ph ], [ %ram.1.lcssa, %for.end79 ]
  %ncg.0179 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc82, %for.end79 ]
  %k.0178 = phi i32 [ 1, %for.body20.lr.ph ], [ %inc81, %for.end79 ]
  %add.i169177 = phi double [ 0.000000e+00, %for.body20.lr.ph ], [ %add.i170, %for.end79 ]
  tail call void @llvm.dbg.value(metadata !{double* %r}, i64 0, metadata !260), !dbg !236
  tail call void @llvm.dbg.value(metadata !{double* %r}, i64 0, metadata !261), !dbg !236
  tail call void @llvm.dbg.value(metadata !{i32 %neq}, i64 0, metadata !262), !dbg !236
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !263), !dbg !264
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !168), !dbg !265
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !232), !dbg !236
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !168), !dbg !237
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !168), !dbg !239
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !168), !dbg !240
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !168), !dbg !241
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !263), !dbg !266
  br i1 %cmp184, label %for.body.i, label %InnerProduct.exit, !dbg !266

for.body.i:                                       ; preds = %for.body20, %for.body.i
  %3 = phi double [ %add.i, %for.body.i ], [ 0.000000e+00, %for.body20 ], !dbg !266
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.body20 ]
  %arrayidx.i = getelementptr inbounds double* %r, i64 %indvars.iv.i, !dbg !266
  %4 = load double* %arrayidx.i, align 8, !dbg !266, !tbaa !206
  %mul.i = fmul double %4, %4, !dbg !266
  %add.i = fadd double %3, %mul.i, !dbg !266
  tail call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !168), !dbg !266
  tail call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !232), !dbg !236
  tail call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !168), !dbg !237
  tail call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !168), !dbg !239
  tail call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !168), !dbg !240
  tail call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !168), !dbg !241
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !266
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !266
  %exitcond = icmp eq i32 %lftr.wideiv, %neq, !dbg !266
  br i1 %exitcond, label %InnerProduct.exit, label %for.body.i, !dbg !266

InnerProduct.exit:                                ; preds = %for.body.i, %for.body20
  %add.i170 = phi double [ 0.000000e+00, %for.body20 ], [ %add.i, %for.body.i ]
  %call21 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), i32 %ncg.0179, double %ram.0180, double %mul) #6, !dbg !259
  %cmp22 = icmp ne i32 %k.0178, 1, !dbg !268
  %cmp22.not = xor i1 %cmp22, true, !dbg !268
  %cmp25 = fcmp ugt double %ram.0180, %mul, !dbg !268
  %or.cond = or i1 %cmp25, %cmp22.not, !dbg !268
  br i1 %or.cond, label %if.end28, label %for.end83split, !dbg !268

if.end28:                                         ; preds = %InnerProduct.exit
  br i1 %cmp22, label %if.then31, label %if.end48, !dbg !269

if.then31:                                        ; preds = %if.end28
  %div32 = fdiv double %add.i170, %add.i169177, !dbg !237
  tail call void @llvm.dbg.value(metadata !{double %div32}, i64 0, metadata !163), !dbg !237
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !159), !dbg !270
  br i1 %cmp184, label %for.body36, label %if.end48.thread, !dbg !270

if.end48.thread:                                  ; preds = %if.then31
  tail call void @MatVecProduct(double* %A, double* %p, i32 %neq, i32* %ia, i32* %iz, double* %z) #7, !dbg !272
  tail call void @llvm.dbg.value(metadata !{double* %p}, i64 0, metadata !273), !dbg !244
  tail call void @llvm.dbg.value(metadata !{double* %z}, i64 0, metadata !274), !dbg !244
  tail call void @llvm.dbg.value(metadata !{i32 %neq}, i64 0, metadata !275), !dbg !244
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !276), !dbg !277
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !169), !dbg !278
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !242), !dbg !244
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !169), !dbg !239
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !276), !dbg !279
  br label %for.end79, !dbg !279

for.body36:                                       ; preds = %if.then31, %for.body36
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body36 ], [ 0, %if.then31 ]
  %arrayidx38 = getelementptr inbounds double* %p, i64 %indvars.iv, !dbg !270
  %5 = load double* %arrayidx38, align 8, !dbg !270, !tbaa !206
  %mul39 = fmul double %div32, %5, !dbg !270
  %arrayidx41 = getelementptr inbounds double* %r, i64 %indvars.iv, !dbg !270
  %6 = load double* %arrayidx41, align 8, !dbg !270, !tbaa !206
  %sub42 = fsub double %mul39, %6, !dbg !270
  store double %sub42, double* %arrayidx38, align 8, !dbg !270, !tbaa !206
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !270
  %lftr.wideiv190 = trunc i64 %indvars.iv.next to i32, !dbg !270
  %exitcond191 = icmp eq i32 %lftr.wideiv190, %neq, !dbg !270
  br i1 %exitcond191, label %if.end48, label %for.body36, !dbg !270

if.end48:                                         ; preds = %for.body36, %if.end28
  tail call void @MatVecProduct(double* %A, double* %p, i32 %neq, i32* %ia, i32* %iz, double* %z) #7, !dbg !272
  tail call void @llvm.dbg.value(metadata !{double* %p}, i64 0, metadata !273), !dbg !244
  tail call void @llvm.dbg.value(metadata !{double* %z}, i64 0, metadata !274), !dbg !244
  tail call void @llvm.dbg.value(metadata !{i32 %neq}, i64 0, metadata !275), !dbg !244
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !276), !dbg !277
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !169), !dbg !278
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !242), !dbg !244
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !169), !dbg !239
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !276), !dbg !279
  br i1 %cmp184, label %for.body.i162, label %for.end79, !dbg !279

for.body.i162:                                    ; preds = %if.end48, %for.body.i162
  %7 = phi double [ %add.i158, %for.body.i162 ], [ 0.000000e+00, %if.end48 ], !dbg !279
  %indvars.iv.i154 = phi i64 [ %indvars.iv.next.i159, %for.body.i162 ], [ 0, %if.end48 ]
  %arrayidx.i155 = getelementptr inbounds double* %p, i64 %indvars.iv.i154, !dbg !279
  %8 = load double* %arrayidx.i155, align 8, !dbg !279, !tbaa !206
  %arrayidx2.i156 = getelementptr inbounds double* %z, i64 %indvars.iv.i154, !dbg !279
  %9 = load double* %arrayidx2.i156, align 8, !dbg !279, !tbaa !206
  %mul.i157 = fmul double %8, %9, !dbg !279
  %add.i158 = fadd double %7, %mul.i157, !dbg !279
  tail call void @llvm.dbg.value(metadata !{double %add.i158}, i64 0, metadata !169), !dbg !279
  tail call void @llvm.dbg.value(metadata !{double %add.i158}, i64 0, metadata !242), !dbg !244
  tail call void @llvm.dbg.value(metadata !{double %add.i158}, i64 0, metadata !169), !dbg !239
  %indvars.iv.next.i159 = add i64 %indvars.iv.i154, 1, !dbg !279
  %lftr.wideiv192 = trunc i64 %indvars.iv.next.i159 to i32, !dbg !279
  %exitcond193 = icmp eq i32 %lftr.wideiv192, %neq, !dbg !279
  br i1 %exitcond193, label %InnerProduct.exit163, label %for.body.i162, !dbg !279

InnerProduct.exit163:                             ; preds = %for.body.i162
  %div49 = fdiv double %add.i170, %add.i158, !dbg !239
  tail call void @llvm.dbg.value(metadata !{double %div49}, i64 0, metadata !170), !dbg !239
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !166), !dbg !280
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !159), !dbg !281
  br i1 %cmp184, label %for.body53, label %for.end79, !dbg !281

for.body53:                                       ; preds = %InnerProduct.exit163, %for.body53
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %for.body53 ], [ 0, %InnerProduct.exit163 ]
  %ram.1175 = phi double [ %ram.2, %for.body53 ], [ 0.000000e+00, %InnerProduct.exit163 ]
  %arrayidx55 = getelementptr inbounds double* %x, i64 %indvars.iv194, !dbg !283
  %10 = load double* %arrayidx55, align 8, !dbg !283, !tbaa !206
  %arrayidx57 = getelementptr inbounds double* %p, i64 %indvars.iv194, !dbg !283
  %11 = load double* %arrayidx57, align 8, !dbg !283, !tbaa !206
  %mul58 = fmul double %div49, %11, !dbg !283
  %add59 = fadd double %10, %mul58, !dbg !283
  store double %add59, double* %arrayidx55, align 8, !dbg !283, !tbaa !206
  %arrayidx63 = getelementptr inbounds double* %r, i64 %indvars.iv194, !dbg !285
  %12 = load double* %arrayidx63, align 8, !dbg !285, !tbaa !206
  %arrayidx65 = getelementptr inbounds double* %z, i64 %indvars.iv194, !dbg !285
  %13 = load double* %arrayidx65, align 8, !dbg !285, !tbaa !206
  %mul66 = fmul double %div49, %13, !dbg !285
  %add67 = fadd double %12, %mul66, !dbg !285
  store double %add67, double* %arrayidx63, align 8, !dbg !285, !tbaa !206
  %call72 = tail call double @fabs(double %add67) #8, !dbg !286
  tail call void @llvm.dbg.value(metadata !{double %call72}, i64 0, metadata !167), !dbg !286
  %cmp73 = fcmp ogt double %call72, %ram.1175, !dbg !287
  tail call void @llvm.dbg.value(metadata !{double %call72}, i64 0, metadata !166), !dbg !287
  %ram.2 = select i1 %cmp73, double %call72, double %ram.1175, !dbg !287
  %indvars.iv.next195 = add i64 %indvars.iv194, 1, !dbg !281
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32, !dbg !281
  %exitcond197 = icmp eq i32 %lftr.wideiv196, %neq, !dbg !281
  br i1 %exitcond197, label %for.end79, label %for.body53, !dbg !281

for.end79:                                        ; preds = %if.end48, %if.end48.thread, %for.body53, %InnerProduct.exit163
  %ram.1.lcssa = phi double [ 0.000000e+00, %InnerProduct.exit163 ], [ %ram.2, %for.body53 ], [ 0.000000e+00, %if.end48.thread ], [ 0.000000e+00, %if.end48 ]
  tail call void @llvm.dbg.value(metadata !{double %add.i170}, i64 0, metadata !171), !dbg !240
  %inc81 = add nsw i32 %k.0178, 1, !dbg !258
  tail call void @llvm.dbg.value(metadata !{i32 %inc81}, i64 0, metadata !160), !dbg !258
  %inc82 = add nsw i32 %ncg.0179, 1, !dbg !258
  tail call void @llvm.dbg.value(metadata !{i32 %inc82}, i64 0, metadata !161), !dbg !258
  %14 = load i32* %niter, align 4, !dbg !258, !tbaa !182
  %cmp18 = icmp slt i32 %k.0178, %14, !dbg !258
  br i1 %cmp18, label %for.body20, label %for.end83, !dbg !258

for.end83split:                                   ; preds = %InnerProduct.exit
  %.pre = load i32* %niter, align 4, !dbg !288, !tbaa !182
  br label %for.end83

for.end83:                                        ; preds = %for.end79, %for.end83split, %if.then15
  %15 = phi i32 [ %2, %if.then15 ], [ %.pre, %for.end83split ], [ %14, %for.end79 ]
  %ncg.0.lcssa = phi i32 [ 0, %if.then15 ], [ %ncg.0179, %for.end83split ], [ %inc82, %for.end79 ]
  %k.0.lcssa = phi i32 [ 1, %if.then15 ], [ %k.0178, %for.end83split ], [ %inc81, %for.end79 ]
  %add.i168 = phi double [ 0.000000e+00, %if.then15 ], [ %add.i170, %for.end83split ], [ %add.i170, %for.end79 ]
  %cmp84 = icmp eq i32 %k.0.lcssa, %15, !dbg !288
  br i1 %cmp84, label %if.then86, label %if.end88, !dbg !288

if.then86:                                        ; preds = %for.end83
  %call87 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !289
  tail call void (...)* @stop_() #6, !dbg !291
  br label %if.end88, !dbg !292

if.end88:                                         ; preds = %if.then86, %for.end83
  store double %add.i168, double* %eps, align 8, !dbg !241, !tbaa !206
  br label %return, !dbg !293

return:                                           ; preds = %entry, %for.end, %if.end88
  %storemerge = phi i32 [ %ncg.0.lcssa, %if.end88 ], [ 0, %for.end ], [ 0, %entry ]
  store i32 %storemerge, i32* %niter, align 4, !dbg !294, !tbaa !182
  ret void, !dbg !293
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @PCG(double* nocapture %A, double* nocapture %x, double* nocapture %b, i32 %neq, i32 %len, i32* nocapture %ia, i32* nocapture %iz, double* nocapture %eps, i32* nocapture %niter, i32 %precFlg, double* nocapture %rho, double* nocapture %r, double* nocapture %g, double* nocapture %C, double* nocapture %z) #0 {
entry:
  %ier = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{double* %A}, i64 0, metadata !35), !dbg !295
  call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !36), !dbg !295
  call void @llvm.dbg.value(metadata !{double* %b}, i64 0, metadata !37), !dbg !295
  call void @llvm.dbg.value(metadata !{i32 %neq}, i64 0, metadata !38), !dbg !295
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !39), !dbg !295
  call void @llvm.dbg.value(metadata !{i32* %ia}, i64 0, metadata !40), !dbg !295
  call void @llvm.dbg.value(metadata !{i32* %iz}, i64 0, metadata !41), !dbg !296
  call void @llvm.dbg.value(metadata !{double* %eps}, i64 0, metadata !42), !dbg !296
  call void @llvm.dbg.value(metadata !{i32* %niter}, i64 0, metadata !43), !dbg !296
  call void @llvm.dbg.value(metadata !{i32 %precFlg}, i64 0, metadata !44), !dbg !296
  call void @llvm.dbg.value(metadata !{double* %rho}, i64 0, metadata !45), !dbg !297
  call void @llvm.dbg.value(metadata !{double* %r}, i64 0, metadata !46), !dbg !297
  call void @llvm.dbg.value(metadata !{double* %g}, i64 0, metadata !47), !dbg !297
  call void @llvm.dbg.value(metadata !{double* %C}, i64 0, metadata !48), !dbg !297
  call void @llvm.dbg.value(metadata !{double* %z}, i64 0, metadata !49), !dbg !297
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !50), !dbg !298
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !298
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !52), !dbg !298
  call void @llvm.dbg.declare(metadata !{i32* %ier}, metadata !54), !dbg !298
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !54), !dbg !298
  store i32 0, i32* %ier, align 4, !dbg !298, !tbaa !182
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !55), !dbg !299
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !56), !dbg !299
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !57), !dbg !299
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !300), !dbg !304
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !57), !dbg !305
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !57), !dbg !307
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !57), !dbg !308
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !57), !dbg !309
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !58), !dbg !310
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !59), !dbg !310
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !311), !dbg !313
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !59), !dbg !307
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !60), !dbg !310
  call void @llvm.dbg.value(metadata !230, i64 0, metadata !61), !dbg !314
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !64), !dbg !314
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !62), !dbg !315
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !53), !dbg !315
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !50), !dbg !316
  %cmp225 = icmp sgt i32 %neq, 0, !dbg !316
  br i1 %cmp225, label %for.body, label %return, !dbg !316

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %for.inc ], [ 0, %entry ]
  %qam.0228 = phi double [ %qam.1, %for.inc ], [ 0.000000e+00, %entry ]
  %iam.0226 = phi i32 [ %iam.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv246, !dbg !318
  store double 0.000000e+00, double* %arrayidx, align 8, !dbg !318, !tbaa !206
  %arrayidx2 = getelementptr inbounds double* %b, i64 %indvars.iv246, !dbg !320
  %0 = load double* %arrayidx2, align 8, !dbg !320, !tbaa !206
  %arrayidx4 = getelementptr inbounds double* %r, i64 %indvars.iv246, !dbg !320
  store double %0, double* %arrayidx4, align 8, !dbg !320, !tbaa !206
  %call = call double @fabs(double %0) #8, !dbg !321
  call void @llvm.dbg.value(metadata !{double %call}, i64 0, metadata !63), !dbg !321
  %cmp7 = fcmp ogt double %call, 1.000000e-20, !dbg !322
  br i1 %cmp7, label %if.then, label %for.inc, !dbg !322

if.then:                                          ; preds = %for.body
  %add = fadd double %qam.0228, %call, !dbg !323
  call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !62), !dbg !323
  %inc = add nsw i32 %iam.0226, 1, !dbg !323
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !53), !dbg !323
  br label %for.inc, !dbg !323

for.inc:                                          ; preds = %for.body, %if.then
  %iam.1 = phi i32 [ %inc, %if.then ], [ %iam.0226, %for.body ]
  %qam.1 = phi double [ %add, %if.then ], [ %qam.0228, %for.body ]
  %indvars.iv.next247 = add i64 %indvars.iv246, 1, !dbg !316
  %lftr.wideiv248 = trunc i64 %indvars.iv.next247 to i32, !dbg !316
  %exitcond249 = icmp eq i32 %lftr.wideiv248, %neq, !dbg !316
  br i1 %exitcond249, label %for.end, label %for.body, !dbg !316

for.end:                                          ; preds = %for.inc
  %cmp9 = icmp sgt i32 %iam.1, 0, !dbg !325
  br i1 %cmp9, label %if.then10, label %return, !dbg !325

if.then10:                                        ; preds = %for.end
  %conv = sitofp i32 %iam.1 to double, !dbg !325
  %div = fdiv double %qam.1, %conv, !dbg !325
  call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !62), !dbg !325
  %puts = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str5, i64 0, i64 0)), !dbg !326
  %call13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0), double 0.000000e+00) #6, !dbg !327
  call void @PreConditioning(double* %A, i32 %neq, i32 undef, i32* %ia, i32* %iz, double 0.000000e+00, i32 undef, double* %C, i32* %ier) #7, !dbg !328
  call void @llvm.dbg.value(metadata !{i32* %ier}, i64 0, metadata !54), !dbg !329
  %1 = load i32* %ier, align 4, !dbg !329, !tbaa !182
  %cmp14223 = icmp eq i32 %1, 0, !dbg !329
  br i1 %cmp14223, label %while.body, label %while.end, !dbg !329

while.body:                                       ; preds = %if.then10, %while.body
  %alpha.0224 = phi double [ %add20, %while.body ], [ 0.000000e+00, %if.then10 ]
  %cmp16 = fcmp ugt double %alpha.0224, 0.000000e+00, !dbg !330
  call void @llvm.dbg.value(metadata !230, i64 0, metadata !55), !dbg !330
  %alpha.1 = select i1 %cmp16, double %alpha.0224, double 5.000000e-03, !dbg !330
  %add20 = fadd double %alpha.1, %alpha.1, !dbg !332
  call void @llvm.dbg.value(metadata !{double %add20}, i64 0, metadata !55), !dbg !332
  %call21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0), double %add20) #6, !dbg !333
  call void @PreConditioning(double* %A, i32 %neq, i32 undef, i32* %ia, i32* %iz, double %add20, i32 undef, double* %C, i32* %ier) #7, !dbg !334
  call void @llvm.dbg.value(metadata !{i32* %ier}, i64 0, metadata !54), !dbg !329
  %2 = load i32* %ier, align 4, !dbg !329, !tbaa !182
  %cmp14 = icmp eq i32 %2, 0, !dbg !329
  br i1 %cmp14, label %while.body, label %while.end, !dbg !329

while.end:                                        ; preds = %while.body, %if.then10
  %puts188 = call i32 @puts(i8* getelementptr inbounds ([60 x i8]* @str6, i64 0, i64 0)), !dbg !335
  call void @llvm.dbg.value(metadata !216, i64 0, metadata !51), !dbg !336
  %3 = load i32* %niter, align 4, !dbg !336, !tbaa !182
  %cmp24215 = icmp slt i32 %3, 1, !dbg !336
  br i1 %cmp24215, label %for.end97, label %for.body26.lr.ph, !dbg !336

for.body26.lr.ph:                                 ; preds = %while.end
  %mul = fmul double %div, 5.000000e-03, !dbg !337
  br label %for.body26, !dbg !336

for.body26:                                       ; preds = %for.end93, %for.body26.lr.ph
  %ram.0219 = phi double [ 0.000000e+00, %for.body26.lr.ph ], [ %ram.1.lcssa, %for.end93 ]
  %ncg.0218 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc96, %for.end93 ]
  %k.0217 = phi i32 [ 1, %for.body26.lr.ph ], [ %inc95, %for.end93 ]
  %add.i205216 = phi double [ 0.000000e+00, %for.body26.lr.ph ], [ %add.i206, %for.end93 ]
  call void @Mrhor(double* %C, i32 %neq, i32* %ia, i32* %iz, double* %r, double* %rho) #7, !dbg !338
  tail call void @llvm.dbg.value(metadata !{double* %r}, i64 0, metadata !339), !dbg !304
  tail call void @llvm.dbg.value(metadata !{double* %rho}, i64 0, metadata !340), !dbg !304
  tail call void @llvm.dbg.value(metadata !{i32 %neq}, i64 0, metadata !341), !dbg !304
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !342), !dbg !343
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !57), !dbg !344
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !300), !dbg !304
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !57), !dbg !305
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !57), !dbg !307
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !57), !dbg !308
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !57), !dbg !309
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !342), !dbg !345
  br i1 %cmp225, label %for.body.i, label %InnerProduct.exit, !dbg !345

for.body.i:                                       ; preds = %for.body26, %for.body.i
  %4 = phi double [ %add.i, %for.body.i ], [ 0.000000e+00, %for.body26 ], !dbg !345
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.body26 ]
  %arrayidx.i = getelementptr inbounds double* %r, i64 %indvars.iv.i, !dbg !345
  %5 = load double* %arrayidx.i, align 8, !dbg !345, !tbaa !206
  %arrayidx2.i = getelementptr inbounds double* %rho, i64 %indvars.iv.i, !dbg !345
  %6 = load double* %arrayidx2.i, align 8, !dbg !345, !tbaa !206
  %mul.i = fmul double %5, %6, !dbg !345
  %add.i = fadd double %4, %mul.i, !dbg !345
  call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !57), !dbg !345
  call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !300), !dbg !304
  call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !57), !dbg !305
  call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !57), !dbg !307
  call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !57), !dbg !308
  call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !57), !dbg !309
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !345
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !345
  %exitcond = icmp eq i32 %lftr.wideiv, %neq, !dbg !345
  br i1 %exitcond, label %InnerProduct.exit, label %for.body.i, !dbg !345

InnerProduct.exit:                                ; preds = %for.body.i, %for.body26
  %add.i206 = phi double [ 0.000000e+00, %for.body26 ], [ %add.i, %for.body.i ]
  %call27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), i32 %ncg.0218, double %ram.0219, double %mul) #6, !dbg !337
  %cmp28 = icmp ne i32 %k.0217, 1, !dbg !346
  %cmp28.not = xor i1 %cmp28, true, !dbg !346
  %cmp31 = fcmp ugt double %ram.0219, %mul, !dbg !346
  %or.cond = or i1 %cmp31, %cmp28.not, !dbg !346
  br i1 %or.cond, label %if.end34, label %for.end97split, !dbg !346

if.end34:                                         ; preds = %InnerProduct.exit
  br i1 %cmp28, label %if.then37, label %for.cond54.preheader, !dbg !347

for.cond54.preheader:                             ; preds = %if.end34
  br i1 %cmp225, label %for.body57, label %if.end66.thread, !dbg !348

if.then37:                                        ; preds = %if.end34
  %div38 = fdiv double %add.i206, %add.i205216, !dbg !305
  call void @llvm.dbg.value(metadata !{double %div38}, i64 0, metadata !56), !dbg !305
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !50), !dbg !351
  br i1 %cmp225, label %for.body42, label %if.end66.thread, !dbg !351

for.body42:                                       ; preds = %if.then37, %for.body42
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %for.body42 ], [ 0, %if.then37 ]
  %arrayidx44 = getelementptr inbounds double* %g, i64 %indvars.iv233, !dbg !351
  %7 = load double* %arrayidx44, align 8, !dbg !351, !tbaa !206
  %mul45 = fmul double %div38, %7, !dbg !351
  %arrayidx47 = getelementptr inbounds double* %rho, i64 %indvars.iv233, !dbg !351
  %8 = load double* %arrayidx47, align 8, !dbg !351, !tbaa !206
  %sub = fsub double %mul45, %8, !dbg !351
  store double %sub, double* %arrayidx44, align 8, !dbg !351, !tbaa !206
  %indvars.iv.next234 = add i64 %indvars.iv233, 1, !dbg !351
  %lftr.wideiv235 = trunc i64 %indvars.iv.next234 to i32, !dbg !351
  %exitcond236 = icmp eq i32 %lftr.wideiv235, %neq, !dbg !351
  br i1 %exitcond236, label %if.end66, label %for.body42, !dbg !351

for.body57:                                       ; preds = %for.cond54.preheader, %for.body57
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body57 ], [ 0, %for.cond54.preheader ]
  %arrayidx59 = getelementptr inbounds double* %rho, i64 %indvars.iv, !dbg !348
  %9 = load double* %arrayidx59, align 8, !dbg !348, !tbaa !206
  %sub60 = fsub double -0.000000e+00, %9, !dbg !348
  %arrayidx62 = getelementptr inbounds double* %g, i64 %indvars.iv, !dbg !348
  store double %sub60, double* %arrayidx62, align 8, !dbg !348, !tbaa !206
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !348
  %lftr.wideiv231 = trunc i64 %indvars.iv.next to i32, !dbg !348
  %exitcond232 = icmp eq i32 %lftr.wideiv231, %neq, !dbg !348
  br i1 %exitcond232, label %if.end66, label %for.body57, !dbg !348

if.end66.thread:                                  ; preds = %if.then37, %for.cond54.preheader
  call void @MatVecProduct(double* %A, double* %g, i32 %neq, i32* %ia, i32* %iz, double* %z) #7, !dbg !353
  tail call void @llvm.dbg.value(metadata !{double* %g}, i64 0, metadata !354), !dbg !313
  tail call void @llvm.dbg.value(metadata !{double* %z}, i64 0, metadata !355), !dbg !313
  tail call void @llvm.dbg.value(metadata !{i32 %neq}, i64 0, metadata !356), !dbg !313
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !357), !dbg !358
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !59), !dbg !359
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !311), !dbg !313
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !59), !dbg !307
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !357), !dbg !360
  br label %InnerProduct.exit199, !dbg !360

if.end66:                                         ; preds = %for.body42, %for.body57
  call void @MatVecProduct(double* %A, double* %g, i32 %neq, i32* %ia, i32* %iz, double* %z) #7, !dbg !353
  tail call void @llvm.dbg.value(metadata !{double* %g}, i64 0, metadata !354), !dbg !313
  tail call void @llvm.dbg.value(metadata !{double* %z}, i64 0, metadata !355), !dbg !313
  tail call void @llvm.dbg.value(metadata !{i32 %neq}, i64 0, metadata !356), !dbg !313
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !357), !dbg !358
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !59), !dbg !359
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !311), !dbg !313
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !59), !dbg !307
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !357), !dbg !360
  br i1 %cmp225, label %for.body.i198, label %for.end93, !dbg !360

for.body.i198:                                    ; preds = %if.end66, %for.body.i198
  %10 = phi double [ %add.i194, %for.body.i198 ], [ 0.000000e+00, %if.end66 ], !dbg !360
  %indvars.iv.i190 = phi i64 [ %indvars.iv.next.i195, %for.body.i198 ], [ 0, %if.end66 ]
  %arrayidx.i191 = getelementptr inbounds double* %g, i64 %indvars.iv.i190, !dbg !360
  %11 = load double* %arrayidx.i191, align 8, !dbg !360, !tbaa !206
  %arrayidx2.i192 = getelementptr inbounds double* %z, i64 %indvars.iv.i190, !dbg !360
  %12 = load double* %arrayidx2.i192, align 8, !dbg !360, !tbaa !206
  %mul.i193 = fmul double %11, %12, !dbg !360
  %add.i194 = fadd double %10, %mul.i193, !dbg !360
  call void @llvm.dbg.value(metadata !{double %add.i194}, i64 0, metadata !59), !dbg !360
  call void @llvm.dbg.value(metadata !{double %add.i194}, i64 0, metadata !311), !dbg !313
  call void @llvm.dbg.value(metadata !{double %add.i194}, i64 0, metadata !59), !dbg !307
  %indvars.iv.next.i195 = add i64 %indvars.iv.i190, 1, !dbg !360
  %lftr.wideiv237 = trunc i64 %indvars.iv.next.i195 to i32, !dbg !360
  %exitcond238 = icmp eq i32 %lftr.wideiv237, %neq, !dbg !360
  br i1 %exitcond238, label %InnerProduct.exit199, label %for.body.i198, !dbg !360

InnerProduct.exit199:                             ; preds = %for.body.i198, %if.end66.thread
  %add.i194203 = phi double [ 0.000000e+00, %if.end66.thread ], [ %add.i194, %for.body.i198 ]
  %div67 = fdiv double %add.i206, %add.i194203, !dbg !307
  call void @llvm.dbg.value(metadata !{double %div67}, i64 0, metadata !60), !dbg !307
  call void @llvm.dbg.value(metadata !228, i64 0, metadata !64), !dbg !361
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !50), !dbg !362
  br i1 %cmp225, label %for.body71, label %for.end93, !dbg !362

for.body71:                                       ; preds = %InnerProduct.exit199, %for.body71
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %for.body71 ], [ 0, %InnerProduct.exit199 ]
  %ram.1214 = phi double [ %ram.2, %for.body71 ], [ 0.000000e+00, %InnerProduct.exit199 ]
  %arrayidx73 = getelementptr inbounds double* %g, i64 %indvars.iv239, !dbg !364
  %13 = load double* %arrayidx73, align 8, !dbg !364, !tbaa !206
  %mul74 = fmul double %div67, %13, !dbg !364
  %arrayidx76 = getelementptr inbounds double* %x, i64 %indvars.iv239, !dbg !364
  %14 = load double* %arrayidx76, align 8, !dbg !364, !tbaa !206
  %add77 = fadd double %14, %mul74, !dbg !364
  store double %add77, double* %arrayidx76, align 8, !dbg !364, !tbaa !206
  %arrayidx79 = getelementptr inbounds double* %z, i64 %indvars.iv239, !dbg !366
  %15 = load double* %arrayidx79, align 8, !dbg !366, !tbaa !206
  %mul80 = fmul double %div67, %15, !dbg !366
  %arrayidx82 = getelementptr inbounds double* %r, i64 %indvars.iv239, !dbg !366
  %16 = load double* %arrayidx82, align 8, !dbg !366, !tbaa !206
  %add83 = fadd double %16, %mul80, !dbg !366
  store double %add83, double* %arrayidx82, align 8, !dbg !366, !tbaa !206
  %call86 = call double @fabs(double %add83) #8, !dbg !367
  call void @llvm.dbg.value(metadata !{double %call86}, i64 0, metadata !63), !dbg !367
  %cmp87 = fcmp ogt double %call86, %ram.1214, !dbg !368
  call void @llvm.dbg.value(metadata !{double %call86}, i64 0, metadata !64), !dbg !368
  %ram.2 = select i1 %cmp87, double %call86, double %ram.1214, !dbg !368
  %indvars.iv.next240 = add i64 %indvars.iv239, 1, !dbg !362
  %lftr.wideiv241 = trunc i64 %indvars.iv.next240 to i32, !dbg !362
  %exitcond242 = icmp eq i32 %lftr.wideiv241, %neq, !dbg !362
  br i1 %exitcond242, label %for.end93, label %for.body71, !dbg !362

for.end93:                                        ; preds = %if.end66, %for.body71, %InnerProduct.exit199
  %ram.1.lcssa = phi double [ 0.000000e+00, %InnerProduct.exit199 ], [ %ram.2, %for.body71 ], [ 0.000000e+00, %if.end66 ]
  call void @llvm.dbg.value(metadata !{double %add.i206}, i64 0, metadata !58), !dbg !308
  %inc95 = add nsw i32 %k.0217, 1, !dbg !336
  call void @llvm.dbg.value(metadata !{i32 %inc95}, i64 0, metadata !51), !dbg !336
  %inc96 = add nsw i32 %ncg.0218, 1, !dbg !336
  call void @llvm.dbg.value(metadata !{i32 %inc96}, i64 0, metadata !52), !dbg !336
  %17 = load i32* %niter, align 4, !dbg !336, !tbaa !182
  %cmp24 = icmp slt i32 %k.0217, %17, !dbg !336
  br i1 %cmp24, label %for.body26, label %for.end97, !dbg !336

for.end97split:                                   ; preds = %InnerProduct.exit
  %.pre = load i32* %niter, align 4, !dbg !369, !tbaa !182
  br label %for.end97

for.end97:                                        ; preds = %for.end93, %for.end97split, %while.end
  %18 = phi i32 [ %3, %while.end ], [ %.pre, %for.end97split ], [ %17, %for.end93 ]
  %ncg.0.lcssa = phi i32 [ 0, %while.end ], [ %ncg.0218, %for.end97split ], [ %inc96, %for.end93 ]
  %k.0.lcssa = phi i32 [ 1, %while.end ], [ %k.0217, %for.end97split ], [ %inc95, %for.end93 ]
  %add.i204 = phi double [ 0.000000e+00, %while.end ], [ %add.i206, %for.end97split ], [ %add.i206, %for.end93 ]
  %cmp98 = icmp eq i32 %k.0.lcssa, %18, !dbg !369
  br i1 %cmp98, label %if.then100, label %if.end102, !dbg !369

if.then100:                                       ; preds = %for.end97
  %call101 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !370
  call void (...)* @stop_() #6, !dbg !372
  br label %if.end102, !dbg !373

if.end102:                                        ; preds = %if.then100, %for.end97
  store double %add.i204, double* %eps, align 8, !dbg !309, !tbaa !206
  br label %return, !dbg !374

return:                                           ; preds = %entry, %for.end, %if.end102
  %storemerge = phi i32 [ %ncg.0.lcssa, %if.end102 ], [ 0, %for.end ], [ 0, %entry ]
  store i32 %storemerge, i32* %niter, align 4, !dbg !375, !tbaa !182
  ret void, !dbg !374
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @PreConditioning(double* nocapture %A, i32 %neq, i32 %len, i32* nocapture %ia, i32* nocapture %iz, double %alpha, i32 %precFlg, double* nocapture %C, i32* nocapture %ier) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %A}, i64 0, metadata !96), !dbg !376
  tail call void @llvm.dbg.value(metadata !{i32 %neq}, i64 0, metadata !97), !dbg !376
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !98), !dbg !376
  tail call void @llvm.dbg.value(metadata !{i32* %ia}, i64 0, metadata !99), !dbg !376
  tail call void @llvm.dbg.value(metadata !{i32* %iz}, i64 0, metadata !100), !dbg !376
  tail call void @llvm.dbg.value(metadata !{double %alpha}, i64 0, metadata !101), !dbg !377
  tail call void @llvm.dbg.value(metadata !{i32 %precFlg}, i64 0, metadata !102), !dbg !377
  tail call void @llvm.dbg.value(metadata !{double* %C}, i64 0, metadata !103), !dbg !378
  tail call void @llvm.dbg.value(metadata !{i32* %ier}, i64 0, metadata !104), !dbg !378
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !105), !dbg !379
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !106), !dbg !379
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !107), !dbg !379
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !108), !dbg !379
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !109), !dbg !379
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !110), !dbg !379
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !111), !dbg !379
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !112), !dbg !379
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !113), !dbg !379
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !114), !dbg !379
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !115), !dbg !380
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !116), !dbg !380
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !117), !dbg !380
  %add = fadd double %alpha, 1.000000e+00, !dbg !381
  %div = fdiv double 1.000000e+00, %add, !dbg !381
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !118), !dbg !381
  %0 = load double* %A, align 8, !dbg !382, !tbaa !206
  store double %0, double* %C, align 8, !dbg !382, !tbaa !206
  tail call void @llvm.dbg.value(metadata !216, i64 0, metadata !105), !dbg !383
  %cmp167 = icmp sgt i32 %neq, 1, !dbg !383
  br i1 %cmp167, label %for.body.lr.ph, label %for.end98, !dbg !383

for.body.lr.ph:                                   ; preds = %entry
  %.pre = load i32* %iz, align 4, !dbg !385, !tbaa !182
  br label %for.body, !dbg !383

for.cond20.preheader:                             ; preds = %for.inc17
  br i1 %cmp167, label %for.body22, label %for.end98, !dbg !387

for.body:                                         ; preds = %for.inc17, %for.body.lr.ph
  %1 = phi i32 [ %.pre, %for.body.lr.ph ], [ %2, %for.inc17 ], !dbg !385
  %indvars.iv184 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next185, %for.inc17 ]
  %arrayidx5 = getelementptr inbounds i32* %iz, i64 %indvars.iv184, !dbg !389
  %2 = load i32* %arrayidx5, align 4, !dbg !389, !tbaa !182
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !108), !dbg !389
  %idxprom6 = sext i32 %2 to i64, !dbg !390
  %arrayidx7 = getelementptr inbounds double* %A, i64 %idxprom6, !dbg !390
  %3 = load double* %arrayidx7, align 8, !dbg !390, !tbaa !206
  %arrayidx9 = getelementptr inbounds double* %C, i64 %idxprom6, !dbg !390
  store double %3, double* %arrayidx9, align 8, !dbg !390, !tbaa !206
  %j.0164 = add i32 %1, 1, !dbg !385
  %cmp11165 = icmp slt i32 %j.0164, %2, !dbg !391
  br i1 %cmp11165, label %for.body12.lr.ph, label %for.inc17, !dbg !391

for.body12.lr.ph:                                 ; preds = %for.body
  %4 = sext i32 %j.0164 to i64
  br label %for.body12, !dbg !391

for.body12:                                       ; preds = %for.body12, %for.body12.lr.ph
  %indvars.iv180 = phi i64 [ %4, %for.body12.lr.ph ], [ %indvars.iv.next181, %for.body12 ]
  %j.0166 = phi i32 [ %j.0164, %for.body12.lr.ph ], [ %j.0, %for.body12 ]
  %arrayidx14 = getelementptr inbounds double* %A, i64 %indvars.iv180, !dbg !393
  %5 = load double* %arrayidx14, align 8, !dbg !393, !tbaa !206
  %mul = fmul double %div, %5, !dbg !393
  %arrayidx16 = getelementptr inbounds double* %C, i64 %indvars.iv180, !dbg !393
  store double %mul, double* %arrayidx16, align 8, !dbg !393, !tbaa !206
  %j.0 = add nsw i32 %j.0166, 1, !dbg !385
  %indvars.iv.next181 = add i64 %indvars.iv180, 1, !dbg !391
  %exitcond183 = icmp eq i32 %j.0, %2, !dbg !391
  br i1 %exitcond183, label %for.inc17, label %for.body12, !dbg !391

for.inc17:                                        ; preds = %for.body12, %for.body
  %indvars.iv.next185 = add i64 %indvars.iv184, 1, !dbg !383
  %lftr.wideiv = trunc i64 %indvars.iv.next185 to i32, !dbg !383
  %exitcond187 = icmp eq i32 %lftr.wideiv, %neq, !dbg !383
  br i1 %exitcond187, label %for.cond20.preheader, label %for.body, !dbg !383

for.body22:                                       ; preds = %if.end91, %for.cond20.preheader
  %indvars.iv177 = phi i64 [ 1, %for.cond20.preheader ], [ %indvars.iv.next178, %if.end91 ]
  %6 = add nsw i64 %indvars.iv177, -1, !dbg !394
  %arrayidx25 = getelementptr inbounds i32* %iz, i64 %6, !dbg !394
  %7 = load i32* %arrayidx25, align 4, !dbg !394, !tbaa !182
  %add26 = add i32 %7, 1, !dbg !394
  tail call void @llvm.dbg.value(metadata !{i32 %add26}, i64 0, metadata !107), !dbg !394
  %arrayidx28 = getelementptr inbounds i32* %iz, i64 %indvars.iv177, !dbg !396
  %8 = load i32* %arrayidx28, align 4, !dbg !396, !tbaa !182
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !108), !dbg !396
  tail call void @llvm.dbg.value(metadata !{i32 %add26}, i64 0, metadata !106), !dbg !397
  %cmp30160 = icmp slt i32 %add26, %8, !dbg !397
  br i1 %cmp30160, label %for.body31.lr.ph, label %for.end84, !dbg !397

for.body31.lr.ph:                                 ; preds = %for.body22
  %9 = add i32 %7, 2, !dbg !397
  %10 = sext i32 %9 to i64
  %11 = sext i32 %add26 to i64
  br label %for.body44.lr.ph, !dbg !397

for.cond29.loopexit:                              ; preds = %for.inc79
  %indvars.iv.next170 = add i64 %indvars.iv169, 1, !dbg !397
  %indvars.iv.next175 = add i64 %indvars.iv174, 1, !dbg !397
  %exitcond = icmp eq i32 %add41, %8, !dbg !397
  br i1 %exitcond, label %for.end84, label %for.body44.lr.ph, !dbg !397

for.body44.lr.ph:                                 ; preds = %for.body31.lr.ph, %for.cond29.loopexit
  %indvars.iv174 = phi i64 [ %11, %for.body31.lr.ph ], [ %indvars.iv.next175, %for.cond29.loopexit ]
  %indvars.iv169 = phi i64 [ %10, %for.body31.lr.ph ], [ %indvars.iv.next170, %for.cond29.loopexit ]
  %j.1161 = phi i32 [ %add26, %for.body31.lr.ph ], [ %add41, %for.cond29.loopexit ]
  %arrayidx33 = getelementptr inbounds i32* %ia, i64 %indvars.iv174, !dbg !399
  %12 = load i32* %arrayidx33, align 4, !dbg !399, !tbaa !182
  %idxprom34 = sext i32 %12 to i64, !dbg !399
  %arrayidx35 = getelementptr inbounds i32* %iz, i64 %idxprom34, !dbg !399
  %13 = load i32* %arrayidx35, align 4, !dbg !399, !tbaa !182
  %idxprom36 = sext i32 %13 to i64, !dbg !399
  %arrayidx37 = getelementptr inbounds double* %C, i64 %idxprom36, !dbg !399
  %14 = load double* %arrayidx37, align 8, !dbg !399, !tbaa !206
  %arrayidx39 = getelementptr inbounds double* %C, i64 %indvars.iv174, !dbg !399
  %15 = load double* %arrayidx39, align 8, !dbg !399, !tbaa !206
  %div40 = fdiv double %15, %14, !dbg !399
  store double %div40, double* %arrayidx39, align 8, !dbg !399, !tbaa !206
  %add41 = add nsw i32 %j.1161, 1, !dbg !401
  tail call void @llvm.dbg.value(metadata !{i32 %add41}, i64 0, metadata !110), !dbg !401
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !111), !dbg !402
  tail call void @llvm.dbg.value(metadata !{i32 %add41}, i64 0, metadata !109), !dbg !403
  br label %for.body44, !dbg !403

for.body44:                                       ; preds = %for.inc79, %for.body44.lr.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %for.inc79 ], [ %indvars.iv169, %for.body44.lr.ph ], !dbg !397
  %arrayidx46 = getelementptr inbounds i32* %ia, i64 %indvars.iv171, !dbg !405
  %16 = load i32* %arrayidx46, align 4, !dbg !405, !tbaa !182
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !117), !dbg !405
  %sub47 = add nsw i32 %16, -1, !dbg !407
  %idxprom48 = sext i32 %sub47 to i64, !dbg !407
  %arrayidx49 = getelementptr inbounds i32* %iz, i64 %idxprom48, !dbg !407
  %17 = load i32* %arrayidx49, align 4, !dbg !407, !tbaa !182
  %idxprom51 = sext i32 %16 to i64, !dbg !408
  %arrayidx52 = getelementptr inbounds i32* %iz, i64 %idxprom51, !dbg !408
  %18 = load i32* %arrayidx52, align 4, !dbg !408, !tbaa !182
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !114), !dbg !408
  %19 = sext i32 %17 to i64
  br label %for.cond53, !dbg !409

for.cond53:                                       ; preds = %if.end, %for.body44
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ %19, %for.body44 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !411
  %20 = trunc i64 %indvars.iv to i32, !dbg !409
  %cmp54 = icmp slt i32 %20, %18, !dbg !409
  br i1 %cmp54, label %for.body55, label %for.inc79, !dbg !409

for.body55:                                       ; preds = %for.cond53
  %arrayidx57 = getelementptr inbounds i32* %ia, i64 %indvars.iv.next, !dbg !413
  %21 = load i32* %arrayidx57, align 4, !dbg !413, !tbaa !182
  %cmp60 = icmp sgt i32 %21, %12, !dbg !413
  br i1 %cmp60, label %for.inc79, label %if.end, !dbg !413

if.end:                                           ; preds = %for.body55
  %cmp65 = icmp slt i32 %21, %12, !dbg !411
  br i1 %cmp65, label %for.cond53, label %if.end67, !dbg !411

if.end67:                                         ; preds = %if.end
  %22 = load double* %arrayidx39, align 8, !dbg !414, !tbaa !206
  %arrayidx71 = getelementptr inbounds double* %C, i64 %indvars.iv.next, !dbg !414
  %23 = load double* %arrayidx71, align 8, !dbg !414, !tbaa !206
  %mul72 = fmul double %22, %23, !dbg !414
  %arrayidx74 = getelementptr inbounds double* %C, i64 %indvars.iv171, !dbg !414
  %24 = load double* %arrayidx74, align 8, !dbg !414, !tbaa !206
  %sub75 = fsub double %24, %mul72, !dbg !414
  store double %sub75, double* %arrayidx74, align 8, !dbg !414, !tbaa !206
  br label %for.inc79, !dbg !415

for.inc79:                                        ; preds = %for.cond53, %for.body55, %if.end67
  %25 = trunc i64 %indvars.iv171 to i32, !dbg !403
  %cmp43 = icmp slt i32 %25, %8, !dbg !403
  %indvars.iv.next172 = add i64 %indvars.iv171, 1, !dbg !403
  br i1 %cmp43, label %for.body44, label %for.cond29.loopexit, !dbg !403

for.end84:                                        ; preds = %for.cond29.loopexit, %for.body22
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !115), !dbg !416
  %idxprom87 = sext i32 %8 to i64, !dbg !417
  %arrayidx88 = getelementptr inbounds double* %C, i64 %idxprom87, !dbg !417
  %26 = load double* %arrayidx88, align 8, !dbg !417, !tbaa !206
  %cmp89 = fcmp olt double %26, 1.000000e-06, !dbg !417
  br i1 %cmp89, label %return, label %if.end91, !dbg !417

if.end91:                                         ; preds = %for.end84
  %call = tail call double @sqrt(double %26) #6, !dbg !418
  store double %call, double* %arrayidx88, align 8, !dbg !418, !tbaa !206
  %indvars.iv.next178 = add i64 %indvars.iv177, 1, !dbg !387
  %27 = trunc i64 %indvars.iv.next178 to i32, !dbg !387
  %cmp21 = icmp slt i32 %27, %neq, !dbg !387
  br i1 %cmp21, label %for.body22, label %for.end98, !dbg !387

for.end98:                                        ; preds = %entry, %if.end91, %for.cond20.preheader
  store i32 1, i32* %ier, align 4, !dbg !419, !tbaa !182
  br label %return, !dbg !420

return:                                           ; preds = %for.end84, %for.end98
  ret void, !dbg !420
}

; Function Attrs: nounwind optsize uwtable
define void @Mrhor(double* nocapture %C, i32 %neq, i32* nocapture %ia, i32* nocapture %iz, double* nocapture %r, double* nocapture %rho) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %C}, i64 0, metadata !123), !dbg !421
  tail call void @llvm.dbg.value(metadata !{i32 %neq}, i64 0, metadata !124), !dbg !421
  tail call void @llvm.dbg.value(metadata !{i32* %ia}, i64 0, metadata !125), !dbg !421
  tail call void @llvm.dbg.value(metadata !{i32* %iz}, i64 0, metadata !126), !dbg !421
  tail call void @llvm.dbg.value(metadata !{double* %r}, i64 0, metadata !127), !dbg !421
  tail call void @llvm.dbg.value(metadata !{double* %rho}, i64 0, metadata !128), !dbg !421
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !129), !dbg !422
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !130), !dbg !422
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !131), !dbg !422
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !132), !dbg !422
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !133), !dbg !423
  %0 = load double* %r, align 8, !dbg !424, !tbaa !206
  store double %0, double* %rho, align 8, !dbg !424, !tbaa !206
  tail call void @llvm.dbg.value(metadata !216, i64 0, metadata !129), !dbg !425
  %cmp110 = icmp sgt i32 %neq, 1, !dbg !425
  br i1 %cmp110, label %for.body.lr.ph, label %for.cond26.preheader, !dbg !425

for.body.lr.ph:                                   ; preds = %entry
  %.pre = load i32* %iz, align 4, !dbg !427, !tbaa !182
  br label %for.body, !dbg !425

for.cond26.preheader:                             ; preds = %for.end, %entry
  %i.1102 = add i32 %neq, -1, !dbg !429
  %cmp27103 = icmp sgt i32 %i.1102, 0, !dbg !429
  br i1 %cmp27103, label %for.body28.lr.ph, label %for.end60, !dbg !429

for.body28.lr.ph:                                 ; preds = %for.cond26.preheader
  %1 = sext i32 %i.1102 to i64
  br label %for.body28, !dbg !429

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %2 = phi i32 [ %.pre, %for.body.lr.ph ], [ %3, %for.end ], !dbg !431
  %indvars.iv118 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next119, %for.end ]
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !133), !dbg !431
  %arrayidx4 = getelementptr inbounds i32* %iz, i64 %indvars.iv118, !dbg !432
  %3 = load i32* %arrayidx4, align 4, !dbg !432, !tbaa !182
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !132), !dbg !432
  %j.0106 = add i32 %2, 1, !dbg !427
  %cmp6107 = icmp slt i32 %j.0106, %3, !dbg !433
  br i1 %cmp6107, label %for.body7.lr.ph, label %for.end, !dbg !433

for.body7.lr.ph:                                  ; preds = %for.body
  %4 = sext i32 %j.0106 to i64
  br label %for.body7, !dbg !433

for.body7:                                        ; preds = %for.body7, %for.body7.lr.ph
  %indvars.iv115 = phi i64 [ %4, %for.body7.lr.ph ], [ %indvars.iv.next116, %for.body7 ]
  %j.0109 = phi i32 [ %j.0106, %for.body7.lr.ph ], [ %j.0, %for.body7 ]
  %s.0108 = phi double [ 0.000000e+00, %for.body7.lr.ph ], [ %add14, %for.body7 ]
  %arrayidx9 = getelementptr inbounds double* %C, i64 %indvars.iv115, !dbg !435
  %5 = load double* %arrayidx9, align 8, !dbg !435, !tbaa !206
  %arrayidx11 = getelementptr inbounds i32* %ia, i64 %indvars.iv115, !dbg !435
  %6 = load i32* %arrayidx11, align 4, !dbg !435, !tbaa !182
  %idxprom12 = sext i32 %6 to i64, !dbg !435
  %arrayidx13 = getelementptr inbounds double* %rho, i64 %idxprom12, !dbg !435
  %7 = load double* %arrayidx13, align 8, !dbg !435, !tbaa !206
  %mul = fmul double %5, %7, !dbg !435
  %add14 = fadd double %s.0108, %mul, !dbg !435
  tail call void @llvm.dbg.value(metadata !{double %add14}, i64 0, metadata !133), !dbg !435
  %j.0 = add nsw i32 %j.0109, 1, !dbg !427
  %indvars.iv.next116 = add i64 %indvars.iv115, 1, !dbg !433
  %exitcond = icmp eq i32 %j.0, %3, !dbg !433
  br i1 %exitcond, label %for.end, label %for.body7, !dbg !433

for.end:                                          ; preds = %for.body7, %for.body
  %s.0.lcssa = phi double [ 0.000000e+00, %for.body ], [ %add14, %for.body7 ]
  %arrayidx16 = getelementptr inbounds double* %r, i64 %indvars.iv118, !dbg !436
  %8 = load double* %arrayidx16, align 8, !dbg !436, !tbaa !206
  %sub17 = fsub double %8, %s.0.lcssa, !dbg !436
  %idxprom18 = sext i32 %3 to i64, !dbg !436
  %arrayidx19 = getelementptr inbounds double* %C, i64 %idxprom18, !dbg !436
  %9 = load double* %arrayidx19, align 8, !dbg !436, !tbaa !206
  %div = fdiv double %sub17, %9, !dbg !436
  %arrayidx21 = getelementptr inbounds double* %rho, i64 %indvars.iv118, !dbg !436
  store double %div, double* %arrayidx21, align 8, !dbg !436, !tbaa !206
  %indvars.iv.next119 = add i64 %indvars.iv118, 1, !dbg !425
  %lftr.wideiv = trunc i64 %indvars.iv.next119 to i32, !dbg !425
  %exitcond121 = icmp eq i32 %lftr.wideiv, %neq, !dbg !425
  br i1 %exitcond121, label %for.cond26.preheader, label %for.body, !dbg !425

for.cond26.loopexit:                              ; preds = %for.body45, %for.body28
  %i.1 = add nsw i32 %i.1105, -1, !dbg !429
  %cmp27 = icmp sgt i32 %i.1, 0, !dbg !429
  %indvars.iv.next113 = add i64 %indvars.iv112, -1, !dbg !429
  %10 = trunc i64 %indvars.iv112 to i32, !dbg !429
  br i1 %cmp27, label %for.body28, label %for.end60, !dbg !429

for.body28:                                       ; preds = %for.body28.lr.ph, %for.cond26.loopexit
  %indvars.iv112 = phi i64 [ %1, %for.body28.lr.ph ], [ %indvars.iv.next113, %for.cond26.loopexit ]
  %i.1105 = phi i32 [ %i.1102, %for.body28.lr.ph ], [ %i.1, %for.cond26.loopexit ]
  %i.1.in104 = phi i32 [ %neq, %for.body28.lr.ph ], [ %10, %for.cond26.loopexit ]
  %arrayidx30 = getelementptr inbounds i32* %iz, i64 %indvars.iv112, !dbg !437
  %11 = load i32* %arrayidx30, align 4, !dbg !437, !tbaa !182
  %idxprom31 = sext i32 %11 to i64, !dbg !437
  %arrayidx32 = getelementptr inbounds double* %C, i64 %idxprom31, !dbg !437
  %12 = load double* %arrayidx32, align 8, !dbg !437, !tbaa !206
  %arrayidx34 = getelementptr inbounds double* %rho, i64 %indvars.iv112, !dbg !437
  %13 = load double* %arrayidx34, align 8, !dbg !437, !tbaa !206
  %div35 = fdiv double %13, %12, !dbg !437
  store double %div35, double* %arrayidx34, align 8, !dbg !437, !tbaa !206
  %sub36 = add nsw i32 %i.1.in104, -2, !dbg !439
  %idxprom37 = sext i32 %sub36 to i64, !dbg !439
  %arrayidx38 = getelementptr inbounds i32* %iz, i64 %idxprom37, !dbg !439
  %14 = load i32* %arrayidx38, align 4, !dbg !439, !tbaa !182
  %sub42 = add nsw i32 %11, -1, !dbg !440
  tail call void @llvm.dbg.value(metadata !{i32 %sub42}, i64 0, metadata !132), !dbg !440
  %cmp44100 = icmp slt i32 %14, %sub42, !dbg !441
  br i1 %cmp44100, label %for.body45.lr.ph, label %for.cond26.loopexit, !dbg !441

for.body45.lr.ph:                                 ; preds = %for.body28
  %15 = sext i32 %14 to i64
  br label %for.body45, !dbg !441

for.body45:                                       ; preds = %for.body45.for.body45_crit_edge, %for.body45.lr.ph
  %16 = phi double [ %div35, %for.body45.lr.ph ], [ %.pre122, %for.body45.for.body45_crit_edge ]
  %indvars.iv = phi i64 [ %15, %for.body45.lr.ph ], [ %indvars.iv.next, %for.body45.for.body45_crit_edge ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !441
  %arrayidx47 = getelementptr inbounds double* %C, i64 %indvars.iv.next, !dbg !443
  %17 = load double* %arrayidx47, align 8, !dbg !443, !tbaa !206
  %mul50 = fmul double %17, %16, !dbg !443
  %arrayidx52 = getelementptr inbounds i32* %ia, i64 %indvars.iv.next, !dbg !443
  %18 = load i32* %arrayidx52, align 4, !dbg !443, !tbaa !182
  %idxprom53 = sext i32 %18 to i64, !dbg !443
  %arrayidx54 = getelementptr inbounds double* %rho, i64 %idxprom53, !dbg !443
  %19 = load double* %arrayidx54, align 8, !dbg !443, !tbaa !206
  %sub55 = fsub double %19, %mul50, !dbg !443
  store double %sub55, double* %arrayidx54, align 8, !dbg !443, !tbaa !206
  %20 = trunc i64 %indvars.iv.next to i32, !dbg !441
  %cmp44 = icmp slt i32 %20, %sub42, !dbg !441
  br i1 %cmp44, label %for.body45.for.body45_crit_edge, label %for.cond26.loopexit, !dbg !441

for.body45.for.body45_crit_edge:                  ; preds = %for.body45
  %.pre122 = load double* %arrayidx34, align 8, !dbg !443, !tbaa !206
  br label %for.body45, !dbg !441

for.end60:                                        ; preds = %for.cond26.loopexit, %for.cond26.preheader
  ret void, !dbg !444
}

; Function Attrs: nounwind optsize uwtable
define void @InnerProduct(double* nocapture %a, double* nocapture %b, i32 %n, double* nocapture %Sum) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %a}, i64 0, metadata !138), !dbg !445
  tail call void @llvm.dbg.value(metadata !{double* %b}, i64 0, metadata !139), !dbg !445
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !140), !dbg !445
  tail call void @llvm.dbg.value(metadata !{double* %Sum}, i64 0, metadata !141), !dbg !445
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !142), !dbg !446
  store double 0.000000e+00, double* %Sum, align 8, !dbg !447, !tbaa !206
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !142), !dbg !448
  %cmp7 = icmp sgt i32 %n, 0, !dbg !448
  br i1 %cmp7, label %for.body, label %for.end, !dbg !448

for.body:                                         ; preds = %entry, %for.body
  %0 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ], !dbg !448
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %a, i64 %indvars.iv, !dbg !448
  %1 = load double* %arrayidx, align 8, !dbg !448, !tbaa !206
  %arrayidx2 = getelementptr inbounds double* %b, i64 %indvars.iv, !dbg !448
  %2 = load double* %arrayidx2, align 8, !dbg !448, !tbaa !206
  %mul = fmul double %1, %2, !dbg !448
  %add = fadd double %0, %mul, !dbg !448
  store double %add, double* %Sum, align 8, !dbg !448, !tbaa !206
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !448
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !448
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !448
  br i1 %exitcond, label %for.end, label %for.body, !dbg !448

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !449
}

; Function Attrs: nounwind optsize uwtable
define void @MatVecProduct(double* nocapture %A, double* nocapture %p, i32 %neq, i32* nocapture %ia, i32* nocapture %iz, double* nocapture %z) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %A}, i64 0, metadata !81), !dbg !450
  tail call void @llvm.dbg.value(metadata !{double* %p}, i64 0, metadata !82), !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32 %neq}, i64 0, metadata !83), !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32* %ia}, i64 0, metadata !84), !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32* %iz}, i64 0, metadata !85), !dbg !450
  tail call void @llvm.dbg.value(metadata !{double* %z}, i64 0, metadata !86), !dbg !451
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !87), !dbg !452
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !88), !dbg !452
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !89), !dbg !452
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !90), !dbg !452
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !452
  %0 = load i32* %iz, align 4, !dbg !453, !tbaa !182
  %idxprom = sext i32 %0 to i64, !dbg !453
  %arrayidx1 = getelementptr inbounds double* %A, i64 %idxprom, !dbg !453
  %1 = load double* %arrayidx1, align 8, !dbg !453, !tbaa !206
  %2 = load double* %p, align 8, !dbg !453, !tbaa !206
  %mul = fmul double %1, %2, !dbg !453
  store double %mul, double* %z, align 8, !dbg !453, !tbaa !206
  tail call void @llvm.dbg.value(metadata !216, i64 0, metadata !87), !dbg !454
  %cmp70 = icmp sgt i32 %neq, 1, !dbg !454
  br i1 %cmp70, label %for.body, label %for.end41, !dbg !454

for.body:                                         ; preds = %entry, %for.inc39
  %3 = phi i32 [ %4, %for.inc39 ], [ %0, %entry ], !dbg !456
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc39 ], [ 1, %entry ]
  %arrayidx5 = getelementptr inbounds i32* %iz, i64 %indvars.iv72, !dbg !456
  %4 = load i32* %arrayidx5, align 4, !dbg !456, !tbaa !182
  %idxprom6 = sext i32 %4 to i64, !dbg !456
  %arrayidx7 = getelementptr inbounds double* %A, i64 %idxprom6, !dbg !456
  %5 = load double* %arrayidx7, align 8, !dbg !456, !tbaa !206
  %arrayidx9 = getelementptr inbounds double* %p, i64 %indvars.iv72, !dbg !456
  %6 = load double* %arrayidx9, align 8, !dbg !456, !tbaa !206
  %mul10 = fmul double %5, %6, !dbg !456
  %arrayidx12 = getelementptr inbounds double* %z, i64 %indvars.iv72, !dbg !456
  store double %mul10, double* %arrayidx12, align 8, !dbg !456, !tbaa !206
  %sub17 = add nsw i32 %4, -1, !dbg !458
  tail call void @llvm.dbg.value(metadata !{i32 %sub17}, i64 0, metadata !90), !dbg !458
  %cmp1968 = icmp slt i32 %3, %sub17, !dbg !459
  br i1 %cmp1968, label %for.body20.lr.ph, label %for.inc39, !dbg !459

for.body20.lr.ph:                                 ; preds = %for.body
  %7 = sext i32 %3 to i64
  br label %for.body20, !dbg !459

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.body20.lr.ph
  %8 = phi double [ %mul10, %for.body20.lr.ph ], [ %.pre, %for.body20.for.body20_crit_edge ]
  %indvars.iv = phi i64 [ %7, %for.body20.lr.ph ], [ %indvars.iv.next, %for.body20.for.body20_crit_edge ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !459
  %arrayidx22 = getelementptr inbounds i32* %ia, i64 %indvars.iv.next, !dbg !461
  %9 = load i32* %arrayidx22, align 4, !dbg !461, !tbaa !182
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !91), !dbg !461
  %arrayidx24 = getelementptr inbounds double* %A, i64 %indvars.iv.next, !dbg !463
  %10 = load double* %arrayidx24, align 8, !dbg !463, !tbaa !206
  %idxprom25 = sext i32 %9 to i64, !dbg !463
  %arrayidx26 = getelementptr inbounds double* %p, i64 %idxprom25, !dbg !463
  %11 = load double* %arrayidx26, align 8, !dbg !463, !tbaa !206
  %mul27 = fmul double %10, %11, !dbg !463
  %add30 = fadd double %8, %mul27, !dbg !463
  store double %add30, double* %arrayidx12, align 8, !dbg !463, !tbaa !206
  %12 = load double* %arrayidx24, align 8, !dbg !464, !tbaa !206
  %13 = load double* %arrayidx9, align 8, !dbg !464, !tbaa !206
  %mul35 = fmul double %12, %13, !dbg !464
  %arrayidx37 = getelementptr inbounds double* %z, i64 %idxprom25, !dbg !464
  %14 = load double* %arrayidx37, align 8, !dbg !464, !tbaa !206
  %add38 = fadd double %14, %mul35, !dbg !464
  store double %add38, double* %arrayidx37, align 8, !dbg !464, !tbaa !206
  %15 = trunc i64 %indvars.iv.next to i32, !dbg !459
  %cmp19 = icmp slt i32 %15, %sub17, !dbg !459
  br i1 %cmp19, label %for.body20.for.body20_crit_edge, label %for.inc39, !dbg !459

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  %.pre = load double* %arrayidx12, align 8, !dbg !463, !tbaa !206
  br label %for.body20, !dbg !459

for.inc39:                                        ; preds = %for.body20, %for.body
  %indvars.iv.next73 = add i64 %indvars.iv72, 1, !dbg !454
  %lftr.wideiv = trunc i64 %indvars.iv.next73 to i32, !dbg !454
  %exitcond = icmp eq i32 %lftr.wideiv, %neq, !dbg !454
  br i1 %exitcond, label %for.end41, label %for.body, !dbg !454

for.end41:                                        ; preds = %for.inc39, %entry
  ret void, !dbg !465
}

; Function Attrs: optsize
declare void @stop_(...) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !31, metadata !65, metadata !79, metadata !92, metadata !119, metadata !134, metadata !143}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cgsolver", metadata !"cgsolver", metadata !"", i32 70, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double*, double*, double*, i32, i32, i32*, i32*, double*, i32*, i32)* @cgsolver, null, null, metadata !12, i32 73} ; [ DW_TAG_subprogram ] [line 70] [def] [scope 73] [cgsolver]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !9, metadata !9, metadata !8, metadata !8, metadata !11, metadata !11, metadata !9, metadata !11, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!10 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!12 = metadata !{metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30}
!13 = metadata !{i32 786689, metadata !4, metadata !"A", metadata !5, i32 16777286, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 70]
!14 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 33554502, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 70]
!15 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !5, i32 50331718, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 70]
!16 = metadata !{i32 786689, metadata !4, metadata !"neq", metadata !5, i32 67108934, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [neq] [line 70]
!17 = metadata !{i32 786689, metadata !4, metadata !"len", metadata !5, i32 83886150, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 70]
!18 = metadata !{i32 786689, metadata !4, metadata !"ia", metadata !5, i32 100663367, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ia] [line 71]
!19 = metadata !{i32 786689, metadata !4, metadata !"iz", metadata !5, i32 117440583, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iz] [line 71]
!20 = metadata !{i32 786689, metadata !4, metadata !"eps", metadata !5, i32 134217800, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eps] [line 72]
!21 = metadata !{i32 786689, metadata !4, metadata !"niter", metadata !5, i32 150995016, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [niter] [line 72]
!22 = metadata !{i32 786689, metadata !4, metadata !"precFlg", metadata !5, i32 167772232, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [precFlg] [line 72]
!23 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 74, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 74]
!24 = metadata !{i32 786688, metadata !4, metadata !"Factor", metadata !5, i32 75, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Factor] [line 75]
!25 = metadata !{i32 786688, metadata !4, metadata !"r", metadata !5, i32 75, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 75]
!26 = metadata !{i32 786688, metadata !4, metadata !"p", metadata !5, i32 75, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 75]
!27 = metadata !{i32 786688, metadata !4, metadata !"z", metadata !5, i32 75, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 75]
!28 = metadata !{i32 786688, metadata !4, metadata !"C", metadata !5, i32 75, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [C] [line 75]
!29 = metadata !{i32 786688, metadata !4, metadata !"g", metadata !5, i32 75, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 75]
!30 = metadata !{i32 786688, metadata !4, metadata !"rho", metadata !5, i32 75, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rho] [line 75]
!31 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PCG", metadata !"PCG", metadata !"", i32 147, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, double*, double*, i32, i32, i32*, i32*, double*, i32*, i32, double*, double*, double*, double*, double*)* @PCG, null, null, metadata !34, i32 150} ; [ DW_TAG_subprogram ] [line 147] [def] [scope 150] [PCG]
!32 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{null, metadata !9, metadata !9, metadata !9, metadata !8, metadata !8, metadata !11, metadata !11, metadata !9, metadata !11, metadata !8, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9}
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64}
!35 = metadata !{i32 786689, metadata !31, metadata !"A", metadata !5, i32 16777363, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 147]
!36 = metadata !{i32 786689, metadata !31, metadata !"x", metadata !5, i32 33554579, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 147]
!37 = metadata !{i32 786689, metadata !31, metadata !"b", metadata !5, i32 50331795, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 147]
!38 = metadata !{i32 786689, metadata !31, metadata !"neq", metadata !5, i32 67109011, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [neq] [line 147]
!39 = metadata !{i32 786689, metadata !31, metadata !"len", metadata !5, i32 83886227, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 147]
!40 = metadata !{i32 786689, metadata !31, metadata !"ia", metadata !5, i32 100663443, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ia] [line 147]
!41 = metadata !{i32 786689, metadata !31, metadata !"iz", metadata !5, i32 117440660, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iz] [line 148]
!42 = metadata !{i32 786689, metadata !31, metadata !"eps", metadata !5, i32 134217876, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eps] [line 148]
!43 = metadata !{i32 786689, metadata !31, metadata !"niter", metadata !5, i32 150995092, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [niter] [line 148]
!44 = metadata !{i32 786689, metadata !31, metadata !"precFlg", metadata !5, i32 167772308, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [precFlg] [line 148]
!45 = metadata !{i32 786689, metadata !31, metadata !"rho", metadata !5, i32 184549525, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rho] [line 149]
!46 = metadata !{i32 786689, metadata !31, metadata !"r", metadata !5, i32 201326741, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 149]
!47 = metadata !{i32 786689, metadata !31, metadata !"g", metadata !5, i32 218103957, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 149]
!48 = metadata !{i32 786689, metadata !31, metadata !"C", metadata !5, i32 234881173, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [C] [line 149]
!49 = metadata !{i32 786689, metadata !31, metadata !"z", metadata !5, i32 251658389, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 149]
!50 = metadata !{i32 786688, metadata !31, metadata !"i", metadata !5, i32 151, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 151]
!51 = metadata !{i32 786688, metadata !31, metadata !"k", metadata !5, i32 151, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 151]
!52 = metadata !{i32 786688, metadata !31, metadata !"ncg", metadata !5, i32 151, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncg] [line 151]
!53 = metadata !{i32 786688, metadata !31, metadata !"iam", metadata !5, i32 151, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iam] [line 151]
!54 = metadata !{i32 786688, metadata !31, metadata !"ier", metadata !5, i32 151, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ier] [line 151]
!55 = metadata !{i32 786688, metadata !31, metadata !"alpha", metadata !5, i32 152, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alpha] [line 152]
!56 = metadata !{i32 786688, metadata !31, metadata !"ekm1", metadata !5, i32 152, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ekm1] [line 152]
!57 = metadata !{i32 786688, metadata !31, metadata !"rrho", metadata !5, i32 152, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rrho] [line 152]
!58 = metadata !{i32 786688, metadata !31, metadata !"rrho1", metadata !5, i32 153, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rrho1] [line 153]
!59 = metadata !{i32 786688, metadata !31, metadata !"gz", metadata !5, i32 153, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gz] [line 153]
!60 = metadata !{i32 786688, metadata !31, metadata !"qk", metadata !5, i32 153, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qk] [line 153]
!61 = metadata !{i32 786688, metadata !31, metadata !"c1", metadata !5, i32 154, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 154]
!62 = metadata !{i32 786688, metadata !31, metadata !"qam", metadata !5, i32 154, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qam] [line 154]
!63 = metadata !{i32 786688, metadata !31, metadata !"err", metadata !5, i32 154, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 154]
!64 = metadata !{i32 786688, metadata !31, metadata !"ram", metadata !5, i32 154, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ram] [line 154]
!65 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Scaling", metadata !"Scaling", metadata !"", i32 282, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, double*, i32, i32*, i32*, double*)* @Scaling, null, null, metadata !68, i32 283} ; [ DW_TAG_subprogram ] [line 282] [def] [scope 283] [Scaling]
!66 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{null, metadata !9, metadata !9, metadata !8, metadata !11, metadata !11, metadata !9}
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78}
!69 = metadata !{i32 786689, metadata !65, metadata !"A", metadata !5, i32 16777498, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 282]
!70 = metadata !{i32 786689, metadata !65, metadata !"b", metadata !5, i32 33554714, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 282]
!71 = metadata !{i32 786689, metadata !65, metadata !"neq", metadata !5, i32 50331930, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [neq] [line 282]
!72 = metadata !{i32 786689, metadata !65, metadata !"ia", metadata !5, i32 67109146, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ia] [line 282]
!73 = metadata !{i32 786689, metadata !65, metadata !"iz", metadata !5, i32 83886362, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iz] [line 282]
!74 = metadata !{i32 786689, metadata !65, metadata !"d", metadata !5, i32 100663578, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 282]
!75 = metadata !{i32 786688, metadata !65, metadata !"i", metadata !5, i32 284, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 284]
!76 = metadata !{i32 786688, metadata !65, metadata !"j", metadata !5, i32 284, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 284]
!77 = metadata !{i32 786688, metadata !65, metadata !"jlo", metadata !5, i32 284, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jlo] [line 284]
!78 = metadata !{i32 786688, metadata !65, metadata !"jup", metadata !5, i32 284, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jup] [line 284]
!79 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MatVecProduct", metadata !"MatVecProduct", metadata !"", i32 324, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, double*, i32, i32*, i32*, double*)* @MatVecProduct, null, null, metadata !80, i32 326} ; [ DW_TAG_subprogram ] [line 324] [def] [scope 326] [MatVecProduct]
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91}
!81 = metadata !{i32 786689, metadata !79, metadata !"A", metadata !5, i32 16777540, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 324]
!82 = metadata !{i32 786689, metadata !79, metadata !"p", metadata !5, i32 33554756, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 324]
!83 = metadata !{i32 786689, metadata !79, metadata !"neq", metadata !5, i32 50331972, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [neq] [line 324]
!84 = metadata !{i32 786689, metadata !79, metadata !"ia", metadata !5, i32 67109188, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ia] [line 324]
!85 = metadata !{i32 786689, metadata !79, metadata !"iz", metadata !5, i32 83886404, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iz] [line 324]
!86 = metadata !{i32 786689, metadata !79, metadata !"z", metadata !5, i32 100663621, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 325]
!87 = metadata !{i32 786688, metadata !79, metadata !"i", metadata !5, i32 327, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 327]
!88 = metadata !{i32 786688, metadata !79, metadata !"j", metadata !5, i32 327, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 327]
!89 = metadata !{i32 786688, metadata !79, metadata !"jlo", metadata !5, i32 327, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jlo] [line 327]
!90 = metadata !{i32 786688, metadata !79, metadata !"jup", metadata !5, i32 327, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jup] [line 327]
!91 = metadata !{i32 786688, metadata !79, metadata !"k", metadata !5, i32 327, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 327]
!92 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PreConditioning", metadata !"PreConditioning", metadata !"", i32 374, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, i32, i32, i32*, i32*, double, i32, double*, i32*)* @PreConditioning, null, null, metadata !95, i32 377} ; [ DW_TAG_subprogram ] [line 374] [def] [scope 377] [PreConditioning]
!93 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !11, metadata !11, metadata !10, metadata !8, metadata !9, metadata !11}
!95 = metadata !{metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118}
!96 = metadata !{i32 786689, metadata !92, metadata !"A", metadata !5, i32 16777590, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 374]
!97 = metadata !{i32 786689, metadata !92, metadata !"neq", metadata !5, i32 33554806, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [neq] [line 374]
!98 = metadata !{i32 786689, metadata !92, metadata !"len", metadata !5, i32 50332022, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 374]
!99 = metadata !{i32 786689, metadata !92, metadata !"ia", metadata !5, i32 67109238, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ia] [line 374]
!100 = metadata !{i32 786689, metadata !92, metadata !"iz", metadata !5, i32 83886454, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iz] [line 374]
!101 = metadata !{i32 786689, metadata !92, metadata !"alpha", metadata !5, i32 100663671, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 375]
!102 = metadata !{i32 786689, metadata !92, metadata !"precFlg", metadata !5, i32 117440887, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [precFlg] [line 375]
!103 = metadata !{i32 786689, metadata !92, metadata !"C", metadata !5, i32 134218104, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [C] [line 376]
!104 = metadata !{i32 786689, metadata !92, metadata !"ier", metadata !5, i32 150995320, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ier] [line 376]
!105 = metadata !{i32 786688, metadata !92, metadata !"i", metadata !5, i32 378, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 378]
!106 = metadata !{i32 786688, metadata !92, metadata !"j", metadata !5, i32 378, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 378]
!107 = metadata !{i32 786688, metadata !92, metadata !"jlo", metadata !5, i32 378, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jlo] [line 378]
!108 = metadata !{i32 786688, metadata !92, metadata !"jup", metadata !5, i32 378, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jup] [line 378]
!109 = metadata !{i32 786688, metadata !92, metadata !"k", metadata !5, i32 378, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 378]
!110 = metadata !{i32 786688, metadata !92, metadata !"klo", metadata !5, i32 378, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [klo] [line 378]
!111 = metadata !{i32 786688, metadata !92, metadata !"kup", metadata !5, i32 378, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kup] [line 378]
!112 = metadata !{i32 786688, metadata !92, metadata !"l", metadata !5, i32 378, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 378]
!113 = metadata !{i32 786688, metadata !92, metadata !"llo", metadata !5, i32 378, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [llo] [line 378]
!114 = metadata !{i32 786688, metadata !92, metadata !"lup", metadata !5, i32 378, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lup] [line 378]
!115 = metadata !{i32 786688, metadata !92, metadata !"id", metadata !5, i32 379, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [id] [line 379]
!116 = metadata !{i32 786688, metadata !92, metadata !"nILU", metadata !5, i32 379, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nILU] [line 379]
!117 = metadata !{i32 786688, metadata !92, metadata !"m", metadata !5, i32 379, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 379]
!118 = metadata !{i32 786688, metadata !92, metadata !"factor", metadata !5, i32 380, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [factor] [line 380]
!119 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Mrhor", metadata !"Mrhor", metadata !"", i32 446, metadata !120, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, i32, i32*, i32*, double*, double*)* @Mrhor, null, null, metadata !122, i32 447} ; [ DW_TAG_subprogram ] [line 446] [def] [scope 447] [Mrhor]
!120 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!121 = metadata !{null, metadata !9, metadata !8, metadata !11, metadata !11, metadata !9, metadata !9}
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133}
!123 = metadata !{i32 786689, metadata !119, metadata !"C", metadata !5, i32 16777662, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [C] [line 446]
!124 = metadata !{i32 786689, metadata !119, metadata !"neq", metadata !5, i32 33554878, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [neq] [line 446]
!125 = metadata !{i32 786689, metadata !119, metadata !"ia", metadata !5, i32 50332094, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ia] [line 446]
!126 = metadata !{i32 786689, metadata !119, metadata !"iz", metadata !5, i32 67109310, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iz] [line 446]
!127 = metadata !{i32 786689, metadata !119, metadata !"r", metadata !5, i32 83886526, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 446]
!128 = metadata !{i32 786689, metadata !119, metadata !"rho", metadata !5, i32 100663742, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rho] [line 446]
!129 = metadata !{i32 786688, metadata !119, metadata !"i", metadata !5, i32 448, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 448]
!130 = metadata !{i32 786688, metadata !119, metadata !"j", metadata !5, i32 448, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 448]
!131 = metadata !{i32 786688, metadata !119, metadata !"jlo", metadata !5, i32 448, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jlo] [line 448]
!132 = metadata !{i32 786688, metadata !119, metadata !"jup", metadata !5, i32 448, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jup] [line 448]
!133 = metadata !{i32 786688, metadata !119, metadata !"s", metadata !5, i32 449, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 449]
!134 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InnerProduct", metadata !"InnerProduct", metadata !"", i32 478, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, double*, i32, double*)* @InnerProduct, null, null, metadata !137, i32 479} ; [ DW_TAG_subprogram ] [line 478] [def] [scope 479] [InnerProduct]
!135 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!136 = metadata !{null, metadata !9, metadata !9, metadata !8, metadata !9}
!137 = metadata !{metadata !138, metadata !139, metadata !140, metadata !141, metadata !142}
!138 = metadata !{i32 786689, metadata !134, metadata !"a", metadata !5, i32 16777694, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 478]
!139 = metadata !{i32 786689, metadata !134, metadata !"b", metadata !5, i32 33554910, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 478]
!140 = metadata !{i32 786689, metadata !134, metadata !"n", metadata !5, i32 50332126, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 478]
!141 = metadata !{i32 786689, metadata !134, metadata !"Sum", metadata !5, i32 67109342, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Sum] [line 478]
!142 = metadata !{i32 786688, metadata !134, metadata !"i", metadata !5, i32 480, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 480]
!143 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CG", metadata !"CG", metadata !"", i32 505, metadata !144, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, double*, double*, i32, i32, i32*, i32*, double*, i32*, double*, double*, double*)* @CG, null, null, metadata !146, i32 507} ; [ DW_TAG_subprogram ] [line 505] [def] [scope 507] [CG]
!144 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!145 = metadata !{null, metadata !9, metadata !9, metadata !9, metadata !8, metadata !8, metadata !11, metadata !11, metadata !9, metadata !11, metadata !9, metadata !9, metadata !9}
!146 = metadata !{metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171}
!147 = metadata !{i32 786689, metadata !143, metadata !"A", metadata !5, i32 16777721, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 505]
!148 = metadata !{i32 786689, metadata !143, metadata !"x", metadata !5, i32 33554937, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 505]
!149 = metadata !{i32 786689, metadata !143, metadata !"b", metadata !5, i32 50332153, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 505]
!150 = metadata !{i32 786689, metadata !143, metadata !"neq", metadata !5, i32 67109369, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [neq] [line 505]
!151 = metadata !{i32 786689, metadata !143, metadata !"len", metadata !5, i32 83886585, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 505]
!152 = metadata !{i32 786689, metadata !143, metadata !"ia", metadata !5, i32 100663801, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ia] [line 505]
!153 = metadata !{i32 786689, metadata !143, metadata !"iz", metadata !5, i32 117441017, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iz] [line 505]
!154 = metadata !{i32 786689, metadata !143, metadata !"eps", metadata !5, i32 134218234, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eps] [line 506]
!155 = metadata !{i32 786689, metadata !143, metadata !"niter", metadata !5, i32 150995450, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [niter] [line 506]
!156 = metadata !{i32 786689, metadata !143, metadata !"r", metadata !5, i32 167772666, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 506]
!157 = metadata !{i32 786689, metadata !143, metadata !"p", metadata !5, i32 184549882, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 506]
!158 = metadata !{i32 786689, metadata !143, metadata !"z", metadata !5, i32 201327098, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 506]
!159 = metadata !{i32 786688, metadata !143, metadata !"i", metadata !5, i32 508, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 508]
!160 = metadata !{i32 786688, metadata !143, metadata !"k", metadata !5, i32 508, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 508]
!161 = metadata !{i32 786688, metadata !143, metadata !"ncg", metadata !5, i32 508, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncg] [line 508]
!162 = metadata !{i32 786688, metadata !143, metadata !"iam", metadata !5, i32 508, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iam] [line 508]
!163 = metadata !{i32 786688, metadata !143, metadata !"ekm1", metadata !5, i32 509, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ekm1] [line 509]
!164 = metadata !{i32 786688, metadata !143, metadata !"c1", metadata !5, i32 509, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 509]
!165 = metadata !{i32 786688, metadata !143, metadata !"qam", metadata !5, i32 509, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qam] [line 509]
!166 = metadata !{i32 786688, metadata !143, metadata !"ram", metadata !5, i32 509, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ram] [line 509]
!167 = metadata !{i32 786688, metadata !143, metadata !"err", metadata !5, i32 509, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 509]
!168 = metadata !{i32 786688, metadata !143, metadata !"rr", metadata !5, i32 510, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rr] [line 510]
!169 = metadata !{i32 786688, metadata !143, metadata !"pz", metadata !5, i32 510, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pz] [line 510]
!170 = metadata !{i32 786688, metadata !143, metadata !"qk", metadata !5, i32 510, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qk] [line 510]
!171 = metadata !{i32 786688, metadata !143, metadata !"rro", metadata !5, i32 510, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rro] [line 510]
!172 = metadata !{i32 70, i32 0, metadata !4, null}
!173 = metadata !{i32 71, i32 0, metadata !4, null}
!174 = metadata !{i32 72, i32 0, metadata !4, null}
!175 = metadata !{i32 74, i32 0, metadata !4, null}
!176 = metadata !{double* null}
!177 = metadata !{i32 75, i32 0, metadata !4, null}
!178 = metadata !{i32 79, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !4, i32 79, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!180 = metadata !{i32 80, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !4, i32 80, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!182 = metadata !{metadata !"int", metadata !183}
!183 = metadata !{metadata !"omnipotent char", metadata !184}
!184 = metadata !{metadata !"Simple C/C++ TBAA"}
!185 = metadata !{i32 84, i32 0, metadata !4, null}
!186 = metadata !{i32 85, i32 0, metadata !4, null}
!187 = metadata !{i32 91, i32 0, metadata !4, null}
!188 = metadata !{i32 93, i32 0, metadata !189, null}
!189 = metadata !{i32 786443, metadata !1, metadata !4, i32 92, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!190 = metadata !{i32 94, i32 0, metadata !189, null}
!191 = metadata !{i32 95, i32 0, metadata !189, null}
!192 = metadata !{i32 96, i32 0, metadata !189, null}
!193 = metadata !{i32 97, i32 0, metadata !189, null}
!194 = metadata !{i32 98, i32 0, metadata !189, null}
!195 = metadata !{i32 105, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !4, i32 104, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!197 = metadata !{i32 106, i32 0, metadata !196, null}
!198 = metadata !{i32 107, i32 0, metadata !196, null}
!199 = metadata !{i32 108, i32 0, metadata !196, null}
!200 = metadata !{i32 109, i32 0, metadata !196, null}
!201 = metadata !{i32 110, i32 0, metadata !196, null}
!202 = metadata !{i32 111, i32 0, metadata !196, null}
!203 = metadata !{i32 112, i32 0, metadata !196, null}
!204 = metadata !{i32 116, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !4, i32 116, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!206 = metadata !{metadata !"double", metadata !183}
!207 = metadata !{i32 120, i32 0, metadata !4, null}
!208 = metadata !{i32 121, i32 0, metadata !4, null}
!209 = metadata !{i32 282, i32 0, metadata !65, null}
!210 = metadata !{i32 284, i32 0, metadata !65, null}
!211 = metadata !{i32 288, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !65, i32 288, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!213 = metadata !{i32 292, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !65, i32 292, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!215 = metadata !{i32 296, i32 0, metadata !65, null}
!216 = metadata !{i32 1}
!217 = metadata !{i32 297, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !65, i32 297, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!219 = metadata !{i32 299, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !218, i32 298, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!221 = metadata !{i32 300, i32 0, metadata !220, null}
!222 = metadata !{i32 301, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !220, i32 301, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!224 = metadata !{i32 304, i32 0, metadata !65, null}
!225 = metadata !{i32 505, i32 0, metadata !143, null}
!226 = metadata !{i32 506, i32 0, metadata !143, null}
!227 = metadata !{i32 508, i32 0, metadata !143, null}
!228 = metadata !{double 0.000000e+00}
!229 = metadata !{i32 509, i32 0, metadata !143, null}
!230 = metadata !{double 5.000000e-03}
!231 = metadata !{i32 510, i32 0, metadata !143, null}
!232 = metadata !{i32 786689, metadata !134, metadata !"Sum", metadata !5, i32 67109342, metadata !9, i32 0, metadata !233} ; [ DW_TAG_arg_variable ] [Sum] [line 478]
!233 = metadata !{i32 534, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !235, i32 532, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!235 = metadata !{i32 786443, metadata !1, metadata !143, i32 531, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!236 = metadata !{i32 478, i32 0, metadata !134, metadata !233}
!237 = metadata !{i32 545, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !234, i32 544, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!239 = metadata !{i32 553, i32 0, metadata !234, null}
!240 = metadata !{i32 564, i32 0, metadata !234, null}
!241 = metadata !{i32 571, i32 0, metadata !143, null}
!242 = metadata !{i32 786689, metadata !134, metadata !"Sum", metadata !5, i32 67109342, metadata !9, i32 0, metadata !243} ; [ DW_TAG_arg_variable ] [Sum] [line 478]
!243 = metadata !{i32 551, i32 0, metadata !234, null}
!244 = metadata !{i32 478, i32 0, metadata !134, metadata !243}
!245 = metadata !{i32 515, i32 0, metadata !143, null}
!246 = metadata !{i32 518, i32 0, metadata !143, null}
!247 = metadata !{i32 519, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !143, i32 519, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!249 = metadata !{i32 521, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !248, i32 520, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!251 = metadata !{i32 522, i32 0, metadata !250, null}
!252 = metadata !{i32 523, i32 0, metadata !250, null}
!253 = metadata !{i32 524, i32 0, metadata !250, null}
!254 = metadata !{i32 525, i32 0, metadata !250, null}
!255 = metadata !{i32 525, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !250, i32 525, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!257 = metadata !{i32 527, i32 0, metadata !143, null}
!258 = metadata !{i32 531, i32 0, metadata !235, null}
!259 = metadata !{i32 535, i32 0, metadata !234, null}
!260 = metadata !{i32 786689, metadata !134, metadata !"a", metadata !5, i32 16777694, metadata !9, i32 0, metadata !233} ; [ DW_TAG_arg_variable ] [a] [line 478]
!261 = metadata !{i32 786689, metadata !134, metadata !"b", metadata !5, i32 33554910, metadata !9, i32 0, metadata !233} ; [ DW_TAG_arg_variable ] [b] [line 478]
!262 = metadata !{i32 786689, metadata !134, metadata !"n", metadata !5, i32 50332126, metadata !8, i32 0, metadata !233} ; [ DW_TAG_arg_variable ] [n] [line 478]
!263 = metadata !{i32 786688, metadata !134, metadata !"i", metadata !5, i32 480, metadata !8, i32 0, metadata !233} ; [ DW_TAG_auto_variable ] [i] [line 480]
!264 = metadata !{i32 480, i32 0, metadata !134, metadata !233}
!265 = metadata !{i32 482, i32 0, metadata !134, metadata !233}
!266 = metadata !{i32 483, i32 0, metadata !267, metadata !233}
!267 = metadata !{i32 786443, metadata !1, metadata !134, i32 483, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!268 = metadata !{i32 540, i32 0, metadata !234, null}
!269 = metadata !{i32 543, i32 0, metadata !234, null}
!270 = metadata !{i32 546, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !238, i32 546, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!272 = metadata !{i32 549, i32 0, metadata !234, null}
!273 = metadata !{i32 786689, metadata !134, metadata !"a", metadata !5, i32 16777694, metadata !9, i32 0, metadata !243} ; [ DW_TAG_arg_variable ] [a] [line 478]
!274 = metadata !{i32 786689, metadata !134, metadata !"b", metadata !5, i32 33554910, metadata !9, i32 0, metadata !243} ; [ DW_TAG_arg_variable ] [b] [line 478]
!275 = metadata !{i32 786689, metadata !134, metadata !"n", metadata !5, i32 50332126, metadata !8, i32 0, metadata !243} ; [ DW_TAG_arg_variable ] [n] [line 478]
!276 = metadata !{i32 786688, metadata !134, metadata !"i", metadata !5, i32 480, metadata !8, i32 0, metadata !243} ; [ DW_TAG_auto_variable ] [i] [line 480]
!277 = metadata !{i32 480, i32 0, metadata !134, metadata !243}
!278 = metadata !{i32 482, i32 0, metadata !134, metadata !243}
!279 = metadata !{i32 483, i32 0, metadata !267, metadata !243}
!280 = metadata !{i32 555, i32 0, metadata !234, null}
!281 = metadata !{i32 556, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !234, i32 556, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!283 = metadata !{i32 558, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !282, i32 557, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!285 = metadata !{i32 559, i32 0, metadata !284, null}
!286 = metadata !{i32 560, i32 0, metadata !284, null}
!287 = metadata !{i32 561, i32 0, metadata !284, null}
!288 = metadata !{i32 567, i32 0, metadata !143, null}
!289 = metadata !{i32 568, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !143, i32 567, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!291 = metadata !{i32 569, i32 0, metadata !290, null}
!292 = metadata !{i32 570, i32 0, metadata !290, null}
!293 = metadata !{i32 574, i32 0, metadata !143, null}
!294 = metadata !{i32 572, i32 0, metadata !143, null}
!295 = metadata !{i32 147, i32 0, metadata !31, null}
!296 = metadata !{i32 148, i32 0, metadata !31, null}
!297 = metadata !{i32 149, i32 0, metadata !31, null}
!298 = metadata !{i32 151, i32 0, metadata !31, null}
!299 = metadata !{i32 152, i32 0, metadata !31, null}
!300 = metadata !{i32 786689, metadata !134, metadata !"Sum", metadata !5, i32 67109342, metadata !9, i32 0, metadata !301} ; [ DW_TAG_arg_variable ] [Sum] [line 478]
!301 = metadata !{i32 199, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !303, i32 191, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!303 = metadata !{i32 786443, metadata !1, metadata !31, i32 190, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!304 = metadata !{i32 478, i32 0, metadata !134, metadata !301}
!305 = metadata !{i32 212, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !302, i32 211, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!307 = metadata !{i32 230, i32 0, metadata !302, null}
!308 = metadata !{i32 239, i32 0, metadata !302, null}
!309 = metadata !{i32 245, i32 0, metadata !31, null}
!310 = metadata !{i32 153, i32 0, metadata !31, null}
!311 = metadata !{i32 786689, metadata !134, metadata !"Sum", metadata !5, i32 67109342, metadata !9, i32 0, metadata !312} ; [ DW_TAG_arg_variable ] [Sum] [line 478]
!312 = metadata !{i32 229, i32 0, metadata !302, null}
!313 = metadata !{i32 478, i32 0, metadata !134, metadata !312}
!314 = metadata !{i32 154, i32 0, metadata !31, null}
!315 = metadata !{i32 159, i32 0, metadata !31, null}
!316 = metadata !{i32 160, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !31, i32 160, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!318 = metadata !{i32 162, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !317, i32 161, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!320 = metadata !{i32 163, i32 0, metadata !319, null}
!321 = metadata !{i32 164, i32 0, metadata !319, null}
!322 = metadata !{i32 165, i32 0, metadata !319, null}
!323 = metadata !{i32 165, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !319, i32 165, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!325 = metadata !{i32 167, i32 0, metadata !31, null}
!326 = metadata !{i32 172, i32 0, metadata !31, null}
!327 = metadata !{i32 174, i32 0, metadata !31, null}
!328 = metadata !{i32 175, i32 0, metadata !31, null}
!329 = metadata !{i32 176, i32 0, metadata !31, null}
!330 = metadata !{i32 178, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !31, i32 177, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!332 = metadata !{i32 179, i32 0, metadata !331, null}
!333 = metadata !{i32 180, i32 0, metadata !331, null}
!334 = metadata !{i32 181, i32 0, metadata !331, null}
!335 = metadata !{i32 186, i32 0, metadata !31, null}
!336 = metadata !{i32 190, i32 0, metadata !303, null}
!337 = metadata !{i32 207, i32 0, metadata !302, null}
!338 = metadata !{i32 195, i32 0, metadata !302, null}
!339 = metadata !{i32 786689, metadata !134, metadata !"a", metadata !5, i32 16777694, metadata !9, i32 0, metadata !301} ; [ DW_TAG_arg_variable ] [a] [line 478]
!340 = metadata !{i32 786689, metadata !134, metadata !"b", metadata !5, i32 33554910, metadata !9, i32 0, metadata !301} ; [ DW_TAG_arg_variable ] [b] [line 478]
!341 = metadata !{i32 786689, metadata !134, metadata !"n", metadata !5, i32 50332126, metadata !8, i32 0, metadata !301} ; [ DW_TAG_arg_variable ] [n] [line 478]
!342 = metadata !{i32 786688, metadata !134, metadata !"i", metadata !5, i32 480, metadata !8, i32 0, metadata !301} ; [ DW_TAG_auto_variable ] [i] [line 480]
!343 = metadata !{i32 480, i32 0, metadata !134, metadata !301}
!344 = metadata !{i32 482, i32 0, metadata !134, metadata !301}
!345 = metadata !{i32 483, i32 0, metadata !267, metadata !301}
!346 = metadata !{i32 208, i32 0, metadata !302, null}
!347 = metadata !{i32 210, i32 0, metadata !302, null}
!348 = metadata !{i32 220, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !350, i32 220, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!350 = metadata !{i32 786443, metadata !1, metadata !302, i32 216, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!351 = metadata !{i32 213, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !306, i32 213, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!353 = metadata !{i32 225, i32 0, metadata !302, null}
!354 = metadata !{i32 786689, metadata !134, metadata !"a", metadata !5, i32 16777694, metadata !9, i32 0, metadata !312} ; [ DW_TAG_arg_variable ] [a] [line 478]
!355 = metadata !{i32 786689, metadata !134, metadata !"b", metadata !5, i32 33554910, metadata !9, i32 0, metadata !312} ; [ DW_TAG_arg_variable ] [b] [line 478]
!356 = metadata !{i32 786689, metadata !134, metadata !"n", metadata !5, i32 50332126, metadata !8, i32 0, metadata !312} ; [ DW_TAG_arg_variable ] [n] [line 478]
!357 = metadata !{i32 786688, metadata !134, metadata !"i", metadata !5, i32 480, metadata !8, i32 0, metadata !312} ; [ DW_TAG_auto_variable ] [i] [line 480]
!358 = metadata !{i32 480, i32 0, metadata !134, metadata !312}
!359 = metadata !{i32 482, i32 0, metadata !134, metadata !312}
!360 = metadata !{i32 483, i32 0, metadata !267, metadata !312}
!361 = metadata !{i32 231, i32 0, metadata !302, null}
!362 = metadata !{i32 232, i32 0, metadata !363, null}
!363 = metadata !{i32 786443, metadata !1, metadata !302, i32 232, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!364 = metadata !{i32 234, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !363, i32 233, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!366 = metadata !{i32 235, i32 0, metadata !365, null}
!367 = metadata !{i32 236, i32 0, metadata !365, null}
!368 = metadata !{i32 237, i32 0, metadata !365, null}
!369 = metadata !{i32 241, i32 0, metadata !31, null}
!370 = metadata !{i32 242, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !31, i32 241, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!372 = metadata !{i32 243, i32 0, metadata !371, null}
!373 = metadata !{i32 244, i32 0, metadata !371, null}
!374 = metadata !{i32 248, i32 0, metadata !31, null}
!375 = metadata !{i32 246, i32 0, metadata !31, null}
!376 = metadata !{i32 374, i32 0, metadata !92, null}
!377 = metadata !{i32 375, i32 0, metadata !92, null}
!378 = metadata !{i32 376, i32 0, metadata !92, null}
!379 = metadata !{i32 378, i32 0, metadata !92, null}
!380 = metadata !{i32 379, i32 0, metadata !92, null}
!381 = metadata !{i32 381, i32 0, metadata !92, null}
!382 = metadata !{i32 383, i32 0, metadata !92, null}
!383 = metadata !{i32 384, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !92, i32 384, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!385 = metadata !{i32 386, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !384, i32 385, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!387 = metadata !{i32 394, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !92, i32 394, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!389 = metadata !{i32 387, i32 0, metadata !386, null}
!390 = metadata !{i32 388, i32 0, metadata !386, null}
!391 = metadata !{i32 389, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !386, i32 389, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!393 = metadata !{i32 390, i32 0, metadata !392, null}
!394 = metadata !{i32 396, i32 0, metadata !395, null}
!395 = metadata !{i32 786443, metadata !1, metadata !388, i32 395, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!396 = metadata !{i32 397, i32 0, metadata !395, null}
!397 = metadata !{i32 398, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !395, i32 398, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!399 = metadata !{i32 400, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !398, i32 399, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!401 = metadata !{i32 401, i32 0, metadata !400, null}
!402 = metadata !{i32 402, i32 0, metadata !400, null}
!403 = metadata !{i32 403, i32 0, metadata !404, null}
!404 = metadata !{i32 786443, metadata !1, metadata !400, i32 403, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!405 = metadata !{i32 405, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !404, i32 404, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!407 = metadata !{i32 406, i32 0, metadata !406, null}
!408 = metadata !{i32 407, i32 0, metadata !406, null}
!409 = metadata !{i32 408, i32 0, metadata !410, null}
!410 = metadata !{i32 786443, metadata !1, metadata !406, i32 408, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!411 = metadata !{i32 411, i32 0, metadata !412, null}
!412 = metadata !{i32 786443, metadata !1, metadata !410, i32 409, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!413 = metadata !{i32 410, i32 0, metadata !412, null}
!414 = metadata !{i32 412, i32 0, metadata !412, null}
!415 = metadata !{i32 413, i32 0, metadata !412, null}
!416 = metadata !{i32 417, i32 0, metadata !395, null}
!417 = metadata !{i32 418, i32 0, metadata !395, null}
!418 = metadata !{i32 421, i32 0, metadata !395, null}
!419 = metadata !{i32 423, i32 0, metadata !92, null}
!420 = metadata !{i32 424, i32 0, metadata !92, null}
!421 = metadata !{i32 446, i32 0, metadata !119, null}
!422 = metadata !{i32 448, i32 0, metadata !119, null}
!423 = metadata !{i32 449, i32 0, metadata !119, null}
!424 = metadata !{i32 451, i32 0, metadata !119, null}
!425 = metadata !{i32 452, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !119, i32 452, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!427 = metadata !{i32 455, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !426, i32 453, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!429 = metadata !{i32 461, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !119, i32 461, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!431 = metadata !{i32 454, i32 0, metadata !428, null}
!432 = metadata !{i32 456, i32 0, metadata !428, null}
!433 = metadata !{i32 457, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !428, i32 457, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!435 = metadata !{i32 458, i32 0, metadata !434, null}
!436 = metadata !{i32 459, i32 0, metadata !428, null}
!437 = metadata !{i32 463, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !430, i32 462, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!439 = metadata !{i32 464, i32 0, metadata !438, null}
!440 = metadata !{i32 465, i32 0, metadata !438, null}
!441 = metadata !{i32 466, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !438, i32 466, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!443 = metadata !{i32 467, i32 0, metadata !442, null}
!444 = metadata !{i32 469, i32 0, metadata !119, null}
!445 = metadata !{i32 478, i32 0, metadata !134, null}
!446 = metadata !{i32 480, i32 0, metadata !134, null}
!447 = metadata !{i32 482, i32 0, metadata !134, null}
!448 = metadata !{i32 483, i32 0, metadata !267, null}
!449 = metadata !{i32 484, i32 0, metadata !134, null}
!450 = metadata !{i32 324, i32 0, metadata !79, null}
!451 = metadata !{i32 325, i32 0, metadata !79, null}
!452 = metadata !{i32 327, i32 0, metadata !79, null}
!453 = metadata !{i32 331, i32 0, metadata !79, null}
!454 = metadata !{i32 332, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !79, i32 332, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!456 = metadata !{i32 334, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !455, i32 333, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!458 = metadata !{i32 342, i32 0, metadata !457, null}
!459 = metadata !{i32 343, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !457, i32 343, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!461 = metadata !{i32 345, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !460, i32 344, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c]
!463 = metadata !{i32 346, i32 0, metadata !462, null}
!464 = metadata !{i32 347, i32 0, metadata !462, null}
!465 = metadata !{i32 350, i32 0, metadata !79, null}
