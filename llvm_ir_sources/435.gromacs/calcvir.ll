; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/calcvir.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }

; Function Attrs: nounwind optsize uwtable
define void @calc_vir(%struct._IO_FILE* nocapture %log, i32 %nxf, [3 x float]* nocapture %x, [3 x float]* nocapture %f, [3 x float]* nocapture %vir) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !75), !dbg !165
  tail call void @llvm.dbg.value(metadata !{i32 %nxf}, i64 0, metadata !76), !dbg !165
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !77), !dbg !165
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !78), !dbg !165
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %vir}, i64 0, metadata !79), !dbg !165
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !81), !dbg !167
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !82), !dbg !167
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !83), !dbg !167
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !84), !dbg !167
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !85), !dbg !167
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !86), !dbg !167
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !87), !dbg !167
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !88), !dbg !167
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !89), !dbg !167
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !80), !dbg !168
  %cmp154 = icmp sgt i32 %nxf, 0, !dbg !168
  br i1 %cmp154, label %for.body, label %for.end, !dbg !168

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %dvzz.0164 = phi float [ %add68, %for.body ], [ 0.000000e+00, %entry ]
  %dvzy.0163 = phi float [ %add60, %for.body ], [ 0.000000e+00, %entry ]
  %dvzx.0162 = phi float [ %add52, %for.body ], [ 0.000000e+00, %entry ]
  %dvyz.0161 = phi float [ %add44, %for.body ], [ 0.000000e+00, %entry ]
  %dvyy.0160 = phi float [ %add36, %for.body ], [ 0.000000e+00, %entry ]
  %dvyx.0159 = phi float [ %add28, %for.body ], [ 0.000000e+00, %entry ]
  %dvxz.0158 = phi float [ %add20, %for.body ], [ 0.000000e+00, %entry ]
  %dvxy.0157 = phi float [ %add12, %for.body ], [ 0.000000e+00, %entry ]
  %dvxx.0156 = phi float [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx1 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !170
  %0 = load float* %arrayidx1, align 4, !dbg !170, !tbaa !172
  %arrayidx4 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0, !dbg !170
  %1 = load float* %arrayidx4, align 4, !dbg !170, !tbaa !172
  %mul = fmul float %0, %1, !dbg !170
  %add = fadd float %dvxx.0156, %mul, !dbg !170
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !81), !dbg !170
  %arrayidx10 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 1, !dbg !175
  %2 = load float* %arrayidx10, align 4, !dbg !175, !tbaa !172
  %mul11 = fmul float %0, %2, !dbg !175
  %add12 = fadd float %dvxy.0157, %mul11, !dbg !175
  tail call void @llvm.dbg.value(metadata !{float %add12}, i64 0, metadata !82), !dbg !175
  %arrayidx18 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 2, !dbg !176
  %3 = load float* %arrayidx18, align 4, !dbg !176, !tbaa !172
  %mul19 = fmul float %0, %3, !dbg !176
  %add20 = fadd float %dvxz.0158, %mul19, !dbg !176
  tail call void @llvm.dbg.value(metadata !{float %add20}, i64 0, metadata !83), !dbg !176
  %arrayidx23 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !177
  %4 = load float* %arrayidx23, align 4, !dbg !177, !tbaa !172
  %mul27 = fmul float %1, %4, !dbg !177
  %add28 = fadd float %dvyx.0159, %mul27, !dbg !177
  tail call void @llvm.dbg.value(metadata !{float %add28}, i64 0, metadata !84), !dbg !177
  %mul35 = fmul float %2, %4, !dbg !178
  %add36 = fadd float %dvyy.0160, %mul35, !dbg !178
  tail call void @llvm.dbg.value(metadata !{float %add36}, i64 0, metadata !85), !dbg !178
  %mul43 = fmul float %3, %4, !dbg !179
  %add44 = fadd float %dvyz.0161, %mul43, !dbg !179
  tail call void @llvm.dbg.value(metadata !{float %add44}, i64 0, metadata !86), !dbg !179
  %arrayidx47 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !180
  %5 = load float* %arrayidx47, align 4, !dbg !180, !tbaa !172
  %mul51 = fmul float %1, %5, !dbg !180
  %add52 = fadd float %dvzx.0162, %mul51, !dbg !180
  tail call void @llvm.dbg.value(metadata !{float %add52}, i64 0, metadata !87), !dbg !180
  %mul59 = fmul float %2, %5, !dbg !181
  %add60 = fadd float %dvzy.0163, %mul59, !dbg !181
  tail call void @llvm.dbg.value(metadata !{float %add60}, i64 0, metadata !88), !dbg !181
  %mul67 = fmul float %3, %5, !dbg !182
  %add68 = fadd float %dvzz.0164, %mul67, !dbg !182
  tail call void @llvm.dbg.value(metadata !{float %add68}, i64 0, metadata !89), !dbg !182
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !168
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !168
  %exitcond = icmp eq i32 %lftr.wideiv, %nxf, !dbg !168
  br i1 %exitcond, label %for.cond.for.end_crit_edge, label %for.body, !dbg !168

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = fpext float %add to double, !dbg !168
  %phitmp173 = fmul double %phitmp, 5.000000e-01, !dbg !168
  %phitmp174 = fpext float %add12 to double, !dbg !168
  %phitmp175 = fmul double %phitmp174, 5.000000e-01, !dbg !168
  %phitmp176 = fpext float %add20 to double, !dbg !168
  %phitmp177 = fmul double %phitmp176, 5.000000e-01, !dbg !168
  %phitmp178 = fpext float %add28 to double, !dbg !168
  %phitmp179 = fmul double %phitmp178, 5.000000e-01, !dbg !168
  %phitmp180 = fpext float %add36 to double, !dbg !168
  %phitmp181 = fmul double %phitmp180, 5.000000e-01, !dbg !168
  %phitmp182 = fpext float %add44 to double, !dbg !168
  %phitmp183 = fmul double %phitmp182, 5.000000e-01, !dbg !168
  %phitmp184 = fpext float %add52 to double, !dbg !168
  %phitmp185 = fmul double %phitmp184, 5.000000e-01, !dbg !168
  %phitmp186 = fpext float %add60 to double, !dbg !168
  %phitmp187 = fmul double %phitmp186, 5.000000e-01, !dbg !168
  %phitmp188 = fpext float %add68 to double, !dbg !168
  %phitmp189 = fmul double %phitmp188, 5.000000e-01, !dbg !168
  br label %for.end, !dbg !168

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %dvzz.0.lcssa = phi double [ %phitmp189, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvzy.0.lcssa = phi double [ %phitmp187, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvzx.0.lcssa = phi double [ %phitmp185, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvyz.0.lcssa = phi double [ %phitmp183, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvyy.0.lcssa = phi double [ %phitmp181, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvyx.0.lcssa = phi double [ %phitmp179, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvxz.0.lcssa = phi double [ %phitmp177, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvxy.0.lcssa = phi double [ %phitmp175, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvxx.0.lcssa = phi double [ %phitmp173, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %arraydecay = getelementptr inbounds [3 x float]* %vir, i64 0, i64 0, !dbg !183
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !184), !dbg !185
  %6 = load float* %arraydecay, align 4, !dbg !186, !tbaa !172
  %conv1.i = fpext float %6 to double, !dbg !186
  %sub.i = fsub double %conv1.i, %dvxx.0.lcssa, !dbg !186
  %conv2.i = fptrunc double %sub.i to float, !dbg !186
  store float %conv2.i, float* %arraydecay, align 4, !dbg !186, !tbaa !172
  %arrayidx5.i = getelementptr inbounds [3 x float]* %vir, i64 0, i64 1, !dbg !187
  %7 = load float* %arrayidx5.i, align 4, !dbg !187, !tbaa !172
  %conv6.i = fpext float %7 to double, !dbg !187
  %sub7.i = fsub double %conv6.i, %dvxy.0.lcssa, !dbg !187
  %conv8.i = fptrunc double %sub7.i to float, !dbg !187
  store float %conv8.i, float* %arrayidx5.i, align 4, !dbg !187, !tbaa !172
  %arrayidx11.i = getelementptr inbounds [3 x float]* %vir, i64 0, i64 2, !dbg !188
  %8 = load float* %arrayidx11.i, align 4, !dbg !188, !tbaa !172
  %conv12.i = fpext float %8 to double, !dbg !188
  %sub13.i = fsub double %conv12.i, %dvxz.0.lcssa, !dbg !188
  %conv14.i = fptrunc double %sub13.i to float, !dbg !188
  store float %conv14.i, float* %arrayidx11.i, align 4, !dbg !188, !tbaa !172
  %arraydecay71 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 0, !dbg !189
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay71}, i64 0, metadata !190), !dbg !191
  %9 = load float* %arraydecay71, align 4, !dbg !192, !tbaa !172
  %conv1.i139 = fpext float %9 to double, !dbg !192
  %sub.i140 = fsub double %conv1.i139, %dvyx.0.lcssa, !dbg !192
  %conv2.i141 = fptrunc double %sub.i140 to float, !dbg !192
  store float %conv2.i141, float* %arraydecay71, align 4, !dbg !192, !tbaa !172
  %arrayidx5.i144 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 1, !dbg !193
  %10 = load float* %arrayidx5.i144, align 4, !dbg !193, !tbaa !172
  %conv6.i145 = fpext float %10 to double, !dbg !193
  %sub7.i146 = fsub double %conv6.i145, %dvyy.0.lcssa, !dbg !193
  %conv8.i147 = fptrunc double %sub7.i146 to float, !dbg !193
  store float %conv8.i147, float* %arrayidx5.i144, align 4, !dbg !193, !tbaa !172
  %arrayidx11.i150 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 2, !dbg !194
  %11 = load float* %arrayidx11.i150, align 4, !dbg !194, !tbaa !172
  %conv12.i151 = fpext float %11 to double, !dbg !194
  %sub13.i152 = fsub double %conv12.i151, %dvyz.0.lcssa, !dbg !194
  %conv14.i153 = fptrunc double %sub13.i152 to float, !dbg !194
  store float %conv14.i153, float* %arrayidx11.i150, align 4, !dbg !194, !tbaa !172
  %arraydecay73 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 0, !dbg !195
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay73}, i64 0, metadata !196), !dbg !197
  %12 = load float* %arraydecay73, align 4, !dbg !198, !tbaa !172
  %conv1.i122 = fpext float %12 to double, !dbg !198
  %sub.i123 = fsub double %conv1.i122, %dvzx.0.lcssa, !dbg !198
  %conv2.i124 = fptrunc double %sub.i123 to float, !dbg !198
  store float %conv2.i124, float* %arraydecay73, align 4, !dbg !198, !tbaa !172
  %arrayidx5.i127 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 1, !dbg !199
  %13 = load float* %arrayidx5.i127, align 4, !dbg !199, !tbaa !172
  %conv6.i128 = fpext float %13 to double, !dbg !199
  %sub7.i129 = fsub double %conv6.i128, %dvzy.0.lcssa, !dbg !199
  %conv8.i130 = fptrunc double %sub7.i129 to float, !dbg !199
  store float %conv8.i130, float* %arrayidx5.i127, align 4, !dbg !199, !tbaa !172
  %arrayidx11.i133 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 2, !dbg !200
  %14 = load float* %arrayidx11.i133, align 4, !dbg !200, !tbaa !172
  %conv12.i134 = fpext float %14 to double, !dbg !200
  %sub13.i135 = fsub double %conv12.i134, %dvzz.0.lcssa, !dbg !200
  %conv14.i136 = fptrunc double %sub13.i135 to float, !dbg !200
  store float %conv14.i136, float* %arrayidx11.i133, align 4, !dbg !200, !tbaa !172
  ret void, !dbg !201
}

; Function Attrs: nounwind optsize uwtable
define void @f_calc_vir(%struct._IO_FILE* nocapture %log, i32 %i0, i32 %i1, [3 x float]* nocapture %x, [3 x float]* nocapture %f, [3 x float]* nocapture %vir, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !114), !dbg !202
  tail call void @llvm.dbg.value(metadata !{i32 %i0}, i64 0, metadata !115), !dbg !202
  tail call void @llvm.dbg.value(metadata !{i32 %i1}, i64 0, metadata !116), !dbg !202
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !117), !dbg !202
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !118), !dbg !202
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %vir}, i64 0, metadata !119), !dbg !202
  tail call void @llvm.dbg.value(metadata !{%struct.t_graph* %g}, i64 0, metadata !120), !dbg !203
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !121), !dbg !203
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1, !dbg !204
  %0 = load i32* %nnodes, align 4, !dbg !204, !tbaa !205
  %cmp = icmp sgt i32 %0, 0, !dbg !204
  br i1 %cmp, label %if.then, label %if.else, !dbg !204

