; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_PSgrid = type { i32, i32, i32, float*** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_nrnb = type { [129 x double] }

@.str = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str1 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"ps->ptr\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"ps->ptr[i]\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"ps->ptr[i][j]\00", align 1
@.str5 = private unnamed_addr constant [71 x i8] c"Symmetrize_PSgrid: sum = %g, ming = %g(%d,%d,%d), maxg = %g(%d,%d,%d)\0A\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"*nnx\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"*nny\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"*nnz\00", align 1
@do_poisson.bFirst = internal unnamed_addr global i1 false
@do_poisson.pot = internal unnamed_addr global %struct.t_PSgrid* null, align 8
@do_poisson.rho = internal unnamed_addr global %struct.t_PSgrid* null, align 8
@do_poisson.maxnit = internal unnamed_addr global i32 0, align 4
@do_poisson.r1 = internal unnamed_addr global float 0.000000e+00, align 4
@do_poisson.rc = internal unnamed_addr global float 0.000000e+00, align 4
@do_poisson.beta = internal global [3 x float] zeroinitializer, align 4
@.str9 = private unnamed_addr constant [55 x i8] c"Will use Poisson Solver for long-range electrostatics\0A\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"Grid size is %d x %d x %d\0A\00", align 1
@.str11 = private unnamed_addr constant [49 x i8] c"Grid must be at least 4 points in all directions\00", align 1
@debug = external global %struct._IO_FILE*
@do_optimize_poisson.bFirst = internal unnamed_addr global i1 false
@do_optimize_poisson.pot = internal unnamed_addr global %struct.t_PSgrid* null, align 8
@do_optimize_poisson.rho = internal unnamed_addr global %struct.t_PSgrid* null, align 8
@do_optimize_poisson.maxnit = internal unnamed_addr global i32 0, align 4
@do_optimize_poisson.r1 = internal unnamed_addr global float 0.000000e+00, align 4
@do_optimize_poisson.rc = internal unnamed_addr global float 0.000000e+00, align 4
@.str12 = private unnamed_addr constant [20 x i8] c"Poisson, beta = %g\0A\00", align 1
@.str13 = private unnamed_addr constant [40 x i8] c"Beta: %6.3f  %6.3f  %6.3f  RMSF: %8.3f\0A\00", align 1
@.str14 = private unnamed_addr constant [50 x i8] c"Minimum RMSF %8.3f at Beta = %6.3f  %6.3f  %6.3f\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.t_PSgrid* @mk_PSgrid(i32 %nx, i32 %ny, i32 %nz) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !24), !dbg !376
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !25), !dbg !376
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !26), !dbg !376
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 49, i32 1, i32 24) #5, !dbg !377
  %0 = bitcast i8* %call to %struct.t_PSgrid*, !dbg !377
  tail call void @llvm.dbg.value(metadata !{%struct.t_PSgrid* %0}, i64 0, metadata !27), !dbg !377
  %nx1 = bitcast i8* %call to i32*, !dbg !378
  store i32 %nx, i32* %nx1, align 4, !dbg !378, !tbaa !379
  %ny2 = getelementptr inbounds i8* %call, i64 4, !dbg !382
  %1 = bitcast i8* %ny2 to i32*, !dbg !382
  store i32 %ny, i32* %1, align 4, !dbg !382, !tbaa !379
  %nz3 = getelementptr inbounds i8* %call, i64 8, !dbg !383
  %2 = bitcast i8* %nz3 to i32*, !dbg !383
  store i32 %nz, i32* %2, align 4, !dbg !383, !tbaa !379
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 53, i32 %nx, i32 8) #5, !dbg !384
  %3 = bitcast i8* %call4 to float***, !dbg !384
  %ptr = getelementptr inbounds i8* %call, i64 16, !dbg !384
  %4 = bitcast i8* %ptr to float****, !dbg !384
  store float*** %3, float**** %4, align 8, !dbg !384, !tbaa !385
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !28), !dbg !386
  %cmp37 = icmp sgt i32 %nx, 0, !dbg !386
  br i1 %cmp37, label %for.body.lr.ph, label %for.end18, !dbg !386

for.body.lr.ph:                                   ; preds = %entry
  %cmp835 = icmp sgt i32 %ny, 0, !dbg !388
  br label %for.body, !dbg !386

for.body:                                         ; preds = %for.inc16, %for.body.lr.ph
  %indvars.iv39 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next40, %for.inc16 ]
  %call5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 55, i32 %ny, i32 8) #5, !dbg !391
  %5 = bitcast i8* %call5 to float**, !dbg !391
  %6 = load float**** %4, align 8, !dbg !391, !tbaa !385
  %arrayidx = getelementptr inbounds float*** %6, i64 %indvars.iv39, !dbg !391
  store float** %5, float*** %arrayidx, align 8, !dbg !391, !tbaa !385
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !29), !dbg !388
  br i1 %cmp835, label %for.body9, label %for.inc16, !dbg !388

for.body9:                                        ; preds = %for.body, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.body ]
  %call10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 57, i32 %nz, i32 4) #5, !dbg !392
  %7 = bitcast i8* %call10 to float*, !dbg !392
  %8 = load float**** %4, align 8, !dbg !392, !tbaa !385
  %arrayidx14 = getelementptr inbounds float*** %8, i64 %indvars.iv39, !dbg !392
  %9 = load float*** %arrayidx14, align 8, !dbg !392, !tbaa !385
  %arrayidx15 = getelementptr inbounds float** %9, i64 %indvars.iv, !dbg !392
  store float* %7, float** %arrayidx15, align 8, !dbg !392, !tbaa !385
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !388
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !388
  %exitcond = icmp eq i32 %lftr.wideiv, %ny, !dbg !388
  br i1 %exitcond, label %for.inc16, label %for.body9, !dbg !388

for.inc16:                                        ; preds = %for.body9, %for.body
  %indvars.iv.next40 = add i64 %indvars.iv39, 1, !dbg !386
  %lftr.wideiv41 = trunc i64 %indvars.iv.next40 to i32, !dbg !386
  %exitcond42 = icmp eq i32 %lftr.wideiv41, %nx, !dbg !386
  br i1 %exitcond42, label %for.end18, label %for.body, !dbg !386

for.end18:                                        ; preds = %for.inc16, %entry
  ret %struct.t_PSgrid* %0, !dbg !393
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @unpack_PSgrid(%struct.t_PSgrid* nocapture %grid, i32* nocapture %nx, i32* nocapture %ny, i32* nocapture %nz, float**** nocapture %ptr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_PSgrid* %grid}, i64 0, metadata !36), !dbg !394
  tail call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !37), !dbg !394
  tail call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !38), !dbg !394
  tail call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !39), !dbg !394
  tail call void @llvm.dbg.value(metadata !{float**** %ptr}, i64 0, metadata !40), !dbg !394
  %nx1 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 0, !dbg !395
  %0 = load i32* %nx1, align 4, !dbg !395, !tbaa !379
  store i32 %0, i32* %nx, align 4, !dbg !395, !tbaa !379
  %ny2 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 1, !dbg !396
  %1 = load i32* %ny2, align 4, !dbg !396, !tbaa !379
  store i32 %1, i32* %ny, align 4, !dbg !396, !tbaa !379
  %nz3 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 2, !dbg !397
  %2 = load i32* %nz3, align 4, !dbg !397, !tbaa !379
  store i32 %2, i32* %nz, align 4, !dbg !397, !tbaa !379
  %ptr4 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 3, !dbg !398
  %3 = load float**** %ptr4, align 8, !dbg !398, !tbaa !385
  store float*** %3, float**** %ptr, align 8, !dbg !398, !tbaa !385
  ret void, !dbg !399
}

; Function Attrs: nounwind optsize uwtable
define void @copy_PSgrid(%struct.t_PSgrid* nocapture %dest, %struct.t_PSgrid* nocapture %src) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_PSgrid* %dest}, i64 0, metadata !45), !dbg !400
  tail call void @llvm.dbg.value(metadata !{%struct.t_PSgrid* %src}, i64 0, metadata !46), !dbg !400
  tail call void @llvm.dbg.value(metadata !{%struct.t_PSgrid* %dest}, i64 0, metadata !401), !dbg !403
  %ptr4.i = getelementptr inbounds %struct.t_PSgrid* %dest, i64 0, i32 3, !dbg !404
  %0 = load float**** %ptr4.i, align 8, !dbg !404, !tbaa !385
  tail call void @llvm.dbg.value(metadata !{float*** %0}, i64 0, metadata !54), !dbg !404
  tail call void @llvm.dbg.value(metadata !{float*** %0}, i64 0, metadata !405), !dbg !403
  tail call void @llvm.dbg.value(metadata !{float*** %0}, i64 0, metadata !54), !dbg !406
  tail call void @llvm.dbg.value(metadata !{%struct.t_PSgrid* %src}, i64 0, metadata !410), !dbg !412
  %nx1.i32 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 0, !dbg !413
  %1 = load i32* %nx1.i32, align 4, !dbg !413, !tbaa !379
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !50), !dbg !413
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !414), !dbg !412
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !415), !dbg !403
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !50), !dbg !416
  %ny2.i33 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 1, !dbg !417
  %2 = load i32* %ny2.i33, align 4, !dbg !417, !tbaa !379
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !51), !dbg !417
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !418), !dbg !412
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !419), !dbg !403
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !51), !dbg !420
  %nz3.i34 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 2, !dbg !421
  %3 = load i32* %nz3.i34, align 4, !dbg !421, !tbaa !379
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !52), !dbg !421
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !422), !dbg !412
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !423), !dbg !403
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !52), !dbg !424
  %ptr4.i35 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 3, !dbg !425
  %4 = load float**** %ptr4.i35, align 8, !dbg !425, !tbaa !385
  tail call void @llvm.dbg.value(metadata !{float*** %4}, i64 0, metadata !53), !dbg !425
  tail call void @llvm.dbg.value(metadata !{float*** %4}, i64 0, metadata !426), !dbg !412
  tail call void @llvm.dbg.value(metadata !{float*** %4}, i64 0, metadata !53), !dbg !406
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !47), !dbg !416
  %cmp40 = icmp sgt i32 %1, 0, !dbg !416
  br i1 %cmp40, label %for.cond1.preheader.lr.ph, label %for.end22, !dbg !416

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp238 = icmp sgt i32 %2, 0, !dbg !420
  %cmp536 = icmp sgt i32 %3, 0, !dbg !424
  br label %for.cond1.preheader, !dbg !416

for.cond1.preheader:                              ; preds = %for.inc20, %for.cond1.preheader.lr.ph
  %indvars.iv46 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next47, %for.inc20 ]
  br i1 %cmp238, label %for.cond4.preheader.lr.ph, label %for.inc20, !dbg !420

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float*** %4, i64 %indvars.iv46, !dbg !406
  %arrayidx14 = getelementptr inbounds float*** %0, i64 %indvars.iv46, !dbg !406
  br label %for.cond4.preheader, !dbg !420

for.cond4.preheader:                              ; preds = %for.inc17, %for.cond4.preheader.lr.ph
  %indvars.iv42 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next43, %for.inc17 ]
  br i1 %cmp536, label %for.body6.lr.ph, label %for.inc17, !dbg !424

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %5 = load float*** %arrayidx, align 8, !dbg !406, !tbaa !385
  %arrayidx9 = getelementptr inbounds float** %5, i64 %indvars.iv42, !dbg !406
  %6 = load float** %arrayidx9, align 8, !dbg !406, !tbaa !385
  %7 = load float*** %arrayidx14, align 8, !dbg !406, !tbaa !385
  %arrayidx15 = getelementptr inbounds float** %7, i64 %indvars.iv42, !dbg !406
  %8 = load float** %arrayidx15, align 8, !dbg !406, !tbaa !385
  br label %for.body6, !dbg !424

for.body6:                                        ; preds = %for.body6, %for.body6.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.body6 ]
  %arrayidx10 = getelementptr inbounds float* %6, i64 %indvars.iv, !dbg !406
  %9 = load float* %arrayidx10, align 4, !dbg !406, !tbaa !427
  %arrayidx16 = getelementptr inbounds float* %8, i64 %indvars.iv, !dbg !406
  store float %9, float* %arrayidx16, align 4, !dbg !406, !tbaa !427
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !424
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !424
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !424
  br i1 %exitcond, label %for.inc17, label %for.body6, !dbg !424

for.inc17:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv.next43 = add i64 %indvars.iv42, 1, !dbg !420
  %lftr.wideiv44 = trunc i64 %indvars.iv.next43 to i32, !dbg !420
  %exitcond45 = icmp eq i32 %lftr.wideiv44, %2, !dbg !420
  br i1 %exitcond45, label %for.inc20, label %for.cond4.preheader, !dbg !420

for.inc20:                                        ; preds = %for.inc17, %for.cond1.preheader
  %indvars.iv.next47 = add i64 %indvars.iv46, 1, !dbg !416
  %lftr.wideiv48 = trunc i64 %indvars.iv.next47 to i32, !dbg !416
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %1, !dbg !416
  br i1 %exitcond49, label %for.end22, label %for.cond1.preheader, !dbg !416

for.end22:                                        ; preds = %for.inc20, %entry
  ret void, !dbg !428
}

; Function Attrs: nounwind optsize uwtable
define void @clear_PSgrid(%struct.t_PSgrid* nocapture %grid) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_PSgrid* %grid}, i64 0, metadata !59), !dbg !429
  tail call void @llvm.dbg.value(metadata !{%struct.t_PSgrid* %grid}, i64 0, metadata !430), !dbg !432
  %nx1.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 0, !dbg !433
  %0 = load i32* %nx1.i, align 4, !dbg !433, !tbaa !379
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !63), !dbg !433
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !434), !dbg !432
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !63), !dbg !435
  %ny2.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 1, !dbg !437
  %1 = load i32* %ny2.i, align 4, !dbg !437, !tbaa !379
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !64), !dbg !437
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !438), !dbg !432
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !64), !dbg !439
  %nz3.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 2, !dbg !441
  %2 = load i32* %nz3.i, align 4, !dbg !441, !tbaa !379
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !65), !dbg !441
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !442), !dbg !432
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !65), !dbg !443
  %ptr4.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 3, !dbg !445
  %3 = load float**** %ptr4.i, align 8, !dbg !445, !tbaa !385
  tail call void @llvm.dbg.value(metadata !{float*** %3}, i64 0, metadata !66), !dbg !445
  tail call void @llvm.dbg.value(metadata !{float*** %3}, i64 0, metadata !446), !dbg !432
  tail call void @llvm.dbg.value(metadata !{float*** %3}, i64 0, metadata !66), !dbg !447
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !60), !dbg !435
  %cmp27 = icmp sgt i32 %0, 0, !dbg !435
  br i1 %cmp27, label %for.cond1.preheader.lr.ph, label %for.end16, !dbg !435

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp225 = icmp sgt i32 %1, 0, !dbg !439
  %cmp523 = icmp sgt i32 %2, 0, !dbg !443
  %4 = add i32 %2, -1, !dbg !435
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 2, !dbg !435
  %7 = add i64 %6, 4, !dbg !435
  br label %for.cond1.preheader, !dbg !435

for.cond1.preheader:                              ; preds = %for.inc14, %for.cond1.preheader.lr.ph
  %indvars.iv29 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next30, %for.inc14 ]
  br i1 %cmp225, label %for.cond4.preheader.lr.ph, label %for.inc14, !dbg !439

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float*** %3, i64 %indvars.iv29, !dbg !447
  br label %for.cond4.preheader, !dbg !439

for.cond4.preheader:                              ; preds = %for.inc11, %for.cond4.preheader.lr.ph
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next, %for.inc11 ]
  br i1 %cmp523, label %for.body6.lr.ph, label %for.inc11, !dbg !443

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %8 = load float*** %arrayidx, align 8, !dbg !447, !tbaa !385
  %arrayidx9 = getelementptr inbounds float** %8, i64 %indvars.iv, !dbg !447
  %9 = load float** %arrayidx9, align 8, !dbg !447, !tbaa !385
  %10 = bitcast float* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 %7, i32 4, i1 false), !dbg !447
  br label %for.inc11, !dbg !443

for.inc11:                                        ; preds = %for.body6.lr.ph, %for.cond4.preheader
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !439
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !439
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !439
  br i1 %exitcond, label %for.inc14, label %for.cond4.preheader, !dbg !439

for.inc14:                                        ; preds = %for.inc11, %for.cond1.preheader
  %indvars.iv.next30 = add i64 %indvars.iv29, 1, !dbg !435
  %lftr.wideiv31 = trunc i64 %indvars.iv.next30 to i32, !dbg !435
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %0, !dbg !435
  br i1 %exitcond32, label %for.end16, label %for.cond1.preheader, !dbg !435

for.end16:                                        ; preds = %for.inc14, %entry
  ret void, !dbg !448
}

