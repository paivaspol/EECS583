; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [26 x i8] c"Generating configuration\0A\00", align 1

; Function Attrs: nounwind optsize readonly uwtable
define float @distance_to_z(float* nocapture %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %x}, i64 0, metadata !12), !dbg !206
  %0 = load float* %x, align 4, !dbg !207, !tbaa !208
  tail call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !211), !dbg !212
  %mul.i = fmul float %0, %0, !dbg !213
  %arrayidx1 = getelementptr inbounds float* %x, i64 1, !dbg !207
  %1 = load float* %arrayidx1, align 4, !dbg !207, !tbaa !208
  tail call void @llvm.dbg.value(metadata !{float %1}, i64 0, metadata !211), !dbg !212
  %mul.i4 = fmul float %1, %1, !dbg !213
  %add = fadd float %mul.i, %mul.i4, !dbg !207
  ret float %add, !dbg !207
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define void @rotate_conf(i32 %natom, [3 x float]* %x, [3 x float]* %v, float %alfa, float %beta, float %gamma) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %natom}, i64 0, metadata !23), !dbg !214
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !24), !dbg !214
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !25), !dbg !214
  tail call void @llvm.dbg.value(metadata !{float %alfa}, i64 0, metadata !26), !dbg !214
  tail call void @llvm.dbg.value(metadata !{float %beta}, i64 0, metadata !27), !dbg !214
  tail call void @llvm.dbg.value(metadata !{float %gamma}, i64 0, metadata !28), !dbg !214
  %tobool = icmp eq [3 x float]* %x, null, !dbg !215
  br i1 %tobool, label %if.end, label %if.then, !dbg !215

if.then:                                          ; preds = %entry
  tail call fastcc void @low_rotate_conf(i32 %natom, [3 x float]* %x, float %alfa, float %beta, float %gamma) #6, !dbg !216
  br label %if.end, !dbg !216

if.end:                                           ; preds = %entry, %if.then
  %tobool1 = icmp eq [3 x float]* %v, null, !dbg !217
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !217

if.then2:                                         ; preds = %if.end
  tail call fastcc void @low_rotate_conf(i32 %natom, [3 x float]* %v, float %alfa, float %beta, float %gamma) #6, !dbg !218
  br label %if.end3, !dbg !218

if.end3:                                          ; preds = %if.end, %if.then2
  ret void, !dbg !219
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @low_rotate_conf(i32 %natom, [3 x float]* nocapture %x, float %alfa, float %beta, float %gamma) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %natom}, i64 0, metadata !185), !dbg !220
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !186), !dbg !220
  tail call void @llvm.dbg.value(metadata !{float %alfa}, i64 0, metadata !187), !dbg !220
  tail call void @llvm.dbg.value(metadata !{float %beta}, i64 0, metadata !188), !dbg !220
  tail call void @llvm.dbg.value(metadata !{float %gamma}, i64 0, metadata !189), !dbg !220
  tail call void @llvm.dbg.declare(metadata !221, metadata !192), !dbg !222
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !190), !dbg !223
  %cmp160 = icmp sgt i32 %natom, 0, !dbg !223
  br i1 %cmp160, label %for.body.lr.ph, label %for.end, !dbg !223

for.body.lr.ph:                                   ; preds = %entry
  %conv7 = fpext float %alfa to double, !dbg !225
  %conv37 = fpext float %beta to double, !dbg !227
  %conv75 = fpext float %gamma to double, !dbg !228
  br label %for.body, !dbg !223

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !229
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !230), !dbg !231
  tail call void @llvm.dbg.value(metadata !232, i64 0, metadata !233), !dbg !231
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !234
  %0 = load float* %arrayidx2.i, align 4, !dbg !234, !tbaa !208
  %arrayidx4.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !236
  %1 = load float* %arrayidx4.i, align 4, !dbg !236, !tbaa !208
  %conv = fpext float %0 to double, !dbg !225
  %call = tail call double @cos(double %conv7) #7, !dbg !225
  %mul = fmul double %conv, %call, !dbg !225
  %conv9 = fpext float %1 to double, !dbg !225
  %call11 = tail call double @sin(double %conv7) #7, !dbg !225
  %mul12 = fmul double %conv9, %call11, !dbg !225
  %add = fadd double %mul, %mul12, !dbg !225
  %conv13 = fptrunc double %add to float, !dbg !225
  store float %conv13, float* %arrayidx2.i, align 4, !dbg !225, !tbaa !208
  %call20 = tail call double @cos(double %conv7) #7, !dbg !237
  %mul21 = fmul double %conv9, %call20, !dbg !237
  %call25 = tail call double @sin(double %conv7) #7, !dbg !237
  %mul26 = fmul double %conv, %call25, !dbg !237
  %sub = fsub double %mul21, %mul26, !dbg !237
  %conv27 = fptrunc double %sub to float, !dbg !237
  store float %conv27, float* %arrayidx4.i, align 4, !dbg !237, !tbaa !208
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !238), !dbg !240
  tail call void @llvm.dbg.value(metadata !232, i64 0, metadata !241), !dbg !240
  %2 = load float* %arraydecay, align 4, !dbg !242, !tbaa !208
  %3 = load float* %arrayidx2.i, align 4, !dbg !243, !tbaa !208
  %conv36 = fpext float %2 to double, !dbg !227
  %call38 = tail call double @cos(double %conv37) #7, !dbg !227
  %mul39 = fmul double %conv36, %call38, !dbg !227
  %conv41 = fpext float %conv27 to double, !dbg !227
  %call43 = tail call double @sin(double %conv37) #7, !dbg !227
  %mul44 = fmul double %conv41, %call43, !dbg !227
  %sub45 = fsub double %mul39, %mul44, !dbg !227
  %conv46 = fptrunc double %sub45 to float, !dbg !227
  store float %conv46, float* %arraydecay, align 4, !dbg !227, !tbaa !208
  store float %3, float* %arrayidx2.i, align 4, !dbg !244, !tbaa !208
  %call57 = tail call double @cos(double %conv37) #7, !dbg !245
  %mul58 = fmul double %conv41, %call57, !dbg !245
  %call62 = tail call double @sin(double %conv37) #7, !dbg !245
  %mul63 = fmul double %conv36, %call62, !dbg !245
  %add64 = fadd double %mul58, %mul63, !dbg !245
  %conv65 = fptrunc double %add64 to float, !dbg !245
  store float %conv65, float* %arrayidx4.i, align 4, !dbg !245, !tbaa !208
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !246), !dbg !248
  tail call void @llvm.dbg.value(metadata !232, i64 0, metadata !249), !dbg !248
  %4 = load float* %arraydecay, align 4, !dbg !250, !tbaa !208
  %5 = load float* %arrayidx2.i, align 4, !dbg !251, !tbaa !208
  %conv74 = fpext float %4 to double, !dbg !228
  %call76 = tail call double @cos(double %conv75) #7, !dbg !228
  %mul77 = fmul double %conv74, %call76, !dbg !228
  %conv79 = fpext float %5 to double, !dbg !228
  %call81 = tail call double @sin(double %conv75) #7, !dbg !228
  %mul82 = fmul double %conv79, %call81, !dbg !228
  %add83 = fadd double %mul77, %mul82, !dbg !228
  %conv84 = fptrunc double %add83 to float, !dbg !228
  store float %conv84, float* %arraydecay, align 4, !dbg !228, !tbaa !208
  %call91 = tail call double @cos(double %conv75) #7, !dbg !252
  %mul92 = fmul double %conv79, %call91, !dbg !252
  %call96 = tail call double @sin(double %conv75) #7, !dbg !252
  %mul97 = fmul double %conv74, %call96, !dbg !252
  %sub98 = fsub double %mul92, %mul97, !dbg !252
  %conv99 = fptrunc double %sub98 to float, !dbg !252
  store float %conv99, float* %arrayidx2.i, align 4, !dbg !252, !tbaa !208
  store float %conv65, float* %arrayidx4.i, align 4, !dbg !253, !tbaa !208
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !223
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !223
  %exitcond = icmp eq i32 %lftr.wideiv, %natom, !dbg !223
  br i1 %exitcond, label %for.end, label %for.body, !dbg !223

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !254
}

; Function Attrs: nounwind optsize uwtable
define void @orient(i32 %natom, [3 x float]* %x, [3 x float]* %v, float* nocapture %angle, [3 x float]* nocapture %box) #2 {
entry:
  %dx.i = alloca [3 x float], align 4
  %origin = alloca [3 x float], align 4
  %origin218 = bitcast [3 x float]* %origin to i8*
  call void @llvm.dbg.value(metadata !{i32 %natom}, i64 0, metadata !34), !dbg !255
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !35), !dbg !255
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !36), !dbg !255
  call void @llvm.dbg.value(metadata !{float* %angle}, i64 0, metadata !37), !dbg !255
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !38), !dbg !255
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !256
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !46), !dbg !256
  call void @llvm.dbg.declare(metadata !{[3 x float]* %origin}, metadata !47), !dbg !257
  call void @llvm.dbg.value(metadata !258, i64 0, metadata !49), !dbg !259
  call void @llvm.dbg.value(metadata !258, i64 0, metadata !50), !dbg !259
  call void @llvm.dbg.value(metadata !258, i64 0, metadata !51), !dbg !259
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 0, i64 0, !dbg !260
  %arraydecay2 = getelementptr inbounds [3 x float]* %x, i64 1, i64 0, !dbg !260
  %0 = bitcast [3 x float]* %dx.i to i8*, !dbg !261
  call void @llvm.lifetime.start(i64 12, i8* %0) #5, !dbg !261
  call void @llvm.dbg.value(metadata !262, i64 0, metadata !263) #5, !dbg !261
  call void @llvm.dbg.declare(metadata !{[3 x float]* %dx.i}, metadata !175) #5, !dbg !264
  %arraydecay.i = getelementptr inbounds [3 x float]* %dx.i, i64 0, i64 0, !dbg !265
  call void @pbc_dx(float* %arraydecay, float* %arraydecay2, float* %arraydecay.i) #7, !dbg !265
  call void @llvm.dbg.value(metadata !{float* %arraydecay.i}, i64 0, metadata !266) #5, !dbg !268
  %1 = load float* %arraydecay.i, align 4, !dbg !269, !tbaa !208
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %dx.i, i64 0, i64 1, !dbg !269
  %2 = load float* %arrayidx2.i.i, align 4, !dbg !269, !tbaa !208
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %dx.i, i64 0, i64 2, !dbg !269
  %3 = load float* %arrayidx5.i.i, align 4, !dbg !269, !tbaa !208
  call void @llvm.lifetime.end(i64 12, i8* %0) #5, !dbg !267
  call void @llvm.dbg.value(metadata !{float %add8.i.i}, i64 0, metadata !39), !dbg !260
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !42), !dbg !271
  call void @llvm.dbg.value(metadata !272, i64 0, metadata !43), !dbg !273
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !42), !dbg !274
  %cmp198 = icmp sgt i32 %natom, 0, !dbg !274
  br i1 %cmp198, label %for.cond3.preheader.lr.ph, label %for.end15, !dbg !274

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %mul4.i.i = fmul float %2, %2, !dbg !269
  %mul.i.i = fmul float %1, %1, !dbg !269
  %mul7.i.i = fmul float %3, %3, !dbg !269
  %add.i.i = fadd float %mul.i.i, %mul4.i.i, !dbg !269
  %add8.i.i = fadd float %add.i.i, %mul7.i.i, !dbg !269
  br label %for.body5.lr.ph, !dbg !274

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader.lr.ph, %for.inc13
  %indvars.iv224 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next225, %for.inc13 ]
  %longest.0203 = phi float [ %add8.i.i, %for.cond3.preheader.lr.ph ], [ %longest.2, %for.inc13 ]
  %max_j.0202 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %max_j.2, %for.inc13 ]
  %max_i.0201 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %max_i.2, %for.inc13 ]
  %arraydecay7 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv224, i64 0, !dbg !276
  br label %for.body5, !dbg !280