if.then:                                          ; preds = %entry
  %start1 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3, !dbg !206
  %1 = load i32* %start1, align 4, !dbg !206, !tbaa !205
  %cmp2 = icmp slt i32 %1, %i0, !dbg !206
  %i0. = select i1 %cmp2, i32 %i0, i32 %1, !dbg !206
  tail call void @llvm.dbg.value(metadata !{i32 %i0.}, i64 0, metadata !122), !dbg !206
  %end4 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 4, !dbg !208
  %2 = load i32* %end4, align 4, !dbg !208, !tbaa !205
  %cmp5 = icmp slt i32 %2, %i1, !dbg !208
  %add = add nsw i32 %2, 1, !dbg !208
  %cond11 = select i1 %cmp5, i32 %add, i32 %i1, !dbg !208
  tail call void @llvm.dbg.value(metadata !{i32 %cond11}, i64 0, metadata !123), !dbg !208
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7, !dbg !209
  %3 = load [3 x i32]** %ishift, align 8, !dbg !209, !tbaa !210
  %arraydecay17 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !209
  %arrayidx19 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !209
  %4 = load float* %arrayidx19, align 4, !dbg !209, !tbaa !172
  %fabsf = tail call float @fabsf(float %4) #2, !dbg !209
  %5 = fpext float %fabsf to double, !dbg !209
  %cmp20 = fcmp ogt double %5, 1.200000e-38, !dbg !209
  br i1 %cmp20, label %lor.end.thread, label %lor.lhs.false, !dbg !209

lor.lhs.false:                                    ; preds = %if.then
  %arrayidx23 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !209
  %6 = load float* %arrayidx23, align 4, !dbg !209, !tbaa !172
  %fabsf91 = tail call float @fabsf(float %6) #2, !dbg !209
  %7 = fpext float %fabsf91 to double, !dbg !209
  %cmp26 = fcmp ogt double %7, 1.200000e-38, !dbg !209
  br i1 %cmp26, label %lor.end.thread, label %lor.end, !dbg !209

lor.end.thread:                                   ; preds = %lor.lhs.false, %if.then
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !211), !dbg !212
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !213), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !215), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !216), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !217), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !218), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !219), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !220), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !221), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !222), !dbg !214
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !223), !dbg !224
  %cmp8635.i97 = icmp slt i32 %i0., %cond11, !dbg !227
  br i1 %cmp8635.i97, label %for.body.lr.ph.i, label %lo_fcv.exit, !dbg !224

lor.end:                                          ; preds = %lor.lhs.false
  %arrayidx29 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !209
  %8 = load float* %arrayidx29, align 4, !dbg !209, !tbaa !172
  %fabsf92 = tail call float @fabsf(float %8) #2, !dbg !209
  %9 = fpext float %fabsf92 to double, !dbg !209
  %cmp32 = fcmp ogt double %9, 1.200000e-38, !dbg !209
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !211), !dbg !212
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !213), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !215), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !216), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !217), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !218), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !219), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !220), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !221), !dbg !214
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !222), !dbg !214
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !223), !dbg !224
  %cmp8635.i = icmp slt i32 %i0., %cond11, !dbg !227
  br i1 %cmp32, label %for.cond.preheader.i, label %for.cond85.preheader.i, !dbg !230

for.cond.preheader.i:                             ; preds = %lor.end
  br i1 %cmp8635.i, label %for.body.lr.ph.i, label %lo_fcv.exit, !dbg !224

for.body.lr.ph.i:                                 ; preds = %lor.end.thread, %for.cond.preheader.i
  %10 = load float* %arraydecay17, align 4, !dbg !231, !tbaa !172
  %arrayidx18.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 6, !dbg !231
  %11 = load float* %arrayidx18.i, align 4, !dbg !231, !tbaa !172
  %arrayidx40.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 4, !dbg !233
  %12 = load float* %arrayidx40.i, align 4, !dbg !233, !tbaa !172
  %arrayidx44.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 7, !dbg !233
  %13 = load float* %arrayidx44.i, align 4, !dbg !233, !tbaa !172
  %arrayidx66.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 8, !dbg !234
  %14 = load float* %arrayidx66.i, align 4, !dbg !234, !tbaa !172
  %15 = sext i32 %i0. to i64, !dbg !224
  %16 = icmp sgt i32 %1, %i0
  %smax = select i1 %16, i32 %1, i32 %i0
  %17 = sub i32 %cond11, %smax, !dbg !224
  br label %for.body.i, !dbg !224

for.cond85.preheader.i:                           ; preds = %lor.end
  br i1 %cmp8635.i, label %for.body88.lr.ph.i, label %lo_fcv.exit, !dbg !227

