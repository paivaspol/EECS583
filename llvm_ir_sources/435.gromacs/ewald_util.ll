; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@ewald_LRcorrection.Vself = internal unnamed_addr global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unsupported Ewald geometry\00", align 1
@debug = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [48 x i8] c"dr=%8.4f, fscal=%8.0f, df=%10.0f,%10.0f,%10.0f\0A\00", align 1
@.str2 = private unnamed_addr constant [48 x i8] c"Long Range corrections for Ewald interactions:\0A\00", align 1
@.str3 = private unnamed_addr constant [20 x i8] c"start=%d,natoms=%d\0A\00", align 1
@.str4 = private unnamed_addr constant [22 x i8] c"q2sum = %g, Vself=%g\0A\00", align 1
@.str5 = private unnamed_addr constant [33 x i8] c"Long Range correction: Vexcl=%g\0A\00", align 1
@.str6 = private unnamed_addr constant [37 x i8] c"Total charge correction: Vcharge=%g\0A\00", align 1
@.str7 = private unnamed_addr constant [37 x i8] c"Total dipole correction: Vdipole=%g\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @calc_ewaldcoeff(float %rc, float %dtol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !18), !dbg !316
  tail call void @llvm.dbg.value(metadata !{float %dtol}, i64 0, metadata !19), !dbg !316
  tail call void @llvm.dbg.value(metadata !317, i64 0, metadata !20), !dbg !318
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !25), !dbg !319
  %conv2 = fpext float %dtol to double, !dbg !320
  br label %do.body, !dbg !321

do.body:                                          ; preds = %do.body, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %do.body ], [ 61, %entry ]
  %x.0 = phi float [ %mul, %do.body ], [ 5.000000e+00, %entry ]
  %i.0 = phi i32 [ %inc, %do.body ], [ 0, %entry ]
  %inc = add nsw i32 %i.0, 1, !dbg !322
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !25), !dbg !322
  %mul = fmul float %x.0, 2.000000e+00, !dbg !324
  tail call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !20), !dbg !324
  %mul1 = fmul float %mul, %rc, !dbg !320
  %conv = fpext float %mul1 to double, !dbg !320
  %call = tail call double @erfc(double %conv) #5, !dbg !320
  %cmp = fcmp ogt double %call, %conv2, !dbg !320
  %indvars.iv.next = add i32 %indvars.iv, 1, !dbg !320
  br i1 %cmp, label %do.body, label %do.end, !dbg !320

do.end:                                           ; preds = %do.body
  %add = add nsw i32 %i.0, 61, !dbg !325
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !23), !dbg !325
  tail call void @llvm.dbg.value(metadata !326, i64 0, metadata !21), !dbg !327
  tail call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !22), !dbg !328
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !25), !dbg !329
  %cmp424 = icmp sgt i32 %add, 0, !dbg !329
  br i1 %cmp424, label %for.body, label %for.end, !dbg !329

for.body:                                         ; preds = %do.end, %for.body
  %i.127 = phi i32 [ %inc13, %for.body ], [ 0, %do.end ]
  %high.026 = phi float [ %high.0.div, %for.body ], [ %mul, %do.end ]
  %low.025 = phi float [ %div.low.0, %for.body ], [ 0.000000e+00, %do.end ]
  %add6 = fadd float %low.025, %high.026, !dbg !331
  %div = fmul float %add6, 5.000000e-01, !dbg !331
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !20), !dbg !331
  %mul7 = fmul float %div, %rc, !dbg !333
  %conv8 = fpext float %mul7 to double, !dbg !333
  %call9 = tail call double @erfc(double %conv8) #5, !dbg !333
  %cmp11 = fcmp ogt double %call9, %conv2, !dbg !333
  %div.low.0 = select i1 %cmp11, float %div, float %low.025, !dbg !334
  %high.0.div = select i1 %cmp11, float %high.026, float %div, !dbg !334
  %inc13 = add nsw i32 %i.127, 1, !dbg !329
  tail call void @llvm.dbg.value(metadata !{i32 %inc13}, i64 0, metadata !25), !dbg !329
  %exitcond = icmp eq i32 %inc13, %indvars.iv, !dbg !329
  br i1 %exitcond, label %for.end, label %for.body, !dbg !329

for.end:                                          ; preds = %for.body, %do.end
  %x.1.lcssa = phi float [ %mul, %do.end ], [ %div, %for.body ]
  ret float %x.1.lcssa, !dbg !335
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare double @erfc(double) #2

; Function Attrs: nounwind optsize uwtable
define float @ewald_LRcorrection(%struct._IO_FILE* nocapture %fp, %struct.t_nsborder* nocapture %nsb, %struct.t_commrec* nocapture %cr, %struct.t_forcerec* nocapture %fr, float* nocapture %charge, %struct.t_block* nocapture %excl, [3 x float]* nocapture %x, [3 x float]* nocapture %box, float* nocapture %mu_tot, float %qsum, i32 %ewald_geometry, float %epsilon_surface, [3 x float]* nocapture %lr_vir) #0 {
entry:
  %df = alloca [3 x float], align 4
  %dx = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !232), !dbg !336
  call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !233), !dbg !336
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !234), !dbg !336
  call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !235), !dbg !336
  call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !236), !dbg !337
  call void @llvm.dbg.value(metadata !{%struct.t_block* %excl}, i64 0, metadata !237), !dbg !337
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !238), !dbg !337
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !239), !dbg !338
  call void @llvm.dbg.value(metadata !{float* %mu_tot}, i64 0, metadata !240), !dbg !338
  call void @llvm.dbg.value(metadata !{float %qsum}, i64 0, metadata !241), !dbg !338
  call void @llvm.dbg.value(metadata !{i32 %ewald_geometry}, i64 0, metadata !242), !dbg !338
  call void @llvm.dbg.value(metadata !{float %epsilon_surface}, i64 0, metadata !243), !dbg !339
  call void @llvm.dbg.value(metadata !{[3 x float]* %lr_vir}, i64 0, metadata !244), !dbg !339
  %ewaldcoeff = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57, !dbg !340
  %0 = load float* %ewaldcoeff, align 4, !dbg !340, !tbaa !341
  call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !266), !dbg !340
  call void @llvm.dbg.declare(metadata !{[3 x float]* %df}, metadata !267), !dbg !344
  call void @llvm.dbg.declare(metadata !{[3 x float]* %dx}, metadata !268), !dbg !344
  %f_pme1 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55, !dbg !345
  %1 = load [3 x float]** %f_pme1, align 8, !dbg !345, !tbaa !346
  call void @llvm.dbg.value(metadata !{[3 x float]* %1}, i64 0, metadata !269), !dbg !345
  %arrayidx2 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !347
  %2 = load float* %arrayidx2, align 4, !dbg !347, !tbaa !341
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !347
  %3 = load float* %arrayidx4, align 4, !dbg !347, !tbaa !341
  %mul = fmul float %2, %3, !dbg !347
  %arrayidx6 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !347
  %4 = load float* %arrayidx6, align 4, !dbg !347, !tbaa !341
  %mul7 = fmul float %mul, %4, !dbg !347
  call void @llvm.dbg.value(metadata !{float %mul7}, i64 0, metadata !270), !dbg !347
  call void @llvm.dbg.value(metadata !348, i64 0, metadata !273), !dbg !349
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !350
  %5 = load i32* %nodeid, align 4, !dbg !350, !tbaa !351
  %idxprom = sext i32 %5 to i64, !dbg !350
  %arrayidx8 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom, !dbg !350
  %6 = load i32* %arrayidx8, align 4, !dbg !350, !tbaa !351
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !274), !dbg !350
  %arrayidx11 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom, !dbg !352
  %7 = load i32* %arrayidx11, align 4, !dbg !352, !tbaa !351
  %add = add nsw i32 %7, %6, !dbg !352
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !275), !dbg !352
  %a = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4, !dbg !353
  %8 = load i32** %a, align 8, !dbg !353, !tbaa !346
  call void @llvm.dbg.value(metadata !{i32* %8}, i64 0, metadata !253), !dbg !353
  call void @llvm.dbg.value(metadata !326, i64 0, metadata !262), !dbg !354
  call void @llvm.dbg.value(metadata !355, i64 0, metadata !254), !dbg !356
  call void @llvm.dbg.value(metadata !326, i64 0, metadata !264), !dbg !357
  call void @llvm.dbg.value(metadata !326, i64 0, metadata !263), !dbg !358
  %fabsf = call float @fabsf(float %epsilon_surface) #6, !dbg !359
  %9 = fpext float %fabsf to double, !dbg !359
  %cmp = fcmp olt double %9, 1.200000e-38, !dbg !359
  br i1 %cmp, label %if.end, label %if.else, !dbg !359

if.else:                                          ; preds = %entry
  switch i32 %ewald_geometry, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
  ], !dbg !360

sw.bb:                                            ; preds = %if.else
  %mul13 = fmul float %epsilon_surface, 2.000000e+00, !dbg !361
  %add14 = fadd float %mul13, 1.000000e+00, !dbg !361
  %mul15 = fmul float %add14, %mul7, !dbg !361
  %conv16 = fpext float %mul15 to double, !dbg !361
  %div = fdiv double 0x408B47A7CA01D8DF, %conv16, !dbg !361
  %conv17 = fptrunc double %div to float, !dbg !361
  call void @llvm.dbg.value(metadata !{float %conv17}, i64 0, metadata !271), !dbg !361
  br label %if.end, !dbg !363

sw.bb18:                                          ; preds = %if.else
  %conv19 = fpext float %mul7 to double, !dbg !364
  %div20 = fdiv double 0x408B47A7CA01D8DF, %conv19, !dbg !364
  %conv21 = fptrunc double %div20 to float, !dbg !364
  call void @llvm.dbg.value(metadata !{float %conv21}, i64 0, metadata !271), !dbg !364
  br label %if.end, !dbg !365

sw.default:                                       ; preds = %if.else
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str, i64 0, i64 0)) #5, !dbg !366
  call void @llvm.dbg.value(metadata !326, i64 0, metadata !271), !dbg !367
  br label %if.end, !dbg !368

if.end:                                           ; preds = %entry, %sw.bb, %sw.bb18, %sw.default
  %dipole_coeff.0 = phi float [ 0.000000e+00, %sw.default ], [ %conv21, %sw.bb18 ], [ %conv17, %sw.bb ], [ 0.000000e+00, %entry ]
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !245), !dbg !369
  %cmp22534 = icmp sgt i32 %7, 0, !dbg !369
  br i1 %cmp22534, label %for.body.lr.ph, label %for.end257, !dbg !369

for.body.lr.ph:                                   ; preds = %if.end
  %index32 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2, !dbg !371
  %conv199 = fpext float %dipole_coeff.0 to double, !dbg !373
  %fabsf496 = call float @fabsf(float %dipole_coeff.0) #6, !dbg !373
  %10 = fpext float %fabsf496 to double, !dbg !373
  %cmp201 = fcmp ogt double %10, 1.200000e-38, !dbg !373
  %mul237 = fmul double %conv199, 2.000000e+00, !dbg !374
  %mul238 = fmul double %mul237, 2.081941e-02, !dbg !374
  %arrayidx239 = getelementptr inbounds float* %mu_tot, i64 2, !dbg !374
  %arraydecay67 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0, !dbg !377
  %arrayidx9.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1, !dbg !382
  %arrayidx10.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2, !dbg !383
  %conv134 = fpext float %0 to double, !dbg !384
  %11 = fmul float %0, %0, !dbg !384
  %arraydecay146 = getelementptr inbounds [3 x float]* %df, i64 0, i64 0, !dbg !385
  %arrayidx4.i = getelementptr inbounds [3 x float]* %df, i64 0, i64 1, !dbg !386
  %arrayidx7.i = getelementptr inbounds [3 x float]* %df, i64 0, i64 2, !dbg !388
  %12 = sext i32 %6 to i64
  br label %for.body, !dbg !369

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %indvars.iv556 = phi i64 [ %12, %for.body.lr.ph ], [ %indvars.iv.next557, %for.cond.backedge ]
  %q2sum.0536 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add44, %for.cond.backedge ]
  %Vexcl.0535 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %Vexcl.1.lcssa, %for.cond.backedge ]
  %arrayidx25 = getelementptr inbounds float* %charge, i64 %indvars.iv556, !dbg !389
  %13 = load float* %arrayidx25, align 4, !dbg !389, !tbaa !341
  %conv26 = fpext float %13 to double, !dbg !389
  %mul27 = fmul double %conv26, 3.320636e+02, !dbg !389
  %mul28 = fmul double %mul27, 4.184000e+00, !dbg !389
  %mul29 = fmul double %mul28, 1.000000e-01, !dbg !389
  %conv30 = fptrunc double %mul29 to float, !dbg !389
  call void @llvm.dbg.value(metadata !{float %conv30}, i64 0, metadata !257), !dbg !389
  %14 = load i32** %index32, align 8, !dbg !371, !tbaa !346
  %arrayidx33 = getelementptr inbounds i32* %14, i64 %indvars.iv556, !dbg !371
  %15 = load i32* %arrayidx33, align 4, !dbg !371, !tbaa !351
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !246), !dbg !371
  %indvars.iv.next557 = add i64 %indvars.iv556, 1, !dbg !369
  %arrayidx37 = getelementptr inbounds i32* %14, i64 %indvars.iv.next557, !dbg !390
  %16 = load i32* %arrayidx37, align 4, !dbg !390, !tbaa !351
  call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !247), !dbg !390
  %mul42 = fmul float %13, %13, !dbg !391
  %conv43 = fpext float %mul42 to double, !dbg !391
  %add44 = fadd double %q2sum.0536, %conv43, !dbg !391
  call void @llvm.dbg.value(metadata !{double %add44}, i64 0, metadata !254), !dbg !391
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !248), !dbg !392
  %cmp46530 = icmp slt i32 %15, %16, !dbg !392
  br i1 %cmp46530, label %for.body48.lr.ph, label %for.end198, !dbg !392