for.body5:                                        ; preds = %for.body5, %for.body5.lr.ph
  %indvars.iv220 = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next221, %for.body5 ]
  %longest.1194 = phi float [ %longest.0203, %for.body5.lr.ph ], [ %longest.2, %for.body5 ]
  %max_j.1193 = phi i32 [ %max_j.0202, %for.body5.lr.ph ], [ %max_j.2, %for.body5 ]
  %max_i.1192 = phi i32 [ %max_i.0201, %for.body5.lr.ph ], [ %max_i.2, %for.body5 ]
  %arraydecay10 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv220, i64 0, !dbg !276
  call void @llvm.lifetime.start(i64 12, i8* %0) #5, !dbg !281
  call void @llvm.dbg.value(metadata !262, i64 0, metadata !282) #5, !dbg !281
  call void @llvm.dbg.declare(metadata !{[3 x float]* %dx.i}, metadata !175) #5, !dbg !283
  call void @pbc_dx(float* %arraydecay7, float* %arraydecay10, float* %arraydecay.i) #7, !dbg !284
  call void @llvm.dbg.value(metadata !{float* %arraydecay.i}, i64 0, metadata !285) #5, !dbg !287
  %4 = load float* %arraydecay.i, align 4, !dbg !288, !tbaa !208
  %mul.i.i170 = fmul float %4, %4, !dbg !288
  %5 = load float* %arrayidx2.i.i, align 4, !dbg !288, !tbaa !208
  %mul4.i.i172 = fmul float %5, %5, !dbg !288
  %add.i.i173 = fadd float %mul.i.i170, %mul4.i.i172, !dbg !288
  %6 = load float* %arrayidx5.i.i, align 4, !dbg !288, !tbaa !208
  %mul7.i.i175 = fmul float %6, %6, !dbg !288
  %add8.i.i176 = fadd float %add.i.i173, %mul7.i.i175, !dbg !288
  call void @llvm.lifetime.end(i64 12, i8* %0) #5, !dbg !286
  call void @llvm.dbg.value(metadata !{float %add8.i.i176}, i64 0, metadata !40), !dbg !276
  %cmp12 = fcmp ogt float %add8.i.i176, %longest.1194, !dbg !289
  call void @llvm.dbg.value(metadata !290, i64 0, metadata !45), !dbg !291
  call void @llvm.dbg.value(metadata !290, i64 0, metadata !46), !dbg !293
  call void @llvm.dbg.value(metadata !{float %add8.i.i176}, i64 0, metadata !39), !dbg !294
  %7 = trunc i64 %indvars.iv224 to i32, !dbg !289
  %max_i.2 = select i1 %cmp12, i32 %7, i32 %max_i.1192, !dbg !289
  %8 = trunc i64 %indvars.iv220 to i32, !dbg !289
  %max_j.2 = select i1 %cmp12, i32 %8, i32 %max_j.1193, !dbg !289
  %longest.2 = select i1 %cmp12, float %add8.i.i176, float %longest.1194, !dbg !289
  %indvars.iv.next221 = add i64 %indvars.iv220, 1, !dbg !280
  %lftr.wideiv222 = trunc i64 %indvars.iv.next221 to i32, !dbg !280
  %exitcond223 = icmp eq i32 %lftr.wideiv222, %natom, !dbg !280
  br i1 %exitcond223, label %for.inc13, label %for.body5, !dbg !280

for.inc13:                                        ; preds = %for.body5
  %indvars.iv.next225 = add i64 %indvars.iv224, 1, !dbg !274
  %lftr.wideiv226 = trunc i64 %indvars.iv.next225 to i32, !dbg !274
  %exitcond227 = icmp eq i32 %lftr.wideiv226, %natom, !dbg !274
  br i1 %exitcond227, label %for.end15, label %for.body5.lr.ph, !dbg !274

for.end15:                                        ; preds = %for.inc13, %entry
  %max_j.0.lcssa = phi i32 [ 0, %entry ], [ %max_j.2, %for.inc13 ]
  %max_i.0.lcssa = phi i32 [ 0, %entry ], [ %max_i.2, %for.inc13 ]
  %idxprom16 = sext i32 %max_i.0.lcssa to i64, !dbg !295
  %arrayidx18 = getelementptr inbounds [3 x float]* %x, i64 %idxprom16, i64 2, !dbg !295
  %9 = load float* %arrayidx18, align 4, !dbg !295, !tbaa !208
  %idxprom19 = sext i32 %max_j.0.lcssa to i64, !dbg !295
  %arrayidx21 = getelementptr inbounds [3 x float]* %x, i64 %idxprom19, i64 2, !dbg !295
  %10 = load float* %arrayidx21, align 4, !dbg !295, !tbaa !208
  %cmp22 = fcmp ogt float %9, %10, !dbg !295
  call void @llvm.dbg.value(metadata !{i32 %max_i.0.lcssa}, i64 0, metadata !48), !dbg !296
  call void @llvm.dbg.value(metadata !{i32 %max_j.0.lcssa}, i64 0, metadata !45), !dbg !298
  call void @llvm.dbg.value(metadata !{i32 %max_i.0.lcssa}, i64 0, metadata !46), !dbg !299
  %max_i.3 = select i1 %cmp22, i32 %max_j.0.lcssa, i32 %max_i.0.lcssa, !dbg !295
  %11 = sext i32 %max_i.3 to i64
  %scevgep = getelementptr [3 x float]* %x, i64 %11, i64 0
  %scevgep219 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %origin218, i8* %scevgep219, i64 12, i32 4, i1 false), !dbg !300
  %max_j.3 = select i1 %cmp22, i32 %max_i.0.lcssa, i32 %max_j.0.lcssa, !dbg !295
  br i1 %cmp198, label %for.cond40.preheader, label %for.end54, !dbg !302

for.cond40.preheader:                             ; preds = %for.end15, %for.inc52
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %for.inc52 ], [ 0, %for.end15 ]
  br label %for.body42, !dbg !304

for.body42:                                       ; preds = %for.body42, %for.cond40.preheader
  %indvars.iv206 = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next207, %for.body42 ]
  %arrayidx44 = getelementptr inbounds [3 x float]* %origin, i64 0, i64 %indvars.iv206, !dbg !306
  %12 = load float* %arrayidx44, align 4, !dbg !306, !tbaa !208
  %arrayidx48 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv210, i64 %indvars.iv206, !dbg !306
  %13 = load float* %arrayidx48, align 4, !dbg !306, !tbaa !208
  %sub = fsub float %13, %12, !dbg !306
  store float %sub, float* %arrayidx48, align 4, !dbg !306, !tbaa !208
  %indvars.iv.next207 = add i64 %indvars.iv206, 1, !dbg !304
  %lftr.wideiv208 = trunc i64 %indvars.iv.next207 to i32, !dbg !304
  %exitcond209 = icmp eq i32 %lftr.wideiv208, 3, !dbg !304
  br i1 %exitcond209, label %for.inc52, label %for.body42, !dbg !304

for.inc52:                                        ; preds = %for.body42
  %indvars.iv.next211 = add i64 %indvars.iv210, 1, !dbg !302
  %lftr.wideiv212 = trunc i64 %indvars.iv.next211 to i32, !dbg !302
  %exitcond213 = icmp eq i32 %lftr.wideiv212, %natom, !dbg !302
  br i1 %exitcond213, label %for.end54, label %for.cond40.preheader, !dbg !302

for.end54:                                        ; preds = %for.inc52, %for.end15
  %idxprom55 = sext i32 %max_j.3 to i64, !dbg !307
  %arrayidx57 = getelementptr inbounds [3 x float]* %x, i64 %idxprom55, i64 2, !dbg !307
  %14 = load float* %arrayidx57, align 4, !dbg !307, !tbaa !208
  %arrayidx60 = getelementptr inbounds [3 x float]* %x, i64 %idxprom55, i64 1, !dbg !307
  %15 = load float* %arrayidx60, align 4, !dbg !307, !tbaa !208
  %div = fdiv float %14, %15, !dbg !307
  %conv = fpext float %div to double, !dbg !307
  %call61 = call double @atan(double %conv) #7, !dbg !307
  %sub62 = fadd double %call61, 0xBFF921FB54442D18, !dbg !307
  %conv63 = fptrunc double %sub62 to float, !dbg !307
  call void @llvm.dbg.value(metadata !{float %conv63}, i64 0, metadata !49), !dbg !307
  %16 = load float* %arrayidx57, align 4, !dbg !308, !tbaa !208
  %arrayidx69 = getelementptr inbounds [3 x float]* %x, i64 %idxprom55, i64 0, !dbg !308
  %17 = load float* %arrayidx69, align 4, !dbg !308, !tbaa !208
  %div70 = fdiv float %16, %17, !dbg !308
  %conv71 = fpext float %div70 to double, !dbg !308
  %call72 = call double @atan(double %conv71) #7, !dbg !308
  %sub73 = fsub double 0x3FF921FB54442D18, %call72, !dbg !308
  %conv74 = fptrunc double %sub73 to float, !dbg !308
  call void @llvm.dbg.value(metadata !{float %conv74}, i64 0, metadata !50), !dbg !308
  call void @rotate_conf(i32 %natom, [3 x float]* %x, [3 x float]* %v, float %conv63, float %conv74, float 0.000000e+00) #6, !dbg !309
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !310), !dbg !312
  %18 = load float* %arraydecay, align 4, !dbg !313, !tbaa !208
  tail call void @llvm.dbg.value(metadata !{float %18}, i64 0, metadata !314), !dbg !315
  %arrayidx1.i = getelementptr inbounds [3 x float]* %x, i64 0, i64 1, !dbg !313
  %19 = load float* %arrayidx1.i, align 4, !dbg !313, !tbaa !208
  tail call void @llvm.dbg.value(metadata !{float %19}, i64 0, metadata !314), !dbg !315
  call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !39), !dbg !311
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !316
  call void @llvm.dbg.value(metadata !272, i64 0, metadata !42), !dbg !317
  %cmp79182 = icmp sgt i32 %natom, 1, !dbg !317
  br i1 %cmp79182, label %for.body81.lr.ph, label %for.end92, !dbg !317