for.body88.lr.ph.i:                               ; preds = %for.cond85.preheader.i
  %18 = load float* %arraydecay17, align 4, !dbg !235, !tbaa !172
  %arrayidx126.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 4, !dbg !237
  %19 = load float* %arrayidx126.i, align 4, !dbg !237, !tbaa !172
  %arrayidx148.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 8, !dbg !238
  %20 = load float* %arrayidx148.i, align 4, !dbg !238, !tbaa !172
  %21 = sext i32 %i0. to i64, !dbg !227
  %22 = icmp sgt i32 %1, %i0
  %smax94 = select i1 %22, i32 %1, i32 %i0
  %23 = sub i32 %cond11, %smax94, !dbg !227
  br label %for.body88.i, !dbg !227

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv81.i = phi i64 [ %15, %for.body.lr.ph.i ], [ %indvars.iv.next82.i, %for.body.i ], !dbg !224
  %indvars.iv79.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next80.i, %for.body.i ]
  %dvzz.067.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add83.i, %for.body.i ]
  %dvzy.066.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add78.i, %for.body.i ]
  %dvzx.065.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add73.i, %for.body.i ]
  %dvyz.064.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add61.i, %for.body.i ]
  %dvyy.063.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add56.i, %for.body.i ]
  %dvyx.062.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add51.i, %for.body.i ]
  %dvxz.061.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add35.i, %for.body.i ]
  %dvxy.060.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add30.i, %for.body.i ]
  %dvxx.059.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add25.i, %for.body.i ]
  %24 = trunc i64 %indvars.iv81.i to i32, !dbg !239
  %mul.i = mul nsw i32 %24, 3, !dbg !239
  tail call void @llvm.dbg.value(metadata !{i32 %mul.i}, i64 0, metadata !240), !dbg !239
  %25 = trunc i64 %indvars.iv79.i to i32, !dbg !241
  %mul1.i = mul nsw i32 %25, 3, !dbg !241
  tail call void @llvm.dbg.value(metadata !{i32 %mul1.i}, i64 0, metadata !242), !dbg !241
  %idxprom.i = sext i32 %mul1.i to i64, !dbg !243
  %arrayidx.i = getelementptr inbounds [3 x i32]* %3, i64 0, i64 %idxprom.i, !dbg !243
  %26 = load i32* %arrayidx.i, align 4, !dbg !243, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !244), !dbg !243
  %add2.i = add nsw i32 %mul1.i, 1, !dbg !245
  %idxprom3.i = sext i32 %add2.i to i64, !dbg !245
  %arrayidx4.i = getelementptr inbounds [3 x i32]* %3, i64 0, i64 %idxprom3.i, !dbg !245
  %27 = load i32* %arrayidx4.i, align 4, !dbg !245, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !246), !dbg !245
  %add5.i = add nsw i32 %mul1.i, 2, !dbg !247
  %idxprom6.i = sext i32 %add5.i to i64, !dbg !247
  %arrayidx7.i = getelementptr inbounds [3 x i32]* %3, i64 0, i64 %idxprom6.i, !dbg !247
  %28 = load i32* %arrayidx7.i, align 4, !dbg !247, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !248), !dbg !247
  %idxprom9.i = sext i32 %mul.i to i64, !dbg !231
  %arrayidx10.i = getelementptr inbounds [3 x float]* %x, i64 0, i64 %idxprom9.i, !dbg !231
  %29 = load float* %arrayidx10.i, align 4, !dbg !231, !tbaa !172
  %conv.i = sitofp i32 %26 to float, !dbg !231
  %mul12.i = fmul float %10, %conv.i, !dbg !231
  %sub.i = fsub float %29, %mul12.i, !dbg !231
  %conv13.i = sitofp i32 %27 to float, !dbg !231
  %mul15.i = fmul float %4, %conv13.i, !dbg !231
  %sub16.i = fsub float %sub.i, %mul15.i, !dbg !231
  %conv17.i = sitofp i32 %28 to float, !dbg !231
  %mul19.i = fmul float %11, %conv17.i, !dbg !231
  %sub20.i = fsub float %sub16.i, %mul19.i, !dbg !231
  tail call void @llvm.dbg.value(metadata !{float %sub20.i}, i64 0, metadata !249), !dbg !231
  %arrayidx23.i = getelementptr inbounds [3 x float]* %f, i64 0, i64 %idxprom9.i, !dbg !250
  %30 = load float* %arrayidx23.i, align 4, !dbg !250, !tbaa !172
  %mul24.i = fmul float %30, %sub20.i, !dbg !250
  %add25.i = fadd float %dvxx.059.i, %mul24.i, !dbg !250
  tail call void @llvm.dbg.value(metadata !{float %add25.i}, i64 0, metadata !213), !dbg !250
  %add26.i = add nsw i32 %mul.i, 1, !dbg !251
  %idxprom27.i = sext i32 %add26.i to i64, !dbg !251
  %arrayidx28.i = getelementptr inbounds [3 x float]* %f, i64 0, i64 %idxprom27.i, !dbg !251
  %31 = load float* %arrayidx28.i, align 4, !dbg !251, !tbaa !172
  %mul29.i = fmul float %31, %sub20.i, !dbg !251
  %add30.i = fadd float %dvxy.060.i, %mul29.i, !dbg !251
  tail call void @llvm.dbg.value(metadata !{float %add30.i}, i64 0, metadata !215), !dbg !251
  %add31.i = add nsw i32 %mul.i, 2, !dbg !252
  %idxprom32.i = sext i32 %add31.i to i64, !dbg !252
  %arrayidx33.i = getelementptr inbounds [3 x float]* %f, i64 0, i64 %idxprom32.i, !dbg !252
  %32 = load float* %arrayidx33.i, align 4, !dbg !252, !tbaa !172
  %mul34.i = fmul float %sub20.i, %32, !dbg !252
  %add35.i = fadd float %dvxz.061.i, %mul34.i, !dbg !252
  tail call void @llvm.dbg.value(metadata !{float %add35.i}, i64 0, metadata !216), !dbg !252
  %arrayidx38.i = getelementptr inbounds [3 x float]* %x, i64 0, i64 %idxprom27.i, !dbg !233
  %33 = load float* %arrayidx38.i, align 4, !dbg !233, !tbaa !172
  %mul41.i = fmul float %12, %conv13.i, !dbg !233
  %sub42.i = fsub float %33, %mul41.i, !dbg !233
  %mul45.i = fmul float %13, %conv17.i, !dbg !233
  %sub46.i = fsub float %sub42.i, %mul45.i, !dbg !233
  tail call void @llvm.dbg.value(metadata !{float %sub46.i}, i64 0, metadata !253), !dbg !233
  %mul50.i = fmul float %30, %sub46.i, !dbg !254
  %add51.i = fadd float %dvyx.062.i, %mul50.i, !dbg !254
  tail call void @llvm.dbg.value(metadata !{float %add51.i}, i64 0, metadata !217), !dbg !254
  %mul55.i = fmul float %31, %sub46.i, !dbg !255
  %add56.i = fadd float %dvyy.063.i, %mul55.i, !dbg !255
  tail call void @llvm.dbg.value(metadata !{float %add56.i}, i64 0, metadata !218), !dbg !255
  %mul60.i = fmul float %32, %sub46.i, !dbg !256
  %add61.i = fadd float %dvyz.064.i, %mul60.i, !dbg !256
  tail call void @llvm.dbg.value(metadata !{float %add61.i}, i64 0, metadata !219), !dbg !256
  %arrayidx64.i = getelementptr inbounds [3 x float]* %x, i64 0, i64 %idxprom32.i, !dbg !234
  %34 = load float* %arrayidx64.i, align 4, !dbg !234, !tbaa !172
  %mul67.i = fmul float %14, %conv17.i, !dbg !234
  %sub68.i = fsub float %34, %mul67.i, !dbg !234
  tail call void @llvm.dbg.value(metadata !{float %sub68.i}, i64 0, metadata !257), !dbg !234
  %mul72.i = fmul float %30, %sub68.i, !dbg !258
  %add73.i = fadd float %dvzx.065.i, %mul72.i, !dbg !258
  tail call void @llvm.dbg.value(metadata !{float %add73.i}, i64 0, metadata !220), !dbg !258
  %mul77.i = fmul float %31, %sub68.i, !dbg !259
  %add78.i = fadd float %dvzy.066.i, %mul77.i, !dbg !259
  tail call void @llvm.dbg.value(metadata !{float %add78.i}, i64 0, metadata !221), !dbg !259
  %mul82.i = fmul float %32, %sub68.i, !dbg !260
  %add83.i = fadd float %dvzz.067.i, %mul82.i, !dbg !260
  tail call void @llvm.dbg.value(metadata !{float %add83.i}, i64 0, metadata !222), !dbg !260
  %indvars.iv.next82.i = add i64 %indvars.iv81.i, 1, !dbg !224
  %indvars.iv.next80.i = add i64 %indvars.iv79.i, 1, !dbg !224
  %lftr.wideiv = trunc i64 %indvars.iv.next80.i to i32, !dbg !224
  %exitcond = icmp eq i32 %lftr.wideiv, %17, !dbg !224
  br i1 %exitcond, label %lo_fcv.exit, label %for.body.i, !dbg !224