for.body48.lr.ph:                                 ; preds = %for.body
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv556, i64 0, !dbg !377
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv556, i64 1, !dbg !393
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv556, i64 2, !dbg !394
  %arraydecay164 = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv556, i64 0, !dbg !395
  %arrayidx2.i499 = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv556, i64 1, !dbg !396
  %arrayidx5.i502 = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv556, i64 2, !dbg !397
  %17 = sext i32 %15 to i64
  br label %for.body48, !dbg !392

for.body48:                                       ; preds = %for.body48.lr.ph, %for.inc196
  %indvars.iv550 = phi i64 [ %17, %for.body48.lr.ph ], [ %indvars.iv.next551, %for.inc196 ]
  %Vexcl.1531 = phi float [ %Vexcl.0535, %for.body48.lr.ph ], [ %Vexcl.2, %for.inc196 ]
  %arrayidx50 = getelementptr inbounds i32* %8, i64 %indvars.iv550, !dbg !398
  %18 = load i32* %arrayidx50, align 4, !dbg !398, !tbaa !351
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !249), !dbg !398
  %19 = trunc i64 %indvars.iv556 to i32, !dbg !399
  %cmp51 = icmp sgt i32 %18, %19, !dbg !399
  br i1 %cmp51, label %if.then53, label %for.inc196, !dbg !399

if.then53:                                        ; preds = %for.body48
  %idxprom54 = sext i32 %18 to i64, !dbg !400
  %arrayidx55 = getelementptr inbounds float* %charge, i64 %idxprom54, !dbg !400
  %20 = load float* %arrayidx55, align 4, !dbg !400, !tbaa !341
  %mul56 = fmul float %conv30, %20, !dbg !400
  call void @llvm.dbg.value(metadata !{float %mul56}, i64 0, metadata !272), !dbg !400
  %conv57 = fpext float %mul56 to double, !dbg !401
  %fabsf497 = call float @fabsf(float %mul56) #6, !dbg !401
  %21 = fpext float %fabsf497 to double, !dbg !401
  %cmp59 = fcmp ogt double %21, 1.200000e-38, !dbg !401
  br i1 %cmp59, label %if.then61, label %for.inc196, !dbg !401

if.then61:                                        ; preds = %if.then53
  call void @llvm.dbg.value(metadata !326, i64 0, metadata !259), !dbg !402
  %arraydecay66 = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 0, !dbg !377
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !403), !dbg !404
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay66}, i64 0, metadata !405), !dbg !404
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay67}, i64 0, metadata !406), !dbg !404
  %22 = load float* %arraydecay, align 4, !dbg !407, !tbaa !341
  %23 = load float* %arraydecay66, align 4, !dbg !407, !tbaa !341
  %sub.i = fsub float %22, %23, !dbg !407
  tail call void @llvm.dbg.value(metadata !{float %sub.i}, i64 0, metadata !408), !dbg !407
  %24 = load float* %arrayidx2.i, align 4, !dbg !393, !tbaa !341
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 1, !dbg !393
  %25 = load float* %arrayidx3.i, align 4, !dbg !393, !tbaa !341
  %sub4.i = fsub float %24, %25, !dbg !393
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !409), !dbg !393
  %26 = load float* %arrayidx5.i, align 4, !dbg !394, !tbaa !341
  %arrayidx6.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 2, !dbg !394
  %27 = load float* %arrayidx6.i, align 4, !dbg !394, !tbaa !341
  %sub7.i = fsub float %26, %27, !dbg !394
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !410), !dbg !394
  store float %sub.i, float* %arraydecay67, align 4, !dbg !411, !tbaa !341
  store float %sub4.i, float* %arrayidx9.i, align 4, !dbg !382, !tbaa !341
  store float %sub7.i, float* %arrayidx10.i, align 4, !dbg !383, !tbaa !341
  call void @llvm.dbg.value(metadata !412, i64 0, metadata !250), !dbg !413
  br label %for.body71, !dbg !413

for.body71:                                       ; preds = %if.end106.for.body71_crit_edge, %if.then61
  %28 = phi float [ %sub7.i, %if.then61 ], [ %.pre, %if.end106.for.body71_crit_edge ]
  %29 = phi float [ %sub7.i, %if.then61 ], [ %39, %if.end106.for.body71_crit_edge ]
  %30 = phi float [ %sub4.i, %if.then61 ], [ %40, %if.end106.for.body71_crit_edge ]
  %31 = phi float [ %sub.i, %if.then61 ], [ %41, %if.end106.for.body71_crit_edge ]
  %indvars.iv540 = phi i64 [ 2, %if.then61 ], [ %indvars.iv.next541, %if.end106.for.body71_crit_edge ]
  %dr2.0526 = phi float [ 0.000000e+00, %if.then61 ], [ %add112, %if.end106.for.body71_crit_edge ]
  %arrayidx73 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv540, !dbg !415
  %conv74 = fpext float %28 to double, !dbg !415
  %arrayidx77 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv540, !dbg !415
  %arrayidx78 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv540, i64 %indvars.iv540, !dbg !415
  %32 = load float* %arrayidx78, align 4, !dbg !415, !tbaa !341
  %conv79 = fpext float %32 to double, !dbg !415
  %mul80 = fmul double %conv79, 5.000000e-01, !dbg !415
  %cmp81 = fcmp ogt double %conv74, %mul80, !dbg !415
  br i1 %cmp81, label %if.then83, label %if.else88, !dbg !415

if.then83:                                        ; preds = %for.body71
  %arraydecay87 = getelementptr inbounds [3 x float]* %arrayidx77, i64 0, i64 0, !dbg !417
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay67}, i64 0, metadata !418), !dbg !419
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay87}, i64 0, metadata !420), !dbg !419
  %33 = load float* %arraydecay87, align 4, !dbg !421, !tbaa !341
  %sub.i518 = fsub float %31, %33, !dbg !421
  tail call void @llvm.dbg.value(metadata !{float %sub.i518}, i64 0, metadata !422), !dbg !421
  %arrayidx3.i520 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv540, i64 1, !dbg !423
  %34 = load float* %arrayidx3.i520, align 4, !dbg !423, !tbaa !341
  %sub4.i521 = fsub float %30, %34, !dbg !423
  tail call void @llvm.dbg.value(metadata !{float %sub4.i521}, i64 0, metadata !424), !dbg !423
  %arrayidx6.i523 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv540, i64 2, !dbg !425
  %35 = load float* %arrayidx6.i523, align 4, !dbg !425, !tbaa !341
  %sub7.i524 = fsub float %29, %35, !dbg !425
  tail call void @llvm.dbg.value(metadata !{float %sub7.i524}, i64 0, metadata !426), !dbg !425
  store float %sub.i518, float* %arraydecay67, align 4, !dbg !427, !tbaa !341
  store float %sub4.i521, float* %arrayidx9.i, align 4, !dbg !428, !tbaa !341
  store float %sub7.i524, float* %arrayidx10.i, align 4, !dbg !429, !tbaa !341
  br label %if.end106, !dbg !417

if.else88:                                        ; preds = %for.body71
  %mul97 = fmul double %conv79, -5.000000e-01, !dbg !430
  %cmp98 = fcmp olt double %conv74, %mul97, !dbg !430
  br i1 %cmp98, label %if.then100, label %if.end106, !dbg !430

if.then100:                                       ; preds = %if.else88
  %arraydecay104 = getelementptr inbounds [3 x float]* %arrayidx77, i64 0, i64 0, !dbg !431
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay67}, i64 0, metadata !432), !dbg !433
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay104}, i64 0, metadata !434), !dbg !433
  %36 = load float* %arraydecay104, align 4, !dbg !435, !tbaa !341
  %add.i511 = fadd float %31, %36, !dbg !435
  tail call void @llvm.dbg.value(metadata !{float %add.i511}, i64 0, metadata !436), !dbg !435
  %arrayidx3.i513 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv540, i64 1, !dbg !437
  %37 = load float* %arrayidx3.i513, align 4, !dbg !437, !tbaa !341
  %add4.i514 = fadd float %30, %37, !dbg !437
  tail call void @llvm.dbg.value(metadata !{float %add4.i514}, i64 0, metadata !438), !dbg !437
  %arrayidx6.i516 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv540, i64 2, !dbg !439
  %38 = load float* %arrayidx6.i516, align 4, !dbg !439, !tbaa !341
  %add7.i517 = fadd float %29, %38, !dbg !439
  tail call void @llvm.dbg.value(metadata !{float %add7.i517}, i64 0, metadata !440), !dbg !439
  store float %add.i511, float* %arraydecay67, align 4, !dbg !441, !tbaa !341
  store float %add4.i514, float* %arrayidx9.i, align 4, !dbg !442, !tbaa !341
  store float %add7.i517, float* %arrayidx10.i, align 4, !dbg !443, !tbaa !341
  br label %if.end106, !dbg !431

if.end106:                                        ; preds = %if.else88, %if.then100, %if.then83
  %39 = phi float [ %29, %if.else88 ], [ %add7.i517, %if.then100 ], [ %sub7.i524, %if.then83 ]
  %40 = phi float [ %30, %if.else88 ], [ %add4.i514, %if.then100 ], [ %sub4.i521, %if.then83 ]
  %41 = phi float [ %31, %if.else88 ], [ %add.i511, %if.then100 ], [ %sub.i518, %if.then83 ]
  %42 = load float* %arrayidx73, align 4, !dbg !444, !tbaa !341
  %mul111 = fmul float %42, %42, !dbg !444
  %add112 = fadd float %dr2.0526, %mul111, !dbg !444
  call void @llvm.dbg.value(metadata !{float %add112}, i64 0, metadata !259), !dbg !444
  %indvars.iv.next541 = add i64 %indvars.iv540, -1, !dbg !413
  %43 = trunc i64 %indvars.iv540 to i32, !dbg !413
  %cmp69 = icmp sgt i32 %43, 0, !dbg !413
  br i1 %cmp69, label %if.end106.for.body71_crit_edge, label %for.end, !dbg !413

if.end106.for.body71_crit_edge:                   ; preds = %if.end106
  %arrayidx73.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next541
  %.pre = load float* %arrayidx73.phi.trans.insert, align 4, !dbg !415, !tbaa !341
  br label %for.body71, !dbg !413