for.body81.lr.ph:                                 ; preds = %for.end54
  %mul.i4.i = fmul float %19, %19, !dbg !319
  %mul.i.i177 = fmul float %18, %18, !dbg !319
  %add.i = fadd float %mul.i.i177, %mul.i4.i, !dbg !313
  br label %for.body81, !dbg !317

for.body81:                                       ; preds = %for.body81, %for.body81.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body81.lr.ph ], [ %indvars.iv.next, %for.body81 ]
  %longest.3185 = phi float [ %add.i, %for.body81.lr.ph ], [ %longest.4, %for.body81 ]
  %max_i.4184 = phi i32 [ 0, %for.body81.lr.ph ], [ %max_i.5, %for.body81 ]
  %arraydecay84 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !320
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay84}, i64 0, metadata !322), !dbg !323
  %20 = load float* %arraydecay84, align 4, !dbg !324, !tbaa !208
  tail call void @llvm.dbg.value(metadata !{float %20}, i64 0, metadata !325), !dbg !326
  %mul.i.i178 = fmul float %20, %20, !dbg !327
  %arrayidx1.i179 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !324
  %21 = load float* %arrayidx1.i179, align 4, !dbg !324, !tbaa !208
  tail call void @llvm.dbg.value(metadata !{float %21}, i64 0, metadata !325), !dbg !326
  %mul.i4.i180 = fmul float %21, %21, !dbg !327
  %add.i181 = fadd float %mul.i.i178, %mul.i4.i180, !dbg !324
  call void @llvm.dbg.value(metadata !{float %add.i181}, i64 0, metadata !41), !dbg !320
  %cmp86 = fcmp ogt float %add.i181, %longest.3185, !dbg !328
  call void @llvm.dbg.value(metadata !{float %add.i181}, i64 0, metadata !39), !dbg !329
  call void @llvm.dbg.value(metadata !290, i64 0, metadata !45), !dbg !331
  %22 = trunc i64 %indvars.iv to i32, !dbg !328
  %max_i.5 = select i1 %cmp86, i32 %22, i32 %max_i.4184, !dbg !328
  %longest.4 = select i1 %cmp86, float %add.i181, float %longest.3185, !dbg !328
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !317
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !317
  %exitcond = icmp eq i32 %lftr.wideiv, %natom, !dbg !317
  br i1 %exitcond, label %for.cond78.for.end92_crit_edge, label %for.body81, !dbg !317

for.cond78.for.end92_crit_edge:                   ; preds = %for.body81
  %phitmp = sext i32 %max_i.5 to i64, !dbg !317
  %arrayidx95.phi.trans.insert = getelementptr inbounds [3 x float]* %x, i64 %phitmp, i64 1
  %.pre = load float* %arrayidx95.phi.trans.insert, align 4, !dbg !332, !tbaa !208
  %arrayidx98.phi.trans.insert = getelementptr inbounds [3 x float]* %x, i64 %phitmp, i64 0
  %.pre228 = load float* %arrayidx98.phi.trans.insert, align 4, !dbg !332, !tbaa !208
  br label %for.end92, !dbg !317

for.end92:                                        ; preds = %for.cond78.for.end92_crit_edge, %for.end54
  %23 = phi float [ %.pre228, %for.cond78.for.end92_crit_edge ], [ %18, %for.end54 ]
  %24 = phi float [ %.pre, %for.cond78.for.end92_crit_edge ], [ %19, %for.end54 ]
  %div99 = fdiv float %24, %23, !dbg !332
  %conv100 = fpext float %div99 to double, !dbg !332
  %call101 = call double @atan(double %conv100) #7, !dbg !332
  %sub102 = fadd double %call101, 0xBFF921FB54442D18, !dbg !332
  %conv103 = fptrunc double %sub102 to float, !dbg !332
  call void @llvm.dbg.value(metadata !{float %conv103}, i64 0, metadata !51), !dbg !332
  call void @rotate_conf(i32 %natom, [3 x float]* %x, [3 x float]* %v, float 0.000000e+00, float 0.000000e+00, float %conv103) #6, !dbg !333
  store float %conv63, float* %angle, align 4, !dbg !334, !tbaa !208
  %arrayidx105 = getelementptr inbounds float* %angle, i64 1, !dbg !335
  store float %conv74, float* %arrayidx105, align 4, !dbg !335, !tbaa !208
  %arrayidx106 = getelementptr inbounds float* %angle, i64 2, !dbg !336
  store float %conv103, float* %arrayidx106, align 4, !dbg !336, !tbaa !208
  ret void, !dbg !337
}

; Function Attrs: nounwind optsize
declare double @atan(double) #3

; Function Attrs: nounwind optsize uwtable
define void @genconf(%struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, [3 x float]* %v, float* nocapture %r, [3 x float]* nocapture %box, i32* nocapture %n_box) #2 {
entry:
  %delta = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !133), !dbg !338
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !134), !dbg !338
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !135), !dbg !338
  call void @llvm.dbg.value(metadata !{float* %r}, i64 0, metadata !136), !dbg !338
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !137), !dbg !338
  call void @llvm.dbg.value(metadata !{i32* %n_box}, i64 0, metadata !138), !dbg !338
  call void @llvm.dbg.declare(metadata !{[3 x float]* %delta}, metadata !147), !dbg !339
  %0 = load i32* %n_box, align 4, !dbg !340, !tbaa !341
  %arrayidx1 = getelementptr inbounds i32* %n_box, i64 1, !dbg !340
  %1 = load i32* %arrayidx1, align 4, !dbg !340, !tbaa !341
  %mul = mul i32 %1, %0, !dbg !340
  %arrayidx2 = getelementptr inbounds i32* %n_box, i64 2, !dbg !340
  %2 = load i32* %arrayidx2, align 4, !dbg !340, !tbaa !341
  %mul3 = mul i32 %mul, %2, !dbg !340
  call void @llvm.dbg.value(metadata !{i32 %mul3}, i64 0, metadata !148), !dbg !340
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !342, !tbaa !343
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %3), !dbg !342
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !145), !dbg !344
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !140), !dbg !345
  %5 = load i32* %n_box, align 4, !dbg !345, !tbaa !341
  %cmp247 = icmp sgt i32 %5, 0, !dbg !345
  br i1 %cmp247, label %for.body.lr.ph, label %entry.for.cond83.preheader_crit_edge, !dbg !345

entry.for.cond83.preheader_crit_edge:             ; preds = %entry
  %nr87.pre = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !347
  br label %for.cond83.preheader, !dbg !345

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx6 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !348
  %arrayidx8 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 0, !dbg !348
  %6 = load i32* %arrayidx1, align 4, !dbg !350, !tbaa !341
  %cmp11243 = icmp sgt i32 %6, 0, !dbg !350
  %arrayidx16 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !352
  %arrayidx18 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 1, !dbg !352
  %arrayidx26 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !354
  %arrayidx28 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 2, !dbg !354
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !357
  %tobool = icmp eq [3 x float]* %v, null, !dbg !358
  br label %for.body, !dbg !345

for.cond83.preheader:                             ; preds = %for.inc80, %entry.for.cond83.preheader_crit_edge
  %nr87.pre-phi = phi i32* [ %nr87.pre, %entry.for.cond83.preheader_crit_edge ], [ %nr, %for.inc80 ], !dbg !347
  %cmp84232 = icmp sgt i32 %mul3, 1, !dbg !361
  %7 = load i32* %nr87.pre-phi, align 4, !dbg !347, !tbaa !341
  %nres = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !362
  br i1 %cmp84232, label %for.body86.lr.ph, label %for.end128, !dbg !361

for.body86.lr.ph:                                 ; preds = %for.cond83.preheader
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !363
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !366
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !367
  br label %for.body86, !dbg !361

for.body:                                         ; preds = %for.inc80, %for.body.lr.ph
  %ix.0249 = phi i32 [ 0, %for.body.lr.ph ], [ %inc81, %for.inc80 ]
  %imol.0248 = phi i32 [ 0, %for.body.lr.ph ], [ %imol.1.lcssa, %for.inc80 ]
  %conv = sitofp i32 %ix.0249 to float, !dbg !348
  %8 = load float* %arrayidx6, align 4, !dbg !348, !tbaa !208
  %mul7 = fmul float %conv, %8, !dbg !348
  store float %mul7, float* %arrayidx8, align 4, !dbg !348, !tbaa !208
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !141), !dbg !350
  br i1 %cmp11243, label %for.body13.lr.ph, label %for.inc80, !dbg !350

for.body13.lr.ph:                                 ; preds = %for.body
  %9 = load i32* %arrayidx2, align 4, !dbg !368, !tbaa !341
  %cmp21239 = icmp sgt i32 %9, 0, !dbg !368
  br label %for.body13, !dbg !350

for.body13:                                       ; preds = %for.inc77, %for.body13.lr.ph
  %iy.0245 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc78, %for.inc77 ]
  %imol.1244 = phi i32 [ %imol.0248, %for.body13.lr.ph ], [ %imol.2.lcssa, %for.inc77 ]
  %conv14 = sitofp i32 %iy.0245 to float, !dbg !352
  %10 = load float* %arrayidx16, align 4, !dbg !352, !tbaa !208
  %mul17 = fmul float %conv14, %10, !dbg !352
  store float %mul17, float* %arrayidx18, align 4, !dbg !352, !tbaa !208
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !142), !dbg !368
  br i1 %cmp21239, label %for.body23.lr.ph, label %for.inc77, !dbg !368

for.body23.lr.ph:                                 ; preds = %for.body13
  %11 = load i32* %nr, align 4, !dbg !357, !tbaa !341
  %cmp32237 = icmp sgt i32 %11, 0, !dbg !369
  %12 = sext i32 %imol.1244 to i64
  %13 = icmp sgt i32 %9, 1, !dbg !368
  %smax = select i1 %13, i32 %9, i32 1, !dbg !368
  br label %for.body23, !dbg !368