for.body88.i:                                     ; preds = %for.body88.i, %for.body88.lr.ph.i
  %indvars.iv77.i = phi i64 [ %21, %for.body88.lr.ph.i ], [ %indvars.iv.next78.i, %for.body88.i ], !dbg !227
  %indvars.iv.i = phi i64 [ 0, %for.body88.lr.ph.i ], [ %indvars.iv.next.i, %for.body88.i ]
  %dvzz.146.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add165.i, %for.body88.i ]
  %dvzy.145.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add160.i, %for.body88.i ]
  %dvzx.144.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add155.i, %for.body88.i ]
  %dvyz.143.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add143.i, %for.body88.i ]
  %dvyy.142.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add138.i, %for.body88.i ]
  %dvyx.141.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add133.i, %for.body88.i ]
  %dvxz.140.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add121.i, %for.body88.i ]
  %dvxy.139.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add116.i, %for.body88.i ]
  %dvxx.138.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add111.i, %for.body88.i ]
  %35 = trunc i64 %indvars.iv77.i to i32, !dbg !261
  %mul89.i = mul nsw i32 %35, 3, !dbg !261
  tail call void @llvm.dbg.value(metadata !{i32 %mul89.i}, i64 0, metadata !240), !dbg !261
  %36 = trunc i64 %indvars.iv.i to i32, !dbg !262
  %mul90.i = mul nsw i32 %36, 3, !dbg !262
  tail call void @llvm.dbg.value(metadata !{i32 %mul90.i}, i64 0, metadata !242), !dbg !262
  %idxprom92.i = sext i32 %mul90.i to i64, !dbg !263
  %arrayidx93.i = getelementptr inbounds [3 x i32]* %3, i64 0, i64 %idxprom92.i, !dbg !263
  %37 = load i32* %arrayidx93.i, align 4, !dbg !263, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{i32 %37}, i64 0, metadata !244), !dbg !263
  %add94.i = add nsw i32 %mul90.i, 1, !dbg !264
  %idxprom95.i = sext i32 %add94.i to i64, !dbg !264
  %arrayidx96.i = getelementptr inbounds [3 x i32]* %3, i64 0, i64 %idxprom95.i, !dbg !264
  %38 = load i32* %arrayidx96.i, align 4, !dbg !264, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !246), !dbg !264
  %add97.i = add nsw i32 %mul90.i, 2, !dbg !265
  %idxprom98.i = sext i32 %add97.i to i64, !dbg !265
  %arrayidx99.i = getelementptr inbounds [3 x i32]* %3, i64 0, i64 %idxprom98.i, !dbg !265
  %39 = load i32* %arrayidx99.i, align 4, !dbg !265, !tbaa !205
  tail call void @llvm.dbg.value(metadata !{i32 %39}, i64 0, metadata !248), !dbg !265
  %idxprom101.i = sext i32 %mul89.i to i64, !dbg !235
  %arrayidx102.i = getelementptr inbounds [3 x float]* %x, i64 0, i64 %idxprom101.i, !dbg !235
  %40 = load float* %arrayidx102.i, align 4, !dbg !235, !tbaa !172
  %conv103.i = sitofp i32 %37 to float, !dbg !235
  %mul105.i = fmul float %18, %conv103.i, !dbg !235
  %sub106.i = fsub float %40, %mul105.i, !dbg !235
  tail call void @llvm.dbg.value(metadata !{float %sub106.i}, i64 0, metadata !249), !dbg !235
  %arrayidx109.i = getelementptr inbounds [3 x float]* %f, i64 0, i64 %idxprom101.i, !dbg !266
  %41 = load float* %arrayidx109.i, align 4, !dbg !266, !tbaa !172
  %mul110.i = fmul float %41, %sub106.i, !dbg !266
  %add111.i = fadd float %dvxx.138.i, %mul110.i, !dbg !266
  tail call void @llvm.dbg.value(metadata !{float %add111.i}, i64 0, metadata !213), !dbg !266
  %add112.i = add nsw i32 %mul89.i, 1, !dbg !267
  %idxprom113.i = sext i32 %add112.i to i64, !dbg !267
  %arrayidx114.i = getelementptr inbounds [3 x float]* %f, i64 0, i64 %idxprom113.i, !dbg !267
  %42 = load float* %arrayidx114.i, align 4, !dbg !267, !tbaa !172
  %mul115.i = fmul float %sub106.i, %42, !dbg !267
  %add116.i = fadd float %dvxy.139.i, %mul115.i, !dbg !267
  tail call void @llvm.dbg.value(metadata !{float %add116.i}, i64 0, metadata !215), !dbg !267
  %add117.i = add nsw i32 %mul89.i, 2, !dbg !268
  %idxprom118.i = sext i32 %add117.i to i64, !dbg !268
  %arrayidx119.i = getelementptr inbounds [3 x float]* %f, i64 0, i64 %idxprom118.i, !dbg !268
  %43 = load float* %arrayidx119.i, align 4, !dbg !268, !tbaa !172
  %mul120.i = fmul float %sub106.i, %43, !dbg !268
  %add121.i = fadd float %dvxz.140.i, %mul120.i, !dbg !268
  tail call void @llvm.dbg.value(metadata !{float %add121.i}, i64 0, metadata !216), !dbg !268
  %arrayidx124.i = getelementptr inbounds [3 x float]* %x, i64 0, i64 %idxprom113.i, !dbg !237
  %44 = load float* %arrayidx124.i, align 4, !dbg !237, !tbaa !172
  %conv125.i = sitofp i32 %38 to float, !dbg !237
  %mul127.i = fmul float %19, %conv125.i, !dbg !237
  %sub128.i = fsub float %44, %mul127.i, !dbg !237
  tail call void @llvm.dbg.value(metadata !{float %sub128.i}, i64 0, metadata !253), !dbg !237
  %mul132.i = fmul float %41, %sub128.i, !dbg !269
  %add133.i = fadd float %dvyx.141.i, %mul132.i, !dbg !269
  tail call void @llvm.dbg.value(metadata !{float %add133.i}, i64 0, metadata !217), !dbg !269
  %mul137.i = fmul float %42, %sub128.i, !dbg !270
  %add138.i = fadd float %dvyy.142.i, %mul137.i, !dbg !270
  tail call void @llvm.dbg.value(metadata !{float %add138.i}, i64 0, metadata !218), !dbg !270
  %mul142.i = fmul float %43, %sub128.i, !dbg !271
  %add143.i = fadd float %dvyz.143.i, %mul142.i, !dbg !271
  tail call void @llvm.dbg.value(metadata !{float %add143.i}, i64 0, metadata !219), !dbg !271
  %arrayidx146.i = getelementptr inbounds [3 x float]* %x, i64 0, i64 %idxprom118.i, !dbg !238
  %45 = load float* %arrayidx146.i, align 4, !dbg !238, !tbaa !172
  %conv147.i = sitofp i32 %39 to float, !dbg !238
  %mul149.i = fmul float %20, %conv147.i, !dbg !238
  %sub150.i = fsub float %45, %mul149.i, !dbg !238
  tail call void @llvm.dbg.value(metadata !{float %sub150.i}, i64 0, metadata !257), !dbg !238
  %mul154.i = fmul float %41, %sub150.i, !dbg !272
  %add155.i = fadd float %dvzx.144.i, %mul154.i, !dbg !272
  tail call void @llvm.dbg.value(metadata !{float %add155.i}, i64 0, metadata !220), !dbg !272
  %mul159.i = fmul float %42, %sub150.i, !dbg !273
  %add160.i = fadd float %dvzy.145.i, %mul159.i, !dbg !273
  tail call void @llvm.dbg.value(metadata !{float %add160.i}, i64 0, metadata !221), !dbg !273
  %mul164.i = fmul float %43, %sub150.i, !dbg !274
  %add165.i = fadd float %dvzz.146.i, %mul164.i, !dbg !274
  tail call void @llvm.dbg.value(metadata !{float %add165.i}, i64 0, metadata !222), !dbg !274
  %indvars.iv.next78.i = add i64 %indvars.iv77.i, 1, !dbg !227
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !227
  %lftr.wideiv95 = trunc i64 %indvars.iv.next.i to i32, !dbg !227
  %exitcond96 = icmp eq i32 %lftr.wideiv95, %23, !dbg !227
  br i1 %exitcond96, label %lo_fcv.exit, label %for.body88.i, !dbg !227