; Function Attrs: nounwind optsize uwtable
define void @symmetrize_PSgrid(%struct._IO_FILE* %fp, %struct.t_PSgrid* nocapture %grid, float %sum) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !128), !dbg !449
  tail call void @llvm.dbg.value(metadata !{%struct.t_PSgrid* %grid}, i64 0, metadata !129), !dbg !449
  tail call void @llvm.dbg.value(metadata !{float %sum}, i64 0, metadata !130), !dbg !449
  tail call void @llvm.dbg.value(metadata !450, i64 0, metadata !138), !dbg !451
  tail call void @llvm.dbg.value(metadata !450, i64 0, metadata !139), !dbg !451
  tail call void @llvm.dbg.declare(metadata !452, metadata !140), !dbg !453
  tail call void @llvm.dbg.declare(metadata !452, metadata !145), !dbg !453
  tail call void @llvm.dbg.value(metadata !{%struct.t_PSgrid* %grid}, i64 0, metadata !454), !dbg !456
  %nx1.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 0, !dbg !457
  %0 = load i32* %nx1.i, align 4, !dbg !457, !tbaa !379
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !134), !dbg !457
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !458), !dbg !456
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !134), !dbg !459
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !134), !dbg !462
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !134), !dbg !463
  %ny2.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 1, !dbg !465
  %1 = load i32* %ny2.i, align 4, !dbg !465, !tbaa !379
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !135), !dbg !465
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !466), !dbg !456
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !135), !dbg !467
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !135), !dbg !462
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !135), !dbg !469
  %nz3.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 2, !dbg !471
  %2 = load i32* %nz3.i, align 4, !dbg !471, !tbaa !379
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !136), !dbg !471
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !472), !dbg !456
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !136), !dbg !473
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !136), !dbg !462
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !136), !dbg !475
  %ptr4.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 3, !dbg !477
  %3 = load float**** %ptr4.i, align 8, !dbg !477, !tbaa !385
  tail call void @llvm.dbg.value(metadata !{float*** %3}, i64 0, metadata !137), !dbg !477
  tail call void @llvm.dbg.value(metadata !{float*** %3}, i64 0, metadata !478), !dbg !456
  tail call void @llvm.dbg.value(metadata !{float*** %3}, i64 0, metadata !137), !dbg !479
  tail call void @llvm.dbg.value(metadata !{float*** %3}, i64 0, metadata !137), !dbg !480
  tail call void @llvm.dbg.value(metadata !{float*** %3}, i64 0, metadata !137), !dbg !482
  tail call void @llvm.dbg.value(metadata !450, i64 0, metadata !139), !dbg !483
  tail call void @llvm.dbg.value(metadata !450, i64 0, metadata !138), !dbg !483
  %fabsf = tail call float @fabsf(float %sum) #6, !dbg !484
  %4 = fpext float %fabsf to double, !dbg !484
  %cmp = fcmp olt double %4, 1.200000e-38, !dbg !484
  br i1 %cmp, label %if.then, label %if.end62, !dbg !484

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !450, i64 0, metadata !130), !dbg !485
  %5 = load float*** %3, align 8, !dbg !479, !tbaa !385
  %6 = load float** %5, align 8, !dbg !479, !tbaa !385
  %7 = load float* %6, align 4, !dbg !479, !tbaa !427
  tail call void @llvm.dbg.value(metadata !{float %7}, i64 0, metadata !139), !dbg !479
  tail call void @llvm.dbg.value(metadata !{float %7}, i64 0, metadata !138), !dbg !479
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !131), !dbg !459
  %cmp4195 = icmp sgt i32 %0, 0, !dbg !459
  br i1 %cmp4195, label %for.cond6.preheader.lr.ph, label %if.end62.thread, !dbg !459

if.end62.thread:                                  ; preds = %if.then
  %mul236 = mul nsw i32 %1, %0, !dbg !462
  %mul63237 = mul nsw i32 %mul236, %2, !dbg !462
  %conv64238 = sitofp i32 %mul63237 to float, !dbg !462
  %div239 = fdiv float 0.000000e+00, %conv64238, !dbg !462
  tail call void @llvm.dbg.value(metadata !{float %div249}, i64 0, metadata !130), !dbg !462
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !131), !dbg !463
  br label %for.end91, !dbg !463

for.cond6.preheader.lr.ph:                        ; preds = %if.then
  %cmp7174 = icmp sgt i32 %1, 0, !dbg !467
  %cmp11155 = icmp sgt i32 %2, 0, !dbg !473
  br label %for.cond6.preheader, !dbg !459

for.cond6.preheader:                              ; preds = %for.inc59, %for.cond6.preheader.lr.ph
  %indvars.iv232 = phi i64 [ 0, %for.cond6.preheader.lr.ph ], [ %indvars.iv.next233, %for.inc59 ]
  %imax.sroa.0.0206 = phi i32 [ -1, %for.cond6.preheader.lr.ph ], [ %imax.sroa.0.1.lcssa, %for.inc59 ]
  %imax.sroa.1.0205 = phi i32 [ -1, %for.cond6.preheader.lr.ph ], [ %imax.sroa.1.1.lcssa, %for.inc59 ]
  %imax.sroa.2.0204 = phi i32 [ -1, %for.cond6.preheader.lr.ph ], [ %imax.sroa.2.1.lcssa, %for.inc59 ]
  %imin.sroa.0.0203 = phi i32 [ -1, %for.cond6.preheader.lr.ph ], [ %imin.sroa.0.1.lcssa, %for.inc59 ]
  %imin.sroa.1.0202 = phi i32 [ -1, %for.cond6.preheader.lr.ph ], [ %imin.sroa.1.1.lcssa, %for.inc59 ]
  %imin.sroa.2.0201 = phi i32 [ -1, %for.cond6.preheader.lr.ph ], [ %imin.sroa.2.1.lcssa, %for.inc59 ]
  %maxg.0200 = phi float [ %7, %for.cond6.preheader.lr.ph ], [ %maxg.1.lcssa, %for.inc59 ]
  %ming.0199 = phi float [ %7, %for.cond6.preheader.lr.ph ], [ %ming.1.lcssa, %for.inc59 ]
  %i.0197 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %inc60, %for.inc59 ]
  %sum.addr.0196 = phi float [ 0.000000e+00, %for.cond6.preheader.lr.ph ], [ %sum.addr.1.lcssa, %for.inc59 ]
  br i1 %cmp7174, label %for.cond10.preheader.lr.ph, label %for.inc59, !dbg !467

for.cond10.preheader.lr.ph:                       ; preds = %for.cond6.preheader
  %arrayidx16 = getelementptr inbounds float*** %3, i64 %indvars.iv232, !dbg !480
  br label %for.cond10.preheader, !dbg !467

for.cond10.preheader:                             ; preds = %for.inc56, %for.cond10.preheader.lr.ph
  %indvars.iv228 = phi i64 [ 0, %for.cond10.preheader.lr.ph ], [ %indvars.iv.next229, %for.inc56 ]
  %imax.sroa.0.1185 = phi i32 [ %imax.sroa.0.0206, %for.cond10.preheader.lr.ph ], [ %imax.sroa.0.2.lcssa, %for.inc56 ]
  %imax.sroa.1.1184 = phi i32 [ %imax.sroa.1.0205, %for.cond10.preheader.lr.ph ], [ %imax.sroa.1.2.lcssa, %for.inc56 ]
  %imax.sroa.2.1183 = phi i32 [ %imax.sroa.2.0204, %for.cond10.preheader.lr.ph ], [ %imax.sroa.2.2.lcssa, %for.inc56 ]
  %imin.sroa.0.1182 = phi i32 [ %imin.sroa.0.0203, %for.cond10.preheader.lr.ph ], [ %imin.sroa.0.2.lcssa, %for.inc56 ]
  %imin.sroa.1.1181 = phi i32 [ %imin.sroa.1.0202, %for.cond10.preheader.lr.ph ], [ %imin.sroa.1.2.lcssa, %for.inc56 ]
  %imin.sroa.2.1180 = phi i32 [ %imin.sroa.2.0201, %for.cond10.preheader.lr.ph ], [ %imin.sroa.2.2.lcssa, %for.inc56 ]
  %maxg.1179 = phi float [ %maxg.0200, %for.cond10.preheader.lr.ph ], [ %maxg.2.lcssa, %for.inc56 ]
  %ming.1178 = phi float [ %ming.0199, %for.cond10.preheader.lr.ph ], [ %ming.2.lcssa, %for.inc56 ]
  %j.0176 = phi i32 [ 0, %for.cond10.preheader.lr.ph ], [ %inc57, %for.inc56 ]
  %sum.addr.1175 = phi float [ %sum.addr.0196, %for.cond10.preheader.lr.ph ], [ %sum.addr.2.lcssa, %for.inc56 ]
  br i1 %cmp11155, label %for.body13.lr.ph, label %for.inc56, !dbg !473

for.body13.lr.ph:                                 ; preds = %for.cond10.preheader
  %8 = load float*** %arrayidx16, align 8, !dbg !480, !tbaa !385
  %arrayidx17 = getelementptr inbounds float** %8, i64 %indvars.iv228, !dbg !480
  %9 = load float** %arrayidx17, align 8, !dbg !480, !tbaa !385
  br label %for.body13, !dbg !473

for.body13:                                       ; preds = %for.inc, %for.body13.lr.ph
  %indvars.iv224 = phi i64 [ 0, %for.body13.lr.ph ], [ %indvars.iv.next225, %for.inc ]
  %imax.sroa.0.2165 = phi i32 [ %imax.sroa.0.1185, %for.body13.lr.ph ], [ %imax.sroa.0.3, %for.inc ]
  %imax.sroa.1.2164 = phi i32 [ %imax.sroa.1.1184, %for.body13.lr.ph ], [ %imax.sroa.1.3, %for.inc ]
  %imax.sroa.2.2163 = phi i32 [ %imax.sroa.2.1183, %for.body13.lr.ph ], [ %imax.sroa.2.3, %for.inc ]
  %imin.sroa.0.2162 = phi i32 [ %imin.sroa.0.1182, %for.body13.lr.ph ], [ %imin.sroa.0.3, %for.inc ]
  %imin.sroa.1.2161 = phi i32 [ %imin.sroa.1.1181, %for.body13.lr.ph ], [ %imin.sroa.1.3, %for.inc ]
  %imin.sroa.2.2160 = phi i32 [ %imin.sroa.2.1180, %for.body13.lr.ph ], [ %imin.sroa.2.3, %for.inc ]
  %maxg.2159 = phi float [ %maxg.1179, %for.body13.lr.ph ], [ %maxg.3, %for.inc ]
  %ming.2158 = phi float [ %ming.1178, %for.body13.lr.ph ], [ %ming.3, %for.inc ]
  %sum.addr.2156 = phi float [ %sum.addr.1175, %for.body13.lr.ph ], [ %add, %for.inc ]
  %arrayidx18 = getelementptr inbounds float* %9, i64 %indvars.iv224, !dbg !480
  %10 = load float* %arrayidx18, align 4, !dbg !480, !tbaa !427
  %add = fadd float %sum.addr.2156, %10, !dbg !480
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !130), !dbg !480
  %cmp25 = fcmp olt float %10, %ming.2158, !dbg !486
  %11 = trunc i64 %indvars.iv224 to i32, !dbg !486
  br i1 %cmp25, label %for.inc, label %if.else, !dbg !486

if.else:                                          ; preds = %for.body13
  %cmp43 = fcmp ogt float %10, %maxg.2159, !dbg !487
  br i1 %cmp43, label %if.then45, label %for.inc, !dbg !487

if.then45:                                        ; preds = %if.else
  tail call void @llvm.dbg.value(metadata !{float %10}, i64 0, metadata !139), !dbg !488
  br label %for.inc, !dbg !490

for.inc:                                          ; preds = %for.body13, %if.then45, %if.else
  %ming.3 = phi float [ %ming.2158, %if.then45 ], [ %ming.2158, %if.else ], [ %10, %for.body13 ]
  %maxg.3 = phi float [ %10, %if.then45 ], [ %maxg.2159, %if.else ], [ %maxg.2159, %for.body13 ]
  %imin.sroa.2.3 = phi i32 [ %imin.sroa.2.2160, %if.then45 ], [ %imin.sroa.2.2160, %if.else ], [ %11, %for.body13 ]
  %imin.sroa.1.3 = phi i32 [ %imin.sroa.1.2161, %if.then45 ], [ %imin.sroa.1.2161, %if.else ], [ %j.0176, %for.body13 ]
  %imin.sroa.0.3 = phi i32 [ %imin.sroa.0.2162, %if.then45 ], [ %imin.sroa.0.2162, %if.else ], [ %i.0197, %for.body13 ]
  %imax.sroa.2.3 = phi i32 [ %11, %if.then45 ], [ %imax.sroa.2.2163, %if.else ], [ %imax.sroa.2.2163, %for.body13 ]
  %imax.sroa.1.3 = phi i32 [ %j.0176, %if.then45 ], [ %imax.sroa.1.2164, %if.else ], [ %imax.sroa.1.2164, %for.body13 ]
  %imax.sroa.0.3 = phi i32 [ %i.0197, %if.then45 ], [ %imax.sroa.0.2165, %if.else ], [ %imax.sroa.0.2165, %for.body13 ]
  %indvars.iv.next225 = add i64 %indvars.iv224, 1, !dbg !473
  %lftr.wideiv226 = trunc i64 %indvars.iv.next225 to i32, !dbg !473
  %exitcond227 = icmp eq i32 %lftr.wideiv226, %2, !dbg !473
  br i1 %exitcond227, label %for.inc56, label %for.body13, !dbg !473

for.inc56:                                        ; preds = %for.inc, %for.cond10.preheader
  %imax.sroa.0.2.lcssa = phi i32 [ %imax.sroa.0.1185, %for.cond10.preheader ], [ %imax.sroa.0.3, %for.inc ]
  %imax.sroa.1.2.lcssa = phi i32 [ %imax.sroa.1.1184, %for.cond10.preheader ], [ %imax.sroa.1.3, %for.inc ]
  %imax.sroa.2.2.lcssa = phi i32 [ %imax.sroa.2.1183, %for.cond10.preheader ], [ %imax.sroa.2.3, %for.inc ]
  %imin.sroa.0.2.lcssa = phi i32 [ %imin.sroa.0.1182, %for.cond10.preheader ], [ %imin.sroa.0.3, %for.inc ]
  %imin.sroa.1.2.lcssa = phi i32 [ %imin.sroa.1.1181, %for.cond10.preheader ], [ %imin.sroa.1.3, %for.inc ]
  %imin.sroa.2.2.lcssa = phi i32 [ %imin.sroa.2.1180, %for.cond10.preheader ], [ %imin.sroa.2.3, %for.inc ]
  %maxg.2.lcssa = phi float [ %maxg.1179, %for.cond10.preheader ], [ %maxg.3, %for.inc ]
  %ming.2.lcssa = phi float [ %ming.1178, %for.cond10.preheader ], [ %ming.3, %for.inc ]
  %sum.addr.2.lcssa = phi float [ %sum.addr.1175, %for.cond10.preheader ], [ %add, %for.inc ]
  %indvars.iv.next229 = add i64 %indvars.iv228, 1, !dbg !467
  %inc57 = add nsw i32 %j.0176, 1, !dbg !467
  tail call void @llvm.dbg.value(metadata !{i32 %inc57}, i64 0, metadata !132), !dbg !467
  %lftr.wideiv230 = trunc i64 %indvars.iv.next229 to i32, !dbg !467
  %exitcond231 = icmp eq i32 %lftr.wideiv230, %1, !dbg !467
  br i1 %exitcond231, label %for.inc59, label %for.cond10.preheader, !dbg !467

for.inc59:                                        ; preds = %for.inc56, %for.cond6.preheader
  %imax.sroa.0.1.lcssa = phi i32 [ %imax.sroa.0.0206, %for.cond6.preheader ], [ %imax.sroa.0.2.lcssa, %for.inc56 ]
  %imax.sroa.1.1.lcssa = phi i32 [ %imax.sroa.1.0205, %for.cond6.preheader ], [ %imax.sroa.1.2.lcssa, %for.inc56 ]
  %imax.sroa.2.1.lcssa = phi i32 [ %imax.sroa.2.0204, %for.cond6.preheader ], [ %imax.sroa.2.2.lcssa, %for.inc56 ]
  %imin.sroa.0.1.lcssa = phi i32 [ %imin.sroa.0.0203, %for.cond6.preheader ], [ %imin.sroa.0.2.lcssa, %for.inc56 ]
  %imin.sroa.1.1.lcssa = phi i32 [ %imin.sroa.1.0202, %for.cond6.preheader ], [ %imin.sroa.1.2.lcssa, %for.inc56 ]
  %imin.sroa.2.1.lcssa = phi i32 [ %imin.sroa.2.0201, %for.cond6.preheader ], [ %imin.sroa.2.2.lcssa, %for.inc56 ]
  %maxg.1.lcssa = phi float [ %maxg.0200, %for.cond6.preheader ], [ %maxg.2.lcssa, %for.inc56 ]
  %ming.1.lcssa = phi float [ %ming.0199, %for.cond6.preheader ], [ %ming.2.lcssa, %for.inc56 ]
  %sum.addr.1.lcssa = phi float [ %sum.addr.0196, %for.cond6.preheader ], [ %sum.addr.2.lcssa, %for.inc56 ]
  %indvars.iv.next233 = add i64 %indvars.iv232, 1, !dbg !459
  %inc60 = add nsw i32 %i.0197, 1, !dbg !459
  tail call void @llvm.dbg.value(metadata !{i32 %inc60}, i64 0, metadata !131), !dbg !459
  %lftr.wideiv234 = trunc i64 %indvars.iv.next233 to i32, !dbg !459
  %exitcond235 = icmp eq i32 %lftr.wideiv234, %0, !dbg !459
  br i1 %exitcond235, label %if.end62, label %for.cond6.preheader, !dbg !459

if.end62:                                         ; preds = %for.inc59, %entry
  %sum.addr.3 = phi float [ %sum, %entry ], [ %sum.addr.1.lcssa, %for.inc59 ]
  %ming.4 = phi float [ 0.000000e+00, %entry ], [ %ming.1.lcssa, %for.inc59 ]
  %maxg.4 = phi float [ 0.000000e+00, %entry ], [ %maxg.1.lcssa, %for.inc59 ]
  %imin.sroa.2.4 = phi i32 [ -1, %entry ], [ %imin.sroa.2.1.lcssa, %for.inc59 ]
  %imin.sroa.1.4 = phi i32 [ -1, %entry ], [ %imin.sroa.1.1.lcssa, %for.inc59 ]
  %imin.sroa.0.4 = phi i32 [ -1, %entry ], [ %imin.sroa.0.1.lcssa, %for.inc59 ]
  %imax.sroa.2.4 = phi i32 [ -1, %entry ], [ %imax.sroa.2.1.lcssa, %for.inc59 ]
  %imax.sroa.1.4 = phi i32 [ -1, %entry ], [ %imax.sroa.1.1.lcssa, %for.inc59 ]
  %imax.sroa.0.4 = phi i32 [ -1, %entry ], [ %imax.sroa.0.1.lcssa, %for.inc59 ]
  %mul = mul nsw i32 %1, %0, !dbg !462
  %mul63 = mul nsw i32 %mul, %2, !dbg !462
  %conv64 = sitofp i32 %mul63 to float, !dbg !462
  %div = fdiv float %sum.addr.3, %conv64, !dbg !462
  tail call void @llvm.dbg.value(metadata !{float %div249}, i64 0, metadata !130), !dbg !462
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !131), !dbg !463
  %cmp66153 = icmp sgt i32 %0, 0, !dbg !463
  br i1 %cmp66153, label %for.cond69.preheader.lr.ph, label %for.end91, !dbg !463

