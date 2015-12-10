; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c'
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
@.str = private unnamed_addr constant [59 x i8] c"Velocities were taken from a Maxwell distribution at %g K\0A\00", align 1
@debug = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [109 x i8] c"Velocities were taken from a Maxwell distribution\0AInitial generated temperature: %12.5e (scaled to: %12.5e)\0A\00", align 1
@.str2 = private unnamed_addr constant [48 x i8] c"Using random seed %d for generating velocities\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @gauss(float %am, float %sd, i32* %ig) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %am}, i64 0, metadata !13), !dbg !263
  tail call void @llvm.dbg.value(metadata !{float %sd}, i64 0, metadata !14), !dbg !263
  tail call void @llvm.dbg.value(metadata !{i32* %ig}, i64 0, metadata !15), !dbg !263
  tail call void @llvm.dbg.value(metadata !264, i64 0, metadata !16), !dbg !265
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !17), !dbg !266
  br label %for.body, !dbg !266

for.body:                                         ; preds = %for.body, %entry
  %a.07 = phi float [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %call = tail call float @rando(i32* %ig) #5, !dbg !268
  %add = fadd float %a.07, %call, !dbg !268
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !16), !dbg !268
  %inc = add nsw i32 %i.06, 1, !dbg !266
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !17), !dbg !266
  %exitcond = icmp eq i32 %inc, 12, !dbg !266
  br i1 %exitcond, label %for.end, label %for.body, !dbg !266

for.end:                                          ; preds = %for.body
  %conv = fpext float %add to double, !dbg !269
  %sub = fadd double %conv, -6.000000e+00, !dbg !269
  %conv1 = fpext float %sd to double, !dbg !269
  %mul = fmul double %conv1, %sub, !dbg !269
  %conv2 = fpext float %am to double, !dbg !269
  %add3 = fadd double %conv2, %mul, !dbg !269
  %conv4 = fptrunc double %add3 to float, !dbg !269
  tail call void @llvm.dbg.value(metadata !{float %conv4}, i64 0, metadata !18), !dbg !269
  ret float %conv4, !dbg !270
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare float @rando(i32*) #2

; Function Attrs: nounwind optsize uwtable
define void @low_mspeed(float %tempi, i32 %nrdf, i32 %seed, i32 %nat, i32* nocapture %a, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %v) #0 {
entry:
  %ig = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{float %tempi}, i64 0, metadata !104), !dbg !271
  call void @llvm.dbg.value(metadata !{i32 %nrdf}, i64 0, metadata !105), !dbg !271
  call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !106), !dbg !271
  call void @llvm.dbg.value(metadata !{i32 %nat}, i64 0, metadata !107), !dbg !271
  call void @llvm.dbg.value(metadata !{i32* %a}, i64 0, metadata !108), !dbg !271
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !109), !dbg !272
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !110), !dbg !272
  call void @llvm.dbg.declare(metadata !{i32* %ig}, metadata !114), !dbg !273
  call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !114), !dbg !274
  store i32 %seed, i32* %ig, align 4, !dbg !274, !tbaa !275
  %conv = fpext float %tempi to double, !dbg !278
  %mul = fmul double %conv, 0x3F810732CDE67DC4, !dbg !278
  %conv1 = fptrunc double %mul to float, !dbg !278
  call void @llvm.dbg.value(metadata !{float %conv1}, i64 0, metadata !115), !dbg !278
  call void @llvm.dbg.value(metadata !264, i64 0, metadata !117), !dbg !279
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !111), !dbg !280
  %cmp113 = icmp sgt i32 %nat, 0, !dbg !280
  br i1 %cmp113, label %for.body.lr.ph, label %for.end37, !dbg !280

for.body.lr.ph:                                   ; preds = %entry
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !282
  br label %for.body, !dbg !280

for.body:                                         ; preds = %for.inc35, %for.body.lr.ph
  %indvars.iv124 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next125, %for.inc35 ]
  %ekin.0114 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %ekin.2, %for.inc35 ]
  %arrayidx = getelementptr inbounds i32* %a, i64 %indvars.iv124, !dbg !284
  %0 = load i32* %arrayidx, align 4, !dbg !284, !tbaa !275
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !112), !dbg !284
  %idxprom3 = sext i32 %0 to i64, !dbg !282
  %1 = load %struct.t_atom** %atom, align 8, !dbg !282, !tbaa !285
  %m5 = getelementptr inbounds %struct.t_atom* %1, i64 %idxprom3, i32 0, !dbg !282
  %2 = load float* %m5, align 4, !dbg !282, !tbaa !286
  call void @llvm.dbg.value(metadata !{float %2}, i64 0, metadata !119), !dbg !282
  %cmp6 = fcmp ogt float %2, 0.000000e+00, !dbg !287
  br i1 %cmp6, label %if.then, label %for.inc35, !dbg !287

if.then:                                          ; preds = %for.body
  %div = fdiv float %conv1, %2, !dbg !288
  %conv9 = call float @sqrtf(float %div) #3, !dbg !288
  call void @llvm.dbg.value(metadata !{float %conv9}, i64 0, metadata !116), !dbg !288
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !113), !dbg !290
  %conv19 = fpext float %2 to double, !dbg !292
  %mul20 = fmul double %conv19, 5.000000e-01, !dbg !292
  br label %for.body13, !dbg !290

for.body13:                                       ; preds = %for.body13, %if.then
  %indvars.iv120 = phi i64 [ 0, %if.then ], [ %indvars.iv.next121, %for.body13 ]
  %ekin.1111 = phi float [ %ekin.0114, %if.then ], [ %conv34, %for.body13 ]
  %call14 = call float @gauss(float 0.000000e+00, float %conv9, i32* %ig) #6, !dbg !294
  %arrayidx18 = getelementptr inbounds [3 x float]* %v, i64 %idxprom3, i64 %indvars.iv120, !dbg !294
  store float %call14, float* %arrayidx18, align 4, !dbg !294, !tbaa !286
  %conv25 = fpext float %call14 to double, !dbg !292
  %mul26 = fmul double %mul20, %conv25, !dbg !292
  %mul32 = fmul double %conv25, %mul26, !dbg !292
  %conv33 = fpext float %ekin.1111 to double, !dbg !292
  %add = fadd double %conv33, %mul32, !dbg !292
  %conv34 = fptrunc double %add to float, !dbg !292
  call void @llvm.dbg.value(metadata !{float %conv34}, i64 0, metadata !117), !dbg !292
  %indvars.iv.next121 = add i64 %indvars.iv120, 1, !dbg !290
  %lftr.wideiv122 = trunc i64 %indvars.iv.next121 to i32, !dbg !290
  %exitcond123 = icmp eq i32 %lftr.wideiv122, 3, !dbg !290
  br i1 %exitcond123, label %for.inc35, label %for.body13, !dbg !290

for.inc35:                                        ; preds = %for.body13, %for.body
  %ekin.2 = phi float [ %ekin.0114, %for.body ], [ %conv34, %for.body13 ]
  %indvars.iv.next125 = add i64 %indvars.iv124, 1, !dbg !280
  %lftr.wideiv126 = trunc i64 %indvars.iv.next125 to i32, !dbg !280
  %exitcond127 = icmp eq i32 %lftr.wideiv126, %nat, !dbg !280
  br i1 %exitcond127, label %for.end37, label %for.body, !dbg !280

for.end37:                                        ; preds = %for.inc35, %entry
  %ekin.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %ekin.2, %for.inc35 ]
  %conv38 = fpext float %ekin.0.lcssa to double, !dbg !295
  %mul39 = fmul double %conv38, 2.000000e+00, !dbg !295
  %conv40 = sitofp i32 %nrdf to double, !dbg !295
  %mul41 = fmul double %conv40, 0x3F810732CDE67DC4, !dbg !295
  %div42 = fdiv double %mul39, %mul41, !dbg !295
  %conv43 = fptrunc double %div42 to float, !dbg !295
  call void @llvm.dbg.value(metadata !{float %conv43}, i64 0, metadata !118), !dbg !295
  %cmp44 = fcmp ogt float %conv43, 0.000000e+00, !dbg !296
  br i1 %cmp44, label %if.then46, label %if.end72, !dbg !296

if.then46:                                        ; preds = %for.end37
  %div47 = fdiv float %tempi, %conv43, !dbg !297
  %conv50 = call float @sqrtf(float %div47) #3, !dbg !297
  call void @llvm.dbg.value(metadata !{float %conv50}, i64 0, metadata !120), !dbg !297
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !111), !dbg !299
  br i1 %cmp113, label %for.cond55.preheader, label %if.end72, !dbg !299

