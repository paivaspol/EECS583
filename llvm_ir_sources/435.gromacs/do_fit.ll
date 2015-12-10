; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@calc_fit_R.omega = internal unnamed_addr global double** null, align 8
@calc_fit_R.om = internal unnamed_addr global double** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"omega\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"om\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"omega[i]\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"om[i]\00", align 1
@debug = external global %struct._IO_FILE*
@.str5 = private unnamed_addr constant [8 x i8] c"IROT=0\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @calc_similar_ind(i32 %bRho, i32 %nind, i32* %index, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %xp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %bRho}, i64 0, metadata !20), !dbg !171
  tail call void @llvm.dbg.value(metadata !{i32 %nind}, i64 0, metadata !21), !dbg !171
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !22), !dbg !171
  tail call void @llvm.dbg.value(metadata !{float* %mass}, i64 0, metadata !23), !dbg !171
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !24), !dbg !172
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %xp}, i64 0, metadata !25), !dbg !172
  tail call void @llvm.dbg.value(metadata !173, i64 0, metadata !30), !dbg !174
  tail call void @llvm.dbg.value(metadata !173, i64 0, metadata !33), !dbg !175
  tail call void @llvm.dbg.value(metadata !173, i64 0, metadata !34), !dbg !176
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !27), !dbg !177
  %cmp67 = icmp sgt i32 %nind, 0, !dbg !177
  br i1 %cmp67, label %for.body.lr.ph, label %for.end32, !dbg !177

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i32* %index, null, !dbg !179
  %tobool15 = icmp eq i32 %bRho, 0, !dbg !181
  br label %for.body, !dbg !177

for.body:                                         ; preds = %for.inc30, %for.body.lr.ph
  %indvars.iv74 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next75, %for.inc30 ]
  %rd.071 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add14, %for.inc30 ]
  %rs.070 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %rs.2, %for.inc30 ]
  %tm.069 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add, %for.inc30 ]
  %0 = trunc i64 %indvars.iv74 to i32, !dbg !179
  br i1 %tobool, label %if.end, label %if.then, !dbg !179

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv74, !dbg !184
  %1 = load i32* %arrayidx, align 4, !dbg !184, !tbaa !185
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !26), !dbg !184
  br label %if.end, !dbg !184

if.end:                                           ; preds = %for.body, %if.then
  %i.0 = phi i32 [ %1, %if.then ], [ %0, %for.body ]
  %idxprom1 = sext i32 %i.0 to i64, !dbg !188
  %arrayidx2 = getelementptr inbounds float* %mass, i64 %idxprom1, !dbg !188
  %2 = load float* %arrayidx2, align 4, !dbg !188, !tbaa !189
  tail call void @llvm.dbg.value(metadata !{float %2}, i64 0, metadata !29), !dbg !188
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !30), !dbg !190
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !28), !dbg !191
  br label %for.body5, !dbg !191

for.body5:                                        ; preds = %for.inc, %if.end
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.inc ]
  %rd.166 = phi float [ %rd.071, %if.end ], [ %add14, %for.inc ]
  %rs.165 = phi float [ %rs.070, %if.end ], [ %rs.2, %for.inc ]
  %arrayidx9 = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 %indvars.iv, !dbg !192
  %3 = load float* %arrayidx9, align 4, !dbg !192, !tbaa !189
  %arrayidx13 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom1, i64 %indvars.iv, !dbg !192
  %4 = load float* %arrayidx13, align 4, !dbg !192, !tbaa !189
  %sub = fsub float %3, %4, !dbg !192
  tail call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !32), !dbg !192
  tail call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !193), !dbg !195
  %mul.i = fmul float %sub, %sub, !dbg !196
  %mul = fmul float %2, %mul.i, !dbg !194
  %add14 = fadd float %rd.166, %mul, !dbg !194
  tail call void @llvm.dbg.value(metadata !{float %add14}, i64 0, metadata !34), !dbg !194
  br i1 %tobool15, label %for.inc, label %if.then16, !dbg !181

if.then16:                                        ; preds = %for.body5
  %add25 = fadd float %3, %4, !dbg !197
  tail call void @llvm.dbg.value(metadata !{float %add25}, i64 0, metadata !31), !dbg !197
  tail call void @llvm.dbg.value(metadata !{float %add25}, i64 0, metadata !199), !dbg !201
  %mul.i63 = fmul float %add25, %add25, !dbg !202
  %mul27 = fmul float %2, %mul.i63, !dbg !200
  %add28 = fadd float %rs.165, %mul27, !dbg !200
  tail call void @llvm.dbg.value(metadata !{float %add28}, i64 0, metadata !33), !dbg !200
  br label %for.inc, !dbg !203

for.inc:                                          ; preds = %for.body5, %if.then16
  %rs.2 = phi float [ %add28, %if.then16 ], [ %rs.165, %for.body5 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !191
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !191
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !191
  br i1 %exitcond, label %for.inc30, label %for.body5, !dbg !191

for.inc30:                                        ; preds = %for.inc
  %add = fadd float %tm.069, %2, !dbg !190
  %indvars.iv.next75 = add i64 %indvars.iv74, 1, !dbg !177
  %lftr.wideiv76 = trunc i64 %indvars.iv.next75 to i32, !dbg !177
  %exitcond77 = icmp eq i32 %lftr.wideiv76, %nind, !dbg !177
  br i1 %exitcond77, label %for.end32, label %for.body, !dbg !177

for.end32:                                        ; preds = %for.inc30, %entry
  %rd.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add14, %for.inc30 ]
  %rs.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %rs.2, %for.inc30 ]
  %tm.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.inc30 ]
  %tobool33 = icmp eq i32 %bRho, 0, !dbg !204
  br i1 %tobool33, label %if.else38, label %if.then34, !dbg !204

if.then34:                                        ; preds = %for.end32
  %div = fdiv float %rd.0.lcssa, %rs.0.lcssa, !dbg !205
  %conv = fpext float %div to double, !dbg !205
  %call35 = tail call double @sqrt(double %conv) #5, !dbg !205
  %mul36 = fmul double %call35, 2.000000e+00, !dbg !205
  %conv37 = fptrunc double %mul36 to float, !dbg !205
  br label %return, !dbg !205

if.else38:                                        ; preds = %for.end32
  %div39 = fdiv float %rd.0.lcssa, %tm.0.lcssa, !dbg !206
  %conv42 = tail call float @sqrtf(float %div39) #2, !dbg !206
  br label %return, !dbg !206

return:                                           ; preds = %if.else38, %if.then34
  %retval.0 = phi float [ %conv37, %if.then34 ], [ %conv42, %if.else38 ]
  ret float %retval.0, !dbg !207
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize uwtable
define float @rmsdev_ind(i32 %nind, i32* %index, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %xp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nind}, i64 0, metadata !39), !dbg !208
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !40), !dbg !208
  tail call void @llvm.dbg.value(metadata !{float* %mass}, i64 0, metadata !41), !dbg !208
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !42), !dbg !208
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %xp}, i64 0, metadata !43), !dbg !208
  %call = tail call float @calc_similar_ind(i32 0, i32 %nind, i32* %index, float* %mass, [3 x float]* %x, [3 x float]* %xp) #6, !dbg !209
  ret float %call, !dbg !209
}

; Function Attrs: nounwind optsize uwtable
define float @rmsdev(i32 %natoms, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %xp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !48), !dbg !210
  tail call void @llvm.dbg.value(metadata !{float* %mass}, i64 0, metadata !49), !dbg !210
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !50), !dbg !210
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %xp}, i64 0, metadata !51), !dbg !210
  %call = tail call float @calc_similar_ind(i32 0, i32 %natoms, i32* null, float* %mass, [3 x float]* %x, [3 x float]* %xp) #6, !dbg !211
  ret float %call, !dbg !211
}

; Function Attrs: nounwind optsize uwtable
define float @rhodev_ind(i32 %nind, i32* %index, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %xp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nind}, i64 0, metadata !54), !dbg !212
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !55), !dbg !212
  tail call void @llvm.dbg.value(metadata !{float* %mass}, i64 0, metadata !56), !dbg !212
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !57), !dbg !212
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %xp}, i64 0, metadata !58), !dbg !212
  %call = tail call float @calc_similar_ind(i32 1, i32 %nind, i32* %index, float* %mass, [3 x float]* %x, [3 x float]* %xp) #6, !dbg !213
  ret float %call, !dbg !213
}

; Function Attrs: nounwind optsize uwtable
define float @rhodev(i32 %natoms, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %xp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !61), !dbg !214
  tail call void @llvm.dbg.value(metadata !{float* %mass}, i64 0, metadata !62), !dbg !214
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !63), !dbg !214
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %xp}, i64 0, metadata !64), !dbg !214
  %call = tail call float @calc_similar_ind(i32 1, i32 %natoms, i32* null, float* %mass, [3 x float]* %x, [3 x float]* %xp) #6, !dbg !215
  ret float %call, !dbg !215
}

; Function Attrs: nounwind optsize uwtable
define void @calc_fit_R(i32 %natoms, float* nocapture %w_rls, [3 x float]* nocapture %xp, [3 x float]* nocapture %x, [3 x float]* nocapture %R) #0 {
entry:
  %irot = alloca i32, align 4
  %d = alloca [6 x double], align 16
  %0 = bitcast [6 x double]* %d to i8*
  %vh = alloca [3 x [3 x float]], align 16
  %vk = alloca [3 x [3 x float]], align 16
  %u = alloca [3 x [3 x float]], align 16
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !70), !dbg !216
  call void @llvm.dbg.value(metadata !{float* %w_rls}, i64 0, metadata !71), !dbg !216
  call void @llvm.dbg.value(metadata !{[3 x float]* %xp}, i64 0, metadata !72), !dbg !216
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !73), !dbg !216
  call void @llvm.dbg.value(metadata !{[3 x float]* %R}, i64 0, metadata !74), !dbg !216
  call void @llvm.dbg.declare(metadata !{i32* %irot}, metadata !81), !dbg !217
  call void @llvm.lifetime.start(i64 48, i8* %0) #3, !dbg !218
  call void @llvm.dbg.declare(metadata !{[6 x double]* %d}, metadata !82), !dbg !218
  %1 = bitcast [3 x [3 x float]]* %vh to i8*, !dbg !219
  call void @llvm.lifetime.start(i64 36, i8* %1) #3, !dbg !219
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %vh}, metadata !89), !dbg !219
  %2 = bitcast [3 x [3 x float]]* %vk to i8*, !dbg !219
  call void @llvm.lifetime.start(i64 36, i8* %2) #3, !dbg !219
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %vk}, metadata !93), !dbg !219
  %3 = bitcast [3 x [3 x float]]* %u to i8*, !dbg !219
  call void @llvm.lifetime.start(i64 36, i8* %3) #3, !dbg !219
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %u}, metadata !94), !dbg !219
  %4 = load double*** @calc_fit_R.omega, align 8, !dbg !220, !tbaa !221
  %cmp = icmp eq double** %4, null, !dbg !220
  br i1 %cmp, label %if.then, label %for.cond7.preheader, !dbg !220