for.end:                                          ; preds = %if.end106
  %conv113 = fpext float %add112 to double, !dbg !445
  %call114 = call double @sqrt(double %conv113) #5, !dbg !445
  %div115 = fdiv double 1.000000e+00, %call114, !dbg !445
  %conv116 = fptrunc double %div115 to float, !dbg !445
  call void @llvm.dbg.value(metadata !{float %conv116}, i64 0, metadata !260), !dbg !445
  %mul117 = fmul float %conv116, %conv116, !dbg !446
  call void @llvm.dbg.value(metadata !{float %mul117}, i64 0, metadata !265), !dbg !446
  %conv118 = fpext float %conv116 to double, !dbg !447
  %conv120 = fdiv float 1.000000e+00, %conv116, !dbg !447
  call void @llvm.dbg.value(metadata !{float %conv120}, i64 0, metadata !258), !dbg !447
  %mul122 = fmul float %0, %conv120, !dbg !448
  %conv123 = fpext float %mul122 to double, !dbg !448
  %call124 = call double @erf(double %conv123) #5, !dbg !448
  %mul125 = fmul double %conv57, %call124, !dbg !448
  %mul127 = fmul double %conv118, %mul125, !dbg !448
  %conv128 = fptrunc double %mul127 to float, !dbg !448
  call void @llvm.dbg.value(metadata !{float %conv128}, i64 0, metadata !256), !dbg !448
  %add129 = fadd float %Vexcl.1531, %conv128, !dbg !449
  call void @llvm.dbg.value(metadata !{float %add129}, i64 0, metadata !262), !dbg !449
  %conv130 = fpext float %mul117 to double, !dbg !384
  %conv131 = fpext float %conv128 to double, !dbg !384
  %mul133 = fmul double %conv57, 2.000000e+00, !dbg !384
  %mul135 = fmul double %conv134, %mul133, !dbg !384
  %mul136 = fmul double %mul135, 0x3FE20DD750429B6A, !dbg !384
  %44 = fmul float %11, %add112, !dbg !384
  %mul138 = fsub float -0.000000e+00, %44, !dbg !384
  %conv139 = fpext float %mul138 to double, !dbg !384
  %call140 = call double @exp(double %conv139) #5, !dbg !384
  %mul141 = fmul double %mul136, %call140, !dbg !384
  %sub142 = fsub double %conv131, %mul141, !dbg !384
  %mul143 = fmul double %conv130, %sub142, !dbg !384
  %conv144 = fptrunc double %mul143 to float, !dbg !384
  call void @llvm.dbg.value(metadata !{float %conv144}, i64 0, metadata !261), !dbg !384
  tail call void @llvm.dbg.value(metadata !{float %conv144}, i64 0, metadata !450), !dbg !451
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay67}, i64 0, metadata !452), !dbg !451
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay146}, i64 0, metadata !453), !dbg !451
  %mul.i = fmul float %41, %conv144, !dbg !454
  store float %mul.i, float* %arraydecay146, align 4, !dbg !454, !tbaa !341
  %mul3.i = fmul float %40, %conv144, !dbg !386
  store float %mul3.i, float* %arrayidx4.i, align 4, !dbg !386, !tbaa !341
  %mul6.i = fmul float %39, %conv144, !dbg !388
  store float %mul6.i, float* %arrayidx7.i, align 4, !dbg !388, !tbaa !341
  %45 = load %struct._IO_FILE** @debug, align 8, !dbg !455, !tbaa !346
  %tobool = icmp eq %struct._IO_FILE* %45, null, !dbg !455
  br i1 %tobool, label %if.end157, label %if.then147, !dbg !455

if.then147:                                       ; preds = %for.end
  %conv148 = fpext float %conv120 to double, !dbg !456
  %conv149 = fpext float %conv144 to double, !dbg !456
  %conv151 = fpext float %mul.i to double, !dbg !456
  %conv153 = fpext float %mul3.i to double, !dbg !456
  %conv155 = fpext float %mul6.i to double, !dbg !456
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0), double %conv148, double %conv149, double %conv151, double %conv153, double %conv155) #5, !dbg !456
  br label %if.end157, !dbg !456

if.end157:                                        ; preds = %for.end, %if.then147
  %arraydecay160 = getelementptr inbounds [3 x float]* %1, i64 %idxprom54, i64 0, !dbg !457
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay160}, i64 0, metadata !458), !dbg !459
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay146}, i64 0, metadata !460), !dbg !459
  %46 = load float* %arraydecay160, align 4, !dbg !461, !tbaa !341
  %add.i = fadd float %46, %mul.i, !dbg !461
  tail call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !462), !dbg !461
  %arrayidx2.i505 = getelementptr inbounds [3 x float]* %1, i64 %idxprom54, i64 1, !dbg !463
  %47 = load float* %arrayidx2.i505, align 4, !dbg !463, !tbaa !341
  %add4.i = fadd float %47, %mul3.i, !dbg !463
  tail call void @llvm.dbg.value(metadata !{float %add4.i}, i64 0, metadata !464), !dbg !463
  %arrayidx5.i507 = getelementptr inbounds [3 x float]* %1, i64 %idxprom54, i64 2, !dbg !465
  %48 = load float* %arrayidx5.i507, align 4, !dbg !465, !tbaa !341
  %add7.i = fadd float %48, %mul6.i, !dbg !465
  tail call void @llvm.dbg.value(metadata !{float %add7.i}, i64 0, metadata !466), !dbg !465
  store float %add.i, float* %arraydecay160, align 4, !dbg !467, !tbaa !341
  store float %add4.i, float* %arrayidx2.i505, align 4, !dbg !468, !tbaa !341
  store float %add7.i, float* %arrayidx5.i507, align 4, !dbg !469, !tbaa !341
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay164}, i64 0, metadata !470), !dbg !471
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay146}, i64 0, metadata !472), !dbg !471
  %49 = load float* %arraydecay164, align 4, !dbg !473, !tbaa !341
  %sub.i498 = fsub float %49, %mul.i, !dbg !473
  tail call void @llvm.dbg.value(metadata !{float %sub.i498}, i64 0, metadata !474), !dbg !473
  %50 = load float* %arrayidx2.i499, align 4, !dbg !396, !tbaa !341
  %sub4.i501 = fsub float %50, %mul3.i, !dbg !396
  tail call void @llvm.dbg.value(metadata !{float %sub4.i501}, i64 0, metadata !475), !dbg !396
  %51 = load float* %arrayidx5.i502, align 4, !dbg !397, !tbaa !341
  %sub7.i504 = fsub float %51, %mul6.i, !dbg !397
  tail call void @llvm.dbg.value(metadata !{float %sub7.i504}, i64 0, metadata !476), !dbg !397
  store float %sub.i498, float* %arraydecay164, align 4, !dbg !477, !tbaa !341
  store float %sub4.i501, float* %arrayidx2.i499, align 4, !dbg !478, !tbaa !341
  store float %sub7.i504, float* %arrayidx5.i502, align 4, !dbg !479, !tbaa !341
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !251), !dbg !480
  br label %for.cond170.preheader, !dbg !480

for.cond170.preheader:                            ; preds = %for.inc191.for.cond170.preheader_crit_edge, %if.end157
  %52 = phi float [ %41, %if.end157 ], [ %.pre558, %for.inc191.for.cond170.preheader_crit_edge ]
  %indvars.iv546 = phi i64 [ 0, %if.end157 ], [ %indvars.iv.next547, %for.inc191.for.cond170.preheader_crit_edge ]
  %conv176 = fpext float %52 to double, !dbg !482
  %mul177 = fmul double %conv176, 5.000000e-01, !dbg !482
  br label %for.body173, !dbg !484

for.body173:                                      ; preds = %for.body173, %for.cond170.preheader
  %indvars.iv542 = phi i64 [ 0, %for.cond170.preheader ], [ %indvars.iv.next543, %for.body173 ]
  %arrayidx179 = getelementptr inbounds [3 x float]* %df, i64 0, i64 %indvars.iv542, !dbg !482
  %53 = load float* %arrayidx179, align 4, !dbg !482, !tbaa !341
  %conv180 = fpext float %53 to double, !dbg !482
  %mul181 = fmul double %mul177, %conv180, !dbg !482
  %arrayidx185 = getelementptr inbounds [3 x float]* %lr_vir, i64 %indvars.iv546, i64 %indvars.iv542, !dbg !482
  %54 = load float* %arrayidx185, align 4, !dbg !482, !tbaa !341
  %conv186 = fpext float %54 to double, !dbg !482
  %add187 = fadd double %conv186, %mul181, !dbg !482
  %conv188 = fptrunc double %add187 to float, !dbg !482
  store float %conv188, float* %arrayidx185, align 4, !dbg !482, !tbaa !341
  %indvars.iv.next543 = add i64 %indvars.iv542, 1, !dbg !484
  %lftr.wideiv544 = trunc i64 %indvars.iv.next543 to i32, !dbg !484
  %exitcond545 = icmp eq i32 %lftr.wideiv544, 3, !dbg !484
  br i1 %exitcond545, label %for.inc191, label %for.body173, !dbg !484

for.inc191:                                       ; preds = %for.body173
  %indvars.iv.next547 = add i64 %indvars.iv546, 1, !dbg !480
  %lftr.wideiv548 = trunc i64 %indvars.iv.next547 to i32, !dbg !480
  %exitcond549 = icmp eq i32 %lftr.wideiv548, 3, !dbg !480
  br i1 %exitcond549, label %for.inc196, label %for.inc191.for.cond170.preheader_crit_edge, !dbg !480

for.inc191.for.cond170.preheader_crit_edge:       ; preds = %for.inc191
  %arrayidx175.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next547
  %.pre558 = load float* %arrayidx175.phi.trans.insert, align 4, !dbg !482, !tbaa !341
  br label %for.cond170.preheader, !dbg !480

for.inc196:                                       ; preds = %for.inc191, %for.body48, %if.then53
  %Vexcl.2 = phi float [ %Vexcl.1531, %if.then53 ], [ %Vexcl.1531, %for.body48 ], [ %add129, %for.inc191 ]
  %indvars.iv.next551 = add i64 %indvars.iv550, 1, !dbg !392
  %55 = trunc i64 %indvars.iv.next551 to i32, !dbg !392
  %cmp46 = icmp slt i32 %55, %16, !dbg !392
  br i1 %cmp46, label %for.body48, label %for.end198, !dbg !392

for.end198:                                       ; preds = %for.inc196, %for.body
  %Vexcl.1.lcssa = phi float [ %Vexcl.0535, %for.body ], [ %Vexcl.2, %for.inc196 ]
  br i1 %cmp201, label %if.then203, label %for.cond.backedge, !dbg !373

if.then203:                                       ; preds = %for.end198
  switch i32 %ewald_geometry, label %for.cond.backedge [
    i32 0, label %for.body210
    i32 1, label %if.then235
  ], !dbg !485

for.cond.backedge:                                ; preds = %for.body210, %if.then203, %for.end198, %if.then235
  %56 = trunc i64 %indvars.iv.next557 to i32, !dbg !369
  %cmp22 = icmp slt i32 %56, %add, !dbg !369
  br i1 %cmp22, label %for.body, label %for.end257, !dbg !369

for.body210:                                      ; preds = %for.body210, %if.then203
  %indvars.iv552 = phi i64 [ 0, %if.then203 ], [ %indvars.iv.next553, %for.body210 ]
  %arrayidx215 = getelementptr inbounds float* %mu_tot, i64 %indvars.iv552, !dbg !486
  %57 = load float* %arrayidx215, align 4, !dbg !486, !tbaa !341
  %conv216 = fpext float %57 to double, !dbg !486
  %mul217 = fmul double %mul238, %conv216, !dbg !486
  %58 = load float* %arrayidx25, align 4, !dbg !486, !tbaa !341
  %conv220 = fpext float %58 to double, !dbg !486
  %mul221 = fmul double %mul217, %conv220, !dbg !486
  %arrayidx225 = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv556, i64 %indvars.iv552, !dbg !486
  %59 = load float* %arrayidx225, align 4, !dbg !486, !tbaa !341
  %conv226 = fpext float %59 to double, !dbg !486
  %sub227 = fsub double %conv226, %mul221, !dbg !486
  %conv228 = fptrunc double %sub227 to float, !dbg !486
  store float %conv228, float* %arrayidx225, align 4, !dbg !486, !tbaa !341
  %indvars.iv.next553 = add i64 %indvars.iv552, 1, !dbg !489
  %lftr.wideiv554 = trunc i64 %indvars.iv.next553 to i32, !dbg !489
  %exitcond555 = icmp eq i32 %lftr.wideiv554, 3, !dbg !489
  br i1 %exitcond555, label %for.cond.backedge, label %for.body210, !dbg !489