for.cond55.preheader:                             ; preds = %if.then46, %for.inc69
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %for.inc69 ], [ 0, %if.then46 ]
  %arrayidx61 = getelementptr inbounds i32* %a, i64 %indvars.iv116, !dbg !301
  %3 = load i32* %arrayidx61, align 4, !dbg !301, !tbaa !275
  %idxprom62 = sext i32 %3 to i64, !dbg !301
  br label %for.body58, !dbg !303

for.body58:                                       ; preds = %for.body58, %for.cond55.preheader
  %indvars.iv = phi i64 [ 0, %for.cond55.preheader ], [ %indvars.iv.next, %for.body58 ]
  %arrayidx64 = getelementptr inbounds [3 x float]* %v, i64 %idxprom62, i64 %indvars.iv, !dbg !301
  %4 = load float* %arrayidx64, align 4, !dbg !301, !tbaa !286
  %mul65 = fmul float %conv50, %4, !dbg !301
  store float %mul65, float* %arrayidx64, align 4, !dbg !301, !tbaa !286
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !303
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !303
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !303
  br i1 %exitcond, label %for.inc69, label %for.body58, !dbg !303

for.inc69:                                        ; preds = %for.body58
  %indvars.iv.next117 = add i64 %indvars.iv116, 1, !dbg !299
  %lftr.wideiv118 = trunc i64 %indvars.iv.next117 to i32, !dbg !299
  %exitcond119 = icmp eq i32 %lftr.wideiv118, %nat, !dbg !299
  br i1 %exitcond119, label %if.end72, label %for.cond55.preheader, !dbg !299

if.end72:                                         ; preds = %if.then46, %for.inc69, %for.end37
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !304, !tbaa !285
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), double %conv) #5, !dbg !304
  %6 = load %struct._IO_FILE** @debug, align 8, !dbg !305, !tbaa !285
  %tobool = icmp eq %struct._IO_FILE* %6, null, !dbg !305
  br i1 %tobool, label %if.end79, label %if.then75, !dbg !305

if.then75:                                        ; preds = %if.end72
  %conv76 = fpext float %conv43 to double, !dbg !306
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([109 x i8]* @.str1, i64 0, i64 0), double %conv76, double %conv) #5, !dbg !306
  br label %if.end79, !dbg !308

if.end79:                                         ; preds = %if.end72, %if.then75
  ret void, !dbg !309
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @grp_maxwell(%struct.t_block* nocapture %grp, float* nocapture %tempi, i32* nocapture %nrdf, i32 %seed, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %grp}, i64 0, metadata !127), !dbg !310
  tail call void @llvm.dbg.value(metadata !{float* %tempi}, i64 0, metadata !128), !dbg !310
  tail call void @llvm.dbg.value(metadata !{i32* %nrdf}, i64 0, metadata !129), !dbg !310
  tail call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !130), !dbg !310
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !131), !dbg !311
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !132), !dbg !311
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !133), !dbg !312
  %nr = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 1, !dbg !312
  %0 = load i32* %nr, align 4, !dbg !312, !tbaa !275
  %cmp19 = icmp sgt i32 %0, 0, !dbg !312
  br i1 %cmp19, label %for.body.lr.ph, label %for.end, !dbg !312

for.body.lr.ph:                                   ; preds = %entry
  %index = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 2, !dbg !314
  %a = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 4, !dbg !316
  br label %for.body, !dbg !312

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load i32** %index, align 8, !dbg !314, !tbaa !285
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv, !dbg !314
  %2 = load i32* %arrayidx, align 4, !dbg !314, !tbaa !275
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !134), !dbg !314
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !312
  %arrayidx3 = getelementptr inbounds i32* %1, i64 %indvars.iv.next, !dbg !317
  %3 = load i32* %arrayidx3, align 4, !dbg !317, !tbaa !275
  %sub = sub nsw i32 %3, %2, !dbg !317
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !135), !dbg !317
  %arrayidx5 = getelementptr inbounds float* %tempi, i64 %indvars.iv, !dbg !316
  %4 = load float* %arrayidx5, align 4, !dbg !316, !tbaa !286
  %arrayidx7 = getelementptr inbounds i32* %nrdf, i64 %indvars.iv, !dbg !316
  %5 = load i32* %arrayidx7, align 4, !dbg !316, !tbaa !275
  %idxprom8 = sext i32 %2 to i64, !dbg !316
  %6 = load i32** %a, align 8, !dbg !316, !tbaa !285
  %arrayidx9 = getelementptr inbounds i32* %6, i64 %idxprom8, !dbg !316
  tail call void @low_mspeed(float %4, i32 %5, i32 %seed, i32 %sub, i32* %arrayidx9, %struct.t_atoms* %atoms, [3 x float]* %v) #6, !dbg !316
  %7 = load i32* %nr, align 4, !dbg !312, !tbaa !275
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !312
  %cmp = icmp slt i32 %8, %7, !dbg !312
  br i1 %cmp, label %for.body, label %for.end, !dbg !312

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !318
}

; Function Attrs: nounwind optsize uwtable
define void @maxwell_speed(float %tempi, i32 %nrdf, i32 %seed, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %tempi}, i64 0, metadata !140), !dbg !319
  tail call void @llvm.dbg.value(metadata !{i32 %nrdf}, i64 0, metadata !141), !dbg !319
  tail call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !142), !dbg !319
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !143), !dbg !319
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !144), !dbg !319
  %cmp = icmp eq i32 %seed, -1, !dbg !320
  br i1 %cmp, label %if.then, label %if.end, !dbg !320

if.then:                                          ; preds = %entry
  %call = tail call i32 @make_seed() #5, !dbg !321
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !142), !dbg !321
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !323, !tbaa !285
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), i32 %call) #5, !dbg !323
  br label %if.end, !dbg !324

if.end:                                           ; preds = %if.then, %entry
  %seed.addr.0 = phi i32 [ %call, %if.then ], [ %seed, %entry ]
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !325
  %1 = load i32* %nr, align 4, !dbg !325, !tbaa !275
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 143, i32 %1, i32 4) #5, !dbg !325
  %2 = bitcast i8* %call2 to i32*, !dbg !325
  tail call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !145), !dbg !325
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !146), !dbg !326
  %3 = load i32* %nr, align 4, !dbg !326, !tbaa !275
  %cmp416 = icmp sgt i32 %3, 0, !dbg !326
  br i1 %cmp416, label %for.body, label %for.end, !dbg !326

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv, !dbg !328
  %4 = trunc i64 %indvars.iv to i32, !dbg !328
  store i32 %4, i32* %arrayidx, align 4, !dbg !328, !tbaa !275
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !326
  %5 = load i32* %nr, align 4, !dbg !326, !tbaa !275
  %6 = trunc i64 %indvars.iv.next to i32, !dbg !326
  %cmp4 = icmp slt i32 %6, %5, !dbg !326
  br i1 %cmp4, label %for.body, label %for.end, !dbg !326

for.end:                                          ; preds = %for.body, %if.end
  %.lcssa = phi i32 [ %3, %if.end ], [ %5, %for.body ]
  tail call void @low_mspeed(float %tempi, i32 %nrdf, i32 %seed.addr.0, i32 %.lcssa, i32* %2, %struct.t_atoms* %atoms, [3 x float]* %v) #6, !dbg !329
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 147, i8* %call2) #5, !dbg !330
  ret void, !dbg !331
}