for.cond69.preheader.lr.ph:                       ; preds = %if.end62
  %cmp70151 = icmp sgt i32 %1, 0, !dbg !469
  %cmp74149 = icmp sgt i32 %2, 0, !dbg !475
  br label %for.cond69.preheader, !dbg !463

for.cond69.preheader:                             ; preds = %for.inc89, %for.cond69.preheader.lr.ph
  %indvars.iv220 = phi i64 [ 0, %for.cond69.preheader.lr.ph ], [ %indvars.iv.next221, %for.inc89 ]
  br i1 %cmp70151, label %for.cond73.preheader.lr.ph, label %for.inc89, !dbg !469

for.cond73.preheader.lr.ph:                       ; preds = %for.cond69.preheader
  %arrayidx80 = getelementptr inbounds float*** %3, i64 %indvars.iv220, !dbg !482
  br label %for.cond73.preheader, !dbg !469

for.cond73.preheader:                             ; preds = %for.inc86, %for.cond73.preheader.lr.ph
  %indvars.iv216 = phi i64 [ 0, %for.cond73.preheader.lr.ph ], [ %indvars.iv.next217, %for.inc86 ]
  br i1 %cmp74149, label %for.body76.lr.ph, label %for.inc86, !dbg !475

for.body76.lr.ph:                                 ; preds = %for.cond73.preheader
  %12 = load float*** %arrayidx80, align 8, !dbg !482, !tbaa !385
  %arrayidx81 = getelementptr inbounds float** %12, i64 %indvars.iv216, !dbg !482
  %13 = load float** %arrayidx81, align 8, !dbg !482, !tbaa !385
  br label %for.body76, !dbg !475

for.body76:                                       ; preds = %for.body76, %for.body76.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next, %for.body76 ]
  %arrayidx82 = getelementptr inbounds float* %13, i64 %indvars.iv, !dbg !482
  %14 = load float* %arrayidx82, align 4, !dbg !482, !tbaa !427
  %sub = fsub float %14, %div, !dbg !482
  store float %sub, float* %arrayidx82, align 4, !dbg !482, !tbaa !427
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !475
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !475
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !475
  br i1 %exitcond, label %for.inc86, label %for.body76, !dbg !475

for.inc86:                                        ; preds = %for.body76, %for.cond73.preheader
  %indvars.iv.next217 = add i64 %indvars.iv216, 1, !dbg !469
  %lftr.wideiv218 = trunc i64 %indvars.iv.next217 to i32, !dbg !469
  %exitcond219 = icmp eq i32 %lftr.wideiv218, %1, !dbg !469
  br i1 %exitcond219, label %for.inc89, label %for.cond73.preheader, !dbg !469

for.inc89:                                        ; preds = %for.inc86, %for.cond69.preheader
  %indvars.iv.next221 = add i64 %indvars.iv220, 1, !dbg !463
  %lftr.wideiv222 = trunc i64 %indvars.iv.next221 to i32, !dbg !463
  %exitcond223 = icmp eq i32 %lftr.wideiv222, %0, !dbg !463
  br i1 %exitcond223, label %for.end91, label %for.cond69.preheader, !dbg !463

for.end91:                                        ; preds = %for.inc89, %if.end62.thread, %if.end62
  %div249 = phi float [ %div239, %if.end62.thread ], [ %div, %if.end62 ], [ %div, %for.inc89 ]
  %imax.sroa.0.4248 = phi i32 [ -1, %if.end62.thread ], [ %imax.sroa.0.4, %if.end62 ], [ %imax.sroa.0.4, %for.inc89 ]
  %imax.sroa.1.4247 = phi i32 [ -1, %if.end62.thread ], [ %imax.sroa.1.4, %if.end62 ], [ %imax.sroa.1.4, %for.inc89 ]
  %imax.sroa.2.4246 = phi i32 [ -1, %if.end62.thread ], [ %imax.sroa.2.4, %if.end62 ], [ %imax.sroa.2.4, %for.inc89 ]
  %imin.sroa.0.4245 = phi i32 [ -1, %if.end62.thread ], [ %imin.sroa.0.4, %if.end62 ], [ %imin.sroa.0.4, %for.inc89 ]
  %imin.sroa.1.4244 = phi i32 [ -1, %if.end62.thread ], [ %imin.sroa.1.4, %if.end62 ], [ %imin.sroa.1.4, %for.inc89 ]
  %imin.sroa.2.4243 = phi i32 [ -1, %if.end62.thread ], [ %imin.sroa.2.4, %if.end62 ], [ %imin.sroa.2.4, %for.inc89 ]
  %maxg.4242 = phi float [ %7, %if.end62.thread ], [ %maxg.4, %if.end62 ], [ %maxg.4, %for.inc89 ]
  %ming.4241 = phi float [ %7, %if.end62.thread ], [ %ming.4, %if.end62 ], [ %ming.4, %for.inc89 ]
  %tobool = icmp eq %struct._IO_FILE* %fp, null, !dbg !491
  br i1 %tobool, label %if.end103, label %if.then92, !dbg !491

if.then92:                                        ; preds = %for.end91
  %conv93 = fpext float %div249 to double, !dbg !492
  %conv94 = fpext float %ming.4241 to double, !dbg !492
  %conv98 = fpext float %maxg.4242 to double, !dbg !492
  %call102 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([71 x i8]* @.str5, i64 0, i64 0), double %conv93, double %conv94, i32 %imin.sroa.0.4245, i32 %imin.sroa.1.4244, i32 %imin.sroa.2.4243, double %conv98, i32 %imax.sroa.0.4248, i32 %imax.sroa.1.4247, i32 %imax.sroa.2.4246) #5, !dbg !492
  br label %if.end103, !dbg !492

if.end103:                                        ; preds = %for.end91, %if.then92
  ret void, !dbg !493
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @calc_nxyz(i32 %nx, i32 %ny, i32 %nz, i32** nocapture %nnx, i32** nocapture %nny, i32** nocapture %nnz) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !151), !dbg !494
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !152), !dbg !494
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !153), !dbg !494
  tail call void @llvm.dbg.value(metadata !{i32** %nnx}, i64 0, metadata !154), !dbg !495
  tail call void @llvm.dbg.value(metadata !{i32** %nny}, i64 0, metadata !155), !dbg !495
  tail call void @llvm.dbg.value(metadata !{i32** %nnz}, i64 0, metadata !156), !dbg !495
  %mul = mul nsw i32 %nx, 3, !dbg !496
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 148, i32 %mul, i32 4) #5, !dbg !496
  %0 = bitcast i8* %call to i32*, !dbg !496
  store i32* %0, i32** %nnx, align 8, !dbg !496, !tbaa !385
  %mul1 = mul nsw i32 %ny, 3, !dbg !497
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 149, i32 %mul1, i32 4) #5, !dbg !497
  %1 = bitcast i8* %call2 to i32*, !dbg !497
  store i32* %1, i32** %nny, align 8, !dbg !497, !tbaa !385
  %mul3 = mul nsw i32 %nz, 3, !dbg !498
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 150, i32 %mul3, i32 4) #5, !dbg !498
  %2 = bitcast i8* %call4 to i32*, !dbg !498
  store i32* %2, i32** %nnz, align 8, !dbg !498, !tbaa !385
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !157), !dbg !499
  %cmp50 = icmp sgt i32 %nx, 0, !dbg !499
  br i1 %cmp50, label %for.body.lr.ph, label %for.cond6.preheader, !dbg !499

for.body.lr.ph:                                   ; preds = %entry
  %3 = load i32** %nnx, align 8, !dbg !501, !tbaa !385
  br label %for.body, !dbg !499

for.cond6.preheader:                              ; preds = %for.body, %entry
  %cmp848 = icmp sgt i32 %ny, 0, !dbg !502
  br i1 %cmp848, label %for.body9.lr.ph, label %for.cond16.preheader, !dbg !502

for.body9.lr.ph:                                  ; preds = %for.cond6.preheader
  %4 = load i32** %nny, align 8, !dbg !504, !tbaa !385
  br label %for.body9, !dbg !502

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv54 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next55, %for.body ]
  %5 = trunc i64 %indvars.iv54 to i32, !dbg !501
  %rem = srem i32 %5, %nx, !dbg !501
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv54, !dbg !501
  store i32 %rem, i32* %arrayidx, align 4, !dbg !501, !tbaa !379
  %indvars.iv.next55 = add i64 %indvars.iv54, 1, !dbg !499
  %6 = trunc i64 %indvars.iv.next55 to i32, !dbg !499
  %cmp = icmp slt i32 %6, %mul, !dbg !499
  br i1 %cmp, label %for.body, label %for.cond6.preheader, !dbg !499

for.cond16.preheader:                             ; preds = %for.body9, %for.cond6.preheader
  %cmp1846 = icmp sgt i32 %nz, 0, !dbg !505
  br i1 %cmp1846, label %for.body19, label %for.end25, !dbg !505

for.body9:                                        ; preds = %for.body9.lr.ph, %for.body9
  %indvars.iv52 = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next53, %for.body9 ]
  %7 = trunc i64 %indvars.iv52 to i32, !dbg !504
  %rem10 = srem i32 %7, %ny, !dbg !504
  %arrayidx12 = getelementptr inbounds i32* %4, i64 %indvars.iv52, !dbg !504
  store i32 %rem10, i32* %arrayidx12, align 4, !dbg !504, !tbaa !379
  %indvars.iv.next53 = add i64 %indvars.iv52, 1, !dbg !502
  %8 = trunc i64 %indvars.iv.next53 to i32, !dbg !502
  %cmp8 = icmp slt i32 %8, %mul1, !dbg !502
  br i1 %cmp8, label %for.body9, label %for.cond16.preheader, !dbg !502

for.body19:                                       ; preds = %for.cond16.preheader, %for.body19
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body19 ], [ 0, %for.cond16.preheader ]
  %9 = trunc i64 %indvars.iv to i32, !dbg !507
  %rem20 = srem i32 %9, %nz, !dbg !507
  %arrayidx22 = getelementptr inbounds i32* %2, i64 %indvars.iv, !dbg !507
  store i32 %rem20, i32* %arrayidx22, align 4, !dbg !507, !tbaa !379
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !505
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !505
  %cmp18 = icmp slt i32 %10, %mul3, !dbg !505
  br i1 %cmp18, label %for.body19, label %for.end25, !dbg !505

for.end25:                                        ; preds = %for.body19, %for.cond16.preheader
  ret void, !dbg !508
}

; Function Attrs: nounwind optsize uwtable
define float @do_poisson(%struct._IO_FILE* %log, i32 %bVerbose, %struct.t_inputrec* nocapture %ir, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_commrec* nocapture %cr, %struct.t_nrnb* %nrnb, i32* nocapture %nit, i32 %bOld) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !298), !dbg !509
  tail call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !299), !dbg !509
  tail call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !300), !dbg !510
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !301), !dbg !510
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !302), !dbg !511
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !303), !dbg !511
  tail call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !304), !dbg !512
  tail call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !305), !dbg !512
  tail call void @llvm.dbg.value(metadata !{float* %phi}, i64 0, metadata !306), !dbg !513
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !307), !dbg !513
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !308), !dbg !514
  tail call void @llvm.dbg.value(metadata !{i32* %nit}, i64 0, metadata !309), !dbg !514
  tail call void @llvm.dbg.value(metadata !{i32 %bOld}, i64 0, metadata !310), !dbg !515
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !311), !dbg !517
  tail call void @llvm.dbg.value(metadata !450, i64 0, metadata !314), !dbg !518
  %.b53 = load i1* @do_poisson.bFirst, align 1
  br i1 %.b53, label %entry.if.end18_crit_edge, label %if.then, !dbg !519

entry.if.end18_crit_edge:                         ; preds = %entry
  %.pre57 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !dbg !520, !tbaa !385
  br label %if.end18, !dbg !519

if.then:                                          ; preds = %entry
  %userint1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72, !dbg !521
  %0 = load i32* %userint1, align 4, !dbg !521, !tbaa !379
  store i32 %0, i32* @do_poisson.maxnit, align 4, !dbg !521, !tbaa !379
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %log), !dbg !523
  %nkx = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17, !dbg !524
  %2 = load i32* %nkx, align 4, !dbg !524, !tbaa !379
  %nky = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18, !dbg !524
  %3 = load i32* %nky, align 4, !dbg !524, !tbaa !379
  %nkz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19, !dbg !524
  %4 = load i32* %nkz, align 4, !dbg !524, !tbaa !379
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %2, i32 %3, i32 %4) #5, !dbg !524
  %5 = load i32* %nkx, align 4, !dbg !525, !tbaa !379
  %cmp = icmp slt i32 %5, 4, !dbg !525
  br i1 %cmp, label %if.then8, label %lor.lhs.false, !dbg !525

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i32* %nky, align 4, !dbg !525, !tbaa !379
  %cmp4 = icmp slt i32 %6, 4, !dbg !525
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5, !dbg !525

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %7 = load i32* %nkz, align 4, !dbg !525, !tbaa !379
  %cmp7 = icmp slt i32 %7, 4, !dbg !525
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !525

if.then8:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.then
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !526
  %.pre = load i32* %nkx, align 4, !dbg !527, !tbaa !379
  %.pre55 = load i32* %nky, align 4, !dbg !527, !tbaa !379
  %.pre56 = load i32* %nkz, align 4, !dbg !527, !tbaa !379
  br label %if.end, !dbg !526

if.end:                                           ; preds = %if.then8, %lor.lhs.false5
  %8 = phi i32 [ %.pre56, %if.then8 ], [ %7, %lor.lhs.false5 ]
  %9 = phi i32 [ %.pre55, %if.then8 ], [ %6, %lor.lhs.false5 ]
  %10 = phi i32 [ %.pre, %if.then8 ], [ %5, %lor.lhs.false5 ]
  %call12 = tail call %struct.t_PSgrid* @mk_PSgrid(i32 %10, i32 %9, i32 %8) #7, !dbg !527
  store %struct.t_PSgrid* %call12, %struct.t_PSgrid** @do_poisson.pot, align 8, !dbg !527, !tbaa !385
  %11 = load i32* %nkx, align 4, !dbg !528, !tbaa !379
  %12 = load i32* %nky, align 4, !dbg !528, !tbaa !379
  %13 = load i32* %nkz, align 4, !dbg !528, !tbaa !379
  %call16 = tail call %struct.t_PSgrid* @mk_PSgrid(i32 %11, i32 %12, i32 %13) #7, !dbg !528
  store %struct.t_PSgrid* %call16, %struct.t_PSgrid** @do_poisson.rho, align 8, !dbg !528, !tbaa !385
  %rcoulomb_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37, !dbg !529
  %14 = load float* %rcoulomb_switch, align 4, !dbg !529, !tbaa !427
  store float %14, float* @do_poisson.r1, align 4, !dbg !529, !tbaa !427
  %rcoulomb = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38, !dbg !530
  %15 = load float* %rcoulomb, align 4, !dbg !530, !tbaa !427
  store float %15, float* @do_poisson.rc, align 4, !dbg !530, !tbaa !427
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !313), !dbg !531
  br label %for.body, !dbg !531

for.body:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [3 x float]* @do_poisson.beta, i64 0, i64 %indvars.iv, !dbg !533
  store float 0x3FFD9999A0000000, float* %arrayidx, align 4, !dbg !533, !tbaa !427
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !531
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !531
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !531
  br i1 %exitcond, label %if.end18, label %for.body, !dbg !531

if.end18:                                         ; preds = %for.body, %entry.if.end18_crit_edge
  %16 = phi %struct.t_PSgrid* [ %.pre57, %entry.if.end18_crit_edge ], [ %call16, %for.body ]
  tail call void @clear_PSgrid(%struct.t_PSgrid* %16) #7, !dbg !520
  %17 = load float* @do_poisson.rc, align 4, !dbg !534, !tbaa !427
  %18 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !dbg !534, !tbaa !385
  %19 = load float* @do_poisson.r1, align 4, !dbg !534, !tbaa !427
  tail call void @spread_q_poisson(%struct._IO_FILE* %log, i32 %bVerbose, i32 1, i32 %natoms, [3 x float]* %x, float* %charge, float* %box, float %17, %struct.t_PSgrid* %18, %struct.t_nrnb* %nrnb, i32 %bOld, float %19) #5, !dbg !534
  %20 = load %struct._IO_FILE** @debug, align 8, !dbg !535, !tbaa !385
  %21 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !dbg !535, !tbaa !385
  tail call void @symmetrize_PSgrid(%struct._IO_FILE* %20, %struct.t_PSgrid* %21, float 0.000000e+00) #7, !dbg !535
  %.b = load i1* @do_poisson.bFirst, align 1
  br i1 %.b, label %if.end21, label %if.then20, !dbg !536

if.then20:                                        ; preds = %if.end18
  %22 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !dbg !537, !tbaa !385
  %23 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !dbg !537, !tbaa !385
  tail call void @copy_PSgrid(%struct.t_PSgrid* %22, %struct.t_PSgrid* %23) #7, !dbg !537
  br label %if.end21, !dbg !537