for.cond7.preheader.loopexit:                     ; preds = %for.body
  %.pre = load double*** @calc_fit_R.omega, align 8, !dbg !222, !tbaa !221
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond7.preheader.loopexit, %entry
  %5 = phi double** [ %.pre, %for.cond7.preheader.loopexit ], [ %4, %entry ]
  %6 = load double*** @calc_fit_R.om, align 8, !dbg !227, !tbaa !221
  br label %for.body9, !dbg !228

if.then:                                          ; preds = %entry
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 105, i32 6, i32 8) #5, !dbg !229
  %7 = bitcast i8* %call to double**, !dbg !229
  store double** %7, double*** @calc_fit_R.omega, align 8, !dbg !229, !tbaa !221
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 106, i32 6, i32 8) #5, !dbg !231
  %8 = bitcast i8* %call1 to double**, !dbg !231
  store double** %8, double*** @calc_fit_R.om, align 8, !dbg !231, !tbaa !221
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !80), !dbg !232
  br label %for.body, !dbg !232

for.body:                                         ; preds = %for.body, %if.then
  %indvars.iv383 = phi i64 [ 0, %if.then ], [ %indvars.iv.next384, %for.body ]
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 108, i32 6, i32 8) #5, !dbg !234
  %9 = bitcast i8* %call3 to double*, !dbg !234
  %10 = load double*** @calc_fit_R.omega, align 8, !dbg !234, !tbaa !221
  %arrayidx = getelementptr inbounds double** %10, i64 %indvars.iv383, !dbg !234
  store double* %9, double** %arrayidx, align 8, !dbg !234, !tbaa !221
  %call4 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 109, i32 6, i32 8) #5, !dbg !236
  %11 = bitcast i8* %call4 to double*, !dbg !236
  %12 = load double*** @calc_fit_R.om, align 8, !dbg !236, !tbaa !221
  %arrayidx6 = getelementptr inbounds double** %12, i64 %indvars.iv383, !dbg !236
  store double* %11, double** %arrayidx6, align 8, !dbg !236, !tbaa !221
  %indvars.iv.next384 = add i64 %indvars.iv383, 1, !dbg !232
  %lftr.wideiv385 = trunc i64 %indvars.iv.next384 to i32, !dbg !232
  %exitcond386 = icmp eq i32 %lftr.wideiv385, 6, !dbg !232
  br i1 %exitcond386, label %for.cond7.preheader.loopexit, label %for.body, !dbg !232

for.body9:                                        ; preds = %for.inc26, %for.cond7.preheader
  %indvars.iv379 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next380, %for.inc26 ]
  %arrayidx11 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %indvars.iv379, !dbg !237
  store double 0.000000e+00, double* %arrayidx11, align 8, !dbg !237, !tbaa !238
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !78), !dbg !239
  %arrayidx17 = getelementptr inbounds double** %5, i64 %indvars.iv379, !dbg !222
  %13 = load double** %arrayidx17, align 8, !dbg !222, !tbaa !221
  %arrayidx21 = getelementptr inbounds double** %6, i64 %indvars.iv379, !dbg !227
  %14 = load double** %arrayidx21, align 8, !dbg !227, !tbaa !221
  br label %for.body14, !dbg !239

for.body14:                                       ; preds = %for.body14, %for.body9
  %indvars.iv375 = phi i64 [ 0, %for.body9 ], [ %indvars.iv.next376, %for.body14 ]
  %arrayidx18 = getelementptr inbounds double* %13, i64 %indvars.iv375, !dbg !222
  store double 0.000000e+00, double* %arrayidx18, align 8, !dbg !222, !tbaa !238
  %arrayidx22 = getelementptr inbounds double* %14, i64 %indvars.iv375, !dbg !227
  store double 0.000000e+00, double* %arrayidx22, align 8, !dbg !227, !tbaa !238
  %indvars.iv.next376 = add i64 %indvars.iv375, 1, !dbg !239
  %lftr.wideiv377 = trunc i64 %indvars.iv.next376 to i32, !dbg !239
  %exitcond378 = icmp eq i32 %lftr.wideiv377, 6, !dbg !239
  br i1 %exitcond378, label %for.inc26, label %for.body14, !dbg !239

for.inc26:                                        ; preds = %for.body14
  %indvars.iv.next380 = add i64 %indvars.iv379, 1, !dbg !228
  %lftr.wideiv381 = trunc i64 %indvars.iv.next380 to i32, !dbg !228
  %exitcond382 = icmp eq i32 %lftr.wideiv381, 6, !dbg !228
  br i1 %exitcond382, label %for.end28, label %for.body9, !dbg !228

for.end28:                                        ; preds = %for.inc26
  call void @llvm.dbg.value(metadata !173, i64 0, metadata !240) #3, !dbg !242
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 36, i32 16, i1 false) #3, !dbg !243
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !77), !dbg !244
  %cmp30330 = icmp sgt i32 %natoms, 0, !dbg !244
  br i1 %cmp30330, label %for.body31, label %for.body81.lr.ph, !dbg !244

for.body31:                                       ; preds = %for.end28, %for.inc71
  %indvars.iv371 = phi i64 [ %indvars.iv.next372, %for.inc71 ], [ 0, %for.end28 ]
  %arrayidx33 = getelementptr inbounds float* %w_rls, i64 %indvars.iv371, !dbg !246
  %15 = load float* %arrayidx33, align 4, !dbg !246, !tbaa !189
  call void @llvm.dbg.value(metadata !{float %15}, i64 0, metadata !95), !dbg !246
  %conv = fpext float %15 to double, !dbg !246
  %fabsf = call float @fabsf(float %15) #7, !dbg !246
  %16 = fpext float %fabsf to double, !dbg !246
  %cmp35 = fcmp ogt double %16, 1.200000e-38, !dbg !246
  br i1 %cmp35, label %for.body41, label %for.inc71, !dbg !246

for.body41:                                       ; preds = %for.body31, %for.inc67
  %indvars.iv367 = phi i64 [ %indvars.iv.next368, %for.inc67 ], [ 0, %for.body31 ]
  %arrayidx45 = getelementptr inbounds [3 x float]* %xp, i64 %indvars.iv371, i64 %indvars.iv367, !dbg !247
  %17 = load float* %arrayidx45, align 4, !dbg !247, !tbaa !189
  %conv46 = fpext float %17 to double, !dbg !247
  call void @llvm.dbg.value(metadata !{double %conv46}, i64 0, metadata !88), !dbg !247
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !76), !dbg !250
  br label %for.body50, !dbg !250

for.body50:                                       ; preds = %for.body50, %for.body41
  %indvars.iv363 = phi i64 [ 0, %for.body41 ], [ %indvars.iv.next364, %for.body50 ]
  %arrayidx54 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv371, i64 %indvars.iv363, !dbg !252
  %18 = load float* %arrayidx54, align 4, !dbg !252, !tbaa !189
  %conv55 = fpext float %18 to double, !dbg !252
  call void @llvm.dbg.value(metadata !{double %conv55}, i64 0, metadata !87), !dbg !252
  %mul = fmul double %conv, %conv55, !dbg !254
  %mul57 = fmul double %conv46, %mul, !dbg !254
  %arrayidx61 = getelementptr inbounds [3 x [3 x float]]* %u, i64 0, i64 %indvars.iv367, i64 %indvars.iv363, !dbg !254
  %19 = load float* %arrayidx61, align 4, !dbg !254, !tbaa !189
  %conv62 = fpext float %19 to double, !dbg !254
  %add = fadd double %conv62, %mul57, !dbg !254
  %conv63 = fptrunc double %add to float, !dbg !254
  store float %conv63, float* %arrayidx61, align 4, !dbg !254, !tbaa !189
  %indvars.iv.next364 = add i64 %indvars.iv363, 1, !dbg !250
  %lftr.wideiv365 = trunc i64 %indvars.iv.next364 to i32, !dbg !250
  %exitcond366 = icmp eq i32 %lftr.wideiv365, 3, !dbg !250
  br i1 %exitcond366, label %for.inc67, label %for.body50, !dbg !250

for.inc67:                                        ; preds = %for.body50
  %indvars.iv.next368 = add i64 %indvars.iv367, 1, !dbg !255
  %lftr.wideiv369 = trunc i64 %indvars.iv.next368 to i32, !dbg !255
  %exitcond370 = icmp eq i32 %lftr.wideiv369, 3, !dbg !255
  br i1 %exitcond370, label %for.inc71, label %for.body41, !dbg !255

for.inc71:                                        ; preds = %for.inc67, %for.body31
  %indvars.iv.next372 = add i64 %indvars.iv371, 1, !dbg !244
  %lftr.wideiv373 = trunc i64 %indvars.iv.next372 to i32, !dbg !244
  %exitcond374 = icmp eq i32 %lftr.wideiv373, %natoms, !dbg !244
  br i1 %exitcond374, label %for.body81.lr.ph, label %for.body31, !dbg !244

for.body81.lr.ph:                                 ; preds = %for.inc118, %for.inc71, %for.end28
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %for.inc118 ], [ 0, %for.inc71 ], [ 0, %for.end28 ]
  %indvars.iv354 = phi i32 [ %indvars.iv.next355, %for.inc118 ], [ 1, %for.inc71 ], [ 1, %for.end28 ], !dbg !256
  %20 = trunc i64 %indvars.iv358 to i32, !dbg !259
  %cmp82 = icmp sgt i32 %20, 2, !dbg !259
  %21 = add nsw i64 %indvars.iv358, -3, !dbg !260
  %arrayidx94 = getelementptr inbounds double** %5, i64 %indvars.iv358, !dbg !260
  br label %for.body81, !dbg !256

for.body81:                                       ; preds = %for.inc115, %for.body81.lr.ph
  %indvars.iv352 = phi i64 [ %indvars.iv.next353, %for.inc115 ], [ 0, %for.body81.lr.ph ]
  %22 = trunc i64 %indvars.iv352 to i32, !dbg !259
  %cmp84 = icmp slt i32 %22, 3, !dbg !259
  %or.cond = and i1 %cmp82, %cmp84, !dbg !259
  br i1 %or.cond, label %if.then86, label %if.else, !dbg !259