; Function Attrs: optsize
declare i32 @make_seed() #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define float @calc_cm(%struct._IO_FILE* nocapture %log, i32 %natoms, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %v, float* nocapture %xcm, float* nocapture %vcm, float* nocapture %acm, [3 x float]* nocapture %L) #0 {
entry:
  %dx = alloca [3 x float], align 4
  %a0 = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !206), !dbg !332
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !207), !dbg !332
  call void @llvm.dbg.value(metadata !{float* %mass}, i64 0, metadata !208), !dbg !332
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !209), !dbg !332
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !210), !dbg !332
  call void @llvm.dbg.value(metadata !{float* %xcm}, i64 0, metadata !211), !dbg !333
  call void @llvm.dbg.value(metadata !{float* %vcm}, i64 0, metadata !212), !dbg !333
  call void @llvm.dbg.value(metadata !{float* %acm}, i64 0, metadata !213), !dbg !333
  call void @llvm.dbg.value(metadata !{[3 x float]* %L}, i64 0, metadata !214), !dbg !333
  call void @llvm.dbg.declare(metadata !{[3 x float]* %dx}, metadata !215), !dbg !334
  call void @llvm.dbg.declare(metadata !{[3 x float]* %a0}, metadata !216), !dbg !334
  tail call void @llvm.dbg.value(metadata !{float* %xcm}, i64 0, metadata !335), !dbg !337
  store float 0.000000e+00, float* %xcm, align 4, !dbg !338, !tbaa !286
  %arrayidx1.i = getelementptr inbounds float* %xcm, i64 1, !dbg !339
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !dbg !339, !tbaa !286
  %arrayidx2.i = getelementptr inbounds float* %xcm, i64 2, !dbg !340
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !dbg !340, !tbaa !286
  tail call void @llvm.dbg.value(metadata !{float* %vcm}, i64 0, metadata !341), !dbg !343
  store float 0.000000e+00, float* %vcm, align 4, !dbg !344, !tbaa !286
  %arrayidx1.i196 = getelementptr inbounds float* %vcm, i64 1, !dbg !345
  store float 0.000000e+00, float* %arrayidx1.i196, align 4, !dbg !345, !tbaa !286
  %arrayidx2.i197 = getelementptr inbounds float* %vcm, i64 2, !dbg !346
  store float 0.000000e+00, float* %arrayidx2.i197, align 4, !dbg !346, !tbaa !286
  tail call void @llvm.dbg.value(metadata !{float* %acm}, i64 0, metadata !347), !dbg !349
  store float 0.000000e+00, float* %acm, align 4, !dbg !350, !tbaa !286
  %arrayidx1.i194 = getelementptr inbounds float* %acm, i64 1, !dbg !351
  store float 0.000000e+00, float* %arrayidx1.i194, align 4, !dbg !351, !tbaa !286
  %arrayidx2.i195 = getelementptr inbounds float* %acm, i64 2, !dbg !352
  store float 0.000000e+00, float* %arrayidx2.i195, align 4, !dbg !352, !tbaa !286
  call void @llvm.dbg.value(metadata !264, i64 0, metadata !217), !dbg !353
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !219), !dbg !354
  %cmp203 = icmp sgt i32 %natoms, 0, !dbg !354
  %arraydecay6 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 0, !dbg !356
  %arrayidx13.i189 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 1, !dbg !358
  %arrayidx21.i193 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 2, !dbg !359
  br i1 %cmp203, label %for.body, label %for.end33, !dbg !354

for.body:                                         ; preds = %entry, %for.inc31
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %for.inc31 ], [ 0, %entry ]
  %tm.0204 = phi float [ %add, %for.inc31 ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %mass, i64 %indvars.iv218, !dbg !360
  %0 = load float* %arrayidx, align 4, !dbg !360, !tbaa !286
  call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !218), !dbg !360
  call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !217), !dbg !361
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv218, i64 0, !dbg !356
  %arraydecay5 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv218, i64 0, !dbg !356
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !362), !dbg !363
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay5}, i64 0, metadata !364), !dbg !363
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay6}, i64 0, metadata !365), !dbg !363
  %arrayidx.i179 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv218, i64 1, !dbg !366
  %1 = load float* %arrayidx.i179, align 4, !dbg !366, !tbaa !286
  %arrayidx1.i180 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv218, i64 2, !dbg !366
  %2 = load float* %arrayidx1.i180, align 4, !dbg !366, !tbaa !286
  %mul.i181 = fmul float %1, %2, !dbg !366
  %arrayidx2.i182 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv218, i64 2, !dbg !366
  %3 = load float* %arrayidx2.i182, align 4, !dbg !366, !tbaa !286
  %arrayidx3.i183 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv218, i64 1, !dbg !366
  %4 = load float* %arrayidx3.i183, align 4, !dbg !366, !tbaa !286
  %mul4.i184 = fmul float %3, %4, !dbg !366
  %sub.i185 = fsub float %mul.i181, %mul4.i184, !dbg !366
  store float %sub.i185, float* %arraydecay6, align 4, !dbg !366, !tbaa !286
  %5 = load float* %arraydecay5, align 4, !dbg !358, !tbaa !286
  %mul8.i186 = fmul float %3, %5, !dbg !358
  %6 = load float* %arraydecay, align 4, !dbg !358, !tbaa !286
  %mul11.i187 = fmul float %6, %2, !dbg !358
  %sub12.i188 = fsub float %mul8.i186, %mul11.i187, !dbg !358
  store float %sub12.i188, float* %arrayidx13.i189, align 4, !dbg !358, !tbaa !286
  %mul16.i190 = fmul float %6, %4, !dbg !359
  %mul19.i191 = fmul float %1, %5, !dbg !359
  %sub20.i192 = fsub float %mul16.i190, %mul19.i191, !dbg !359
  store float %sub20.i192, float* %arrayidx21.i193, align 4, !dbg !359, !tbaa !286
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !220), !dbg !367
  br label %for.body9, !dbg !367

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body
  %7 = phi float [ %sub.i185, %for.body ], [ %.pre224, %for.body9.for.body9_crit_edge ]
  %8 = phi float [ %6, %for.body ], [ %.pre223, %for.body9.for.body9_crit_edge ]
  %indvars.iv214 = phi i64 [ 0, %for.body ], [ %indvars.iv.next215, %for.body9.for.body9_crit_edge ]
  %mul = fmul float %0, %8, !dbg !369
  %arrayidx15 = getelementptr inbounds float* %xcm, i64 %indvars.iv214, !dbg !369
  %9 = load float* %arrayidx15, align 4, !dbg !369, !tbaa !286
  %add16 = fadd float %9, %mul, !dbg !369
  store float %add16, float* %arrayidx15, align 4, !dbg !369, !tbaa !286
  %arrayidx20 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv218, i64 %indvars.iv214, !dbg !371
  %10 = load float* %arrayidx20, align 4, !dbg !371, !tbaa !286
  %mul21 = fmul float %0, %10, !dbg !371
  %arrayidx23 = getelementptr inbounds float* %vcm, i64 %indvars.iv214, !dbg !371
  %11 = load float* %arrayidx23, align 4, !dbg !371, !tbaa !286
  %add24 = fadd float %11, %mul21, !dbg !371
  store float %add24, float* %arrayidx23, align 4, !dbg !371, !tbaa !286
  %mul27 = fmul float %0, %7, !dbg !372
  %arrayidx29 = getelementptr inbounds float* %acm, i64 %indvars.iv214, !dbg !372
  %12 = load float* %arrayidx29, align 4, !dbg !372, !tbaa !286
  %add30 = fadd float %12, %mul27, !dbg !372
  store float %add30, float* %arrayidx29, align 4, !dbg !372, !tbaa !286
  %indvars.iv.next215 = add i64 %indvars.iv214, 1, !dbg !367
  %lftr.wideiv216 = trunc i64 %indvars.iv.next215 to i32, !dbg !367
  %exitcond217 = icmp eq i32 %lftr.wideiv216, 3, !dbg !367
  br i1 %exitcond217, label %for.inc31, label %for.body9.for.body9_crit_edge, !dbg !367

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  %arrayidx13.phi.trans.insert = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv218, i64 %indvars.iv.next215
  %.pre223 = load float* %arrayidx13.phi.trans.insert, align 4, !dbg !369, !tbaa !286
  %arrayidx26.phi.trans.insert = getelementptr inbounds [3 x float]* %a0, i64 0, i64 %indvars.iv.next215
  %.pre224 = load float* %arrayidx26.phi.trans.insert, align 4, !dbg !372, !tbaa !286
  br label %for.body9, !dbg !367

for.inc31:                                        ; preds = %for.body9
  %add = fadd float %tm.0204, %0, !dbg !361
  %indvars.iv.next219 = add i64 %indvars.iv218, 1, !dbg !354
  %lftr.wideiv220 = trunc i64 %indvars.iv.next219 to i32, !dbg !354
  %exitcond221 = icmp eq i32 %lftr.wideiv220, %natoms, !dbg !354
  br i1 %exitcond221, label %for.end33, label %for.body, !dbg !354