for.body23:                                       ; preds = %for.end72.for.body23_crit_edge, %for.body23.lr.ph
  %indvars.iv274 = phi i64 [ %12, %for.body23.lr.ph ], [ %indvars.iv.next275, %for.end72.for.body23_crit_edge ]
  %iz.0241 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc75, %for.end72.for.body23_crit_edge ]
  %conv24 = sitofp i32 %iz.0241 to float, !dbg !354
  %14 = load float* %arrayidx26, align 4, !dbg !354, !tbaa !208
  %mul27 = fmul float %conv24, %14, !dbg !354
  store float %mul27, float* %arrayidx28, align 4, !dbg !354, !tbaa !208
  call void @llvm.dbg.value(metadata !{i32 %mul29}, i64 0, metadata !146), !dbg !357
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !139), !dbg !369
  br i1 %cmp32237, label %for.cond35.preheader.lr.ph, label %for.end72, !dbg !369

for.cond35.preheader.lr.ph:                       ; preds = %for.body23
  %15 = trunc i64 %indvars.iv274 to i32, !dbg !357
  %mul29 = mul nsw i32 %11, %15, !dbg !357
  %16 = sext i32 %mul29 to i64, !dbg !369
  br label %for.cond35.preheader, !dbg !369

for.cond35.preheader:                             ; preds = %for.cond35.preheader.lr.ph, %if.end
  %indvars.iv268 = phi i64 [ 0, %for.cond35.preheader.lr.ph ], [ %indvars.iv.next269, %if.end ]
  %17 = add nsw i64 %indvars.iv268, %16, !dbg !370
  br label %for.body38, !dbg !372

for.body38:                                       ; preds = %for.body38, %for.cond35.preheader
  %indvars.iv259 = phi i64 [ 0, %for.cond35.preheader ], [ %indvars.iv.next260, %for.body38 ]
  %arrayidx39 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 %indvars.iv259, !dbg !370
  %18 = load float* %arrayidx39, align 4, !dbg !370, !tbaa !208
  %arrayidx43 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv268, i64 %indvars.iv259, !dbg !370
  %19 = load float* %arrayidx43, align 4, !dbg !370, !tbaa !208
  %add = fadd float %18, %19, !dbg !370
  %arrayidx48 = getelementptr inbounds [3 x float]* %x, i64 %17, i64 %indvars.iv259, !dbg !370
  store float %add, float* %arrayidx48, align 4, !dbg !370, !tbaa !208
  %indvars.iv.next260 = add i64 %indvars.iv259, 1, !dbg !372
  %lftr.wideiv261 = trunc i64 %indvars.iv.next260 to i32, !dbg !372
  %exitcond262 = icmp eq i32 %lftr.wideiv261, 3, !dbg !372
  br i1 %exitcond262, label %for.end, label %for.body38, !dbg !372

for.end:                                          ; preds = %for.body38
  br i1 %tobool, label %if.end, label %for.body52, !dbg !358

for.body52:                                       ; preds = %for.end, %for.body52
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %for.body52 ], [ 0, %for.end ]
  %arrayidx56 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv268, i64 %indvars.iv263, !dbg !373
  %20 = load float* %arrayidx56, align 4, !dbg !373, !tbaa !208
  %arrayidx61 = getelementptr inbounds [3 x float]* %v, i64 %17, i64 %indvars.iv263, !dbg !373
  store float %20, float* %arrayidx61, align 4, !dbg !373, !tbaa !208
  %indvars.iv.next264 = add i64 %indvars.iv263, 1, !dbg !375
  %lftr.wideiv265 = trunc i64 %indvars.iv.next264 to i32, !dbg !375
  %exitcond266 = icmp eq i32 %lftr.wideiv265, 3, !dbg !375
  br i1 %exitcond266, label %if.end, label %for.body52, !dbg !375

if.end:                                           ; preds = %for.body52, %for.end
  %arrayidx66 = getelementptr inbounds float* %r, i64 %indvars.iv268, !dbg !376
  %21 = load float* %arrayidx66, align 4, !dbg !376, !tbaa !208
  %arrayidx69 = getelementptr inbounds float* %r, i64 %17, !dbg !376
  store float %21, float* %arrayidx69, align 4, !dbg !376, !tbaa !208
  %indvars.iv.next269 = add i64 %indvars.iv268, 1, !dbg !369
  %22 = trunc i64 %indvars.iv.next269 to i32, !dbg !369
  %cmp32 = icmp slt i32 %22, %11, !dbg !369
  br i1 %cmp32, label %for.cond35.preheader, label %for.end72, !dbg !369

for.end72:                                        ; preds = %if.end, %for.body23
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !145), !dbg !377
  %inc75 = add nsw i32 %iz.0241, 1, !dbg !368
  call void @llvm.dbg.value(metadata !{i32 %inc75}, i64 0, metadata !142), !dbg !368
  %cmp21 = icmp slt i32 %inc75, %9, !dbg !368
  br i1 %cmp21, label %for.end72.for.body23_crit_edge, label %for.cond19.for.inc77_crit_edge, !dbg !368

for.end72.for.body23_crit_edge:                   ; preds = %for.end72
  %indvars.iv.next275 = add i64 %indvars.iv274, 1, !dbg !368
  br label %for.body23, !dbg !368

for.cond19.for.inc77_crit_edge:                   ; preds = %for.end72
  %23 = add i32 %imol.1244, %smax, !dbg !368
  br label %for.inc77, !dbg !368

for.inc77:                                        ; preds = %for.cond19.for.inc77_crit_edge, %for.body13
  %imol.2.lcssa = phi i32 [ %23, %for.cond19.for.inc77_crit_edge ], [ %imol.1244, %for.body13 ]
  %inc78 = add nsw i32 %iy.0245, 1, !dbg !350
  call void @llvm.dbg.value(metadata !{i32 %inc78}, i64 0, metadata !141), !dbg !350
  %cmp11 = icmp slt i32 %inc78, %6, !dbg !350
  br i1 %cmp11, label %for.body13, label %for.inc80, !dbg !350

for.inc80:                                        ; preds = %for.inc77, %for.body
  %imol.1.lcssa = phi i32 [ %imol.0248, %for.body ], [ %imol.2.lcssa, %for.inc77 ]
  %inc81 = add nsw i32 %ix.0249, 1, !dbg !345
  call void @llvm.dbg.value(metadata !{i32 %inc81}, i64 0, metadata !140), !dbg !345
  %cmp = icmp slt i32 %inc81, %5, !dbg !345
  br i1 %cmp, label %for.body, label %for.cond83.preheader, !dbg !345

for.body86:                                       ; preds = %for.inc126, %for.body86.lr.ph
  %24 = phi i32 [ %7, %for.body86.lr.ph ], [ %37, %for.inc126 ]
  %i.1233 = phi i32 [ 1, %for.body86.lr.ph ], [ %inc127, %for.inc126 ]
  call void @llvm.dbg.value(metadata !{i32 %mul88}, i64 0, metadata !149), !dbg !347
  %25 = load i32* %nres, align 4, !dbg !362, !tbaa !341
  %mul89 = mul nsw i32 %25, %i.1233, !dbg !362
  call void @llvm.dbg.value(metadata !{i32 %mul89}, i64 0, metadata !152), !dbg !362
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !144), !dbg !378
  %cmp92230 = icmp sgt i32 %24, 0, !dbg !378
  br i1 %cmp92230, label %for.body94.lr.ph, label %for.inc126, !dbg !378

for.body94.lr.ph:                                 ; preds = %for.body86
  %mul88 = mul nsw i32 %24, %i.1233, !dbg !347
  %26 = sext i32 %mul88 to i64, !dbg !378
  br label %for.body94, !dbg !378

for.body94:                                       ; preds = %for.body94.lr.ph, %for.body94
  %indvars.iv254 = phi i64 [ 0, %for.body94.lr.ph ], [ %indvars.iv.next255, %for.body94 ]
  %27 = load i8**** %atomname, align 8, !dbg !363, !tbaa !343
  %arrayidx96 = getelementptr inbounds i8*** %27, i64 %indvars.iv254, !dbg !363
  %28 = load i8*** %arrayidx96, align 8, !dbg !363, !tbaa !343
  %29 = add nsw i64 %indvars.iv254, %26, !dbg !363
  %arrayidx100 = getelementptr inbounds i8*** %27, i64 %29, !dbg !363
  store i8** %28, i8*** %arrayidx100, align 8, !dbg !363, !tbaa !343
  %30 = load %struct.t_atom** %atom, align 8, !dbg !366, !tbaa !343
  %resnr = getelementptr inbounds %struct.t_atom* %30, i64 %indvars.iv254, i32 7, !dbg !366
  %31 = load i32* %resnr, align 4, !dbg !366, !tbaa !341
  %add103 = add nsw i32 %31, %mul89, !dbg !366
  %resnr108 = getelementptr inbounds %struct.t_atom* %30, i64 %29, i32 7, !dbg !366
  store i32 %add103, i32* %resnr108, align 4, !dbg !366, !tbaa !341
  %32 = load i32* %resnr, align 4, !dbg !367, !tbaa !341
  %idxprom113 = sext i32 %32 to i64, !dbg !367
  %33 = load i8**** %resname, align 8, !dbg !367, !tbaa !343
  %arrayidx114 = getelementptr inbounds i8*** %33, i64 %idxprom113, !dbg !367
  %34 = load i8*** %arrayidx114, align 8, !dbg !367, !tbaa !343
  %idxprom120 = sext i32 %add103 to i64, !dbg !367
  %arrayidx122 = getelementptr inbounds i8*** %33, i64 %idxprom120, !dbg !367
  store i8** %34, i8*** %arrayidx122, align 8, !dbg !367, !tbaa !343
  %indvars.iv.next255 = add i64 %indvars.iv254, 1, !dbg !378
  %35 = load i32* %nr87.pre-phi, align 4, !dbg !378, !tbaa !341
  %36 = trunc i64 %indvars.iv.next255 to i32, !dbg !378
  %cmp92 = icmp slt i32 %36, %35, !dbg !378
  br i1 %cmp92, label %for.body94, label %for.inc126, !dbg !378

for.inc126:                                       ; preds = %for.body94, %for.body86
  %37 = phi i32 [ %24, %for.body86 ], [ %35, %for.body94 ], !dbg !361
  %inc127 = add nsw i32 %i.1233, 1, !dbg !361
  call void @llvm.dbg.value(metadata !{i32 %inc127}, i64 0, metadata !139), !dbg !361
  %exitcond258 = icmp eq i32 %inc127, %mul3, !dbg !361
  br i1 %exitcond258, label %for.end128, label %for.body86, !dbg !361