if.then86:                                        ; preds = %for.body81
  %arrayidx90 = getelementptr inbounds [3 x [3 x float]]* %u, i64 0, i64 %21, i64 %indvars.iv352, !dbg !260
  %23 = load float* %arrayidx90, align 4, !dbg !260, !tbaa !189
  %conv91 = fpext float %23 to double, !dbg !260
  %24 = load double** %arrayidx94, align 8, !dbg !260, !tbaa !221
  %arrayidx95 = getelementptr inbounds double* %24, i64 %indvars.iv352, !dbg !260
  store double %conv91, double* %arrayidx95, align 8, !dbg !260, !tbaa !238
  %arrayidx104 = getelementptr inbounds double** %5, i64 %indvars.iv352, !dbg !262
  %25 = load double** %arrayidx104, align 8, !dbg !262, !tbaa !221
  %arrayidx105 = getelementptr inbounds double* %25, i64 %indvars.iv358, !dbg !262
  store double %conv91, double* %arrayidx105, align 8, !dbg !262, !tbaa !238
  br label %for.inc115, !dbg !263

if.else:                                          ; preds = %for.body81
  %26 = load double** %arrayidx94, align 8, !dbg !264, !tbaa !221
  %arrayidx109 = getelementptr inbounds double* %26, i64 %indvars.iv352, !dbg !264
  store double 0.000000e+00, double* %arrayidx109, align 8, !dbg !264, !tbaa !238
  %arrayidx112 = getelementptr inbounds double** %5, i64 %indvars.iv352, !dbg !266
  %27 = load double** %arrayidx112, align 8, !dbg !266, !tbaa !221
  %arrayidx113 = getelementptr inbounds double* %27, i64 %indvars.iv358, !dbg !266
  store double 0.000000e+00, double* %arrayidx113, align 8, !dbg !266, !tbaa !238
  br label %for.inc115

for.inc115:                                       ; preds = %if.then86, %if.else
  %indvars.iv.next353 = add i64 %indvars.iv352, 1, !dbg !256
  %lftr.wideiv356 = trunc i64 %indvars.iv.next353 to i32, !dbg !256
  %exitcond357 = icmp eq i32 %lftr.wideiv356, %indvars.iv354, !dbg !256
  br i1 %exitcond357, label %for.inc118, label %for.body81, !dbg !256

for.inc118:                                       ; preds = %for.inc115
  %indvars.iv.next359 = add i64 %indvars.iv358, 1, !dbg !267
  %indvars.iv.next355 = add i32 %indvars.iv354, 1, !dbg !267
  %lftr.wideiv361 = trunc i64 %indvars.iv.next359 to i32, !dbg !267
  %exitcond362 = icmp eq i32 %lftr.wideiv361, 6, !dbg !267
  br i1 %exitcond362, label %for.end120, label %for.body81.lr.ph, !dbg !267

for.end120:                                       ; preds = %for.inc118
  %arraydecay121 = getelementptr inbounds [6 x double]* %d, i64 0, i64 0, !dbg !268
  call void @jacobi(double** %5, i32 6, double* %arraydecay121, double** %6, i32* %irot) #5, !dbg !268
  %28 = load %struct._IO_FILE** @debug, align 8, !dbg !269, !tbaa !221
  %tobool = icmp eq %struct._IO_FILE* %28, null, !dbg !269
  br i1 %tobool, label %for.cond128.preheader, label %land.lhs.true122, !dbg !269

land.lhs.true122:                                 ; preds = %for.end120
  call void @llvm.dbg.value(metadata !{i32* %irot}, i64 0, metadata !81), !dbg !269
  %29 = load i32* %irot, align 4, !dbg !269, !tbaa !185
  %cmp123 = icmp eq i32 %29, 0, !dbg !269
  br i1 %cmp123, label %if.then125, label %for.cond128.preheader, !dbg !269

if.then125:                                       ; preds = %land.lhs.true122
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %28), !dbg !269
  br label %for.cond128.preheader, !dbg !269

for.cond128.preheader:                            ; preds = %for.end120, %if.then125, %land.lhs.true122
  %31 = load double*** @calc_fit_R.om, align 8, !dbg !270, !tbaa !221
  br label %for.cond132.preheader, !dbg !275

for.cond132.preheader:                            ; preds = %for.inc179, %for.cond128.preheader
  %indvars.iv348 = phi i64 [ 0, %for.cond128.preheader ], [ %indvars.iv.next349, %for.inc179 ]
  %index.0324 = phi i32 [ 0, %for.cond128.preheader ], [ %index.2, %for.inc179 ]
  br label %for.body135, !dbg !276

for.body135:                                      ; preds = %for.inc146, %for.cond132.preheader
  %indvars.iv339 = phi i64 [ 0, %for.cond132.preheader ], [ %indvars.iv.next340, %for.inc146 ]
  %max_d.0321 = phi float [ -1.000000e+03, %for.cond132.preheader ], [ %max_d.1, %for.inc146 ]
  %index.1320 = phi i32 [ %index.0324, %for.cond132.preheader ], [ %index.2, %for.inc146 ]
  %arrayidx137 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %indvars.iv339, !dbg !278
  %32 = load double* %arrayidx137, align 8, !dbg !278, !tbaa !238
  %conv138 = fpext float %max_d.0321 to double, !dbg !278
  %cmp139 = fcmp ogt double %32, %conv138, !dbg !278
  br i1 %cmp139, label %if.then141, label %for.inc146, !dbg !278

if.then141:                                       ; preds = %for.body135
  %conv144 = fptrunc double %32 to float, !dbg !279
  call void @llvm.dbg.value(metadata !{float %conv144}, i64 0, metadata !97), !dbg !279
  call void @llvm.dbg.value(metadata !281, i64 0, metadata !96), !dbg !282
  %33 = trunc i64 %indvars.iv339 to i32, !dbg !283
  br label %for.inc146, !dbg !283

for.inc146:                                       ; preds = %for.body135, %if.then141
  %index.2 = phi i32 [ %33, %if.then141 ], [ %index.1320, %for.body135 ]
  %max_d.1 = phi float [ %conv144, %if.then141 ], [ %max_d.0321, %for.body135 ]
  %indvars.iv.next340 = add i64 %indvars.iv339, 1, !dbg !276
  %lftr.wideiv341 = trunc i64 %indvars.iv.next340 to i32, !dbg !276
  %exitcond342 = icmp eq i32 %lftr.wideiv341, 6, !dbg !276
  br i1 %exitcond342, label %for.end148, label %for.body135, !dbg !276

for.end148:                                       ; preds = %for.inc146
  %idxprom149 = sext i32 %index.2 to i64, !dbg !284
  %arrayidx150 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %idxprom149, !dbg !284
  store double -1.000000e+04, double* %arrayidx150, align 8, !dbg !284, !tbaa !238
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !80), !dbg !285
  br label %for.body154, !dbg !285

for.body154:                                      ; preds = %for.body154, %for.end148
  %indvars.iv343 = phi i64 [ 0, %for.end148 ], [ %indvars.iv.next344, %for.body154 ]
  %arrayidx157 = getelementptr inbounds double** %31, i64 %indvars.iv343, !dbg !270
  %34 = load double** %arrayidx157, align 8, !dbg !270, !tbaa !221
  %arrayidx158 = getelementptr inbounds double* %34, i64 %idxprom149, !dbg !270
  %35 = load double* %arrayidx158, align 8, !dbg !270, !tbaa !238
  %mul159 = fmul double %35, 0x3FF6A09E667F3BCD, !dbg !270
  %conv160 = fptrunc double %mul159 to float, !dbg !270
  %arrayidx164 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 %indvars.iv348, i64 %indvars.iv343, !dbg !270
  store float %conv160, float* %arrayidx164, align 4, !dbg !270, !tbaa !189
  %36 = add nsw i64 %indvars.iv343, 3, !dbg !286
  %arrayidx168 = getelementptr inbounds double** %31, i64 %36, !dbg !286
  %37 = load double** %arrayidx168, align 8, !dbg !286, !tbaa !221
  %arrayidx169 = getelementptr inbounds double* %37, i64 %idxprom149, !dbg !286
  %38 = load double* %arrayidx169, align 8, !dbg !286, !tbaa !238
  %mul170 = fmul double %38, 0x3FF6A09E667F3BCD, !dbg !286
  %conv171 = fptrunc double %mul170 to float, !dbg !286
  %arrayidx175 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 %indvars.iv348, i64 %indvars.iv343, !dbg !286
  store float %conv171, float* %arrayidx175, align 4, !dbg !286, !tbaa !189
  %indvars.iv.next344 = add i64 %indvars.iv343, 1, !dbg !285
  %lftr.wideiv346 = trunc i64 %indvars.iv.next344 to i32, !dbg !285
  %exitcond347 = icmp eq i32 %lftr.wideiv346, 3, !dbg !285
  br i1 %exitcond347, label %for.inc179, label %for.body154, !dbg !285

for.inc179:                                       ; preds = %for.body154
  %indvars.iv.next349 = add i64 %indvars.iv348, 1, !dbg !275
  %lftr.wideiv350 = trunc i64 %indvars.iv.next349 to i32, !dbg !275
  %exitcond351 = icmp eq i32 %lftr.wideiv350, 2, !dbg !275
  br i1 %exitcond351, label %for.end181, label %for.cond132.preheader, !dbg !275