for.end33:                                        ; preds = %entry, %for.inc31
  %tm.0.lcssa = phi float [ %add, %for.inc31 ], [ 0.000000e+00, %entry ]
  tail call void @llvm.dbg.value(metadata !{float* %xcm}, i64 0, metadata !373), !dbg !375
  tail call void @llvm.dbg.value(metadata !{float* %vcm}, i64 0, metadata !376), !dbg !375
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay6}, i64 0, metadata !377), !dbg !375
  %13 = load float* %arrayidx1.i, align 4, !dbg !378, !tbaa !286
  %14 = load float* %arrayidx2.i197, align 4, !dbg !378, !tbaa !286
  %mul.i = fmul float %13, %14, !dbg !378
  %15 = load float* %arrayidx2.i, align 4, !dbg !378, !tbaa !286
  %16 = load float* %arrayidx1.i196, align 4, !dbg !378, !tbaa !286
  %mul4.i = fmul float %15, %16, !dbg !378
  %sub.i = fsub float %mul.i, %mul4.i, !dbg !378
  store float %sub.i, float* %arraydecay6, align 4, !dbg !378, !tbaa !286
  %17 = load float* %vcm, align 4, !dbg !379, !tbaa !286
  %mul8.i = fmul float %15, %17, !dbg !379
  %18 = load float* %xcm, align 4, !dbg !379, !tbaa !286
  %mul11.i = fmul float %18, %14, !dbg !379
  %sub12.i = fsub float %mul8.i, %mul11.i, !dbg !379
  store float %sub12.i, float* %arrayidx13.i189, align 4, !dbg !379, !tbaa !286
  %mul16.i = fmul float %18, %16, !dbg !380
  %mul19.i = fmul float %13, %17, !dbg !380
  %sub20.i = fsub float %mul16.i, %mul19.i, !dbg !380
  store float %sub20.i, float* %arrayidx21.i193, align 4, !dbg !380, !tbaa !286
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !220), !dbg !381
  br label %for.body37, !dbg !381

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.end33
  %19 = phi float [ %sub.i, %for.end33 ], [ %.pre222, %for.body37.for.body37_crit_edge ]
  %20 = phi float [ %18, %for.end33 ], [ %.pre, %for.body37.for.body37_crit_edge ]
  %indvars.iv210 = phi i64 [ 0, %for.end33 ], [ %indvars.iv.next211, %for.body37.for.body37_crit_edge ]
  %arrayidx39 = getelementptr inbounds float* %xcm, i64 %indvars.iv210, !dbg !383
  %div = fdiv float %20, %tm.0.lcssa, !dbg !383
  store float %div, float* %arrayidx39, align 4, !dbg !383, !tbaa !286
  %arrayidx41 = getelementptr inbounds float* %vcm, i64 %indvars.iv210, !dbg !385
  %21 = load float* %arrayidx41, align 4, !dbg !385, !tbaa !286
  %div42 = fdiv float %21, %tm.0.lcssa, !dbg !385
  store float %div42, float* %arrayidx41, align 4, !dbg !385, !tbaa !286
  %div45 = fdiv float %19, %tm.0.lcssa, !dbg !386
  %arrayidx47 = getelementptr inbounds float* %acm, i64 %indvars.iv210, !dbg !386
  %22 = load float* %arrayidx47, align 4, !dbg !386, !tbaa !286
  %sub = fsub float %22, %div45, !dbg !386
  store float %sub, float* %arrayidx47, align 4, !dbg !386, !tbaa !286
  %indvars.iv.next211 = add i64 %indvars.iv210, 1, !dbg !381
  %lftr.wideiv212 = trunc i64 %indvars.iv.next211 to i32, !dbg !381
  %exitcond213 = icmp eq i32 %lftr.wideiv212, 3, !dbg !381
  br i1 %exitcond213, label %for.end50, label %for.body37.for.body37_crit_edge, !dbg !381

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  %arrayidx39.phi.trans.insert = getelementptr inbounds float* %xcm, i64 %indvars.iv.next211
  %.pre = load float* %arrayidx39.phi.trans.insert, align 4, !dbg !383, !tbaa !286
  %arrayidx44.phi.trans.insert = getelementptr inbounds [3 x float]* %a0, i64 0, i64 %indvars.iv.next211
  %.pre222 = load float* %arrayidx44.phi.trans.insert, align 4, !dbg !386, !tbaa !286
  br label %for.body37, !dbg !381

for.end50:                                        ; preds = %for.body37
  call void @llvm.dbg.value(metadata !{[3 x float]* %L}, i64 0, metadata !387) #4, !dbg !389
  call void @llvm.dbg.value(metadata !264, i64 0, metadata !390) #4, !dbg !391
  %23 = bitcast [3 x float]* %L to i8*, !dbg !392
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 36, i32 4, i1 false) #4, !dbg !393
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !219), !dbg !394
  br i1 %cmp203, label %for.body53.lr.ph, label %for.end115, !dbg !394

for.body53.lr.ph:                                 ; preds = %for.end50
  %arrayidx71 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0, !dbg !396
  %arrayidx76 = getelementptr inbounds [3 x float]* %L, i64 0, i64 0, !dbg !396
  %arrayidx79 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1, !dbg !398
  %arrayidx83 = getelementptr inbounds [3 x float]* %L, i64 0, i64 1, !dbg !398
  %arrayidx86 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2, !dbg !399
  %arrayidx90 = getelementptr inbounds [3 x float]* %L, i64 0, i64 2, !dbg !399
  %arrayidx97 = getelementptr inbounds [3 x float]* %L, i64 1, i64 1, !dbg !400
  %arrayidx104 = getelementptr inbounds [3 x float]* %L, i64 1, i64 2, !dbg !401
  %arrayidx111 = getelementptr inbounds [3 x float]* %L, i64 2, i64 2, !dbg !402
  br label %for.body53, !dbg !394

for.body53:                                       ; preds = %for.end70, %for.body53.lr.ph
  %24 = phi float [ 0.000000e+00, %for.body53.lr.ph ], [ %add112, %for.end70 ]
  %25 = phi float [ 0.000000e+00, %for.body53.lr.ph ], [ %add105, %for.end70 ]
  %26 = phi float [ 0.000000e+00, %for.body53.lr.ph ], [ %add98, %for.end70 ]
  %27 = phi float [ 0.000000e+00, %for.body53.lr.ph ], [ %add91, %for.end70 ]
  %28 = phi float [ 0.000000e+00, %for.body53.lr.ph ], [ %add84, %for.end70 ]
  %29 = phi float [ 0.000000e+00, %for.body53.lr.ph ], [ %add77, %for.end70 ]
  %indvars.iv206 = phi i64 [ 0, %for.body53.lr.ph ], [ %indvars.iv.next207, %for.end70 ]
  %arrayidx55 = getelementptr inbounds float* %mass, i64 %indvars.iv206, !dbg !403
  %30 = load float* %arrayidx55, align 4, !dbg !403, !tbaa !286
  call void @llvm.dbg.value(metadata !{float %30}, i64 0, metadata !218), !dbg !403
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !220), !dbg !404
  br label %for.body58, !dbg !404

for.body58:                                       ; preds = %for.body58, %for.body53
  %indvars.iv = phi i64 [ 0, %for.body53 ], [ %indvars.iv.next, %for.body58 ]
  %arrayidx62 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv206, i64 %indvars.iv, !dbg !406
  %31 = load float* %arrayidx62, align 4, !dbg !406, !tbaa !286
  %arrayidx64 = getelementptr inbounds float* %xcm, i64 %indvars.iv, !dbg !406
  %32 = load float* %arrayidx64, align 4, !dbg !406, !tbaa !286
  %sub65 = fsub float %31, %32, !dbg !406
  %arrayidx67 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv, !dbg !406
  store float %sub65, float* %arrayidx67, align 4, !dbg !406, !tbaa !286
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !404
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !404
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !404
  br i1 %exitcond, label %for.end70, label %for.body58, !dbg !404