for.end128:                                       ; preds = %for.cond83.preheader, %for.inc126
  %.lcssa = phi i32 [ %37, %for.inc126 ], [ %7, %for.cond83.preheader ]
  %mul130 = mul nsw i32 %.lcssa, %mul3, !dbg !379
  store i32 %mul130, i32* %nr87.pre-phi, align 4, !dbg !379, !tbaa !341
  %38 = load i32* %nres, align 4, !dbg !380, !tbaa !341
  %mul132 = mul nsw i32 %38, %mul3, !dbg !380
  store i32 %mul132, i32* %nres, align 4, !dbg !380, !tbaa !341
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !139), !dbg !381
  br label %for.cond137.preheader, !dbg !381

for.cond137.preheader:                            ; preds = %for.inc152, %for.end128
  %indvars.iv250 = phi i64 [ 0, %for.end128 ], [ %indvars.iv.next251, %for.inc152 ]
  br label %for.body140, !dbg !383

for.body140:                                      ; preds = %for.body140, %for.cond137.preheader
  %indvars.iv = phi i64 [ 0, %for.cond137.preheader ], [ %indvars.iv.next, %for.body140 ]
  %arrayidx142 = getelementptr inbounds i32* %n_box, i64 %indvars.iv, !dbg !385
  %39 = load i32* %arrayidx142, align 4, !dbg !385, !tbaa !341
  %conv143 = sitofp i32 %39 to float, !dbg !385
  %arrayidx147 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv250, !dbg !385
  %40 = load float* %arrayidx147, align 4, !dbg !385, !tbaa !208
  %mul148 = fmul float %40, %conv143, !dbg !385
  store float %mul148, float* %arrayidx147, align 4, !dbg !385, !tbaa !208
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !383
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !383
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !383
  br i1 %exitcond, label %for.inc152, label %for.body140, !dbg !383

for.inc152:                                       ; preds = %for.body140
  %indvars.iv.next251 = add i64 %indvars.iv250, 1, !dbg !381
  %lftr.wideiv252 = trunc i64 %indvars.iv.next251 to i32, !dbg !381
  %exitcond253 = icmp eq i32 %lftr.wideiv252, 3, !dbg !381
  br i1 %exitcond253, label %for.end154, label %for.cond137.preheader, !dbg !381

for.end154:                                       ; preds = %for.inc152
  ret void, !dbg !386
}

; Function Attrs: nounwind optsize uwtable
define void @gen_box(i32 %NTB, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* nocapture %box, float* nocapture %box_space, i32 %bCenter) #2 {
entry:
  %x231 = bitcast [3 x float]* %x to i8*
  %xmin = alloca [3 x float], align 4
  %xmin232 = bitcast [3 x float]* %xmin to i8*
  %xmax = alloca [3 x float], align 4
  %xmax230 = bitcast [3 x float]* %xmax to i8*
  call void @llvm.dbg.value(metadata !{i32 %NTB}, i64 0, metadata !157), !dbg !387
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !158), !dbg !387
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !159), !dbg !387
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !160), !dbg !387
  call void @llvm.dbg.value(metadata !{float* %box_space}, i64 0, metadata !161), !dbg !387
  call void @llvm.dbg.value(metadata !{i32 %bCenter}, i64 0, metadata !162), !dbg !388
  call void @llvm.dbg.declare(metadata !{[3 x float]* %xmin}, metadata !165), !dbg !389
  call void @llvm.dbg.declare(metadata !{[3 x float]* %xmax}, metadata !166), !dbg !389
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !164), !dbg !390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmax230, i8* %x231, i64 12, i32 4, i1 false), !dbg !392
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmin232, i8* %x231, i64 12, i32 4, i1 false), !dbg !392
  %cmp7199 = icmp sgt i32 %natoms, 1, !dbg !393
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !164), !dbg !395
  br i1 %cmp7199, label %for.cond9.preheader, label %for.body54, !dbg !393

for.cond9.preheader:                              ; preds = %entry, %for.inc49
  %indvars.iv222 = phi i64 [ %indvars.iv.next223, %for.inc49 ], [ 1, %entry ]
  br label %for.body11, !dbg !395

for.body11:                                       ; preds = %for.body11, %for.cond9.preheader
  %indvars.iv218 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next219, %for.body11 ]
  %arrayidx13 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv218, !dbg !397
  %0 = load float* %arrayidx13, align 4, !dbg !397, !tbaa !208
  %arrayidx17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv222, i64 %indvars.iv218, !dbg !397
  %1 = load float* %arrayidx17, align 4, !dbg !397, !tbaa !208
  %cmp18 = fcmp olt float %0, %1, !dbg !397
  %. = select i1 %cmp18, float %0, float %1, !dbg !397
  store float %., float* %arrayidx13, align 4, !dbg !397, !tbaa !208
  %arrayidx28 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv218, !dbg !399
  %2 = load float* %arrayidx28, align 4, !dbg !399, !tbaa !208
  %cmp33 = fcmp ogt float %2, %1, !dbg !399
  %cond43 = select i1 %cmp33, float %2, float %1, !dbg !399
  store float %cond43, float* %arrayidx28, align 4, !dbg !399, !tbaa !208
  %indvars.iv.next219 = add i64 %indvars.iv218, 1, !dbg !395
  %lftr.wideiv220 = trunc i64 %indvars.iv.next219 to i32, !dbg !395
  %exitcond221 = icmp eq i32 %lftr.wideiv220, 3, !dbg !395
  br i1 %exitcond221, label %for.inc49, label %for.body11, !dbg !395

for.inc49:                                        ; preds = %for.body11
  %indvars.iv.next223 = add i64 %indvars.iv222, 1, !dbg !393
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !164), !dbg !395
  %lftr.wideiv224 = trunc i64 %indvars.iv.next223 to i32, !dbg !393
  %exitcond225 = icmp eq i32 %lftr.wideiv224, %natoms, !dbg !393
  br i1 %exitcond225, label %for.body54, label %for.cond9.preheader, !dbg !393

for.body54:                                       ; preds = %entry, %for.inc49, %for.body54
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %for.body54 ], [ 0, %for.inc49 ], [ 0, %entry ]
  %arrayidx56 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv214, !dbg !400
  %3 = load float* %arrayidx56, align 4, !dbg !400, !tbaa !208
  %arrayidx58 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv214, !dbg !400
  %4 = load float* %arrayidx58, align 4, !dbg !400, !tbaa !208
  %sub = fsub float %3, %4, !dbg !400
  %arrayidx60 = getelementptr inbounds float* %box_space, i64 %indvars.iv214, !dbg !400
  %5 = load float* %arrayidx60, align 4, !dbg !400, !tbaa !208
  %mul = fmul float %5, 2.000000e+00, !dbg !400
  %add = fadd float %sub, %mul, !dbg !400
  %arrayidx64 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv214, i64 %indvars.iv214, !dbg !400
  store float %add, float* %arrayidx64, align 4, !dbg !400, !tbaa !208
  %indvars.iv.next215 = add i64 %indvars.iv214, 1, !dbg !402
  %lftr.wideiv216 = trunc i64 %indvars.iv.next215 to i32, !dbg !402
  %exitcond217 = icmp eq i32 %lftr.wideiv216, 3, !dbg !402
  br i1 %exitcond217, label %for.end67, label %for.body54, !dbg !402

for.end67:                                        ; preds = %for.body54
  %cmp68 = icmp eq i32 %NTB, 1, !dbg !403
  br i1 %cmp68, label %if.then, label %if.end, !dbg !403

if.then:                                          ; preds = %for.end67
  %arrayidx70 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !404
  %6 = load float* %arrayidx70, align 4, !dbg !404, !tbaa !208
  call void @llvm.dbg.value(metadata !{float %6}, i64 0, metadata !167), !dbg !404
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !164), !dbg !406
  br label %for.body73, !dbg !406

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %if.then
  %7 = phi float [ %6, %if.then ], [ %.pre, %for.body73.for.body73_crit_edge ]
  %indvars.iv210 = phi i64 [ 1, %if.then ], [ %phitmp, %for.body73.for.body73_crit_edge ]
  %max_box.0196 = phi float [ %6, %if.then ], [ %max_box.0., %for.body73.for.body73_crit_edge ]
  %cmp78 = fcmp ogt float %max_box.0196, %7, !dbg !408
  %max_box.0. = select i1 %cmp78, float %max_box.0196, float %7, !dbg !408
  call void @llvm.dbg.value(metadata !{float %max_box.0.}, i64 0, metadata !167), !dbg !408
  %lftr.wideiv212 = trunc i64 %indvars.iv210 to i32, !dbg !406
  %exitcond213 = icmp eq i32 %lftr.wideiv212, 3, !dbg !406
  br i1 %exitcond213, label %for.body92, label %for.body73.for.body73_crit_edge, !dbg !406

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  %arrayidx77.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv210, i64 %indvars.iv210
  %.pre = load float* %arrayidx77.phi.trans.insert, align 4, !dbg !408, !tbaa !208
  %phitmp = add i64 %indvars.iv210, 1, !dbg !406
  br label %for.body73, !dbg !406

for.body92:                                       ; preds = %for.body73, %for.body92
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %for.body92 ], [ 0, %for.body73 ]
  %arrayidx96 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv206, i64 %indvars.iv206, !dbg !409
  store float %max_box.0., float* %arrayidx96, align 4, !dbg !409, !tbaa !208
  %indvars.iv.next207 = add i64 %indvars.iv206, 1, !dbg !411
  %lftr.wideiv208 = trunc i64 %indvars.iv.next207 to i32, !dbg !411
  %exitcond209 = icmp eq i32 %lftr.wideiv208, 3, !dbg !411
  br i1 %exitcond209, label %if.end, label %for.body92, !dbg !411

if.end:                                           ; preds = %for.body92, %for.end67
  %tobool = icmp ne i32 %bCenter, 0, !dbg !412
  %cmp102192 = icmp sgt i32 %natoms, 0, !dbg !413
  %or.cond = and i1 %tobool, %cmp102192, !dbg !412
  br i1 %or.cond, label %for.cond104.preheader, label %if.end131, !dbg !412

for.cond104.preheader:                            ; preds = %if.end, %for.inc128
  %indvars.iv202 = phi i64 [ %indvars.iv.next203, %for.inc128 ], [ 0, %if.end ]
  br label %for.body106, !dbg !415