if.end21:                                         ; preds = %if.end18, %if.then20
  %24 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !dbg !538, !tbaa !385
  %25 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !dbg !538, !tbaa !385
  %26 = load i32* @do_poisson.maxnit, align 4, !dbg !538, !tbaa !379
  %call22 = tail call i32 @solve_poisson(%struct._IO_FILE* %log, %struct.t_PSgrid* %24, %struct.t_PSgrid* %25, i32 %bVerbose, %struct.t_nrnb* %nrnb, i32 %26, float 0x3F847AE140000000, float* %box) #5, !dbg !538
  store i32 %call22, i32* %nit, align 4, !dbg !538, !tbaa !379
  %27 = load %struct._IO_FILE** @debug, align 8, !dbg !539, !tbaa !385
  %28 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !dbg !539, !tbaa !385
  tail call void @symmetrize_PSgrid(%struct._IO_FILE* %27, %struct.t_PSgrid* %28, float 0.000000e+00) #7, !dbg !539
  %29 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !dbg !540, !tbaa !385
  %call23 = tail call float @ps_gather_f(%struct._IO_FILE* %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_PSgrid* %29, float* getelementptr inbounds ([3 x float]* @do_poisson.beta, i64 0, i64 0), %struct.t_nrnb* %nrnb) #5, !dbg !540
  tail call void @llvm.dbg.value(metadata !{float %call23}, i64 0, metadata !314), !dbg !540
  store i1 true, i1* @do_poisson.bFirst, align 1
  ret float %call23, !dbg !541
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare void @spread_q_poisson(%struct._IO_FILE*, i32, i32, i32, [3 x float]*, float*, float*, float, %struct.t_PSgrid*, %struct.t_nrnb*, i32, float) #2

; Function Attrs: optsize
declare i32 @solve_poisson(%struct._IO_FILE*, %struct.t_PSgrid*, %struct.t_PSgrid*, i32, %struct.t_nrnb*, i32, float, float*) #2

; Function Attrs: optsize
declare float @ps_gather_f(%struct._IO_FILE*, i32, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_PSgrid*, float*, %struct.t_nrnb*) #2

; Function Attrs: nounwind optsize uwtable
define float @do_optimize_poisson(%struct._IO_FILE* %log, i32 %bVerbose, %struct.t_inputrec* nocapture %ir, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_commrec* nocapture %cr, %struct.t_nrnb* %nrnb, [3 x float]* %f_ref, float* %phi_ref, float* %beta, i32 %bOld) #0 {
entry:
  %rmsf = alloca [21 x [21 x [21 x float]]], align 16
  %buf = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !319), !dbg !542
  call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !320), !dbg !542
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !321), !dbg !543
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !322), !dbg !543
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !323), !dbg !544
  call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !324), !dbg !544
  call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !325), !dbg !545
  call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !326), !dbg !545
  call void @llvm.dbg.value(metadata !{float* %phi}, i64 0, metadata !327), !dbg !546
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !328), !dbg !546
  call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !329), !dbg !547
  call void @llvm.dbg.value(metadata !{[3 x float]* %f_ref}, i64 0, metadata !330), !dbg !547
  call void @llvm.dbg.value(metadata !{float* %phi_ref}, i64 0, metadata !331), !dbg !548
  call void @llvm.dbg.value(metadata !{float* %beta}, i64 0, metadata !332), !dbg !548
  call void @llvm.dbg.value(metadata !{i32 %bOld}, i64 0, metadata !333), !dbg !549
  %0 = bitcast [21 x [21 x [21 x float]]]* %rmsf to i8*, !dbg !550
  call void @llvm.lifetime.start(i64 37044, i8* %0) #4, !dbg !550
  call void @llvm.dbg.declare(metadata !{[21 x [21 x [21 x float]]]* %rmsf}, metadata !334), !dbg !550
  call void @llvm.dbg.declare(metadata !452, metadata !340), !dbg !551
  call void @llvm.dbg.value(metadata !516, i64 0, metadata !341), !dbg !552
  %1 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0, !dbg !553
  call void @llvm.lifetime.start(i64 128, i8* %1) #4, !dbg !553
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf}, metadata !347), !dbg !553
  call void @llvm.dbg.value(metadata !450, i64 0, metadata !351), !dbg !554
  %.b = load i1* @do_optimize_poisson.bFirst, align 1
  br i1 %.b, label %entry.if.end18_crit_edge, label %if.then, !dbg !555

entry.if.end18_crit_edge:                         ; preds = %entry
  %.pre346 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !dbg !556, !tbaa !385
  br label %if.end18, !dbg !555

if.then:                                          ; preds = %entry
  %userint1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72, !dbg !557
  %2 = load i32* %userint1, align 4, !dbg !557, !tbaa !379
  store i32 %2, i32* @do_optimize_poisson.maxnit, align 4, !dbg !557, !tbaa !379
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %log), !dbg !559
  %nkx = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17, !dbg !560
  %4 = load i32* %nkx, align 4, !dbg !560, !tbaa !379
  %nky = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18, !dbg !560
  %5 = load i32* %nky, align 4, !dbg !560, !tbaa !379
  %nkz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19, !dbg !560
  %6 = load i32* %nkz, align 4, !dbg !560, !tbaa !379
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %4, i32 %5, i32 %6) #5, !dbg !560
  %7 = load i32* %nkx, align 4, !dbg !561, !tbaa !379
  %cmp = icmp slt i32 %7, 4, !dbg !561
  br i1 %cmp, label %if.then8, label %lor.lhs.false, !dbg !561

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i32* %nky, align 4, !dbg !561, !tbaa !379
  %cmp4 = icmp slt i32 %8, 4, !dbg !561
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5, !dbg !561

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %9 = load i32* %nkz, align 4, !dbg !561, !tbaa !379
  %cmp7 = icmp slt i32 %9, 4, !dbg !561
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !561

if.then8:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.then
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !562
  %.pre = load i32* %nkx, align 4, !dbg !563, !tbaa !379
  %.pre344 = load i32* %nky, align 4, !dbg !563, !tbaa !379
  %.pre345 = load i32* %nkz, align 4, !dbg !563, !tbaa !379
  br label %if.end, !dbg !562

if.end:                                           ; preds = %if.then8, %lor.lhs.false5
  %10 = phi i32 [ %.pre345, %if.then8 ], [ %9, %lor.lhs.false5 ]
  %11 = phi i32 [ %.pre344, %if.then8 ], [ %8, %lor.lhs.false5 ]
  %12 = phi i32 [ %.pre, %if.then8 ], [ %7, %lor.lhs.false5 ]
  %call12 = call %struct.t_PSgrid* @mk_PSgrid(i32 %12, i32 %11, i32 %10) #7, !dbg !563
  store %struct.t_PSgrid* %call12, %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !dbg !563, !tbaa !385
  %13 = load i32* %nkx, align 4, !dbg !564, !tbaa !379
  %14 = load i32* %nky, align 4, !dbg !564, !tbaa !379
  %15 = load i32* %nkz, align 4, !dbg !564, !tbaa !379
  %call16 = call %struct.t_PSgrid* @mk_PSgrid(i32 %13, i32 %14, i32 %15) #7, !dbg !564
  store %struct.t_PSgrid* %call16, %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !dbg !564, !tbaa !385
  %rcoulomb_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37, !dbg !565
  %16 = load float* %rcoulomb_switch, align 4, !dbg !565, !tbaa !427
  store float %16, float* @do_optimize_poisson.r1, align 4, !dbg !565, !tbaa !427
  %rcoulomb = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38, !dbg !566
  %17 = load float* %rcoulomb, align 4, !dbg !566, !tbaa !427
  store float %17, float* @do_optimize_poisson.rc, align 4, !dbg !566, !tbaa !427
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !343), !dbg !567
  br label %for.body, !dbg !567

for.body:                                         ; preds = %for.body, %if.end
  %indvars.iv340 = phi i64 [ 0, %if.end ], [ %indvars.iv.next341, %for.body ]
  %arrayidx = getelementptr inbounds float* %beta, i64 %indvars.iv340, !dbg !569
  store float 0x3FF5555560000000, float* %arrayidx, align 4, !dbg !569, !tbaa !427
  %indvars.iv.next341 = add i64 %indvars.iv340, 1, !dbg !567
  %lftr.wideiv342 = trunc i64 %indvars.iv.next341 to i32, !dbg !567
  %exitcond343 = icmp eq i32 %lftr.wideiv342, 3, !dbg !567
  br i1 %exitcond343, label %for.end, label %for.body, !dbg !567

for.end:                                          ; preds = %for.body
  store i1 true, i1* @do_optimize_poisson.bFirst, align 1
  br label %if.end18, !dbg !570

if.end18:                                         ; preds = %entry.if.end18_crit_edge, %for.end
  %18 = phi %struct.t_PSgrid* [ %.pre346, %entry.if.end18_crit_edge ], [ %call16, %for.end ]
  call void @clear_PSgrid(%struct.t_PSgrid* %18) #7, !dbg !556
  %19 = load float* @do_optimize_poisson.rc, align 4, !dbg !571, !tbaa !427
  %20 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !dbg !571, !tbaa !385
  %21 = load float* @do_optimize_poisson.r1, align 4, !dbg !571, !tbaa !427
  call void @spread_q_poisson(%struct._IO_FILE* %log, i32 %bVerbose, i32 1, i32 %natoms, [3 x float]* %x, float* %charge, float* %box, float %19, %struct.t_PSgrid* %20, %struct.t_nrnb* %nrnb, i32 %bOld, float %21) #5, !dbg !571
  %22 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !dbg !572, !tbaa !385
  call void @symmetrize_PSgrid(%struct._IO_FILE* %log, %struct.t_PSgrid* %22, float 0.000000e+00) #7, !dbg !572
  %23 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !dbg !573, !tbaa !385
  %24 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !dbg !573, !tbaa !385
  call void @copy_PSgrid(%struct.t_PSgrid* %23, %struct.t_PSgrid* %24) #7, !dbg !573
  %25 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !dbg !574, !tbaa !385
  %26 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !dbg !574, !tbaa !385
  %27 = load i32* @do_optimize_poisson.maxnit, align 4, !dbg !574, !tbaa !379
  %call22 = call i32 @solve_poisson(%struct._IO_FILE* %log, %struct.t_PSgrid* %25, %struct.t_PSgrid* %26, i32 %bVerbose, %struct.t_nrnb* %nrnb, i32 %27, float 0x3F847AE140000000, float* %box) #5, !dbg !574
  %28 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !dbg !575, !tbaa !385
  call void @symmetrize_PSgrid(%struct._IO_FILE* %log, %struct.t_PSgrid* %28, float 0.000000e+00) #7, !dbg !575
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !344), !dbg !576
  %arrayidx36 = getelementptr inbounds float* %beta, i64 1, !dbg !578
  %arrayidx45 = getelementptr inbounds float* %beta, i64 2, !dbg !582
  %cmp47304 = icmp sgt i32 %natoms, 0, !dbg !585
  br label %for.body25, !dbg !576

for.body25:                                       ; preds = %for.inc76, %if.end18
  %indvars.iv336 = phi i64 [ 0, %if.end18 ], [ %indvars.iv.next337, %for.inc76 ]
  %29 = trunc i64 %indvars.iv336 to i32, !dbg !587
  %conv = sitofp i32 %29 to double, !dbg !587
  %mul = fmul double %conv, 2.500000e-02, !dbg !587
  %add = fadd double %mul, 1.600000e+00, !dbg !587
  %conv26 = fptrunc double %add to float, !dbg !587
  store float %conv26, float* %beta, align 4, !dbg !587, !tbaa !427
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !345), !dbg !588
  br label %for.body31, !dbg !588

for.body31:                                       ; preds = %for.inc73, %for.body25
  %indvars.iv332 = phi i64 [ 0, %for.body25 ], [ %indvars.iv.next333, %for.inc73 ]
  %30 = trunc i64 %indvars.iv332 to i32, !dbg !578
  %conv32 = sitofp i32 %30 to double, !dbg !578
  %mul33 = fmul double %conv32, 2.500000e-02, !dbg !578
  %add34 = fadd double %mul33, 1.600000e+00, !dbg !578
  %conv35 = fptrunc double %add34 to float, !dbg !578
  store float %conv35, float* %arrayidx36, align 4, !dbg !578, !tbaa !427
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !346), !dbg !589
  br label %for.body40, !dbg !589

for.body40:                                       ; preds = %for.end56, %for.body31
  %indvars.iv328 = phi i64 [ 0, %for.body31 ], [ %indvars.iv.next329, %for.end56 ]
  %31 = trunc i64 %indvars.iv328 to i32, !dbg !582
  %conv41 = sitofp i32 %31 to double, !dbg !582
  %mul42 = fmul double %conv41, 2.500000e-02, !dbg !582
  %add43 = fadd double %mul42, 1.600000e+00, !dbg !582
  %conv44 = fptrunc double %add43 to float, !dbg !582
  store float %conv44, float* %arrayidx45, align 4, !dbg !582, !tbaa !427
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !342), !dbg !585
  br i1 %cmp47304, label %for.body49, label %for.end56, !dbg !585

for.body49:                                       ; preds = %for.body40, %for.body49
  %indvars.iv323 = phi i64 [ %indvars.iv.next324, %for.body49 ], [ 0, %for.body40 ]
  %arrayidx51 = getelementptr inbounds float* %phi, i64 %indvars.iv323, !dbg !590
  store float 0.000000e+00, float* %arrayidx51, align 4, !dbg !590, !tbaa !427
  %arraydecay = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv323, i64 0, !dbg !592
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !593), !dbg !594
  store float 0.000000e+00, float* %arraydecay, align 4, !dbg !595, !tbaa !427
  %arrayidx1.i = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv323, i64 1, !dbg !597
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !dbg !597, !tbaa !427
  %arrayidx2.i = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv323, i64 2, !dbg !598
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !dbg !598, !tbaa !427
  %indvars.iv.next324 = add i64 %indvars.iv323, 1, !dbg !585
  %lftr.wideiv325 = trunc i64 %indvars.iv.next324 to i32, !dbg !585
  %exitcond326 = icmp eq i32 %lftr.wideiv325, %natoms, !dbg !585
  br i1 %exitcond326, label %for.end56, label %for.body49, !dbg !585

for.end56:                                        ; preds = %for.body49, %for.body40
  %32 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !dbg !599, !tbaa !385
  %call57 = call float @ps_gather_f(%struct._IO_FILE* %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_PSgrid* %32, float* %beta, %struct.t_nrnb* %nrnb) #5, !dbg !599
  call void @llvm.dbg.value(metadata !{float %call57}, i64 0, metadata !351), !dbg !599
  %33 = load float* %beta, align 4, !dbg !600, !tbaa !427
  %conv60 = fpext float %33 to double, !dbg !600
  %call61 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), double %conv60) #5, !dbg !600
  %call63 = call float @analyse_diff(%struct._IO_FILE* %log, i8* %1, i32 %natoms, [3 x float]* %f_ref, [3 x float]* %f, float* %phi_ref, float* %phi, float* null, i8* null, i8* null, i8* null, i8* null) #5, !dbg !601
  %arrayidx69 = getelementptr inbounds [21 x [21 x [21 x float]]]* %rmsf, i64 0, i64 %indvars.iv336, i64 %indvars.iv332, i64 %indvars.iv328, !dbg !601
  store float %call63, float* %arrayidx69, align 4, !dbg !601, !tbaa !427
  %indvars.iv.next329 = add i64 %indvars.iv328, 1, !dbg !589
  %lftr.wideiv330 = trunc i64 %indvars.iv.next329 to i32, !dbg !589
  %exitcond331 = icmp eq i32 %lftr.wideiv330, 21, !dbg !589
  br i1 %exitcond331, label %for.inc73, label %for.body40, !dbg !589

for.inc73:                                        ; preds = %for.end56
  %indvars.iv.next333 = add i64 %indvars.iv332, 1, !dbg !588
  %lftr.wideiv334 = trunc i64 %indvars.iv.next333 to i32, !dbg !588
  %exitcond335 = icmp eq i32 %lftr.wideiv334, 21, !dbg !588
  br i1 %exitcond335, label %for.inc76, label %for.body31, !dbg !588

for.inc76:                                        ; preds = %for.inc73
  %indvars.iv.next337 = add i64 %indvars.iv336, 1, !dbg !576
  %lftr.wideiv338 = trunc i64 %indvars.iv.next337 to i32, !dbg !576
  %exitcond339 = icmp eq i32 %lftr.wideiv338, 21, !dbg !576
  br i1 %exitcond339, label %for.end78, label %for.body25, !dbg !576

for.end78:                                        ; preds = %for.inc76
  %arrayidx81 = getelementptr inbounds [21 x [21 x [21 x float]]]* %rmsf, i64 0, i64 0, i64 0, i64 0, !dbg !602
  %34 = load float* %arrayidx81, align 16, !dbg !602, !tbaa !427
  call void @llvm.dbg.value(metadata !{float %34}, i64 0, metadata !338), !dbg !602
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !344), !dbg !603
  br label %for.body88, !dbg !603

for.body88:                                       ; preds = %for.inc139, %for.end78
  %indvars.iv319 = phi i64 [ 0, %for.end78 ], [ %indvars.iv.next320, %for.inc139 ]
  %rmsf_min.0303 = phi float [ %34, %for.end78 ], [ %rmsf_min.3, %for.inc139 ]
  %bx.1302 = phi i32 [ 0, %for.end78 ], [ %inc140, %for.inc139 ]
  %minimum.sroa.2.0301 = phi i32 [ 0, %for.end78 ], [ %minimum.sroa.2.3, %for.inc139 ]
  %minimum.sroa.0.0300 = phi i32 [ 0, %for.end78 ], [ %minimum.sroa.0.3, %for.inc139 ]
  %minimum.sroa.1.0299 = phi i32 [ 0, %for.end78 ], [ %minimum.sroa.1.3, %for.inc139 ]
  %35 = trunc i64 %indvars.iv319 to i32, !dbg !605
  %conv89 = sitofp i32 %35 to double, !dbg !605
  %mul90 = fmul double %conv89, 2.500000e-02, !dbg !605
  %add91 = fadd double %mul90, 1.600000e+00, !dbg !605
  %conv92 = fptrunc double %add91 to float, !dbg !605
  store float %conv92, float* %beta, align 4, !dbg !605, !tbaa !427
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !345), !dbg !607
  br label %for.body97, !dbg !607