if.then235:                                       ; preds = %if.then203
  %60 = load float* %arrayidx239, align 4, !dbg !374, !tbaa !341
  %conv240 = fpext float %60 to double, !dbg !374
  %mul241 = fmul double %mul238, %conv240, !dbg !374
  %61 = load float* %arrayidx25, align 4, !dbg !374, !tbaa !341
  %conv244 = fpext float %61 to double, !dbg !374
  %mul245 = fmul double %mul241, %conv244, !dbg !374
  %arrayidx248 = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv556, i64 2, !dbg !374
  %62 = load float* %arrayidx248, align 4, !dbg !374, !tbaa !341
  %conv249 = fpext float %62 to double, !dbg !374
  %sub250 = fsub double %conv249, %mul245, !dbg !374
  %conv251 = fptrunc double %sub250 to float, !dbg !374
  store float %conv251, float* %arrayidx248, align 4, !dbg !374, !tbaa !341
  br label %for.cond.backedge, !dbg !490

for.end257:                                       ; preds = %for.cond.backedge, %if.end
  %q2sum.0.lcssa = phi double [ 0.000000e+00, %if.end ], [ %add44, %for.cond.backedge ]
  %Vexcl.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ %Vexcl.1.lcssa, %for.cond.backedge ]
  %nodeid258 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !491
  %63 = load i32* %nodeid258, align 4, !dbg !491, !tbaa !351
  %cmp259 = icmp eq i32 %63, 0, !dbg !491
  br i1 %cmp259, label %land.lhs.true, label %if.end336, !dbg !491

land.lhs.true:                                    ; preds = %for.end257
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !491
  %64 = load i32* %threadid, align 4, !dbg !491, !tbaa !351
  %cmp261 = icmp eq i32 %64, 0, !dbg !491
  br i1 %cmp261, label %if.then263, label %if.end336, !dbg !491

if.then263:                                       ; preds = %land.lhs.true
  %mul264 = fmul float %qsum, %qsum, !dbg !492
  %conv265 = fpext float %mul264 to double, !dbg !492
  %mul266 = fmul double %conv265, 0x400921FB54442D18, !dbg !492
  %mul267 = fmul double %mul266, 3.320636e+02, !dbg !492
  %mul268 = fmul double %mul267, 4.184000e+00, !dbg !492
  %mul269 = fmul double %mul268, 1.000000e-01, !dbg !492
  %conv270 = fpext float %mul7 to double, !dbg !492
  %mul271 = fmul double %conv270, 2.000000e+00, !dbg !492
  %mul273 = fmul double %conv270, %mul271, !dbg !492
  %conv274 = fpext float %0 to double, !dbg !492
  %mul275 = fmul double %conv274, %mul273, !dbg !492
  %mul277 = fmul double %conv274, %mul275, !dbg !492
  %div278 = fdiv double %mul269, %mul277, !dbg !492
  %conv279 = fptrunc double %div278 to float, !dbg !492
  call void @llvm.dbg.value(metadata !{float %conv279}, i64 0, metadata !256), !dbg !492
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !251), !dbg !494
  br label %for.body283, !dbg !494

for.body283:                                      ; preds = %for.body283, %if.then263
  %indvars.iv = phi i64 [ 0, %if.then263 ], [ %indvars.iv.next, %for.body283 ]
  %arrayidx287 = getelementptr inbounds [3 x float]* %lr_vir, i64 %indvars.iv, i64 %indvars.iv, !dbg !496
  %65 = load float* %arrayidx287, align 4, !dbg !496, !tbaa !341
  %add288 = fadd float %conv279, %65, !dbg !496
  store float %add288, float* %arrayidx287, align 4, !dbg !496, !tbaa !341
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !494
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !494
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !494
  br i1 %exitcond, label %for.end291, label %for.body283, !dbg !494

for.end291:                                       ; preds = %for.body283
  %66 = fmul float %mul7, %conv279, !dbg !497
  %mul293 = fsub float -0.000000e+00, %66, !dbg !497
  call void @llvm.dbg.value(metadata !{float %mul293}, i64 0, metadata !263), !dbg !497
  %conv294 = fpext float %dipole_coeff.0 to double, !dbg !498
  %fabsf495 = call float @fabsf(float %dipole_coeff.0) #6, !dbg !498
  %67 = fpext float %fabsf495 to double, !dbg !498
  %cmp296 = fcmp ogt double %67, 1.200000e-38, !dbg !498
  br i1 %cmp296, label %if.then298, label %if.end336, !dbg !498

if.then298:                                       ; preds = %for.end291
  switch i32 %ewald_geometry, label %if.end336 [
    i32 0, label %if.then301
    i32 1, label %if.then322
  ], !dbg !499

if.then301:                                       ; preds = %if.then298
  %mul303 = fmul double %conv294, 2.081941e-02, !dbg !501
  %mul304 = fmul double %mul303, 2.081941e-02, !dbg !501
  %68 = load float* %mu_tot, align 4, !dbg !501, !tbaa !341
  %mul307 = fmul float %68, %68, !dbg !501
  %arrayidx308 = getelementptr inbounds float* %mu_tot, i64 1, !dbg !501
  %69 = load float* %arrayidx308, align 4, !dbg !501, !tbaa !341
  %mul310 = fmul float %69, %69, !dbg !501
  %add311 = fadd float %mul307, %mul310, !dbg !501
  %arrayidx312 = getelementptr inbounds float* %mu_tot, i64 2, !dbg !501
  %70 = load float* %arrayidx312, align 4, !dbg !501, !tbaa !341
  %mul314 = fmul float %70, %70, !dbg !501
  %add315 = fadd float %add311, %mul314, !dbg !501
  %conv316 = fpext float %add315 to double, !dbg !501
  %mul317 = fmul double %mul304, %conv316, !dbg !501
  %conv318 = fptrunc double %mul317 to float, !dbg !501
  call void @llvm.dbg.value(metadata !{float %conv318}, i64 0, metadata !264), !dbg !501
  br label %if.end336, !dbg !501

if.then322:                                       ; preds = %if.then298
  %mul324 = fmul double %conv294, 2.081941e-02, !dbg !502
  %mul325 = fmul double %mul324, 2.081941e-02, !dbg !502
  %arrayidx326 = getelementptr inbounds float* %mu_tot, i64 2, !dbg !502
  %71 = load float* %arrayidx326, align 4, !dbg !502, !tbaa !341
  %conv327 = fpext float %71 to double, !dbg !502
  %mul328 = fmul double %mul325, %conv327, !dbg !502
  %mul331 = fmul double %conv327, %mul328, !dbg !502
  %conv332 = fptrunc double %mul331 to float, !dbg !502
  call void @llvm.dbg.value(metadata !{float %conv332}, i64 0, metadata !264), !dbg !502
  br label %if.end336, !dbg !502

if.end336:                                        ; preds = %if.then298, %for.end291, %land.lhs.true, %for.end257, %if.then322, %if.then301
  %Vcharge.0 = phi float [ %mul293, %if.then301 ], [ %mul293, %if.then322 ], [ 0.000000e+00, %for.end257 ], [ 0.000000e+00, %land.lhs.true ], [ %mul293, %for.end291 ], [ %mul293, %if.then298 ]
  %Vdipole.0 = phi float [ %conv318, %if.then301 ], [ %conv332, %if.then322 ], [ 0.000000e+00, %for.end257 ], [ 0.000000e+00, %land.lhs.true ], [ 0.000000e+00, %for.end291 ], [ 0.000000e+00, %if.then298 ]
  %conv337 = fpext float %0 to double, !dbg !503
  %mul338 = fmul double %conv337, 3.320636e+02, !dbg !503
  %mul339 = fmul double %mul338, 4.184000e+00, !dbg !503
  %mul340 = fmul double %mul339, 1.000000e-01, !dbg !503
  %mul341 = fmul double %mul340, %q2sum.0.lcssa, !dbg !503
  %div343 = fdiv double %mul341, 0x3FFC5BF891B4EF6A, !dbg !503
  %conv344 = fptrunc double %div343 to float, !dbg !503
  store float %conv344, float* @ewald_LRcorrection.Vself, align 4, !dbg !503, !tbaa !341
  %72 = load %struct._IO_FILE** @debug, align 8, !dbg !504, !tbaa !346
  %tobool345 = icmp eq %struct._IO_FILE* %72, null, !dbg !504
  br i1 %tobool345, label %if.end371, label %if.then346, !dbg !504

if.then346:                                       ; preds = %if.end336
  %73 = call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %72), !dbg !505
  %74 = load %struct._IO_FILE** @debug, align 8, !dbg !507, !tbaa !346
  %call349 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([20 x i8]* @.str3, i64 0, i64 0), i32 %6, i32 %7) #5, !dbg !507
  %75 = load %struct._IO_FILE** @debug, align 8, !dbg !508, !tbaa !346
  %76 = load float* @ewald_LRcorrection.Vself, align 4, !dbg !508, !tbaa !341
  %conv350 = fpext float %76 to double, !dbg !508
  %call351 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([22 x i8]* @.str4, i64 0, i64 0), double %q2sum.0.lcssa, double %conv350) #5, !dbg !508
  %77 = load %struct._IO_FILE** @debug, align 8, !dbg !509, !tbaa !346
  %conv352 = fpext float %Vexcl.0.lcssa to double, !dbg !509
  %call353 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0), double %conv352) #5, !dbg !509
  %78 = load i32* %nodeid258, align 4, !dbg !510, !tbaa !351
  %cmp355 = icmp eq i32 %78, 0, !dbg !510
  br i1 %cmp355, label %land.lhs.true357, label %if.end371, !dbg !510

land.lhs.true357:                                 ; preds = %if.then346
  %threadid358 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !510
  %79 = load i32* %threadid358, align 4, !dbg !510, !tbaa !351
  %cmp359 = icmp eq i32 %79, 0, !dbg !510
  br i1 %cmp359, label %if.then361, label %if.end371, !dbg !510

if.then361:                                       ; preds = %land.lhs.true357
  %80 = load %struct._IO_FILE** @debug, align 8, !dbg !511, !tbaa !346
  %conv362 = fpext float %Vcharge.0 to double, !dbg !511
  %call363 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([37 x i8]* @.str6, i64 0, i64 0), double %conv362) #5, !dbg !511
  %cmp364 = fcmp ogt float %epsilon_surface, 0.000000e+00, !dbg !513
  br i1 %cmp364, label %if.then366, label %if.end371, !dbg !513

if.then366:                                       ; preds = %if.then361
  %81 = load %struct._IO_FILE** @debug, align 8, !dbg !514, !tbaa !346
  %conv367 = fpext float %Vdipole.0 to double, !dbg !514
  %call368 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0), double %conv367) #5, !dbg !514
  br label %if.end371, !dbg !514

if.end371:                                        ; preds = %if.then361, %land.lhs.true357, %if.then346, %if.end336, %if.then366
  %add372 = fadd float %Vcharge.0, %Vdipole.0, !dbg !515
  %82 = load float* @ewald_LRcorrection.Vself, align 4, !dbg !515, !tbaa !341
  %sub373 = fsub float %add372, %82, !dbg !515
  %sub374 = fsub float %sub373, %Vexcl.0.lcssa, !dbg !515
  ret float %sub374, !dbg !515
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize
declare double @erf(double) #2