for.body106:                                      ; preds = %for.body106, %for.cond104.preheader
  %indvars.iv = phi i64 [ 0, %for.cond104.preheader ], [ %indvars.iv.next, %for.body106 ]
  %arrayidx110 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv, !dbg !417
  %8 = load float* %arrayidx110, align 4, !dbg !417, !tbaa !208
  %arrayidx112 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv, !dbg !417
  %9 = load float* %arrayidx112, align 4, !dbg !417, !tbaa !208
  %sub113 = fsub float %8, %9, !dbg !417
  %arrayidx115 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv, !dbg !417
  %10 = load float* %arrayidx115, align 4, !dbg !417, !tbaa !208
  %sub116 = fsub float %sub113, %10, !dbg !417
  %conv = fpext float %sub116 to double, !dbg !417
  %mul117 = fmul double %conv, 5.000000e-01, !dbg !417
  %arrayidx121 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv202, i64 %indvars.iv, !dbg !417
  %11 = load float* %arrayidx121, align 4, !dbg !417, !tbaa !208
  %conv122 = fpext float %11 to double, !dbg !417
  %add123 = fadd double %conv122, %mul117, !dbg !417
  %conv124 = fptrunc double %add123 to float, !dbg !417
  store float %conv124, float* %arrayidx121, align 4, !dbg !417, !tbaa !208
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !415
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !415
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !415
  br i1 %exitcond, label %for.inc128, label %for.body106, !dbg !415

for.inc128:                                       ; preds = %for.body106
  %indvars.iv.next203 = add i64 %indvars.iv202, 1, !dbg !413
  %lftr.wideiv204 = trunc i64 %indvars.iv.next203 to i32, !dbg !413
  %exitcond205 = icmp eq i32 %lftr.wideiv204, %natoms, !dbg !413
  br i1 %exitcond205, label %if.end131, label %for.cond104.preheader, !dbg !413

if.end131:                                        ; preds = %if.end, %for.inc128
  ret void, !dbg !419
}

; Function Attrs: optsize
declare void @pbc_dx(float*, float*, float*) #4

; Function Attrs: nounwind optsize
declare double @cos(double) #3