lo_fcv.exit:                                      ; preds = %for.body88.i, %for.body.i, %lor.end.thread, %for.cond.preheader.i, %for.cond85.preheader.i
  %dvxx.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add25.i, %for.body.i ], [ %add111.i, %for.body88.i ]
  %dvxy.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add30.i, %for.body.i ], [ %add116.i, %for.body88.i ]
  %dvxz.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add35.i, %for.body.i ], [ %add121.i, %for.body88.i ]
  %dvyx.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add51.i, %for.body.i ], [ %add133.i, %for.body88.i ]
  %dvyy.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add56.i, %for.body.i ], [ %add138.i, %for.body88.i ]
  %dvyz.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add61.i, %for.body.i ], [ %add143.i, %for.body88.i ]
  %dvzx.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add73.i, %for.body.i ], [ %add155.i, %for.body88.i ]
  %dvzy.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add78.i, %for.body.i ], [ %add160.i, %for.body88.i ]
  %dvzz.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add83.i, %for.body.i ], [ %add165.i, %for.body88.i ]
  %arraydecay.i = getelementptr inbounds [3 x float]* %vir, i64 0, i64 0, !dbg !275
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay.i}, i64 0, metadata !276), !dbg !277
  tail call void @llvm.dbg.value(metadata !{float %dvxx.2.i}, i64 0, metadata !278), !dbg !277
  tail call void @llvm.dbg.value(metadata !{float %dvxy.2.i}, i64 0, metadata !279), !dbg !277
  tail call void @llvm.dbg.value(metadata !{float %dvxz.2.i}, i64 0, metadata !280), !dbg !277
  %conv.i.i = fpext float %dvxx.2.i to double, !dbg !281
  %mul.i.i = fmul double %conv.i.i, 5.000000e-01, !dbg !281
  %46 = load float* %arraydecay.i, align 4, !dbg !281, !tbaa !172
  %conv1.i.i = fpext float %46 to double, !dbg !281
  %sub.i.i = fsub double %conv1.i.i, %mul.i.i, !dbg !281
  %conv2.i.i = fptrunc double %sub.i.i to float, !dbg !281
  store float %conv2.i.i, float* %arraydecay.i, align 4, !dbg !281, !tbaa !172
  %conv3.i.i = fpext float %dvxy.2.i to double, !dbg !282
  %mul4.i.i = fmul double %conv3.i.i, 5.000000e-01, !dbg !282
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %vir, i64 0, i64 1, !dbg !282
  %47 = load float* %arrayidx5.i.i, align 4, !dbg !282, !tbaa !172
  %conv6.i.i = fpext float %47 to double, !dbg !282
  %sub7.i.i = fsub double %conv6.i.i, %mul4.i.i, !dbg !282
  %conv8.i.i = fptrunc double %sub7.i.i to float, !dbg !282
  store float %conv8.i.i, float* %arrayidx5.i.i, align 4, !dbg !282, !tbaa !172
  %conv9.i.i = fpext float %dvxz.2.i to double, !dbg !283
  %mul10.i.i = fmul double %conv9.i.i, 5.000000e-01, !dbg !283
  %arrayidx11.i.i = getelementptr inbounds [3 x float]* %vir, i64 0, i64 2, !dbg !283
  %48 = load float* %arrayidx11.i.i, align 4, !dbg !283, !tbaa !172
  %conv12.i.i = fpext float %48 to double, !dbg !283
  %sub13.i.i = fsub double %conv12.i.i, %mul10.i.i, !dbg !283
  %conv14.i.i = fptrunc double %sub13.i.i to float, !dbg !283
  store float %conv14.i.i, float* %arrayidx11.i.i, align 4, !dbg !283, !tbaa !172
  %arraydecay172.i = getelementptr inbounds [3 x float]* %vir, i64 1, i64 0, !dbg !284
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay172.i}, i64 0, metadata !285), !dbg !286
  tail call void @llvm.dbg.value(metadata !{float %dvyx.2.i}, i64 0, metadata !287), !dbg !286
  tail call void @llvm.dbg.value(metadata !{float %dvyy.2.i}, i64 0, metadata !288), !dbg !286
  tail call void @llvm.dbg.value(metadata !{float %dvyz.2.i}, i64 0, metadata !289), !dbg !286
  %conv.i18.i = fpext float %dvyx.2.i to double, !dbg !290
  %mul.i19.i = fmul double %conv.i18.i, 5.000000e-01, !dbg !290
  %49 = load float* %arraydecay172.i, align 4, !dbg !290, !tbaa !172
  %conv1.i20.i = fpext float %49 to double, !dbg !290
  %sub.i21.i = fsub double %conv1.i20.i, %mul.i19.i, !dbg !290
  %conv2.i22.i = fptrunc double %sub.i21.i to float, !dbg !290
  store float %conv2.i22.i, float* %arraydecay172.i, align 4, !dbg !290, !tbaa !172
  %conv3.i23.i = fpext float %dvyy.2.i to double, !dbg !291
  %mul4.i24.i = fmul double %conv3.i23.i, 5.000000e-01, !dbg !291
  %arrayidx5.i25.i = getelementptr inbounds [3 x float]* %vir, i64 1, i64 1, !dbg !291
  %50 = load float* %arrayidx5.i25.i, align 4, !dbg !291, !tbaa !172
  %conv6.i26.i = fpext float %50 to double, !dbg !291
  %sub7.i27.i = fsub double %conv6.i26.i, %mul4.i24.i, !dbg !291
  %conv8.i28.i = fptrunc double %sub7.i27.i to float, !dbg !291
  store float %conv8.i28.i, float* %arrayidx5.i25.i, align 4, !dbg !291, !tbaa !172
  %conv9.i29.i = fpext float %dvyz.2.i to double, !dbg !292
  %mul10.i30.i = fmul double %conv9.i29.i, 5.000000e-01, !dbg !292
  %arrayidx11.i31.i = getelementptr inbounds [3 x float]* %vir, i64 1, i64 2, !dbg !292
  %51 = load float* %arrayidx11.i31.i, align 4, !dbg !292, !tbaa !172
  %conv12.i32.i = fpext float %51 to double, !dbg !292
  %sub13.i33.i = fsub double %conv12.i32.i, %mul10.i30.i, !dbg !292
  %conv14.i34.i = fptrunc double %sub13.i33.i to float, !dbg !292
  store float %conv14.i34.i, float* %arrayidx11.i31.i, align 4, !dbg !292, !tbaa !172
  %arraydecay174.i = getelementptr inbounds [3 x float]* %vir, i64 2, i64 0, !dbg !293
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay174.i}, i64 0, metadata !294), !dbg !295
  tail call void @llvm.dbg.value(metadata !{float %dvzx.2.i}, i64 0, metadata !296), !dbg !295
  tail call void @llvm.dbg.value(metadata !{float %dvzy.2.i}, i64 0, metadata !297), !dbg !295
  tail call void @llvm.dbg.value(metadata !{float %dvzz.2.i}, i64 0, metadata !298), !dbg !295
  %conv.i1.i = fpext float %dvzx.2.i to double, !dbg !299
  %mul.i2.i = fmul double %conv.i1.i, 5.000000e-01, !dbg !299
  %52 = load float* %arraydecay174.i, align 4, !dbg !299, !tbaa !172
  %conv1.i3.i = fpext float %52 to double, !dbg !299
  %sub.i4.i = fsub double %conv1.i3.i, %mul.i2.i, !dbg !299
  %conv2.i5.i = fptrunc double %sub.i4.i to float, !dbg !299
  store float %conv2.i5.i, float* %arraydecay174.i, align 4, !dbg !299, !tbaa !172
  %conv3.i6.i = fpext float %dvzy.2.i to double, !dbg !300
  %mul4.i7.i = fmul double %conv3.i6.i, 5.000000e-01, !dbg !300
  %arrayidx5.i8.i = getelementptr inbounds [3 x float]* %vir, i64 2, i64 1, !dbg !300
  %53 = load float* %arrayidx5.i8.i, align 4, !dbg !300, !tbaa !172
  %conv6.i9.i = fpext float %53 to double, !dbg !300
  %sub7.i10.i = fsub double %conv6.i9.i, %mul4.i7.i, !dbg !300
  %conv8.i11.i = fptrunc double %sub7.i10.i to float, !dbg !300
  store float %conv8.i11.i, float* %arrayidx5.i8.i, align 4, !dbg !300, !tbaa !172
  %conv9.i12.i = fpext float %dvzz.2.i to double, !dbg !301
  %mul10.i13.i = fmul double %conv9.i12.i, 5.000000e-01, !dbg !301
  %arrayidx11.i14.i = getelementptr inbounds [3 x float]* %vir, i64 2, i64 2, !dbg !301
  %54 = load float* %arrayidx11.i14.i, align 4, !dbg !301, !tbaa !172
  %conv12.i15.i = fpext float %54 to double, !dbg !301
  %sub13.i16.i = fsub double %conv12.i15.i, %mul10.i13.i, !dbg !301
  %conv14.i17.i = fptrunc double %sub13.i16.i to float, !dbg !301
  store float %conv14.i17.i, float* %arrayidx11.i14.i, align 4, !dbg !301, !tbaa !172
  %cmp34 = icmp sgt i32 %i0., %i0, !dbg !302
  br i1 %cmp34, label %if.then36, label %if.end, !dbg !302

if.then36:                                        ; preds = %lo_fcv.exit
  %sub = sub nsw i32 %i0., %i0, !dbg !303
  %idx.ext = sext i32 %i0 to i64, !dbg !303
  %add.ptr = getelementptr inbounds [3 x float]* %x, i64 %idx.ext, !dbg !303
  %add.ptr38 = getelementptr inbounds [3 x float]* %f, i64 %idx.ext, !dbg !303
  tail call void @calc_vir(%struct._IO_FILE* undef, i32 %sub, [3 x float]* %add.ptr, [3 x float]* %add.ptr38, [3 x float]* %vir) #3, !dbg !303
  br label %if.end, !dbg !303