for.end181:                                       ; preds = %for.inc179
  %arraydecay183 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 0, !dbg !287
  %arraydecay185 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 0, !dbg !287
  %arraydecay187 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 0, !dbg !287
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay183}, i64 0, metadata !288), !dbg !289
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay185}, i64 0, metadata !290), !dbg !289
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay187}, i64 0, metadata !291), !dbg !289
  %arrayidx.i302 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 1, !dbg !292
  %39 = load float* %arrayidx.i302, align 4, !dbg !292, !tbaa !189
  %arrayidx1.i303 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 2, !dbg !292
  %40 = load float* %arrayidx1.i303, align 4, !dbg !292, !tbaa !189
  %mul.i304 = fmul float %39, %40, !dbg !292
  %arrayidx2.i305 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 2, !dbg !292
  %41 = load float* %arrayidx2.i305, align 8, !dbg !292, !tbaa !189
  %arrayidx3.i306 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 1, !dbg !292
  %42 = load float* %arrayidx3.i306, align 4, !dbg !292, !tbaa !189
  %mul4.i307 = fmul float %41, %42, !dbg !292
  %sub.i308 = fsub float %mul.i304, %mul4.i307, !dbg !292
  store float %sub.i308, float* %arraydecay187, align 8, !dbg !292, !tbaa !189
  %43 = load float* %arraydecay185, align 4, !dbg !293, !tbaa !189
  %mul8.i309 = fmul float %41, %43, !dbg !293
  %44 = load float* %arraydecay183, align 16, !dbg !293, !tbaa !189
  %mul11.i310 = fmul float %44, %40, !dbg !293
  %sub12.i311 = fsub float %mul8.i309, %mul11.i310, !dbg !293
  %arrayidx13.i312 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 1, !dbg !293
  store float %sub12.i311, float* %arrayidx13.i312, align 4, !dbg !293, !tbaa !189
  %mul16.i313 = fmul float %44, %42, !dbg !294
  %mul19.i314 = fmul float %39, %43, !dbg !294
  %sub20.i315 = fsub float %mul16.i313, %mul19.i314, !dbg !294
  %arrayidx21.i316 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 2, !dbg !294
  store float %sub20.i315, float* %arrayidx21.i316, align 8, !dbg !294, !tbaa !189
  %arraydecay189 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 0, !dbg !295
  %arraydecay191 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 0, !dbg !295
  %arraydecay193 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 0, !dbg !295
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay189}, i64 0, metadata !296), !dbg !297
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay191}, i64 0, metadata !298), !dbg !297
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay193}, i64 0, metadata !299), !dbg !297
  %arrayidx.i = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 1, !dbg !300
  %45 = load float* %arrayidx.i, align 4, !dbg !300, !tbaa !189
  %arrayidx1.i = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 2, !dbg !300
  %46 = load float* %arrayidx1.i, align 4, !dbg !300, !tbaa !189
  %mul.i = fmul float %45, %46, !dbg !300
  %arrayidx2.i = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 2, !dbg !300
  %47 = load float* %arrayidx2.i, align 8, !dbg !300, !tbaa !189
  %arrayidx3.i = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 1, !dbg !300
  %48 = load float* %arrayidx3.i, align 4, !dbg !300, !tbaa !189
  %mul4.i = fmul float %47, %48, !dbg !300
  %sub.i = fsub float %mul.i, %mul4.i, !dbg !300
  store float %sub.i, float* %arraydecay193, align 8, !dbg !300, !tbaa !189
  %49 = load float* %arraydecay191, align 4, !dbg !301, !tbaa !189
  %mul8.i = fmul float %47, %49, !dbg !301
  %50 = load float* %arraydecay189, align 16, !dbg !301, !tbaa !189
  %mul11.i = fmul float %50, %46, !dbg !301
  %sub12.i = fsub float %mul8.i, %mul11.i, !dbg !301
  %arrayidx13.i = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 1, !dbg !301
  store float %sub12.i, float* %arrayidx13.i, align 4, !dbg !301, !tbaa !189
  %mul16.i = fmul float %50, %48, !dbg !302
  %mul19.i = fmul float %45, %49, !dbg !302
  %sub20.i = fsub float %mul16.i, %mul19.i, !dbg !302
  %arrayidx21.i = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 2, !dbg !302
  store float %sub20.i, float* %arrayidx21.i, align 8, !dbg !302, !tbaa !189
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !76), !dbg !303
  br label %for.cond198.preheader, !dbg !303

for.cond198.preheader:                            ; preds = %for.inc232.for.cond198.preheader_crit_edge, %for.end181
  %51 = phi float [ %sub.i, %for.end181 ], [ %.pre389, %for.inc232.for.cond198.preheader_crit_edge ]
  %52 = phi float [ %49, %for.end181 ], [ %.pre388, %for.inc232.for.cond198.preheader_crit_edge ]
  %53 = phi float [ %50, %for.end181 ], [ %.pre387, %for.inc232.for.cond198.preheader_crit_edge ]
  %indvars.iv335 = phi i64 [ 0, %for.end181 ], [ %indvars.iv.next336, %for.inc232.for.cond198.preheader_crit_edge ]
  br label %for.body201, !dbg !305

for.body201:                                      ; preds = %for.body201, %for.cond198.preheader
  %indvars.iv = phi i64 [ 0, %for.cond198.preheader ], [ %indvars.iv.next, %for.body201 ]
  %arrayidx207 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 %indvars.iv, !dbg !307
  %54 = load float* %arrayidx207, align 4, !dbg !307, !tbaa !189
  %mul208 = fmul float %53, %54, !dbg !307
  %arrayidx214 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 %indvars.iv, !dbg !307
  %55 = load float* %arrayidx214, align 4, !dbg !307, !tbaa !189
  %mul215 = fmul float %52, %55, !dbg !307
  %add216 = fadd float %mul208, %mul215, !dbg !307
  %arrayidx222 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 %indvars.iv, !dbg !307
  %56 = load float* %arrayidx222, align 4, !dbg !307, !tbaa !189
  %mul223 = fmul float %51, %56, !dbg !307
  %add224 = fadd float %add216, %mul223, !dbg !307
  %arrayidx228 = getelementptr inbounds [3 x float]* %R, i64 %indvars.iv335, i64 %indvars.iv, !dbg !307
  store float %add224, float* %arrayidx228, align 4, !dbg !307, !tbaa !189
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !305
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !305
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !305
  br i1 %exitcond, label %for.inc232, label %for.body201, !dbg !305

for.inc232:                                       ; preds = %for.body201
  %indvars.iv.next336 = add i64 %indvars.iv335, 1, !dbg !303
  %lftr.wideiv337 = trunc i64 %indvars.iv.next336 to i32, !dbg !303
  %exitcond338 = icmp eq i32 %lftr.wideiv337, 3, !dbg !303
  br i1 %exitcond338, label %for.end234, label %for.inc232.for.cond198.preheader_crit_edge, !dbg !303

for.inc232.for.cond198.preheader_crit_edge:       ; preds = %for.inc232
  %arrayidx204.phi.trans.insert = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 %indvars.iv.next336
  %.pre387 = load float* %arrayidx204.phi.trans.insert, align 4, !dbg !307, !tbaa !189
  %arrayidx211.phi.trans.insert = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 %indvars.iv.next336
  %.pre388 = load float* %arrayidx211.phi.trans.insert, align 4, !dbg !307, !tbaa !189
  %arrayidx219.phi.trans.insert = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 %indvars.iv.next336
  %.pre389 = load float* %arrayidx219.phi.trans.insert, align 4, !dbg !307, !tbaa !189
  br label %for.cond198.preheader, !dbg !303

for.end234:                                       ; preds = %for.inc232
  call void @llvm.lifetime.end(i64 36, i8* %3) #3, !dbg !308
  call void @llvm.lifetime.end(i64 36, i8* %2) #3, !dbg !308
  call void @llvm.lifetime.end(i64 36, i8* %1) #3, !dbg !308
  call void @llvm.lifetime.end(i64 48, i8* %0) #3, !dbg !308
  ret void, !dbg !308
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #4

; Function Attrs: optsize
declare void @jacobi(double**, i32, double*, double**, i32*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @do_fit(i32 %natoms, float* nocapture %w_rls, [3 x float]* nocapture %xp, [3 x float]* nocapture %x) #0 {
entry:
  %R = alloca [3 x [3 x float]], align 16
  %x_old = alloca [3 x float], align 4
  %x_old60 = bitcast [3 x float]* %x_old to i8*
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !102), !dbg !309
  call void @llvm.dbg.value(metadata !{float* %w_rls}, i64 0, metadata !103), !dbg !309
  call void @llvm.dbg.value(metadata !{[3 x float]* %xp}, i64 0, metadata !104), !dbg !309
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !105), !dbg !309
  %0 = bitcast [3 x [3 x float]]* %R to i8*, !dbg !310
  call void @llvm.lifetime.start(i64 36, i8* %0) #3, !dbg !310
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %R}, metadata !111), !dbg !310
  call void @llvm.dbg.declare(metadata !{[3 x float]* %x_old}, metadata !112), !dbg !311
  %arraydecay = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 0, !dbg !312
  call void @calc_fit_R(i32 %natoms, float* %w_rls, [3 x float]* %xp, [3 x float]* %x, [3 x float]* %arraydecay) #6, !dbg !312
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !107), !dbg !313
  %cmp58 = icmp sgt i32 %natoms, 0, !dbg !313
  br i1 %cmp58, label %for.cond1.preheader, label %for.end36, !dbg !313

for.cond1.preheader:                              ; preds = %entry, %for.inc34
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.inc34 ], [ 0, %entry ]
  %scevgep = getelementptr [3 x float]* %x, i64 %indvars.iv68, i64 0
  %scevgep61 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x_old60, i8* %scevgep61, i64 12, i32 4, i1 false), !dbg !315
  br label %for.body10, !dbg !318

for.body10:                                       ; preds = %for.inc31, %for.cond1.preheader
  %indvars.iv62 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next63, %for.inc31 ]
  %arrayidx14 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv68, i64 %indvars.iv62, !dbg !320
  store float 0.000000e+00, float* %arrayidx14, align 4, !dbg !320, !tbaa !189
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !110), !dbg !322
  br label %for.body17, !dbg !322

for.body17:                                       ; preds = %for.body17, %for.body10
  %indvars.iv = phi i64 [ 0, %for.body10 ], [ %indvars.iv.next, %for.body17 ]
  %1 = phi float [ 0.000000e+00, %for.body10 ], [ %add, %for.body17 ], !dbg !324
  %arrayidx21 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 %indvars.iv62, i64 %indvars.iv, !dbg !324
  %2 = load float* %arrayidx21, align 4, !dbg !324, !tbaa !189
  %arrayidx23 = getelementptr inbounds [3 x float]* %x_old, i64 0, i64 %indvars.iv, !dbg !324
  %3 = load float* %arrayidx23, align 4, !dbg !324, !tbaa !189
  %mul = fmul float %2, %3, !dbg !324
  %add = fadd float %1, %mul, !dbg !324
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !322
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !322
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !322
  br i1 %exitcond, label %for.inc31, label %for.body17, !dbg !322

for.inc31:                                        ; preds = %for.body17
  store float %add, float* %arrayidx14, align 4, !dbg !324, !tbaa !189
  %indvars.iv.next63 = add i64 %indvars.iv62, 1, !dbg !318
  %lftr.wideiv64 = trunc i64 %indvars.iv.next63 to i32, !dbg !318
  %exitcond65 = icmp eq i32 %lftr.wideiv64, 3, !dbg !318
  br i1 %exitcond65, label %for.inc34, label %for.body10, !dbg !318

for.inc34:                                        ; preds = %for.inc31
  %indvars.iv.next69 = add i64 %indvars.iv68, 1, !dbg !313
  %lftr.wideiv70 = trunc i64 %indvars.iv.next69 to i32, !dbg !313
  %exitcond71 = icmp eq i32 %lftr.wideiv70, %natoms, !dbg !313
  br i1 %exitcond71, label %for.end36, label %for.cond1.preheader, !dbg !313