; Function Attrs: nounwind optsize
declare double @sin(double) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !13, metadata !29, metadata !52, metadata !153, metadata !168, metadata !176, metadata !181, metadata !193, metadata !201}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"distance_to_z", metadata !"distance_to_z", metadata !"", i32 49, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float*)* @distance_to_z, null, null, metadata !11, i32 50} ; [ DW_TAG_subprogram ] [line 49] [def] [scope 50] [distance_to_z]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !10}
!8 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!9 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777265, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 49]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rotate_conf", metadata !"rotate_conf", metadata !"", i32 78, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, [3 x float]*, [3 x float]*, float, float, float)* @rotate_conf, null, null, metadata !22, i32 79} ; [ DW_TAG_subprogram ] [line 78] [def] [scope 79] [rotate_conf]
!14 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{null, metadata !16, metadata !17, metadata !17, metadata !8, metadata !8, metadata !8}
!16 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!18 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!19 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !8, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28}
!23 = metadata !{i32 786689, metadata !13, metadata !"natom", metadata !5, i32 16777294, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natom] [line 78]
!24 = metadata !{i32 786689, metadata !13, metadata !"x", metadata !5, i32 33554510, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 78]
!25 = metadata !{i32 786689, metadata !13, metadata !"v", metadata !5, i32 50331726, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 78]
!26 = metadata !{i32 786689, metadata !13, metadata !"alfa", metadata !5, i32 67108942, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alfa] [line 78]
!27 = metadata !{i32 786689, metadata !13, metadata !"beta", metadata !5, i32 83886158, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [beta] [line 78]
!28 = metadata !{i32 786689, metadata !13, metadata !"gamma", metadata !5, i32 100663374, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gamma] [line 78]
!29 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"orient", metadata !"orient", metadata !"", i32 87, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, [3 x float]*, [3 x float]*, float*, [3 x float]*)* @orient, null, null, metadata !33, i32 88} ; [ DW_TAG_subprogram ] [line 87] [def] [scope 88] [orient]
!30 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{null, metadata !16, metadata !17, metadata !17, metadata !10, metadata !32}
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51}
!34 = metadata !{i32 786689, metadata !29, metadata !"natom", metadata !5, i32 16777303, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natom] [line 87]
!35 = metadata !{i32 786689, metadata !29, metadata !"x", metadata !5, i32 33554519, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 87]
!36 = metadata !{i32 786689, metadata !29, metadata !"v", metadata !5, i32 50331735, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 87]
!37 = metadata !{i32 786689, metadata !29, metadata !"angle", metadata !5, i32 67108951, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [angle] [line 87]
!38 = metadata !{i32 786689, metadata !29, metadata !"box", metadata !5, i32 83886167, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 87]
!39 = metadata !{i32 786688, metadata !29, metadata !"longest", metadata !5, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [longest] [line 89]
!40 = metadata !{i32 786688, metadata !29, metadata !"rij", metadata !5, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rij] [line 89]
!41 = metadata !{i32 786688, metadata !29, metadata !"rzi", metadata !5, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rzi] [line 89]
!42 = metadata !{i32 786688, metadata !29, metadata !"i", metadata !5, i32 90, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 90]
!43 = metadata !{i32 786688, metadata !29, metadata !"j", metadata !5, i32 90, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 90]
!44 = metadata !{i32 786688, metadata !29, metadata !"m", metadata !5, i32 90, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 90]
!45 = metadata !{i32 786688, metadata !29, metadata !"max_i", metadata !5, i32 90, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_i] [line 90]
!46 = metadata !{i32 786688, metadata !29, metadata !"max_j", metadata !5, i32 90, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_j] [line 90]
!47 = metadata !{i32 786688, metadata !29, metadata !"origin", metadata !5, i32 91, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [origin] [line 91]
!48 = metadata !{i32 786688, metadata !29, metadata !"temp", metadata !5, i32 92, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 92]
!49 = metadata !{i32 786688, metadata !29, metadata !"alfa", metadata !5, i32 93, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alfa] [line 93]
!50 = metadata !{i32 786688, metadata !29, metadata !"beta", metadata !5, i32 93, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [beta] [line 93]
!51 = metadata !{i32 786688, metadata !29, metadata !"gamma", metadata !5, i32 93, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gamma] [line 93]
!52 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"genconf", metadata !"genconf", metadata !"", i32 150, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_atoms*, [3 x float]*, [3 x float]*, float*, [3 x float]*, i32*)* @genconf, null, null, metadata !132, i32 151} ; [ DW_TAG_subprogram ] [line 150] [def] [scope 151] [genconf]
!53 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{null, metadata !55, metadata !17, metadata !17, metadata !10, metadata !32, metadata !114}
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atoms]
!56 = metadata !{i32 786454, metadata !1, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!57 = metadata !{i32 786451, metadata !58, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !59, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!58 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!59 = metadata !{metadata !60, metadata !61, metadata !81, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !107, metadata !115}
!60 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!61 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!63 = metadata !{i32 786454, metadata !58, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!64 = metadata !{i32 786451, metadata !58, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !65, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !72, metadata !73, metadata !74, metadata !75, metadata !80}
!66 = metadata !{i32 786445, metadata !58, metadata !64, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!67 = metadata !{i32 786445, metadata !58, metadata !64, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!68 = metadata !{i32 786445, metadata !58, metadata !64, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!69 = metadata !{i32 786445, metadata !58, metadata !64, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!70 = metadata !{i32 786445, metadata !58, metadata !64, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !71} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!71 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!72 = metadata !{i32 786445, metadata !58, metadata !64, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !71} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!73 = metadata !{i32 786445, metadata !58, metadata !64, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !16} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!74 = metadata !{i32 786445, metadata !58, metadata !64, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!75 = metadata !{i32 786445, metadata !58, metadata !64, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !76} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!76 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !77, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!77 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ] [0, 8]
!80 = metadata !{i32 786445, metadata !58, metadata !64, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !77} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!81 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !82} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!85 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!86 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !82} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!87 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !82} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!88 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !16} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!89 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !82} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!90 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !16} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!91 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !82} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!92 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !93} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!93 = metadata !{i32 786454, metadata !58, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!94 = metadata !{i32 786451, metadata !95, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !96, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!95 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!96 = metadata !{metadata !97, metadata !101, metadata !102, metadata !105, metadata !106}
!97 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !98} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!98 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !16, metadata !99, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!99 = metadata !{metadata !100}
!100 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!101 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !16} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!102 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !103} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!104 = metadata !{i32 786454, metadata !95, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!105 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !16} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!106 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !103} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!107 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !108} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!108 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !109, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!109 = metadata !{i32 786454, metadata !58, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!110 = metadata !{i32 786451, metadata !58, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !111, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!111 = metadata !{metadata !112, metadata !113}
!112 = metadata !{i32 786445, metadata !58, metadata !110, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!113 = metadata !{i32 786445, metadata !58, metadata !110, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !114} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!114 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!115 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !116} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!116 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !117} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!117 = metadata !{i32 786454, metadata !58, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!118 = metadata !{i32 786451, metadata !58, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !119, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!119 = metadata !{metadata !120, metadata !121, metadata !122, metadata !123, metadata !127, metadata !128, metadata !129, metadata !130}
!120 = metadata !{i32 786445, metadata !58, metadata !118, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!121 = metadata !{i32 786445, metadata !58, metadata !118, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !16} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!122 = metadata !{i32 786445, metadata !58, metadata !118, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!123 = metadata !{i32 786445, metadata !58, metadata !118, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !124} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!124 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !85, metadata !125, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!125 = metadata !{metadata !126}
!126 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!127 = metadata !{i32 786445, metadata !58, metadata !118, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!128 = metadata !{i32 786445, metadata !58, metadata !118, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!129 = metadata !{i32 786445, metadata !58, metadata !118, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!130 = metadata !{i32 786445, metadata !58, metadata !118, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !131} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!131 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !16, metadata !125, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !152}
!133 = metadata !{i32 786689, metadata !52, metadata !"atoms", metadata !5, i32 16777366, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 150]
!134 = metadata !{i32 786689, metadata !52, metadata !"x", metadata !5, i32 33554582, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 150]
!135 = metadata !{i32 786689, metadata !52, metadata !"v", metadata !5, i32 50331798, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 150]
!136 = metadata !{i32 786689, metadata !52, metadata !"r", metadata !5, i32 67109014, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 150]
!137 = metadata !{i32 786689, metadata !52, metadata !"box", metadata !5, i32 83886230, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 150]
!138 = metadata !{i32 786689, metadata !52, metadata !"n_box", metadata !5, i32 100663446, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_box] [line 150]
!139 = metadata !{i32 786688, metadata !52, metadata !"i", metadata !5, i32 152, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 152]
!140 = metadata !{i32 786688, metadata !52, metadata !"ix", metadata !5, i32 152, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 152]
!141 = metadata !{i32 786688, metadata !52, metadata !"iy", metadata !5, i32 152, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 152]
!142 = metadata !{i32 786688, metadata !52, metadata !"iz", metadata !5, i32 152, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iz] [line 152]
!143 = metadata !{i32 786688, metadata !52, metadata !"m", metadata !5, i32 152, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 152]
!144 = metadata !{i32 786688, metadata !52, metadata !"j", metadata !5, i32 152, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 152]
!145 = metadata !{i32 786688, metadata !52, metadata !"imol", metadata !5, i32 152, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imol] [line 152]
!146 = metadata !{i32 786688, metadata !52, metadata !"offset", metadata !5, i32 152, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 152]
!147 = metadata !{i32 786688, metadata !52, metadata !"delta", metadata !5, i32 153, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delta] [line 153]
!148 = metadata !{i32 786688, metadata !52, metadata !"nmol", metadata !5, i32 154, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmol] [line 154]
!149 = metadata !{i32 786688, metadata !150, metadata !"offs", metadata !5, i32 181, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offs] [line 181]
!150 = metadata !{i32 786443, metadata !1, metadata !151, i32 180, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!151 = metadata !{i32 786443, metadata !1, metadata !52, i32 180, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!152 = metadata !{i32 786688, metadata !150, metadata !"offsres", metadata !5, i32 182, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offsres] [line 182]
!153 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gen_box", metadata !"gen_box", metadata !"", i32 198, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, [3 x float]*, [3 x float]*, float*, i32)* @gen_box, null, null, metadata !156, i32 200} ; [ DW_TAG_subprogram ] [line 198] [def] [scope 200] [gen_box]
!154 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!155 = metadata !{null, metadata !16, metadata !16, metadata !17, metadata !32, metadata !10, metadata !16}
!156 = metadata !{metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167}
!157 = metadata !{i32 786689, metadata !153, metadata !"NTB", metadata !5, i32 16777414, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NTB] [line 198]
!158 = metadata !{i32 786689, metadata !153, metadata !"natoms", metadata !5, i32 33554630, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 198]
!159 = metadata !{i32 786689, metadata !153, metadata !"x", metadata !5, i32 50331846, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 198]
!160 = metadata !{i32 786689, metadata !153, metadata !"box", metadata !5, i32 67109062, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 198]
!161 = metadata !{i32 786689, metadata !153, metadata !"box_space", metadata !5, i32 83886278, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box_space] [line 198]
!162 = metadata !{i32 786689, metadata !153, metadata !"bCenter", metadata !5, i32 100663495, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bCenter] [line 199]
!163 = metadata !{i32 786688, metadata !153, metadata !"i", metadata !5, i32 201, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 201]
!164 = metadata !{i32 786688, metadata !153, metadata !"m", metadata !5, i32 201, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 201]
!165 = metadata !{i32 786688, metadata !153, metadata !"xmin", metadata !5, i32 202, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmin] [line 202]
!166 = metadata !{i32 786688, metadata !153, metadata !"xmax", metadata !5, i32 202, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmax] [line 202]
!167 = metadata !{i32 786688, metadata !153, metadata !"max_box", metadata !5, i32 203, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_box] [line 203]
!168 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"dist2", metadata !"dist2", metadata !"", i32 40, metadata !169, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !171, i32 41} ; [ DW_TAG_subprogram ] [line 40] [local] [def] [scope 41] [dist2]
!169 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!170 = metadata !{metadata !8, metadata !10, metadata !10, metadata !32}
!171 = metadata !{metadata !172, metadata !173, metadata !174, metadata !175}
!172 = metadata !{i32 786689, metadata !168, metadata !"x", metadata !5, i32 16777256, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 40]
!173 = metadata !{i32 786689, metadata !168, metadata !"y", metadata !5, i32 33554472, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 40]
!174 = metadata !{i32 786689, metadata !168, metadata !"box", metadata !5, i32 50331688, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 40]
!175 = metadata !{i32 786688, metadata !168, metadata !"dx", metadata !5, i32 42, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 42]
!176 = metadata !{i32 786478, metadata !177, metadata !178, metadata !"norm2", metadata !"norm2", metadata !"", i32 353, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !179, i32 354} ; [ DW_TAG_subprogram ] [line 353] [local] [def] [scope 354] [norm2]
!177 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!178 = metadata !{i32 786473, metadata !177}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!179 = metadata !{metadata !180}
!180 = metadata !{i32 786689, metadata !176, metadata !"a", metadata !178, i32 16777569, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 353]
!181 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"low_rotate_conf", metadata !"low_rotate_conf", metadata !"", i32 54, metadata !182, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, [3 x float]*, float, float, float)* @low_rotate_conf, null, null, metadata !184, i32 55} ; [ DW_TAG_subprogram ] [line 54] [local] [def] [scope 55] [low_rotate_conf]
!182 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!183 = metadata !{null, metadata !16, metadata !17, metadata !8, metadata !8, metadata !8}
!184 = metadata !{metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !192}
!185 = metadata !{i32 786689, metadata !181, metadata !"natom", metadata !5, i32 16777270, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natom] [line 54]
!186 = metadata !{i32 786689, metadata !181, metadata !"x", metadata !5, i32 33554486, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 54]
!187 = metadata !{i32 786689, metadata !181, metadata !"alfa", metadata !5, i32 50331702, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alfa] [line 54]
!188 = metadata !{i32 786689, metadata !181, metadata !"beta", metadata !5, i32 67108918, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [beta] [line 54]
!189 = metadata !{i32 786689, metadata !181, metadata !"gamma", metadata !5, i32 83886134, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gamma] [line 54]
!190 = metadata !{i32 786688, metadata !191, metadata !"i", metadata !5, i32 56, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 56]
!191 = metadata !{i32 786443, metadata !1, metadata !181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!192 = metadata !{i32 786688, metadata !191, metadata !"x_old", metadata !5, i32 57, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_old] [line 57]
!193 = metadata !{i32 786478, metadata !177, metadata !178, metadata !"copy_rvec", metadata !"copy_rvec", metadata !"", i32 270, metadata !194, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !198, i32 271} ; [ DW_TAG_subprogram ] [line 270] [local] [def] [scope 271] [copy_rvec]
!194 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!195 = metadata !{null, metadata !196, metadata !10}
!196 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !197} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!197 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!198 = metadata !{metadata !199, metadata !200}
!199 = metadata !{i32 786689, metadata !193, metadata !"a", metadata !178, i32 16777486, metadata !196, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 270]
!200 = metadata !{i32 786689, metadata !193, metadata !"b", metadata !178, i32 33554702, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 270]
!201 = metadata !{i32 786478, metadata !177, metadata !178, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !202, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !204, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!202 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!203 = metadata !{metadata !8, metadata !8}
!204 = metadata !{metadata !205}
!205 = metadata !{i32 786689, metadata !201, metadata !"x", metadata !178, i32 16777413, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!206 = metadata !{i32 49, i32 0, metadata !4, null}
!207 = metadata !{i32 51, i32 0, metadata !4, null}
!208 = metadata !{metadata !"float", metadata !209}
!209 = metadata !{metadata !"omnipotent char", metadata !210}
!210 = metadata !{metadata !"Simple C/C++ TBAA"}
!211 = metadata !{i32 786689, metadata !201, metadata !"x", metadata !178, i32 16777413, metadata !8, i32 0, metadata !207} ; [ DW_TAG_arg_variable ] [x] [line 197]
!212 = metadata !{i32 197, i32 0, metadata !201, metadata !207}
!213 = metadata !{i32 199, i32 0, metadata !201, metadata !207}
!214 = metadata !{i32 78, i32 0, metadata !13, null}
!215 = metadata !{i32 80, i32 0, metadata !13, null}
!216 = metadata !{i32 81, i32 0, metadata !13, null}
!217 = metadata !{i32 82, i32 0, metadata !13, null}
!218 = metadata !{i32 83, i32 0, metadata !13, null}
!219 = metadata !{i32 84, i32 0, metadata !13, null}
!220 = metadata !{i32 54, i32 0, metadata !181, null}
!221 = metadata !{[3 x float]* undef}
!222 = metadata !{i32 57, i32 0, metadata !191, null}
!223 = metadata !{i32 59, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !191, i32 59, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!225 = metadata !{i32 63, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !224, i32 59, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!227 = metadata !{i32 67, i32 0, metadata !226, null}
!228 = metadata !{i32 72, i32 0, metadata !226, null}
!229 = metadata !{i32 60, i32 0, metadata !226, null}
!230 = metadata !{i32 786689, metadata !193, metadata !"a", metadata !178, i32 16777486, metadata !196, i32 0, metadata !229} ; [ DW_TAG_arg_variable ] [a] [line 270]
!231 = metadata !{i32 270, i32 0, metadata !193, metadata !229}
!232 = metadata !{float* undef}
!233 = metadata !{i32 786689, metadata !193, metadata !"b", metadata !178, i32 33554702, metadata !10, i32 0, metadata !229} ; [ DW_TAG_arg_variable ] [b] [line 270]
!234 = metadata !{i32 273, i32 0, metadata !235, metadata !229}
!235 = metadata !{i32 786443, metadata !177, metadata !193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!236 = metadata !{i32 274, i32 0, metadata !235, metadata !229}
!237 = metadata !{i32 64, i32 0, metadata !226, null}
!238 = metadata !{i32 786689, metadata !193, metadata !"a", metadata !178, i32 16777486, metadata !196, i32 0, metadata !239} ; [ DW_TAG_arg_variable ] [a] [line 270]
!239 = metadata !{i32 65, i32 0, metadata !226, null}
!240 = metadata !{i32 270, i32 0, metadata !193, metadata !239}
!241 = metadata !{i32 786689, metadata !193, metadata !"b", metadata !178, i32 33554702, metadata !10, i32 0, metadata !239} ; [ DW_TAG_arg_variable ] [b] [line 270]
!242 = metadata !{i32 272, i32 0, metadata !235, metadata !239}
!243 = metadata !{i32 273, i32 0, metadata !235, metadata !239}
!244 = metadata !{i32 68, i32 0, metadata !226, null}
!245 = metadata !{i32 69, i32 0, metadata !226, null}
!246 = metadata !{i32 786689, metadata !193, metadata !"a", metadata !178, i32 16777486, metadata !196, i32 0, metadata !247} ; [ DW_TAG_arg_variable ] [a] [line 270]
!247 = metadata !{i32 70, i32 0, metadata !226, null}
!248 = metadata !{i32 270, i32 0, metadata !193, metadata !247}
!249 = metadata !{i32 786689, metadata !193, metadata !"b", metadata !178, i32 33554702, metadata !10, i32 0, metadata !247} ; [ DW_TAG_arg_variable ] [b] [line 270]
!250 = metadata !{i32 272, i32 0, metadata !235, metadata !247}
!251 = metadata !{i32 273, i32 0, metadata !235, metadata !247}
!252 = metadata !{i32 73, i32 0, metadata !226, null}
!253 = metadata !{i32 74, i32 0, metadata !226, null}
!254 = metadata !{i32 76, i32 0, metadata !191, null}
!255 = metadata !{i32 87, i32 0, metadata !29, null}
!256 = metadata !{i32 90, i32 0, metadata !29, null}
!257 = metadata !{i32 91, i32 0, metadata !29, null}
!258 = metadata !{float 0.000000e+00}
!259 = metadata !{i32 93, i32 0, metadata !29, null}
!260 = metadata !{i32 96, i32 0, metadata !29, null}
!261 = metadata !{i32 40, i32 0, metadata !168, metadata !260}
!262 = metadata !{[3 x float]* null}
!263 = metadata !{i32 786689, metadata !168, metadata !"box", metadata !5, i32 50331688, metadata !32, i32 0, metadata !260} ; [ DW_TAG_arg_variable ] [box] [line 40]
!264 = metadata !{i32 42, i32 0, metadata !168, metadata !260}
!265 = metadata !{i32 44, i32 0, metadata !168, metadata !260}
!266 = metadata !{i32 786689, metadata !176, metadata !"a", metadata !178, i32 16777569, metadata !10, i32 0, metadata !267} ; [ DW_TAG_arg_variable ] [a] [line 353]
!267 = metadata !{i32 46, i32 0, metadata !168, metadata !260}
!268 = metadata !{i32 353, i32 0, metadata !176, metadata !267}
!269 = metadata !{i32 355, i32 0, metadata !270, metadata !267}
!270 = metadata !{i32 786443, metadata !177, metadata !176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!271 = metadata !{i32 97, i32 0, metadata !29, null}
!272 = metadata !{i32 1}
!273 = metadata !{i32 98, i32 0, metadata !29, null}
!274 = metadata !{i32 99, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !29, i32 99, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!276 = metadata !{i32 101, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !278, i32 100, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!278 = metadata !{i32 786443, metadata !1, metadata !279, i32 100, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!279 = metadata !{i32 786443, metadata !1, metadata !275, i32 99, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!280 = metadata !{i32 100, i32 0, metadata !278, null}
!281 = metadata !{i32 40, i32 0, metadata !168, metadata !276}
!282 = metadata !{i32 786689, metadata !168, metadata !"box", metadata !5, i32 50331688, metadata !32, i32 0, metadata !276} ; [ DW_TAG_arg_variable ] [box] [line 40]
!283 = metadata !{i32 42, i32 0, metadata !168, metadata !276}
!284 = metadata !{i32 44, i32 0, metadata !168, metadata !276}
!285 = metadata !{i32 786689, metadata !176, metadata !"a", metadata !178, i32 16777569, metadata !10, i32 0, metadata !286} ; [ DW_TAG_arg_variable ] [a] [line 353]
!286 = metadata !{i32 46, i32 0, metadata !168, metadata !276}
!287 = metadata !{i32 353, i32 0, metadata !176, metadata !286}
!288 = metadata !{i32 355, i32 0, metadata !270, metadata !286}
!289 = metadata !{i32 102, i32 0, metadata !277, null}
!290 = metadata !{i32 undef}
!291 = metadata !{i32 103, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !277, i32 102, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!293 = metadata !{i32 104, i32 0, metadata !292, null}
!294 = metadata !{i32 105, i32 0, metadata !292, null}
!295 = metadata !{i32 110, i32 0, metadata !29, null}
!296 = metadata !{i32 111, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !29, i32 110, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!298 = metadata !{i32 112, i32 0, metadata !297, null}
!299 = metadata !{i32 113, i32 0, metadata !297, null}
!300 = metadata !{i32 118, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !29, i32 117, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!302 = metadata !{i32 119, i32 0, metadata !303, null}
!303 = metadata !{i32 786443, metadata !1, metadata !29, i32 119, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!304 = metadata !{i32 120, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !1, metadata !303, i32 120, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!306 = metadata !{i32 121, i32 0, metadata !305, null}
!307 = metadata !{i32 128, i32 0, metadata !29, null}
!308 = metadata !{i32 129, i32 0, metadata !29, null}
!309 = metadata !{i32 130, i32 0, metadata !29, null}
!310 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777265, metadata !10, i32 0, metadata !311} ; [ DW_TAG_arg_variable ] [x] [line 49]
!311 = metadata !{i32 133, i32 0, metadata !29, null}
!312 = metadata !{i32 49, i32 0, metadata !4, metadata !311}
!313 = metadata !{i32 51, i32 0, metadata !4, metadata !311}
!314 = metadata !{i32 786689, metadata !201, metadata !"x", metadata !178, i32 16777413, metadata !8, i32 0, metadata !313} ; [ DW_TAG_arg_variable ] [x] [line 197]
!315 = metadata !{i32 197, i32 0, metadata !201, metadata !313}
!316 = metadata !{i32 134, i32 0, metadata !29, null}
!317 = metadata !{i32 135, i32 0, metadata !318, null}
!318 = metadata !{i32 786443, metadata !1, metadata !29, i32 135, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!319 = metadata !{i32 199, i32 0, metadata !201, metadata !313}
!320 = metadata !{i32 136, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !318, i32 135, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!322 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777265, metadata !10, i32 0, metadata !320} ; [ DW_TAG_arg_variable ] [x] [line 49]
!323 = metadata !{i32 49, i32 0, metadata !4, metadata !320}
!324 = metadata !{i32 51, i32 0, metadata !4, metadata !320}
!325 = metadata !{i32 786689, metadata !201, metadata !"x", metadata !178, i32 16777413, metadata !8, i32 0, metadata !324} ; [ DW_TAG_arg_variable ] [x] [line 197]
!326 = metadata !{i32 197, i32 0, metadata !201, metadata !324}
!327 = metadata !{i32 199, i32 0, metadata !201, metadata !324}
!328 = metadata !{i32 137, i32 0, metadata !321, null}
!329 = metadata !{i32 138, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !321, i32 137, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!331 = metadata !{i32 139, i32 0, metadata !330, null}
!332 = metadata !{i32 142, i32 0, metadata !29, null}
!333 = metadata !{i32 143, i32 0, metadata !29, null}
!334 = metadata !{i32 144, i32 0, metadata !29, null}
!335 = metadata !{i32 145, i32 0, metadata !29, null}
!336 = metadata !{i32 146, i32 0, metadata !29, null}
!337 = metadata !{i32 147, i32 0, metadata !29, null}
!338 = metadata !{i32 150, i32 0, metadata !52, null}
!339 = metadata !{i32 153, i32 0, metadata !52, null}
!340 = metadata !{i32 156, i32 0, metadata !52, null}
!341 = metadata !{metadata !"int", metadata !209}
!342 = metadata !{i32 159, i32 0, metadata !52, null}
!343 = metadata !{metadata !"any pointer", metadata !209}
!344 = metadata !{i32 160, i32 0, metadata !52, null}
!345 = metadata !{i32 161, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !52, i32 161, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!347 = metadata !{i32 181, i32 0, metadata !150, null}
!348 = metadata !{i32 162, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !346, i32 161, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!350 = metadata !{i32 163, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !349, i32 163, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!352 = metadata !{i32 164, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !351, i32 163, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!354 = metadata !{i32 166, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !356, i32 165, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!356 = metadata !{i32 786443, metadata !1, metadata !353, i32 165, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!357 = metadata !{i32 167, i32 0, metadata !355, null}
!358 = metadata !{i32 171, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !1, metadata !360, i32 168, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!360 = metadata !{i32 786443, metadata !1, metadata !355, i32 168, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!361 = metadata !{i32 180, i32 0, metadata !151, null}
!362 = metadata !{i32 182, i32 0, metadata !150, null}
!363 = metadata !{i32 184, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !365, i32 183, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!365 = metadata !{i32 786443, metadata !1, metadata !150, i32 183, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!366 = metadata !{i32 185, i32 0, metadata !364, null}
!367 = metadata !{i32 186, i32 0, metadata !364, null}
!368 = metadata !{i32 165, i32 0, metadata !356, null}
!369 = metadata !{i32 168, i32 0, metadata !360, null}
!370 = metadata !{i32 170, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !359, i32 169, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!372 = metadata !{i32 169, i32 0, metadata !371, null}
!373 = metadata !{i32 173, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !359, i32 172, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!375 = metadata !{i32 172, i32 0, metadata !374, null}
!376 = metadata !{i32 174, i32 0, metadata !359, null}
!377 = metadata !{i32 176, i32 0, metadata !355, null}
!378 = metadata !{i32 183, i32 0, metadata !365, null}
!379 = metadata !{i32 190, i32 0, metadata !52, null}
!380 = metadata !{i32 191, i32 0, metadata !52, null}
!381 = metadata !{i32 192, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !1, metadata !52, i32 192, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!383 = metadata !{i32 193, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !382, i32 193, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!385 = metadata !{i32 194, i32 0, metadata !384, null}
!386 = metadata !{i32 195, i32 0, metadata !52, null}
!387 = metadata !{i32 198, i32 0, metadata !153, null}
!388 = metadata !{i32 199, i32 0, metadata !153, null}
!389 = metadata !{i32 202, i32 0, metadata !153, null}
!390 = metadata !{i32 206, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !153, i32 206, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!392 = metadata !{i32 207, i32 0, metadata !391, null}
!393 = metadata !{i32 208, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !153, i32 208, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!395 = metadata !{i32 209, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !394, i32 209, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!397 = metadata !{i32 210, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !396, i32 209, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!399 = metadata !{i32 211, i32 0, metadata !398, null}
!400 = metadata !{i32 216, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !153, i32 215, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!402 = metadata !{i32 215, i32 0, metadata !401, null}
!403 = metadata !{i32 219, i32 0, metadata !153, null}
!404 = metadata !{i32 220, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !153, i32 219, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!406 = metadata !{i32 221, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !405, i32 221, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!408 = metadata !{i32 222, i32 0, metadata !407, null}
!409 = metadata !{i32 224, i32 0, metadata !410, null}
!410 = metadata !{i32 786443, metadata !1, metadata !405, i32 223, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!411 = metadata !{i32 223, i32 0, metadata !410, null}
!412 = metadata !{i32 228, i32 0, metadata !153, null}
!413 = metadata !{i32 229, i32 0, metadata !414, null}
!414 = metadata !{i32 786443, metadata !1, metadata !153, i32 229, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!415 = metadata !{i32 230, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !414, i32 230, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!417 = metadata !{i32 231, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !416, i32 230, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c]
!419 = metadata !{i32 239, i32 0, metadata !153, null}