for.body97:                                       ; preds = %for.inc136, %for.body88
  %indvars.iv315 = phi i64 [ 0, %for.body88 ], [ %indvars.iv.next316, %for.inc136 ]
  %rmsf_min.1298 = phi float [ %rmsf_min.0303, %for.body88 ], [ %rmsf_min.3, %for.inc136 ]
  %by.1297 = phi i32 [ 0, %for.body88 ], [ %inc137, %for.inc136 ]
  %minimum.sroa.2.1296 = phi i32 [ %minimum.sroa.2.0301, %for.body88 ], [ %minimum.sroa.2.3, %for.inc136 ]
  %minimum.sroa.0.1295 = phi i32 [ %minimum.sroa.0.0300, %for.body88 ], [ %minimum.sroa.0.3, %for.inc136 ]
  %minimum.sroa.1.1294 = phi i32 [ %minimum.sroa.1.0299, %for.body88 ], [ %minimum.sroa.1.3, %for.inc136 ]
  %36 = trunc i64 %indvars.iv315 to i32, !dbg !609
  %conv98 = sitofp i32 %36 to double, !dbg !609
  %mul99 = fmul double %conv98, 2.500000e-02, !dbg !609
  %add100 = fadd double %mul99, 1.600000e+00, !dbg !609
  %conv101 = fptrunc double %add100 to float, !dbg !609
  store float %conv101, float* %arrayidx36, align 4, !dbg !609, !tbaa !427
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !346), !dbg !611
  br label %for.body106, !dbg !611

for.body106:                                      ; preds = %for.inc133.for.body106_crit_edge, %for.body97
  %37 = phi float [ %conv101, %for.body97 ], [ %.pre347, %for.inc133.for.body106_crit_edge ]
  %indvars.iv311 = phi i64 [ 0, %for.body97 ], [ %indvars.iv.next312, %for.inc133.for.body106_crit_edge ]
  %rmsf_min.2293 = phi float [ %rmsf_min.1298, %for.body97 ], [ %rmsf_min.3, %for.inc133.for.body106_crit_edge ]
  %minimum.sroa.2.2291 = phi i32 [ %minimum.sroa.2.1296, %for.body97 ], [ %minimum.sroa.2.3, %for.inc133.for.body106_crit_edge ]
  %minimum.sroa.0.2290 = phi i32 [ %minimum.sroa.0.1295, %for.body97 ], [ %minimum.sroa.0.3, %for.inc133.for.body106_crit_edge ]
  %minimum.sroa.1.2289 = phi i32 [ %minimum.sroa.1.1294, %for.body97 ], [ %minimum.sroa.1.3, %for.inc133.for.body106_crit_edge ]
  %38 = trunc i64 %indvars.iv311 to i32, !dbg !613
  %conv107 = sitofp i32 %38 to double, !dbg !613
  %mul108 = fmul double %conv107, 2.500000e-02, !dbg !613
  %add109 = fadd double %mul108, 1.600000e+00, !dbg !613
  %conv110 = fptrunc double %add109 to float, !dbg !613
  store float %conv110, float* %arrayidx45, align 4, !dbg !613, !tbaa !427
  %arrayidx117 = getelementptr inbounds [21 x [21 x [21 x float]]]* %rmsf, i64 0, i64 %indvars.iv319, i64 %indvars.iv315, i64 %indvars.iv311, !dbg !615
  %39 = load float* %arrayidx117, align 4, !dbg !615, !tbaa !427
  call void @llvm.dbg.value(metadata !{float %39}, i64 0, metadata !339), !dbg !615
  %40 = load float* %beta, align 4, !dbg !616, !tbaa !427
  %conv119 = fpext float %40 to double, !dbg !616
  %conv121 = fpext float %37 to double, !dbg !616
  %conv123 = fpext float %conv110 to double, !dbg !616
  %conv124 = fpext float %39 to double, !dbg !616
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([40 x i8]* @.str13, i64 0, i64 0), double %conv119, double %conv121, double %conv123, double %conv124) #5, !dbg !616
  %cmp126 = fcmp olt float %39, %rmsf_min.2293, !dbg !617
  br i1 %cmp126, label %if.then128, label %for.inc133, !dbg !617

if.then128:                                       ; preds = %for.body106
  call void @llvm.dbg.value(metadata !{float %39}, i64 0, metadata !338), !dbg !618
  br label %for.inc133, !dbg !620

for.inc133:                                       ; preds = %for.body106, %if.then128
  %minimum.sroa.1.3 = phi i32 [ %by.1297, %if.then128 ], [ %minimum.sroa.1.2289, %for.body106 ]
  %minimum.sroa.0.3 = phi i32 [ %bx.1302, %if.then128 ], [ %minimum.sroa.0.2290, %for.body106 ]
  %minimum.sroa.2.3 = phi i32 [ %38, %if.then128 ], [ %minimum.sroa.2.2291, %for.body106 ]
  %rmsf_min.3 = phi float [ %39, %if.then128 ], [ %rmsf_min.2293, %for.body106 ]
  %indvars.iv.next312 = add i64 %indvars.iv311, 1, !dbg !611
  %lftr.wideiv313 = trunc i64 %indvars.iv.next312 to i32, !dbg !611
  %exitcond314 = icmp eq i32 %lftr.wideiv313, 21, !dbg !611
  br i1 %exitcond314, label %for.inc136, label %for.inc133.for.body106_crit_edge, !dbg !611

for.inc133.for.body106_crit_edge:                 ; preds = %for.inc133
  %.pre347 = load float* %arrayidx36, align 4, !dbg !616, !tbaa !427
  br label %for.body106, !dbg !611

for.inc136:                                       ; preds = %for.inc133
  %indvars.iv.next316 = add i64 %indvars.iv315, 1, !dbg !607
  %inc137 = add nsw i32 %by.1297, 1, !dbg !607
  call void @llvm.dbg.value(metadata !{i32 %inc137}, i64 0, metadata !345), !dbg !607
  %lftr.wideiv317 = trunc i64 %indvars.iv.next316 to i32, !dbg !607
  %exitcond318 = icmp eq i32 %lftr.wideiv317, 21, !dbg !607
  br i1 %exitcond318, label %for.inc139, label %for.body97, !dbg !607

for.inc139:                                       ; preds = %for.inc136
  %indvars.iv.next320 = add i64 %indvars.iv319, 1, !dbg !603
  %inc140 = add nsw i32 %bx.1302, 1, !dbg !603
  call void @llvm.dbg.value(metadata !{i32 %inc140}, i64 0, metadata !344), !dbg !603
  %lftr.wideiv321 = trunc i64 %indvars.iv.next320 to i32, !dbg !603
  %exitcond322 = icmp eq i32 %lftr.wideiv321, 21, !dbg !603
  br i1 %exitcond322, label %for.end141, label %for.body88, !dbg !603

for.end141:                                       ; preds = %for.inc139
  %conv143 = sitofp i32 %minimum.sroa.0.3 to double, !dbg !621
  %mul144 = fmul double %conv143, 2.500000e-02, !dbg !621
  %add145 = fadd double %mul144, 1.600000e+00, !dbg !621
  %conv146 = fptrunc double %add145 to float, !dbg !621
  store float %conv146, float* %beta, align 4, !dbg !621, !tbaa !427
  %conv149 = sitofp i32 %minimum.sroa.1.3 to double, !dbg !622
  %mul150 = fmul double %conv149, 2.500000e-02, !dbg !622
  %add151 = fadd double %mul150, 1.600000e+00, !dbg !622
  %conv152 = fptrunc double %add151 to float, !dbg !622
  store float %conv152, float* %arrayidx36, align 4, !dbg !622, !tbaa !427
  %conv155 = sitofp i32 %minimum.sroa.2.3 to double, !dbg !623
  %mul156 = fmul double %conv155, 2.500000e-02, !dbg !623
  %add157 = fadd double %mul156, 1.600000e+00, !dbg !623
  %conv158 = fptrunc double %add157 to float, !dbg !623
  store float %conv158, float* %arrayidx45, align 4, !dbg !623, !tbaa !427
  %conv160 = fpext float %rmsf_min.3 to double, !dbg !624
  %conv162 = fpext float %conv146 to double, !dbg !624
  %conv164 = fpext float %conv152 to double, !dbg !624
  %conv166 = fpext float %conv158 to double, !dbg !624
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([50 x i8]* @.str14, i64 0, i64 0), double %conv160, double %conv162, double %conv164, double %conv166) #5, !dbg !624
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !342), !dbg !625
  br i1 %cmp47304, label %for.body171, label %for.end179, !dbg !625

for.body171:                                      ; preds = %for.end141, %for.body171
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body171 ], [ 0, %for.end141 ]
  %arrayidx173 = getelementptr inbounds float* %phi, i64 %indvars.iv, !dbg !627
  store float 0.000000e+00, float* %arrayidx173, align 4, !dbg !627, !tbaa !427
  %arraydecay176 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0, !dbg !629
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay176}, i64 0, metadata !630), !dbg !631
  store float 0.000000e+00, float* %arraydecay176, align 4, !dbg !632, !tbaa !427
  %arrayidx1.i285 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 1, !dbg !633
  store float 0.000000e+00, float* %arrayidx1.i285, align 4, !dbg !633, !tbaa !427
  %arrayidx2.i286 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 2, !dbg !634
  store float 0.000000e+00, float* %arrayidx2.i286, align 4, !dbg !634, !tbaa !427
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !625
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !625
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms, !dbg !625
  br i1 %exitcond, label %for.end179, label %for.body171, !dbg !625