if.end:                                           ; preds = %if.then36, %lo_fcv.exit
  %cmp39 = icmp slt i32 %cond11, %i1, !dbg !304
  br i1 %cmp39, label %if.then41, label %if.end53, !dbg !304

if.then41:                                        ; preds = %if.end
  %sub42 = sub nsw i32 %i1, %cond11, !dbg !305
  %idx.ext43 = sext i32 %cond11 to i64, !dbg !305
  %add.ptr44 = getelementptr inbounds [3 x float]* %x, i64 %idx.ext43, !dbg !305
  %add.ptr46 = getelementptr inbounds [3 x float]* %f, i64 %idx.ext43, !dbg !305
  tail call void @calc_vir(%struct._IO_FILE* undef, i32 %sub42, [3 x float]* %add.ptr44, [3 x float]* %add.ptr46, [3 x float]* %vir) #3, !dbg !305
  br label %if.end53, !dbg !305

if.else:                                          ; preds = %entry
  %sub48 = sub nsw i32 %i1, %i0, !dbg !306
  %idx.ext49 = sext i32 %i0 to i64, !dbg !306
  %add.ptr50 = getelementptr inbounds [3 x float]* %x, i64 %idx.ext49, !dbg !306
  %add.ptr52 = getelementptr inbounds [3 x float]* %f, i64 %idx.ext49, !dbg !306
  tail call void @calc_vir(%struct._IO_FILE* undef, i32 %sub48, [3 x float]* %add.ptr50, [3 x float]* %add.ptr52, [3 x float]* %vir) #3, !dbg !306
  br label %if.end53