for.end70:                                        ; preds = %for.body58
  %33 = load float* %arrayidx71, align 4, !dbg !396, !tbaa !286
  %mul73 = fmul float %33, %33, !dbg !396
  %mul74 = fmul float %30, %mul73, !dbg !396
  %add77 = fadd float %29, %mul74, !dbg !396
  store float %add77, float* %arrayidx76, align 4, !dbg !396, !tbaa !286
  %34 = load float* %arrayidx79, align 4, !dbg !398, !tbaa !286
  %mul80 = fmul float %33, %34, !dbg !398
  %mul81 = fmul float %30, %mul80, !dbg !398
  %add84 = fadd float %28, %mul81, !dbg !398
  store float %add84, float* %arrayidx83, align 4, !dbg !398, !tbaa !286
  %35 = load float* %arrayidx86, align 4, !dbg !399, !tbaa !286
  %mul87 = fmul float %33, %35, !dbg !399
  %mul88 = fmul float %30, %mul87, !dbg !399
  %add91 = fadd float %27, %mul88, !dbg !399
  store float %add91, float* %arrayidx90, align 4, !dbg !399, !tbaa !286
  %mul94 = fmul float %34, %34, !dbg !400
  %mul95 = fmul float %30, %mul94, !dbg !400
  %add98 = fadd float %26, %mul95, !dbg !400
  store float %add98, float* %arrayidx97, align 4, !dbg !400, !tbaa !286
  %mul101 = fmul float %34, %35, !dbg !401
  %mul102 = fmul float %30, %mul101, !dbg !401
  %add105 = fadd float %25, %mul102, !dbg !401
  store float %add105, float* %arrayidx104, align 4, !dbg !401, !tbaa !286
  %mul108 = fmul float %35, %35, !dbg !402
  %mul109 = fmul float %30, %mul108, !dbg !402
  %add112 = fadd float %24, %mul109, !dbg !402
  store float %add112, float* %arrayidx111, align 4, !dbg !402, !tbaa !286
  %indvars.iv.next207 = add i64 %indvars.iv206, 1, !dbg !394
  %lftr.wideiv208 = trunc i64 %indvars.iv.next207 to i32, !dbg !394
  %exitcond209 = icmp eq i32 %lftr.wideiv208, %natoms, !dbg !394
  br i1 %exitcond209, label %for.end115, label %for.body53, !dbg !394

for.end115:                                       ; preds = %for.end70, %for.end50
  ret float %tm.0.lcssa, !dbg !407
}

; Function Attrs: nounwind optsize uwtable
define void @stop_cm(%struct._IO_FILE* nocapture %log, i32 %natoms, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %v) #0 {
entry:
  %xcm = alloca [3 x float], align 4
  %vcm = alloca [3 x float], align 4
  %acm = alloca [3 x float], align 4
  %L = alloca [3 x [3 x float]], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !225), !dbg !408
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !226), !dbg !408
  call void @llvm.dbg.value(metadata !{float* %mass}, i64 0, metadata !227), !dbg !408
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !228), !dbg !408
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !229), !dbg !408
  call void @llvm.dbg.declare(metadata !{[3 x float]* %xcm}, metadata !230), !dbg !409
  call void @llvm.dbg.declare(metadata !{[3 x float]* %vcm}, metadata !231), !dbg !409
  call void @llvm.dbg.declare(metadata !{[3 x float]* %acm}, metadata !232), !dbg !409
  %0 = bitcast [3 x [3 x float]]* %L to i8*, !dbg !410
  call void @llvm.lifetime.start(i64 36, i8* %0) #4, !dbg !410
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %L}, metadata !233), !dbg !410
  %arraydecay = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 0, !dbg !411
  %arraydecay1 = getelementptr inbounds [3 x float]* %vcm, i64 0, i64 0, !dbg !411
  %arraydecay2 = getelementptr inbounds [3 x float]* %acm, i64 0, i64 0, !dbg !411
  %arraydecay3 = getelementptr inbounds [3 x [3 x float]]* %L, i64 0, i64 0, !dbg !411
  %call = call float @calc_cm(%struct._IO_FILE* undef, i32 %natoms, float* %mass, [3 x float]* %x, [3 x float]* %v, float* %arraydecay, float* %arraydecay1, float* %arraydecay2, [3 x float]* %arraydecay3) #6, !dbg !411
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !237), !dbg !412
  %cmp22 = icmp sgt i32 %natoms, 0, !dbg !412
  br i1 %cmp22, label %for.cond4.preheader, label %for.end13, !dbg !412

for.cond4.preheader:                              ; preds = %entry, %for.inc11
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc11 ], [ 0, %entry ]
  br label %for.body6, !dbg !414

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %arrayidx = getelementptr inbounds [3 x float]* %vcm, i64 0, i64 %indvars.iv, !dbg !416
  %1 = load float* %arrayidx, align 4, !dbg !416, !tbaa !286
  %arrayidx10 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv24, i64 %indvars.iv, !dbg !416
  %2 = load float* %arrayidx10, align 4, !dbg !416, !tbaa !286
  %sub = fsub float %2, %1, !dbg !416
  store float %sub, float* %arrayidx10, align 4, !dbg !416, !tbaa !286
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !414
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !414
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !414
  br i1 %exitcond, label %for.inc11, label %for.body6, !dbg !414

for.inc11:                                        ; preds = %for.body6
  %indvars.iv.next25 = add i64 %indvars.iv24, 1, !dbg !412
  %lftr.wideiv26 = trunc i64 %indvars.iv.next25 to i32, !dbg !412
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %natoms, !dbg !412
  br i1 %exitcond27, label %for.end13, label %for.cond4.preheader, !dbg !412