for.end179:                                       ; preds = %for.body171, %for.end141
  %41 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !dbg !635, !tbaa !385
  %call180 = call float @ps_gather_f(%struct._IO_FILE* %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_PSgrid* %41, float* %beta, %struct.t_nrnb* %nrnb) #5, !dbg !635
  call void @llvm.dbg.value(metadata !{float %call180}, i64 0, metadata !351), !dbg !635
  call void @llvm.lifetime.end(i64 128, i8* %1) #4, !dbg !636
  call void @llvm.lifetime.end(i64 37044, i8* %0) #4, !dbg !636
  ret float %call180, !dbg !636
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare float @analyse_diff(%struct._IO_FILE*, i8*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !359, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !30, metadata !41, metadata !55, metadata !67, metadata !146, metadata !158, metadata !315, metadata !352}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mk_PSgrid", metadata !"mk_PSgrid", metadata !"", i32 44, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_PSgrid* (i32, i32, i32)* @mk_PSgrid, null, null, metadata !23, i32 45} ; [ DW_TAG_subprogram ] [line 44] [def] [scope 45] [mk_PSgrid]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !14, metadata !14, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_PSgrid]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"t_PSgrid", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [t_PSgrid] [line 46, size 0, align 0, offset 0] [from ]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 43, i64 192, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 43, size 192, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nx", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nx] [line 44, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ny", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [ny] [line 44, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nz", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nz] [line 44, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ptr", i32 45, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [ptr] [line 45, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!21 = metadata !{i32 786454, metadata !11, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!22 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29}
!24 = metadata !{i32 786689, metadata !4, metadata !"nx", metadata !5, i32 16777260, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 44]
!25 = metadata !{i32 786689, metadata !4, metadata !"ny", metadata !5, i32 33554476, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 44]
!26 = metadata !{i32 786689, metadata !4, metadata !"nz", metadata !5, i32 50331692, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 44]
!27 = metadata !{i32 786688, metadata !4, metadata !"ps", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ps] [line 46]
!28 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 47, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 47]
!29 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 47, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 47]
!30 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"unpack_PSgrid", metadata !"unpack_PSgrid", metadata !"", i32 62, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_PSgrid*, i32*, i32*, i32*, float****)* @unpack_PSgrid, null, null, metadata !35, i32 63} ; [ DW_TAG_subprogram ] [line 62] [def] [scope 63] [unpack_PSgrid]
!31 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!32 = metadata !{null, metadata !8, metadata !33, metadata !33, metadata !33, metadata !34}
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!35 = metadata !{metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
!36 = metadata !{i32 786689, metadata !30, metadata !"grid", metadata !5, i32 16777278, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 62]
!37 = metadata !{i32 786689, metadata !30, metadata !"nx", metadata !5, i32 33554494, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 62]
!38 = metadata !{i32 786689, metadata !30, metadata !"ny", metadata !5, i32 50331710, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 62]
!39 = metadata !{i32 786689, metadata !30, metadata !"nz", metadata !5, i32 67108926, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 62]
!40 = metadata !{i32 786689, metadata !30, metadata !"ptr", metadata !5, i32 83886142, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ptr] [line 62]
!41 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"copy_PSgrid", metadata !"copy_PSgrid", metadata !"", i32 70, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_PSgrid*, %struct.t_PSgrid*)* @copy_PSgrid, null, null, metadata !44, i32 71} ; [ DW_TAG_subprogram ] [line 70] [def] [scope 71] [copy_PSgrid]
!42 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{null, metadata !8, metadata !8}
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!45 = metadata !{i32 786689, metadata !41, metadata !"dest", metadata !5, i32 16777286, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 70]
!46 = metadata !{i32 786689, metadata !41, metadata !"src", metadata !5, i32 33554502, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 70]
!47 = metadata !{i32 786688, metadata !41, metadata !"i", metadata !5, i32 72, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 72]
!48 = metadata !{i32 786688, metadata !41, metadata !"j", metadata !5, i32 72, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 72]
!49 = metadata !{i32 786688, metadata !41, metadata !"k", metadata !5, i32 72, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 72]
!50 = metadata !{i32 786688, metadata !41, metadata !"nx", metadata !5, i32 73, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 73]
!51 = metadata !{i32 786688, metadata !41, metadata !"ny", metadata !5, i32 73, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 73]
!52 = metadata !{i32 786688, metadata !41, metadata !"nz", metadata !5, i32 73, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nz] [line 73]
!53 = metadata !{i32 786688, metadata !41, metadata !"src_ptr", metadata !5, i32 74, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src_ptr] [line 74]
!54 = metadata !{i32 786688, metadata !41, metadata !"dst_ptr", metadata !5, i32 74, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst_ptr] [line 74]
!55 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"clear_PSgrid", metadata !"clear_PSgrid", metadata !"", i32 85, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_PSgrid*)* @clear_PSgrid, null, null, metadata !58, i32 86} ; [ DW_TAG_subprogram ] [line 85] [def] [scope 86] [clear_PSgrid]
!56 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{null, metadata !8}
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!59 = metadata !{i32 786689, metadata !55, metadata !"grid", metadata !5, i32 16777301, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 85]
!60 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !5, i32 87, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 87]
!61 = metadata !{i32 786688, metadata !55, metadata !"j", metadata !5, i32 87, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 87]
!62 = metadata !{i32 786688, metadata !55, metadata !"k", metadata !5, i32 87, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 87]
!63 = metadata !{i32 786688, metadata !55, metadata !"nx", metadata !5, i32 88, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 88]
!64 = metadata !{i32 786688, metadata !55, metadata !"ny", metadata !5, i32 88, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 88]
!65 = metadata !{i32 786688, metadata !55, metadata !"nz", metadata !5, i32 88, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nz] [line 88]
!66 = metadata !{i32 786688, metadata !55, metadata !"ptr", metadata !5, i32 89, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 89]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"symmetrize_PSgrid", metadata !"symmetrize_PSgrid", metadata !"", i32 99, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_PSgrid*, float)* @symmetrize_PSgrid, null, null, metadata !127, i32 100} ; [ DW_TAG_subprogram ] [line 99] [def] [scope 100] [symmetrize_PSgrid]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{null, metadata !70, metadata !8, metadata !21}
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!71 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!72 = metadata !{i32 786451, metadata !73, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !74, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!73 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!74 = metadata !{metadata !75, metadata !76, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !97, metadata !98, metadata !99, metadata !100, metadata !103, metadata !105, metadata !107, metadata !111, metadata !113, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !122, metadata !123}
!75 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!76 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !77} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!78 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!79 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !77} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!80 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !77} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!81 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !77} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!82 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !77} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!83 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !77} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!84 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !77} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!85 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !77} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!86 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !77} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!87 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !77} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!88 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !77} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!89 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !90} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!91 = metadata !{i32 786451, metadata !73, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !92, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!92 = metadata !{metadata !93, metadata !94, metadata !96}
!93 = metadata !{i32 786445, metadata !73, metadata !91, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!94 = metadata !{i32 786445, metadata !73, metadata !91, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !95} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!96 = metadata !{i32 786445, metadata !73, metadata !91, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!97 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !95} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!98 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!99 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!100 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !101} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!101 = metadata !{i32 786454, metadata !73, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!102 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!103 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !104} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!104 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!105 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !106} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!106 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!107 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !108} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!108 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !78, metadata !109, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!111 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !112} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!113 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !114} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!114 = metadata !{i32 786454, metadata !73, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!115 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !112} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!116 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !112} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!117 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !112} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!118 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !112} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!119 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !120} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!120 = metadata !{i32 786454, metadata !73, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!121 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!122 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!123 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !124} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!124 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !78, metadata !125, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!125 = metadata !{metadata !126}
!126 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!127 = metadata !{metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !145}
!128 = metadata !{i32 786689, metadata !67, metadata !"fp", metadata !5, i32 16777315, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 99]
!129 = metadata !{i32 786689, metadata !67, metadata !"grid", metadata !5, i32 33554531, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 99]
!130 = metadata !{i32 786689, metadata !67, metadata !"sum", metadata !5, i32 50331747, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum] [line 99]
!131 = metadata !{i32 786688, metadata !67, metadata !"i", metadata !5, i32 101, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 101]
!132 = metadata !{i32 786688, metadata !67, metadata !"j", metadata !5, i32 101, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 101]
!133 = metadata !{i32 786688, metadata !67, metadata !"k", metadata !5, i32 101, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 101]
!134 = metadata !{i32 786688, metadata !67, metadata !"nx", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 102]
!135 = metadata !{i32 786688, metadata !67, metadata !"ny", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 102]
!136 = metadata !{i32 786688, metadata !67, metadata !"nz", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nz] [line 102]
!137 = metadata !{i32 786688, metadata !67, metadata !"ptr", metadata !5, i32 103, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 103]
!138 = metadata !{i32 786688, metadata !67, metadata !"ming", metadata !5, i32 104, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ming] [line 104]
!139 = metadata !{i32 786688, metadata !67, metadata !"maxg", metadata !5, i32 104, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxg] [line 104]
!140 = metadata !{i32 786688, metadata !67, metadata !"imin", metadata !5, i32 105, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imin] [line 105]
!141 = metadata !{i32 786454, metadata !1, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!142 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !14, metadata !143, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!143 = metadata !{metadata !144}
!144 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!145 = metadata !{i32 786688, metadata !67, metadata !"imax", metadata !5, i32 105, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imax] [line 105]
!146 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_nxyz", metadata !"calc_nxyz", metadata !"", i32 143, metadata !147, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32**, i32**, i32**)* @calc_nxyz, null, null, metadata !150, i32 145} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 145] [calc_nxyz]
!147 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{null, metadata !14, metadata !14, metadata !14, metadata !149, metadata !149, metadata !149}
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!150 = metadata !{metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157}
!151 = metadata !{i32 786689, metadata !146, metadata !"nx", metadata !5, i32 16777359, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 143]
!152 = metadata !{i32 786689, metadata !146, metadata !"ny", metadata !5, i32 33554575, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 143]
!153 = metadata !{i32 786689, metadata !146, metadata !"nz", metadata !5, i32 50331791, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 143]
!154 = metadata !{i32 786689, metadata !146, metadata !"nnx", metadata !5, i32 67109008, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnx] [line 144]
!155 = metadata !{i32 786689, metadata !146, metadata !"nny", metadata !5, i32 83886224, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nny] [line 144]
!156 = metadata !{i32 786689, metadata !146, metadata !"nnz", metadata !5, i32 100663440, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnz] [line 144]
!157 = metadata !{i32 786688, metadata !146, metadata !"i", metadata !5, i32 146, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 146]
!158 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"do_poisson", metadata !"do_poisson", metadata !"", i32 159, metadata !159, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, i32, %struct.t_inputrec*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_commrec*, %struct.t_nrnb*, i32*, i32)* @do_poisson, null, null, metadata !297, i32 166} ; [ DW_TAG_subprogram ] [line 159] [def] [scope 166] [do_poisson]
!159 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!160 = metadata !{metadata !21, metadata !70, metadata !14, metadata !161, metadata !14, metadata !261, metadata !261, metadata !20, metadata !20, metadata !20, metadata !276, metadata !287, metadata !33, metadata !14}
!161 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !162} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_inputrec]
!162 = metadata !{i32 786454, metadata !1, null, metadata !"t_inputrec", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !163} ; [ DW_TAG_typedef ] [t_inputrec] [line 143, size 0, align 0, offset 0] [from ]
!163 = metadata !{i32 786451, metadata !164, null, metadata !"", i32 55, i64 4736, i64 64, i32 0, i32 0, null, metadata !165, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 4736, align 64, offset 0] [from ]
!164 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!165 = metadata !{metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !267, metadata !275}
!166 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"eI", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [eI] [line 56, size 32, align 32, offset 0] [from int]
!167 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nsteps", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nsteps] [line 57, size 32, align 32, offset 32] [from int]
!168 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"ns_type", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [ns_type] [line 58, size 32, align 32, offset 64] [from int]
!169 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nstlist", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nstlist] [line 59, size 32, align 32, offset 96] [from int]
!170 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"ndelta", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [ndelta] [line 60, size 32, align 32, offset 128] [from int]
!171 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"bDomDecomp", i32 61, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [bDomDecomp] [line 61, size 32, align 32, offset 160] [from int]
!172 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"decomp_dir", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [decomp_dir] [line 62, size 32, align 32, offset 192] [from int]
!173 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nstcomm", i32 63, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [nstcomm] [line 63, size 32, align 32, offset 224] [from int]
!174 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nstlog", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [nstlog] [line 65, size 32, align 32, offset 256] [from int]
!175 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nstxout", i32 66, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [nstxout] [line 66, size 32, align 32, offset 288] [from int]
!176 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nstvout", i32 67, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [nstvout] [line 67, size 32, align 32, offset 320] [from int]
!177 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nstfout", i32 68, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [nstfout] [line 68, size 32, align 32, offset 352] [from int]
!178 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nstenergy", i32 69, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [nstenergy] [line 69, size 32, align 32, offset 384] [from int]
!179 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nstxtcout", i32 70, i64 32, i64 32, i64 416, i32 0, metadata !14} ; [ DW_TAG_member ] [nstxtcout] [line 70, size 32, align 32, offset 416] [from int]
!180 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"init_t", i32 71, i64 32, i64 32, i64 448, i32 0, metadata !21} ; [ DW_TAG_member ] [init_t] [line 71, size 32, align 32, offset 448] [from real]
!181 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"delta_t", i32 72, i64 32, i64 32, i64 480, i32 0, metadata !21} ; [ DW_TAG_member ] [delta_t] [line 72, size 32, align 32, offset 480] [from real]
!182 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"xtcprec", i32 73, i64 32, i64 32, i64 512, i32 0, metadata !21} ; [ DW_TAG_member ] [xtcprec] [line 73, size 32, align 32, offset 512] [from real]
!183 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nkx", i32 74, i64 32, i64 32, i64 544, i32 0, metadata !14} ; [ DW_TAG_member ] [nkx] [line 74, size 32, align 32, offset 544] [from int]
!184 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nky", i32 74, i64 32, i64 32, i64 576, i32 0, metadata !14} ; [ DW_TAG_member ] [nky] [line 74, size 32, align 32, offset 576] [from int]
!185 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nkz", i32 74, i64 32, i64 32, i64 608, i32 0, metadata !14} ; [ DW_TAG_member ] [nkz] [line 74, size 32, align 32, offset 608] [from int]
!186 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"pme_order", i32 76, i64 32, i64 32, i64 640, i32 0, metadata !14} ; [ DW_TAG_member ] [pme_order] [line 76, size 32, align 32, offset 640] [from int]
!187 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"ewald_rtol", i32 77, i64 32, i64 32, i64 672, i32 0, metadata !21} ; [ DW_TAG_member ] [ewald_rtol] [line 77, size 32, align 32, offset 672] [from real]
!188 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"ewald_geometry", i32 79, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [ewald_geometry] [line 79, size 32, align 32, offset 704] [from int]
!189 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"epsilon_surface", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !14} ; [ DW_TAG_member ] [epsilon_surface] [line 80, size 32, align 32, offset 736] [from int]
!190 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"bOptFFT", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [bOptFFT] [line 81, size 32, align 32, offset 768] [from int]
!191 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"ePBC", i32 82, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [ePBC] [line 82, size 32, align 32, offset 800] [from int]
!192 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"bUncStart", i32 83, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [bUncStart] [line 83, size 32, align 32, offset 832] [from int]
!193 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"etc", i32 84, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [etc] [line 84, size 32, align 32, offset 864] [from int]
!194 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"epc", i32 85, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [epc] [line 85, size 32, align 32, offset 896] [from int]
!195 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"epct", i32 86, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [epct] [line 86, size 32, align 32, offset 928] [from int]
!196 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"tau_p", i32 87, i64 32, i64 32, i64 960, i32 0, metadata !21} ; [ DW_TAG_member ] [tau_p] [line 87, size 32, align 32, offset 960] [from real]
!197 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"ref_p", i32 88, i64 288, i64 32, i64 992, i32 0, metadata !198} ; [ DW_TAG_member ] [ref_p] [line 88, size 288, align 32, offset 992] [from tensor]
!198 = metadata !{i32 786454, metadata !164, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!199 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !21, metadata !200, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!200 = metadata !{metadata !144, metadata !144}
!201 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"compress", i32 89, i64 288, i64 32, i64 1280, i32 0, metadata !198} ; [ DW_TAG_member ] [compress] [line 89, size 288, align 32, offset 1280] [from tensor]
!202 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"bSimAnn", i32 90, i64 32, i64 32, i64 1568, i32 0, metadata !14} ; [ DW_TAG_member ] [bSimAnn] [line 90, size 32, align 32, offset 1568] [from int]
!203 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"zero_temp_time", i32 91, i64 32, i64 32, i64 1600, i32 0, metadata !21} ; [ DW_TAG_member ] [zero_temp_time] [line 91, size 32, align 32, offset 1600] [from real]
!204 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"rlist", i32 92, i64 32, i64 32, i64 1632, i32 0, metadata !21} ; [ DW_TAG_member ] [rlist] [line 92, size 32, align 32, offset 1632] [from real]
!205 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"coulombtype", i32 93, i64 32, i64 32, i64 1664, i32 0, metadata !14} ; [ DW_TAG_member ] [coulombtype] [line 93, size 32, align 32, offset 1664] [from int]
!206 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"rcoulomb_switch", i32 94, i64 32, i64 32, i64 1696, i32 0, metadata !21} ; [ DW_TAG_member ] [rcoulomb_switch] [line 94, size 32, align 32, offset 1696] [from real]
!207 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"rcoulomb", i32 95, i64 32, i64 32, i64 1728, i32 0, metadata !21} ; [ DW_TAG_member ] [rcoulomb] [line 95, size 32, align 32, offset 1728] [from real]
!208 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"vdwtype", i32 96, i64 32, i64 32, i64 1760, i32 0, metadata !14} ; [ DW_TAG_member ] [vdwtype] [line 96, size 32, align 32, offset 1760] [from int]
!209 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"rvdw_switch", i32 97, i64 32, i64 32, i64 1792, i32 0, metadata !21} ; [ DW_TAG_member ] [rvdw_switch] [line 97, size 32, align 32, offset 1792] [from real]
!210 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"rvdw", i32 98, i64 32, i64 32, i64 1824, i32 0, metadata !21} ; [ DW_TAG_member ] [rvdw] [line 98, size 32, align 32, offset 1824] [from real]
!211 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"epsilon_r", i32 99, i64 32, i64 32, i64 1856, i32 0, metadata !21} ; [ DW_TAG_member ] [epsilon_r] [line 99, size 32, align 32, offset 1856] [from real]
!212 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"eDispCorr", i32 100, i64 32, i64 32, i64 1888, i32 0, metadata !14} ; [ DW_TAG_member ] [eDispCorr] [line 100, size 32, align 32, offset 1888] [from int]
!213 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"shake_tol", i32 101, i64 32, i64 32, i64 1920, i32 0, metadata !21} ; [ DW_TAG_member ] [shake_tol] [line 101, size 32, align 32, offset 1920] [from real]
!214 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"fudgeQQ", i32 102, i64 32, i64 32, i64 1952, i32 0, metadata !21} ; [ DW_TAG_member ] [fudgeQQ] [line 102, size 32, align 32, offset 1952] [from real]
!215 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"efep", i32 103, i64 32, i64 32, i64 1984, i32 0, metadata !14} ; [ DW_TAG_member ] [efep] [line 103, size 32, align 32, offset 1984] [from int]
!216 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"init_lambda", i32 104, i64 32, i64 32, i64 2016, i32 0, metadata !21} ; [ DW_TAG_member ] [init_lambda] [line 104, size 32, align 32, offset 2016] [from real]
!217 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"delta_lambda", i32 105, i64 32, i64 32, i64 2048, i32 0, metadata !21} ; [ DW_TAG_member ] [delta_lambda] [line 105, size 32, align 32, offset 2048] [from real]
!218 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"sc_alpha", i32 106, i64 32, i64 32, i64 2080, i32 0, metadata !21} ; [ DW_TAG_member ] [sc_alpha] [line 106, size 32, align 32, offset 2080] [from real]
!219 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"sc_sigma", i32 107, i64 32, i64 32, i64 2112, i32 0, metadata !21} ; [ DW_TAG_member ] [sc_sigma] [line 107, size 32, align 32, offset 2112] [from real]
!220 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"dr_fc", i32 108, i64 32, i64 32, i64 2144, i32 0, metadata !21} ; [ DW_TAG_member ] [dr_fc] [line 108, size 32, align 32, offset 2144] [from real]
!221 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"eDisreWeighting", i32 109, i64 32, i64 32, i64 2176, i32 0, metadata !14} ; [ DW_TAG_member ] [eDisreWeighting] [line 109, size 32, align 32, offset 2176] [from int]
!222 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"bDisreMixed", i32 110, i64 32, i64 32, i64 2208, i32 0, metadata !14} ; [ DW_TAG_member ] [bDisreMixed] [line 110, size 32, align 32, offset 2208] [from int]
!223 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nstdisreout", i32 111, i64 32, i64 32, i64 2240, i32 0, metadata !14} ; [ DW_TAG_member ] [nstdisreout] [line 111, size 32, align 32, offset 2240] [from int]
!224 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"dr_tau", i32 112, i64 32, i64 32, i64 2272, i32 0, metadata !21} ; [ DW_TAG_member ] [dr_tau] [line 112, size 32, align 32, offset 2272] [from real]
!225 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"orires_fc", i32 113, i64 32, i64 32, i64 2304, i32 0, metadata !21} ; [ DW_TAG_member ] [orires_fc] [line 113, size 32, align 32, offset 2304] [from real]
!226 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"orires_tau", i32 114, i64 32, i64 32, i64 2336, i32 0, metadata !21} ; [ DW_TAG_member ] [orires_tau] [line 114, size 32, align 32, offset 2336] [from real]
!227 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nstorireout", i32 115, i64 32, i64 32, i64 2368, i32 0, metadata !14} ; [ DW_TAG_member ] [nstorireout] [line 115, size 32, align 32, offset 2368] [from int]
!228 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"em_stepsize", i32 116, i64 32, i64 32, i64 2400, i32 0, metadata !21} ; [ DW_TAG_member ] [em_stepsize] [line 116, size 32, align 32, offset 2400] [from real]
!229 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"em_tol", i32 117, i64 32, i64 32, i64 2432, i32 0, metadata !21} ; [ DW_TAG_member ] [em_tol] [line 117, size 32, align 32, offset 2432] [from real]
!230 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"niter", i32 118, i64 32, i64 32, i64 2464, i32 0, metadata !14} ; [ DW_TAG_member ] [niter] [line 118, size 32, align 32, offset 2464] [from int]
!231 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"fc_stepsize", i32 120, i64 32, i64 32, i64 2496, i32 0, metadata !14} ; [ DW_TAG_member ] [fc_stepsize] [line 120, size 32, align 32, offset 2496] [from int]
!232 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nstcgsteep", i32 122, i64 32, i64 32, i64 2528, i32 0, metadata !14} ; [ DW_TAG_member ] [nstcgsteep] [line 122, size 32, align 32, offset 2528] [from int]
!233 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"eConstrAlg", i32 124, i64 32, i64 32, i64 2560, i32 0, metadata !14} ; [ DW_TAG_member ] [eConstrAlg] [line 124, size 32, align 32, offset 2560] [from int]
!234 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"nProjOrder", i32 125, i64 32, i64 32, i64 2592, i32 0, metadata !14} ; [ DW_TAG_member ] [nProjOrder] [line 125, size 32, align 32, offset 2592] [from int]
!235 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"LincsWarnAngle", i32 126, i64 32, i64 32, i64 2624, i32 0, metadata !21} ; [ DW_TAG_member ] [LincsWarnAngle] [line 126, size 32, align 32, offset 2624] [from real]
!236 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"bShakeSOR", i32 127, i64 32, i64 32, i64 2656, i32 0, metadata !14} ; [ DW_TAG_member ] [bShakeSOR] [line 127, size 32, align 32, offset 2656] [from int]
!237 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"bd_temp", i32 128, i64 32, i64 32, i64 2688, i32 0, metadata !21} ; [ DW_TAG_member ] [bd_temp] [line 128, size 32, align 32, offset 2688] [from real]
!238 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"bd_fric", i32 129, i64 32, i64 32, i64 2720, i32 0, metadata !21} ; [ DW_TAG_member ] [bd_fric] [line 129, size 32, align 32, offset 2720] [from real]
!239 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"ld_seed", i32 130, i64 32, i64 32, i64 2752, i32 0, metadata !14} ; [ DW_TAG_member ] [ld_seed] [line 130, size 32, align 32, offset 2752] [from int]
!240 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"cos_accel", i32 131, i64 32, i64 32, i64 2784, i32 0, metadata !21} ; [ DW_TAG_member ] [cos_accel] [line 131, size 32, align 32, offset 2784] [from real]
!241 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"userint1", i32 132, i64 32, i64 32, i64 2816, i32 0, metadata !14} ; [ DW_TAG_member ] [userint1] [line 132, size 32, align 32, offset 2816] [from int]
!242 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"userint2", i32 133, i64 32, i64 32, i64 2848, i32 0, metadata !14} ; [ DW_TAG_member ] [userint2] [line 133, size 32, align 32, offset 2848] [from int]
!243 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"userint3", i32 134, i64 32, i64 32, i64 2880, i32 0, metadata !14} ; [ DW_TAG_member ] [userint3] [line 134, size 32, align 32, offset 2880] [from int]
!244 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"userint4", i32 135, i64 32, i64 32, i64 2912, i32 0, metadata !14} ; [ DW_TAG_member ] [userint4] [line 135, size 32, align 32, offset 2912] [from int]
!245 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"userreal1", i32 136, i64 32, i64 32, i64 2944, i32 0, metadata !21} ; [ DW_TAG_member ] [userreal1] [line 136, size 32, align 32, offset 2944] [from real]
!246 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"userreal2", i32 137, i64 32, i64 32, i64 2976, i32 0, metadata !21} ; [ DW_TAG_member ] [userreal2] [line 137, size 32, align 32, offset 2976] [from real]
!247 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"userreal3", i32 138, i64 32, i64 32, i64 3008, i32 0, metadata !21} ; [ DW_TAG_member ] [userreal3] [line 138, size 32, align 32, offset 3008] [from real]
!248 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"userreal4", i32 139, i64 32, i64 32, i64 3040, i32 0, metadata !21} ; [ DW_TAG_member ] [userreal4] [line 139, size 32, align 32, offset 3040] [from real]
!249 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"opts", i32 140, i64 512, i64 64, i64 3072, i32 0, metadata !250} ; [ DW_TAG_member ] [opts] [line 140, size 512, align 64, offset 3072] [from t_grpopts]
!250 = metadata !{i32 786454, metadata !164, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !251} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!251 = metadata !{i32 786451, metadata !164, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !252, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!252 = metadata !{metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !264, metadata !266}
!253 = metadata !{i32 786445, metadata !164, metadata !251, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!254 = metadata !{i32 786445, metadata !164, metadata !251, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!255 = metadata !{i32 786445, metadata !164, metadata !251, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!256 = metadata !{i32 786445, metadata !164, metadata !251, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!257 = metadata !{i32 786445, metadata !164, metadata !251, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!258 = metadata !{i32 786445, metadata !164, metadata !251, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!259 = metadata !{i32 786445, metadata !164, metadata !251, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !20} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!260 = metadata !{i32 786445, metadata !164, metadata !251, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !261} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!261 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !262} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!262 = metadata !{i32 786454, metadata !164, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !263} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!263 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !21, metadata !143, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!264 = metadata !{i32 786445, metadata !164, metadata !251, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !265} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!265 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!266 = metadata !{i32 786445, metadata !164, metadata !251, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !33} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!267 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"ex", i32 141, i64 576, i64 64, i64 3584, i32 0, metadata !268} ; [ DW_TAG_member ] [ex] [line 141, size 576, align 64, offset 3584] [from ]
!268 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !269, metadata !143, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from t_cosines]
!269 = metadata !{i32 786454, metadata !164, null, metadata !"t_cosines", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_typedef ] [t_cosines] [line 40, size 0, align 0, offset 0] [from ]
!270 = metadata !{i32 786451, metadata !164, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !271, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!271 = metadata !{metadata !272, metadata !273, metadata !274}
!272 = metadata !{i32 786445, metadata !164, metadata !270, metadata !"n", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [n] [line 37, size 32, align 32, offset 0] [from int]
!273 = metadata !{i32 786445, metadata !164, metadata !270, metadata !"a", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [a] [line 38, size 64, align 64, offset 64] [from ]
!274 = metadata !{i32 786445, metadata !164, metadata !270, metadata !"phi", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [phi] [line 39, size 64, align 64, offset 128] [from ]
!275 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"et", i32 142, i64 576, i64 64, i64 4160, i32 0, metadata !268} ; [ DW_TAG_member ] [et] [line 142, size 576, align 64, offset 4160] [from ]
!276 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !277} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!277 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !278} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!278 = metadata !{i32 786451, metadata !279, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !280, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!279 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!280 = metadata !{metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286}
!281 = metadata !{i32 786445, metadata !279, metadata !278, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!282 = metadata !{i32 786445, metadata !279, metadata !278, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!283 = metadata !{i32 786445, metadata !279, metadata !278, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!284 = metadata !{i32 786445, metadata !279, metadata !278, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!285 = metadata !{i32 786445, metadata !279, metadata !278, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!286 = metadata !{i32 786445, metadata !279, metadata !278, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!287 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !288} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nrnb]
!288 = metadata !{i32 786454, metadata !1, null, metadata !"t_nrnb", i32 95, i64 0, i64 0, i64 0, i32 0, metadata !289} ; [ DW_TAG_typedef ] [t_nrnb] [line 95, size 0, align 0, offset 0] [from ]
!289 = metadata !{i32 786451, metadata !290, null, metadata !"", i32 93, i64 8256, i64 64, i32 0, i32 0, null, metadata !291, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 93, size 8256, align 64, offset 0] [from ]
!290 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!291 = metadata !{metadata !292}
!292 = metadata !{i32 786445, metadata !290, metadata !289, metadata !"n", i32 94, i64 8256, i64 64, i64 0, i32 0, metadata !293} ; [ DW_TAG_member ] [n] [line 94, size 8256, align 64, offset 0] [from ]
!293 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8256, i64 64, i32 0, i32 0, metadata !294, metadata !295, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8256, align 64, offset 0] [from double]
!294 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!295 = metadata !{metadata !296}
!296 = metadata !{i32 786465, i64 0, i64 129}     ; [ DW_TAG_subrange_type ] [0, 128]
!297 = metadata !{metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !313, metadata !314}
!298 = metadata !{i32 786689, metadata !158, metadata !"log", metadata !5, i32 16777375, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 159]
!299 = metadata !{i32 786689, metadata !158, metadata !"bVerbose", metadata !5, i32 33554591, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 159]
!300 = metadata !{i32 786689, metadata !158, metadata !"ir", metadata !5, i32 50331808, metadata !161, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 160]
!301 = metadata !{i32 786689, metadata !158, metadata !"natoms", metadata !5, i32 67109024, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 160]
!302 = metadata !{i32 786689, metadata !158, metadata !"x", metadata !5, i32 83886241, metadata !261, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 161]
!303 = metadata !{i32 786689, metadata !158, metadata !"f", metadata !5, i32 100663457, metadata !261, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 161]
!304 = metadata !{i32 786689, metadata !158, metadata !"charge", metadata !5, i32 117440674, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 162]
!305 = metadata !{i32 786689, metadata !158, metadata !"box", metadata !5, i32 134217890, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 162]
!306 = metadata !{i32 786689, metadata !158, metadata !"phi", metadata !5, i32 150995107, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi] [line 163]
!307 = metadata !{i32 786689, metadata !158, metadata !"cr", metadata !5, i32 167772323, metadata !276, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 163]
!308 = metadata !{i32 786689, metadata !158, metadata !"nrnb", metadata !5, i32 184549540, metadata !287, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 164]
!309 = metadata !{i32 786689, metadata !158, metadata !"nit", metadata !5, i32 201326756, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nit] [line 164]
!310 = metadata !{i32 786689, metadata !158, metadata !"bOld", metadata !5, i32 218103973, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOld] [line 165]
!311 = metadata !{i32 786688, metadata !158, metadata !"tol", metadata !5, i32 173, metadata !312, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tol] [line 173]
!312 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!313 = metadata !{i32 786688, metadata !158, metadata !"m", metadata !5, i32 174, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 174]
!314 = metadata !{i32 786688, metadata !158, metadata !"ener", metadata !5, i32 175, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ener] [line 175]
!315 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"do_optimize_poisson", metadata !"do_optimize_poisson", metadata !"", i32 231, metadata !316, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, i32, %struct.t_inputrec*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_commrec*, %struct.t_nrnb*, [3 x float]*, float*, float*, i32)* @do_optimize_poisson, null, null, metadata !318, i32 239} ; [ DW_TAG_subprogram ] [line 231] [def] [scope 239] [do_optimize_poisson]
!316 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !317, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!317 = metadata !{metadata !21, metadata !70, metadata !14, metadata !161, metadata !14, metadata !261, metadata !261, metadata !20, metadata !20, metadata !20, metadata !276, metadata !287, metadata !261, metadata !20, metadata !20, metadata !14}
!318 = metadata !{metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !351}
!319 = metadata !{i32 786689, metadata !315, metadata !"log", metadata !5, i32 16777447, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 231]
!320 = metadata !{i32 786689, metadata !315, metadata !"bVerbose", metadata !5, i32 33554663, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 231]
!321 = metadata !{i32 786689, metadata !315, metadata !"ir", metadata !5, i32 50331880, metadata !161, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 232]
!322 = metadata !{i32 786689, metadata !315, metadata !"natoms", metadata !5, i32 67109096, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 232]
!323 = metadata !{i32 786689, metadata !315, metadata !"x", metadata !5, i32 83886313, metadata !261, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 233]
!324 = metadata !{i32 786689, metadata !315, metadata !"f", metadata !5, i32 100663529, metadata !261, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 233]
!325 = metadata !{i32 786689, metadata !315, metadata !"charge", metadata !5, i32 117440746, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 234]
!326 = metadata !{i32 786689, metadata !315, metadata !"box", metadata !5, i32 134217962, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 234]
!327 = metadata !{i32 786689, metadata !315, metadata !"phi", metadata !5, i32 150995179, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi] [line 235]
!328 = metadata !{i32 786689, metadata !315, metadata !"cr", metadata !5, i32 167772395, metadata !276, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 235]
!329 = metadata !{i32 786689, metadata !315, metadata !"nrnb", metadata !5, i32 184549612, metadata !287, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 236]
!330 = metadata !{i32 786689, metadata !315, metadata !"f_ref", metadata !5, i32 201326828, metadata !261, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f_ref] [line 236]
!331 = metadata !{i32 786689, metadata !315, metadata !"phi_ref", metadata !5, i32 218104045, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi_ref] [line 237]
!332 = metadata !{i32 786689, metadata !315, metadata !"beta", metadata !5, i32 234881261, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [beta] [line 237]
!333 = metadata !{i32 786689, metadata !315, metadata !"bOld", metadata !5, i32 251658478, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOld] [line 238]
!334 = metadata !{i32 786688, metadata !315, metadata !"rmsf", metadata !5, i32 249, metadata !335, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rmsf] [line 249]
!335 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 296352, i64 32, i32 0, i32 0, metadata !21, metadata !336, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 296352, align 32, offset 0] [from real]
!336 = metadata !{metadata !337, metadata !337, metadata !337}
!337 = metadata !{i32 786465, i64 0, i64 21}      ; [ DW_TAG_subrange_type ] [0, 20]
!338 = metadata !{i32 786688, metadata !315, metadata !"rmsf_min", metadata !5, i32 249, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rmsf_min] [line 249]
!339 = metadata !{i32 786688, metadata !315, metadata !"rrmsf", metadata !5, i32 249, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rrmsf] [line 249]
!340 = metadata !{i32 786688, metadata !315, metadata !"minimum", metadata !5, i32 250, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minimum] [line 250]
!341 = metadata !{i32 786688, metadata !315, metadata !"tol", metadata !5, i32 251, metadata !312, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tol] [line 251]
!342 = metadata !{i32 786688, metadata !315, metadata !"i", metadata !5, i32 252, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 252]
!343 = metadata !{i32 786688, metadata !315, metadata !"m", metadata !5, i32 252, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 252]
!344 = metadata !{i32 786688, metadata !315, metadata !"bx", metadata !5, i32 252, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bx] [line 252]
!345 = metadata !{i32 786688, metadata !315, metadata !"by", metadata !5, i32 252, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [by] [line 252]
!346 = metadata !{i32 786688, metadata !315, metadata !"bz", metadata !5, i32 252, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bz] [line 252]
!347 = metadata !{i32 786688, metadata !315, metadata !"buf", metadata !5, i32 253, metadata !348, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 253]
!348 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !78, metadata !349, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!349 = metadata !{metadata !350}
!350 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!351 = metadata !{i32 786688, metadata !315, metadata !"ener", metadata !5, i32 254, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ener] [line 254]
!352 = metadata !{i32 786478, metadata !353, metadata !354, metadata !"clear_rvec", metadata !"clear_rvec", metadata !"", i32 316, metadata !355, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !357, i32 317} ; [ DW_TAG_subprogram ] [line 316] [local] [def] [scope 317] [clear_rvec]
!353 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!354 = metadata !{i32 786473, metadata !353}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!355 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !356, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!356 = metadata !{null, metadata !20}
!357 = metadata !{metadata !358}
!358 = metadata !{i32 786689, metadata !352, metadata !"a", metadata !354, i32 16777532, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 316]
!359 = metadata !{metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375}
!360 = metadata !{i32 786484, i32 0, metadata !158, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !5, i32 167, metadata !14, i32 1, i32 1, null, null}
!361 = metadata !{i32 786484, i32 0, metadata !158, metadata !"pot", metadata !"pot", metadata !"", metadata !5, i32 168, metadata !8, i32 1, i32 1, %struct.t_PSgrid** @do_poisson.pot, null} ; [ DW_TAG_variable ] [pot] [line 168] [local] [def]
!362 = metadata !{i32 786484, i32 0, metadata !158, metadata !"rho", metadata !"rho", metadata !"", metadata !5, i32 168, metadata !8, i32 1, i32 1, %struct.t_PSgrid** @do_poisson.rho, null} ; [ DW_TAG_variable ] [rho] [line 168] [local] [def]
!363 = metadata !{i32 786484, i32 0, metadata !158, metadata !"maxnit", metadata !"maxnit", metadata !"", metadata !5, i32 169, metadata !14, i32 1, i32 1, i32* @do_poisson.maxnit, null} ; [ DW_TAG_variable ] [maxnit] [line 169] [local] [def]
!364 = metadata !{i32 786484, i32 0, metadata !158, metadata !"r1", metadata !"r1", metadata !"", metadata !5, i32 170, metadata !21, i32 1, i32 1, float* @do_poisson.r1, null} ; [ DW_TAG_variable ] [r1] [line 170] [local] [def]
!365 = metadata !{i32 786484, i32 0, metadata !158, metadata !"rc", metadata !"rc", metadata !"", metadata !5, i32 170, metadata !21, i32 1, i32 1, float* @do_poisson.rc, null} ; [ DW_TAG_variable ] [rc] [line 170] [local] [def]
!366 = metadata !{i32 786484, i32 0, metadata !158, metadata !"beta", metadata !"beta", metadata !"", metadata !5, i32 171, metadata !262, i32 1, i32 1, [3 x float]* @do_poisson.beta, null} ; [ DW_TAG_variable ] [beta] [line 171] [local] [def]
!367 = metadata !{i32 786484, i32 0, metadata !5, metadata !"tol", metadata !"tol", metadata !"tol", metadata !5, i32 173, metadata !312, i32 1, i32 1, float 0x3F847AE140000000, null} ; [ DW_TAG_variable ] [tol] [line 173] [local] [def]
!368 = metadata !{i32 786484, i32 0, metadata !315, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !5, i32 243, metadata !14, i32 1, i32 1, null, null}
!369 = metadata !{i32 786484, i32 0, metadata !315, metadata !"bSecond", metadata !"bSecond", metadata !"", metadata !5, i32 244, metadata !14, i32 1, i32 1, null, null}
!370 = metadata !{i32 786484, i32 0, metadata !315, metadata !"pot", metadata !"pot", metadata !"", metadata !5, i32 245, metadata !8, i32 1, i32 1, %struct.t_PSgrid** @do_optimize_poisson.pot, null} ; [ DW_TAG_variable ] [pot] [line 245] [local] [def]
!371 = metadata !{i32 786484, i32 0, metadata !315, metadata !"rho", metadata !"rho", metadata !"", metadata !5, i32 245, metadata !8, i32 1, i32 1, %struct.t_PSgrid** @do_optimize_poisson.rho, null} ; [ DW_TAG_variable ] [rho] [line 245] [local] [def]
!372 = metadata !{i32 786484, i32 0, metadata !315, metadata !"maxnit", metadata !"maxnit", metadata !"", metadata !5, i32 246, metadata !14, i32 1, i32 1, i32* @do_optimize_poisson.maxnit, null} ; [ DW_TAG_variable ] [maxnit] [line 246] [local] [def]
!373 = metadata !{i32 786484, i32 0, metadata !315, metadata !"r1", metadata !"r1", metadata !"", metadata !5, i32 247, metadata !21, i32 1, i32 1, float* @do_optimize_poisson.r1, null} ; [ DW_TAG_variable ] [r1] [line 247] [local] [def]
!374 = metadata !{i32 786484, i32 0, metadata !315, metadata !"rc", metadata !"rc", metadata !"", metadata !5, i32 247, metadata !21, i32 1, i32 1, float* @do_optimize_poisson.rc, null} ; [ DW_TAG_variable ] [rc] [line 247] [local] [def]
!375 = metadata !{i32 786484, i32 0, metadata !5, metadata !"tol", metadata !"tol", metadata !"tol", metadata !5, i32 251, metadata !312, i32 1, i32 1, float 0x3F847AE140000000, null} ; [ DW_TAG_variable ] [tol] [line 251] [local] [def]
!376 = metadata !{i32 44, i32 0, metadata !4, null}
!377 = metadata !{i32 49, i32 0, metadata !4, null}
!378 = metadata !{i32 50, i32 0, metadata !4, null}
!379 = metadata !{metadata !"int", metadata !380}
!380 = metadata !{metadata !"omnipotent char", metadata !381}
!381 = metadata !{metadata !"Simple C/C++ TBAA"}
!382 = metadata !{i32 51, i32 0, metadata !4, null}
!383 = metadata !{i32 52, i32 0, metadata !4, null}
!384 = metadata !{i32 53, i32 0, metadata !4, null}
!385 = metadata !{metadata !"any pointer", metadata !380}
!386 = metadata !{i32 54, i32 0, metadata !387, null}
!387 = metadata !{i32 786443, metadata !1, metadata !4, i32 54, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!388 = metadata !{i32 56, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !390, i32 56, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!390 = metadata !{i32 786443, metadata !1, metadata !387, i32 54, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!391 = metadata !{i32 55, i32 0, metadata !390, null}
!392 = metadata !{i32 57, i32 0, metadata !389, null}
!393 = metadata !{i32 59, i32 0, metadata !4, null}
!394 = metadata !{i32 62, i32 0, metadata !30, null}
!395 = metadata !{i32 64, i32 0, metadata !30, null}
!396 = metadata !{i32 65, i32 0, metadata !30, null}
!397 = metadata !{i32 66, i32 0, metadata !30, null}
!398 = metadata !{i32 67, i32 0, metadata !30, null}
!399 = metadata !{i32 68, i32 0, metadata !30, null}
!400 = metadata !{i32 70, i32 0, metadata !41, null}
!401 = metadata !{i32 786689, metadata !30, metadata !"grid", metadata !5, i32 16777278, metadata !8, i32 0, metadata !402} ; [ DW_TAG_arg_variable ] [grid] [line 62]
!402 = metadata !{i32 76, i32 0, metadata !41, null}
!403 = metadata !{i32 62, i32 0, metadata !30, metadata !402}
!404 = metadata !{i32 67, i32 0, metadata !30, metadata !402}
!405 = metadata !{i32 786689, metadata !30, metadata !"ptr", metadata !5, i32 83886142, metadata !34, i32 0, metadata !402} ; [ DW_TAG_arg_variable ] [ptr] [line 62]
!406 = metadata !{i32 82, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !408, i32 81, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!408 = metadata !{i32 786443, metadata !1, metadata !409, i32 80, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!409 = metadata !{i32 786443, metadata !1, metadata !41, i32 79, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!410 = metadata !{i32 786689, metadata !30, metadata !"grid", metadata !5, i32 16777278, metadata !8, i32 0, metadata !411} ; [ DW_TAG_arg_variable ] [grid] [line 62]
!411 = metadata !{i32 77, i32 0, metadata !41, null}
!412 = metadata !{i32 62, i32 0, metadata !30, metadata !411}
!413 = metadata !{i32 64, i32 0, metadata !30, metadata !411}
!414 = metadata !{i32 786689, metadata !30, metadata !"nx", metadata !5, i32 33554494, metadata !33, i32 0, metadata !411} ; [ DW_TAG_arg_variable ] [nx] [line 62]
!415 = metadata !{i32 786689, metadata !30, metadata !"nx", metadata !5, i32 33554494, metadata !33, i32 0, metadata !402} ; [ DW_TAG_arg_variable ] [nx] [line 62]
!416 = metadata !{i32 79, i32 0, metadata !409, null}
!417 = metadata !{i32 65, i32 0, metadata !30, metadata !411}
!418 = metadata !{i32 786689, metadata !30, metadata !"ny", metadata !5, i32 50331710, metadata !33, i32 0, metadata !411} ; [ DW_TAG_arg_variable ] [ny] [line 62]
!419 = metadata !{i32 786689, metadata !30, metadata !"ny", metadata !5, i32 50331710, metadata !33, i32 0, metadata !402} ; [ DW_TAG_arg_variable ] [ny] [line 62]
!420 = metadata !{i32 80, i32 0, metadata !408, null}
!421 = metadata !{i32 66, i32 0, metadata !30, metadata !411}
!422 = metadata !{i32 786689, metadata !30, metadata !"nz", metadata !5, i32 67108926, metadata !33, i32 0, metadata !411} ; [ DW_TAG_arg_variable ] [nz] [line 62]
!423 = metadata !{i32 786689, metadata !30, metadata !"nz", metadata !5, i32 67108926, metadata !33, i32 0, metadata !402} ; [ DW_TAG_arg_variable ] [nz] [line 62]
!424 = metadata !{i32 81, i32 0, metadata !407, null}
!425 = metadata !{i32 67, i32 0, metadata !30, metadata !411}
!426 = metadata !{i32 786689, metadata !30, metadata !"ptr", metadata !5, i32 83886142, metadata !34, i32 0, metadata !411} ; [ DW_TAG_arg_variable ] [ptr] [line 62]
!427 = metadata !{metadata !"float", metadata !380}
!428 = metadata !{i32 83, i32 0, metadata !41, null}
!429 = metadata !{i32 85, i32 0, metadata !55, null}
!430 = metadata !{i32 786689, metadata !30, metadata !"grid", metadata !5, i32 16777278, metadata !8, i32 0, metadata !431} ; [ DW_TAG_arg_variable ] [grid] [line 62]
!431 = metadata !{i32 91, i32 0, metadata !55, null}
!432 = metadata !{i32 62, i32 0, metadata !30, metadata !431}
!433 = metadata !{i32 64, i32 0, metadata !30, metadata !431}
!434 = metadata !{i32 786689, metadata !30, metadata !"nx", metadata !5, i32 33554494, metadata !33, i32 0, metadata !431} ; [ DW_TAG_arg_variable ] [nx] [line 62]
!435 = metadata !{i32 93, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !55, i32 93, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!437 = metadata !{i32 65, i32 0, metadata !30, metadata !431}
!438 = metadata !{i32 786689, metadata !30, metadata !"ny", metadata !5, i32 50331710, metadata !33, i32 0, metadata !431} ; [ DW_TAG_arg_variable ] [ny] [line 62]
!439 = metadata !{i32 94, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !1, metadata !436, i32 94, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!441 = metadata !{i32 66, i32 0, metadata !30, metadata !431}
!442 = metadata !{i32 786689, metadata !30, metadata !"nz", metadata !5, i32 67108926, metadata !33, i32 0, metadata !431} ; [ DW_TAG_arg_variable ] [nz] [line 62]
!443 = metadata !{i32 95, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !440, i32 95, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!445 = metadata !{i32 67, i32 0, metadata !30, metadata !431}
!446 = metadata !{i32 786689, metadata !30, metadata !"ptr", metadata !5, i32 83886142, metadata !34, i32 0, metadata !431} ; [ DW_TAG_arg_variable ] [ptr] [line 62]
!447 = metadata !{i32 96, i32 0, metadata !444, null}
!448 = metadata !{i32 97, i32 0, metadata !55, null}
!449 = metadata !{i32 99, i32 0, metadata !67, null}
!450 = metadata !{float 0.000000e+00}
!451 = metadata !{i32 104, i32 0, metadata !67, null}
!452 = metadata !{[3 x i32]* undef}
!453 = metadata !{i32 105, i32 0, metadata !67, null}
!454 = metadata !{i32 786689, metadata !30, metadata !"grid", metadata !5, i32 16777278, metadata !8, i32 0, metadata !455} ; [ DW_TAG_arg_variable ] [grid] [line 62]
!455 = metadata !{i32 107, i32 0, metadata !67, null}
!456 = metadata !{i32 62, i32 0, metadata !30, metadata !455}
!457 = metadata !{i32 64, i32 0, metadata !30, metadata !455}
!458 = metadata !{i32 786689, metadata !30, metadata !"nx", metadata !5, i32 33554494, metadata !33, i32 0, metadata !455} ; [ DW_TAG_arg_variable ] [nx] [line 62]
!459 = metadata !{i32 113, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !461, i32 113, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!461 = metadata !{i32 786443, metadata !1, metadata !67, i32 110, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!462 = metadata !{i32 131, i32 0, metadata !67, null}
!463 = metadata !{i32 132, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !1, metadata !67, i32 132, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!465 = metadata !{i32 65, i32 0, metadata !30, metadata !455}
!466 = metadata !{i32 786689, metadata !30, metadata !"ny", metadata !5, i32 50331710, metadata !33, i32 0, metadata !455} ; [ DW_TAG_arg_variable ] [ny] [line 62]
!467 = metadata !{i32 114, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !460, i32 114, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!469 = metadata !{i32 133, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !464, i32 133, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!471 = metadata !{i32 66, i32 0, metadata !30, metadata !455}
!472 = metadata !{i32 786689, metadata !30, metadata !"nz", metadata !5, i32 67108926, metadata !33, i32 0, metadata !455} ; [ DW_TAG_arg_variable ] [nz] [line 62]
!473 = metadata !{i32 115, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !468, i32 115, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!475 = metadata !{i32 134, i32 0, metadata !476, null}
!476 = metadata !{i32 786443, metadata !1, metadata !470, i32 134, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!477 = metadata !{i32 67, i32 0, metadata !30, metadata !455}
!478 = metadata !{i32 786689, metadata !30, metadata !"ptr", metadata !5, i32 83886142, metadata !34, i32 0, metadata !455} ; [ DW_TAG_arg_variable ] [ptr] [line 62]
!479 = metadata !{i32 112, i32 0, metadata !461, null}
!480 = metadata !{i32 116, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !474, i32 115, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!482 = metadata !{i32 135, i32 0, metadata !476, null}
!483 = metadata !{i32 109, i32 0, metadata !67, null}
!484 = metadata !{i32 110, i32 0, metadata !67, null}
!485 = metadata !{i32 111, i32 0, metadata !461, null}
!486 = metadata !{i32 117, i32 0, metadata !481, null}
!487 = metadata !{i32 123, i32 0, metadata !481, null}
!488 = metadata !{i32 124, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !481, i32 123, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!490 = metadata !{i32 128, i32 0, metadata !489, null}
!491 = metadata !{i32 136, i32 0, metadata !67, null}
!492 = metadata !{i32 137, i32 0, metadata !67, null}
!493 = metadata !{i32 141, i32 0, metadata !67, null}
!494 = metadata !{i32 143, i32 0, metadata !146, null}
!495 = metadata !{i32 144, i32 0, metadata !146, null}
!496 = metadata !{i32 148, i32 0, metadata !146, null}
!497 = metadata !{i32 149, i32 0, metadata !146, null}
!498 = metadata !{i32 150, i32 0, metadata !146, null}
!499 = metadata !{i32 151, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !146, i32 151, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!501 = metadata !{i32 152, i32 0, metadata !500, null}
!502 = metadata !{i32 153, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !146, i32 153, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!504 = metadata !{i32 154, i32 0, metadata !503, null}
!505 = metadata !{i32 155, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !146, i32 155, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!507 = metadata !{i32 156, i32 0, metadata !506, null}
!508 = metadata !{i32 157, i32 0, metadata !146, null}
!509 = metadata !{i32 159, i32 0, metadata !158, null}
!510 = metadata !{i32 160, i32 0, metadata !158, null}
!511 = metadata !{i32 161, i32 0, metadata !158, null}
!512 = metadata !{i32 162, i32 0, metadata !158, null}
!513 = metadata !{i32 163, i32 0, metadata !158, null}
!514 = metadata !{i32 164, i32 0, metadata !158, null}
!515 = metadata !{i32 165, i32 0, metadata !158, null}
!516 = metadata !{float 0x3F847AE140000000}
!517 = metadata !{i32 173, i32 0, metadata !158, null}
!518 = metadata !{i32 177, i32 0, metadata !158, null}
!519 = metadata !{i32 179, i32 0, metadata !158, null}
!520 = metadata !{i32 199, i32 0, metadata !158, null}
!521 = metadata !{i32 180, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !158, i32 179, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!523 = metadata !{i32 182, i32 0, metadata !522, null}
!524 = metadata !{i32 183, i32 0, metadata !522, null}
!525 = metadata !{i32 185, i32 0, metadata !522, null}
!526 = metadata !{i32 186, i32 0, metadata !522, null}
!527 = metadata !{i32 188, i32 0, metadata !522, null}
!528 = metadata !{i32 189, i32 0, metadata !522, null}
!529 = metadata !{i32 191, i32 0, metadata !522, null}
!530 = metadata !{i32 192, i32 0, metadata !522, null}
!531 = metadata !{i32 193, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !1, metadata !522, i32 193, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!533 = metadata !{i32 194, i32 0, metadata !532, null}
!534 = metadata !{i32 200, i32 0, metadata !158, null}
!535 = metadata !{i32 207, i32 0, metadata !158, null}
!536 = metadata !{i32 213, i32 0, metadata !158, null}
!537 = metadata !{i32 214, i32 0, metadata !158, null}
!538 = metadata !{i32 217, i32 0, metadata !158, null}
!539 = metadata !{i32 219, i32 0, metadata !158, null}
!540 = metadata !{i32 224, i32 0, metadata !158, null}
!541 = metadata !{i32 228, i32 0, metadata !158, null}
!542 = metadata !{i32 231, i32 0, metadata !315, null}
!543 = metadata !{i32 232, i32 0, metadata !315, null}
!544 = metadata !{i32 233, i32 0, metadata !315, null}
!545 = metadata !{i32 234, i32 0, metadata !315, null}
!546 = metadata !{i32 235, i32 0, metadata !315, null}
!547 = metadata !{i32 236, i32 0, metadata !315, null}
!548 = metadata !{i32 237, i32 0, metadata !315, null}
!549 = metadata !{i32 238, i32 0, metadata !315, null}
!550 = metadata !{i32 249, i32 0, metadata !315, null}
!551 = metadata !{i32 250, i32 0, metadata !315, null}
!552 = metadata !{i32 251, i32 0, metadata !315, null}
!553 = metadata !{i32 253, i32 0, metadata !315, null}
!554 = metadata !{i32 256, i32 0, metadata !315, null}
!555 = metadata !{i32 258, i32 0, metadata !315, null}
!556 = metadata !{i32 279, i32 0, metadata !315, null}
!557 = metadata !{i32 259, i32 0, metadata !558, null}
!558 = metadata !{i32 786443, metadata !1, metadata !315, i32 258, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!559 = metadata !{i32 261, i32 0, metadata !558, null}
!560 = metadata !{i32 262, i32 0, metadata !558, null}
!561 = metadata !{i32 264, i32 0, metadata !558, null}
!562 = metadata !{i32 265, i32 0, metadata !558, null}
!563 = metadata !{i32 267, i32 0, metadata !558, null}
!564 = metadata !{i32 268, i32 0, metadata !558, null}
!565 = metadata !{i32 270, i32 0, metadata !558, null}
!566 = metadata !{i32 271, i32 0, metadata !558, null}
!567 = metadata !{i32 272, i32 0, metadata !568, null}
!568 = metadata !{i32 786443, metadata !1, metadata !558, i32 272, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!569 = metadata !{i32 273, i32 0, metadata !568, null}
!570 = metadata !{i32 276, i32 0, metadata !558, null}
!571 = metadata !{i32 280, i32 0, metadata !315, null}
!572 = metadata !{i32 283, i32 0, metadata !315, null}
!573 = metadata !{i32 285, i32 0, metadata !315, null}
!574 = metadata !{i32 288, i32 0, metadata !315, null}
!575 = metadata !{i32 290, i32 0, metadata !315, null}
!576 = metadata !{i32 296, i32 0, metadata !577, null}
!577 = metadata !{i32 786443, metadata !1, metadata !315, i32 296, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!578 = metadata !{i32 299, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !580, i32 298, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!580 = metadata !{i32 786443, metadata !1, metadata !581, i32 298, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!581 = metadata !{i32 786443, metadata !1, metadata !577, i32 296, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!582 = metadata !{i32 301, i32 0, metadata !583, null}
!583 = metadata !{i32 786443, metadata !1, metadata !584, i32 300, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!584 = metadata !{i32 786443, metadata !1, metadata !579, i32 300, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!585 = metadata !{i32 303, i32 0, metadata !586, null}
!586 = metadata !{i32 786443, metadata !1, metadata !583, i32 303, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!587 = metadata !{i32 297, i32 0, metadata !581, null}
!588 = metadata !{i32 298, i32 0, metadata !580, null}
!589 = metadata !{i32 300, i32 0, metadata !584, null}
!590 = metadata !{i32 304, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !586, i32 303, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!592 = metadata !{i32 305, i32 0, metadata !591, null}
!593 = metadata !{i32 786689, metadata !352, metadata !"a", metadata !354, i32 16777532, metadata !20, i32 0, metadata !592} ; [ DW_TAG_arg_variable ] [a] [line 316]
!594 = metadata !{i32 316, i32 0, metadata !352, metadata !592}
!595 = metadata !{i32 321, i32 0, metadata !596, metadata !592}
!596 = metadata !{i32 786443, metadata !353, metadata !352} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!597 = metadata !{i32 322, i32 0, metadata !596, metadata !592}
!598 = metadata !{i32 323, i32 0, metadata !596, metadata !592}
!599 = metadata !{i32 307, i32 0, metadata !583, null}
!600 = metadata !{i32 309, i32 0, metadata !583, null}
!601 = metadata !{i32 311, i32 0, metadata !583, null}
!602 = metadata !{i32 316, i32 0, metadata !315, null}
!603 = metadata !{i32 318, i32 0, metadata !604, null}
!604 = metadata !{i32 786443, metadata !1, metadata !315, i32 318, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!605 = metadata !{i32 319, i32 0, metadata !606, null}
!606 = metadata !{i32 786443, metadata !1, metadata !604, i32 318, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!607 = metadata !{i32 320, i32 0, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !606, i32 320, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!609 = metadata !{i32 321, i32 0, metadata !610, null}
!610 = metadata !{i32 786443, metadata !1, metadata !608, i32 320, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!611 = metadata !{i32 322, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !1, metadata !610, i32 322, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!613 = metadata !{i32 323, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !612, i32 322, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!615 = metadata !{i32 324, i32 0, metadata !614, null}
!616 = metadata !{i32 326, i32 0, metadata !614, null}
!617 = metadata !{i32 328, i32 0, metadata !614, null}
!618 = metadata !{i32 329, i32 0, metadata !619, null}
!619 = metadata !{i32 786443, metadata !1, metadata !614, i32 328, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!620 = metadata !{i32 333, i32 0, metadata !619, null}
!621 = metadata !{i32 337, i32 0, metadata !315, null}
!622 = metadata !{i32 338, i32 0, metadata !315, null}
!623 = metadata !{i32 339, i32 0, metadata !315, null}
!624 = metadata !{i32 340, i32 0, metadata !315, null}
!625 = metadata !{i32 343, i32 0, metadata !626, null}
!626 = metadata !{i32 786443, metadata !1, metadata !315, i32 343, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!627 = metadata !{i32 344, i32 0, metadata !628, null}
!628 = metadata !{i32 786443, metadata !1, metadata !626, i32 343, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c]
!629 = metadata !{i32 345, i32 0, metadata !628, null}
!630 = metadata !{i32 786689, metadata !352, metadata !"a", metadata !354, i32 16777532, metadata !20, i32 0, metadata !629} ; [ DW_TAG_arg_variable ] [a] [line 316]
!631 = metadata !{i32 316, i32 0, metadata !352, metadata !629}
!632 = metadata !{i32 321, i32 0, metadata !596, metadata !629}
!633 = metadata !{i32 322, i32 0, metadata !596, metadata !629}
!634 = metadata !{i32 323, i32 0, metadata !596, metadata !629}
!635 = metadata !{i32 347, i32 0, metadata !315, null}
!636 = metadata !{i32 350, i32 0, metadata !315, null}