if.end53:                                         ; preds = %if.end, %if.then41, %if.else
  ret void, !dbg !307
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcvir.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/calcvir.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !90, metadata !124, metadata !157}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_vir", metadata !"calc_vir", metadata !"", i32 54, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, [3 x float]*, [3 x float]*, [3 x float]*)* @calc_vir, null, null, metadata !74, i32 55} ; [ DW_TAG_subprogram ] [line 54] [def] [scope 55] [calc_vir]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcvir.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !66, metadata !66, metadata !73}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!11 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !36, metadata !37, metadata !38, metadata !39, metadata !42, metadata !44, metadata !46, metadata !50, metadata !52, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !61, metadata !62}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!17 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!25 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!28 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !29} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!30 = metadata !{i32 786451, metadata !11, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!31 = metadata !{metadata !32, metadata !33, metadata !35}
!32 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!33 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!35 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!36 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !34} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!37 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!38 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!39 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !40} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!40 = metadata !{i32 786454, metadata !11, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!41 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!42 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !43} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!43 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !45} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!45 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!46 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !47} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!47 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !17, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!50 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !51} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !53} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!53 = metadata !{i32 786454, metadata !11, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!54 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!55 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!56 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!57 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!58 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !59} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!59 = metadata !{i32 786454, metadata !11, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!60 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!61 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!62 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !63} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !17, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!67 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!68 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !69, metadata !71, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!69 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!70 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89}
!75 = metadata !{i32 786689, metadata !4, metadata !"log", metadata !5, i32 16777270, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 54]
!76 = metadata !{i32 786689, metadata !4, metadata !"nxf", metadata !5, i32 33554486, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nxf] [line 54]
!77 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 50331702, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 54]
!78 = metadata !{i32 786689, metadata !4, metadata !"f", metadata !5, i32 67108918, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 54]
!79 = metadata !{i32 786689, metadata !4, metadata !"vir", metadata !5, i32 83886134, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vir] [line 54]
!80 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 56, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 56]
!81 = metadata !{i32 786688, metadata !4, metadata !"dvxx", metadata !5, i32 57, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvxx] [line 57]
!82 = metadata !{i32 786688, metadata !4, metadata !"dvxy", metadata !5, i32 57, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvxy] [line 57]
!83 = metadata !{i32 786688, metadata !4, metadata !"dvxz", metadata !5, i32 57, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvxz] [line 57]
!84 = metadata !{i32 786688, metadata !4, metadata !"dvyx", metadata !5, i32 57, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvyx] [line 57]
!85 = metadata !{i32 786688, metadata !4, metadata !"dvyy", metadata !5, i32 57, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvyy] [line 57]
!86 = metadata !{i32 786688, metadata !4, metadata !"dvyz", metadata !5, i32 57, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvyz] [line 57]
!87 = metadata !{i32 786688, metadata !4, metadata !"dvzx", metadata !5, i32 57, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvzx] [line 57]
!88 = metadata !{i32 786688, metadata !4, metadata !"dvzy", metadata !5, i32 57, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvzy] [line 57]
!89 = metadata !{i32 786688, metadata !4, metadata !"dvzz", metadata !5, i32 57, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvzz] [line 57]
!90 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"f_calc_vir", metadata !"f_calc_vir", metadata !"", i32 197, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_graph*, [3 x float]*)* @f_calc_vir, null, null, metadata !113, i32 199} ; [ DW_TAG_subprogram ] [line 197] [def] [scope 199] [f_calc_vir]
!91 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !66, metadata !66, metadata !73, metadata !93, metadata !73}
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_graph]
!94 = metadata !{i32 786454, metadata !1, null, metadata !"t_graph", i32 47, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [t_graph] [line 47, size 0, align 0, offset 0] [from ]
!95 = metadata !{i32 786451, metadata !96, null, metadata !"", i32 38, i64 384, i64 64, i32 0, i32 0, null, metadata !97, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 38, size 384, align 64, offset 0] [from ]
!96 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !105, metadata !109}
!98 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"maxbond", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [maxbond] [line 39, size 32, align 32, offset 0] [from int]
!99 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"nnodes", i32 40, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nnodes] [line 40, size 32, align 32, offset 32] [from int]
!100 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"nbound", i32 41, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nbound] [line 41, size 32, align 32, offset 64] [from int]
!101 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"start", i32 42, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [start] [line 42, size 32, align 32, offset 96] [from int]
!102 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"end", i32 43, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [end] [line 43, size 32, align 32, offset 128] [from int]
!103 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"nedge", i32 44, i64 64, i64 64, i64 192, i32 0, metadata !104} ; [ DW_TAG_member ] [nedge] [line 44, size 64, align 64, offset 192] [from ]
!104 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!105 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"edge", i32 45, i64 64, i64 64, i64 256, i32 0, metadata !106} ; [ DW_TAG_member ] [edge] [line 45, size 64, align 64, offset 256] [from ]
!106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !107} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!108 = metadata !{i32 786454, metadata !96, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!109 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"ishift", i32 46, i64 64, i64 64, i64 320, i32 0, metadata !110} ; [ DW_TAG_member ] [ishift] [line 46, size 64, align 64, offset 320] [from ]
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!111 = metadata !{i32 786454, metadata !96, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!112 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !14, metadata !71, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123}
!114 = metadata !{i32 786689, metadata !90, metadata !"log", metadata !5, i32 16777413, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 197]
!115 = metadata !{i32 786689, metadata !90, metadata !"i0", metadata !5, i32 33554629, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i0] [line 197]
!116 = metadata !{i32 786689, metadata !90, metadata !"i1", metadata !5, i32 50331845, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i1] [line 197]
!117 = metadata !{i32 786689, metadata !90, metadata !"x", metadata !5, i32 67109061, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!118 = metadata !{i32 786689, metadata !90, metadata !"f", metadata !5, i32 83886277, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 197]
!119 = metadata !{i32 786689, metadata !90, metadata !"vir", metadata !5, i32 100663493, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vir] [line 197]
!120 = metadata !{i32 786689, metadata !90, metadata !"g", metadata !5, i32 117440710, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 198]
!121 = metadata !{i32 786689, metadata !90, metadata !"box", metadata !5, i32 134217926, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 198]
!122 = metadata !{i32 786688, metadata !90, metadata !"start", metadata !5, i32 200, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 200]
!123 = metadata !{i32 786688, metadata !90, metadata !"end", metadata !5, i32 200, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 200]
!124 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"lo_fcv", metadata !"lo_fcv", metadata !"", i32 79, metadata !125, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !128, i32 82} ; [ DW_TAG_subprogram ] [line 79] [local] [def] [scope 82] [lo_fcv]
!125 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!126 = metadata !{null, metadata !14, metadata !14, metadata !14, metadata !127, metadata !127, metadata !73, metadata !104, metadata !127, metadata !14}
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!128 = metadata !{metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156}
!129 = metadata !{i32 786689, metadata !124, metadata !"i0", metadata !5, i32 16777295, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i0] [line 79]
!130 = metadata !{i32 786689, metadata !124, metadata !"i1", metadata !5, i32 33554511, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i1] [line 79]
!131 = metadata !{i32 786689, metadata !124, metadata !"g0", metadata !5, i32 50331727, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g0] [line 79]
!132 = metadata !{i32 786689, metadata !124, metadata !"x", metadata !5, i32 67108944, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 80]
!133 = metadata !{i32 786689, metadata !124, metadata !"f", metadata !5, i32 83886160, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 80]
!134 = metadata !{i32 786689, metadata !124, metadata !"vir", metadata !5, i32 100663376, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vir] [line 80]
!135 = metadata !{i32 786689, metadata !124, metadata !"is", metadata !5, i32 117440593, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [is] [line 81]
!136 = metadata !{i32 786689, metadata !124, metadata !"box", metadata !5, i32 134217809, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 81]
!137 = metadata !{i32 786689, metadata !124, metadata !"bTriclinic", metadata !5, i32 150995025, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bTriclinic] [line 81]
!138 = metadata !{i32 786688, metadata !124, metadata !"i", metadata !5, i32 83, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 83]
!139 = metadata !{i32 786688, metadata !124, metadata !"i3", metadata !5, i32 83, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i3] [line 83]
!140 = metadata !{i32 786688, metadata !124, metadata !"gg", metadata !5, i32 83, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gg] [line 83]
!141 = metadata !{i32 786688, metadata !124, metadata !"g3", metadata !5, i32 83, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g3] [line 83]
!142 = metadata !{i32 786688, metadata !124, metadata !"tx", metadata !5, i32 83, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tx] [line 83]
!143 = metadata !{i32 786688, metadata !124, metadata !"ty", metadata !5, i32 83, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ty] [line 83]
!144 = metadata !{i32 786688, metadata !124, metadata !"tz", metadata !5, i32 83, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tz] [line 83]
!145 = metadata !{i32 786688, metadata !124, metadata !"xx", metadata !5, i32 84, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xx] [line 84]
!146 = metadata !{i32 786688, metadata !124, metadata !"yy", metadata !5, i32 84, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yy] [line 84]
!147 = metadata !{i32 786688, metadata !124, metadata !"zz", metadata !5, i32 84, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zz] [line 84]
!148 = metadata !{i32 786688, metadata !124, metadata !"dvxx", metadata !5, i32 85, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvxx] [line 85]
!149 = metadata !{i32 786688, metadata !124, metadata !"dvxy", metadata !5, i32 85, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvxy] [line 85]
!150 = metadata !{i32 786688, metadata !124, metadata !"dvxz", metadata !5, i32 85, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvxz] [line 85]
!151 = metadata !{i32 786688, metadata !124, metadata !"dvyx", metadata !5, i32 85, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvyx] [line 85]
!152 = metadata !{i32 786688, metadata !124, metadata !"dvyy", metadata !5, i32 85, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvyy] [line 85]
!153 = metadata !{i32 786688, metadata !124, metadata !"dvyz", metadata !5, i32 85, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvyz] [line 85]
!154 = metadata !{i32 786688, metadata !124, metadata !"dvzx", metadata !5, i32 85, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvzx] [line 85]
!155 = metadata !{i32 786688, metadata !124, metadata !"dvzy", metadata !5, i32 85, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvzy] [line 85]
!156 = metadata !{i32 786688, metadata !124, metadata !"dvzz", metadata !5, i32 85, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvzz] [line 85]
!157 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"upd_vir", metadata !"upd_vir", metadata !"", i32 47, metadata !158, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !160, i32 48} ; [ DW_TAG_subprogram ] [line 47] [local] [def] [scope 48] [upd_vir]
!158 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!159 = metadata !{null, metadata !127, metadata !69, metadata !69, metadata !69}
!160 = metadata !{metadata !161, metadata !162, metadata !163, metadata !164}
!161 = metadata !{i32 786689, metadata !157, metadata !"vir", metadata !5, i32 16777263, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vir] [line 47]
!162 = metadata !{i32 786689, metadata !157, metadata !"dvx", metadata !5, i32 33554479, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dvx] [line 47]
!163 = metadata !{i32 786689, metadata !157, metadata !"dvy", metadata !5, i32 50331695, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dvy] [line 47]
!164 = metadata !{i32 786689, metadata !157, metadata !"dvz", metadata !5, i32 67108911, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dvz] [line 47]
!165 = metadata !{i32 54, i32 0, metadata !4, null}
!166 = metadata !{float 0.000000e+00}
!167 = metadata !{i32 57, i32 0, metadata !4, null}
!168 = metadata !{i32 59, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !4, i32 59, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcvir.c]
!170 = metadata !{i32 60, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !169, i32 59, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcvir.c]
!172 = metadata !{metadata !"float", metadata !173}
!173 = metadata !{metadata !"omnipotent char", metadata !174}
!174 = metadata !{metadata !"Simple C/C++ TBAA"}
!175 = metadata !{i32 61, i32 0, metadata !171, null}
!176 = metadata !{i32 62, i32 0, metadata !171, null}
!177 = metadata !{i32 64, i32 0, metadata !171, null}
!178 = metadata !{i32 65, i32 0, metadata !171, null}
!179 = metadata !{i32 66, i32 0, metadata !171, null}
!180 = metadata !{i32 68, i32 0, metadata !171, null}
!181 = metadata !{i32 69, i32 0, metadata !171, null}
!182 = metadata !{i32 70, i32 0, metadata !171, null}
!183 = metadata !{i32 73, i32 0, metadata !4, null}
!184 = metadata !{i32 786689, metadata !157, metadata !"vir", metadata !5, i32 16777263, metadata !127, i32 0, metadata !183} ; [ DW_TAG_arg_variable ] [vir] [line 47]
!185 = metadata !{i32 47, i32 0, metadata !157, metadata !183}
!186 = metadata !{i32 49, i32 0, metadata !157, metadata !183}
!187 = metadata !{i32 50, i32 0, metadata !157, metadata !183}
!188 = metadata !{i32 51, i32 0, metadata !157, metadata !183}
!189 = metadata !{i32 74, i32 0, metadata !4, null}
!190 = metadata !{i32 786689, metadata !157, metadata !"vir", metadata !5, i32 16777263, metadata !127, i32 0, metadata !189} ; [ DW_TAG_arg_variable ] [vir] [line 47]
!191 = metadata !{i32 47, i32 0, metadata !157, metadata !189}
!192 = metadata !{i32 49, i32 0, metadata !157, metadata !189}
!193 = metadata !{i32 50, i32 0, metadata !157, metadata !189}
!194 = metadata !{i32 51, i32 0, metadata !157, metadata !189}
!195 = metadata !{i32 75, i32 0, metadata !4, null}
!196 = metadata !{i32 786689, metadata !157, metadata !"vir", metadata !5, i32 16777263, metadata !127, i32 0, metadata !195} ; [ DW_TAG_arg_variable ] [vir] [line 47]
!197 = metadata !{i32 47, i32 0, metadata !157, metadata !195}
!198 = metadata !{i32 49, i32 0, metadata !157, metadata !195}
!199 = metadata !{i32 50, i32 0, metadata !157, metadata !195}
!200 = metadata !{i32 51, i32 0, metadata !157, metadata !195}
!201 = metadata !{i32 76, i32 0, metadata !4, null}
!202 = metadata !{i32 197, i32 0, metadata !90, null}
!203 = metadata !{i32 198, i32 0, metadata !90, null}
!204 = metadata !{i32 202, i32 0, metadata !90, null}
!205 = metadata !{metadata !"int", metadata !173}
!206 = metadata !{i32 206, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !90, i32 202, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcvir.c]
!208 = metadata !{i32 207, i32 0, metadata !207, null}
!209 = metadata !{i32 211, i32 0, metadata !207, null}
!210 = metadata !{metadata !"any pointer", metadata !173}
!211 = metadata !{i32 786689, metadata !124, metadata !"g0", metadata !5, i32 50331727, metadata !14, i32 0, metadata !209} ; [ DW_TAG_arg_variable ] [g0] [line 79]
!212 = metadata !{i32 79, i32 0, metadata !124, metadata !209}
!213 = metadata !{i32 786688, metadata !124, metadata !"dvxx", metadata !5, i32 85, metadata !69, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [dvxx] [line 85]
!214 = metadata !{i32 85, i32 0, metadata !124, metadata !209}
!215 = metadata !{i32 786688, metadata !124, metadata !"dvxy", metadata !5, i32 85, metadata !69, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [dvxy] [line 85]
!216 = metadata !{i32 786688, metadata !124, metadata !"dvxz", metadata !5, i32 85, metadata !69, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [dvxz] [line 85]
!217 = metadata !{i32 786688, metadata !124, metadata !"dvyx", metadata !5, i32 85, metadata !69, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [dvyx] [line 85]
!218 = metadata !{i32 786688, metadata !124, metadata !"dvyy", metadata !5, i32 85, metadata !69, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [dvyy] [line 85]
!219 = metadata !{i32 786688, metadata !124, metadata !"dvyz", metadata !5, i32 85, metadata !69, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [dvyz] [line 85]
!220 = metadata !{i32 786688, metadata !124, metadata !"dvzx", metadata !5, i32 85, metadata !69, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [dvzx] [line 85]
!221 = metadata !{i32 786688, metadata !124, metadata !"dvzy", metadata !5, i32 85, metadata !69, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [dvzy] [line 85]
!222 = metadata !{i32 786688, metadata !124, metadata !"dvzz", metadata !5, i32 85, metadata !69, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [dvzz] [line 85]
!223 = metadata !{i32 786688, metadata !124, metadata !"gg", metadata !5, i32 83, metadata !14, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [gg] [line 83]
!224 = metadata !{i32 88, i32 0, metadata !225, metadata !209}
!225 = metadata !{i32 786443, metadata !1, metadata !226, i32 88, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcvir.c]
!226 = metadata !{i32 786443, metadata !1, metadata !124, i32 87, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcvir.c]
!227 = metadata !{i32 111, i32 0, metadata !228, metadata !209}
!228 = metadata !{i32 786443, metadata !1, metadata !229, i32 111, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcvir.c]
!229 = metadata !{i32 786443, metadata !1, metadata !124, i32 110, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcvir.c]
!230 = metadata !{i32 87, i32 0, metadata !124, metadata !209}
!231 = metadata !{i32 95, i32 0, metadata !232, metadata !209}
!232 = metadata !{i32 786443, metadata !1, metadata !225, i32 88, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcvir.c]
!233 = metadata !{i32 100, i32 0, metadata !232, metadata !209}
!234 = metadata !{i32 105, i32 0, metadata !232, metadata !209}
!235 = metadata !{i32 118, i32 0, metadata !236, metadata !209}
!236 = metadata !{i32 786443, metadata !1, metadata !228, i32 111, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcvir.c]
!237 = metadata !{i32 123, i32 0, metadata !236, metadata !209}
!238 = metadata !{i32 128, i32 0, metadata !236, metadata !209}
!239 = metadata !{i32 89, i32 0, metadata !232, metadata !209}
!240 = metadata !{i32 786688, metadata !124, metadata !"i3", metadata !5, i32 83, metadata !14, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [i3] [line 83]
!241 = metadata !{i32 90, i32 0, metadata !232, metadata !209}
!242 = metadata !{i32 786688, metadata !124, metadata !"g3", metadata !5, i32 83, metadata !14, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [g3] [line 83]
!243 = metadata !{i32 91, i32 0, metadata !232, metadata !209}
!244 = metadata !{i32 786688, metadata !124, metadata !"tx", metadata !5, i32 83, metadata !14, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [tx] [line 83]
!245 = metadata !{i32 92, i32 0, metadata !232, metadata !209}
!246 = metadata !{i32 786688, metadata !124, metadata !"ty", metadata !5, i32 83, metadata !14, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [ty] [line 83]
!247 = metadata !{i32 93, i32 0, metadata !232, metadata !209}
!248 = metadata !{i32 786688, metadata !124, metadata !"tz", metadata !5, i32 83, metadata !14, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [tz] [line 83]
!249 = metadata !{i32 786688, metadata !124, metadata !"xx", metadata !5, i32 84, metadata !69, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [xx] [line 84]
!250 = metadata !{i32 96, i32 0, metadata !232, metadata !209}
!251 = metadata !{i32 97, i32 0, metadata !232, metadata !209}
!252 = metadata !{i32 98, i32 0, metadata !232, metadata !209}
!253 = metadata !{i32 786688, metadata !124, metadata !"yy", metadata !5, i32 84, metadata !69, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [yy] [line 84]
!254 = metadata !{i32 101, i32 0, metadata !232, metadata !209}
!255 = metadata !{i32 102, i32 0, metadata !232, metadata !209}
!256 = metadata !{i32 103, i32 0, metadata !232, metadata !209}
!257 = metadata !{i32 786688, metadata !124, metadata !"zz", metadata !5, i32 84, metadata !69, i32 0, metadata !209} ; [ DW_TAG_auto_variable ] [zz] [line 84]
!258 = metadata !{i32 106, i32 0, metadata !232, metadata !209}
!259 = metadata !{i32 107, i32 0, metadata !232, metadata !209}
!260 = metadata !{i32 108, i32 0, metadata !232, metadata !209}
!261 = metadata !{i32 112, i32 0, metadata !236, metadata !209}
!262 = metadata !{i32 113, i32 0, metadata !236, metadata !209}
!263 = metadata !{i32 114, i32 0, metadata !236, metadata !209}
!264 = metadata !{i32 115, i32 0, metadata !236, metadata !209}
!265 = metadata !{i32 116, i32 0, metadata !236, metadata !209}
!266 = metadata !{i32 119, i32 0, metadata !236, metadata !209}
!267 = metadata !{i32 120, i32 0, metadata !236, metadata !209}
!268 = metadata !{i32 121, i32 0, metadata !236, metadata !209}
!269 = metadata !{i32 124, i32 0, metadata !236, metadata !209}
!270 = metadata !{i32 125, i32 0, metadata !236, metadata !209}
!271 = metadata !{i32 126, i32 0, metadata !236, metadata !209}
!272 = metadata !{i32 129, i32 0, metadata !236, metadata !209}
!273 = metadata !{i32 130, i32 0, metadata !236, metadata !209}
!274 = metadata !{i32 131, i32 0, metadata !236, metadata !209}
!275 = metadata !{i32 135, i32 0, metadata !124, metadata !209}
!276 = metadata !{i32 786689, metadata !157, metadata !"vir", metadata !5, i32 16777263, metadata !127, i32 0, metadata !275} ; [ DW_TAG_arg_variable ] [vir] [line 47]
!277 = metadata !{i32 47, i32 0, metadata !157, metadata !275}
!278 = metadata !{i32 786689, metadata !157, metadata !"dvx", metadata !5, i32 33554479, metadata !69, i32 0, metadata !275} ; [ DW_TAG_arg_variable ] [dvx] [line 47]
!279 = metadata !{i32 786689, metadata !157, metadata !"dvy", metadata !5, i32 50331695, metadata !69, i32 0, metadata !275} ; [ DW_TAG_arg_variable ] [dvy] [line 47]
!280 = metadata !{i32 786689, metadata !157, metadata !"dvz", metadata !5, i32 67108911, metadata !69, i32 0, metadata !275} ; [ DW_TAG_arg_variable ] [dvz] [line 47]
!281 = metadata !{i32 49, i32 0, metadata !157, metadata !275}
!282 = metadata !{i32 50, i32 0, metadata !157, metadata !275}
!283 = metadata !{i32 51, i32 0, metadata !157, metadata !275}
!284 = metadata !{i32 136, i32 0, metadata !124, metadata !209}
!285 = metadata !{i32 786689, metadata !157, metadata !"vir", metadata !5, i32 16777263, metadata !127, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [vir] [line 47]
!286 = metadata !{i32 47, i32 0, metadata !157, metadata !284}
!287 = metadata !{i32 786689, metadata !157, metadata !"dvx", metadata !5, i32 33554479, metadata !69, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [dvx] [line 47]
!288 = metadata !{i32 786689, metadata !157, metadata !"dvy", metadata !5, i32 50331695, metadata !69, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [dvy] [line 47]
!289 = metadata !{i32 786689, metadata !157, metadata !"dvz", metadata !5, i32 67108911, metadata !69, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [dvz] [line 47]
!290 = metadata !{i32 49, i32 0, metadata !157, metadata !284}
!291 = metadata !{i32 50, i32 0, metadata !157, metadata !284}
!292 = metadata !{i32 51, i32 0, metadata !157, metadata !284}
!293 = metadata !{i32 137, i32 0, metadata !124, metadata !209}
!294 = metadata !{i32 786689, metadata !157, metadata !"vir", metadata !5, i32 16777263, metadata !127, i32 0, metadata !293} ; [ DW_TAG_arg_variable ] [vir] [line 47]
!295 = metadata !{i32 47, i32 0, metadata !157, metadata !293}
!296 = metadata !{i32 786689, metadata !157, metadata !"dvx", metadata !5, i32 33554479, metadata !69, i32 0, metadata !293} ; [ DW_TAG_arg_variable ] [dvx] [line 47]
!297 = metadata !{i32 786689, metadata !157, metadata !"dvy", metadata !5, i32 50331695, metadata !69, i32 0, metadata !293} ; [ DW_TAG_arg_variable ] [dvy] [line 47]
!298 = metadata !{i32 786689, metadata !157, metadata !"dvz", metadata !5, i32 67108911, metadata !69, i32 0, metadata !293} ; [ DW_TAG_arg_variable ] [dvz] [line 47]
!299 = metadata !{i32 49, i32 0, metadata !157, metadata !293}
!300 = metadata !{i32 50, i32 0, metadata !157, metadata !293}
!301 = metadata !{i32 51, i32 0, metadata !157, metadata !293}
!302 = metadata !{i32 218, i32 0, metadata !207, null}
!303 = metadata !{i32 219, i32 0, metadata !207, null}
!304 = metadata !{i32 220, i32 0, metadata !207, null}
!305 = metadata !{i32 221, i32 0, metadata !207, null}
!306 = metadata !{i32 224, i32 0, metadata !90, null}
!307 = metadata !{i32 225, i32 0, metadata !90, null}