for.end13:                                        ; preds = %for.inc11, %entry
  call void @llvm.lifetime.end(i64 36, i8* %0) #4, !dbg !417
  ret void, !dbg !417
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !261, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !19, metadata !121, metadata !136, metadata !147, metadata !221, metadata !239, metadata !249, metadata !256}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gauss", metadata !"gauss", metadata !"", i32 41, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float, i32*)* @gauss, null, null, metadata !12, i32 46} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 46] [gauss]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !10}
!8 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!9 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!11 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18}
!13 = metadata !{i32 786689, metadata !4, metadata !"am", metadata !5, i32 16777257, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [am] [line 41]
!14 = metadata !{i32 786689, metadata !4, metadata !"sd", metadata !5, i32 33554473, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sd] [line 41]
!15 = metadata !{i32 786689, metadata !4, metadata !"ig", metadata !5, i32 50331689, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ig] [line 41]
!16 = metadata !{i32 786688, metadata !4, metadata !"a", metadata !5, i32 51, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 51]
!17 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 52, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 52]
!18 = metadata !{i32 786688, metadata !4, metadata !"gval", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gval] [line 58]
!19 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"low_mspeed", metadata !"low_mspeed", metadata !"", i32 84, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float, i32, i32, i32, i32*, %struct.t_atoms*, [3 x float]*)* @low_mspeed, null, null, metadata !103, i32 86} ; [ DW_TAG_subprogram ] [line 84] [def] [scope 86] [low_mspeed]
!20 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{null, metadata !8, metadata !11, metadata !11, metadata !11, metadata !22, metadata !24, metadata !98}
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!23 = metadata !{i32 786454, metadata !1, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atoms]
!25 = metadata !{i32 786454, metadata !1, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !50, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !74, metadata !81}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!32 = metadata !{i32 786454, metadata !27, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!33 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !41, metadata !42, metadata !43, metadata !44, metadata !49}
!35 = metadata !{i32 786445, metadata !27, metadata !33, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!36 = metadata !{i32 786445, metadata !27, metadata !33, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!37 = metadata !{i32 786445, metadata !27, metadata !33, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!38 = metadata !{i32 786445, metadata !27, metadata !33, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!39 = metadata !{i32 786445, metadata !27, metadata !33, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !40} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!40 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!41 = metadata !{i32 786445, metadata !27, metadata !33, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !40} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!42 = metadata !{i32 786445, metadata !27, metadata !33, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !11} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!43 = metadata !{i32 786445, metadata !27, metadata !33, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !11} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!44 = metadata !{i32 786445, metadata !27, metadata !33, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !45} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!45 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !46, metadata !47, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!46 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ] [0, 8]
!49 = metadata !{i32 786445, metadata !27, metadata !33, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !46} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!50 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !51} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!54 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!55 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !51} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!56 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !51} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!57 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !11} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!58 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !51} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!59 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !11} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!60 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !51} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!61 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !62} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!62 = metadata !{i32 786454, metadata !27, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!63 = metadata !{i32 786451, metadata !64, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !65, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!64 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!65 = metadata !{metadata !66, metadata !70, metadata !71, metadata !72, metadata !73}
!66 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !67} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!67 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !11, metadata !68, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!68 = metadata !{metadata !69}
!69 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!70 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !11} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!71 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !22} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!72 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !11} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!73 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !22} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!74 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !75} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!75 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !76, metadata !47, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!76 = metadata !{i32 786454, metadata !27, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!77 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !78, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!78 = metadata !{metadata !79, metadata !80}
!79 = metadata !{i32 786445, metadata !27, metadata !77, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!80 = metadata !{i32 786445, metadata !27, metadata !77, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !10} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!81 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !82} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!83 = metadata !{i32 786454, metadata !27, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!84 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !85, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!85 = metadata !{metadata !86, metadata !87, metadata !88, metadata !89, metadata !93, metadata !94, metadata !95, metadata !96}
!86 = metadata !{i32 786445, metadata !27, metadata !84, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!87 = metadata !{i32 786445, metadata !27, metadata !84, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !11} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!88 = metadata !{i32 786445, metadata !27, metadata !84, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!89 = metadata !{i32 786445, metadata !27, metadata !84, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !90} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!90 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !54, metadata !91, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!91 = metadata !{metadata !92}
!92 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!93 = metadata !{i32 786445, metadata !27, metadata !84, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!94 = metadata !{i32 786445, metadata !27, metadata !84, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!95 = metadata !{i32 786445, metadata !27, metadata !84, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !11} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!96 = metadata !{i32 786445, metadata !27, metadata !84, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !97} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!97 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !11, metadata !91, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!98 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!99 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!100 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !8, metadata !101, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!101 = metadata !{metadata !102}
!102 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!103 = metadata !{metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120}
!104 = metadata !{i32 786689, metadata !19, metadata !"tempi", metadata !5, i32 16777300, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tempi] [line 84]
!105 = metadata !{i32 786689, metadata !19, metadata !"nrdf", metadata !5, i32 33554516, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrdf] [line 84]
!106 = metadata !{i32 786689, metadata !19, metadata !"seed", metadata !5, i32 50331732, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 84]
!107 = metadata !{i32 786689, metadata !19, metadata !"nat", metadata !5, i32 67108948, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nat] [line 84]
!108 = metadata !{i32 786689, metadata !19, metadata !"a", metadata !5, i32 83886164, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 84]
!109 = metadata !{i32 786689, metadata !19, metadata !"atoms", metadata !5, i32 100663381, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 85]
!110 = metadata !{i32 786689, metadata !19, metadata !"v", metadata !5, i32 117440597, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 85]
!111 = metadata !{i32 786688, metadata !19, metadata !"i", metadata !5, i32 87, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 87]
!112 = metadata !{i32 786688, metadata !19, metadata !"j", metadata !5, i32 87, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 87]
!113 = metadata !{i32 786688, metadata !19, metadata !"m", metadata !5, i32 87, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 87]
!114 = metadata !{i32 786688, metadata !19, metadata !"ig", metadata !5, i32 87, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ig] [line 87]
!115 = metadata !{i32 786688, metadata !19, metadata !"boltz", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [boltz] [line 88]
!116 = metadata !{i32 786688, metadata !19, metadata !"sd", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sd] [line 88]
!117 = metadata !{i32 786688, metadata !19, metadata !"ekin", metadata !5, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ekin] [line 89]
!118 = metadata !{i32 786688, metadata !19, metadata !"temp", metadata !5, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 89]
!119 = metadata !{i32 786688, metadata !19, metadata !"mass", metadata !5, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mass] [line 89]
!120 = metadata !{i32 786688, metadata !19, metadata !"scal", metadata !5, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scal] [line 89]
!121 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"grp_maxwell", metadata !"grp_maxwell", metadata !"", i32 122, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_block*, float*, i32*, i32, %struct.t_atoms*, [3 x float]*)* @grp_maxwell, null, null, metadata !126, i32 124} ; [ DW_TAG_subprogram ] [line 122] [def] [scope 124] [grp_maxwell]
!122 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!123 = metadata !{null, metadata !124, metadata !125, metadata !10, metadata !11, metadata !24, metadata !98}
!124 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_block]
!125 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!126 = metadata !{metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135}
!127 = metadata !{i32 786689, metadata !121, metadata !"grp", metadata !5, i32 16777338, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grp] [line 122]
!128 = metadata !{i32 786689, metadata !121, metadata !"tempi", metadata !5, i32 33554554, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tempi] [line 122]
!129 = metadata !{i32 786689, metadata !121, metadata !"nrdf", metadata !5, i32 50331770, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrdf] [line 122]
!130 = metadata !{i32 786689, metadata !121, metadata !"seed", metadata !5, i32 67108986, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 122]
!131 = metadata !{i32 786689, metadata !121, metadata !"atoms", metadata !5, i32 83886203, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 123]
!132 = metadata !{i32 786689, metadata !121, metadata !"v", metadata !5, i32 100663419, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 123]
!133 = metadata !{i32 786688, metadata !121, metadata !"i", metadata !5, i32 125, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 125]
!134 = metadata !{i32 786688, metadata !121, metadata !"s", metadata !5, i32 125, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 125]
!135 = metadata !{i32 786688, metadata !121, metadata !"n", metadata !5, i32 125, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 125]
!136 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"maxwell_speed", metadata !"maxwell_speed", metadata !"", i32 134, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float, i32, i32, %struct.t_atoms*, [3 x float]*)* @maxwell_speed, null, null, metadata !139, i32 135} ; [ DW_TAG_subprogram ] [line 134] [def] [scope 135] [maxwell_speed]
!137 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!138 = metadata !{null, metadata !8, metadata !11, metadata !11, metadata !24, metadata !98}
!139 = metadata !{metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146}
!140 = metadata !{i32 786689, metadata !136, metadata !"tempi", metadata !5, i32 16777350, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tempi] [line 134]
!141 = metadata !{i32 786689, metadata !136, metadata !"nrdf", metadata !5, i32 33554566, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrdf] [line 134]
!142 = metadata !{i32 786689, metadata !136, metadata !"seed", metadata !5, i32 50331782, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 134]
!143 = metadata !{i32 786689, metadata !136, metadata !"atoms", metadata !5, i32 67108998, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 134]
!144 = metadata !{i32 786689, metadata !136, metadata !"v", metadata !5, i32 83886214, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 134]
!145 = metadata !{i32 786688, metadata !136, metadata !"dummy", metadata !5, i32 136, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dummy] [line 136]
!146 = metadata !{i32 786688, metadata !136, metadata !"i", metadata !5, i32 137, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 137]
!147 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_cm", metadata !"calc_cm", metadata !"", i32 150, metadata !148, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, i32, float*, [3 x float]*, [3 x float]*, float*, float*, float*, [3 x float]*)* @calc_cm, null, null, metadata !205, i32 152} ; [ DW_TAG_subprogram ] [line 150] [def] [scope 152] [calc_cm]
!148 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!149 = metadata !{metadata !8, metadata !150, metadata !11, metadata !125, metadata !98, metadata !98, metadata !125, metadata !125, metadata !125, metadata !204}
!150 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !151} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!151 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !152} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!152 = metadata !{i32 786451, metadata !153, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !154, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!153 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!154 = metadata !{metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !175, metadata !176, metadata !177, metadata !178, metadata !181, metadata !182, metadata !184, metadata !188, metadata !190, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !199, metadata !200}
!155 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!156 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !53} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!157 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !53} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!158 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !53} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!159 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !53} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!160 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !53} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!161 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !53} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!162 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !53} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!163 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !53} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!164 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !53} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!165 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !53} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!166 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !53} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!167 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !168} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!168 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !169} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!169 = metadata !{i32 786451, metadata !153, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !170, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!170 = metadata !{metadata !171, metadata !172, metadata !174}
!171 = metadata !{i32 786445, metadata !153, metadata !169, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !168} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!172 = metadata !{i32 786445, metadata !153, metadata !169, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !173} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!173 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !152} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!174 = metadata !{i32 786445, metadata !153, metadata !169, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !11} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!175 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !173} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!176 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !11} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!177 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !11} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!178 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !179} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!179 = metadata !{i32 786454, metadata !153, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !180} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!180 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!181 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !40} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!182 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !183} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!183 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!184 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !185} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!185 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !54, metadata !186, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!186 = metadata !{metadata !187}
!187 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!188 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !189} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!189 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!190 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !191} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!191 = metadata !{i32 786454, metadata !153, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !180} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!192 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !189} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!193 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !189} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!194 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !189} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!195 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !189} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!196 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !197} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!197 = metadata !{i32 786454, metadata !153, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !198} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!198 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!199 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !11} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!200 = metadata !{i32 786445, metadata !153, metadata !152, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !201} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!201 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !54, metadata !202, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!202 = metadata !{metadata !203}
!203 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!204 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!205 = metadata !{metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220}
!206 = metadata !{i32 786689, metadata !147, metadata !"log", metadata !5, i32 16777366, metadata !150, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 150]
!207 = metadata !{i32 786689, metadata !147, metadata !"natoms", metadata !5, i32 33554582, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 150]
!208 = metadata !{i32 786689, metadata !147, metadata !"mass", metadata !5, i32 50331798, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mass] [line 150]
!209 = metadata !{i32 786689, metadata !147, metadata !"x", metadata !5, i32 67109014, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 150]
!210 = metadata !{i32 786689, metadata !147, metadata !"v", metadata !5, i32 83886230, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 150]
!211 = metadata !{i32 786689, metadata !147, metadata !"xcm", metadata !5, i32 100663447, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xcm] [line 151]
!212 = metadata !{i32 786689, metadata !147, metadata !"vcm", metadata !5, i32 117440663, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vcm] [line 151]
!213 = metadata !{i32 786689, metadata !147, metadata !"acm", metadata !5, i32 134217879, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [acm] [line 151]
!214 = metadata !{i32 786689, metadata !147, metadata !"L", metadata !5, i32 150995095, metadata !204, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 151]
!215 = metadata !{i32 786688, metadata !147, metadata !"dx", metadata !5, i32 153, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 153]
!216 = metadata !{i32 786688, metadata !147, metadata !"a0", metadata !5, i32 153, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a0] [line 153]
!217 = metadata !{i32 786688, metadata !147, metadata !"tm", metadata !5, i32 154, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 154]
!218 = metadata !{i32 786688, metadata !147, metadata !"m0", metadata !5, i32 154, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m0] [line 154]
!219 = metadata !{i32 786688, metadata !147, metadata !"i", metadata !5, i32 155, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 155]
!220 = metadata !{i32 786688, metadata !147, metadata !"m", metadata !5, i32 155, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 155]
!221 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"stop_cm", metadata !"stop_cm", metadata !"", i32 208, metadata !222, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, float*, [3 x float]*, [3 x float]*)* @stop_cm, null, null, metadata !224, i32 209} ; [ DW_TAG_subprogram ] [line 208] [def] [scope 209] [stop_cm]
!222 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!223 = metadata !{null, metadata !150, metadata !11, metadata !125, metadata !98, metadata !98}
!224 = metadata !{metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !237, metadata !238}
!225 = metadata !{i32 786689, metadata !221, metadata !"log", metadata !5, i32 16777424, metadata !150, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 208]
!226 = metadata !{i32 786689, metadata !221, metadata !"natoms", metadata !5, i32 33554640, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 208]
!227 = metadata !{i32 786689, metadata !221, metadata !"mass", metadata !5, i32 50331856, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mass] [line 208]
!228 = metadata !{i32 786689, metadata !221, metadata !"x", metadata !5, i32 67109072, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 208]
!229 = metadata !{i32 786689, metadata !221, metadata !"v", metadata !5, i32 83886288, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 208]
!230 = metadata !{i32 786688, metadata !221, metadata !"xcm", metadata !5, i32 210, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xcm] [line 210]
!231 = metadata !{i32 786688, metadata !221, metadata !"vcm", metadata !5, i32 210, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vcm] [line 210]
!232 = metadata !{i32 786688, metadata !221, metadata !"acm", metadata !5, i32 210, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acm] [line 210]
!233 = metadata !{i32 786688, metadata !221, metadata !"L", metadata !5, i32 211, metadata !234, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 211]
!234 = metadata !{i32 786454, metadata !1, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !235} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!235 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !8, metadata !236, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!236 = metadata !{metadata !102, metadata !102}
!237 = metadata !{i32 786688, metadata !221, metadata !"i", metadata !5, i32 212, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 212]
!238 = metadata !{i32 786688, metadata !221, metadata !"m", metadata !5, i32 212, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 212]
!239 = metadata !{i32 786478, metadata !240, metadata !241, metadata !"clear_mat", metadata !"clear_mat", metadata !"", i32 334, metadata !242, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !244, i32 335} ; [ DW_TAG_subprogram ] [line 334] [local] [def] [scope 335] [clear_mat]
!240 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!241 = metadata !{i32 786473, metadata !240}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!242 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!243 = metadata !{null, metadata !204}
!244 = metadata !{metadata !245, metadata !246}
!245 = metadata !{i32 786689, metadata !239, metadata !"a", metadata !241, i32 16777550, metadata !204, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 334]
!246 = metadata !{i32 786688, metadata !247, metadata !"nul", metadata !241, i32 336, metadata !248, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!247 = metadata !{i32 786443, metadata !240, metadata !239} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!248 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!249 = metadata !{i32 786478, metadata !240, metadata !241, metadata !"oprod", metadata !"oprod", metadata !"", i32 417, metadata !250, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !252, i32 418} ; [ DW_TAG_subprogram ] [line 417] [local] [def] [scope 418] [oprod]
!250 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !251, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!251 = metadata !{null, metadata !125, metadata !125, metadata !125}
!252 = metadata !{metadata !253, metadata !254, metadata !255}
!253 = metadata !{i32 786689, metadata !249, metadata !"a", metadata !241, i32 16777633, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 417]
!254 = metadata !{i32 786689, metadata !249, metadata !"b", metadata !241, i32 33554849, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 417]
!255 = metadata !{i32 786689, metadata !249, metadata !"c", metadata !241, i32 50332065, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 417]
!256 = metadata !{i32 786478, metadata !240, metadata !241, metadata !"clear_rvec", metadata !"clear_rvec", metadata !"", i32 316, metadata !257, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !259, i32 317} ; [ DW_TAG_subprogram ] [line 316] [local] [def] [scope 317] [clear_rvec]
!257 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!258 = metadata !{null, metadata !125}
!259 = metadata !{metadata !260}
!260 = metadata !{i32 786689, metadata !256, metadata !"a", metadata !241, i32 16777532, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 316]
!261 = metadata !{metadata !262, metadata !262, metadata !262}
!262 = metadata !{i32 786484, i32 0, metadata !241, metadata !"nul", metadata !"nul", metadata !"nul", metadata !241, i32 336, metadata !248, i32 1, i32 1, float 0.000000e+00, null} ; [ DW_TAG_variable ] [nul] [line 336] [local] [def]
!263 = metadata !{i32 41, i32 0, metadata !4, null}
!264 = metadata !{float 0.000000e+00}
!265 = metadata !{i32 61, i32 0, metadata !4, null}
!266 = metadata !{i32 62, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !4, i32 62, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!268 = metadata !{i32 63, i32 0, metadata !267, null}
!269 = metadata !{i32 64, i32 0, metadata !4, null}
!270 = metadata !{i32 81, i32 0, metadata !4, null}
!271 = metadata !{i32 84, i32 0, metadata !19, null}
!272 = metadata !{i32 85, i32 0, metadata !19, null}
!273 = metadata !{i32 87, i32 0, metadata !19, null}
!274 = metadata !{i32 91, i32 0, metadata !19, null}
!275 = metadata !{metadata !"int", metadata !276}
!276 = metadata !{metadata !"omnipotent char", metadata !277}
!277 = metadata !{metadata !"Simple C/C++ TBAA"}
!278 = metadata !{i32 92, i32 0, metadata !19, null}
!279 = metadata !{i32 93, i32 0, metadata !19, null}
!280 = metadata !{i32 94, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !19, i32 94, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!282 = metadata !{i32 96, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !281, i32 94, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!284 = metadata !{i32 95, i32 0, metadata !283, null}
!285 = metadata !{metadata !"any pointer", metadata !276}
!286 = metadata !{metadata !"float", metadata !276}
!287 = metadata !{i32 97, i32 0, metadata !283, null}
!288 = metadata !{i32 98, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !283, i32 97, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!290 = metadata !{i32 99, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !289, i32 99, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!292 = metadata !{i32 101, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !291, i32 99, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!294 = metadata !{i32 100, i32 0, metadata !293, null}
!295 = metadata !{i32 105, i32 0, metadata !19, null}
!296 = metadata !{i32 106, i32 0, metadata !19, null}
!297 = metadata !{i32 107, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !1, metadata !19, i32 106, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!299 = metadata !{i32 108, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !298, i32 108, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!301 = metadata !{i32 110, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !300, i32 109, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!303 = metadata !{i32 109, i32 0, metadata !302, null}
!304 = metadata !{i32 112, i32 0, metadata !19, null}
!305 = metadata !{i32 114, i32 0, metadata !19, null}
!306 = metadata !{i32 115, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !19, i32 114, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!308 = metadata !{i32 119, i32 0, metadata !307, null}
!309 = metadata !{i32 120, i32 0, metadata !19, null}
!310 = metadata !{i32 122, i32 0, metadata !121, null}
!311 = metadata !{i32 123, i32 0, metadata !121, null}
!312 = metadata !{i32 127, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !121, i32 127, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!314 = metadata !{i32 128, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !313, i32 127, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!316 = metadata !{i32 130, i32 0, metadata !315, null}
!317 = metadata !{i32 129, i32 0, metadata !315, null}
!318 = metadata !{i32 132, i32 0, metadata !121, null}
!319 = metadata !{i32 134, i32 0, metadata !136, null}
!320 = metadata !{i32 139, i32 0, metadata !136, null}
!321 = metadata !{i32 140, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !136, i32 139, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!323 = metadata !{i32 141, i32 0, metadata !322, null}
!324 = metadata !{i32 142, i32 0, metadata !322, null}
!325 = metadata !{i32 143, i32 0, metadata !136, null}
!326 = metadata !{i32 144, i32 0, metadata !327, null}
!327 = metadata !{i32 786443, metadata !1, metadata !136, i32 144, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!328 = metadata !{i32 145, i32 0, metadata !327, null}
!329 = metadata !{i32 146, i32 0, metadata !136, null}
!330 = metadata !{i32 147, i32 0, metadata !136, null}
!331 = metadata !{i32 148, i32 0, metadata !136, null}
!332 = metadata !{i32 150, i32 0, metadata !147, null}
!333 = metadata !{i32 151, i32 0, metadata !147, null}
!334 = metadata !{i32 153, i32 0, metadata !147, null}
!335 = metadata !{i32 786689, metadata !256, metadata !"a", metadata !241, i32 16777532, metadata !125, i32 0, metadata !336} ; [ DW_TAG_arg_variable ] [a] [line 316]
!336 = metadata !{i32 157, i32 0, metadata !147, null}
!337 = metadata !{i32 316, i32 0, metadata !256, metadata !336}
!338 = metadata !{i32 321, i32 0, metadata !256, metadata !336}
!339 = metadata !{i32 322, i32 0, metadata !256, metadata !336}
!340 = metadata !{i32 323, i32 0, metadata !256, metadata !336}
!341 = metadata !{i32 786689, metadata !256, metadata !"a", metadata !241, i32 16777532, metadata !125, i32 0, metadata !342} ; [ DW_TAG_arg_variable ] [a] [line 316]
!342 = metadata !{i32 158, i32 0, metadata !147, null}
!343 = metadata !{i32 316, i32 0, metadata !256, metadata !342}
!344 = metadata !{i32 321, i32 0, metadata !256, metadata !342}
!345 = metadata !{i32 322, i32 0, metadata !256, metadata !342}
!346 = metadata !{i32 323, i32 0, metadata !256, metadata !342}
!347 = metadata !{i32 786689, metadata !256, metadata !"a", metadata !241, i32 16777532, metadata !125, i32 0, metadata !348} ; [ DW_TAG_arg_variable ] [a] [line 316]
!348 = metadata !{i32 159, i32 0, metadata !147, null}
!349 = metadata !{i32 316, i32 0, metadata !256, metadata !348}
!350 = metadata !{i32 321, i32 0, metadata !256, metadata !348}
!351 = metadata !{i32 322, i32 0, metadata !256, metadata !348}
!352 = metadata !{i32 323, i32 0, metadata !256, metadata !348}
!353 = metadata !{i32 160, i32 0, metadata !147, null}
!354 = metadata !{i32 161, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !147, i32 161, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!356 = metadata !{i32 164, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !355, i32 161, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!358 = metadata !{i32 420, i32 0, metadata !249, metadata !356}
!359 = metadata !{i32 421, i32 0, metadata !249, metadata !356}
!360 = metadata !{i32 162, i32 0, metadata !357, null}
!361 = metadata !{i32 163, i32 0, metadata !357, null}
!362 = metadata !{i32 786689, metadata !249, metadata !"a", metadata !241, i32 16777633, metadata !125, i32 0, metadata !356} ; [ DW_TAG_arg_variable ] [a] [line 417]
!363 = metadata !{i32 417, i32 0, metadata !249, metadata !356}
!364 = metadata !{i32 786689, metadata !249, metadata !"b", metadata !241, i32 33554849, metadata !125, i32 0, metadata !356} ; [ DW_TAG_arg_variable ] [b] [line 417]
!365 = metadata !{i32 786689, metadata !249, metadata !"c", metadata !241, i32 50332065, metadata !125, i32 0, metadata !356} ; [ DW_TAG_arg_variable ] [c] [line 417]
!366 = metadata !{i32 419, i32 0, metadata !249, metadata !356}
!367 = metadata !{i32 165, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !357, i32 165, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!369 = metadata !{i32 166, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !368, i32 165, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!371 = metadata !{i32 167, i32 0, metadata !370, null}
!372 = metadata !{i32 168, i32 0, metadata !370, null}
!373 = metadata !{i32 786689, metadata !249, metadata !"a", metadata !241, i32 16777633, metadata !125, i32 0, metadata !374} ; [ DW_TAG_arg_variable ] [a] [line 417]
!374 = metadata !{i32 171, i32 0, metadata !147, null}
!375 = metadata !{i32 417, i32 0, metadata !249, metadata !374}
!376 = metadata !{i32 786689, metadata !249, metadata !"b", metadata !241, i32 33554849, metadata !125, i32 0, metadata !374} ; [ DW_TAG_arg_variable ] [b] [line 417]
!377 = metadata !{i32 786689, metadata !249, metadata !"c", metadata !241, i32 50332065, metadata !125, i32 0, metadata !374} ; [ DW_TAG_arg_variable ] [c] [line 417]
!378 = metadata !{i32 419, i32 0, metadata !249, metadata !374}
!379 = metadata !{i32 420, i32 0, metadata !249, metadata !374}
!380 = metadata !{i32 421, i32 0, metadata !249, metadata !374}
!381 = metadata !{i32 172, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !1, metadata !147, i32 172, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!383 = metadata !{i32 173, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !382, i32 172, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!385 = metadata !{i32 174, i32 0, metadata !384, null}
!386 = metadata !{i32 175, i32 0, metadata !384, null}
!387 = metadata !{i32 786689, metadata !239, metadata !"a", metadata !241, i32 16777550, metadata !204, i32 0, metadata !388} ; [ DW_TAG_arg_variable ] [a] [line 334]
!388 = metadata !{i32 187, i32 0, metadata !147, null}
!389 = metadata !{i32 334, i32 0, metadata !239, metadata !388}
!390 = metadata !{i32 786688, metadata !247, metadata !"nul", metadata !241, i32 336, metadata !248, i32 0, metadata !388} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!391 = metadata !{i32 336, i32 0, metadata !247, metadata !388}
!392 = metadata !{i32 341, i32 0, metadata !247, metadata !388}
!393 = metadata !{i32 338, i32 0, metadata !247, metadata !388}
!394 = metadata !{i32 188, i32 0, metadata !395, null}
!395 = metadata !{i32 786443, metadata !1, metadata !147, i32 188, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!396 = metadata !{i32 192, i32 0, metadata !397, null}
!397 = metadata !{i32 786443, metadata !1, metadata !395, i32 188, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!398 = metadata !{i32 193, i32 0, metadata !397, null}
!399 = metadata !{i32 194, i32 0, metadata !397, null}
!400 = metadata !{i32 195, i32 0, metadata !397, null}
!401 = metadata !{i32 196, i32 0, metadata !397, null}
!402 = metadata !{i32 197, i32 0, metadata !397, null}
!403 = metadata !{i32 189, i32 0, metadata !397, null}
!404 = metadata !{i32 190, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !397, i32 190, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!406 = metadata !{i32 191, i32 0, metadata !405, null}
!407 = metadata !{i32 205, i32 0, metadata !147, null}
!408 = metadata !{i32 208, i32 0, metadata !221, null}
!409 = metadata !{i32 210, i32 0, metadata !221, null}
!410 = metadata !{i32 211, i32 0, metadata !221, null}
!411 = metadata !{i32 217, i32 0, metadata !221, null}
!412 = metadata !{i32 220, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !221, i32 220, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!414 = metadata !{i32 221, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !413, i32 221, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c]
!416 = metadata !{i32 222, i32 0, metadata !415, null}
!417 = metadata !{i32 227, i32 0, metadata !221, null}