; Function Attrs: nounwind optsize
declare double @exp(double) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !9, metadata !10, metadata !313, metadata !9, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 65, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 65, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/enums.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"eewg3D", i64 0} ; [ DW_TAG_enumerator ] [eewg3D :: 0]
!7 = metadata !{i32 786472, metadata !"eewg3DC", i64 1} ; [ DW_TAG_enumerator ] [eewg3DC :: 1]
!8 = metadata !{i32 786472, metadata !"eewgNR", i64 2} ; [ DW_TAG_enumerator ] [eewgNR :: 2]
!9 = metadata !{i32 0}
!10 = metadata !{metadata !11, metadata !26, metadata !276, metadata !285, metadata !294, metadata !301}
!11 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"calc_ewaldcoeff", metadata !"calc_ewaldcoeff", metadata !"", i32 49, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float)* @calc_ewaldcoeff, null, null, metadata !17, i32 50} ; [ DW_TAG_subprogram ] [line 49] [def] [scope 50] [calc_ewaldcoeff]
!12 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!13 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !15, metadata !15, metadata !15}
!15 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!16 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!17 = metadata !{metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !25}
!18 = metadata !{i32 786689, metadata !11, metadata !"rc", metadata !12, i32 16777265, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 49]
!19 = metadata !{i32 786689, metadata !11, metadata !"dtol", metadata !12, i32 33554481, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dtol] [line 49]
!20 = metadata !{i32 786688, metadata !11, metadata !"x", metadata !12, i32 51, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 51]
!21 = metadata !{i32 786688, metadata !11, metadata !"low", metadata !12, i32 51, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [low] [line 51]
!22 = metadata !{i32 786688, metadata !11, metadata !"high", metadata !12, i32 51, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [high] [line 51]
!23 = metadata !{i32 786688, metadata !11, metadata !"n", metadata !12, i32 52, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 52]
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !12, i32 52, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 52]
!26 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"ewald_LRcorrection", metadata !"ewald_LRcorrection", metadata !"", i32 75, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, %struct.t_nsborder*, %struct.t_commrec*, %struct.t_forcerec*, float*, %struct.t_block*, [3 x float]*, [3 x float]*, float*, float, i32, float, [3 x float]*)* @ewald_LRcorrection, null, null, metadata !231, i32 79} ; [ DW_TAG_subprogram ] [line 75] [def] [scope 79] [ewald_LRcorrection]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !15, metadata !29, metadata !86, metadata !105, metadata !116, metadata !140, metadata !220, metadata !174, metadata !230, metadata !140, metadata !15, metadata !24, metadata !15, metadata !230}
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!30 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!32 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !56, metadata !57, metadata !58, metadata !59, metadata !62, metadata !64, metadata !66, metadata !70, metadata !72, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !81, metadata !82}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!37 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!38 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!39 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!40 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!41 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!42 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!43 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!44 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!45 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!46 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!47 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!48 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !49} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!50 = metadata !{i32 786451, metadata !32, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !51, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!51 = metadata !{metadata !52, metadata !53, metadata !55}
!52 = metadata !{i32 786445, metadata !32, metadata !50, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786445, metadata !32, metadata !50, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!55 = metadata !{i32 786445, metadata !32, metadata !50, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!56 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !54} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!57 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !24} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!58 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !24} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!59 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !60} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!60 = metadata !{i32 786454, metadata !32, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!61 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!62 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !63} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!63 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!64 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !65} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!65 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!66 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !67} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!67 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !37, metadata !68, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!68 = metadata !{metadata !69}
!69 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!70 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !71} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!71 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!72 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !73} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!73 = metadata !{i32 786454, metadata !32, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!74 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!75 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!76 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!77 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!78 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !79} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!79 = metadata !{i32 786454, metadata !32, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!80 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!81 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !24} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!82 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !83} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!83 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !37, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nsborder]
!87 = metadata !{i32 786454, metadata !1, null, metadata !"t_nsborder", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [t_nsborder] [line 59, size 0, align 0, offset 0] [from ]
!88 = metadata !{i32 786451, metadata !89, null, metadata !"", i32 36, i64 32992, i64 32, i32 0, i32 0, null, metadata !90, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 32992, align 32, offset 0] [from ]
!89 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !102, metadata !103, metadata !104}
!91 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!92 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"nnodes", i32 38, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [nnodes] [line 38, size 32, align 32, offset 32] [from int]
!93 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"cgtotal", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [cgtotal] [line 39, size 32, align 32, offset 64] [from int]
!94 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"natoms", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [natoms] [line 40, size 32, align 32, offset 96] [from int]
!95 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"nstDlb", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [nstDlb] [line 41, size 32, align 32, offset 128] [from int]
!96 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"shift", i32 43, i64 32, i64 32, i64 160, i32 0, metadata !24} ; [ DW_TAG_member ] [shift] [line 43, size 32, align 32, offset 160] [from int]
!97 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"bshift", i32 43, i64 32, i64 32, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [bshift] [line 43, size 32, align 32, offset 192] [from int]
!98 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"homenr", i32 50, i64 8192, i64 32, i64 224, i32 0, metadata !99} ; [ DW_TAG_member ] [homenr] [line 50, size 8192, align 32, offset 224] [from ]
!99 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !24, metadata !100, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!100 = metadata !{metadata !101}
!101 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!102 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"index", i32 51, i64 8192, i64 32, i64 8416, i32 0, metadata !99} ; [ DW_TAG_member ] [index] [line 51, size 8192, align 32, offset 8416] [from ]
!103 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"cgload", i32 52, i64 8192, i64 32, i64 16608, i32 0, metadata !99} ; [ DW_TAG_member ] [cgload] [line 52, size 8192, align 32, offset 16608] [from ]
!104 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"workload", i32 55, i64 8192, i64 32, i64 24800, i32 0, metadata !99} ; [ DW_TAG_member ] [workload] [line 55, size 8192, align 32, offset 24800] [from ]
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!106 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!107 = metadata !{i32 786451, metadata !108, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !109, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!108 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115}
!110 = metadata !{i32 786445, metadata !108, metadata !107, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!111 = metadata !{i32 786445, metadata !108, metadata !107, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!112 = metadata !{i32 786445, metadata !108, metadata !107, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!113 = metadata !{i32 786445, metadata !108, metadata !107, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!114 = metadata !{i32 786445, metadata !108, metadata !107, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!115 = metadata !{i32 786445, metadata !108, metadata !107, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !24} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!116 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !117} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_forcerec]
!117 = metadata !{i32 786454, metadata !1, null, metadata !"t_forcerec", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_typedef ] [t_forcerec] [line 149, size 0, align 0, offset 0] [from ]
!118 = metadata !{i32 786451, metadata !119, null, metadata !"", i32 43, i64 22784, i64 64, i32 0, i32 0, null, metadata !120, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 43, size 22784, align 64, offset 0] [from ]
!119 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/forcerec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!120 = metadata !{metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !172, metadata !173, metadata !176, metadata !177, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219}
!121 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"ePBC", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [ePBC] [line 45, size 32, align 32, offset 0] [from int]
!122 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"rlist", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [rlist] [line 46, size 32, align 32, offset 32] [from real]
!123 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"rlistlong", i32 46, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [rlistlong] [line 46, size 32, align 32, offset 64] [from real]
!124 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"zsquare", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [zsquare] [line 49, size 32, align 32, offset 96] [from real]
!125 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"temp", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [temp] [line 49, size 32, align 32, offset 128] [from real]
!126 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"epsilon_r", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !15} ; [ DW_TAG_member ] [epsilon_r] [line 50, size 32, align 32, offset 160] [from real]
!127 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"epsfac", i32 50, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [epsfac] [line 50, size 32, align 32, offset 192] [from real]
!128 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"bRF", i32 53, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [bRF] [line 53, size 32, align 32, offset 224] [from int]
!129 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"kappa", i32 54, i64 32, i64 32, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [kappa] [line 54, size 32, align 32, offset 256] [from real]
!130 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"k_rf", i32 54, i64 32, i64 32, i64 288, i32 0, metadata !15} ; [ DW_TAG_member ] [k_rf] [line 54, size 32, align 32, offset 288] [from real]
!131 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"c_rf", i32 54, i64 32, i64 32, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [c_rf] [line 54, size 32, align 32, offset 320] [from real]
!132 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"avcsix", i32 57, i64 32, i64 32, i64 352, i32 0, metadata !15} ; [ DW_TAG_member ] [avcsix] [line 57, size 32, align 32, offset 352] [from real]
!133 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"fudgeQQ", i32 60, i64 32, i64 32, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [fudgeQQ] [line 60, size 32, align 32, offset 384] [from real]
!134 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"bcoultab", i32 63, i64 32, i64 32, i64 416, i32 0, metadata !24} ; [ DW_TAG_member ] [bcoultab] [line 63, size 32, align 32, offset 416] [from int]
!135 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"bvdwtab", i32 64, i64 32, i64 32, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [bvdwtab] [line 64, size 32, align 32, offset 448] [from int]
!136 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"rtab", i32 65, i64 32, i64 32, i64 480, i32 0, metadata !15} ; [ DW_TAG_member ] [rtab] [line 65, size 32, align 32, offset 480] [from real]
!137 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"ntab", i32 66, i64 32, i64 32, i64 512, i32 0, metadata !24} ; [ DW_TAG_member ] [ntab] [line 66, size 32, align 32, offset 512] [from int]
!138 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"tabscale", i32 67, i64 32, i64 32, i64 544, i32 0, metadata !15} ; [ DW_TAG_member ] [tabscale] [line 67, size 32, align 32, offset 544] [from real]
!139 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"coultab", i32 69, i64 64, i64 64, i64 576, i32 0, metadata !140} ; [ DW_TAG_member ] [coultab] [line 69, size 64, align 64, offset 576] [from ]
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!141 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"vdwtab", i32 70, i64 64, i64 64, i64 640, i32 0, metadata !140} ; [ DW_TAG_member ] [vdwtab] [line 70, size 64, align 64, offset 640] [from ]
!142 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"coulvdwtab", i32 71, i64 64, i64 64, i64 704, i32 0, metadata !140} ; [ DW_TAG_member ] [coulvdwtab] [line 71, size 64, align 64, offset 704] [from ]
!143 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"coulvdw14tab", i32 72, i64 64, i64 64, i64 768, i32 0, metadata !140} ; [ DW_TAG_member ] [coulvdw14tab] [line 72, size 64, align 64, offset 768] [from ]
!144 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"rcoulomb_switch", i32 75, i64 32, i64 32, i64 832, i32 0, metadata !15} ; [ DW_TAG_member ] [rcoulomb_switch] [line 75, size 32, align 32, offset 832] [from real]
!145 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"rcoulomb", i32 75, i64 32, i64 32, i64 864, i32 0, metadata !15} ; [ DW_TAG_member ] [rcoulomb] [line 75, size 32, align 32, offset 864] [from real]
!146 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"phi", i32 76, i64 64, i64 64, i64 896, i32 0, metadata !140} ; [ DW_TAG_member ] [phi] [line 76, size 64, align 64, offset 896] [from ]
!147 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"rvdw_switch", i32 79, i64 32, i64 32, i64 960, i32 0, metadata !15} ; [ DW_TAG_member ] [rvdw_switch] [line 79, size 32, align 32, offset 960] [from real]
!148 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"rvdw", i32 79, i64 32, i64 32, i64 992, i32 0, metadata !15} ; [ DW_TAG_member ] [rvdw] [line 79, size 32, align 32, offset 992] [from real]
!149 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"bham_b_max", i32 80, i64 32, i64 32, i64 1024, i32 0, metadata !15} ; [ DW_TAG_member ] [bham_b_max] [line 80, size 32, align 32, offset 1024] [from real]
!150 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"tabscale_exp", i32 81, i64 32, i64 32, i64 1056, i32 0, metadata !15} ; [ DW_TAG_member ] [tabscale_exp] [line 81, size 32, align 32, offset 1056] [from real]
!151 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"efep", i32 84, i64 32, i64 32, i64 1088, i32 0, metadata !24} ; [ DW_TAG_member ] [efep] [line 84, size 32, align 32, offset 1088] [from int]
!152 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"sc_alpha", i32 85, i64 32, i64 32, i64 1120, i32 0, metadata !15} ; [ DW_TAG_member ] [sc_alpha] [line 85, size 32, align 32, offset 1120] [from real]
!153 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"sc_sigma6", i32 86, i64 32, i64 32, i64 1152, i32 0, metadata !15} ; [ DW_TAG_member ] [sc_sigma6] [line 86, size 32, align 32, offset 1152] [from real]
!154 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"bSepDVDL", i32 87, i64 32, i64 32, i64 1184, i32 0, metadata !24} ; [ DW_TAG_member ] [bSepDVDL] [line 87, size 32, align 32, offset 1184] [from int]
!155 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"eeltype", i32 90, i64 32, i64 32, i64 1216, i32 0, metadata !24} ; [ DW_TAG_member ] [eeltype] [line 90, size 32, align 32, offset 1216] [from int]
!156 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"vdwtype", i32 91, i64 32, i64 32, i64 1248, i32 0, metadata !24} ; [ DW_TAG_member ] [vdwtype] [line 91, size 32, align 32, offset 1248] [from int]
!157 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"cg0", i32 92, i64 32, i64 32, i64 1280, i32 0, metadata !24} ; [ DW_TAG_member ] [cg0] [line 92, size 32, align 32, offset 1280] [from int]
!158 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"hcg", i32 92, i64 32, i64 32, i64 1312, i32 0, metadata !24} ; [ DW_TAG_member ] [hcg] [line 92, size 32, align 32, offset 1312] [from int]
!159 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"ndelta", i32 93, i64 32, i64 32, i64 1344, i32 0, metadata !24} ; [ DW_TAG_member ] [ndelta] [line 93, size 32, align 32, offset 1344] [from int]
!160 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"bSolvOpt", i32 94, i64 32, i64 32, i64 1376, i32 0, metadata !24} ; [ DW_TAG_member ] [bSolvOpt] [line 94, size 32, align 32, offset 1376] [from int]
!161 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"nMNOMol", i32 95, i64 32, i64 32, i64 1408, i32 0, metadata !24} ; [ DW_TAG_member ] [nMNOMol] [line 95, size 32, align 32, offset 1408] [from int]
!162 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"nMNOav", i32 96, i64 96, i64 32, i64 1440, i32 0, metadata !163} ; [ DW_TAG_member ] [nMNOav] [line 96, size 96, align 32, offset 1440] [from ]
!163 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !15, metadata !164, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!164 = metadata !{metadata !165}
!165 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!166 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"nWatMol", i32 97, i64 32, i64 32, i64 1536, i32 0, metadata !24} ; [ DW_TAG_member ] [nWatMol] [line 97, size 32, align 32, offset 1536] [from int]
!167 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"Dimension", i32 98, i64 32, i64 32, i64 1568, i32 0, metadata !24} ; [ DW_TAG_member ] [Dimension] [line 98, size 32, align 32, offset 1568] [from int]
!168 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"bGrid", i32 99, i64 32, i64 32, i64 1600, i32 0, metadata !24} ; [ DW_TAG_member ] [bGrid] [line 99, size 32, align 32, offset 1600] [from int]
!169 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"bDomDecomp", i32 99, i64 32, i64 32, i64 1632, i32 0, metadata !24} ; [ DW_TAG_member ] [bDomDecomp] [line 99, size 32, align 32, offset 1632] [from int]
!170 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"solvent_type", i32 100, i64 64, i64 64, i64 1664, i32 0, metadata !171} ; [ DW_TAG_member ] [solvent_type] [line 100, size 64, align 64, offset 1664] [from ]
!171 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!172 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"mno_index", i32 101, i64 64, i64 64, i64 1728, i32 0, metadata !171} ; [ DW_TAG_member ] [mno_index] [line 101, size 64, align 64, offset 1728] [from ]
!173 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"cg_cm", i32 102, i64 64, i64 64, i64 1792, i32 0, metadata !174} ; [ DW_TAG_member ] [cg_cm] [line 102, size 64, align 64, offset 1792] [from ]
!174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!175 = metadata !{i32 786454, metadata !119, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !163} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!176 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"shift_vec", i32 103, i64 64, i64 64, i64 1856, i32 0, metadata !174} ; [ DW_TAG_member ] [shift_vec] [line 103, size 64, align 64, offset 1856] [from ]
!177 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"nlist_sr", i32 108, i64 9984, i64 64, i64 1920, i32 0, metadata !178} ; [ DW_TAG_member ] [nlist_sr] [line 108, size 9984, align 64, offset 1920] [from ]
!178 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 9984, i64 64, i32 0, i32 0, metadata !179, metadata !200, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 9984, align 64, offset 0] [from t_nblist]
!179 = metadata !{i32 786454, metadata !119, null, metadata !"t_nblist", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !180} ; [ DW_TAG_typedef ] [t_nblist] [line 60, size 0, align 0, offset 0] [from ]
!180 = metadata !{i32 786451, metadata !181, null, metadata !"", i32 36, i64 768, i64 64, i32 0, i32 0, null, metadata !182, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 768, align 64, offset 0] [from ]
!181 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nblist.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!182 = metadata !{metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199}
!183 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"il_code", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [il_code] [line 37, size 32, align 32, offset 0] [from int]
!184 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"nri", i32 39, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [nri] [line 39, size 32, align 32, offset 32] [from int]
!185 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"maxnri", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [maxnri] [line 39, size 32, align 32, offset 64] [from int]
!186 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"nrj", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [nrj] [line 40, size 32, align 32, offset 96] [from int]
!187 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"maxnrj", i32 40, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [maxnrj] [line 40, size 32, align 32, offset 128] [from int]
!188 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"maxlen", i32 41, i64 32, i64 32, i64 160, i32 0, metadata !24} ; [ DW_TAG_member ] [maxlen] [line 41, size 32, align 32, offset 160] [from int]
!189 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"solvent", i32 42, i64 32, i64 32, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [solvent] [line 42, size 32, align 32, offset 192] [from int]
!190 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"iinr", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !191} ; [ DW_TAG_member ] [iinr] [line 43, size 64, align 64, offset 256] [from ]
!191 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !192} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!192 = metadata !{i32 786454, metadata !181, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!193 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"gid", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !171} ; [ DW_TAG_member ] [gid] [line 44, size 64, align 64, offset 320] [from ]
!194 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"shift", i32 45, i64 64, i64 64, i64 384, i32 0, metadata !171} ; [ DW_TAG_member ] [shift] [line 45, size 64, align 64, offset 384] [from ]
!195 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"jindex", i32 46, i64 64, i64 64, i64 448, i32 0, metadata !171} ; [ DW_TAG_member ] [jindex] [line 46, size 64, align 64, offset 448] [from ]
!196 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"jjnr", i32 47, i64 64, i64 64, i64 512, i32 0, metadata !191} ; [ DW_TAG_member ] [jjnr] [line 47, size 64, align 64, offset 512] [from ]
!197 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"nsatoms", i32 48, i64 64, i64 64, i64 576, i32 0, metadata !171} ; [ DW_TAG_member ] [nsatoms] [line 48, size 64, align 64, offset 576] [from ]
!198 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"pad1", i32 58, i64 32, i64 32, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [pad1] [line 58, size 32, align 32, offset 640] [from int]
!199 = metadata !{i32 786445, metadata !181, metadata !180, metadata !"pad2", i32 58, i64 64, i64 64, i64 704, i32 0, metadata !171} ; [ DW_TAG_member ] [pad2] [line 58, size 64, align 64, offset 704] [from ]
!200 = metadata !{metadata !201}
!201 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 12]
!202 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"nlist_lr", i32 109, i64 9984, i64 64, i64 11904, i32 0, metadata !178} ; [ DW_TAG_member ] [nlist_lr] [line 109, size 9984, align 64, offset 11904] [from ]
!203 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"bTwinRange", i32 120, i64 32, i64 32, i64 21888, i32 0, metadata !24} ; [ DW_TAG_member ] [bTwinRange] [line 120, size 32, align 32, offset 21888] [from int]
!204 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"nlr", i32 121, i64 32, i64 32, i64 21920, i32 0, metadata !24} ; [ DW_TAG_member ] [nlr] [line 121, size 32, align 32, offset 21920] [from int]
!205 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"f_twin", i32 122, i64 64, i64 64, i64 21952, i32 0, metadata !174} ; [ DW_TAG_member ] [f_twin] [line 122, size 64, align 64, offset 21952] [from ]
!206 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"fshift_twin", i32 123, i64 64, i64 64, i64 22016, i32 0, metadata !174} ; [ DW_TAG_member ] [fshift_twin] [line 123, size 64, align 64, offset 22016] [from ]
!207 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"f_pme", i32 126, i64 64, i64 64, i64 22080, i32 0, metadata !174} ; [ DW_TAG_member ] [f_pme] [line 126, size 64, align 64, offset 22080] [from ]
!208 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"bEwald", i32 127, i64 32, i64 32, i64 22144, i32 0, metadata !24} ; [ DW_TAG_member ] [bEwald] [line 127, size 32, align 32, offset 22144] [from int]
!209 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"ewaldcoeff", i32 128, i64 32, i64 32, i64 22176, i32 0, metadata !15} ; [ DW_TAG_member ] [ewaldcoeff] [line 128, size 32, align 32, offset 22176] [from real]
!210 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"fshift", i32 131, i64 64, i64 64, i64 22208, i32 0, metadata !174} ; [ DW_TAG_member ] [fshift] [line 131, size 64, align 64, offset 22208] [from ]
!211 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"nmol", i32 134, i64 32, i64 32, i64 22272, i32 0, metadata !24} ; [ DW_TAG_member ] [nmol] [line 134, size 32, align 32, offset 22272] [from int]
!212 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"mol_nr", i32 135, i64 64, i64 64, i64 22336, i32 0, metadata !191} ; [ DW_TAG_member ] [mol_nr] [line 135, size 64, align 64, offset 22336] [from ]
!213 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"mol_epot", i32 136, i64 64, i64 64, i64 22400, i32 0, metadata !140} ; [ DW_TAG_member ] [mol_epot] [line 136, size 64, align 64, offset 22400] [from ]
!214 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"nstcalc", i32 137, i64 32, i64 32, i64 22464, i32 0, metadata !24} ; [ DW_TAG_member ] [nstcalc] [line 137, size 32, align 32, offset 22464] [from int]
!215 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"ntype", i32 140, i64 32, i64 32, i64 22496, i32 0, metadata !24} ; [ DW_TAG_member ] [ntype] [line 140, size 32, align 32, offset 22496] [from int]
!216 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"bBHAM", i32 141, i64 32, i64 32, i64 22528, i32 0, metadata !24} ; [ DW_TAG_member ] [bBHAM] [line 141, size 32, align 32, offset 22528] [from int]
!217 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"nbfp", i32 142, i64 64, i64 64, i64 22592, i32 0, metadata !140} ; [ DW_TAG_member ] [nbfp] [line 142, size 64, align 64, offset 22592] [from ]
!218 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"eg_excl", i32 145, i64 64, i64 64, i64 22656, i32 0, metadata !171} ; [ DW_TAG_member ] [eg_excl] [line 145, size 64, align 64, offset 22656] [from ]
!219 = metadata !{i32 786445, metadata !119, metadata !118, metadata !"fc_stepsize", i32 148, i64 32, i64 32, i64 22720, i32 0, metadata !15} ; [ DW_TAG_member ] [fc_stepsize] [line 148, size 32, align 32, offset 22720] [from real]
!220 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !221} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_block]
!221 = metadata !{i32 786454, metadata !1, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !222} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!222 = metadata !{i32 786451, metadata !223, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !224, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!223 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!224 = metadata !{metadata !225, metadata !226, metadata !227, metadata !228, metadata !229}
!225 = metadata !{i32 786445, metadata !223, metadata !222, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !99} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!226 = metadata !{i32 786445, metadata !223, metadata !222, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !24} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!227 = metadata !{i32 786445, metadata !223, metadata !222, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !191} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!228 = metadata !{i32 786445, metadata !223, metadata !222, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !24} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!229 = metadata !{i32 786445, metadata !223, metadata !222, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !191} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!230 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !163} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!231 = metadata !{metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275}
!232 = metadata !{i32 786689, metadata !26, metadata !"fp", metadata !12, i32 16777291, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 75]
!233 = metadata !{i32 786689, metadata !26, metadata !"nsb", metadata !12, i32 33554507, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 75]
!234 = metadata !{i32 786689, metadata !26, metadata !"cr", metadata !12, i32 50331723, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 75]
!235 = metadata !{i32 786689, metadata !26, metadata !"fr", metadata !12, i32 67108939, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 75]
!236 = metadata !{i32 786689, metadata !26, metadata !"charge", metadata !12, i32 83886156, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 76]
!237 = metadata !{i32 786689, metadata !26, metadata !"excl", metadata !12, i32 100663372, metadata !220, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [excl] [line 76]
!238 = metadata !{i32 786689, metadata !26, metadata !"x", metadata !12, i32 117440588, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 76]
!239 = metadata !{i32 786689, metadata !26, metadata !"box", metadata !12, i32 134217805, metadata !230, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 77]
!240 = metadata !{i32 786689, metadata !26, metadata !"mu_tot", metadata !12, i32 150995021, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mu_tot] [line 77]
!241 = metadata !{i32 786689, metadata !26, metadata !"qsum", metadata !12, i32 167772237, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [qsum] [line 77]
!242 = metadata !{i32 786689, metadata !26, metadata !"ewald_geometry", metadata !12, i32 184549453, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ewald_geometry] [line 77]
!243 = metadata !{i32 786689, metadata !26, metadata !"epsilon_surface", metadata !12, i32 201326670, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [epsilon_surface] [line 78]
!244 = metadata !{i32 786689, metadata !26, metadata !"lr_vir", metadata !12, i32 218103886, metadata !230, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lr_vir] [line 78]
!245 = metadata !{i32 786688, metadata !26, metadata !"i", metadata !12, i32 83, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 83]
!246 = metadata !{i32 786688, metadata !26, metadata !"i1", metadata !12, i32 83, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 83]
!247 = metadata !{i32 786688, metadata !26, metadata !"i2", metadata !12, i32 83, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2] [line 83]
!248 = metadata !{i32 786688, metadata !26, metadata !"j", metadata !12, i32 83, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 83]
!249 = metadata !{i32 786688, metadata !26, metadata !"k", metadata !12, i32 83, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 83]
!250 = metadata !{i32 786688, metadata !26, metadata !"m", metadata !12, i32 83, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 83]
!251 = metadata !{i32 786688, metadata !26, metadata !"iv", metadata !12, i32 83, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iv] [line 83]
!252 = metadata !{i32 786688, metadata !26, metadata !"jv", metadata !12, i32 83, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jv] [line 83]
!253 = metadata !{i32 786688, metadata !26, metadata !"AA", metadata !12, i32 84, metadata !191, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [AA] [line 84]
!254 = metadata !{i32 786688, metadata !26, metadata !"q2sum", metadata !12, i32 85, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q2sum] [line 85]
!255 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!256 = metadata !{i32 786688, metadata !26, metadata !"vc", metadata !12, i32 86, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vc] [line 86]
!257 = metadata !{i32 786688, metadata !26, metadata !"qi", metadata !12, i32 86, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qi] [line 86]
!258 = metadata !{i32 786688, metadata !26, metadata !"dr", metadata !12, i32 86, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dr] [line 86]
!259 = metadata !{i32 786688, metadata !26, metadata !"dr2", metadata !12, i32 86, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dr2] [line 86]
!260 = metadata !{i32 786688, metadata !26, metadata !"rinv", metadata !12, i32 86, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rinv] [line 86]
!261 = metadata !{i32 786688, metadata !26, metadata !"fscal", metadata !12, i32 86, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fscal] [line 86]
!262 = metadata !{i32 786688, metadata !26, metadata !"Vexcl", metadata !12, i32 86, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Vexcl] [line 86]
!263 = metadata !{i32 786688, metadata !26, metadata !"Vcharge", metadata !12, i32 86, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Vcharge] [line 86]
!264 = metadata !{i32 786688, metadata !26, metadata !"Vdipole", metadata !12, i32 86, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Vdipole] [line 86]
!265 = metadata !{i32 786688, metadata !26, metadata !"rinv2", metadata !12, i32 86, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rinv2] [line 86]
!266 = metadata !{i32 786688, metadata !26, metadata !"ewc", metadata !12, i32 86, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ewc] [line 86]
!267 = metadata !{i32 786688, metadata !26, metadata !"df", metadata !12, i32 87, metadata !175, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 87]
!268 = metadata !{i32 786688, metadata !26, metadata !"dx", metadata !12, i32 87, metadata !175, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 87]
!269 = metadata !{i32 786688, metadata !26, metadata !"f_pme", metadata !12, i32 88, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f_pme] [line 88]
!270 = metadata !{i32 786688, metadata !26, metadata !"vol", metadata !12, i32 89, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vol] [line 89]
!271 = metadata !{i32 786688, metadata !26, metadata !"dipole_coeff", metadata !12, i32 90, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dipole_coeff] [line 90]
!272 = metadata !{i32 786688, metadata !26, metadata !"qq", metadata !12, i32 90, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qq] [line 90]
!273 = metadata !{i32 786688, metadata !26, metadata !"isp", metadata !12, i32 98, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isp] [line 98]
!274 = metadata !{i32 786688, metadata !26, metadata !"start", metadata !12, i32 100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 100]
!275 = metadata !{i32 786688, metadata !26, metadata !"end", metadata !12, i32 101, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 101]
!276 = metadata !{i32 786478, metadata !277, metadata !278, metadata !"svmul", metadata !"svmul", metadata !"", i32 304, metadata !279, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !281, i32 305} ; [ DW_TAG_subprogram ] [line 304] [local] [def] [scope 305] [svmul]
!277 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!278 = metadata !{i32 786473, metadata !277}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!279 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !280, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!280 = metadata !{null, metadata !15, metadata !140, metadata !140}
!281 = metadata !{metadata !282, metadata !283, metadata !284}
!282 = metadata !{i32 786689, metadata !276, metadata !"a", metadata !278, i32 16777520, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 304]
!283 = metadata !{i32 786689, metadata !276, metadata !"v1", metadata !278, i32 33554736, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v1] [line 304]
!284 = metadata !{i32 786689, metadata !276, metadata !"v2", metadata !278, i32 50331952, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v2] [line 304]
!285 = metadata !{i32 786478, metadata !277, metadata !278, metadata !"rvec_inc", metadata !"rvec_inc", metadata !"", i32 231, metadata !286, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !288, i32 232} ; [ DW_TAG_subprogram ] [line 231] [local] [def] [scope 232] [rvec_inc]
!286 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!287 = metadata !{null, metadata !140, metadata !140}
!288 = metadata !{metadata !289, metadata !290, metadata !291, metadata !292, metadata !293}
!289 = metadata !{i32 786689, metadata !285, metadata !"a", metadata !278, i32 16777447, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 231]
!290 = metadata !{i32 786689, metadata !285, metadata !"b", metadata !278, i32 33554663, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 231]
!291 = metadata !{i32 786688, metadata !285, metadata !"x", metadata !278, i32 233, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 233]
!292 = metadata !{i32 786688, metadata !285, metadata !"y", metadata !278, i32 233, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 233]
!293 = metadata !{i32 786688, metadata !285, metadata !"z", metadata !278, i32 233, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 233]
!294 = metadata !{i32 786478, metadata !277, metadata !278, metadata !"rvec_dec", metadata !"rvec_dec", metadata !"", i32 257, metadata !286, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !295, i32 258} ; [ DW_TAG_subprogram ] [line 257] [local] [def] [scope 258] [rvec_dec]
!295 = metadata !{metadata !296, metadata !297, metadata !298, metadata !299, metadata !300}
!296 = metadata !{i32 786689, metadata !294, metadata !"a", metadata !278, i32 16777473, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 257]
!297 = metadata !{i32 786689, metadata !294, metadata !"b", metadata !278, i32 33554689, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 257]
!298 = metadata !{i32 786688, metadata !294, metadata !"x", metadata !278, i32 259, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 259]
!299 = metadata !{i32 786688, metadata !294, metadata !"y", metadata !278, i32 259, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 259]
!300 = metadata !{i32 786688, metadata !294, metadata !"z", metadata !278, i32 259, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 259]
!301 = metadata !{i32 786478, metadata !277, metadata !278, metadata !"rvec_sub", metadata !"rvec_sub", metadata !"", i32 244, metadata !302, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !306, i32 245} ; [ DW_TAG_subprogram ] [line 244] [local] [def] [scope 245] [rvec_sub]
!302 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!303 = metadata !{null, metadata !304, metadata !304, metadata !140}
!304 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !305} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!305 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!306 = metadata !{metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312}
!307 = metadata !{i32 786689, metadata !301, metadata !"a", metadata !278, i32 16777460, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 244]
!308 = metadata !{i32 786689, metadata !301, metadata !"b", metadata !278, i32 33554676, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 244]
!309 = metadata !{i32 786689, metadata !301, metadata !"c", metadata !278, i32 50331892, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 244]
!310 = metadata !{i32 786688, metadata !301, metadata !"x", metadata !278, i32 246, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 246]
!311 = metadata !{i32 786688, metadata !301, metadata !"y", metadata !278, i32 246, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 246]
!312 = metadata !{i32 786688, metadata !301, metadata !"z", metadata !278, i32 246, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 246]
!313 = metadata !{metadata !314, metadata !315}
!314 = metadata !{i32 786484, i32 0, metadata !26, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !12, i32 80, metadata !24, i32 1, i32 1, null, null}
!315 = metadata !{i32 786484, i32 0, metadata !26, metadata !"Vself", metadata !"Vself", metadata !"", metadata !12, i32 81, metadata !15, i32 1, i32 1, float* @ewald_LRcorrection.Vself, null} ; [ DW_TAG_variable ] [Vself] [line 81] [local] [def]
!316 = metadata !{i32 49, i32 0, metadata !11, null}
!317 = metadata !{float 5.000000e+00}
!318 = metadata !{i32 51, i32 0, metadata !11, null}
!319 = metadata !{i32 52, i32 0, metadata !11, null}
!320 = metadata !{i32 58, i32 0, metadata !11, null} ; [ DW_TAG_imported_module ]
!321 = metadata !{i32 55, i32 0, metadata !11, null}
!322 = metadata !{i32 56, i32 0, metadata !323, null}
!323 = metadata !{i32 786443, metadata !1, metadata !11, i32 55, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!324 = metadata !{i32 57, i32 0, metadata !323, null}
!325 = metadata !{i32 60, i32 0, metadata !11, null}
!326 = metadata !{float 0.000000e+00}
!327 = metadata !{i32 61, i32 0, metadata !11, null}
!328 = metadata !{i32 62, i32 0, metadata !11, null}
!329 = metadata !{i32 63, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !11, i32 63, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!331 = metadata !{i32 64, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !330, i32 63, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!333 = metadata !{i32 65, i32 0, metadata !332, null}
!334 = metadata !{i32 66, i32 0, metadata !332, null}
!335 = metadata !{i32 70, i32 0, metadata !11, null}
!336 = metadata !{i32 75, i32 0, metadata !26, null}
!337 = metadata !{i32 76, i32 0, metadata !26, null}
!338 = metadata !{i32 77, i32 0, metadata !26, null}
!339 = metadata !{i32 78, i32 0, metadata !26, null}
!340 = metadata !{i32 86, i32 0, metadata !26, null}
!341 = metadata !{metadata !"float", metadata !342}
!342 = metadata !{metadata !"omnipotent char", metadata !343}
!343 = metadata !{metadata !"Simple C/C++ TBAA"}
!344 = metadata !{i32 87, i32 0, metadata !26, null}
!345 = metadata !{i32 88, i32 0, metadata !26, null}
!346 = metadata !{metadata !"any pointer", metadata !342}
!347 = metadata !{i32 89, i32 0, metadata !26, null}
!348 = metadata !{double 0x3FE20DD750429B6A}
!349 = metadata !{i32 98, i32 0, metadata !26, null}
!350 = metadata !{i32 100, i32 0, metadata !26, null}
!351 = metadata !{metadata !"int", metadata !342}
!352 = metadata !{i32 101, i32 0, metadata !26, null}
!353 = metadata !{i32 103, i32 0, metadata !26, null}
!354 = metadata !{i32 104, i32 0, metadata !26, null}
!355 = metadata !{double 0.000000e+00}
!356 = metadata !{i32 105, i32 0, metadata !26, null}
!357 = metadata !{i32 106, i32 0, metadata !26, null}
!358 = metadata !{i32 107, i32 0, metadata !26, null}
!359 = metadata !{i32 109, i32 0, metadata !26, null}
!360 = metadata !{i32 112, i32 0, metadata !26, null}
!361 = metadata !{i32 114, i32 0, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !26, i32 112, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!363 = metadata !{i32 115, i32 0, metadata !362, null}
!364 = metadata !{i32 117, i32 0, metadata !362, null}
!365 = metadata !{i32 118, i32 0, metadata !362, null}
!366 = metadata !{i32 120, i32 0, metadata !362, null}
!367 = metadata !{i32 121, i32 0, metadata !362, null}
!368 = metadata !{i32 122, i32 0, metadata !362, null}
!369 = metadata !{i32 125, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !26, i32 125, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!371 = metadata !{i32 128, i32 0, metadata !372, null}
!372 = metadata !{i32 786443, metadata !1, metadata !370, i32 125, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!373 = metadata !{i32 219, i32 0, metadata !372, null}
!374 = metadata !{i32 224, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !376, i32 223, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!376 = metadata !{i32 786443, metadata !1, metadata !372, i32 219, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!377 = metadata !{i32 146, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !379, i32 144, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!379 = metadata !{i32 786443, metadata !1, metadata !380, i32 142, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!380 = metadata !{i32 786443, metadata !1, metadata !381, i32 133, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!381 = metadata !{i32 786443, metadata !1, metadata !372, i32 133, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!382 = metadata !{i32 253, i32 0, metadata !301, metadata !377}
!383 = metadata !{i32 254, i32 0, metadata !301, metadata !377}
!384 = metadata !{i32 197, i32 0, metadata !378, null}
!385 = metadata !{i32 203, i32 0, metadata !378, null}
!386 = metadata !{i32 307, i32 0, metadata !387, metadata !385}
!387 = metadata !{i32 786443, metadata !277, metadata !276} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!388 = metadata !{i32 308, i32 0, metadata !387, metadata !385}
!389 = metadata !{i32 127, i32 0, metadata !372, null}
!390 = metadata !{i32 129, i32 0, metadata !372, null}
!391 = metadata !{i32 130, i32 0, metadata !372, null}
!392 = metadata !{i32 133, i32 0, metadata !381, null}
!393 = metadata !{i32 249, i32 0, metadata !301, metadata !377}
!394 = metadata !{i32 250, i32 0, metadata !301, metadata !377}
!395 = metadata !{i32 208, i32 0, metadata !378, null}
!396 = metadata !{i32 262, i32 0, metadata !294, metadata !395}
!397 = metadata !{i32 263, i32 0, metadata !294, metadata !395}
!398 = metadata !{i32 134, i32 0, metadata !380, null}
!399 = metadata !{i32 142, i32 0, metadata !380, null}
!400 = metadata !{i32 143, i32 0, metadata !379, null}
!401 = metadata !{i32 144, i32 0, metadata !379, null}
!402 = metadata !{i32 145, i32 0, metadata !378, null}
!403 = metadata !{i32 786689, metadata !301, metadata !"a", metadata !278, i32 16777460, metadata !304, i32 0, metadata !377} ; [ DW_TAG_arg_variable ] [a] [line 244]
!404 = metadata !{i32 244, i32 0, metadata !301, metadata !377}
!405 = metadata !{i32 786689, metadata !301, metadata !"b", metadata !278, i32 33554676, metadata !304, i32 0, metadata !377} ; [ DW_TAG_arg_variable ] [b] [line 244]
!406 = metadata !{i32 786689, metadata !301, metadata !"c", metadata !278, i32 50331892, metadata !140, i32 0, metadata !377} ; [ DW_TAG_arg_variable ] [c] [line 244]
!407 = metadata !{i32 248, i32 0, metadata !301, metadata !377}
!408 = metadata !{i32 786688, metadata !301, metadata !"x", metadata !278, i32 246, metadata !15, i32 0, metadata !377} ; [ DW_TAG_auto_variable ] [x] [line 246]
!409 = metadata !{i32 786688, metadata !301, metadata !"y", metadata !278, i32 246, metadata !15, i32 0, metadata !377} ; [ DW_TAG_auto_variable ] [y] [line 246]
!410 = metadata !{i32 786688, metadata !301, metadata !"z", metadata !278, i32 246, metadata !15, i32 0, metadata !377} ; [ DW_TAG_auto_variable ] [z] [line 246]
!411 = metadata !{i32 252, i32 0, metadata !301, metadata !377}
!412 = metadata !{i32 2}
!413 = metadata !{i32 147, i32 0, metadata !414, null}
!414 = metadata !{i32 786443, metadata !1, metadata !378, i32 147, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!415 = metadata !{i32 148, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !414, i32 147, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!417 = metadata !{i32 149, i32 0, metadata !416, null}
!418 = metadata !{i32 786689, metadata !294, metadata !"a", metadata !278, i32 16777473, metadata !140, i32 0, metadata !417} ; [ DW_TAG_arg_variable ] [a] [line 257]
!419 = metadata !{i32 257, i32 0, metadata !294, metadata !417}
!420 = metadata !{i32 786689, metadata !294, metadata !"b", metadata !278, i32 33554689, metadata !140, i32 0, metadata !417} ; [ DW_TAG_arg_variable ] [b] [line 257]
!421 = metadata !{i32 261, i32 0, metadata !294, metadata !417}
!422 = metadata !{i32 786688, metadata !294, metadata !"x", metadata !278, i32 259, metadata !15, i32 0, metadata !417} ; [ DW_TAG_auto_variable ] [x] [line 259]
!423 = metadata !{i32 262, i32 0, metadata !294, metadata !417}
!424 = metadata !{i32 786688, metadata !294, metadata !"y", metadata !278, i32 259, metadata !15, i32 0, metadata !417} ; [ DW_TAG_auto_variable ] [y] [line 259]
!425 = metadata !{i32 263, i32 0, metadata !294, metadata !417}
!426 = metadata !{i32 786688, metadata !294, metadata !"z", metadata !278, i32 259, metadata !15, i32 0, metadata !417} ; [ DW_TAG_auto_variable ] [z] [line 259]
!427 = metadata !{i32 265, i32 0, metadata !294, metadata !417}
!428 = metadata !{i32 266, i32 0, metadata !294, metadata !417}
!429 = metadata !{i32 267, i32 0, metadata !294, metadata !417}
!430 = metadata !{i32 150, i32 0, metadata !416, null}
!431 = metadata !{i32 151, i32 0, metadata !416, null}
!432 = metadata !{i32 786689, metadata !285, metadata !"a", metadata !278, i32 16777447, metadata !140, i32 0, metadata !431} ; [ DW_TAG_arg_variable ] [a] [line 231]
!433 = metadata !{i32 231, i32 0, metadata !285, metadata !431}
!434 = metadata !{i32 786689, metadata !285, metadata !"b", metadata !278, i32 33554663, metadata !140, i32 0, metadata !431} ; [ DW_TAG_arg_variable ] [b] [line 231]
!435 = metadata !{i32 235, i32 0, metadata !285, metadata !431}
!436 = metadata !{i32 786688, metadata !285, metadata !"x", metadata !278, i32 233, metadata !15, i32 0, metadata !431} ; [ DW_TAG_auto_variable ] [x] [line 233]
!437 = metadata !{i32 236, i32 0, metadata !285, metadata !431}
!438 = metadata !{i32 786688, metadata !285, metadata !"y", metadata !278, i32 233, metadata !15, i32 0, metadata !431} ; [ DW_TAG_auto_variable ] [y] [line 233]
!439 = metadata !{i32 237, i32 0, metadata !285, metadata !431}
!440 = metadata !{i32 786688, metadata !285, metadata !"z", metadata !278, i32 233, metadata !15, i32 0, metadata !431} ; [ DW_TAG_auto_variable ] [z] [line 233]
!441 = metadata !{i32 239, i32 0, metadata !285, metadata !431}
!442 = metadata !{i32 240, i32 0, metadata !285, metadata !431}
!443 = metadata !{i32 241, i32 0, metadata !285, metadata !431}
!444 = metadata !{i32 153, i32 0, metadata !416, null}
!445 = metadata !{i32 166, i32 0, metadata !378, null}
!446 = metadata !{i32 167, i32 0, metadata !378, null}
!447 = metadata !{i32 168, i32 0, metadata !378, null}
!448 = metadata !{i32 195, i32 0, metadata !378, null}
!449 = metadata !{i32 196, i32 0, metadata !378, null}
!450 = metadata !{i32 786689, metadata !276, metadata !"a", metadata !278, i32 16777520, metadata !15, i32 0, metadata !385} ; [ DW_TAG_arg_variable ] [a] [line 304]
!451 = metadata !{i32 304, i32 0, metadata !276, metadata !385}
!452 = metadata !{i32 786689, metadata !276, metadata !"v1", metadata !278, i32 33554736, metadata !140, i32 0, metadata !385} ; [ DW_TAG_arg_variable ] [v1] [line 304]
!453 = metadata !{i32 786689, metadata !276, metadata !"v2", metadata !278, i32 50331952, metadata !140, i32 0, metadata !385} ; [ DW_TAG_arg_variable ] [v2] [line 304]
!454 = metadata !{i32 306, i32 0, metadata !387, metadata !385}
!455 = metadata !{i32 204, i32 0, metadata !378, null}
!456 = metadata !{i32 205, i32 0, metadata !378, null}
!457 = metadata !{i32 207, i32 0, metadata !378, null}
!458 = metadata !{i32 786689, metadata !285, metadata !"a", metadata !278, i32 16777447, metadata !140, i32 0, metadata !457} ; [ DW_TAG_arg_variable ] [a] [line 231]
!459 = metadata !{i32 231, i32 0, metadata !285, metadata !457}
!460 = metadata !{i32 786689, metadata !285, metadata !"b", metadata !278, i32 33554663, metadata !140, i32 0, metadata !457} ; [ DW_TAG_arg_variable ] [b] [line 231]
!461 = metadata !{i32 235, i32 0, metadata !285, metadata !457}
!462 = metadata !{i32 786688, metadata !285, metadata !"x", metadata !278, i32 233, metadata !15, i32 0, metadata !457} ; [ DW_TAG_auto_variable ] [x] [line 233]
!463 = metadata !{i32 236, i32 0, metadata !285, metadata !457}
!464 = metadata !{i32 786688, metadata !285, metadata !"y", metadata !278, i32 233, metadata !15, i32 0, metadata !457} ; [ DW_TAG_auto_variable ] [y] [line 233]
!465 = metadata !{i32 237, i32 0, metadata !285, metadata !457}
!466 = metadata !{i32 786688, metadata !285, metadata !"z", metadata !278, i32 233, metadata !15, i32 0, metadata !457} ; [ DW_TAG_auto_variable ] [z] [line 233]
!467 = metadata !{i32 239, i32 0, metadata !285, metadata !457}
!468 = metadata !{i32 240, i32 0, metadata !285, metadata !457}
!469 = metadata !{i32 241, i32 0, metadata !285, metadata !457}
!470 = metadata !{i32 786689, metadata !294, metadata !"a", metadata !278, i32 16777473, metadata !140, i32 0, metadata !395} ; [ DW_TAG_arg_variable ] [a] [line 257]
!471 = metadata !{i32 257, i32 0, metadata !294, metadata !395}
!472 = metadata !{i32 786689, metadata !294, metadata !"b", metadata !278, i32 33554689, metadata !140, i32 0, metadata !395} ; [ DW_TAG_arg_variable ] [b] [line 257]
!473 = metadata !{i32 261, i32 0, metadata !294, metadata !395}
!474 = metadata !{i32 786688, metadata !294, metadata !"x", metadata !278, i32 259, metadata !15, i32 0, metadata !395} ; [ DW_TAG_auto_variable ] [x] [line 259]
!475 = metadata !{i32 786688, metadata !294, metadata !"y", metadata !278, i32 259, metadata !15, i32 0, metadata !395} ; [ DW_TAG_auto_variable ] [y] [line 259]
!476 = metadata !{i32 786688, metadata !294, metadata !"z", metadata !278, i32 259, metadata !15, i32 0, metadata !395} ; [ DW_TAG_auto_variable ] [z] [line 259]
!477 = metadata !{i32 265, i32 0, metadata !294, metadata !395}
!478 = metadata !{i32 266, i32 0, metadata !294, metadata !395}
!479 = metadata !{i32 267, i32 0, metadata !294, metadata !395}
!480 = metadata !{i32 209, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !378, i32 209, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!482 = metadata !{i32 211, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !481, i32 210, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!484 = metadata !{i32 210, i32 0, metadata !483, null}
!485 = metadata !{i32 220, i32 0, metadata !376, null}
!486 = metadata !{i32 222, i32 0, metadata !487, null}
!487 = metadata !{i32 786443, metadata !1, metadata !488, i32 221, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!488 = metadata !{i32 786443, metadata !1, metadata !376, i32 220, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!489 = metadata !{i32 221, i32 0, metadata !487, null}
!490 = metadata !{i32 225, i32 0, metadata !375, null}
!491 = metadata !{i32 230, i32 0, metadata !26, null}
!492 = metadata !{i32 233, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !1, metadata !26, i32 230, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!494 = metadata !{i32 234, i32 0, metadata !495, null}
!495 = metadata !{i32 786443, metadata !1, metadata !493, i32 234, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!496 = metadata !{i32 235, i32 0, metadata !495, null}
!497 = metadata !{i32 236, i32 0, metadata !493, null}
!498 = metadata !{i32 243, i32 0, metadata !493, null}
!499 = metadata !{i32 244, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !493, i32 243, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!501 = metadata !{i32 245, i32 0, metadata !500, null}
!502 = metadata !{i32 248, i32 0, metadata !500, null}
!503 = metadata !{i32 252, i32 0, metadata !26, null}
!504 = metadata !{i32 254, i32 0, metadata !26, null}
!505 = metadata !{i32 255, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !26, i32 254, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!507 = metadata !{i32 256, i32 0, metadata !506, null}
!508 = metadata !{i32 257, i32 0, metadata !506, null}
!509 = metadata !{i32 258, i32 0, metadata !506, null}
!510 = metadata !{i32 259, i32 0, metadata !506, null}
!511 = metadata !{i32 260, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !506, i32 259, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c]
!513 = metadata !{i32 261, i32 0, metadata !512, null}
!514 = metadata !{i32 262, i32 0, metadata !512, null}
!515 = metadata !{i32 266, i32 0, metadata !26, null}