for.end36:                                        ; preds = %for.inc34, %entry
  call void @llvm.lifetime.end(i64 36, i8* %0) #3, !dbg !325
  ret void, !dbg !325
}

; Function Attrs: nounwind optsize uwtable
define void @reset_x(i32 %ncm, i32* nocapture %ind_cm, i32 %nreset, i32* %ind_reset, [3 x float]* nocapture %x, float* nocapture %mass) #0 {
entry:
  %xcm = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{i32 %ncm}, i64 0, metadata !117), !dbg !326
  call void @llvm.dbg.value(metadata !{i32* %ind_cm}, i64 0, metadata !118), !dbg !326
  call void @llvm.dbg.value(metadata !{i32 %nreset}, i64 0, metadata !119), !dbg !327
  call void @llvm.dbg.value(metadata !{i32* %ind_reset}, i64 0, metadata !120), !dbg !327
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !121), !dbg !327
  call void @llvm.dbg.value(metadata !{float* %mass}, i64 0, metadata !122), !dbg !327
  call void @llvm.dbg.declare(metadata !{[3 x float]* %xcm}, metadata !126), !dbg !328
  call void @llvm.dbg.value(metadata !173, i64 0, metadata !127), !dbg !329
  %arraydecay = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 0, !dbg !330
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !331), !dbg !332
  store float 0.000000e+00, float* %arraydecay, align 4, !dbg !333, !tbaa !189
  %arrayidx1.i = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 1, !dbg !334
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !dbg !334, !tbaa !189
  %arrayidx2.i = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 2, !dbg !335
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !dbg !335, !tbaa !189
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !123), !dbg !336
  %cmp81 = icmp sgt i32 %ncm, 0, !dbg !336
  br i1 %cmp81, label %for.body, label %for.cond16.preheader, !dbg !336

for.cond16.preheader:                             ; preds = %for.end, %entry
  %tm.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add12, %for.end ]
  br label %for.body18, !dbg !338

for.body:                                         ; preds = %entry, %for.end
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.end ], [ 0, %entry ]
  %tm.082 = phi float [ %add12, %for.end ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds i32* %ind_cm, i64 %indvars.iv96, !dbg !340
  %0 = load i32* %arrayidx, align 4, !dbg !340, !tbaa !185
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !125), !dbg !340
  %idxprom1 = sext i32 %0 to i64, !dbg !342
  %arrayidx2 = getelementptr inbounds float* %mass, i64 %idxprom1, !dbg !342
  %1 = load float* %arrayidx2, align 4, !dbg !342, !tbaa !189
  call void @llvm.dbg.value(metadata !{float %1}, i64 0, metadata !128), !dbg !342
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !124), !dbg !343
  br label %for.body5, !dbg !343

for.body5:                                        ; preds = %for.body5, %for.body
  %indvars.iv92 = phi i64 [ 0, %for.body ], [ %indvars.iv.next93, %for.body5 ]
  %arrayidx9 = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 %indvars.iv92, !dbg !345
  %2 = load float* %arrayidx9, align 4, !dbg !345, !tbaa !189
  %mul = fmul float %1, %2, !dbg !345
  %arrayidx11 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 %indvars.iv92, !dbg !345
  %3 = load float* %arrayidx11, align 4, !dbg !345, !tbaa !189
  %add = fadd float %3, %mul, !dbg !345
  store float %add, float* %arrayidx11, align 4, !dbg !345, !tbaa !189
  %indvars.iv.next93 = add i64 %indvars.iv92, 1, !dbg !343
  %lftr.wideiv94 = trunc i64 %indvars.iv.next93 to i32, !dbg !343
  %exitcond95 = icmp eq i32 %lftr.wideiv94, 3, !dbg !343
  br i1 %exitcond95, label %for.end, label %for.body5, !dbg !343

for.end:                                          ; preds = %for.body5
  %add12 = fadd float %tm.082, %1, !dbg !346
  call void @llvm.dbg.value(metadata !{float %add12}, i64 0, metadata !127), !dbg !346
  %indvars.iv.next97 = add i64 %indvars.iv96, 1, !dbg !336
  %lftr.wideiv98 = trunc i64 %indvars.iv.next97 to i32, !dbg !336
  %exitcond99 = icmp eq i32 %lftr.wideiv98, %ncm, !dbg !336
  br i1 %exitcond99, label %for.cond16.preheader, label %for.body, !dbg !336

for.body18:                                       ; preds = %for.body18, %for.cond16.preheader
  %indvars.iv88 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next89, %for.body18 ]
  %arrayidx20 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 %indvars.iv88, !dbg !347
  %4 = load float* %arrayidx20, align 4, !dbg !347, !tbaa !189
  %div = fdiv float %4, %tm.0.lcssa, !dbg !347
  store float %div, float* %arrayidx20, align 4, !dbg !347, !tbaa !189
  %indvars.iv.next89 = add i64 %indvars.iv88, 1, !dbg !338
  %lftr.wideiv90 = trunc i64 %indvars.iv.next89 to i32, !dbg !338
  %exitcond91 = icmp eq i32 %lftr.wideiv90, 3, !dbg !338
  br i1 %exitcond91, label %for.end23, label %for.body18, !dbg !338

for.end23:                                        ; preds = %for.body18
  %tobool = icmp eq i32* %ind_reset, null, !dbg !348
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !123), !dbg !349
  %cmp3774 = icmp sgt i32 %nreset, 0, !dbg !351
  br i1 %tobool, label %for.cond36.preheader, label %for.cond24.preheader, !dbg !348

for.cond24.preheader:                             ; preds = %for.end23
  br i1 %cmp3774, label %for.body26.lr.ph, label %if.end, !dbg !349

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %5 = load float* %arraydecay, align 4, !dbg !353, !tbaa !189
  %6 = load float* %arrayidx1.i, align 4, !dbg !355, !tbaa !189
  %7 = load float* %arrayidx2.i, align 4, !dbg !356, !tbaa !189
  br label %for.body26, !dbg !349

for.cond36.preheader:                             ; preds = %for.end23
  br i1 %cmp3774, label %for.body38.lr.ph, label %if.end, !dbg !351

for.body38.lr.ph:                                 ; preds = %for.cond36.preheader
  %8 = load float* %arraydecay, align 4, !dbg !357, !tbaa !189
  %9 = load float* %arrayidx1.i, align 4, !dbg !359, !tbaa !189
  %10 = load float* %arrayidx2.i, align 4, !dbg !360, !tbaa !189
  br label %for.body38, !dbg !351

for.body26:                                       ; preds = %for.body26, %for.body26.lr.ph
  %indvars.iv84 = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next85, %for.body26 ]
  %arrayidx28 = getelementptr inbounds i32* %ind_reset, i64 %indvars.iv84, !dbg !354
  %11 = load i32* %arrayidx28, align 4, !dbg !354, !tbaa !185
  %idxprom29 = sext i32 %11 to i64, !dbg !354
  %arraydecay31 = getelementptr inbounds [3 x float]* %x, i64 %idxprom29, i64 0, !dbg !354
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay31}, i64 0, metadata !361), !dbg !362
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !363), !dbg !362
  %12 = load float* %arraydecay31, align 4, !dbg !353, !tbaa !189
  %sub.i67 = fsub float %12, %5, !dbg !353
  tail call void @llvm.dbg.value(metadata !{float %sub.i67}, i64 0, metadata !364), !dbg !353
  %arrayidx2.i68 = getelementptr inbounds [3 x float]* %x, i64 %idxprom29, i64 1, !dbg !355
  %13 = load float* %arrayidx2.i68, align 4, !dbg !355, !tbaa !189
  %sub4.i70 = fsub float %13, %6, !dbg !355
  tail call void @llvm.dbg.value(metadata !{float %sub4.i70}, i64 0, metadata !365), !dbg !355
  %arrayidx5.i71 = getelementptr inbounds [3 x float]* %x, i64 %idxprom29, i64 2, !dbg !356
  %14 = load float* %arrayidx5.i71, align 4, !dbg !356, !tbaa !189
  %sub7.i73 = fsub float %14, %7, !dbg !356
  tail call void @llvm.dbg.value(metadata !{float %sub7.i73}, i64 0, metadata !366), !dbg !356
  store float %sub.i67, float* %arraydecay31, align 4, !dbg !367, !tbaa !189
  store float %sub4.i70, float* %arrayidx2.i68, align 4, !dbg !368, !tbaa !189
  store float %sub7.i73, float* %arrayidx5.i71, align 4, !dbg !369, !tbaa !189
  %indvars.iv.next85 = add i64 %indvars.iv84, 1, !dbg !349
  %lftr.wideiv86 = trunc i64 %indvars.iv.next85 to i32, !dbg !349
  %exitcond87 = icmp eq i32 %lftr.wideiv86, %nreset, !dbg !349
  br i1 %exitcond87, label %if.end, label %for.body26, !dbg !349

for.body38:                                       ; preds = %for.body38, %for.body38.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body38.lr.ph ], [ %indvars.iv.next, %for.body38 ]
  %arraydecay41 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !358
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay41}, i64 0, metadata !370), !dbg !371
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !372), !dbg !371
  %15 = load float* %arraydecay41, align 4, !dbg !357, !tbaa !189
  %sub.i = fsub float %15, %8, !dbg !357
  tail call void @llvm.dbg.value(metadata !{float %sub.i}, i64 0, metadata !373), !dbg !357
  %arrayidx2.i66 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !359
  %16 = load float* %arrayidx2.i66, align 4, !dbg !359, !tbaa !189
  %sub4.i = fsub float %16, %9, !dbg !359
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !374), !dbg !359
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !360
  %17 = load float* %arrayidx5.i, align 4, !dbg !360, !tbaa !189
  %sub7.i = fsub float %17, %10, !dbg !360
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !375), !dbg !360
  store float %sub.i, float* %arraydecay41, align 4, !dbg !376, !tbaa !189
  store float %sub4.i, float* %arrayidx2.i66, align 4, !dbg !377, !tbaa !189
  store float %sub7.i, float* %arrayidx5.i, align 4, !dbg !378, !tbaa !189
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !351
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !351
  %exitcond = icmp eq i32 %lftr.wideiv, %nreset, !dbg !351
  br i1 %exitcond, label %if.end, label %for.body38, !dbg !351

if.end:                                           ; preds = %for.cond24.preheader, %for.body26, %for.cond36.preheader, %for.body38
  ret void, !dbg !379
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !165, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !35, metadata !44, metadata !52, metadata !59, metadata !65, metadata !98, metadata !113, metadata !129, metadata !141, metadata !146, metadata !153, metadata !160}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_similar_ind", metadata !"calc_similar_ind", metadata !"", i32 43, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, i32, i32*, float*, [3 x float]*, [3 x float]*)* @calc_similar_ind, null, null, metadata !19, i32 45} ; [ DW_TAG_subprogram ] [line 43] [def] [scope 45] [calc_similar_ind]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !10, metadata !10, metadata !11, metadata !13, metadata !14, metadata !14}
!8 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!9 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!12 = metadata !{i32 786454, metadata !1, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!15 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !8, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!20 = metadata !{i32 786689, metadata !4, metadata !"bRho", metadata !5, i32 16777259, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRho] [line 43]
!21 = metadata !{i32 786689, metadata !4, metadata !"nind", metadata !5, i32 33554475, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nind] [line 43]
!22 = metadata !{i32 786689, metadata !4, metadata !"index", metadata !5, i32 50331691, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 43]
!23 = metadata !{i32 786689, metadata !4, metadata !"mass", metadata !5, i32 67108907, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mass] [line 43]
!24 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 83886124, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 44]
!25 = metadata !{i32 786689, metadata !4, metadata !"xp", metadata !5, i32 100663340, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xp] [line 44]
!26 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 46, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 46]
!27 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 46, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 46]
!28 = metadata !{i32 786688, metadata !4, metadata !"d", metadata !5, i32 46, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 46]
!29 = metadata !{i32 786688, metadata !4, metadata !"m", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 47]
!30 = metadata !{i32 786688, metadata !4, metadata !"tm", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 47]
!31 = metadata !{i32 786688, metadata !4, metadata !"xs", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xs] [line 47]
!32 = metadata !{i32 786688, metadata !4, metadata !"xd", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xd] [line 47]
!33 = metadata !{i32 786688, metadata !4, metadata !"rs", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rs] [line 47]
!34 = metadata !{i32 786688, metadata !4, metadata !"rd", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rd] [line 47]
!35 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rmsdev_ind", metadata !"rmsdev_ind", metadata !"", i32 74, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, i32*, float*, [3 x float]*, [3 x float]*)* @rmsdev_ind, null, null, metadata !38, i32 75} ; [ DW_TAG_subprogram ] [line 74] [def] [scope 75] [rmsdev_ind]
!36 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{metadata !8, metadata !10, metadata !11, metadata !13, metadata !14, metadata !14}
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42, metadata !43}
!39 = metadata !{i32 786689, metadata !35, metadata !"nind", metadata !5, i32 16777290, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nind] [line 74]
!40 = metadata !{i32 786689, metadata !35, metadata !"index", metadata !5, i32 33554506, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 74]
!41 = metadata !{i32 786689, metadata !35, metadata !"mass", metadata !5, i32 50331722, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mass] [line 74]
!42 = metadata !{i32 786689, metadata !35, metadata !"x", metadata !5, i32 67108938, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 74]
!43 = metadata !{i32 786689, metadata !35, metadata !"xp", metadata !5, i32 83886154, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xp] [line 74]
!44 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rmsdev", metadata !"rmsdev", metadata !"", i32 79, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, float*, [3 x float]*, [3 x float]*)* @rmsdev, null, null, metadata !47, i32 80} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 80] [rmsdev]
!45 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{metadata !8, metadata !10, metadata !13, metadata !14, metadata !14}
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51}
!48 = metadata !{i32 786689, metadata !44, metadata !"natoms", metadata !5, i32 16777295, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 79]
!49 = metadata !{i32 786689, metadata !44, metadata !"mass", metadata !5, i32 33554511, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mass] [line 79]
!50 = metadata !{i32 786689, metadata !44, metadata !"x", metadata !5, i32 50331727, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 79]
!51 = metadata !{i32 786689, metadata !44, metadata !"xp", metadata !5, i32 67108943, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xp] [line 79]
!52 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rhodev_ind", metadata !"rhodev_ind", metadata !"", i32 84, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, i32*, float*, [3 x float]*, [3 x float]*)* @rhodev_ind, null, null, metadata !53, i32 85} ; [ DW_TAG_subprogram ] [line 84] [def] [scope 85] [rhodev_ind]
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57, metadata !58}
!54 = metadata !{i32 786689, metadata !52, metadata !"nind", metadata !5, i32 16777300, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nind] [line 84]
!55 = metadata !{i32 786689, metadata !52, metadata !"index", metadata !5, i32 33554516, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 84]
!56 = metadata !{i32 786689, metadata !52, metadata !"mass", metadata !5, i32 50331732, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mass] [line 84]
!57 = metadata !{i32 786689, metadata !52, metadata !"x", metadata !5, i32 67108948, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 84]
!58 = metadata !{i32 786689, metadata !52, metadata !"xp", metadata !5, i32 83886164, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xp] [line 84]
!59 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rhodev", metadata !"rhodev", metadata !"", i32 89, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, float*, [3 x float]*, [3 x float]*)* @rhodev, null, null, metadata !60, i32 90} ; [ DW_TAG_subprogram ] [line 89] [def] [scope 90] [rhodev]
!60 = metadata !{metadata !61, metadata !62, metadata !63, metadata !64}
!61 = metadata !{i32 786689, metadata !59, metadata !"natoms", metadata !5, i32 16777305, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 89]
!62 = metadata !{i32 786689, metadata !59, metadata !"mass", metadata !5, i32 33554521, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mass] [line 89]
!63 = metadata !{i32 786689, metadata !59, metadata !"x", metadata !5, i32 50331737, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 89]
!64 = metadata !{i32 786689, metadata !59, metadata !"xp", metadata !5, i32 67108953, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xp] [line 89]
!65 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_fit_R", metadata !"calc_fit_R", metadata !"", i32 94, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, float*, [3 x float]*, [3 x float]*, [3 x float]*)* @calc_fit_R, null, null, metadata !69, i32 95} ; [ DW_TAG_subprogram ] [line 94] [def] [scope 95] [calc_fit_R]
!66 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{null, metadata !10, metadata !13, metadata !14, metadata !14, metadata !68}
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !87, metadata !88, metadata !89, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97}
!70 = metadata !{i32 786689, metadata !65, metadata !"natoms", metadata !5, i32 16777310, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 94]
!71 = metadata !{i32 786689, metadata !65, metadata !"w_rls", metadata !5, i32 33554526, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w_rls] [line 94]
!72 = metadata !{i32 786689, metadata !65, metadata !"xp", metadata !5, i32 50331742, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xp] [line 94]
!73 = metadata !{i32 786689, metadata !65, metadata !"x", metadata !5, i32 67108958, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 94]
!74 = metadata !{i32 786689, metadata !65, metadata !"R", metadata !5, i32 83886174, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [R] [line 94]
!75 = metadata !{i32 786688, metadata !65, metadata !"c", metadata !5, i32 96, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 96]
!76 = metadata !{i32 786688, metadata !65, metadata !"r", metadata !5, i32 96, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 96]
!77 = metadata !{i32 786688, metadata !65, metadata !"n", metadata !5, i32 96, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 96]
!78 = metadata !{i32 786688, metadata !65, metadata !"j", metadata !5, i32 96, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 96]
!79 = metadata !{i32 786688, metadata !65, metadata !"m", metadata !5, i32 96, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 96]
!80 = metadata !{i32 786688, metadata !65, metadata !"i", metadata !5, i32 96, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 96]
!81 = metadata !{i32 786688, metadata !65, metadata !"irot", metadata !5, i32 96, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irot] [line 96]
!82 = metadata !{i32 786688, metadata !65, metadata !"d", metadata !5, i32 98, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 98]
!83 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !84, metadata !85, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from double]
!84 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!87 = metadata !{i32 786688, metadata !65, metadata !"xnr", metadata !5, i32 98, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xnr] [line 98]
!88 = metadata !{i32 786688, metadata !65, metadata !"xpc", metadata !5, i32 98, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xpc] [line 98]
!89 = metadata !{i32 786688, metadata !65, metadata !"vh", metadata !5, i32 99, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vh] [line 99]
!90 = metadata !{i32 786454, metadata !1, null, metadata !"matrix", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [matrix] [line 103, size 0, align 0, offset 0] [from ]
!91 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !8, metadata !92, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!92 = metadata !{metadata !18, metadata !18}
!93 = metadata !{i32 786688, metadata !65, metadata !"vk", metadata !5, i32 99, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vk] [line 99]
!94 = metadata !{i32 786688, metadata !65, metadata !"u", metadata !5, i32 99, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 99]
!95 = metadata !{i32 786688, metadata !65, metadata !"mn", metadata !5, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mn] [line 100]
!96 = metadata !{i32 786688, metadata !65, metadata !"index", metadata !5, i32 101, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 101]
!97 = metadata !{i32 786688, metadata !65, metadata !"max_d", metadata !5, i32 102, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_d] [line 102]
!98 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"do_fit", metadata !"do_fit", metadata !"", i32 187, metadata !99, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, float*, [3 x float]*, [3 x float]*)* @do_fit, null, null, metadata !101, i32 188} ; [ DW_TAG_subprogram ] [line 187] [def] [scope 188] [do_fit]
!99 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!100 = metadata !{null, metadata !10, metadata !13, metadata !14, metadata !14}
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112}
!102 = metadata !{i32 786689, metadata !98, metadata !"natoms", metadata !5, i32 16777403, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 187]
!103 = metadata !{i32 786689, metadata !98, metadata !"w_rls", metadata !5, i32 33554619, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w_rls] [line 187]
!104 = metadata !{i32 786689, metadata !98, metadata !"xp", metadata !5, i32 50331835, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xp] [line 187]
!105 = metadata !{i32 786689, metadata !98, metadata !"x", metadata !5, i32 67109051, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 187]
!106 = metadata !{i32 786688, metadata !98, metadata !"i", metadata !5, i32 189, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 189]
!107 = metadata !{i32 786688, metadata !98, metadata !"j", metadata !5, i32 189, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 189]
!108 = metadata !{i32 786688, metadata !98, metadata !"m", metadata !5, i32 189, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 189]
!109 = metadata !{i32 786688, metadata !98, metadata !"r", metadata !5, i32 189, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 189]
!110 = metadata !{i32 786688, metadata !98, metadata !"c", metadata !5, i32 189, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 189]
!111 = metadata !{i32 786688, metadata !98, metadata !"R", metadata !5, i32 190, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [R] [line 190]
!112 = metadata !{i32 786688, metadata !98, metadata !"x_old", metadata !5, i32 191, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_old] [line 191]
!113 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"reset_x", metadata !"reset_x", metadata !"", i32 208, metadata !114, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32*, i32, i32*, [3 x float]*, float*)* @reset_x, null, null, metadata !116, i32 210} ; [ DW_TAG_subprogram ] [line 208] [def] [scope 210] [reset_x]
!114 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!115 = metadata !{null, metadata !10, metadata !11, metadata !10, metadata !11, metadata !14, metadata !13}
!116 = metadata !{metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128}
!117 = metadata !{i32 786689, metadata !113, metadata !"ncm", metadata !5, i32 16777424, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncm] [line 208]
!118 = metadata !{i32 786689, metadata !113, metadata !"ind_cm", metadata !5, i32 33554640, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ind_cm] [line 208]
!119 = metadata !{i32 786689, metadata !113, metadata !"nreset", metadata !5, i32 50331857, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nreset] [line 209]
!120 = metadata !{i32 786689, metadata !113, metadata !"ind_reset", metadata !5, i32 67109073, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ind_reset] [line 209]
!121 = metadata !{i32 786689, metadata !113, metadata !"x", metadata !5, i32 83886289, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 209]
!122 = metadata !{i32 786689, metadata !113, metadata !"mass", metadata !5, i32 100663505, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mass] [line 209]
!123 = metadata !{i32 786688, metadata !113, metadata !"i", metadata !5, i32 211, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 211]
!124 = metadata !{i32 786688, metadata !113, metadata !"m", metadata !5, i32 211, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 211]
!125 = metadata !{i32 786688, metadata !113, metadata !"ai", metadata !5, i32 211, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 211]
!126 = metadata !{i32 786688, metadata !113, metadata !"xcm", metadata !5, i32 212, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xcm] [line 212]
!127 = metadata !{i32 786688, metadata !113, metadata !"tm", metadata !5, i32 213, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 213]
!128 = metadata !{i32 786688, metadata !113, metadata !"mm", metadata !5, i32 213, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mm] [line 213]
!129 = metadata !{i32 786478, metadata !130, metadata !131, metadata !"rvec_dec", metadata !"rvec_dec", metadata !"", i32 257, metadata !132, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !134, i32 258} ; [ DW_TAG_subprogram ] [line 257] [local] [def] [scope 258] [rvec_dec]
!130 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!131 = metadata !{i32 786473, metadata !130}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!132 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!133 = metadata !{null, metadata !13, metadata !13}
!134 = metadata !{metadata !135, metadata !136, metadata !137, metadata !139, metadata !140}
!135 = metadata !{i32 786689, metadata !129, metadata !"a", metadata !131, i32 16777473, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 257]
!136 = metadata !{i32 786689, metadata !129, metadata !"b", metadata !131, i32 33554689, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 257]
!137 = metadata !{i32 786688, metadata !138, metadata !"x", metadata !131, i32 259, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 259]
!138 = metadata !{i32 786443, metadata !130, metadata !129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!139 = metadata !{i32 786688, metadata !138, metadata !"y", metadata !131, i32 259, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 259]
!140 = metadata !{i32 786688, metadata !138, metadata !"z", metadata !131, i32 259, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 259]
!141 = metadata !{i32 786478, metadata !130, metadata !131, metadata !"clear_rvec", metadata !"clear_rvec", metadata !"", i32 316, metadata !142, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !144, i32 317} ; [ DW_TAG_subprogram ] [line 316] [local] [def] [scope 317] [clear_rvec]
!142 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!143 = metadata !{null, metadata !13}
!144 = metadata !{metadata !145}
!145 = metadata !{i32 786689, metadata !141, metadata !"a", metadata !131, i32 16777532, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 316]
!146 = metadata !{i32 786478, metadata !130, metadata !131, metadata !"oprod", metadata !"oprod", metadata !"", i32 417, metadata !147, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !149, i32 418} ; [ DW_TAG_subprogram ] [line 417] [local] [def] [scope 418] [oprod]
!147 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{null, metadata !13, metadata !13, metadata !13}
!149 = metadata !{metadata !150, metadata !151, metadata !152}
!150 = metadata !{i32 786689, metadata !146, metadata !"a", metadata !131, i32 16777633, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 417]
!151 = metadata !{i32 786689, metadata !146, metadata !"b", metadata !131, i32 33554849, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 417]
!152 = metadata !{i32 786689, metadata !146, metadata !"c", metadata !131, i32 50332065, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 417]
!153 = metadata !{i32 786478, metadata !130, metadata !131, metadata !"clear_mat", metadata !"clear_mat", metadata !"", i32 334, metadata !154, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !156, i32 335} ; [ DW_TAG_subprogram ] [line 334] [local] [def] [scope 335] [clear_mat]
!154 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!155 = metadata !{null, metadata !68}
!156 = metadata !{metadata !157, metadata !158}
!157 = metadata !{i32 786689, metadata !153, metadata !"a", metadata !131, i32 16777550, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 334]
!158 = metadata !{i32 786688, metadata !153, metadata !"nul", metadata !131, i32 336, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!159 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!160 = metadata !{i32 786478, metadata !130, metadata !131, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !161, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !163, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!161 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !162, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!162 = metadata !{metadata !8, metadata !8}
!163 = metadata !{metadata !164}
!164 = metadata !{i32 786689, metadata !160, metadata !"x", metadata !131, i32 16777413, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!165 = metadata !{metadata !166, metadata !169, metadata !170, metadata !170, metadata !170}
!166 = metadata !{i32 786484, i32 0, metadata !65, metadata !"omega", metadata !"omega", metadata !"", metadata !5, i32 97, metadata !167, i32 1, i32 1, double*** @calc_fit_R.omega, null} ; [ DW_TAG_variable ] [omega] [line 97] [local] [def]
!167 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !168} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!168 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!169 = metadata !{i32 786484, i32 0, metadata !65, metadata !"om", metadata !"om", metadata !"", metadata !5, i32 97, metadata !167, i32 1, i32 1, double*** @calc_fit_R.om, null} ; [ DW_TAG_variable ] [om] [line 97] [local] [def]
!170 = metadata !{i32 786484, i32 0, metadata !131, metadata !"nul", metadata !"nul", metadata !"nul", metadata !131, i32 336, metadata !159, i32 1, i32 1, float 0.000000e+00, null} ; [ DW_TAG_variable ] [nul] [line 336] [local] [def]
!171 = metadata !{i32 43, i32 0, metadata !4, null}
!172 = metadata !{i32 44, i32 0, metadata !4, null}
!173 = metadata !{float 0.000000e+00}
!174 = metadata !{i32 49, i32 0, metadata !4, null}
!175 = metadata !{i32 50, i32 0, metadata !4, null}
!176 = metadata !{i32 51, i32 0, metadata !4, null}
!177 = metadata !{i32 52, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !4, i32 52, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!179 = metadata !{i32 53, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !178, i32 52, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!181 = metadata !{i32 62, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !183, i32 59, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!183 = metadata !{i32 786443, metadata !1, metadata !180, i32 59, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!184 = metadata !{i32 54, i32 0, metadata !180, null}
!185 = metadata !{metadata !"int", metadata !186}
!186 = metadata !{metadata !"omnipotent char", metadata !187}
!187 = metadata !{metadata !"Simple C/C++ TBAA"}
!188 = metadata !{i32 57, i32 0, metadata !180, null}
!189 = metadata !{metadata !"float", metadata !186}
!190 = metadata !{i32 58, i32 0, metadata !180, null} ; [ DW_TAG_imported_module ]
!191 = metadata !{i32 59, i32 0, metadata !183, null}
!192 = metadata !{i32 60, i32 0, metadata !182, null}
!193 = metadata !{i32 786689, metadata !160, metadata !"x", metadata !131, i32 16777413, metadata !8, i32 0, metadata !194} ; [ DW_TAG_arg_variable ] [x] [line 197]
!194 = metadata !{i32 61, i32 0, metadata !182, null}
!195 = metadata !{i32 197, i32 0, metadata !160, metadata !194}
!196 = metadata !{i32 199, i32 0, metadata !160, metadata !194}
!197 = metadata !{i32 63, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !182, i32 62, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!199 = metadata !{i32 786689, metadata !160, metadata !"x", metadata !131, i32 16777413, metadata !8, i32 0, metadata !200} ; [ DW_TAG_arg_variable ] [x] [line 197]
!200 = metadata !{i32 64, i32 0, metadata !198, null}
!201 = metadata !{i32 197, i32 0, metadata !160, metadata !200}
!202 = metadata !{i32 199, i32 0, metadata !160, metadata !200}
!203 = metadata !{i32 65, i32 0, metadata !198, null}
!204 = metadata !{i32 68, i32 0, metadata !4, null}
!205 = metadata !{i32 69, i32 0, metadata !4, null}
!206 = metadata !{i32 71, i32 0, metadata !4, null}
!207 = metadata !{i32 72, i32 0, metadata !4, null}
!208 = metadata !{i32 74, i32 0, metadata !35, null}
!209 = metadata !{i32 76, i32 0, metadata !35, null}
!210 = metadata !{i32 79, i32 0, metadata !44, null}
!211 = metadata !{i32 81, i32 0, metadata !44, null}
!212 = metadata !{i32 84, i32 0, metadata !52, null}
!213 = metadata !{i32 86, i32 0, metadata !52, null}
!214 = metadata !{i32 89, i32 0, metadata !59, null}
!215 = metadata !{i32 91, i32 0, metadata !59, null}
!216 = metadata !{i32 94, i32 0, metadata !65, null}
!217 = metadata !{i32 96, i32 0, metadata !65, null}
!218 = metadata !{i32 98, i32 0, metadata !65, null}
!219 = metadata !{i32 99, i32 0, metadata !65, null}
!220 = metadata !{i32 104, i32 0, metadata !65, null}
!221 = metadata !{metadata !"any pointer", metadata !186}
!222 = metadata !{i32 116, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !224, i32 115, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!224 = metadata !{i32 786443, metadata !1, metadata !225, i32 115, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!225 = metadata !{i32 786443, metadata !1, metadata !226, i32 113, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!226 = metadata !{i32 786443, metadata !1, metadata !65, i32 113, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!227 = metadata !{i32 117, i32 0, metadata !223, null}
!228 = metadata !{i32 113, i32 0, metadata !226, null}
!229 = metadata !{i32 105, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !65, i32 104, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!231 = metadata !{i32 106, i32 0, metadata !230, null}
!232 = metadata !{i32 107, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !230, i32 107, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!234 = metadata !{i32 108, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !233, i32 107, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!236 = metadata !{i32 109, i32 0, metadata !235, null}
!237 = metadata !{i32 114, i32 0, metadata !225, null}
!238 = metadata !{metadata !"double", metadata !186}
!239 = metadata !{i32 115, i32 0, metadata !224, null}
!240 = metadata !{i32 786688, metadata !153, metadata !"nul", metadata !131, i32 336, metadata !159, i32 0, metadata !241} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!241 = metadata !{i32 122, i32 0, metadata !65, null}
!242 = metadata !{i32 336, i32 0, metadata !153, metadata !241}
!243 = metadata !{i32 338, i32 0, metadata !153, metadata !241}
!244 = metadata !{i32 123, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !65, i32 123, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!246 = metadata !{i32 124, i32 0, metadata !245, null}
!247 = metadata !{i32 126, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !249, i32 125, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!249 = metadata !{i32 786443, metadata !1, metadata !245, i32 125, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!250 = metadata !{i32 127, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !248, i32 127, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!252 = metadata !{i32 128, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !251, i32 127, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!254 = metadata !{i32 129, i32 0, metadata !253, null}
!255 = metadata !{i32 125, i32 0, metadata !249, null}
!256 = metadata !{i32 136, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !258, i32 136, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!258 = metadata !{i32 786443, metadata !1, metadata !65, i32 135, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!259 = metadata !{i32 137, i32 0, metadata !257, null}
!260 = metadata !{i32 138, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !257, i32 137, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!262 = metadata !{i32 139, i32 0, metadata !261, null}
!263 = metadata !{i32 140, i32 0, metadata !261, null}
!264 = metadata !{i32 141, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !257, i32 140, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!266 = metadata !{i32 142, i32 0, metadata !265, null}
!267 = metadata !{i32 135, i32 0, metadata !258, null}
!268 = metadata !{i32 146, i32 0, metadata !65, null}
!269 = metadata !{i32 154, i32 0, metadata !65, null}
!270 = metadata !{i32 168, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !272, i32 167, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!272 = metadata !{i32 786443, metadata !1, metadata !273, i32 167, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!273 = metadata !{i32 786443, metadata !1, metadata !274, i32 159, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!274 = metadata !{i32 786443, metadata !1, metadata !65, i32 159, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!275 = metadata !{i32 159, i32 0, metadata !274, null}
!276 = metadata !{i32 161, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !273, i32 161, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!278 = metadata !{i32 162, i32 0, metadata !277, null}
!279 = metadata !{i32 163, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !277, i32 162, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!281 = metadata !{i32 undef}
!282 = metadata !{i32 164, i32 0, metadata !280, null}
!283 = metadata !{i32 165, i32 0, metadata !280, null}
!284 = metadata !{i32 166, i32 0, metadata !273, null}
!285 = metadata !{i32 167, i32 0, metadata !272, null}
!286 = metadata !{i32 169, i32 0, metadata !271, null}
!287 = metadata !{i32 176, i32 0, metadata !65, null}
!288 = metadata !{i32 786689, metadata !146, metadata !"a", metadata !131, i32 16777633, metadata !13, i32 0, metadata !287} ; [ DW_TAG_arg_variable ] [a] [line 417]
!289 = metadata !{i32 417, i32 0, metadata !146, metadata !287}
!290 = metadata !{i32 786689, metadata !146, metadata !"b", metadata !131, i32 33554849, metadata !13, i32 0, metadata !287} ; [ DW_TAG_arg_variable ] [b] [line 417]
!291 = metadata !{i32 786689, metadata !146, metadata !"c", metadata !131, i32 50332065, metadata !13, i32 0, metadata !287} ; [ DW_TAG_arg_variable ] [c] [line 417]
!292 = metadata !{i32 419, i32 0, metadata !146, metadata !287}
!293 = metadata !{i32 420, i32 0, metadata !146, metadata !287}
!294 = metadata !{i32 421, i32 0, metadata !146, metadata !287}
!295 = metadata !{i32 177, i32 0, metadata !65, null}
!296 = metadata !{i32 786689, metadata !146, metadata !"a", metadata !131, i32 16777633, metadata !13, i32 0, metadata !295} ; [ DW_TAG_arg_variable ] [a] [line 417]
!297 = metadata !{i32 417, i32 0, metadata !146, metadata !295}
!298 = metadata !{i32 786689, metadata !146, metadata !"b", metadata !131, i32 33554849, metadata !13, i32 0, metadata !295} ; [ DW_TAG_arg_variable ] [b] [line 417]
!299 = metadata !{i32 786689, metadata !146, metadata !"c", metadata !131, i32 50332065, metadata !13, i32 0, metadata !295} ; [ DW_TAG_arg_variable ] [c] [line 417]
!300 = metadata !{i32 419, i32 0, metadata !146, metadata !295}
!301 = metadata !{i32 420, i32 0, metadata !146, metadata !295}
!302 = metadata !{i32 421, i32 0, metadata !146, metadata !295}
!303 = metadata !{i32 180, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !65, i32 180, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!305 = metadata !{i32 181, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !304, i32 181, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!307 = metadata !{i32 182, i32 0, metadata !306, null}
!308 = metadata !{i32 185, i32 0, metadata !65, null}
!309 = metadata !{i32 187, i32 0, metadata !98, null}
!310 = metadata !{i32 190, i32 0, metadata !98, null}
!311 = metadata !{i32 191, i32 0, metadata !98, null}
!312 = metadata !{i32 194, i32 0, metadata !98, null}
!313 = metadata !{i32 197, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !98, i32 197, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!315 = metadata !{i32 199, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !317, i32 198, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!317 = metadata !{i32 786443, metadata !1, metadata !314, i32 197, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!318 = metadata !{i32 200, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !317, i32 200, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!320 = metadata !{i32 201, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !319, i32 200, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!322 = metadata !{i32 202, i32 0, metadata !323, null}
!323 = metadata !{i32 786443, metadata !1, metadata !321, i32 202, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!324 = metadata !{i32 203, i32 0, metadata !323, null}
!325 = metadata !{i32 206, i32 0, metadata !98, null}
!326 = metadata !{i32 208, i32 0, metadata !113, null}
!327 = metadata !{i32 209, i32 0, metadata !113, null}
!328 = metadata !{i32 212, i32 0, metadata !113, null}
!329 = metadata !{i32 215, i32 0, metadata !113, null}
!330 = metadata !{i32 216, i32 0, metadata !113, null}
!331 = metadata !{i32 786689, metadata !141, metadata !"a", metadata !131, i32 16777532, metadata !13, i32 0, metadata !330} ; [ DW_TAG_arg_variable ] [a] [line 316]
!332 = metadata !{i32 316, i32 0, metadata !141, metadata !330}
!333 = metadata !{i32 321, i32 0, metadata !141, metadata !330}
!334 = metadata !{i32 322, i32 0, metadata !141, metadata !330}
!335 = metadata !{i32 323, i32 0, metadata !141, metadata !330}
!336 = metadata !{i32 217, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !113, i32 217, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!338 = metadata !{i32 224, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !113, i32 224, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!340 = metadata !{i32 218, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !337, i32 217, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!342 = metadata !{i32 219, i32 0, metadata !341, null}
!343 = metadata !{i32 220, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !341, i32 220, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!345 = metadata !{i32 221, i32 0, metadata !344, null}
!346 = metadata !{i32 222, i32 0, metadata !341, null}
!347 = metadata !{i32 225, i32 0, metadata !339, null}
!348 = metadata !{i32 227, i32 0, metadata !113, null}
!349 = metadata !{i32 228, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !113, i32 228, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!351 = metadata !{i32 231, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !113, i32 231, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c]
!353 = metadata !{i32 261, i32 0, metadata !138, metadata !354}
!354 = metadata !{i32 229, i32 0, metadata !350, null}
!355 = metadata !{i32 262, i32 0, metadata !138, metadata !354}
!356 = metadata !{i32 263, i32 0, metadata !138, metadata !354}
!357 = metadata !{i32 261, i32 0, metadata !138, metadata !358}
!358 = metadata !{i32 232, i32 0, metadata !352, null}
!359 = metadata !{i32 262, i32 0, metadata !138, metadata !358}
!360 = metadata !{i32 263, i32 0, metadata !138, metadata !358}
!361 = metadata !{i32 786689, metadata !129, metadata !"a", metadata !131, i32 16777473, metadata !13, i32 0, metadata !354} ; [ DW_TAG_arg_variable ] [a] [line 257]
!362 = metadata !{i32 257, i32 0, metadata !129, metadata !354}
!363 = metadata !{i32 786689, metadata !129, metadata !"b", metadata !131, i32 33554689, metadata !13, i32 0, metadata !354} ; [ DW_TAG_arg_variable ] [b] [line 257]
!364 = metadata !{i32 786688, metadata !138, metadata !"x", metadata !131, i32 259, metadata !8, i32 0, metadata !354} ; [ DW_TAG_auto_variable ] [x] [line 259]
!365 = metadata !{i32 786688, metadata !138, metadata !"y", metadata !131, i32 259, metadata !8, i32 0, metadata !354} ; [ DW_TAG_auto_variable ] [y] [line 259]
!366 = metadata !{i32 786688, metadata !138, metadata !"z", metadata !131, i32 259, metadata !8, i32 0, metadata !354} ; [ DW_TAG_auto_variable ] [z] [line 259]
!367 = metadata !{i32 265, i32 0, metadata !138, metadata !354}
!368 = metadata !{i32 266, i32 0, metadata !138, metadata !354}
!369 = metadata !{i32 267, i32 0, metadata !138, metadata !354}
!370 = metadata !{i32 786689, metadata !129, metadata !"a", metadata !131, i32 16777473, metadata !13, i32 0, metadata !358} ; [ DW_TAG_arg_variable ] [a] [line 257]
!371 = metadata !{i32 257, i32 0, metadata !129, metadata !358}
!372 = metadata !{i32 786689, metadata !129, metadata !"b", metadata !131, i32 33554689, metadata !13, i32 0, metadata !358} ; [ DW_TAG_arg_variable ] [b] [line 257]
!373 = metadata !{i32 786688, metadata !138, metadata !"x", metadata !131, i32 259, metadata !8, i32 0, metadata !358} ; [ DW_TAG_auto_variable ] [x] [line 259]
!374 = metadata !{i32 786688, metadata !138, metadata !"y", metadata !131, i32 259, metadata !8, i32 0, metadata !358} ; [ DW_TAG_auto_variable ] [y] [line 259]
!375 = metadata !{i32 786688, metadata !138, metadata !"z", metadata !131, i32 259, metadata !8, i32 0, metadata !358} ; [ DW_TAG_auto_variable ] [z] [line 259]
!376 = metadata !{i32 265, i32 0, metadata !138, metadata !358}
!377 = metadata !{i32 266, i32 0, metadata !138, metadata !358}
!378 = metadata !{i32 267, i32 0, metadata !138, metadata !358}
!379 = metadata !{i32 233, i32 0, metadata !113, null}
