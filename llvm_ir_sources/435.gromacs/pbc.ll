; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [119 x i8] c"Only triclinic boxes with the first vector parallel to the x-axis and the second vector in the xy-plane are supported.\00", align 1
@.str1 = private unnamed_addr constant [29 x i8] c"Triclinic box is too skewed.\00", align 1
@init_pbc.nalloc = internal unnamed_addr global i32 0, align 4
@stderr = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [13 x i8] c"Warning: %s\0A\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"         Box\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"         Can not fix pbc.\0A\00", align 1
@bSupported = internal unnamed_addr global i1 false
@gl_fbox = internal global [3 x float] zeroinitializer, align 4
@gl_hbox = internal unnamed_addr global [3 x float] zeroinitializer, align 4
@gl_mhbox = internal unnamed_addr global [3 x float] zeroinitializer, align 4
@bTriclinic = internal unnamed_addr global i32 0, align 4
@gl_box = internal global [3 x [3 x float]] zeroinitializer, align 16
@sure_dist2 = internal unnamed_addr global float 0.000000e+00, align 4
@ntric_vec = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [9 x i8] c"tric_vec\00", align 1
@.str6 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c\00", align 1
@tric_vec = internal unnamed_addr global [3 x float]* null, align 8
@bInit = internal unnamed_addr global i1 false
@.str7 = private unnamed_addr constant [30 x i8] c"pbc_dx called before init_pbc\00", align 1
@stdlog = external global %struct._IO_FILE*
@.str8 = private unnamed_addr constant [15 x i8] c"n=%d, test=%d\0A\00", align 1
@compact_unitcell_edges.edge = internal global [72 x i32] zeroinitializer, align 16
@compact_unitcell_edges.hexcon = internal unnamed_addr constant [24 x i32] [i32 0, i32 9, i32 1, i32 19, i32 2, i32 15, i32 3, i32 21, i32 4, i32 17, i32 5, i32 11, i32 6, i32 23, i32 7, i32 13, i32 8, i32 20, i32 10, i32 18, i32 12, i32 16, i32 14, i32 22], align 16

; Function Attrs: nounwind optsize readonly uwtable
define i8* @check_box([3 x float]* nocapture %box) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !17), !dbg !355
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !356
  %0 = load float* %arrayidx1, align 4, !dbg !356, !tbaa !357
  %fabsf = tail call float @fabsf(float %0) #6, !dbg !356
  %1 = fpext float %fabsf to double, !dbg !356
  %cmp = fcmp ogt double %1, 1.200000e-38, !dbg !356
  br i1 %cmp, label %if.end49, label %lor.lhs.false, !dbg !356

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !356
  %2 = load float* %arrayidx4, align 4, !dbg !356, !tbaa !357
  %fabsf58 = tail call float @fabsf(float %2) #6, !dbg !356
  %3 = fpext float %fabsf58 to double, !dbg !356
  %cmp7 = fcmp ogt double %3, 1.200000e-38, !dbg !356
  br i1 %cmp7, label %if.end49, label %lor.lhs.false9, !dbg !356

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %arrayidx11 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !356
  %4 = load float* %arrayidx11, align 4, !dbg !356, !tbaa !357
  %fabsf59 = tail call float @fabsf(float %4) #6, !dbg !356
  %5 = fpext float %fabsf59 to double, !dbg !356
  %cmp14 = fcmp ogt double %5, 1.200000e-38, !dbg !356
  br i1 %cmp14, label %if.end49, label %if.else, !dbg !356

if.else:                                          ; preds = %lor.lhs.false9
  %arrayidx17 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !360
  %6 = load float* %arrayidx17, align 4, !dbg !360, !tbaa !357
  %fabsf60 = tail call float @fabsf(float %6) #6, !dbg !360
  %7 = fpext float %fabsf60 to double, !dbg !360
  %arrayidx21 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !360
  %8 = load float* %arrayidx21, align 4, !dbg !360, !tbaa !357
  %conv22 = fpext float %8 to double, !dbg !360
  %mul = fmul double %conv22, 5.001000e-01, !dbg !360
  %cmp23 = fcmp ogt double %7, %mul, !dbg !360
  br i1 %cmp23, label %if.end49, label %lor.lhs.false25, !dbg !360

lor.lhs.false25:                                  ; preds = %if.else
  %arrayidx27 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !361
  %9 = load float* %arrayidx27, align 4, !dbg !361, !tbaa !357
  %fabsf61 = tail call float @fabsf(float %9) #6, !dbg !361
  %10 = fpext float %fabsf61 to double, !dbg !361
  %cmp34 = fcmp ogt double %10, %mul, !dbg !361
  br i1 %cmp34, label %if.end49, label %lor.lhs.false36, !dbg !361

lor.lhs.false36:                                  ; preds = %lor.lhs.false25
  %arrayidx38 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !362
  %11 = load float* %arrayidx38, align 4, !dbg !362, !tbaa !357
  %fabsf62 = tail call float @fabsf(float %11) #6, !dbg !362
  %12 = fpext float %fabsf62 to double, !dbg !362
  %arrayidx42 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !362
  %13 = load float* %arrayidx42, align 4, !dbg !362, !tbaa !357
  %conv43 = fpext float %13 to double, !dbg !362
  %mul44 = fmul double %conv43, 5.001000e-01, !dbg !362
  %cmp45 = fcmp ogt double %12, %mul44, !dbg !362
  br i1 %cmp45, label %if.end49, label %if.else48, !dbg !362

if.else48:                                        ; preds = %lor.lhs.false36
  tail call void @llvm.dbg.value(metadata !363, i64 0, metadata !18), !dbg !364
  br label %if.end49

if.end49:                                         ; preds = %if.else, %lor.lhs.false25, %lor.lhs.false36, %entry, %lor.lhs.false, %lor.lhs.false9, %if.else48
  %ptr.0 = phi i8* [ null, %if.else48 ], [ getelementptr inbounds ([119 x i8]* @.str, i64 0, i64 0), %lor.lhs.false9 ], [ getelementptr inbounds ([119 x i8]* @.str, i64 0, i64 0), %lor.lhs.false ], [ getelementptr inbounds ([119 x i8]* @.str, i64 0, i64 0), %entry ], [ getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), %lor.lhs.false36 ], [ getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), %lor.lhs.false25 ], [ getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), %if.else ]
  ret i8* %ptr.0, !dbg !365
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define void @init_pbc([3 x float]* %box) #2 {
entry:
  %try = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !23), !dbg !366
  call void @llvm.dbg.declare(metadata !{[3 x float]* %try}, metadata !30), !dbg !367
  %call = call i8* @check_box([3 x float]* %box) #7, !dbg !368
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !32), !dbg !368
  %tobool = icmp eq i8* %call, null, !dbg !369
  br i1 %tobool, label %if.else, label %if.then, !dbg !369

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !370, !tbaa !372
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i8* %call) #8, !dbg !370
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !373, !tbaa !372
  call void @pr_rvecs(%struct._IO_FILE* %1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), [3 x float]* %box, i32 3) #8, !dbg !373
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !374, !tbaa !372
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %2), !dbg !374
  store i1 false, i1* @bSupported, align 1
  br label %if.end159, !dbg !375

if.else:                                          ; preds = %entry
  store i1 true, i1* @bSupported, align 1
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !24), !dbg !376
  br label %for.body, !dbg !376

for.body:                                         ; preds = %for.body, %if.else
  %indvars.iv229 = phi i64 [ 0, %if.else ], [ %indvars.iv.next230, %for.body ]
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv229, i64 %indvars.iv229, !dbg !379
  %4 = load float* %arrayidx4, align 4, !dbg !379, !tbaa !357
  %arrayidx6 = getelementptr inbounds [3 x float]* @gl_fbox, i64 0, i64 %indvars.iv229, !dbg !379
  store float %4, float* %arrayidx6, align 4, !dbg !379, !tbaa !357
  %conv9 = fmul float %4, 5.000000e-01, !dbg !381
  %arrayidx11 = getelementptr inbounds [3 x float]* @gl_hbox, i64 0, i64 %indvars.iv229, !dbg !381
  store float %conv9, float* %arrayidx11, align 4, !dbg !381, !tbaa !357
  %sub = fsub float -0.000000e+00, %conv9, !dbg !382
  %arrayidx15 = getelementptr inbounds [3 x float]* @gl_mhbox, i64 0, i64 %indvars.iv229, !dbg !382
  store float %sub, float* %arrayidx15, align 4, !dbg !382, !tbaa !357
  %indvars.iv.next230 = add i64 %indvars.iv229, 1, !dbg !376
  %lftr.wideiv231 = trunc i64 %indvars.iv.next230 to i32, !dbg !376
  %exitcond232 = icmp eq i32 %lftr.wideiv231, 3, !dbg !376
  br i1 %exitcond232, label %for.end, label %for.body, !dbg !376

for.end:                                          ; preds = %for.body
  %arrayidx17 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !383
  %5 = load float* %arrayidx17, align 4, !dbg !383, !tbaa !357
  %fabsf = call float @fabsf(float %5) #6, !dbg !383
  %6 = fpext float %fabsf to double, !dbg !383
  %cmp20 = fcmp ogt double %6, 1.200000e-38, !dbg !383
  %arraydecay8.i.pre.pre = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !384
  br i1 %cmp20, label %lor.end.thread, label %lor.lhs.false, !dbg !383

lor.lhs.false:                                    ; preds = %for.end
  %7 = load float* %arraydecay8.i.pre.pre, align 4, !dbg !383, !tbaa !357
  %fabsf200 = call float @fabsf(float %7) #6, !dbg !383
  %8 = fpext float %fabsf200 to double, !dbg !383
  %cmp26 = fcmp ogt double %8, 1.200000e-38, !dbg !383
  br i1 %cmp26, label %lor.end.thread, label %lor.end, !dbg !383

lor.end.thread:                                   ; preds = %for.end, %lor.lhs.false
  store i32 1, i32* @bTriclinic, align 4, !dbg !383, !tbaa !387
  %arrayidx2.i1.i.pre = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !388
  br label %if.then35, !dbg !389

lor.end:                                          ; preds = %lor.lhs.false
  %arrayidx29 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !383
  %9 = load float* %arrayidx29, align 4, !dbg !383, !tbaa !357
  %fabsf201 = call float @fabsf(float %9) #6, !dbg !383
  %10 = fpext float %fabsf201 to double, !dbg !383
  %cmp32 = fcmp ogt double %10, 1.200000e-38, !dbg !383
  %lor.ext = zext i1 %cmp32 to i32, !dbg !383
  store i32 %lor.ext, i32* @bTriclinic, align 4, !dbg !383, !tbaa !387
  br i1 %cmp32, label %if.then35, label %if.end159, !dbg !389

if.then35:                                        ; preds = %lor.end.thread, %lor.end
  %arrayidx2.i1.i.pre-phi = phi float* [ %arrayidx2.i1.i.pre, %lor.end.thread ], [ %arrayidx29, %lor.end ], !dbg !388
  tail call void @llvm.dbg.value(metadata !390, i64 0, metadata !391), !dbg !392
  %arraydecay.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !393
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay.i}, i64 0, metadata !394), !dbg !395
  tail call void @llvm.dbg.value(metadata !396, i64 0, metadata !397), !dbg !395
  %11 = load float* %arraydecay.i, align 4, !dbg !398, !tbaa !357
  store float %11, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 0, i64 0), align 16, !dbg !398, !tbaa !357
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !399
  %12 = load float* %arrayidx2.i.i, align 4, !dbg !399, !tbaa !357
  store float %12, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 0, i64 1), align 4, !dbg !399, !tbaa !357
  %arrayidx4.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !400
  %13 = load float* %arrayidx4.i.i, align 4, !dbg !400, !tbaa !357
  store float %13, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 0, i64 2), align 8, !dbg !400, !tbaa !357
  tail call void @llvm.dbg.value(metadata !{float* %arrayidx17}, i64 0, metadata !401), !dbg !403
  tail call void @llvm.dbg.value(metadata !404, i64 0, metadata !405), !dbg !403
  %14 = load float* %arrayidx17, align 4, !dbg !406, !tbaa !357
  store float %14, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 1, i64 0), align 4, !dbg !406, !tbaa !357
  %arrayidx2.i3.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !407
  %15 = load float* %arrayidx2.i3.i, align 4, !dbg !407, !tbaa !357
  store float %15, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 1, i64 1), align 4, !dbg !407, !tbaa !357
  %arrayidx4.i4.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !408
  %16 = load float* %arrayidx4.i4.i, align 4, !dbg !408, !tbaa !357
  store float %16, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 1, i64 2), align 4, !dbg !408, !tbaa !357
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8.i.pre.pre}, i64 0, metadata !409), !dbg !410
  tail call void @llvm.dbg.value(metadata !411, i64 0, metadata !412), !dbg !410
  %17 = load float* %arraydecay8.i.pre.pre, align 4, !dbg !413, !tbaa !357
  store float %17, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 2, i64 0), align 8, !dbg !413, !tbaa !357
  %18 = load float* %arrayidx2.i1.i.pre-phi, align 4, !dbg !388, !tbaa !357
  store float %18, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 2, i64 1), align 4, !dbg !388, !tbaa !357
  %arrayidx4.i2.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !414
  %19 = load float* %arrayidx4.i2.i, align 4, !dbg !414, !tbaa !357
  store float %19, float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 2, i64 2), align 8, !dbg !414, !tbaa !357
  %20 = load float* %arraydecay.i, align 4, !dbg !415, !tbaa !357
  tail call void @llvm.dbg.value(metadata !{float %20}, i64 0, metadata !416), !dbg !417
  %mul.i219 = fmul float %20, %20, !dbg !418
  %21 = load float* %arrayidx2.i3.i, align 4, !dbg !415, !tbaa !357
  tail call void @llvm.dbg.value(metadata !{float %21}, i64 0, metadata !416), !dbg !417
  %mul.i218 = fmul float %21, %21, !dbg !418
  %22 = load float* %arrayidx4.i2.i, align 4, !dbg !415, !tbaa !357
  tail call void @llvm.dbg.value(metadata !{float %22}, i64 0, metadata !416), !dbg !417
  %mul.i217 = fmul float %22, %22, !dbg !418
  %cmp45 = fcmp olt float %mul.i218, %mul.i217, !dbg !415
  tail call void @llvm.dbg.value(metadata !{float %22}, i64 0, metadata !416), !dbg !417
  %cond = select i1 %cmp45, float %mul.i218, float %mul.i217, !dbg !415
  %cmp53 = fcmp olt float %mul.i219, %cond, !dbg !415
  %brmerge = or i1 %cmp53, %cmp45, !dbg !415
  %mul.i219.mux = select i1 %cmp53, float %mul.i219, float %mul.i218, !dbg !415
  tail call void @llvm.dbg.value(metadata !{float %22}, i64 0, metadata !416), !dbg !417
  %cond79 = select i1 %brmerge, float %mul.i219.mux, float %mul.i217, !dbg !415
  %conv82 = fmul float %cond79, 2.500000e-01, !dbg !415
  store float %conv82, float* @sure_dist2, align 4, !dbg !415, !tbaa !357
  tail call void @llvm.dbg.value(metadata !419, i64 0, metadata !420), !dbg !422
  %23 = load float* getelementptr inbounds ([3 x float]* @gl_fbox, i64 0, i64 0), align 4, !dbg !423, !tbaa !357
  %mul.i205 = fmul float %23, %23, !dbg !423
  %24 = load float* getelementptr inbounds ([3 x float]* @gl_fbox, i64 0, i64 1), align 4, !dbg !423, !tbaa !357
  %mul4.i206 = fmul float %24, %24, !dbg !423
  %add.i207 = fadd float %mul.i205, %mul4.i206, !dbg !423
  %25 = load float* getelementptr inbounds ([3 x float]* @gl_fbox, i64 0, i64 2), align 4, !dbg !423, !tbaa !357
  %mul7.i208 = fmul float %25, %25, !dbg !423
  %add8.i209 = fadd float %add.i207, %mul7.i208, !dbg !423
  call void @llvm.dbg.value(metadata !{float %add8.i209}, i64 0, metadata !29), !dbg !421
  store i32 0, i32* @ntric_vec, align 4, !dbg !424, !tbaa !387
  call void @llvm.dbg.value(metadata !425, i64 0, metadata !24), !dbg !426
  %arraydecay = getelementptr inbounds [3 x float]* %try, i64 0, i64 0, !dbg !428
  %arrayidx2.i203 = getelementptr inbounds [3 x float]* %try, i64 0, i64 1, !dbg !432
  %arrayidx5.i204 = getelementptr inbounds [3 x float]* %try, i64 0, i64 2, !dbg !432
  br label %for.cond88.preheader, !dbg !426

for.cond88.preheader:                             ; preds = %for.inc155, %if.then35
  %26 = phi i32 [ 0, %if.then35 ], [ %44, %for.inc155 ]
  %i.1224 = phi i32 [ -2, %if.then35 ], [ %inc156, %for.inc155 ]
  %conv109 = sitofp i32 %i.1224 to float, !dbg !433
  br label %for.cond92.preheader, !dbg !435

for.cond92.preheader:                             ; preds = %for.inc152, %for.cond88.preheader
  %27 = phi i32 [ %26, %for.cond88.preheader ], [ %44, %for.inc152 ]
  %j.0223 = phi i32 [ -2, %for.cond88.preheader ], [ %inc153, %for.inc152 ]
  %28 = or i32 %j.0223, %i.1224, !dbg !436
  %conv114 = sitofp i32 %j.0223 to float, !dbg !433
  br label %for.body95, !dbg !437

for.body95:                                       ; preds = %for.inc149, %for.cond92.preheader
  %29 = phi i32 [ %27, %for.cond92.preheader ], [ %44, %for.inc149 ]
  %k.0222 = phi i32 [ -2, %for.cond92.preheader ], [ %inc150, %for.inc149 ]
  %30 = or i32 %28, %k.0222, !dbg !436
  %31 = icmp eq i32 %30, 0, !dbg !436
  br i1 %31, label %for.inc149, label %for.cond105.preheader, !dbg !436

for.cond105.preheader:                            ; preds = %for.body95
  %conv119 = sitofp i32 %k.0222 to float, !dbg !433
  br label %for.body108, !dbg !438

for.body108:                                      ; preds = %for.body108, %for.cond105.preheader
  %indvars.iv = phi i64 [ 0, %for.cond105.preheader ], [ %indvars.iv.next, %for.body108 ]
  %arrayidx112 = getelementptr inbounds [3 x float]* %box, i64 0, i64 %indvars.iv, !dbg !433
  %32 = load float* %arrayidx112, align 4, !dbg !433, !tbaa !357
  %mul113 = fmul float %conv109, %32, !dbg !433
  %arrayidx117 = getelementptr inbounds [3 x float]* %box, i64 1, i64 %indvars.iv, !dbg !433
  %33 = load float* %arrayidx117, align 4, !dbg !433, !tbaa !357
  %mul118 = fmul float %conv114, %33, !dbg !433
  %add = fadd float %mul113, %mul118, !dbg !433
  %arrayidx122 = getelementptr inbounds [3 x float]* %box, i64 2, i64 %indvars.iv, !dbg !433
  %34 = load float* %arrayidx122, align 4, !dbg !433, !tbaa !357
  %mul123 = fmul float %conv119, %34, !dbg !433
  %add124 = fadd float %add, %mul123, !dbg !433
  %arrayidx126 = getelementptr inbounds [3 x float]* %try, i64 0, i64 %indvars.iv, !dbg !433
  store float %add124, float* %arrayidx126, align 4, !dbg !433, !tbaa !357
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !438
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !438
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !438
  br i1 %exitcond, label %for.end129, label %for.body108, !dbg !438

for.end129:                                       ; preds = %for.body108
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !439), !dbg !440
  %35 = load float* %arraydecay, align 4, !dbg !432, !tbaa !357
  %mul.i = fmul float %35, %35, !dbg !432
  %36 = load float* %arrayidx2.i203, align 4, !dbg !432, !tbaa !357
  %mul4.i = fmul float %36, %36, !dbg !432
  %add.i = fadd float %mul.i, %mul4.i, !dbg !432
  %37 = load float* %arrayidx5.i204, align 4, !dbg !432, !tbaa !357
  %mul7.i = fmul float %37, %37, !dbg !432
  %add8.i = fadd float %add.i, %mul7.i, !dbg !432
  %cmp131 = fcmp olt float %add8.i, %add8.i209, !dbg !428
  br i1 %cmp131, label %if.then133, label %for.inc149, !dbg !428

if.then133:                                       ; preds = %for.end129
  %38 = load i32* @init_pbc.nalloc, align 4, !dbg !441, !tbaa !387
  %cmp134 = icmp slt i32 %29, %38, !dbg !441
  br i1 %cmp134, label %if.then133.if.end_crit_edge, label %if.then136, !dbg !441

if.then133.if.end_crit_edge:                      ; preds = %if.then133
  %.pre233 = load [3 x float]** @tric_vec, align 8, !dbg !443, !tbaa !372
  br label %if.end, !dbg !441

if.then136:                                       ; preds = %if.then133
  %add137 = add nsw i32 %38, 20, !dbg !444
  store i32 %add137, i32* @init_pbc.nalloc, align 4, !dbg !444, !tbaa !387
  %39 = load [3 x float]** @tric_vec, align 8, !dbg !446, !tbaa !372
  %40 = bitcast [3 x float]* %39 to i8*, !dbg !446
  %mul139 = mul i32 %add137, 12, !dbg !446
  %call141 = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str6, i64 0, i64 0), i32 119, i8* %40, i32 %mul139) #8, !dbg !446
  %41 = bitcast i8* %call141 to [3 x float]*, !dbg !446
  store [3 x float]* %41, [3 x float]** @tric_vec, align 8, !dbg !446, !tbaa !372
  %.pre = load i32* @ntric_vec, align 4, !dbg !443, !tbaa !387
  br label %if.end, !dbg !447

if.end:                                           ; preds = %if.then133.if.end_crit_edge, %if.then136
  %42 = phi [3 x float]* [ %.pre233, %if.then133.if.end_crit_edge ], [ %41, %if.then136 ], !dbg !443
  %43 = phi i32 [ %29, %if.then133.if.end_crit_edge ], [ %.pre, %if.then136 ], !dbg !443
  %idxprom143 = sext i32 %43 to i64, !dbg !443
  %arraydecay145 = getelementptr inbounds [3 x float]* %42, i64 %idxprom143, i64 0, !dbg !443
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !448), !dbg !449
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay145}, i64 0, metadata !450), !dbg !449
  store float %35, float* %arraydecay145, align 4, !dbg !451, !tbaa !357
  %arrayidx3.i = getelementptr inbounds [3 x float]* %42, i64 %idxprom143, i64 1, !dbg !452
  store float %36, float* %arrayidx3.i, align 4, !dbg !452, !tbaa !357
  %arrayidx5.i = getelementptr inbounds [3 x float]* %42, i64 %idxprom143, i64 2, !dbg !453
  store float %37, float* %arrayidx5.i, align 4, !dbg !453, !tbaa !357
  %inc146 = add nsw i32 %43, 1, !dbg !454
  store i32 %inc146, i32* @ntric_vec, align 4, !dbg !454, !tbaa !387
  br label %for.inc149, !dbg !455

for.inc149:                                       ; preds = %for.body95, %if.end, %for.end129
  %44 = phi i32 [ %29, %for.body95 ], [ %inc146, %if.end ], [ %29, %for.end129 ]
  %inc150 = add nsw i32 %k.0222, 1, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %inc150}, i64 0, metadata !27), !dbg !437
  %exitcond226 = icmp eq i32 %inc150, 3, !dbg !437
  br i1 %exitcond226, label %for.inc152, label %for.body95, !dbg !437

for.inc152:                                       ; preds = %for.inc149
  %inc153 = add nsw i32 %j.0223, 1, !dbg !435
  call void @llvm.dbg.value(metadata !{i32 %inc153}, i64 0, metadata !26), !dbg !435
  %exitcond227 = icmp eq i32 %inc153, 3, !dbg !435
  br i1 %exitcond227, label %for.inc155, label %for.cond92.preheader, !dbg !435

for.inc155:                                       ; preds = %for.inc152
  %inc156 = add nsw i32 %i.1224, 1, !dbg !426
  call void @llvm.dbg.value(metadata !{i32 %inc156}, i64 0, metadata !24), !dbg !426
  %exitcond228 = icmp eq i32 %inc156, 3, !dbg !426
  br i1 %exitcond228, label %if.end159, label %for.cond88.preheader, !dbg !426

if.end159:                                        ; preds = %for.inc155, %lor.end, %if.then
  store i1 true, i1* @bInit, align 1
  ret void, !dbg !456
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @pr_rvecs(%struct._IO_FILE*, i32, i8*, [3 x float]*, i32) #4

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #4

; Function Attrs: nounwind optsize uwtable
define void @pbc_dx(float* nocapture %x1, float* nocapture %x2, float* nocapture %dx) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %x1}, i64 0, metadata !40), !dbg !457
  tail call void @llvm.dbg.value(metadata !{float* %x2}, i64 0, metadata !41), !dbg !457
  tail call void @llvm.dbg.value(metadata !{float* %dx}, i64 0, metadata !42), !dbg !457
  tail call void @llvm.dbg.declare(metadata !458, metadata !45), !dbg !459
  tail call void @llvm.dbg.declare(metadata !458, metadata !46), !dbg !459
  %.b128 = load i1* @bInit, align 1
  br i1 %.b128, label %if.end, label %if.then, !dbg !460

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str7, i64 0, i64 0)) #8, !dbg !461
  br label %if.end, !dbg !461

if.end:                                           ; preds = %if.then, %entry
  tail call void @llvm.dbg.value(metadata !{float* %x1}, i64 0, metadata !462), !dbg !464
  tail call void @llvm.dbg.value(metadata !{float* %x2}, i64 0, metadata !465), !dbg !464
  tail call void @llvm.dbg.value(metadata !{float* %dx}, i64 0, metadata !466), !dbg !464
  %0 = load float* %x1, align 4, !dbg !467, !tbaa !357
  %1 = load float* %x2, align 4, !dbg !467, !tbaa !357
  %sub.i = fsub float %0, %1, !dbg !467
  tail call void @llvm.dbg.value(metadata !{float %sub.i}, i64 0, metadata !468), !dbg !467
  %arrayidx2.i = getelementptr inbounds float* %x1, i64 1, !dbg !469
  %2 = load float* %arrayidx2.i, align 4, !dbg !469, !tbaa !357
  %arrayidx3.i = getelementptr inbounds float* %x2, i64 1, !dbg !469
  %3 = load float* %arrayidx3.i, align 4, !dbg !469, !tbaa !357
  %sub4.i = fsub float %2, %3, !dbg !469
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !470), !dbg !469
  %arrayidx5.i = getelementptr inbounds float* %x1, i64 2, !dbg !471
  %4 = load float* %arrayidx5.i, align 4, !dbg !471, !tbaa !357
  %arrayidx6.i = getelementptr inbounds float* %x2, i64 2, !dbg !471
  %5 = load float* %arrayidx6.i, align 4, !dbg !471, !tbaa !357
  %sub7.i = fsub float %4, %5, !dbg !471
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !472), !dbg !471
  store float %sub.i, float* %dx, align 4, !dbg !473, !tbaa !357
  %arrayidx9.i = getelementptr inbounds float* %dx, i64 1, !dbg !474
  store float %sub4.i, float* %arrayidx9.i, align 4, !dbg !474, !tbaa !357
  %arrayidx10.i = getelementptr inbounds float* %dx, i64 2, !dbg !475
  store float %sub7.i, float* %arrayidx10.i, align 4, !dbg !475, !tbaa !357
  %.b = load i1* @bSupported, align 1
  br i1 %.b, label %if.then2, label %if.end87, !dbg !476

if.then2:                                         ; preds = %if.end
  %6 = load i32* @bTriclinic, align 4, !dbg !477, !tbaa !387
  %tobool3 = icmp eq i32 %6, 0, !dbg !477
  br i1 %tobool3, label %for.body57, label %for.body, !dbg !477

for.body:                                         ; preds = %if.then2, %for.inc38.for.body_crit_edge
  %7 = phi float [ %.pre181, %for.inc38.for.body_crit_edge ], [ %sub7.i, %if.then2 ]
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %for.inc38.for.body_crit_edge ], [ 2, %if.then2 ]
  %arrayidx6 = getelementptr inbounds [3 x float]* @gl_hbox, i64 0, i64 %indvars.iv178, !dbg !479
  %8 = load float* %arrayidx6, align 4, !dbg !479, !tbaa !357
  %cmp7 = fcmp ogt float %7, %8, !dbg !479
  br i1 %cmp7, label %for.body11, label %if.else, !dbg !479

for.body11:                                       ; preds = %for.body, %for.body11.for.body11_crit_edge
  %9 = phi float [ %.pre183, %for.body11.for.body11_crit_edge ], [ %7, %for.body ]
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %for.body11.for.body11_crit_edge ], [ %indvars.iv178, %for.body ], !dbg !482
  %arrayidx15 = getelementptr inbounds [3 x [3 x float]]* @gl_box, i64 0, i64 %indvars.iv178, i64 %indvars.iv176, !dbg !483
  %10 = load float* %arrayidx15, align 4, !dbg !483, !tbaa !357
  %arrayidx17 = getelementptr inbounds float* %dx, i64 %indvars.iv176, !dbg !483
  %sub = fsub float %9, %10, !dbg !483
  store float %sub, float* %arrayidx17, align 4, !dbg !483, !tbaa !357
  %indvars.iv.next177 = add i64 %indvars.iv176, -1, !dbg !485
  %11 = trunc i64 %indvars.iv176 to i32, !dbg !485
  %cmp10 = icmp sgt i32 %11, 0, !dbg !485
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.inc38, !dbg !485

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  %arrayidx17.phi.trans.insert = getelementptr inbounds float* %dx, i64 %indvars.iv.next177
  %.pre183 = load float* %arrayidx17.phi.trans.insert, align 4, !dbg !483, !tbaa !357
  br label %for.body11, !dbg !485

if.else:                                          ; preds = %for.body
  %arrayidx21 = getelementptr inbounds [3 x float]* @gl_mhbox, i64 0, i64 %indvars.iv178, !dbg !486
  %12 = load float* %arrayidx21, align 4, !dbg !486, !tbaa !357
  %cmp22 = fcmp ugt float %7, %12, !dbg !486
  br i1 %cmp22, label %for.inc38, label %for.body26, !dbg !486

for.body26:                                       ; preds = %if.else, %for.body26.for.body26_crit_edge
  %13 = phi float [ %.pre182, %for.body26.for.body26_crit_edge ], [ %7, %if.else ]
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %for.body26.for.body26_crit_edge ], [ %indvars.iv178, %if.else ], !dbg !482
  %arrayidx30 = getelementptr inbounds [3 x [3 x float]]* @gl_box, i64 0, i64 %indvars.iv178, i64 %indvars.iv172, !dbg !487
  %14 = load float* %arrayidx30, align 4, !dbg !487, !tbaa !357
  %arrayidx32 = getelementptr inbounds float* %dx, i64 %indvars.iv172, !dbg !487
  %add = fadd float %14, %13, !dbg !487
  store float %add, float* %arrayidx32, align 4, !dbg !487, !tbaa !357
  %indvars.iv.next173 = add i64 %indvars.iv172, -1, !dbg !489
  %15 = trunc i64 %indvars.iv172 to i32, !dbg !489
  %cmp25 = icmp sgt i32 %15, 0, !dbg !489
  br i1 %cmp25, label %for.body26.for.body26_crit_edge, label %for.inc38, !dbg !489

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  %arrayidx32.phi.trans.insert = getelementptr inbounds float* %dx, i64 %indvars.iv.next173
  %.pre182 = load float* %arrayidx32.phi.trans.insert, align 4, !dbg !487, !tbaa !357
  br label %for.body26, !dbg !489

for.inc38:                                        ; preds = %for.body11, %for.body26, %if.else
  %indvars.iv.next179 = add i64 %indvars.iv178, -1, !dbg !482
  %16 = trunc i64 %indvars.iv178 to i32, !dbg !482
  %cmp = icmp sgt i32 %16, 0, !dbg !482
  br i1 %cmp, label %for.inc38.for.body_crit_edge, label %for.end40, !dbg !482

for.inc38.for.body_crit_edge:                     ; preds = %for.inc38
  %arrayidx.phi.trans.insert = getelementptr inbounds float* %dx, i64 %indvars.iv.next179
  %.pre181 = load float* %arrayidx.phi.trans.insert, align 4, !dbg !479, !tbaa !357
  br label %for.body, !dbg !482

for.end40:                                        ; preds = %for.inc38
  tail call void @llvm.dbg.value(metadata !{float* %dx}, i64 0, metadata !490), !dbg !492
  tail call void @llvm.dbg.value(metadata !493, i64 0, metadata !494), !dbg !492
  %17 = load float* %dx, align 4, !dbg !495, !tbaa !357
  %18 = load float* %arrayidx9.i, align 4, !dbg !496, !tbaa !357
  %19 = load float* %arrayidx10.i, align 4, !dbg !497, !tbaa !357
  tail call void @llvm.dbg.value(metadata !{float* %dx}, i64 0, metadata !498), !dbg !500
  %mul.i141 = fmul float %17, %17, !dbg !501
  %mul4.i143 = fmul float %18, %18, !dbg !501
  %add.i144 = fadd float %mul.i141, %mul4.i143, !dbg !501
  %mul7.i146 = fmul float %19, %19, !dbg !501
  %add8.i147 = fadd float %add.i144, %mul7.i146, !dbg !501
  tail call void @llvm.dbg.value(metadata !{float %add8.i147}, i64 0, metadata !47), !dbg !499
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !43), !dbg !502
  %20 = load float* @sure_dist2, align 4, !dbg !503, !tbaa !357
  %cmp41157 = fcmp ogt float %add8.i147, %20, !dbg !503
  %21 = load i32* @ntric_vec, align 4, !dbg !503, !tbaa !387
  %cmp42158 = icmp sgt i32 %21, 0, !dbg !503
  %or.cond159 = and i1 %cmp41157, %cmp42158, !dbg !503
  br i1 %or.cond159, label %while.body.lr.ph, label %if.end87, !dbg !503

while.body.lr.ph:                                 ; preds = %for.end40
  %22 = load [3 x float]** @tric_vec, align 8, !dbg !504, !tbaa !372
  br label %while.body, !dbg !503

while.body:                                       ; preds = %while.body.lr.ph, %if.end53
  %23 = phi float [ %20, %while.body.lr.ph ], [ %27, %if.end53 ]
  %indvars.iv168 = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next169, %if.end53 ]
  %d2min.0160 = phi float [ %add8.i147, %while.body.lr.ph ], [ %d2min.1, %if.end53 ]
  %arraydecay46 = getelementptr inbounds [3 x float]* %22, i64 %indvars.iv168, i64 0, !dbg !504
  tail call void @llvm.dbg.value(metadata !493, i64 0, metadata !506), !dbg !507
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay46}, i64 0, metadata !508), !dbg !507
  tail call void @llvm.dbg.value(metadata !493, i64 0, metadata !509), !dbg !507
  %24 = load float* %arraydecay46, align 4, !dbg !510, !tbaa !357
  %add.i134 = fadd float %17, %24, !dbg !510
  tail call void @llvm.dbg.value(metadata !{float %add.i134}, i64 0, metadata !511), !dbg !510
  %arrayidx3.i136 = getelementptr inbounds [3 x float]* %22, i64 %indvars.iv168, i64 1, !dbg !512
  %25 = load float* %arrayidx3.i136, align 4, !dbg !512, !tbaa !357
  %add4.i = fadd float %18, %25, !dbg !512
  tail call void @llvm.dbg.value(metadata !{float %add4.i}, i64 0, metadata !513), !dbg !512
  %arrayidx6.i138 = getelementptr inbounds [3 x float]* %22, i64 %indvars.iv168, i64 2, !dbg !514
  %26 = load float* %arrayidx6.i138, align 4, !dbg !514, !tbaa !357
  %add7.i = fadd float %19, %26, !dbg !514
  tail call void @llvm.dbg.value(metadata !{float %add7.i}, i64 0, metadata !515), !dbg !514
  tail call void @llvm.dbg.value(metadata !493, i64 0, metadata !516), !dbg !518
  %mul.i = fmul float %add.i134, %add.i134, !dbg !519
  %mul4.i = fmul float %add4.i, %add4.i, !dbg !519
  %add.i = fadd float %mul.i, %mul4.i, !dbg !519
  %mul7.i = fmul float %add7.i, %add7.i, !dbg !519
  %add8.i = fadd float %add.i, %mul7.i, !dbg !519
  tail call void @llvm.dbg.value(metadata !{float %add8.i}, i64 0, metadata !48), !dbg !517
  %cmp50 = fcmp olt float %add8.i, %d2min.0160, !dbg !520
  br i1 %cmp50, label %if.then51, label %if.end53, !dbg !520

if.then51:                                        ; preds = %while.body
  tail call void @llvm.dbg.value(metadata !493, i64 0, metadata !521), !dbg !524
  tail call void @llvm.dbg.value(metadata !{float* %dx}, i64 0, metadata !525), !dbg !524
  store float %add.i134, float* %dx, align 4, !dbg !526, !tbaa !357
  store float %add4.i, float* %arrayidx9.i, align 4, !dbg !527, !tbaa !357
  store float %add7.i, float* %arrayidx10.i, align 4, !dbg !528, !tbaa !357
  tail call void @llvm.dbg.value(metadata !{float %add8.i}, i64 0, metadata !47), !dbg !529
  %.pre = load float* @sure_dist2, align 4, !dbg !503, !tbaa !357
  br label %if.end53, !dbg !530

if.end53:                                         ; preds = %if.then51, %while.body
  %27 = phi float [ %.pre, %if.then51 ], [ %23, %while.body ], !dbg !503
  %d2min.1 = phi float [ %add8.i, %if.then51 ], [ %d2min.0160, %while.body ]
  %indvars.iv.next169 = add i64 %indvars.iv168, 1, !dbg !503
  %cmp41 = fcmp ogt float %d2min.1, %27, !dbg !503
  %28 = trunc i64 %indvars.iv.next169 to i32, !dbg !503
  %cmp42 = icmp slt i32 %28, %21, !dbg !503
  %or.cond = and i1 %cmp41, %cmp42, !dbg !503
  br i1 %or.cond, label %while.body, label %if.end87, !dbg !503

for.body57:                                       ; preds = %if.then2, %for.inc83.for.body57_crit_edge
  %29 = phi float [ %.pre180, %for.inc83.for.body57_crit_edge ], [ %sub.i, %if.then2 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc83.for.body57_crit_edge ], [ 0, %if.then2 ]
  %arrayidx59 = getelementptr inbounds float* %dx, i64 %indvars.iv, !dbg !531
  %arrayidx61 = getelementptr inbounds [3 x float]* @gl_hbox, i64 0, i64 %indvars.iv, !dbg !531
  %30 = load float* %arrayidx61, align 4, !dbg !531, !tbaa !357
  %cmp62 = fcmp ogt float %29, %30, !dbg !531
  br i1 %cmp62, label %if.then63, label %if.else69, !dbg !531

if.then63:                                        ; preds = %for.body57
  %arrayidx65 = getelementptr inbounds [3 x float]* @gl_fbox, i64 0, i64 %indvars.iv, !dbg !534
  %31 = load float* %arrayidx65, align 4, !dbg !534, !tbaa !357
  %sub68 = fsub float %29, %31, !dbg !534
  store float %sub68, float* %arrayidx59, align 4, !dbg !534, !tbaa !357
  br label %for.inc83, !dbg !534

if.else69:                                        ; preds = %for.body57
  %arrayidx73 = getelementptr inbounds [3 x float]* @gl_mhbox, i64 0, i64 %indvars.iv, !dbg !535
  %32 = load float* %arrayidx73, align 4, !dbg !535, !tbaa !357
  %cmp74 = fcmp ugt float %29, %32, !dbg !535
  br i1 %cmp74, label %for.inc83, label %if.then75, !dbg !535

if.then75:                                        ; preds = %if.else69
  %arrayidx77 = getelementptr inbounds [3 x float]* @gl_fbox, i64 0, i64 %indvars.iv, !dbg !536
  %33 = load float* %arrayidx77, align 4, !dbg !536, !tbaa !357
  %add80 = fadd float %29, %33, !dbg !536
  store float %add80, float* %arrayidx59, align 4, !dbg !536, !tbaa !357
  br label %for.inc83, !dbg !536

for.inc83:                                        ; preds = %if.else69, %if.then63, %if.then75
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !537
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !537
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !537
  br i1 %exitcond, label %if.end87, label %for.inc83.for.body57_crit_edge, !dbg !537

for.inc83.for.body57_crit_edge:                   ; preds = %for.inc83
  %arrayidx59.phi.trans.insert = getelementptr inbounds float* %dx, i64 %indvars.iv.next
  %.pre180 = load float* %arrayidx59.phi.trans.insert, align 4, !dbg !531, !tbaa !357
  br label %for.body57, !dbg !537

if.end87:                                         ; preds = %for.end40, %if.end53, %for.inc83, %if.end
  ret void, !dbg !538
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #4

; Function Attrs: nounwind optsize uwtable
define i32 @image_rect(i32* nocapture %xi, i32* nocapture %xj, i32* nocapture %box_size, float %rlong2, i32* nocapture %shift, float* nocapture %r2) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %xi}, i64 0, metadata !54), !dbg !539
  tail call void @llvm.dbg.value(metadata !{i32* %xj}, i64 0, metadata !55), !dbg !539
  tail call void @llvm.dbg.value(metadata !{i32* %box_size}, i64 0, metadata !56), !dbg !539
  tail call void @llvm.dbg.value(metadata !{float %rlong2}, i64 0, metadata !57), !dbg !539
  tail call void @llvm.dbg.value(metadata !{i32* %shift}, i64 0, metadata !58), !dbg !539
  tail call void @llvm.dbg.value(metadata !{float* %r2}, i64 0, metadata !59), !dbg !539
  tail call void @llvm.dbg.value(metadata !540, i64 0, metadata !66), !dbg !541
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !61), !dbg !542
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !60), !dbg !543
  br label %for.body, !dbg !543

for.cond:                                         ; preds = %if.end13
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !543
  %cmp = icmp slt i32 %0, 3, !dbg !543
  br i1 %cmp, label %for.body, label %for.end, !dbg !543

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %rij2.041 = phi float [ 0.000000e+00, %entry ], [ %add15, %for.cond ]
  %t.039 = phi i32 [ 0, %entry ], [ %t.1, %for.cond ]
  %arrayidx = getelementptr inbounds i32* %xi, i64 %indvars.iv, !dbg !545
  %1 = load i32* %arrayidx, align 4, !dbg !545, !tbaa !387
  %arrayidx2 = getelementptr inbounds i32* %xj, i64 %indvars.iv, !dbg !545
  %2 = load i32* %arrayidx2, align 4, !dbg !545, !tbaa !387
  %sub = sub nsw i32 %1, %2, !dbg !545
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !62), !dbg !545
  %mul = mul nsw i32 %t.039, 3, !dbg !547
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !61), !dbg !547
  %arrayidx4 = getelementptr inbounds i32* %box_size, i64 %indvars.iv, !dbg !548
  %3 = load i32* %arrayidx4, align 4, !dbg !548, !tbaa !387
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !63), !dbg !548
  %div = sdiv i32 %3, 2, !dbg !549
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !64), !dbg !549
  %sub5 = sub nsw i32 0, %div, !dbg !550
  %cmp6 = icmp slt i32 %sub, %sub5, !dbg !550
  br i1 %cmp6, label %if.then, label %if.else, !dbg !550

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %mul, 2, !dbg !551
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !61), !dbg !551
  %add7 = add nsw i32 %sub, %3, !dbg !553
  tail call void @llvm.dbg.value(metadata !{i32 %add7}, i64 0, metadata !62), !dbg !553
  br label %if.end13, !dbg !554

if.else:                                          ; preds = %for.body
  %cmp8 = icmp sgt i32 %sub, %div, !dbg !555
  br i1 %cmp8, label %if.then9, label %if.else11, !dbg !555

if.then9:                                         ; preds = %if.else
  %sub10 = sub nsw i32 %sub, %3, !dbg !556
  tail call void @llvm.dbg.value(metadata !{i32 %sub10}, i64 0, metadata !62), !dbg !556
  br label %if.end13, !dbg !556

if.else11:                                        ; preds = %if.else
  %add12 = add nsw i32 %mul, 1, !dbg !557
  tail call void @llvm.dbg.value(metadata !{i32 %add12}, i64 0, metadata !61), !dbg !557
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.else11, %if.then
  %dx.0 = phi i32 [ %add7, %if.then ], [ %sub10, %if.then9 ], [ %sub, %if.else11 ]
  %t.1 = phi i32 [ %add, %if.then ], [ %mul, %if.then9 ], [ %add12, %if.else11 ]
  %conv = sitofp i32 %dx.0 to float, !dbg !558
  tail call void @llvm.dbg.value(metadata !{float %conv}, i64 0, metadata !65), !dbg !558
  %mul14 = fmul float %conv, %conv, !dbg !559
  %add15 = fadd float %rij2.041, %mul14, !dbg !559
  tail call void @llvm.dbg.value(metadata !{float %add15}, i64 0, metadata !66), !dbg !559
  %cmp16 = fcmp ult float %add15, %rlong2, !dbg !560
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !543
  br i1 %cmp16, label %for.cond, label %return, !dbg !560

for.end:                                          ; preds = %for.cond
  store i32 %t.1, i32* %shift, align 4, !dbg !561, !tbaa !387
  store float %add15, float* %r2, align 4, !dbg !562, !tbaa !357
  br label %return, !dbg !563

return:                                           ; preds = %if.end13, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %if.end13 ]
  ret i32 %retval.0, !dbg !563
}

; Function Attrs: nounwind optsize uwtable
define i32 @image_cylindric(i32* nocapture %xi, i32* nocapture %xj, i32* nocapture %box_size, float %rlong2, i32* nocapture %shift, float* nocapture %r2) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %xi}, i64 0, metadata !69), !dbg !564
  tail call void @llvm.dbg.value(metadata !{i32* %xj}, i64 0, metadata !70), !dbg !564
  tail call void @llvm.dbg.value(metadata !{i32* %box_size}, i64 0, metadata !71), !dbg !564
  tail call void @llvm.dbg.value(metadata !{float %rlong2}, i64 0, metadata !72), !dbg !564
  tail call void @llvm.dbg.value(metadata !{i32* %shift}, i64 0, metadata !73), !dbg !565
  tail call void @llvm.dbg.value(metadata !{float* %r2}, i64 0, metadata !74), !dbg !565
  tail call void @llvm.dbg.value(metadata !540, i64 0, metadata !81), !dbg !566
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !76), !dbg !567
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !75), !dbg !568
  br label %for.body, !dbg !568

for.cond:                                         ; preds = %if.end13
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !568
  %cmp = icmp slt i32 %0, 3, !dbg !568
  br i1 %cmp, label %for.body, label %for.end, !dbg !568

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %rij2.046 = phi float [ 0.000000e+00, %entry ], [ %add15, %for.cond ]
  %t.044 = phi i32 [ 0, %entry ], [ %t.1, %for.cond ]
  %arrayidx = getelementptr inbounds i32* %xi, i64 %indvars.iv, !dbg !570
  %1 = load i32* %arrayidx, align 4, !dbg !570, !tbaa !387
  %arrayidx2 = getelementptr inbounds i32* %xj, i64 %indvars.iv, !dbg !570
  %2 = load i32* %arrayidx2, align 4, !dbg !570, !tbaa !387
  %sub = sub nsw i32 %1, %2, !dbg !570
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !77), !dbg !570
  %mul = mul nsw i32 %t.044, 3, !dbg !572
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !76), !dbg !572
  %arrayidx4 = getelementptr inbounds i32* %box_size, i64 %indvars.iv, !dbg !573
  %3 = load i32* %arrayidx4, align 4, !dbg !573, !tbaa !387
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !78), !dbg !573
  %div = sdiv i32 %3, 2, !dbg !574
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !79), !dbg !574
  %sub5 = sub nsw i32 0, %div, !dbg !575
  %cmp6 = icmp slt i32 %sub, %sub5, !dbg !575
  br i1 %cmp6, label %if.then, label %if.else, !dbg !575

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %mul, 2, !dbg !576
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !76), !dbg !576
  %add7 = add nsw i32 %sub, %3, !dbg !578
  tail call void @llvm.dbg.value(metadata !{i32 %add7}, i64 0, metadata !77), !dbg !578
  br label %if.end13, !dbg !579

if.else:                                          ; preds = %for.body
  %cmp8 = icmp sgt i32 %sub, %div, !dbg !580
  br i1 %cmp8, label %if.then9, label %if.else11, !dbg !580

if.then9:                                         ; preds = %if.else
  %sub10 = sub nsw i32 %sub, %3, !dbg !581
  tail call void @llvm.dbg.value(metadata !{i32 %sub10}, i64 0, metadata !77), !dbg !581
  br label %if.end13, !dbg !581

if.else11:                                        ; preds = %if.else
  %add12 = add nsw i32 %mul, 1, !dbg !582
  tail call void @llvm.dbg.value(metadata !{i32 %add12}, i64 0, metadata !76), !dbg !582
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.else11, %if.then
  %dx.0 = phi i32 [ %add7, %if.then ], [ %sub10, %if.then9 ], [ %sub, %if.else11 ]
  %t.1 = phi i32 [ %add, %if.then ], [ %mul, %if.then9 ], [ %add12, %if.else11 ]
  %conv = sitofp i32 %dx.0 to float, !dbg !583
  tail call void @llvm.dbg.value(metadata !{float %conv}, i64 0, metadata !80), !dbg !583
  %mul14 = fmul float %conv, %conv, !dbg !584
  %add15 = fadd float %rij2.046, %mul14, !dbg !584
  tail call void @llvm.dbg.value(metadata !{float %add15}, i64 0, metadata !81), !dbg !584
  %4 = trunc i64 %indvars.iv to i32, !dbg !585
  %cmp16 = icmp sgt i32 %4, 1, !dbg !585
  %cmp19 = fcmp ult float %add15, %rlong2, !dbg !586
  %or.cond = or i1 %cmp16, %cmp19, !dbg !585
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !568
  br i1 %or.cond, label %for.cond, label %return, !dbg !585

for.end:                                          ; preds = %for.cond
  store i32 %t.1, i32* %shift, align 4, !dbg !588, !tbaa !387
  store float %add15, float* %r2, align 4, !dbg !589, !tbaa !357
  br label %return, !dbg !590

return:                                           ; preds = %if.end13, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %if.end13 ]
  ret i32 %retval.0, !dbg !590
}

; Function Attrs: nounwind optsize uwtable
define void @calc_shifts([3 x float]* %box, float* nocapture %box_size, [3 x float]* nocapture %shift_vec) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !87), !dbg !591
  tail call void @llvm.dbg.value(metadata !{float* %box_size}, i64 0, metadata !88), !dbg !591
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %shift_vec}, i64 0, metadata !89), !dbg !591
  tail call void @init_pbc([3 x float]* %box) #7, !dbg !592
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !593
  br label %for.body, !dbg !593

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv98 = phi i64 [ 0, %entry ], [ %indvars.iv.next99, %for.body ]
  %arrayidx2 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv98, i64 %indvars.iv98, !dbg !595
  %0 = load float* %arrayidx2, align 4, !dbg !595, !tbaa !357
  %arrayidx4 = getelementptr inbounds float* %box_size, i64 %indvars.iv98, !dbg !595
  store float %0, float* %arrayidx4, align 4, !dbg !595, !tbaa !357
  %indvars.iv.next99 = add i64 %indvars.iv98, 1, !dbg !593
  %lftr.wideiv100 = trunc i64 %indvars.iv.next99 to i32, !dbg !593
  %exitcond101 = icmp eq i32 %lftr.wideiv100, 3, !dbg !593
  br i1 %exitcond101, label %for.cond8.preheader, label %for.body, !dbg !593

for.cond8.preheader:                              ; preds = %for.body, %for.inc53
  %n.088 = phi i32 [ %10, %for.inc53 ], [ 0, %for.body ]
  %m.187 = phi i32 [ %inc54, %for.inc53 ], [ -1, %for.body ]
  %1 = mul i32 %m.187, 3, !dbg !596
  %mul = add i32 %1, 3, !dbg !596
  %conv33 = sitofp i32 %m.187 to float, !dbg !601
  br label %for.cond11.preheader, !dbg !603

for.cond11.preheader:                             ; preds = %for.inc50, %for.cond8.preheader
  %indvars.iv92.in = phi i32 [ %n.088, %for.cond8.preheader ], [ %indvars.iv92, %for.inc50 ]
  %n.186 = phi i32 [ %n.088, %for.cond8.preheader ], [ %9, %for.inc50 ]
  %l.085 = phi i32 [ -1, %for.cond8.preheader ], [ %inc51, %for.inc50 ]
  %indvars.iv92 = add i32 %indvars.iv92.in, 3, !dbg !604
  %add14 = add nsw i32 %mul, %l.085, !dbg !596
  %2 = mul i32 %add14, 3, !dbg !596
  %add17 = add i32 %2, 4, !dbg !596
  %conv27 = sitofp i32 %l.085 to float, !dbg !601
  %3 = sext i32 %n.186 to i64
  br label %for.body13, !dbg !604

for.body13:                                       ; preds = %for.inc46.for.body13_crit_edge, %for.cond11.preheader
  %indvars.iv90 = phi i64 [ %3, %for.cond11.preheader ], [ %indvars.iv.next91, %for.inc46.for.body13_crit_edge ]
  %k.084 = phi i32 [ -1, %for.cond11.preheader ], [ %inc47, %for.inc46.for.body13_crit_edge ]
  %add18 = add i32 %add17, %k.084, !dbg !596
  tail call void @llvm.dbg.value(metadata !{i32 %add18}, i64 0, metadata !95), !dbg !596
  %4 = trunc i64 %indvars.iv90 to i32, !dbg !605
  %cmp19 = icmp ne i32 %4, %add18, !dbg !605
  %5 = load %struct._IO_FILE** @stdlog, align 8, !dbg !605, !tbaa !372
  %tobool = icmp ne %struct._IO_FILE* %5, null, !dbg !605
  %or.cond = and i1 %cmp19, %tobool, !dbg !605
  br i1 %or.cond, label %if.then, label %for.cond20.preheader, !dbg !605

if.then:                                          ; preds = %for.body13
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0), i32 %4, i32 %add18) #8, !dbg !606
  br label %for.cond20.preheader, !dbg !606

for.cond20.preheader:                             ; preds = %if.then, %for.body13
  %conv = sitofp i32 %k.084 to float, !dbg !601
  br label %for.body22, !dbg !607

for.body22:                                       ; preds = %for.body22, %for.cond20.preheader
  %indvars.iv = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next, %for.body22 ]
  %arrayidx25 = getelementptr inbounds [3 x float]* %box, i64 0, i64 %indvars.iv, !dbg !601
  %6 = load float* %arrayidx25, align 4, !dbg !601, !tbaa !357
  %mul26 = fmul float %conv, %6, !dbg !601
  %arrayidx30 = getelementptr inbounds [3 x float]* %box, i64 1, i64 %indvars.iv, !dbg !601
  %7 = load float* %arrayidx30, align 4, !dbg !601, !tbaa !357
  %mul31 = fmul float %conv27, %7, !dbg !601
  %add32 = fadd float %mul26, %mul31, !dbg !601
  %arrayidx36 = getelementptr inbounds [3 x float]* %box, i64 2, i64 %indvars.iv, !dbg !601
  %8 = load float* %arrayidx36, align 4, !dbg !601, !tbaa !357
  %mul37 = fmul float %conv33, %8, !dbg !601
  %add38 = fadd float %add32, %mul37, !dbg !601
  %arrayidx42 = getelementptr inbounds [3 x float]* %shift_vec, i64 %indvars.iv90, i64 %indvars.iv, !dbg !601
  store float %add38, float* %arrayidx42, align 4, !dbg !601, !tbaa !357
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !607
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !607
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !607
  br i1 %exitcond, label %for.inc46, label %for.body22, !dbg !607

for.inc46:                                        ; preds = %for.body22
  tail call void @llvm.dbg.value(metadata !{i32 %inc47}, i64 0, metadata !90), !dbg !604
  %indvars.iv.next91 = add i64 %indvars.iv90, 1, !dbg !604
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !94), !dbg !604
  %lftr.wideiv94 = trunc i64 %indvars.iv.next91 to i32, !dbg !604
  %exitcond95 = icmp eq i32 %lftr.wideiv94, %indvars.iv92, !dbg !604
  br i1 %exitcond95, label %for.inc50, label %for.inc46.for.body13_crit_edge, !dbg !604

for.inc46.for.body13_crit_edge:                   ; preds = %for.inc46
  %inc47 = add nsw i32 %k.084, 1, !dbg !604
  br label %for.body13, !dbg !604

for.inc50:                                        ; preds = %for.inc46
  %9 = add i32 %n.186, 3, !dbg !604
  %inc51 = add nsw i32 %l.085, 1, !dbg !603
  tail call void @llvm.dbg.value(metadata !{i32 %inc51}, i64 0, metadata !91), !dbg !603
  %exitcond96 = icmp eq i32 %inc51, 2, !dbg !603
  br i1 %exitcond96, label %for.inc53, label %for.cond11.preheader, !dbg !603

for.inc53:                                        ; preds = %for.inc50
  %10 = add i32 %n.088, 9, !dbg !603
  %inc54 = add nsw i32 %m.187, 1, !dbg !608
  tail call void @llvm.dbg.value(metadata !{i32 %inc54}, i64 0, metadata !92), !dbg !608
  %exitcond97 = icmp eq i32 %inc54, 2, !dbg !608
  br i1 %exitcond97, label %for.end55, label %for.cond8.preheader, !dbg !608

for.end55:                                        ; preds = %for.inc53
  ret void, !dbg !609
}

; Function Attrs: nounwind optsize uwtable
define void @calc_cgcm(%struct._IO_FILE* nocapture %log, i32 %cg0, i32 %cg1, %struct.t_block* nocapture %cgs, [3 x float]* nocapture %pos, [3 x float]* nocapture %cg_cm) #2 {
entry:
  %cg = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !170), !dbg !610
  call void @llvm.dbg.value(metadata !{i32 %cg0}, i64 0, metadata !171), !dbg !610
  call void @llvm.dbg.value(metadata !{i32 %cg1}, i64 0, metadata !172), !dbg !610
  call void @llvm.dbg.value(metadata !{%struct.t_block* %cgs}, i64 0, metadata !173), !dbg !610
  call void @llvm.dbg.value(metadata !{[3 x float]* %pos}, i64 0, metadata !174), !dbg !611
  call void @llvm.dbg.value(metadata !{[3 x float]* %cg_cm}, i64 0, metadata !175), !dbg !611
  call void @llvm.dbg.declare(metadata !{[3 x float]* %cg}, metadata !183), !dbg !612
  %a = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 4, !dbg !613
  %0 = load i32** %a, align 8, !dbg !613, !tbaa !372
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !185), !dbg !613
  %index = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 2, !dbg !614
  %1 = load i32** %index, align 8, !dbg !614, !tbaa !372
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !186), !dbg !614
  call void @llvm.dbg.value(metadata !{i32 %cg0}, i64 0, metadata !176), !dbg !615
  %cmp78 = icmp slt i32 %cg0, %cg1, !dbg !615
  br i1 %cmp78, label %for.body.lr.ph, label %for.end48, !dbg !615

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay12 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 0, !dbg !617
  %arrayidx1.i = getelementptr inbounds [3 x float]* %cg, i64 0, i64 1, !dbg !620
  %arrayidx2.i73 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 2, !dbg !621
  %2 = sext i32 %cg0 to i64
  %arrayidx.phi.trans.insert = getelementptr inbounds i32* %1, i64 %2
  %.pre = load i32* %arrayidx.phi.trans.insert, align 4, !dbg !622, !tbaa !387
  br label %for.body, !dbg !615

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %3 = phi i32 [ %.pre, %for.body.lr.ph ], [ %4, %for.cond.backedge ], !dbg !622
  %indvars.iv86 = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next87, %for.cond.backedge ]
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !179), !dbg !622
  %indvars.iv.next87 = add i64 %indvars.iv86, 1, !dbg !615
  %arrayidx2 = getelementptr inbounds i32* %1, i64 %indvars.iv.next87, !dbg !623
  %4 = load i32* %arrayidx2, align 4, !dbg !623, !tbaa !387
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !180), !dbg !623
  %sub = sub nsw i32 %4, %3, !dbg !624
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !182), !dbg !624
  %cmp3 = icmp eq i32 %sub, 1, !dbg !625
  br i1 %cmp3, label %if.then, label %if.else, !dbg !625

if.then:                                          ; preds = %for.body
  %idxprom4 = sext i32 %3 to i64, !dbg !626
  %arrayidx5 = getelementptr inbounds i32* %0, i64 %idxprom4, !dbg !626
  %5 = load i32* %arrayidx5, align 4, !dbg !626, !tbaa !387
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !177), !dbg !626
  %idxprom6 = sext i32 %5 to i64, !dbg !628
  %arraydecay = getelementptr inbounds [3 x float]* %pos, i64 %idxprom6, i64 0, !dbg !628
  %arraydecay10 = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv86, i64 0, !dbg !628
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !629), !dbg !630
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay10}, i64 0, metadata !631), !dbg !630
  %6 = load float* %arraydecay, align 4, !dbg !632, !tbaa !357
  store float %6, float* %arraydecay10, align 4, !dbg !632, !tbaa !357
  %arrayidx2.i = getelementptr inbounds [3 x float]* %pos, i64 %idxprom6, i64 1, !dbg !633
  %7 = load float* %arrayidx2.i, align 4, !dbg !633, !tbaa !357
  %arrayidx3.i = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv86, i64 1, !dbg !633
  store float %7, float* %arrayidx3.i, align 4, !dbg !633, !tbaa !357
  %arrayidx4.i = getelementptr inbounds [3 x float]* %pos, i64 %idxprom6, i64 2, !dbg !634
  %8 = load float* %arrayidx4.i, align 4, !dbg !634, !tbaa !357
  %arrayidx5.i = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv86, i64 2, !dbg !634
  store float %8, float* %arrayidx5.i, align 4, !dbg !634, !tbaa !357
  br label %for.cond.backedge, !dbg !635

for.cond.backedge:                                ; preds = %for.body36, %if.then
  %9 = trunc i64 %indvars.iv.next87 to i32, !dbg !615
  %cmp = icmp slt i32 %9, %cg1, !dbg !615
  br i1 %cmp, label %for.body, label %for.end48, !dbg !615

if.else:                                          ; preds = %for.body
  %conv = sitofp i32 %sub to double, !dbg !636
  %div = fdiv double 1.000000e+00, %conv, !dbg !636
  %conv11 = fptrunc double %div to float, !dbg !636
  call void @llvm.dbg.value(metadata !{float %conv11}, i64 0, metadata !184), !dbg !636
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay12}, i64 0, metadata !637), !dbg !638
  store float 0.000000e+00, float* %arraydecay12, align 4, !dbg !639, !tbaa !357
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !dbg !620, !tbaa !357
  store float 0.000000e+00, float* %arrayidx2.i73, align 4, !dbg !621, !tbaa !357
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !178), !dbg !640
  %cmp1475 = icmp slt i32 %3, %4, !dbg !640
  br i1 %cmp1475, label %for.body16.lr.ph, label %for.body36, !dbg !640

for.body16.lr.ph:                                 ; preds = %if.else
  %10 = sext i32 %3 to i64
  br label %for.body16, !dbg !640

for.body16:                                       ; preds = %for.body16.lr.ph, %for.inc30
  %indvars.iv80 = phi i64 [ %10, %for.body16.lr.ph ], [ %indvars.iv.next81, %for.inc30 ]
  %arrayidx18 = getelementptr inbounds i32* %0, i64 %indvars.iv80, !dbg !642
  %11 = load i32* %arrayidx18, align 4, !dbg !642, !tbaa !387
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !177), !dbg !642
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !181), !dbg !644
  %idxprom24 = sext i32 %11 to i64, !dbg !646
  br label %for.body22, !dbg !644

for.body22:                                       ; preds = %for.body22, %for.body16
  %indvars.iv = phi i64 [ 0, %for.body16 ], [ %indvars.iv.next, %for.body22 ]
  %arrayidx26 = getelementptr inbounds [3 x float]* %pos, i64 %idxprom24, i64 %indvars.iv, !dbg !646
  %12 = load float* %arrayidx26, align 4, !dbg !646, !tbaa !357
  %arrayidx28 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv, !dbg !646
  %13 = load float* %arrayidx28, align 4, !dbg !646, !tbaa !357
  %add29 = fadd float %12, %13, !dbg !646
  store float %add29, float* %arrayidx28, align 4, !dbg !646, !tbaa !357
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !644
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !644
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !644
  br i1 %exitcond, label %for.inc30, label %for.body22, !dbg !644

for.inc30:                                        ; preds = %for.body22
  %indvars.iv.next81 = add i64 %indvars.iv80, 1, !dbg !640
  %14 = trunc i64 %indvars.iv.next81 to i32, !dbg !640
  %cmp14 = icmp slt i32 %14, %4, !dbg !640
  br i1 %cmp14, label %for.body16, label %for.body36, !dbg !640

for.body36:                                       ; preds = %for.body36, %if.else, %for.inc30
  %indvars.iv82 = phi i64 [ 0, %for.inc30 ], [ 0, %if.else ], [ %indvars.iv.next83, %for.body36 ]
  %arrayidx38 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv82, !dbg !647
  %15 = load float* %arrayidx38, align 4, !dbg !647, !tbaa !357
  %mul = fmul float %conv11, %15, !dbg !647
  %arrayidx42 = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv86, i64 %indvars.iv82, !dbg !647
  store float %mul, float* %arrayidx42, align 4, !dbg !647, !tbaa !357
  %indvars.iv.next83 = add i64 %indvars.iv82, 1, !dbg !649
  %lftr.wideiv84 = trunc i64 %indvars.iv.next83 to i32, !dbg !649
  %exitcond85 = icmp eq i32 %lftr.wideiv84, 3, !dbg !649
  br i1 %exitcond85, label %for.cond.backedge, label %for.body36, !dbg !649

for.end48:                                        ; preds = %for.cond.backedge, %entry
  ret void, !dbg !650
}

; Function Attrs: nounwind optsize uwtable
define void @put_charge_groups_in_box(%struct._IO_FILE* nocapture %log, i32 %cg0, i32 %cg1, [3 x float]* nocapture %box, float* nocapture %box_size, %struct.t_block* nocapture %cgs, [3 x float]* nocapture %pos, [3 x float]* nocapture %cg_cm) #2 {
entry:
  %cg = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !191), !dbg !651
  call void @llvm.dbg.value(metadata !{i32 %cg0}, i64 0, metadata !192), !dbg !651
  call void @llvm.dbg.value(metadata !{i32 %cg1}, i64 0, metadata !193), !dbg !651
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !194), !dbg !652
  call void @llvm.dbg.value(metadata !{float* %box_size}, i64 0, metadata !195), !dbg !652
  call void @llvm.dbg.value(metadata !{%struct.t_block* %cgs}, i64 0, metadata !196), !dbg !652
  call void @llvm.dbg.value(metadata !{[3 x float]* %pos}, i64 0, metadata !197), !dbg !653
  call void @llvm.dbg.value(metadata !{[3 x float]* %cg_cm}, i64 0, metadata !198), !dbg !653
  call void @llvm.dbg.declare(metadata !{[3 x float]* %cg}, metadata !207), !dbg !654
  %a = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 4, !dbg !655
  %0 = load i32** %a, align 8, !dbg !655, !tbaa !372
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !209), !dbg !655
  %index = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 2, !dbg !656
  %1 = load i32** %index, align 8, !dbg !656, !tbaa !372
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !210), !dbg !656
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !657
  %2 = load float* %arrayidx1, align 4, !dbg !657, !tbaa !357
  %fabsf = call float @fabsf(float %2) #6, !dbg !657
  %3 = fpext float %fabsf to double, !dbg !657
  %cmp = fcmp ogt double %3, 1.200000e-38, !dbg !657
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !657

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !657
  %4 = load float* %arrayidx4, align 4, !dbg !657, !tbaa !357
  %fabsf313 = call float @fabsf(float %4) #6, !dbg !657
  %5 = fpext float %fabsf313 to double, !dbg !657
  %cmp7 = fcmp ogt double %5, 1.200000e-38, !dbg !657
  br i1 %cmp7, label %lor.end, label %lor.rhs, !dbg !657

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx10 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !657
  %6 = load float* %arrayidx10, align 4, !dbg !657, !tbaa !357
  %fabsf314 = call float @fabsf(float %6) #6, !dbg !657
  %7 = fpext float %fabsf314 to double, !dbg !657
  %cmp13 = fcmp ogt double %7, 1.200000e-38, !dbg !657
  br label %lor.end, !dbg !657

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %8 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp13, %lor.rhs ]
  call void @llvm.dbg.value(metadata !{i32 %cg0}, i64 0, metadata !199), !dbg !658
  %cmp15346 = icmp slt i32 %cg0, %cg1, !dbg !658
  br i1 %cmp15346, label %for.body.lr.ph, label %for.end216, !dbg !658

for.body.lr.ph:                                   ; preds = %lor.end
  %arraydecay = getelementptr inbounds [3 x float]* %cg, i64 0, i64 0, !dbg !660
  %arrayidx1.i = getelementptr inbounds [3 x float]* %cg, i64 0, i64 1, !dbg !662
  %arrayidx2.i = getelementptr inbounds [3 x float]* %cg, i64 0, i64 2, !dbg !663
  %9 = sext i32 %cg0 to i64
  %arrayidx17.phi.trans.insert = getelementptr inbounds i32* %1, i64 %9
  %.pre = load i32* %arrayidx17.phi.trans.insert, align 4, !dbg !664, !tbaa !387
  br label %for.body, !dbg !658

for.cond.backedge:                                ; preds = %while.end123, %while.end204
  %10 = trunc i64 %indvars.iv.next375 to i32, !dbg !658
  %cmp15 = icmp slt i32 %10, %cg1, !dbg !658
  br i1 %cmp15, label %for.body, label %for.end216, !dbg !658

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %11 = phi i32 [ %.pre, %for.body.lr.ph ], [ %12, %for.cond.backedge ], !dbg !664
  %indvars.iv374 = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next375, %for.cond.backedge ]
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !202), !dbg !664
  %indvars.iv.next375 = add i64 %indvars.iv374, 1, !dbg !658
  %arrayidx19 = getelementptr inbounds i32* %1, i64 %indvars.iv.next375, !dbg !665
  %12 = load i32* %arrayidx19, align 4, !dbg !665, !tbaa !387
  call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !203), !dbg !665
  %sub = sub nsw i32 %12, %11, !dbg !666
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !206), !dbg !666
  %conv20 = sitofp i32 %sub to double, !dbg !667
  %div = fdiv double 1.000000e+00, %conv20, !dbg !667
  %conv21 = fptrunc double %div to float, !dbg !667
  call void @llvm.dbg.value(metadata !{float %conv21}, i64 0, metadata !208), !dbg !667
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !668), !dbg !669
  store float 0.000000e+00, float* %arraydecay, align 4, !dbg !670, !tbaa !357
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !dbg !662, !tbaa !357
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !dbg !663, !tbaa !357
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !201), !dbg !671
  %cmp23316 = icmp slt i32 %11, %12, !dbg !671
  br i1 %cmp23316, label %for.body25.lr.ph, label %for.end41, !dbg !671

for.body25.lr.ph:                                 ; preds = %for.body
  %13 = sext i32 %11 to i64
  br label %for.body25, !dbg !671

for.body25:                                       ; preds = %for.body25.lr.ph, %for.inc39
  %indvars.iv348 = phi i64 [ %13, %for.body25.lr.ph ], [ %indvars.iv.next349, %for.inc39 ]
  %arrayidx27 = getelementptr inbounds i32* %0, i64 %indvars.iv348, !dbg !673
  %14 = load i32* %arrayidx27, align 4, !dbg !673, !tbaa !387
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !200), !dbg !673
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !204), !dbg !675
  %idxprom33 = sext i32 %14 to i64, !dbg !677
  br label %for.body31, !dbg !675

for.body31:                                       ; preds = %for.body31, %for.body25
  %indvars.iv = phi i64 [ 0, %for.body25 ], [ %indvars.iv.next, %for.body31 ]
  %arrayidx35 = getelementptr inbounds [3 x float]* %pos, i64 %idxprom33, i64 %indvars.iv, !dbg !677
  %15 = load float* %arrayidx35, align 4, !dbg !677, !tbaa !357
  %mul = fmul float %conv21, %15, !dbg !677
  %arrayidx37 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv, !dbg !677
  %16 = load float* %arrayidx37, align 4, !dbg !677, !tbaa !357
  %add38 = fadd float %16, %mul, !dbg !677
  store float %add38, float* %arrayidx37, align 4, !dbg !677, !tbaa !357
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !675
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !675
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !675
  br i1 %exitcond, label %for.inc39, label %for.body31, !dbg !675

for.inc39:                                        ; preds = %for.body31
  %indvars.iv.next349 = add i64 %indvars.iv348, 1, !dbg !671
  %17 = trunc i64 %indvars.iv.next349 to i32, !dbg !671
  %cmp23 = icmp slt i32 %17, %12, !dbg !671
  br i1 %cmp23, label %for.body25, label %for.end41, !dbg !671

for.end41:                                        ; preds = %for.inc39, %for.body
  %18 = sext i32 %11 to i64
  br i1 %8, label %while.cond.preheader, label %while.cond137.preheader, !dbg !678

while.cond.preheader:                             ; preds = %for.end41, %while.end123.while.cond.preheader_crit_edge
  %indvars.iv372 = phi i64 [ %indvars.iv.next373, %while.end123.while.cond.preheader_crit_edge ], [ 2, %for.end41 ]
  %arrayidx47 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv372, !dbg !679
  %19 = load float* %arrayidx47, align 4, !dbg !679, !tbaa !357
  %cmp48332 = fcmp olt float %19, 0.000000e+00, !dbg !679
  br i1 %cmp48332, label %for.body53, label %while.cond81.loopexit, !dbg !679

while.cond.loopexit:                              ; preds = %for.inc79
  %.pre379 = load float* %arrayidx47, align 4, !dbg !679, !tbaa !357
  %cmp48 = fcmp olt float %.pre379, 0.000000e+00, !dbg !679
  br i1 %cmp48, label %for.body53, label %while.cond81.loopexit, !dbg !679

for.body53:                                       ; preds = %while.cond.preheader, %while.cond.loopexit, %for.inc79.for.body53_crit_edge
  %20 = phi float [ %.pre385, %for.inc79.for.body53_crit_edge ], [ %.pre379, %while.cond.loopexit ], [ %19, %while.cond.preheader ]
  %indvars.iv363 = phi i64 [ %indvars.iv.next364, %for.inc79.for.body53_crit_edge ], [ %indvars.iv372, %while.cond.loopexit ], [ %indvars.iv372, %while.cond.preheader ], !dbg !683
  %arrayidx57 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv372, i64 %indvars.iv363, !dbg !684
  %21 = load float* %arrayidx57, align 4, !dbg !684, !tbaa !357
  %arrayidx59 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv363, !dbg !684
  %add60 = fadd float %21, %20, !dbg !684
  store float %add60, float* %arrayidx59, align 4, !dbg !684, !tbaa !357
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !201), !dbg !688
  br i1 %cmp23316, label %for.body64, label %for.inc79, !dbg !688

for.body64:                                       ; preds = %for.body53, %for.body64.for.body64_crit_edge
  %22 = phi float [ %.pre386, %for.body64.for.body64_crit_edge ], [ %21, %for.body53 ]
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %for.body64.for.body64_crit_edge ], [ %18, %for.body53 ]
  %arrayidx71 = getelementptr inbounds i32* %0, i64 %indvars.iv359, !dbg !690
  %23 = load i32* %arrayidx71, align 4, !dbg !690, !tbaa !387
  %idxprom72 = sext i32 %23 to i64, !dbg !690
  %arrayidx74 = getelementptr inbounds [3 x float]* %pos, i64 %idxprom72, i64 %indvars.iv363, !dbg !690
  %24 = load float* %arrayidx74, align 4, !dbg !690, !tbaa !357
  %add75 = fadd float %22, %24, !dbg !690
  store float %add75, float* %arrayidx74, align 4, !dbg !690, !tbaa !357
  %indvars.iv.next360 = add i64 %indvars.iv359, 1, !dbg !688
  %25 = trunc i64 %indvars.iv.next360 to i32, !dbg !688
  %cmp62 = icmp slt i32 %25, %12, !dbg !688
  br i1 %cmp62, label %for.body64.for.body64_crit_edge, label %for.inc79, !dbg !688

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  %.pre386 = load float* %arrayidx57, align 4, !dbg !690, !tbaa !357
  br label %for.body64, !dbg !688

for.inc79:                                        ; preds = %for.body64, %for.body53
  %indvars.iv.next364 = add i64 %indvars.iv363, -1, !dbg !691
  %26 = trunc i64 %indvars.iv363 to i32, !dbg !691
  %cmp51 = icmp sgt i32 %26, 0, !dbg !691
  br i1 %cmp51, label %for.inc79.for.body53_crit_edge, label %while.cond.loopexit, !dbg !691

for.inc79.for.body53_crit_edge:                   ; preds = %for.inc79
  %arrayidx59.phi.trans.insert = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv.next364
  %.pre385 = load float* %arrayidx59.phi.trans.insert, align 4, !dbg !684, !tbaa !357
  br label %for.body53, !dbg !691

while.cond81.loopexit:                            ; preds = %while.cond.loopexit, %while.cond.preheader
  %27 = phi float [ %19, %while.cond.preheader ], [ %.pre379, %while.cond.loopexit ]
  %arrayidx87 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv372, i64 %indvars.iv372, !dbg !692
  %28 = load float* %arrayidx87, align 4, !dbg !692, !tbaa !357
  %cmp88341 = fcmp ult float %27, %28, !dbg !692
  br i1 %cmp88341, label %while.end123, label %for.body94, !dbg !692

while.cond81.loopexit337:                         ; preds = %for.inc120
  %.pre377 = load float* %arrayidx47, align 4, !dbg !692, !tbaa !357
  %.pre378 = load float* %arrayidx87, align 4, !dbg !692, !tbaa !357
  %cmp88 = fcmp ult float %.pre377, %.pre378, !dbg !692
  br i1 %cmp88, label %while.end123, label %for.body94, !dbg !692

for.body94:                                       ; preds = %while.cond81.loopexit, %while.cond81.loopexit337, %for.inc120.for.body94_crit_edge
  %29 = phi float [ %.pre383, %for.inc120.for.body94_crit_edge ], [ %.pre377, %while.cond81.loopexit337 ], [ %27, %while.cond81.loopexit ]
  %30 = phi float [ %.pre382, %for.inc120.for.body94_crit_edge ], [ %.pre378, %while.cond81.loopexit337 ], [ %28, %while.cond81.loopexit ]
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %for.inc120.for.body94_crit_edge ], [ %indvars.iv372, %while.cond81.loopexit337 ], [ %indvars.iv372, %while.cond81.loopexit ], !dbg !683
  %arrayidx98 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv372, i64 %indvars.iv369, !dbg !693
  %arrayidx100 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv369, !dbg !693
  %sub101 = fsub float %29, %30, !dbg !693
  store float %sub101, float* %arrayidx100, align 4, !dbg !693, !tbaa !357
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !201), !dbg !697
  br i1 %cmp23316, label %for.body105, label %for.inc120, !dbg !697

for.body105:                                      ; preds = %for.body94, %for.body105.for.body105_crit_edge
  %31 = phi float [ %.pre384, %for.body105.for.body105_crit_edge ], [ %30, %for.body94 ]
  %indvars.iv365 = phi i64 [ %indvars.iv.next366, %for.body105.for.body105_crit_edge ], [ %18, %for.body94 ]
  %arrayidx112 = getelementptr inbounds i32* %0, i64 %indvars.iv365, !dbg !699
  %32 = load i32* %arrayidx112, align 4, !dbg !699, !tbaa !387
  %idxprom113 = sext i32 %32 to i64, !dbg !699
  %arrayidx115 = getelementptr inbounds [3 x float]* %pos, i64 %idxprom113, i64 %indvars.iv369, !dbg !699
  %33 = load float* %arrayidx115, align 4, !dbg !699, !tbaa !357
  %sub116 = fsub float %33, %31, !dbg !699
  store float %sub116, float* %arrayidx115, align 4, !dbg !699, !tbaa !357
  %indvars.iv.next366 = add i64 %indvars.iv365, 1, !dbg !697
  %34 = trunc i64 %indvars.iv.next366 to i32, !dbg !697
  %cmp103 = icmp slt i32 %34, %12, !dbg !697
  br i1 %cmp103, label %for.body105.for.body105_crit_edge, label %for.inc120, !dbg !697

for.body105.for.body105_crit_edge:                ; preds = %for.body105
  %.pre384 = load float* %arrayidx98, align 4, !dbg !699, !tbaa !357
  br label %for.body105, !dbg !697

for.inc120:                                       ; preds = %for.body105, %for.body94
  %indvars.iv.next370 = add i64 %indvars.iv369, -1, !dbg !700
  %35 = trunc i64 %indvars.iv369 to i32, !dbg !700
  %cmp92 = icmp sgt i32 %35, 0, !dbg !700
  br i1 %cmp92, label %for.inc120.for.body94_crit_edge, label %while.cond81.loopexit337, !dbg !700

for.inc120.for.body94_crit_edge:                  ; preds = %for.inc120
  %arrayidx98.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv372, i64 %indvars.iv.next370
  %.pre382 = load float* %arrayidx98.phi.trans.insert, align 4, !dbg !693, !tbaa !357
  %arrayidx100.phi.trans.insert = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv.next370
  %.pre383 = load float* %arrayidx100.phi.trans.insert, align 4, !dbg !693, !tbaa !357
  br label %for.body94, !dbg !700

while.end123:                                     ; preds = %while.cond81.loopexit337, %while.cond81.loopexit
  %.lcssa340 = phi float [ %27, %while.cond81.loopexit ], [ %.pre377, %while.cond81.loopexit337 ]
  %arrayidx129 = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv374, i64 %indvars.iv372, !dbg !701
  store float %.lcssa340, float* %arrayidx129, align 4, !dbg !701, !tbaa !357
  %36 = trunc i64 %indvars.iv372 to i32, !dbg !683
  %cmp43 = icmp sgt i32 %36, 0, !dbg !683
  br i1 %cmp43, label %while.end123.while.cond.preheader_crit_edge, label %for.cond.backedge, !dbg !683

while.end123.while.cond.preheader_crit_edge:      ; preds = %while.end123
  %indvars.iv.next373 = add i64 %indvars.iv372, -1, !dbg !683
  br label %while.cond.preheader, !dbg !683

while.cond137.preheader:                          ; preds = %for.end41, %while.end204
  %indvars.iv355 = phi i64 [ %indvars.iv.next356, %while.end204 ], [ 0, %for.end41 ]
  %arrayidx139 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv355, !dbg !702
  %37 = load float* %arrayidx139, align 4, !dbg !702, !tbaa !357
  %cmp140320 = fcmp olt float %37, 0.000000e+00, !dbg !702
  %arrayidx146 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv355, i64 %indvars.iv355, !dbg !706
  br i1 %cmp140320, label %while.body142, label %while.cond169.loopexit, !dbg !702

while.cond137.loopexit:                           ; preds = %for.body153, %while.body142
  %cmp140 = fcmp olt float %add149, 0.000000e+00, !dbg !702
  br i1 %cmp140, label %while.body142, label %while.cond137.while.cond169.loopexit_crit_edge, !dbg !702

while.body142:                                    ; preds = %while.cond137.preheader, %while.cond137.loopexit
  %38 = phi float [ %add149, %while.cond137.loopexit ], [ %37, %while.cond137.preheader ]
  %39 = load float* %arrayidx146, align 4, !dbg !706, !tbaa !357
  %add149 = fadd float %38, %39, !dbg !706
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !201), !dbg !708
  br i1 %cmp23316, label %for.body153, label %while.cond137.loopexit, !dbg !708

for.body153:                                      ; preds = %while.body142, %for.body153.for.body153_crit_edge
  %40 = phi float [ %.pre381, %for.body153.for.body153_crit_edge ], [ %39, %while.body142 ]
  %indvars.iv350 = phi i64 [ %indvars.iv.next351, %for.body153.for.body153_crit_edge ], [ %18, %while.body142 ]
  %arrayidx160 = getelementptr inbounds i32* %0, i64 %indvars.iv350, !dbg !710
  %41 = load i32* %arrayidx160, align 4, !dbg !710, !tbaa !387
  %idxprom161 = sext i32 %41 to i64, !dbg !710
  %arrayidx163 = getelementptr inbounds [3 x float]* %pos, i64 %idxprom161, i64 %indvars.iv355, !dbg !710
  %42 = load float* %arrayidx163, align 4, !dbg !710, !tbaa !357
  %add164 = fadd float %40, %42, !dbg !710
  store float %add164, float* %arrayidx163, align 4, !dbg !710, !tbaa !357
  %indvars.iv.next351 = add i64 %indvars.iv350, 1, !dbg !708
  %43 = trunc i64 %indvars.iv.next351 to i32, !dbg !708
  %cmp151 = icmp slt i32 %43, %12, !dbg !708
  br i1 %cmp151, label %for.body153.for.body153_crit_edge, label %while.cond137.loopexit, !dbg !708

for.body153.for.body153_crit_edge:                ; preds = %for.body153
  %.pre381 = load float* %arrayidx146, align 4, !dbg !710, !tbaa !357
  br label %for.body153, !dbg !708

while.cond137.while.cond169.loopexit_crit_edge:   ; preds = %while.cond137.loopexit
  store float %add149, float* %arrayidx139, align 4, !dbg !706, !tbaa !357
  br label %while.cond169.loopexit, !dbg !702

while.cond169.loopexit:                           ; preds = %while.cond137.preheader, %while.cond137.while.cond169.loopexit_crit_edge
  %44 = phi float [ %add149, %while.cond137.while.cond169.loopexit_crit_edge ], [ %37, %while.cond137.preheader ]
  %45 = load float* %arrayidx146, align 4, !dbg !711, !tbaa !357
  %cmp176325 = fcmp ult float %44, %45, !dbg !711
  br i1 %cmp176325, label %while.end204, label %while.body178, !dbg !711

while.cond169.loopexit322:                        ; preds = %for.body189, %while.body178
  %46 = phi float [ %47, %while.body178 ], [ %.pre380, %for.body189 ], !dbg !711
  %cmp176 = fcmp ult float %sub185, %46, !dbg !711
  br i1 %cmp176, label %while.end204, label %while.body178, !dbg !711

while.body178:                                    ; preds = %while.cond169.loopexit, %while.cond169.loopexit322
  %47 = phi float [ %46, %while.cond169.loopexit322 ], [ %45, %while.cond169.loopexit ]
  %48 = phi float [ %sub185, %while.cond169.loopexit322 ], [ %44, %while.cond169.loopexit ]
  %sub185 = fsub float %48, %47, !dbg !712
  store float %sub185, float* %arrayidx139, align 4, !dbg !712, !tbaa !357
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !201), !dbg !714
  br i1 %cmp23316, label %for.body189, label %while.cond169.loopexit322, !dbg !714

for.body189:                                      ; preds = %for.body189, %while.body178
  %49 = phi float [ %47, %while.body178 ], [ %.pre380, %for.body189 ]
  %indvars.iv352 = phi i64 [ %18, %while.body178 ], [ %indvars.iv.next353, %for.body189 ]
  %arrayidx196 = getelementptr inbounds i32* %0, i64 %indvars.iv352, !dbg !716
  %50 = load i32* %arrayidx196, align 4, !dbg !716, !tbaa !387
  %idxprom197 = sext i32 %50 to i64, !dbg !716
  %arrayidx199 = getelementptr inbounds [3 x float]* %pos, i64 %idxprom197, i64 %indvars.iv355, !dbg !716
  %51 = load float* %arrayidx199, align 4, !dbg !716, !tbaa !357
  %sub200 = fsub float %51, %49, !dbg !716
  store float %sub200, float* %arrayidx199, align 4, !dbg !716, !tbaa !357
  %indvars.iv.next353 = add i64 %indvars.iv352, 1, !dbg !714
  %52 = trunc i64 %indvars.iv.next353 to i32, !dbg !714
  %cmp187 = icmp slt i32 %52, %12, !dbg !714
  %.pre380 = load float* %arrayidx146, align 4, !dbg !716, !tbaa !357
  br i1 %cmp187, label %for.body189, label %while.cond169.loopexit322, !dbg !714

while.end204:                                     ; preds = %while.cond169.loopexit322, %while.cond169.loopexit
  %.lcssa = phi float [ %44, %while.cond169.loopexit ], [ %sub185, %while.cond169.loopexit322 ]
  %arrayidx210 = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv374, i64 %indvars.iv355, !dbg !717
  store float %.lcssa, float* %arrayidx210, align 4, !dbg !717, !tbaa !357
  %indvars.iv.next356 = add i64 %indvars.iv355, 1, !dbg !718
  %lftr.wideiv357 = trunc i64 %indvars.iv.next356 to i32, !dbg !718
  %exitcond358 = icmp eq i32 %lftr.wideiv357, 3, !dbg !718
  br i1 %exitcond358, label %for.cond.backedge, label %while.cond137.preheader, !dbg !718

for.end216:                                       ; preds = %for.cond.backedge, %lor.end
  ret void, !dbg !719
}

; Function Attrs: nounwind optsize uwtable
define void @calc_box_center([3 x float]* nocapture %box, float* nocapture %box_center) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !216), !dbg !720
  tail call void @llvm.dbg.value(metadata !{float* %box_center}, i64 0, metadata !217), !dbg !720
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !218), !dbg !721
  br label %for.body, !dbg !721

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx2 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv, !dbg !723
  %0 = load float* %arrayidx2, align 4, !dbg !723, !tbaa !357
  %conv3 = fmul float %0, 5.000000e-01, !dbg !723
  %arrayidx5 = getelementptr inbounds float* %box_center, i64 %indvars.iv, !dbg !723
  store float %conv3, float* %arrayidx5, align 4, !dbg !723, !tbaa !357
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !721
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !721
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !721
  br i1 %exitcond, label %for.end, label %for.body, !dbg !721

for.end:                                          ; preds = %for.body
  ret void, !dbg !724
}

; Function Attrs: nounwind optsize uwtable
define void @calc_triclinic_images([3 x float]* nocapture %box, [3 x float]* nocapture %img) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !223), !dbg !725
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %img}, i64 0, metadata !224), !dbg !725
  %arraydecay = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !726
  %arraydecay2 = getelementptr inbounds [3 x float]* %img, i64 0, i64 0, !dbg !726
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !727), !dbg !728
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay2}, i64 0, metadata !729), !dbg !728
  %0 = load float* %arraydecay, align 4, !dbg !730, !tbaa !357
  store float %0, float* %arraydecay2, align 4, !dbg !730, !tbaa !357
  %arrayidx2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !731
  %1 = load float* %arrayidx2.i, align 4, !dbg !731, !tbaa !357
  %arrayidx3.i = getelementptr inbounds [3 x float]* %img, i64 0, i64 1, !dbg !731
  store float %1, float* %arrayidx3.i, align 4, !dbg !731, !tbaa !357
  %arrayidx4.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !732
  %2 = load float* %arrayidx4.i, align 4, !dbg !732, !tbaa !357
  %arrayidx5.i = getelementptr inbounds [3 x float]* %img, i64 0, i64 2, !dbg !732
  store float %2, float* %arrayidx5.i, align 4, !dbg !732, !tbaa !357
  %arraydecay4 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !733
  %arraydecay6 = getelementptr inbounds [3 x float]* %img, i64 1, i64 0, !dbg !733
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay4}, i64 0, metadata !734), !dbg !735
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay6}, i64 0, metadata !736), !dbg !735
  %3 = load float* %arraydecay4, align 4, !dbg !737, !tbaa !357
  store float %3, float* %arraydecay6, align 4, !dbg !737, !tbaa !357
  %arrayidx2.i137 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !738
  %4 = load float* %arrayidx2.i137, align 4, !dbg !738, !tbaa !357
  %arrayidx3.i138 = getelementptr inbounds [3 x float]* %img, i64 1, i64 1, !dbg !738
  store float %4, float* %arrayidx3.i138, align 4, !dbg !738, !tbaa !357
  %arrayidx4.i139 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !739
  %5 = load float* %arrayidx4.i139, align 4, !dbg !739, !tbaa !357
  %arrayidx5.i140 = getelementptr inbounds [3 x float]* %img, i64 1, i64 2, !dbg !739
  store float %5, float* %arrayidx5.i140, align 4, !dbg !739, !tbaa !357
  %cmp = fcmp olt float %3, 0.000000e+00, !dbg !740
  br i1 %cmp, label %if.then, label %if.end, !dbg !740

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !741, i64 0, metadata !742), !dbg !744
  %mul.i130 = fmul float %3, -1.000000e+00, !dbg !745
  store float %mul.i130, float* %arraydecay6, align 4, !dbg !745, !tbaa !357
  %mul3.i132 = fmul float %4, -1.000000e+00, !dbg !747
  store float %mul3.i132, float* %arrayidx3.i138, align 4, !dbg !747, !tbaa !357
  %mul6.i135 = fmul float %5, -1.000000e+00, !dbg !748
  store float %mul6.i135, float* %arrayidx5.i140, align 4, !dbg !748, !tbaa !357
  br label %if.end, !dbg !743

if.end:                                           ; preds = %if.then, %entry
  %6 = phi float [ %mul6.i135, %if.then ], [ %5, %entry ]
  %7 = phi float [ %mul3.i132, %if.then ], [ %4, %entry ]
  %8 = phi float [ %mul.i130, %if.then ], [ %3, %entry ]
  %arraydecay18 = getelementptr inbounds [3 x float]* %img, i64 2, i64 0, !dbg !749
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay6}, i64 0, metadata !750), !dbg !751
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay2}, i64 0, metadata !752), !dbg !751
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay18}, i64 0, metadata !753), !dbg !751
  %sub.i = fsub float %8, %0, !dbg !754
  tail call void @llvm.dbg.value(metadata !{float %sub.i}, i64 0, metadata !755), !dbg !754
  %sub4.i = fsub float %7, %1, !dbg !756
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !757), !dbg !756
  %sub7.i = fsub float %6, %2, !dbg !758
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !759), !dbg !758
  store float %sub.i, float* %arraydecay18, align 4, !dbg !760, !tbaa !357
  %arrayidx9.i128 = getelementptr inbounds [3 x float]* %img, i64 2, i64 1, !dbg !761
  store float %sub4.i, float* %arrayidx9.i128, align 4, !dbg !761, !tbaa !357
  %arrayidx10.i129 = getelementptr inbounds [3 x float]* %img, i64 2, i64 2, !dbg !762
  store float %sub7.i, float* %arrayidx10.i129, align 4, !dbg !762, !tbaa !357
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !225), !dbg !763
  br label %for.body, !dbg !763

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %9 = phi float [ %2, %if.end ], [ %.pre157, %for.body.for.body_crit_edge ]
  %10 = phi float [ %1, %if.end ], [ %.pre156, %for.body.for.body_crit_edge ]
  %11 = phi float [ %0, %if.end ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv151 = phi i64 [ 0, %if.end ], [ %indvars.iv.next152, %for.body.for.body_crit_edge ]
  %12 = add nsw i64 %indvars.iv151, 3, !dbg !765
  %arraydecay24 = getelementptr inbounds [3 x float]* %img, i64 %12, i64 0, !dbg !765
  tail call void @llvm.dbg.value(metadata !741, i64 0, metadata !766), !dbg !767
  %mul.i117 = fmul float %11, -1.000000e+00, !dbg !768
  store float %mul.i117, float* %arraydecay24, align 4, !dbg !768, !tbaa !357
  %mul3.i119 = fmul float %10, -1.000000e+00, !dbg !769
  %arrayidx4.i120 = getelementptr inbounds [3 x float]* %img, i64 %12, i64 1, !dbg !769
  store float %mul3.i119, float* %arrayidx4.i120, align 4, !dbg !769, !tbaa !357
  %mul6.i122 = fmul float %9, -1.000000e+00, !dbg !770
  %arrayidx7.i123 = getelementptr inbounds [3 x float]* %img, i64 %12, i64 2, !dbg !770
  store float %mul6.i122, float* %arrayidx7.i123, align 4, !dbg !770, !tbaa !357
  %indvars.iv.next152 = add i64 %indvars.iv151, 1, !dbg !763
  %lftr.wideiv154 = trunc i64 %indvars.iv.next152 to i32, !dbg !763
  %exitcond155 = icmp eq i32 %lftr.wideiv154, 3, !dbg !763
  br i1 %exitcond155, label %for.end, label %for.body.for.body_crit_edge, !dbg !763

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arraydecay21.phi.trans.insert = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next152, i64 0
  %.pre = load float* %arraydecay21.phi.trans.insert, align 4, !dbg !768, !tbaa !357
  %arrayidx2.i118.phi.trans.insert = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next152, i64 1
  %.pre156 = load float* %arrayidx2.i118.phi.trans.insert, align 4, !dbg !769, !tbaa !357
  %arrayidx5.i121.phi.trans.insert = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next152, i64 2
  %.pre157 = load float* %arrayidx5.i121.phi.trans.insert, align 4, !dbg !770, !tbaa !357
  br label %for.body, !dbg !763

for.end:                                          ; preds = %for.body
  %arraydecay26 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !771
  %arraydecay28 = getelementptr inbounds [3 x float]* %img, i64 6, i64 0, !dbg !771
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay26}, i64 0, metadata !772), !dbg !773
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay28}, i64 0, metadata !774), !dbg !773
  %13 = load float* %arraydecay26, align 4, !dbg !775, !tbaa !357
  store float %13, float* %arraydecay28, align 4, !dbg !775, !tbaa !357
  %arrayidx2.i113 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !776
  %14 = load float* %arrayidx2.i113, align 4, !dbg !776, !tbaa !357
  %arrayidx3.i114 = getelementptr inbounds [3 x float]* %img, i64 6, i64 1, !dbg !776
  store float %14, float* %arrayidx3.i114, align 4, !dbg !776, !tbaa !357
  %arrayidx4.i115 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !777
  %15 = load float* %arrayidx4.i115, align 4, !dbg !777, !tbaa !357
  %arrayidx5.i116 = getelementptr inbounds [3 x float]* %img, i64 6, i64 2, !dbg !777
  store float %15, float* %arrayidx5.i116, align 4, !dbg !777, !tbaa !357
  %cmp31 = fcmp olt float %13, 0.000000e+00, !dbg !778
  br i1 %cmp31, label %if.then32, label %for.body40, !dbg !778

if.then32:                                        ; preds = %for.end
  tail call void @llvm.dbg.value(metadata !741, i64 0, metadata !779), !dbg !781
  %mul.i106 = fmul float %13, -1.000000e+00, !dbg !782
  store float %mul.i106, float* %arraydecay28, align 4, !dbg !782, !tbaa !357
  %mul3.i108 = fmul float %14, -1.000000e+00, !dbg !783
  store float %mul3.i108, float* %arrayidx3.i114, align 4, !dbg !783, !tbaa !357
  %mul6.i111 = fmul float %15, -1.000000e+00, !dbg !784
  store float %mul6.i111, float* %arrayidx5.i116, align 4, !dbg !784, !tbaa !357
  br label %for.body40, !dbg !780

for.body40:                                       ; preds = %for.end, %if.then32, %for.body40.for.body40_crit_edge
  %16 = phi float [ %.pre160, %for.body40.for.body40_crit_edge ], [ %mul6.i111, %if.then32 ], [ %15, %for.end ]
  %17 = phi float [ %.pre159, %for.body40.for.body40_crit_edge ], [ %mul3.i108, %if.then32 ], [ %14, %for.end ]
  %18 = phi float [ %.pre158, %for.body40.for.body40_crit_edge ], [ %mul.i106, %if.then32 ], [ %13, %for.end ]
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.body40.for.body40_crit_edge ], [ 0, %if.then32 ], [ 0, %for.end ]
  %indvars.iv.next147 = add i64 %indvars.iv146, 1, !dbg !785
  %arraydecay46 = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next147, i64 0, !dbg !787
  %19 = add nsw i64 %indvars.iv146, 7, !dbg !787
  %arraydecay50 = getelementptr inbounds [3 x float]* %img, i64 %19, i64 0, !dbg !787
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay28}, i64 0, metadata !788), !dbg !789
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay46}, i64 0, metadata !790), !dbg !789
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay50}, i64 0, metadata !791), !dbg !789
  %20 = load float* %arraydecay46, align 4, !dbg !792, !tbaa !357
  %add.i = fadd float %18, %20, !dbg !792
  tail call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !793), !dbg !792
  %arrayidx3.i104 = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next147, i64 1, !dbg !794
  %21 = load float* %arrayidx3.i104, align 4, !dbg !794, !tbaa !357
  %add4.i = fadd float %17, %21, !dbg !794
  tail call void @llvm.dbg.value(metadata !{float %add4.i}, i64 0, metadata !795), !dbg !794
  %arrayidx6.i = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next147, i64 2, !dbg !796
  %22 = load float* %arrayidx6.i, align 4, !dbg !796, !tbaa !357
  %add7.i = fadd float %16, %22, !dbg !796
  tail call void @llvm.dbg.value(metadata !{float %add7.i}, i64 0, metadata !797), !dbg !796
  store float %add.i, float* %arraydecay50, align 4, !dbg !798, !tbaa !357
  %arrayidx9.i = getelementptr inbounds [3 x float]* %img, i64 %19, i64 1, !dbg !799
  store float %add4.i, float* %arrayidx9.i, align 4, !dbg !799, !tbaa !357
  %arrayidx10.i = getelementptr inbounds [3 x float]* %img, i64 %19, i64 2, !dbg !800
  store float %add7.i, float* %arrayidx10.i, align 4, !dbg !800, !tbaa !357
  %lftr.wideiv149 = trunc i64 %indvars.iv.next147 to i32, !dbg !785
  %exitcond150 = icmp eq i32 %lftr.wideiv149, 3, !dbg !785
  br i1 %exitcond150, label %for.body56, label %for.body40.for.body40_crit_edge, !dbg !785

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  %.pre158 = load float* %arraydecay28, align 4, !dbg !792, !tbaa !357
  %.pre159 = load float* %arrayidx3.i114, align 4, !dbg !794, !tbaa !357
  %.pre160 = load float* %arrayidx5.i116, align 4, !dbg !796, !tbaa !357
  br label %for.body40, !dbg !785

for.body56:                                       ; preds = %for.body40, %for.body56
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body56 ], [ 0, %for.body40 ]
  %23 = add nsw i64 %indvars.iv, 2, !dbg !801
  %24 = trunc i64 %23 to i32, !dbg !801
  %rem = srem i32 %24, 4, !dbg !801
  %add58 = add nsw i32 %rem, 6, !dbg !801
  %idxprom59 = sext i32 %add58 to i64, !dbg !801
  %arraydecay61 = getelementptr inbounds [3 x float]* %img, i64 %idxprom59, i64 0, !dbg !801
  %25 = add nsw i64 %indvars.iv, 10, !dbg !801
  %arraydecay65 = getelementptr inbounds [3 x float]* %img, i64 %25, i64 0, !dbg !801
  tail call void @llvm.dbg.value(metadata !741, i64 0, metadata !803), !dbg !804
  %26 = load float* %arraydecay61, align 4, !dbg !805, !tbaa !357
  %mul.i = fmul float %26, -1.000000e+00, !dbg !805
  store float %mul.i, float* %arraydecay65, align 4, !dbg !805, !tbaa !357
  %arrayidx2.i100 = getelementptr inbounds [3 x float]* %img, i64 %idxprom59, i64 1, !dbg !806
  %27 = load float* %arrayidx2.i100, align 4, !dbg !806, !tbaa !357
  %mul3.i = fmul float %27, -1.000000e+00, !dbg !806
  %arrayidx4.i101 = getelementptr inbounds [3 x float]* %img, i64 %25, i64 1, !dbg !806
  store float %mul3.i, float* %arrayidx4.i101, align 4, !dbg !806, !tbaa !357
  %arrayidx5.i102 = getelementptr inbounds [3 x float]* %img, i64 %idxprom59, i64 2, !dbg !807
  %28 = load float* %arrayidx5.i102, align 4, !dbg !807, !tbaa !357
  %mul6.i = fmul float %28, -1.000000e+00, !dbg !807
  %arrayidx7.i = getelementptr inbounds [3 x float]* %img, i64 %25, i64 2, !dbg !807
  store float %mul6.i, float* %arrayidx7.i, align 4, !dbg !807, !tbaa !357
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !808
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !808
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !808
  br i1 %exitcond, label %for.end68, label %for.body56, !dbg !808

for.end68:                                        ; preds = %for.body56
  ret void, !dbg !809
}

; Function Attrs: nounwind optsize uwtable
define void @calc_compact_unitcell_vertices([3 x float]* nocapture %box, [3 x float]* nocapture %vert) #2 {
entry:
  %img = alloca [14 x [3 x float]], align 16
  %box_center = alloca [3 x float], align 4
  %tmp = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !228), !dbg !810
  call void @llvm.dbg.value(metadata !{[3 x float]* %vert}, i64 0, metadata !229), !dbg !810
  %0 = bitcast [14 x [3 x float]]* %img to i8*, !dbg !811
  call void @llvm.lifetime.start(i64 168, i8* %0) #5, !dbg !811
  call void @llvm.dbg.declare(metadata !{[14 x [3 x float]]* %img}, metadata !230), !dbg !811
  call void @llvm.dbg.declare(metadata !{[3 x float]* %box_center}, metadata !234), !dbg !811
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %tmp}, metadata !238), !dbg !812
  %arraydecay = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 0, !dbg !813
  call void @calc_triclinic_images([3 x float]* %box, [3 x float]* %arraydecay) #7, !dbg !813
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !235), !dbg !814
  call void @llvm.dbg.value(metadata !815, i64 0, metadata !236), !dbg !816
  %arrayidx = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 0, !dbg !818
  %arrayidx3 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 1, !dbg !820
  %arrayidx5 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 2, !dbg !821
  %arrayidx8 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 3, !dbg !822
  br label %for.body, !dbg !816

for.body:                                         ; preds = %entry, %for.inc42
  %indvars.iv324 = phi i64 [ 0, %entry ], [ %indvars.iv.next325, %for.inc42 ], !dbg !816
  %indvars.iv320 = phi i64 [ 2, %entry ], [ %indvars.iv.next321, %for.inc42 ]
  %1 = add nsw i64 %indvars.iv320, 4294967295, !dbg !818
  %2 = trunc i64 %1 to i32, !dbg !818
  store i32 %2, i32* %arrayidx, align 16, !dbg !818, !tbaa !387
  %3 = trunc i64 %indvars.iv320 to i32, !dbg !823
  %cmp2 = icmp eq i32 %3, 2, !dbg !823
  %. = select i1 %cmp2, i32 8, i32 6, !dbg !820
  store i32 %., i32* %arrayidx3, align 4, !dbg !820, !tbaa !387
  %4 = add nsw i64 %indvars.iv320, 1, !dbg !821
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %5, 6
  %tmp319 = select i1 %6, i32 0, i32 %5
  store i32 %tmp319, i32* %arrayidx5, align 8, !dbg !821, !tbaa !387
  %add7 = add nsw i32 %., 4, !dbg !822
  store i32 %add7, i32* %arrayidx8, align 4, !dbg !822, !tbaa !387
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !237), !dbg !824
  br label %for.cond12.preheader, !dbg !824

for.cond12.preheader:                             ; preds = %for.end.for.cond12.preheader_crit_edge, %for.body
  %7 = phi i32 [ %2, %for.body ], [ %.pre, %for.end.for.cond12.preheader_crit_edge ]
  %indvars.iv315 = phi i64 [ %indvars.iv324, %for.body ], [ %indvars.iv.next316, %for.end.for.cond12.preheader_crit_edge ], !dbg !824
  %indvars.iv313 = phi i64 [ 1, %for.body ], [ %phitmp, %for.end.for.cond12.preheader_crit_edge ]
  %idxprom21 = sext i32 %7 to i64, !dbg !826
  %8 = trunc i64 %indvars.iv313 to i32
  %9 = icmp eq i32 %8, 4
  %sext = shl i64 %indvars.iv313, 32, !dbg !826
  %10 = ashr exact i64 %sext, 32, !dbg !826
  %idxprom28 = select i1 %9, i64 0, i64 %10, !dbg !826
  %arrayidx29 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %idxprom28, !dbg !826
  %11 = load i32* %arrayidx29, align 4, !dbg !826, !tbaa !387
  %idxprom30 = sext i32 %11 to i64, !dbg !826
  br label %for.body14, !dbg !829

for.body14:                                       ; preds = %for.body14, %for.cond12.preheader
  %indvars.iv308 = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next309, %for.body14 ]
  %arrayidx17 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %indvars.iv320, i64 %indvars.iv308, !dbg !826
  %12 = load float* %arrayidx17, align 4, !dbg !826, !tbaa !357
  %arrayidx23 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %idxprom21, i64 %indvars.iv308, !dbg !826
  %13 = load float* %arrayidx23, align 4, !dbg !826, !tbaa !357
  %add24 = fadd float %12, %13, !dbg !826
  %arrayidx32 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %idxprom30, i64 %indvars.iv308, !dbg !826
  %14 = load float* %arrayidx32, align 4, !dbg !826, !tbaa !357
  %add33 = fadd float %add24, %14, !dbg !826
  %arrayidx37 = getelementptr inbounds [3 x float]* %vert, i64 %indvars.iv315, i64 %indvars.iv308, !dbg !826
  store float %add33, float* %arrayidx37, align 4, !dbg !826, !tbaa !357
  %indvars.iv.next309 = add i64 %indvars.iv308, 1, !dbg !829
  %lftr.wideiv310 = trunc i64 %indvars.iv.next309 to i32, !dbg !829
  %exitcond311 = icmp eq i32 %lftr.wideiv310, 3, !dbg !829
  br i1 %exitcond311, label %for.end, label %for.body14, !dbg !829

for.end:                                          ; preds = %for.body14
  call void @llvm.dbg.value(metadata !830, i64 0, metadata !235), !dbg !831
  %exitcond318 = icmp eq i32 %8, 4, !dbg !824
  br i1 %exitcond318, label %for.inc42, label %for.end.for.cond12.preheader_crit_edge, !dbg !824

for.end.for.cond12.preheader_crit_edge:           ; preds = %for.end
  %indvars.iv.next316 = add i64 %indvars.iv315, 1, !dbg !824
  %arrayidx20.phi.trans.insert = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %indvars.iv313
  %.pre = load i32* %arrayidx20.phi.trans.insert, align 4, !dbg !826, !tbaa !387
  %phitmp = add i64 %indvars.iv313, 1, !dbg !824
  br label %for.cond12.preheader, !dbg !824

for.inc42:                                        ; preds = %for.end
  %indvars.iv.next325 = add i64 %indvars.iv324, 4, !dbg !816
  %indvars.iv.next321 = add i64 %indvars.iv320, 3, !dbg !816
  %15 = trunc i64 %indvars.iv.next321 to i32, !dbg !816
  %cmp = icmp slt i32 %15, 6, !dbg !816
  br i1 %cmp, label %for.body, label %for.body47, !dbg !816

for.body47:                                       ; preds = %for.inc42, %for.inc98
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %for.inc98 ], [ 7, %for.inc42 ]
  %n.2266 = phi i32 [ %30, %for.inc98 ], [ 8, %for.inc42 ]
  %16 = add nsw i64 %indvars.iv304, 4294967289, !dbg !832
  %17 = trunc i64 %16 to i32, !dbg !832
  %div = sdiv i32 %17, 2, !dbg !832
  store i32 %div, i32* %arrayidx, align 16, !dbg !832, !tbaa !387
  %add51 = add nsw i32 %div, 1, !dbg !835
  store i32 %add51, i32* %arrayidx3, align 4, !dbg !835, !tbaa !387
  %18 = trunc i64 %indvars.iv304 to i32, !dbg !836
  %cmp53 = icmp eq i32 %18, 7, !dbg !836
  %.254 = select i1 %cmp53, i32 8, i32 10, !dbg !837
  store i32 %.254, i32* %arrayidx5, align 8, !dbg !838, !tbaa !387
  %19 = add nsw i64 %indvars.iv304, 4294967295, !dbg !839
  %20 = trunc i64 %19 to i32, !dbg !839
  store i32 %20, i32* %arrayidx8, align 4, !dbg !839, !tbaa !387
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !237), !dbg !840
  %21 = sext i32 %n.2266 to i64, !dbg !840
  br label %for.cond64.preheader, !dbg !840

for.cond64.preheader:                             ; preds = %for.end93.for.cond64.preheader_crit_edge, %for.body47
  %22 = phi i32 [ %div, %for.body47 ], [ %.pre326, %for.end93.for.cond64.preheader_crit_edge ]
  %indvars.iv300 = phi i64 [ %21, %for.body47 ], [ %indvars.iv.next301, %for.end93.for.cond64.preheader_crit_edge ], !dbg !840
  %indvars.iv298 = phi i64 [ 1, %for.body47 ], [ %phitmp328, %for.end93.for.cond64.preheader_crit_edge ]
  %idxprom74 = sext i32 %22 to i64, !dbg !842
  %23 = trunc i64 %indvars.iv298 to i32
  %24 = icmp eq i32 %23, 4
  %sext329 = shl i64 %indvars.iv298, 32, !dbg !842
  %25 = ashr exact i64 %sext329, 32, !dbg !842
  %idxprom81 = select i1 %24, i64 0, i64 %25, !dbg !842
  %arrayidx82 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %idxprom81, !dbg !842
  %26 = load i32* %arrayidx82, align 4, !dbg !842, !tbaa !387
  %idxprom83 = sext i32 %26 to i64, !dbg !842
  br label %for.body66, !dbg !845

for.body66:                                       ; preds = %for.body66, %for.cond64.preheader
  %indvars.iv293 = phi i64 [ 0, %for.cond64.preheader ], [ %indvars.iv.next294, %for.body66 ]
  %arrayidx70 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %indvars.iv304, i64 %indvars.iv293, !dbg !842
  %27 = load float* %arrayidx70, align 4, !dbg !842, !tbaa !357
  %arrayidx76 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %idxprom74, i64 %indvars.iv293, !dbg !842
  %28 = load float* %arrayidx76, align 4, !dbg !842, !tbaa !357
  %add77 = fadd float %27, %28, !dbg !842
  %arrayidx85 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %idxprom83, i64 %indvars.iv293, !dbg !842
  %29 = load float* %arrayidx85, align 4, !dbg !842, !tbaa !357
  %add86 = fadd float %add77, %29, !dbg !842
  %arrayidx90 = getelementptr inbounds [3 x float]* %vert, i64 %indvars.iv300, i64 %indvars.iv293, !dbg !842
  store float %add86, float* %arrayidx90, align 4, !dbg !842, !tbaa !357
  %indvars.iv.next294 = add i64 %indvars.iv293, 1, !dbg !845
  %lftr.wideiv295 = trunc i64 %indvars.iv.next294 to i32, !dbg !845
  %exitcond296 = icmp eq i32 %lftr.wideiv295, 3, !dbg !845
  br i1 %exitcond296, label %for.end93, label %for.body66, !dbg !845

for.end93:                                        ; preds = %for.body66
  call void @llvm.dbg.value(metadata !846, i64 0, metadata !235), !dbg !847
  %exitcond303 = icmp eq i32 %23, 4, !dbg !840
  br i1 %exitcond303, label %for.inc98, label %for.end93.for.cond64.preheader_crit_edge, !dbg !840

for.end93.for.cond64.preheader_crit_edge:         ; preds = %for.end93
  %indvars.iv.next301 = add i64 %indvars.iv300, 1, !dbg !840
  %arrayidx73.phi.trans.insert = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %indvars.iv298
  %.pre326 = load i32* %arrayidx73.phi.trans.insert, align 4, !dbg !842, !tbaa !387
  %phitmp328 = add i64 %indvars.iv298, 1, !dbg !840
  br label %for.cond64.preheader, !dbg !840

for.inc98:                                        ; preds = %for.end93
  %30 = add i32 %n.2266, 4, !dbg !840
  %indvars.iv.next305 = add i64 %indvars.iv304, 6, !dbg !848
  %31 = trunc i64 %indvars.iv.next305 to i32, !dbg !848
  %cmp46 = icmp slt i32 %31, 14, !dbg !848
  br i1 %cmp46, label %for.body47, label %for.body103, !dbg !848

for.body103:                                      ; preds = %for.inc98, %for.inc158
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %for.inc158 ], [ 9, %for.inc98 ]
  %n.4261 = phi i32 [ %44, %for.inc158 ], [ 16, %for.inc98 ]
  %32 = trunc i64 %indvars.iv290 to i32, !dbg !849
  %cmp104 = icmp eq i32 %32, 9, !dbg !849
  %.255 = select i1 %cmp104, i32 3, i32 0, !dbg !852
  store i32 %.255, i32* %arrayidx, align 16, !dbg !853, !tbaa !387
  %add111 = add nsw i32 %.255, 1, !dbg !854
  store i32 %add111, i32* %arrayidx3, align 4, !dbg !854, !tbaa !387
  %storemerge = select i1 %cmp104, i32 6, i32 12, !dbg !855
  store i32 %storemerge, i32* %arrayidx5, align 8, !dbg !856, !tbaa !387
  %33 = add nsw i64 %indvars.iv290, 4294967295, !dbg !857
  %34 = trunc i64 %33 to i32, !dbg !857
  store i32 %34, i32* %arrayidx8, align 4, !dbg !857, !tbaa !387
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !237), !dbg !858
  %35 = sext i32 %n.4261 to i64, !dbg !858
  br label %for.cond124.preheader, !dbg !858

for.cond124.preheader:                            ; preds = %for.end153.for.cond124.preheader_crit_edge, %for.body103
  %36 = phi i32 [ %.255, %for.body103 ], [ %.pre327, %for.end153.for.cond124.preheader_crit_edge ]
  %indvars.iv286 = phi i64 [ %35, %for.body103 ], [ %indvars.iv.next287, %for.end153.for.cond124.preheader_crit_edge ], !dbg !858
  %indvars.iv284 = phi i64 [ 1, %for.body103 ], [ %phitmp330, %for.end153.for.cond124.preheader_crit_edge ]
  %idxprom134 = sext i32 %36 to i64, !dbg !860
  %37 = trunc i64 %indvars.iv284 to i32
  %38 = icmp eq i32 %37, 4
  %sext331 = shl i64 %indvars.iv284, 32, !dbg !860
  %39 = ashr exact i64 %sext331, 32, !dbg !860
  %idxprom141 = select i1 %38, i64 0, i64 %39, !dbg !860
  %arrayidx142 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %idxprom141, !dbg !860
  %40 = load i32* %arrayidx142, align 4, !dbg !860, !tbaa !387
  %idxprom143 = sext i32 %40 to i64, !dbg !860
  br label %for.body126, !dbg !863

for.body126:                                      ; preds = %for.body126, %for.cond124.preheader
  %indvars.iv279 = phi i64 [ 0, %for.cond124.preheader ], [ %indvars.iv.next280, %for.body126 ]
  %arrayidx130 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %indvars.iv290, i64 %indvars.iv279, !dbg !860
  %41 = load float* %arrayidx130, align 4, !dbg !860, !tbaa !357
  %arrayidx136 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %idxprom134, i64 %indvars.iv279, !dbg !860
  %42 = load float* %arrayidx136, align 4, !dbg !860, !tbaa !357
  %add137 = fadd float %41, %42, !dbg !860
  %arrayidx145 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %idxprom143, i64 %indvars.iv279, !dbg !860
  %43 = load float* %arrayidx145, align 4, !dbg !860, !tbaa !357
  %add146 = fadd float %add137, %43, !dbg !860
  %arrayidx150 = getelementptr inbounds [3 x float]* %vert, i64 %indvars.iv286, i64 %indvars.iv279, !dbg !860
  store float %add146, float* %arrayidx150, align 4, !dbg !860, !tbaa !357
  %indvars.iv.next280 = add i64 %indvars.iv279, 1, !dbg !863
  %lftr.wideiv281 = trunc i64 %indvars.iv.next280 to i32, !dbg !863
  %exitcond282 = icmp eq i32 %lftr.wideiv281, 3, !dbg !863
  br i1 %exitcond282, label %for.end153, label %for.body126, !dbg !863

for.end153:                                       ; preds = %for.body126
  call void @llvm.dbg.value(metadata !{i32 %44}, i64 0, metadata !235), !dbg !864
  %exitcond289 = icmp eq i32 %37, 4, !dbg !858
  br i1 %exitcond289, label %for.inc158, label %for.end153.for.cond124.preheader_crit_edge, !dbg !858

for.end153.for.cond124.preheader_crit_edge:       ; preds = %for.end153
  %indvars.iv.next287 = add i64 %indvars.iv286, 1, !dbg !858
  %arrayidx133.phi.trans.insert = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %indvars.iv284
  %.pre327 = load i32* %arrayidx133.phi.trans.insert, align 4, !dbg !860, !tbaa !387
  %phitmp330 = add i64 %indvars.iv284, 1, !dbg !858
  br label %for.cond124.preheader, !dbg !858

for.inc158:                                       ; preds = %for.end153
  %44 = add i32 %n.4261, 4, !dbg !858
  %indvars.iv.next291 = add i64 %indvars.iv290, 2, !dbg !865
  %45 = trunc i64 %indvars.iv.next291 to i32, !dbg !865
  %cmp102 = icmp slt i32 %45, 12, !dbg !865
  br i1 %cmp102, label %for.body103, label %for.body.i, !dbg !865

for.body.i:                                       ; preds = %for.inc158, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.inc158 ]
  %arrayidx2.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 %indvars.iv.i, !dbg !866
  %46 = load float* %arrayidx2.i, align 4, !dbg !866, !tbaa !357
  %conv3.i = fmul float %46, 5.000000e-01, !dbg !866
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv.i, !dbg !866
  store float %conv3.i, float* %arrayidx5.i, align 4, !dbg !866, !tbaa !357
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !868
  %lftr.wideiv277 = trunc i64 %indvars.iv.next.i to i32, !dbg !868
  %exitcond278 = icmp eq i32 %lftr.wideiv277, 3, !dbg !868
  br i1 %exitcond278, label %for.cond165.preheader, label %for.body.i, !dbg !868

for.cond165.preheader:                            ; preds = %for.body.i, %for.inc184
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %for.inc184 ], [ 0, %for.body.i ]
  br label %for.body167, !dbg !869

for.body167:                                      ; preds = %for.body167, %for.cond165.preheader
  %indvars.iv = phi i64 [ 0, %for.cond165.preheader ], [ %indvars.iv.next, %for.body167 ]
  %arrayidx171 = getelementptr inbounds [3 x float]* %vert, i64 %indvars.iv273, i64 %indvars.iv, !dbg !872
  %47 = load float* %arrayidx171, align 4, !dbg !872, !tbaa !357
  %conv = fpext float %47 to double, !dbg !872
  %mul = fmul double %conv, 2.500000e-01, !dbg !872
  %arrayidx173 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv, !dbg !872
  %48 = load float* %arrayidx173, align 4, !dbg !872, !tbaa !357
  %conv174 = fpext float %48 to double, !dbg !872
  %add175 = fadd double %mul, %conv174, !dbg !872
  %conv176 = fptrunc double %add175 to float, !dbg !872
  store float %conv176, float* %arrayidx171, align 4, !dbg !872, !tbaa !357
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !869
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !869
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !869
  br i1 %exitcond, label %for.inc184, label %for.body167, !dbg !869

for.inc184:                                       ; preds = %for.body167
  %indvars.iv.next274 = add i64 %indvars.iv273, 1, !dbg !873
  %lftr.wideiv275 = trunc i64 %indvars.iv.next274 to i32, !dbg !873
  %exitcond276 = icmp eq i32 %lftr.wideiv275, 24, !dbg !873
  br i1 %exitcond276, label %for.end186, label %for.cond165.preheader, !dbg !873

for.end186:                                       ; preds = %for.inc184
  call void @llvm.lifetime.end(i64 168, i8* %0) #5, !dbg !874
  ret void, !dbg !874
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define i32* @compact_unitcell_edges() #2 {
entry:
  tail call void @llvm.dbg.value(metadata !875, i64 0, metadata !250), !dbg !876
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !247), !dbg !877
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !248), !dbg !879
  br label %for.cond1.preheader, !dbg !879

for.cond1.preheader:                              ; preds = %for.inc11, %entry
  %indvars.iv48 = phi i64 [ 0, %entry ], [ %indvars.iv.next49, %for.inc11 ]
  %i.040 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ]
  %mul = shl nsw i32 %i.040, 2, !dbg !881
  br label %for.body3, !dbg !884

for.cond14.preheader:                             ; preds = %for.inc11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([72 x i32]* @compact_unitcell_edges.edge, i64 0, i64 48) to i8*), i8* bitcast ([24 x i32]* @compact_unitcell_edges.hexcon to i8*), i64 96, i32 16, i1 false), !dbg !885
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !250), !dbg !887
  ret i32* getelementptr inbounds ([72 x i32]* @compact_unitcell_edges.edge, i64 0, i64 0), !dbg !888

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ %indvars.iv48, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %j.038 = phi i32 [ 0, %for.cond1.preheader ], [ %add5, %for.body3 ]
  %add = add nsw i32 %j.038, %mul, !dbg !881
  %0 = or i64 %indvars.iv, 1, !dbg !881
  %arrayidx = getelementptr inbounds [72 x i32]* @compact_unitcell_edges.edge, i64 0, i64 %indvars.iv, !dbg !881
  store i32 %add, i32* %arrayidx, align 8, !dbg !881, !tbaa !387
  %add5 = add nsw i32 %j.038, 1, !dbg !889
  %1 = icmp eq i32 %add5, 4
  %tmp = select i1 %1, i32 0, i32 %add5
  %add6 = add nsw i32 %tmp, %mul, !dbg !889
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !884
  %arrayidx9 = getelementptr inbounds [72 x i32]* @compact_unitcell_edges.edge, i64 0, i64 %0, !dbg !889
  store i32 %add6, i32* %arrayidx9, align 4, !dbg !889, !tbaa !387
  tail call void @llvm.dbg.value(metadata !{i32 %add5}, i64 0, metadata !249), !dbg !884
  %exitcond = icmp eq i32 %add5, 4, !dbg !884
  br i1 %exitcond, label %for.inc11, label %for.body3, !dbg !884

for.inc11:                                        ; preds = %for.body3
  %indvars.iv.next49 = add i64 %indvars.iv48, 8, !dbg !879
  %inc12 = add nsw i32 %i.040, 1, !dbg !879
  tail call void @llvm.dbg.value(metadata !{i32 %inc12}, i64 0, metadata !248), !dbg !879
  %exitcond50 = icmp eq i32 %inc12, 6, !dbg !879
  br i1 %exitcond50, label %for.cond14.preheader, label %for.cond1.preheader, !dbg !879
}

; Function Attrs: nounwind optsize uwtable
define void @put_atoms_in_box([3 x float]* nocapture %box, i32 %natoms, [3 x float]* nocapture %x) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !255), !dbg !890
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !256), !dbg !890
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !257), !dbg !890
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !258), !dbg !891
  %cmp85 = icmp sgt i32 %natoms, 0, !dbg !891
  br i1 %cmp85, label %for.cond1.preheader, label %for.end48, !dbg !891

for.cond1.preheader:                              ; preds = %entry, %for.inc46
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.inc46 ], [ 0, %entry ]
  br label %while.cond.preheader, !dbg !893

while.cond.preheader:                             ; preds = %for.cond1.preheader, %for.inc44
  %indvars.iv95 = phi i64 [ 2, %for.cond1.preheader ], [ %indvars.iv.next96, %for.inc44 ]
  %indvars.iv91 = phi i32 [ 3, %for.cond1.preheader ], [ %indvars.iv.next92, %for.inc44 ], !dbg !895
  %arrayidx5 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv97, i64 %indvars.iv95, !dbg !898
  %0 = load float* %arrayidx5, align 4, !dbg !898, !tbaa !357
  %cmp677 = fcmp olt float %0, 0.000000e+00, !dbg !898
  br i1 %cmp677, label %for.body9, label %while.cond18.loopexit, !dbg !898

while.cond.loopexit:                              ; preds = %for.body9
  %.pre102 = load float* %arrayidx5, align 4, !dbg !898, !tbaa !357
  %cmp6 = fcmp olt float %.pre102, 0.000000e+00, !dbg !898
  br i1 %cmp6, label %for.body9, label %while.cond18.loopexit, !dbg !898

for.body9:                                        ; preds = %while.cond.preheader, %while.cond.loopexit, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %while.cond.loopexit ], [ 0, %while.cond.preheader ]
  %arrayidx13 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv95, i64 %indvars.iv, !dbg !899
  %1 = load float* %arrayidx13, align 4, !dbg !899, !tbaa !357
  %arrayidx17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv97, i64 %indvars.iv, !dbg !899
  %2 = load float* %arrayidx17, align 4, !dbg !899, !tbaa !357
  %add = fadd float %1, %2, !dbg !899
  store float %add, float* %arrayidx17, align 4, !dbg !899, !tbaa !357
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !901
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !901
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv91, !dbg !901
  br i1 %exitcond, label %while.cond.loopexit, label %for.body9, !dbg !901

while.cond18.loopexit:                            ; preds = %while.cond.loopexit, %while.cond.preheader
  %3 = phi float [ %0, %while.cond.preheader ], [ %.pre102, %while.cond.loopexit ]
  %arrayidx26 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv95, i64 %indvars.iv95, !dbg !902
  %4 = load float* %arrayidx26, align 4, !dbg !902, !tbaa !357
  %cmp2783 = fcmp ult float %3, %4, !dbg !902
  br i1 %cmp2783, label %for.inc44, label %for.body31, !dbg !902

while.cond18.loopexit80:                          ; preds = %for.body31
  %.pre = load float* %arrayidx5, align 4, !dbg !902, !tbaa !357
  %.pre101 = load float* %arrayidx26, align 4, !dbg !902, !tbaa !357
  %cmp27 = fcmp ult float %.pre, %.pre101, !dbg !902
  br i1 %cmp27, label %for.inc44, label %for.body31, !dbg !902

for.body31:                                       ; preds = %while.cond18.loopexit, %while.cond18.loopexit80, %for.body31
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %for.body31 ], [ 0, %while.cond18.loopexit80 ], [ 0, %while.cond18.loopexit ]
  %arrayidx35 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv95, i64 %indvars.iv89, !dbg !903
  %5 = load float* %arrayidx35, align 4, !dbg !903, !tbaa !357
  %arrayidx39 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv97, i64 %indvars.iv89, !dbg !903
  %6 = load float* %arrayidx39, align 4, !dbg !903, !tbaa !357
  %sub = fsub float %6, %5, !dbg !903
  store float %sub, float* %arrayidx39, align 4, !dbg !903, !tbaa !357
  %indvars.iv.next90 = add i64 %indvars.iv89, 1, !dbg !895
  %lftr.wideiv93 = trunc i64 %indvars.iv.next90 to i32, !dbg !895
  %exitcond94 = icmp eq i32 %lftr.wideiv93, %indvars.iv91, !dbg !895
  br i1 %exitcond94, label %while.cond18.loopexit80, label %for.body31, !dbg !895

for.inc44:                                        ; preds = %while.cond18.loopexit80, %while.cond18.loopexit
  %indvars.iv.next96 = add i64 %indvars.iv95, -1, !dbg !893
  %7 = trunc i64 %indvars.iv95 to i32, !dbg !893
  %cmp2 = icmp sgt i32 %7, 0, !dbg !893
  %indvars.iv.next92 = add i32 %indvars.iv91, -1, !dbg !893
  br i1 %cmp2, label %while.cond.preheader, label %for.inc46, !dbg !893

for.inc46:                                        ; preds = %for.inc44
  %indvars.iv.next98 = add i64 %indvars.iv97, 1, !dbg !891
  %lftr.wideiv99 = trunc i64 %indvars.iv.next98 to i32, !dbg !891
  %exitcond100 = icmp eq i32 %lftr.wideiv99, %natoms, !dbg !891
  br i1 %exitcond100, label %for.end48, label %for.cond1.preheader, !dbg !891

for.end48:                                        ; preds = %for.inc46, %entry
  ret void, !dbg !904
}

; Function Attrs: nounwind optsize uwtable
define void @put_atoms_in_triclinic_unitcell([3 x float]* nocapture %box, i32 %natoms, [3 x float]* nocapture %x) #2 {
entry:
  %box_center = alloca [3 x float], align 4
  %shift_mat = alloca [3 x [3 x float]], align 16
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !263), !dbg !905
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !264), !dbg !905
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !265), !dbg !905
  call void @llvm.dbg.declare(metadata !{[3 x float]* %box_center}, metadata !266), !dbg !906
  %0 = bitcast [3 x [3 x float]]* %shift_mat to i8*, !dbg !907
  call void @llvm.lifetime.start(i64 36, i8* %0) #5, !dbg !907
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %shift_mat}, metadata !267), !dbg !907
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !908), !dbg !910
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !911), !dbg !912
  br label %for.body.i, !dbg !912

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx2.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 %indvars.iv.i, !dbg !913
  %1 = load float* %arrayidx2.i, align 4, !dbg !913, !tbaa !357
  %conv3.i = fmul float %1, 5.000000e-01, !dbg !913
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv.i, !dbg !913
  store float %conv3.i, float* %arrayidx5.i, align 4, !dbg !913, !tbaa !357
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !912
  %lftr.wideiv199 = trunc i64 %indvars.iv.next.i to i32, !dbg !912
  %exitcond200 = icmp eq i32 %lftr.wideiv199, 3, !dbg !912
  br i1 %exitcond200, label %for.cond1.preheader, label %for.body.i, !dbg !912

for.cond1.preheader:                              ; preds = %for.body.i, %for.inc14
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %for.inc14 ], [ 2, %for.body.i ]
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %for.inc14 ], [ 3, %for.body.i ]
  %2 = add nsw i64 %indvars.iv196, 1, !dbg !914
  %3 = trunc i64 %2 to i32, !dbg !914
  %cmp2166 = icmp slt i32 %3, 3, !dbg !914
  br i1 %cmp2166, label %for.body3, label %for.inc14, !dbg !914

for.cond16.preheader:                             ; preds = %for.inc14
  %cmp17163 = icmp sgt i32 %natoms, 0, !dbg !917
  br i1 %cmp17163, label %for.cond19.preheader, label %for.end94, !dbg !917

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %for.body3 ], [ %indvars.iv190, %for.cond1.preheader ], !dbg !919
  %arrayidx5 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv192, i64 %indvars.iv196, !dbg !920
  %4 = load float* %arrayidx5, align 4, !dbg !920, !tbaa !357
  %arrayidx9 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv192, i64 %indvars.iv192, !dbg !920
  %5 = load float* %arrayidx9, align 4, !dbg !920, !tbaa !357
  %div = fdiv float %4, %5, !dbg !920
  %arrayidx13 = getelementptr inbounds [3 x [3 x float]]* %shift_mat, i64 0, i64 %indvars.iv192, i64 %indvars.iv196, !dbg !920
  store float %div, float* %arrayidx13, align 4, !dbg !920, !tbaa !357
  %indvars.iv.next193 = add i64 %indvars.iv192, 1, !dbg !914
  %lftr.wideiv194 = trunc i64 %indvars.iv.next193 to i32, !dbg !914
  %exitcond195 = icmp eq i32 %lftr.wideiv194, 3, !dbg !914
  br i1 %exitcond195, label %for.inc14, label %for.body3, !dbg !914

for.inc14:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv.next197 = add i64 %indvars.iv196, -1, !dbg !919
  %6 = trunc i64 %indvars.iv196 to i32, !dbg !919
  %cmp = icmp sgt i32 %6, 0, !dbg !919
  %indvars.iv.next191 = add i64 %indvars.iv190, -1, !dbg !919
  br i1 %cmp, label %for.cond1.preheader, label %for.cond16.preheader, !dbg !919

for.cond19.preheader:                             ; preds = %for.cond16.preheader, %for.inc92
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %for.inc92 ], [ 0, %for.cond16.preheader ]
  br label %for.cond23.preheader, !dbg !921

for.cond23.preheader:                             ; preds = %for.cond19.preheader, %for.inc89
  %indvars.iv183 = phi i64 [ 2, %for.cond19.preheader ], [ %indvars.iv.next184, %for.inc89 ]
  %indvars.iv179 = phi i32 [ 3, %for.cond19.preheader ], [ %indvars.iv.next180, %for.inc89 ], !dbg !923
  %indvars.iv = phi i64 [ 3, %for.cond19.preheader ], [ %indvars.iv.next, %for.inc89 ]
  %7 = add nsw i64 %indvars.iv183, 1, !dbg !926
  %8 = trunc i64 %7 to i32, !dbg !926
  %cmp24146 = icmp slt i32 %8, 3, !dbg !926
  br i1 %cmp24146, label %for.body25, label %while.cond.loopexit, !dbg !926

for.body25:                                       ; preds = %for.cond23.preheader, %for.body25
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %for.body25 ], [ %indvars.iv, %for.cond23.preheader ], !dbg !921
  %shift.0147 = phi float [ %add36, %for.body25 ], [ 0.000000e+00, %for.cond23.preheader ]
  %arrayidx29 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv186, i64 %indvars.iv169, !dbg !928
  %9 = load float* %arrayidx29, align 4, !dbg !928, !tbaa !357
  %arrayidx31 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv169, !dbg !928
  %10 = load float* %arrayidx31, align 4, !dbg !928, !tbaa !357
  %sub = fsub float %9, %10, !dbg !928
  %arrayidx35 = getelementptr inbounds [3 x [3 x float]]* %shift_mat, i64 0, i64 %indvars.iv169, i64 %indvars.iv183, !dbg !928
  %11 = load float* %arrayidx35, align 4, !dbg !928, !tbaa !357
  %mul = fmul float %sub, %11, !dbg !928
  %add36 = fadd float %shift.0147, %mul, !dbg !928
  call void @llvm.dbg.value(metadata !{float %add36}, i64 0, metadata !271), !dbg !928
  %indvars.iv.next170 = add i64 %indvars.iv169, 1, !dbg !926
  %lftr.wideiv = trunc i64 %indvars.iv.next170 to i32, !dbg !926
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !926
  br i1 %exitcond, label %while.cond.loopexit, label %for.body25, !dbg !926

while.cond.loopexit:                              ; preds = %for.body25, %for.cond23.preheader
  %shift.0.lcssa = phi float [ 0.000000e+00, %for.cond23.preheader ], [ %add36, %for.body25 ]
  %arrayidx43 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv186, i64 %indvars.iv183, !dbg !929
  %12 = load float* %arrayidx43, align 4, !dbg !929, !tbaa !357
  %sub44152 = fsub float %12, %shift.0.lcssa, !dbg !929
  %cmp45153 = fcmp olt float %sub44152, 0.000000e+00, !dbg !929
  br i1 %cmp45153, label %for.body48, label %while.cond61.loopexit, !dbg !929

while.cond.loopexit149:                           ; preds = %for.body48
  %.pre202 = load float* %arrayidx43, align 4, !dbg !929, !tbaa !357
  %sub44 = fsub float %.pre202, %shift.0.lcssa, !dbg !929
  %cmp45 = fcmp olt float %sub44, 0.000000e+00, !dbg !929
  br i1 %cmp45, label %for.body48, label %while.cond61.loopexit, !dbg !929

for.body48:                                       ; preds = %while.cond.loopexit, %while.cond.loopexit149, %for.body48
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %for.body48 ], [ 0, %while.cond.loopexit149 ], [ 0, %while.cond.loopexit ]
  %arrayidx52 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv183, i64 %indvars.iv171, !dbg !930
  %13 = load float* %arrayidx52, align 4, !dbg !930, !tbaa !357
  %arrayidx56 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv186, i64 %indvars.iv171, !dbg !930
  %14 = load float* %arrayidx56, align 4, !dbg !930, !tbaa !357
  %add57 = fadd float %13, %14, !dbg !930
  store float %add57, float* %arrayidx56, align 4, !dbg !930, !tbaa !357
  %indvars.iv.next172 = add i64 %indvars.iv171, 1, !dbg !932
  %lftr.wideiv175 = trunc i64 %indvars.iv.next172 to i32, !dbg !932
  %exitcond176 = icmp eq i32 %lftr.wideiv175, %indvars.iv179, !dbg !932
  br i1 %exitcond176, label %while.cond.loopexit149, label %for.body48, !dbg !932

while.cond61.loopexit:                            ; preds = %while.cond.loopexit149, %while.cond.loopexit
  %15 = phi float [ %12, %while.cond.loopexit ], [ %.pre202, %while.cond.loopexit149 ]
  %sub66160 = fsub float %15, %shift.0.lcssa, !dbg !933
  %arrayidx70 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv183, i64 %indvars.iv183, !dbg !933
  %16 = load float* %arrayidx70, align 4, !dbg !933, !tbaa !357
  %cmp71161 = fcmp ult float %sub66160, %16, !dbg !933
  br i1 %cmp71161, label %for.inc89, label %for.body75, !dbg !933

while.cond61.loopexit157:                         ; preds = %for.body75
  %.pre = load float* %arrayidx43, align 4, !dbg !933, !tbaa !357
  %.pre201 = load float* %arrayidx70, align 4, !dbg !933, !tbaa !357
  %sub66 = fsub float %.pre, %shift.0.lcssa, !dbg !933
  %cmp71 = fcmp ult float %sub66, %.pre201, !dbg !933
  br i1 %cmp71, label %for.inc89, label %for.body75, !dbg !933

for.body75:                                       ; preds = %while.cond61.loopexit, %while.cond61.loopexit157, %for.body75
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %for.body75 ], [ 0, %while.cond61.loopexit157 ], [ 0, %while.cond61.loopexit ]
  %arrayidx79 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv183, i64 %indvars.iv177, !dbg !934
  %17 = load float* %arrayidx79, align 4, !dbg !934, !tbaa !357
  %arrayidx83 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv186, i64 %indvars.iv177, !dbg !934
  %18 = load float* %arrayidx83, align 4, !dbg !934, !tbaa !357
  %sub84 = fsub float %18, %17, !dbg !934
  store float %sub84, float* %arrayidx83, align 4, !dbg !934, !tbaa !357
  %indvars.iv.next178 = add i64 %indvars.iv177, 1, !dbg !923
  %lftr.wideiv181 = trunc i64 %indvars.iv.next178 to i32, !dbg !923
  %exitcond182 = icmp eq i32 %lftr.wideiv181, %indvars.iv179, !dbg !923
  br i1 %exitcond182, label %while.cond61.loopexit157, label %for.body75, !dbg !923

for.inc89:                                        ; preds = %while.cond61.loopexit157, %while.cond61.loopexit
  %indvars.iv.next184 = add i64 %indvars.iv183, -1, !dbg !921
  %19 = trunc i64 %indvars.iv183 to i32, !dbg !921
  %cmp20 = icmp sgt i32 %19, 0, !dbg !921
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !921
  %indvars.iv.next180 = add i32 %indvars.iv179, -1, !dbg !921
  br i1 %cmp20, label %for.cond23.preheader, label %for.inc92, !dbg !921

for.inc92:                                        ; preds = %for.inc89
  %indvars.iv.next187 = add i64 %indvars.iv186, 1, !dbg !917
  %lftr.wideiv188 = trunc i64 %indvars.iv.next187 to i32, !dbg !917
  %exitcond189 = icmp eq i32 %lftr.wideiv188, %natoms, !dbg !917
  br i1 %exitcond189, label %for.end94, label %for.cond19.preheader, !dbg !917

for.end94:                                        ; preds = %for.inc92, %for.cond16.preheader
  call void @llvm.lifetime.end(i64 36, i8* %0) #5, !dbg !935
  ret void, !dbg !935
}

; Function Attrs: nounwind optsize uwtable
define void @put_atoms_in_compact_unitcell([3 x float]* %box, i32 %natoms, [3 x float]* nocapture %x) #2 {
entry:
  %box_center = alloca [3 x float], align 4
  %dx = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !277), !dbg !936
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !278), !dbg !936
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !279), !dbg !936
  call void @llvm.dbg.declare(metadata !{[3 x float]* %box_center}, metadata !280), !dbg !937
  call void @llvm.dbg.declare(metadata !{[3 x float]* %dx}, metadata !281), !dbg !937
  call void @init_pbc([3 x float]* %box) #7, !dbg !938
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !939), !dbg !941
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !942), !dbg !941
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !943), !dbg !944
  br label %for.body.i, !dbg !944

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx2.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 %indvars.iv.i, !dbg !945
  %0 = load float* %arrayidx2.i, align 4, !dbg !945, !tbaa !357
  %conv3.i = fmul float %0, 5.000000e-01, !dbg !945
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv.i, !dbg !945
  store float %conv3.i, float* %arrayidx5.i, align 4, !dbg !945, !tbaa !357
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !944
  %lftr.wideiv18 = trunc i64 %indvars.iv.next.i to i32, !dbg !944
  %exitcond19 = icmp eq i32 %lftr.wideiv18, 3, !dbg !944
  br i1 %exitcond19, label %for.cond.preheader, label %for.body.i, !dbg !944

for.cond.preheader:                               ; preds = %for.body.i
  %arraydecay = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 0, !dbg !940
  %cmp16 = icmp sgt i32 %natoms, 0, !dbg !946
  br i1 %cmp16, label %for.body.lr.ph, label %for.end, !dbg !946

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arraydecay3 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0, !dbg !948
  %arrayidx2.i14 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 1, !dbg !950
  %arrayidx3.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1, !dbg !950
  %arrayidx5.i15 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 2, !dbg !952
  %arrayidx6.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2, !dbg !952
  br label %for.body, !dbg !946

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arraydecay1 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !948
  call void @pbc_dx(float* %arraydecay1, float* %arraydecay, float* %arraydecay3) #7, !dbg !948
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !953), !dbg !954
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay3}, i64 0, metadata !955), !dbg !954
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay1}, i64 0, metadata !956), !dbg !954
  %1 = load float* %arraydecay, align 4, !dbg !957, !tbaa !357
  %2 = load float* %arraydecay3, align 4, !dbg !957, !tbaa !357
  %add.i = fadd float %1, %2, !dbg !957
  tail call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !958), !dbg !957
  %3 = load float* %arrayidx2.i14, align 4, !dbg !950, !tbaa !357
  %4 = load float* %arrayidx3.i, align 4, !dbg !950, !tbaa !357
  %add4.i = fadd float %3, %4, !dbg !950
  tail call void @llvm.dbg.value(metadata !{float %add4.i}, i64 0, metadata !959), !dbg !950
  %5 = load float* %arrayidx5.i15, align 4, !dbg !952, !tbaa !357
  %6 = load float* %arrayidx6.i, align 4, !dbg !952, !tbaa !357
  %add7.i = fadd float %5, %6, !dbg !952
  tail call void @llvm.dbg.value(metadata !{float %add7.i}, i64 0, metadata !960), !dbg !952
  store float %add.i, float* %arraydecay1, align 4, !dbg !961, !tbaa !357
  %arrayidx9.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !962
  store float %add4.i, float* %arrayidx9.i, align 4, !dbg !962, !tbaa !357
  %arrayidx10.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !963
  store float %add7.i, float* %arrayidx10.i, align 4, !dbg !963, !tbaa !357
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !946
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !946
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms, !dbg !946
  br i1 %exitcond, label %for.end, label %for.body, !dbg !946

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !964
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !335, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !19, metadata !33, metadata !49, metadata !67, metadata !82, metadata !96, metadata !187, metadata !212, metadata !219, metadata !226, metadata !243, metadata !251, metadata !261, metadata !275, metadata !283, metadata !292, metadata !297, metadata !305, metadata !313, metadata !319, metadata !324, metadata !329}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"check_box", metadata !"check_box", metadata !"", i32 56, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ([3 x float]*)* @check_box, null, null, metadata !16, i32 57} ; [ DW_TAG_subprogram ] [line 56] [def] [scope 57] [check_box]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !10}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!9 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!11 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !12, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!12 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!13 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786689, metadata !4, metadata !"box", metadata !5, i32 16777272, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 56]
!18 = metadata !{i32 786688, metadata !4, metadata !"ptr", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 58]
!19 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"init_pbc", metadata !"init_pbc", metadata !"", i32 77, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*)* @init_pbc, null, null, metadata !22, i32 78} ; [ DW_TAG_subprogram ] [line 77] [def] [scope 78] [init_pbc]
!20 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{null, metadata !10}
!22 = metadata !{metadata !23, metadata !24, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32}
!23 = metadata !{i32 786689, metadata !19, metadata !"box", metadata !5, i32 16777293, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 77]
!24 = metadata !{i32 786688, metadata !19, metadata !"i", metadata !5, i32 80, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 80]
!25 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!26 = metadata !{i32 786688, metadata !19, metadata !"j", metadata !5, i32 80, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 80]
!27 = metadata !{i32 786688, metadata !19, metadata !"k", metadata !5, i32 80, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 80]
!28 = metadata !{i32 786688, metadata !19, metadata !"d", metadata !5, i32 80, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 80]
!29 = metadata !{i32 786688, metadata !19, metadata !"diagonal2", metadata !5, i32 81, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diagonal2] [line 81]
!30 = metadata !{i32 786688, metadata !19, metadata !"try", metadata !5, i32 82, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [try] [line 82]
!31 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!32 = metadata !{i32 786688, metadata !19, metadata !"ptr", metadata !5, i32 83, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 83]
!33 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"pbc_dx", metadata !"pbc_dx", metadata !"", i32 130, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, float*, float*)* @pbc_dx, null, null, metadata !39, i32 131} ; [ DW_TAG_subprogram ] [line 130] [def] [scope 131] [pbc_dx]
!34 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{null, metadata !36, metadata !36, metadata !38}
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!37 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48}
!40 = metadata !{i32 786689, metadata !33, metadata !"x1", metadata !5, i32 16777346, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 130]
!41 = metadata !{i32 786689, metadata !33, metadata !"x2", metadata !5, i32 33554562, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 130]
!42 = metadata !{i32 786689, metadata !33, metadata !"dx", metadata !5, i32 50331778, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dx] [line 130]
!43 = metadata !{i32 786688, metadata !33, metadata !"i", metadata !5, i32 132, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 132]
!44 = metadata !{i32 786688, metadata !33, metadata !"j", metadata !5, i32 132, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 132]
!45 = metadata !{i32 786688, metadata !33, metadata !"dx_start", metadata !5, i32 133, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx_start] [line 133]
!46 = metadata !{i32 786688, metadata !33, metadata !"try", metadata !5, i32 133, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [try] [line 133]
!47 = metadata !{i32 786688, metadata !33, metadata !"d2min", metadata !5, i32 134, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d2min] [line 134]
!48 = metadata !{i32 786688, metadata !33, metadata !"d2try", metadata !5, i32 134, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d2try] [line 134]
!49 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"image_rect", metadata !"image_rect", metadata !"", i32 172, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32*, i32*, float, i32*, float*)* @image_rect, null, null, metadata !53, i32 173} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 173] [image_rect]
!50 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{metadata !25, metadata !52, metadata !52, metadata !52, metadata !12, metadata !52, metadata !38}
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!54 = metadata !{i32 786689, metadata !49, metadata !"xi", metadata !5, i32 16777388, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xi] [line 172]
!55 = metadata !{i32 786689, metadata !49, metadata !"xj", metadata !5, i32 33554604, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xj] [line 172]
!56 = metadata !{i32 786689, metadata !49, metadata !"box_size", metadata !5, i32 50331820, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box_size] [line 172]
!57 = metadata !{i32 786689, metadata !49, metadata !"rlong2", metadata !5, i32 67109036, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rlong2] [line 172]
!58 = metadata !{i32 786689, metadata !49, metadata !"shift", metadata !5, i32 83886252, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 172]
!59 = metadata !{i32 786689, metadata !49, metadata !"r2", metadata !5, i32 100663468, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r2] [line 172]
!60 = metadata !{i32 786688, metadata !49, metadata !"m", metadata !5, i32 174, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 174]
!61 = metadata !{i32 786688, metadata !49, metadata !"t", metadata !5, i32 174, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 174]
!62 = metadata !{i32 786688, metadata !49, metadata !"dx", metadata !5, i32 175, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 175]
!63 = metadata !{i32 786688, metadata !49, metadata !"b", metadata !5, i32 175, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 175]
!64 = metadata !{i32 786688, metadata !49, metadata !"b_2", metadata !5, i32 175, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b_2] [line 175]
!65 = metadata !{i32 786688, metadata !49, metadata !"dxr", metadata !5, i32 176, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dxr] [line 176]
!66 = metadata !{i32 786688, metadata !49, metadata !"rij2", metadata !5, i32 176, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rij2] [line 176]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"image_cylindric", metadata !"image_cylindric", metadata !"", i32 204, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32*, i32*, float, i32*, float*)* @image_cylindric, null, null, metadata !68, i32 206} ; [ DW_TAG_subprogram ] [line 204] [def] [scope 206] [image_cylindric]
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81}
!69 = metadata !{i32 786689, metadata !67, metadata !"xi", metadata !5, i32 16777420, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xi] [line 204]
!70 = metadata !{i32 786689, metadata !67, metadata !"xj", metadata !5, i32 33554636, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xj] [line 204]
!71 = metadata !{i32 786689, metadata !67, metadata !"box_size", metadata !5, i32 50331852, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box_size] [line 204]
!72 = metadata !{i32 786689, metadata !67, metadata !"rlong2", metadata !5, i32 67109068, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rlong2] [line 204]
!73 = metadata !{i32 786689, metadata !67, metadata !"shift", metadata !5, i32 83886285, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 205]
!74 = metadata !{i32 786689, metadata !67, metadata !"r2", metadata !5, i32 100663501, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r2] [line 205]
!75 = metadata !{i32 786688, metadata !67, metadata !"m", metadata !5, i32 207, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 207]
!76 = metadata !{i32 786688, metadata !67, metadata !"t", metadata !5, i32 207, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 207]
!77 = metadata !{i32 786688, metadata !67, metadata !"dx", metadata !5, i32 208, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 208]
!78 = metadata !{i32 786688, metadata !67, metadata !"b", metadata !5, i32 208, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 208]
!79 = metadata !{i32 786688, metadata !67, metadata !"b_2", metadata !5, i32 208, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b_2] [line 208]
!80 = metadata !{i32 786688, metadata !67, metadata !"dxr", metadata !5, i32 209, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dxr] [line 209]
!81 = metadata !{i32 786688, metadata !67, metadata !"rij2", metadata !5, i32 209, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rij2] [line 209]
!82 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_shifts", metadata !"calc_shifts", metadata !"", i32 240, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, float*, [3 x float]*)* @calc_shifts, null, null, metadata !86, i32 241} ; [ DW_TAG_subprogram ] [line 240] [def] [scope 241] [calc_shifts]
!83 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{null, metadata !10, metadata !38, metadata !85}
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95}
!87 = metadata !{i32 786689, metadata !82, metadata !"box", metadata !5, i32 16777456, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 240]
!88 = metadata !{i32 786689, metadata !82, metadata !"box_size", metadata !5, i32 33554672, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box_size] [line 240]
!89 = metadata !{i32 786689, metadata !82, metadata !"shift_vec", metadata !5, i32 50331888, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift_vec] [line 240]
!90 = metadata !{i32 786688, metadata !82, metadata !"k", metadata !5, i32 242, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 242]
!91 = metadata !{i32 786688, metadata !82, metadata !"l", metadata !5, i32 242, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 242]
!92 = metadata !{i32 786688, metadata !82, metadata !"m", metadata !5, i32 242, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 242]
!93 = metadata !{i32 786688, metadata !82, metadata !"d", metadata !5, i32 242, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 242]
!94 = metadata !{i32 786688, metadata !82, metadata !"n", metadata !5, i32 242, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 242]
!95 = metadata !{i32 786688, metadata !82, metadata !"test", metadata !5, i32 242, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [test] [line 242]
!96 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_cgcm", metadata !"calc_cgcm", metadata !"", i32 261, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, %struct.t_block*, [3 x float]*, [3 x float]*)* @calc_cgcm, null, null, metadata !169, i32 263} ; [ DW_TAG_subprogram ] [line 261] [def] [scope 263] [calc_cgcm]
!97 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!98 = metadata !{null, metadata !99, metadata !25, metadata !25, metadata !154, metadata !85, metadata !85}
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!100 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!101 = metadata !{i32 786451, metadata !102, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !103, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!102 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!103 = metadata !{metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !124, metadata !125, metadata !126, metadata !127, metadata !130, metadata !132, metadata !134, metadata !138, metadata !140, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !149, metadata !150}
!104 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!105 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!106 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!107 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!108 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!109 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!110 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!111 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!112 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!113 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!114 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!115 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!116 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !117} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!117 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!118 = metadata !{i32 786451, metadata !102, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !119, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!119 = metadata !{metadata !120, metadata !121, metadata !123}
!120 = metadata !{i32 786445, metadata !102, metadata !118, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !117} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!121 = metadata !{i32 786445, metadata !102, metadata !118, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !122} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!123 = metadata !{i32 786445, metadata !102, metadata !118, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!124 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !122} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!125 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !25} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!126 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !25} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!127 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !128} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!128 = metadata !{i32 786454, metadata !102, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!129 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!130 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !131} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!131 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!132 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !133} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!133 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!134 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !135} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!135 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !9, metadata !136, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!136 = metadata !{metadata !137}
!137 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!138 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !139} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!139 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!140 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !141} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!141 = metadata !{i32 786454, metadata !102, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!142 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !139} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!143 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !139} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!144 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !139} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!145 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !139} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!146 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !147} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!147 = metadata !{i32 786454, metadata !102, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!148 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!149 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !25} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!150 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !151} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!151 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !9, metadata !152, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!152 = metadata !{metadata !153}
!153 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!154 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_block]
!155 = metadata !{i32 786454, metadata !1, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!156 = metadata !{i32 786451, metadata !157, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !158, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!157 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!158 = metadata !{metadata !159, metadata !163, metadata !164, metadata !167, metadata !168}
!159 = metadata !{i32 786445, metadata !157, metadata !156, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !160} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!160 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !25, metadata !161, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!161 = metadata !{metadata !162}
!162 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!163 = metadata !{i32 786445, metadata !157, metadata !156, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !25} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!164 = metadata !{i32 786445, metadata !157, metadata !156, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !165} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!165 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !166} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!166 = metadata !{i32 786454, metadata !157, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!167 = metadata !{i32 786445, metadata !157, metadata !156, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !25} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!168 = metadata !{i32 786445, metadata !157, metadata !156, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !165} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!169 = metadata !{metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186}
!170 = metadata !{i32 786689, metadata !96, metadata !"log", metadata !5, i32 16777477, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 261]
!171 = metadata !{i32 786689, metadata !96, metadata !"cg0", metadata !5, i32 33554693, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg0] [line 261]
!172 = metadata !{i32 786689, metadata !96, metadata !"cg1", metadata !5, i32 50331909, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg1] [line 261]
!173 = metadata !{i32 786689, metadata !96, metadata !"cgs", metadata !5, i32 67109125, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cgs] [line 261]
!174 = metadata !{i32 786689, metadata !96, metadata !"pos", metadata !5, i32 83886342, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 262]
!175 = metadata !{i32 786689, metadata !96, metadata !"cg_cm", metadata !5, i32 100663558, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg_cm] [line 262]
!176 = metadata !{i32 786688, metadata !96, metadata !"icg", metadata !5, i32 264, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icg] [line 264]
!177 = metadata !{i32 786688, metadata !96, metadata !"ai", metadata !5, i32 264, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 264]
!178 = metadata !{i32 786688, metadata !96, metadata !"k", metadata !5, i32 264, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 264]
!179 = metadata !{i32 786688, metadata !96, metadata !"k0", metadata !5, i32 264, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k0] [line 264]
!180 = metadata !{i32 786688, metadata !96, metadata !"k1", metadata !5, i32 264, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k1] [line 264]
!181 = metadata !{i32 786688, metadata !96, metadata !"d", metadata !5, i32 264, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 264]
!182 = metadata !{i32 786688, metadata !96, metadata !"nrcg", metadata !5, i32 264, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrcg] [line 264]
!183 = metadata !{i32 786688, metadata !96, metadata !"cg", metadata !5, i32 265, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cg] [line 265]
!184 = metadata !{i32 786688, metadata !96, metadata !"inv_ncg", metadata !5, i32 266, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inv_ncg] [line 266]
!185 = metadata !{i32 786688, metadata !96, metadata !"cga", metadata !5, i32 267, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cga] [line 267]
!186 = metadata !{i32 786688, metadata !96, metadata !"cgindex", metadata !5, i32 267, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cgindex] [line 267]
!187 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"put_charge_groups_in_box", metadata !"put_charge_groups_in_box", metadata !"", i32 300, metadata !188, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, [3 x float]*, float*, %struct.t_block*, [3 x float]*, [3 x float]*)* @put_charge_groups_in_box, null, null, metadata !190, i32 304} ; [ DW_TAG_subprogram ] [line 300] [def] [scope 304] [put_charge_groups_in_box]
!188 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !189, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!189 = metadata !{null, metadata !99, metadata !25, metadata !25, metadata !10, metadata !38, metadata !154, metadata !85, metadata !85}
!190 = metadata !{metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211}
!191 = metadata !{i32 786689, metadata !187, metadata !"log", metadata !5, i32 16777516, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 300]
!192 = metadata !{i32 786689, metadata !187, metadata !"cg0", metadata !5, i32 33554732, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg0] [line 300]
!193 = metadata !{i32 786689, metadata !187, metadata !"cg1", metadata !5, i32 50331948, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg1] [line 300]
!194 = metadata !{i32 786689, metadata !187, metadata !"box", metadata !5, i32 67109165, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 301]
!195 = metadata !{i32 786689, metadata !187, metadata !"box_size", metadata !5, i32 83886381, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box_size] [line 301]
!196 = metadata !{i32 786689, metadata !187, metadata !"cgs", metadata !5, i32 100663597, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cgs] [line 301]
!197 = metadata !{i32 786689, metadata !187, metadata !"pos", metadata !5, i32 117440814, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 302]
!198 = metadata !{i32 786689, metadata !187, metadata !"cg_cm", metadata !5, i32 134218030, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg_cm] [line 302]
!199 = metadata !{i32 786688, metadata !187, metadata !"icg", metadata !5, i32 305, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icg] [line 305]
!200 = metadata !{i32 786688, metadata !187, metadata !"ai", metadata !5, i32 305, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 305]
!201 = metadata !{i32 786688, metadata !187, metadata !"k", metadata !5, i32 305, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 305]
!202 = metadata !{i32 786688, metadata !187, metadata !"k0", metadata !5, i32 305, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k0] [line 305]
!203 = metadata !{i32 786688, metadata !187, metadata !"k1", metadata !5, i32 305, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k1] [line 305]
!204 = metadata !{i32 786688, metadata !187, metadata !"d", metadata !5, i32 305, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 305]
!205 = metadata !{i32 786688, metadata !187, metadata !"e", metadata !5, i32 305, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 305]
!206 = metadata !{i32 786688, metadata !187, metadata !"nrcg", metadata !5, i32 305, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrcg] [line 305]
!207 = metadata !{i32 786688, metadata !187, metadata !"cg", metadata !5, i32 306, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cg] [line 306]
!208 = metadata !{i32 786688, metadata !187, metadata !"inv_ncg", metadata !5, i32 307, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inv_ncg] [line 307]
!209 = metadata !{i32 786688, metadata !187, metadata !"cga", metadata !5, i32 308, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cga] [line 308]
!210 = metadata !{i32 786688, metadata !187, metadata !"cgindex", metadata !5, i32 308, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cgindex] [line 308]
!211 = metadata !{i32 786688, metadata !187, metadata !"bTric", metadata !5, i32 309, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bTric] [line 309]
!212 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_box_center", metadata !"calc_box_center", metadata !"", i32 378, metadata !213, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, float*)* @calc_box_center, null, null, metadata !215, i32 379} ; [ DW_TAG_subprogram ] [line 378] [def] [scope 379] [calc_box_center]
!213 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!214 = metadata !{null, metadata !10, metadata !38}
!215 = metadata !{metadata !216, metadata !217, metadata !218}
!216 = metadata !{i32 786689, metadata !212, metadata !"box", metadata !5, i32 16777594, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 378]
!217 = metadata !{i32 786689, metadata !212, metadata !"box_center", metadata !5, i32 33554810, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box_center] [line 378]
!218 = metadata !{i32 786688, metadata !212, metadata !"d", metadata !5, i32 380, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 380]
!219 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_triclinic_images", metadata !"calc_triclinic_images", metadata !"", i32 386, metadata !220, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, [3 x float]*)* @calc_triclinic_images, null, null, metadata !222, i32 387} ; [ DW_TAG_subprogram ] [line 386] [def] [scope 387] [calc_triclinic_images]
!220 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!221 = metadata !{null, metadata !10, metadata !85}
!222 = metadata !{metadata !223, metadata !224, metadata !225}
!223 = metadata !{i32 786689, metadata !219, metadata !"box", metadata !5, i32 16777602, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 386]
!224 = metadata !{i32 786689, metadata !219, metadata !"img", metadata !5, i32 33554818, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [img] [line 386]
!225 = metadata !{i32 786688, metadata !219, metadata !"i", metadata !5, i32 388, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 388]
!226 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_compact_unitcell_vertices", metadata !"calc_compact_unitcell_vertices", metadata !"", i32 413, metadata !220, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, [3 x float]*)* @calc_compact_unitcell_vertices, null, null, metadata !227, i32 414} ; [ DW_TAG_subprogram ] [line 413] [def] [scope 414] [calc_compact_unitcell_vertices]
!227 = metadata !{metadata !228, metadata !229, metadata !230, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !242}
!228 = metadata !{i32 786689, metadata !226, metadata !"box", metadata !5, i32 16777629, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 413]
!229 = metadata !{i32 786689, metadata !226, metadata !"vert", metadata !5, i32 33554845, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vert] [line 413]
!230 = metadata !{i32 786688, metadata !226, metadata !"img", metadata !5, i32 415, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [img] [line 415]
!231 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1344, i64 32, i32 0, i32 0, metadata !31, metadata !232, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1344, align 32, offset 0] [from rvec]
!232 = metadata !{metadata !233}
!233 = metadata !{i32 786465, i64 0, i64 14}      ; [ DW_TAG_subrange_type ] [0, 13]
!234 = metadata !{i32 786688, metadata !226, metadata !"box_center", metadata !5, i32 415, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [box_center] [line 415]
!235 = metadata !{i32 786688, metadata !226, metadata !"n", metadata !5, i32 416, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 416]
!236 = metadata !{i32 786688, metadata !226, metadata !"i", metadata !5, i32 416, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 416]
!237 = metadata !{i32 786688, metadata !226, metadata !"j", metadata !5, i32 416, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 416]
!238 = metadata !{i32 786688, metadata !226, metadata !"tmp", metadata !5, i32 416, metadata !239, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 416]
!239 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !25, metadata !240, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!240 = metadata !{metadata !241}
!241 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!242 = metadata !{i32 786688, metadata !226, metadata !"d", metadata !5, i32 416, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 416]
!243 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"compact_unitcell_edges", metadata !"compact_unitcell_edges", metadata !"", i32 473, metadata !244, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* ()* @compact_unitcell_edges, null, null, metadata !246, i32 474} ; [ DW_TAG_subprogram ] [line 473] [def] [scope 474] [compact_unitcell_edges]
!244 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!245 = metadata !{metadata !52}
!246 = metadata !{metadata !247, metadata !248, metadata !249, metadata !250}
!247 = metadata !{i32 786688, metadata !243, metadata !"e", metadata !5, i32 480, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 480]
!248 = metadata !{i32 786688, metadata !243, metadata !"i", metadata !5, i32 480, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 480]
!249 = metadata !{i32 786688, metadata !243, metadata !"j", metadata !5, i32 480, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 480]
!250 = metadata !{i32 786688, metadata !243, metadata !"bFirst", metadata !5, i32 481, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bFirst] [line 481]
!251 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"put_atoms_in_box", metadata !"put_atoms_in_box", metadata !"", i32 499, metadata !252, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, i32, [3 x float]*)* @put_atoms_in_box, null, null, metadata !254, i32 500} ; [ DW_TAG_subprogram ] [line 499] [def] [scope 500] [put_atoms_in_box]
!252 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!253 = metadata !{null, metadata !10, metadata !25, metadata !85}
!254 = metadata !{metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260}
!255 = metadata !{i32 786689, metadata !251, metadata !"box", metadata !5, i32 16777715, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 499]
!256 = metadata !{i32 786689, metadata !251, metadata !"natoms", metadata !5, i32 33554931, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 499]
!257 = metadata !{i32 786689, metadata !251, metadata !"x", metadata !5, i32 50332147, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 499]
!258 = metadata !{i32 786688, metadata !251, metadata !"i", metadata !5, i32 501, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 501]
!259 = metadata !{i32 786688, metadata !251, metadata !"m", metadata !5, i32 501, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 501]
!260 = metadata !{i32 786688, metadata !251, metadata !"d", metadata !5, i32 501, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 501]
!261 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"put_atoms_in_triclinic_unitcell", metadata !"put_atoms_in_triclinic_unitcell", metadata !"", i32 514, metadata !252, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, i32, [3 x float]*)* @put_atoms_in_triclinic_unitcell, null, null, metadata !262, i32 515} ; [ DW_TAG_subprogram ] [line 514] [def] [scope 515] [put_atoms_in_triclinic_unitcell]
!262 = metadata !{metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !271, metadata !272, metadata !273, metadata !274}
!263 = metadata !{i32 786689, metadata !261, metadata !"box", metadata !5, i32 16777730, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 514]
!264 = metadata !{i32 786689, metadata !261, metadata !"natoms", metadata !5, i32 33554946, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 514]
!265 = metadata !{i32 786689, metadata !261, metadata !"x", metadata !5, i32 50332162, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 514]
!266 = metadata !{i32 786688, metadata !261, metadata !"box_center", metadata !5, i32 516, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [box_center] [line 516]
!267 = metadata !{i32 786688, metadata !261, metadata !"shift_mat", metadata !5, i32 517, metadata !268, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift_mat] [line 517]
!268 = metadata !{i32 786454, metadata !1, null, metadata !"matrix", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !269} ; [ DW_TAG_typedef ] [matrix] [line 103, size 0, align 0, offset 0] [from ]
!269 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !12, metadata !270, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!270 = metadata !{metadata !15, metadata !15}
!271 = metadata !{i32 786688, metadata !261, metadata !"shift", metadata !5, i32 518, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 518]
!272 = metadata !{i32 786688, metadata !261, metadata !"i", metadata !5, i32 519, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 519]
!273 = metadata !{i32 786688, metadata !261, metadata !"m", metadata !5, i32 519, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 519]
!274 = metadata !{i32 786688, metadata !261, metadata !"d", metadata !5, i32 519, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 519]
!275 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"put_atoms_in_compact_unitcell", metadata !"put_atoms_in_compact_unitcell", metadata !"", i32 541, metadata !252, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, i32, [3 x float]*)* @put_atoms_in_compact_unitcell, null, null, metadata !276, i32 542} ; [ DW_TAG_subprogram ] [line 541] [def] [scope 542] [put_atoms_in_compact_unitcell]
!276 = metadata !{metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282}
!277 = metadata !{i32 786689, metadata !275, metadata !"box", metadata !5, i32 16777757, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 541]
!278 = metadata !{i32 786689, metadata !275, metadata !"natoms", metadata !5, i32 33554973, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 541]
!279 = metadata !{i32 786689, metadata !275, metadata !"x", metadata !5, i32 50332189, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 541]
!280 = metadata !{i32 786688, metadata !275, metadata !"box_center", metadata !5, i32 543, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [box_center] [line 543]
!281 = metadata !{i32 786688, metadata !275, metadata !"dx", metadata !5, i32 543, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 543]
!282 = metadata !{i32 786688, metadata !275, metadata !"i", metadata !5, i32 544, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 544]
!283 = metadata !{i32 786478, metadata !284, metadata !285, metadata !"svmul", metadata !"svmul", metadata !"", i32 304, metadata !286, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !288, i32 305} ; [ DW_TAG_subprogram ] [line 304] [local] [def] [scope 305] [svmul]
!284 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!285 = metadata !{i32 786473, metadata !284}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!286 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!287 = metadata !{null, metadata !12, metadata !38, metadata !38}
!288 = metadata !{metadata !289, metadata !290, metadata !291}
!289 = metadata !{i32 786689, metadata !283, metadata !"a", metadata !285, i32 16777520, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 304]
!290 = metadata !{i32 786689, metadata !283, metadata !"v1", metadata !285, i32 33554736, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v1] [line 304]
!291 = metadata !{i32 786689, metadata !283, metadata !"v2", metadata !285, i32 50331952, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v2] [line 304]
!292 = metadata !{i32 786478, metadata !284, metadata !285, metadata !"clear_rvec", metadata !"clear_rvec", metadata !"", i32 316, metadata !293, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !295, i32 317} ; [ DW_TAG_subprogram ] [line 316] [local] [def] [scope 317] [clear_rvec]
!293 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !294, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!294 = metadata !{null, metadata !38}
!295 = metadata !{metadata !296}
!296 = metadata !{i32 786689, metadata !292, metadata !"a", metadata !285, i32 16777532, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 316]
!297 = metadata !{i32 786478, metadata !284, metadata !285, metadata !"rvec_add", metadata !"rvec_add", metadata !"", i32 218, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !298, i32 219} ; [ DW_TAG_subprogram ] [line 218] [local] [def] [scope 219] [rvec_add]
!298 = metadata !{metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304}
!299 = metadata !{i32 786689, metadata !297, metadata !"a", metadata !285, i32 16777434, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 218]
!300 = metadata !{i32 786689, metadata !297, metadata !"b", metadata !285, i32 33554650, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 218]
!301 = metadata !{i32 786689, metadata !297, metadata !"c", metadata !285, i32 50331866, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 218]
!302 = metadata !{i32 786688, metadata !297, metadata !"x", metadata !285, i32 220, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 220]
!303 = metadata !{i32 786688, metadata !297, metadata !"y", metadata !285, i32 220, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 220]
!304 = metadata !{i32 786688, metadata !297, metadata !"z", metadata !285, i32 220, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 220]
!305 = metadata !{i32 786478, metadata !284, metadata !285, metadata !"rvec_sub", metadata !"rvec_sub", metadata !"", i32 244, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !306, i32 245} ; [ DW_TAG_subprogram ] [line 244] [local] [def] [scope 245] [rvec_sub]
!306 = metadata !{metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312}
!307 = metadata !{i32 786689, metadata !305, metadata !"a", metadata !285, i32 16777460, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 244]
!308 = metadata !{i32 786689, metadata !305, metadata !"b", metadata !285, i32 33554676, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 244]
!309 = metadata !{i32 786689, metadata !305, metadata !"c", metadata !285, i32 50331892, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 244]
!310 = metadata !{i32 786688, metadata !305, metadata !"x", metadata !285, i32 246, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 246]
!311 = metadata !{i32 786688, metadata !305, metadata !"y", metadata !285, i32 246, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 246]
!312 = metadata !{i32 786688, metadata !305, metadata !"z", metadata !285, i32 246, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 246]
!313 = metadata !{i32 786478, metadata !284, metadata !285, metadata !"copy_rvec", metadata !"copy_rvec", metadata !"", i32 270, metadata !314, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !316, i32 271} ; [ DW_TAG_subprogram ] [line 270] [local] [def] [scope 271] [copy_rvec]
!314 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !315, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!315 = metadata !{null, metadata !36, metadata !38}
!316 = metadata !{metadata !317, metadata !318}
!317 = metadata !{i32 786689, metadata !313, metadata !"a", metadata !285, i32 16777486, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 270]
!318 = metadata !{i32 786689, metadata !313, metadata !"b", metadata !285, i32 33554702, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 270]
!319 = metadata !{i32 786478, metadata !284, metadata !285, metadata !"norm2", metadata !"norm2", metadata !"", i32 353, metadata !320, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !322, i32 354} ; [ DW_TAG_subprogram ] [line 353] [local] [def] [scope 354] [norm2]
!320 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !321, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!321 = metadata !{metadata !12, metadata !38}
!322 = metadata !{metadata !323}
!323 = metadata !{i32 786689, metadata !319, metadata !"a", metadata !285, i32 16777569, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 353]
!324 = metadata !{i32 786478, metadata !284, metadata !285, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !325, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !327, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!325 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !326, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!326 = metadata !{metadata !12, metadata !12}
!327 = metadata !{metadata !328}
!328 = metadata !{i32 786689, metadata !324, metadata !"x", metadata !285, i32 16777413, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!329 = metadata !{i32 786478, metadata !284, metadata !285, metadata !"copy_mat", metadata !"copy_mat", metadata !"", i32 297, metadata !330, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !332, i32 298} ; [ DW_TAG_subprogram ] [line 297] [local] [def] [scope 298] [copy_mat]
!330 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !331, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!331 = metadata !{null, metadata !10, metadata !10}
!332 = metadata !{metadata !333, metadata !334}
!333 = metadata !{i32 786689, metadata !329, metadata !"a", metadata !285, i32 16777513, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 297]
!334 = metadata !{i32 786689, metadata !329, metadata !"b", metadata !285, i32 33554729, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 297]
!335 = metadata !{metadata !336, metadata !337, metadata !341, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354}
!336 = metadata !{i32 786484, i32 0, metadata !19, metadata !"nalloc", metadata !"nalloc", metadata !"", metadata !5, i32 79, metadata !25, i32 1, i32 1, i32* @init_pbc.nalloc, null} ; [ DW_TAG_variable ] [nalloc] [line 79] [local] [def]
!337 = metadata !{i32 786484, i32 0, metadata !243, metadata !"edge", metadata !"edge", metadata !"", metadata !5, i32 476, metadata !338, i32 1, i32 1, [72 x i32]* @compact_unitcell_edges.edge, null} ; [ DW_TAG_variable ] [edge] [line 476] [local] [def]
!338 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 32, i32 0, i32 0, metadata !25, metadata !339, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 32, offset 0] [from int]
!339 = metadata !{metadata !340}
!340 = metadata !{i32 786465, i64 0, i64 72}      ; [ DW_TAG_subrange_type ] [0, 71]
!341 = metadata !{i32 786484, i32 0, metadata !243, metadata !"hexcon", metadata !"hexcon", metadata !"", metadata !5, i32 477, metadata !342, i32 1, i32 1, [24 x i32]* @compact_unitcell_edges.hexcon, null} ; [ DW_TAG_variable ] [hexcon] [line 477] [local] [def]
!342 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !25, metadata !343, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from int]
!343 = metadata !{metadata !344}
!344 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!345 = metadata !{i32 786484, i32 0, null, metadata !"bTriclinic", metadata !"bTriclinic", metadata !"", metadata !5, i32 50, metadata !25, i32 1, i32 1, i32* @bTriclinic, null} ; [ DW_TAG_variable ] [bTriclinic] [line 50] [local] [def]
!346 = metadata !{i32 786484, i32 0, null, metadata !"bSupported", metadata !"bSupported", metadata !"", metadata !5, i32 50, metadata !25, i32 1, i32 1, null, null}
!347 = metadata !{i32 786484, i32 0, null, metadata !"gl_fbox", metadata !"gl_fbox", metadata !"", metadata !5, i32 51, metadata !31, i32 1, i32 1, [3 x float]* @gl_fbox, null} ; [ DW_TAG_variable ] [gl_fbox] [line 51] [local] [def]
!348 = metadata !{i32 786484, i32 0, null, metadata !"gl_hbox", metadata !"gl_hbox", metadata !"", metadata !5, i32 51, metadata !31, i32 1, i32 1, [3 x float]* @gl_hbox, null} ; [ DW_TAG_variable ] [gl_hbox] [line 51] [local] [def]
!349 = metadata !{i32 786484, i32 0, null, metadata !"gl_mhbox", metadata !"gl_mhbox", metadata !"", metadata !5, i32 51, metadata !31, i32 1, i32 1, [3 x float]* @gl_mhbox, null} ; [ DW_TAG_variable ] [gl_mhbox] [line 51] [local] [def]
!350 = metadata !{i32 786484, i32 0, null, metadata !"gl_box", metadata !"gl_box", metadata !"", metadata !5, i32 52, metadata !268, i32 1, i32 1, [3 x [3 x float]]* @gl_box, null} ; [ DW_TAG_variable ] [gl_box] [line 52] [local] [def]
!351 = metadata !{i32 786484, i32 0, null, metadata !"ntric_vec", metadata !"ntric_vec", metadata !"", metadata !5, i32 53, metadata !25, i32 1, i32 1, i32* @ntric_vec, null} ; [ DW_TAG_variable ] [ntric_vec] [line 53] [local] [def]
!352 = metadata !{i32 786484, i32 0, null, metadata !"sure_dist2", metadata !"sure_dist2", metadata !"", metadata !5, i32 54, metadata !12, i32 1, i32 1, float* @sure_dist2, null} ; [ DW_TAG_variable ] [sure_dist2] [line 54] [local] [def]
!353 = metadata !{i32 786484, i32 0, null, metadata !"bInit", metadata !"bInit", metadata !"", metadata !5, i32 49, metadata !25, i32 1, i32 1, null, null}
!354 = metadata !{i32 786484, i32 0, null, metadata !"tric_vec", metadata !"tric_vec", metadata !"", metadata !5, i32 51, metadata !85, i32 1, i32 1, [3 x float]** @tric_vec, null} ; [ DW_TAG_variable ] [tric_vec] [line 51] [local] [def]
!355 = metadata !{i32 56, i32 0, metadata !4, null}
!356 = metadata !{i32 60, i32 0, metadata !4, null}
!357 = metadata !{metadata !"float", metadata !358}
!358 = metadata !{metadata !"omnipotent char", metadata !359}
!359 = metadata !{metadata !"Simple C/C++ TBAA"}
!360 = metadata !{i32 66, i32 0, metadata !4, null}
!361 = metadata !{i32 67, i32 0, metadata !4, null}
!362 = metadata !{i32 68, i32 0, metadata !4, null}
!363 = metadata !{i8* null}
!364 = metadata !{i32 72, i32 0, metadata !4, null}
!365 = metadata !{i32 74, i32 0, metadata !4, null}
!366 = metadata !{i32 77, i32 0, metadata !19, null}
!367 = metadata !{i32 82, i32 0, metadata !19, null}
!368 = metadata !{i32 85, i32 0, metadata !19, null}
!369 = metadata !{i32 86, i32 0, metadata !19, null}
!370 = metadata !{i32 87, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !19, i32 86, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!372 = metadata !{metadata !"any pointer", metadata !358}
!373 = metadata !{i32 88, i32 0, metadata !371, null}
!374 = metadata !{i32 89, i32 0, metadata !371, null}
!375 = metadata !{i32 91, i32 0, metadata !371, null}
!376 = metadata !{i32 94, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !378, i32 94, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!378 = metadata !{i32 786443, metadata !1, metadata !19, i32 91, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!379 = metadata !{i32 95, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !377, i32 94, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!381 = metadata !{i32 96, i32 0, metadata !380, null}
!382 = metadata !{i32 97, i32 0, metadata !380, null}
!383 = metadata !{i32 99, i32 0, metadata !378, null}
!384 = metadata !{i32 301, i32 0, metadata !329, metadata !385}
!385 = metadata !{i32 101, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !378, i32 100, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!387 = metadata !{metadata !"int", metadata !358}
!388 = metadata !{i32 273, i32 0, metadata !313, metadata !384}
!389 = metadata !{i32 100, i32 0, metadata !378, null}
!390 = metadata !{null}
!391 = metadata !{i32 786689, metadata !329, metadata !"b", metadata !285, i32 33554729, metadata !10, i32 0, metadata !385} ; [ DW_TAG_arg_variable ] [b] [line 297]
!392 = metadata !{i32 297, i32 0, metadata !329, metadata !385}
!393 = metadata !{i32 299, i32 0, metadata !329, metadata !385}
!394 = metadata !{i32 786689, metadata !313, metadata !"a", metadata !285, i32 16777486, metadata !36, i32 0, metadata !393} ; [ DW_TAG_arg_variable ] [a] [line 270]
!395 = metadata !{i32 270, i32 0, metadata !313, metadata !393}
!396 = metadata !{float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 0, i64 0)}
!397 = metadata !{i32 786689, metadata !313, metadata !"b", metadata !285, i32 33554702, metadata !38, i32 0, metadata !393} ; [ DW_TAG_arg_variable ] [b] [line 270]
!398 = metadata !{i32 272, i32 0, metadata !313, metadata !393}
!399 = metadata !{i32 273, i32 0, metadata !313, metadata !393}
!400 = metadata !{i32 274, i32 0, metadata !313, metadata !393}
!401 = metadata !{i32 786689, metadata !313, metadata !"a", metadata !285, i32 16777486, metadata !36, i32 0, metadata !402} ; [ DW_TAG_arg_variable ] [a] [line 270]
!402 = metadata !{i32 300, i32 0, metadata !329, metadata !385}
!403 = metadata !{i32 270, i32 0, metadata !313, metadata !402}
!404 = metadata !{float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 1, i64 0)}
!405 = metadata !{i32 786689, metadata !313, metadata !"b", metadata !285, i32 33554702, metadata !38, i32 0, metadata !402} ; [ DW_TAG_arg_variable ] [b] [line 270]
!406 = metadata !{i32 272, i32 0, metadata !313, metadata !402}
!407 = metadata !{i32 273, i32 0, metadata !313, metadata !402}
!408 = metadata !{i32 274, i32 0, metadata !313, metadata !402}
!409 = metadata !{i32 786689, metadata !313, metadata !"a", metadata !285, i32 16777486, metadata !36, i32 0, metadata !384} ; [ DW_TAG_arg_variable ] [a] [line 270]
!410 = metadata !{i32 270, i32 0, metadata !313, metadata !384}
!411 = metadata !{float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 2, i64 0)}
!412 = metadata !{i32 786689, metadata !313, metadata !"b", metadata !285, i32 33554702, metadata !38, i32 0, metadata !384} ; [ DW_TAG_arg_variable ] [b] [line 270]
!413 = metadata !{i32 272, i32 0, metadata !313, metadata !384}
!414 = metadata !{i32 274, i32 0, metadata !313, metadata !384}
!415 = metadata !{i32 105, i32 0, metadata !386, null}
!416 = metadata !{i32 786689, metadata !324, metadata !"x", metadata !285, i32 16777413, metadata !12, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [x] [line 197]
!417 = metadata !{i32 197, i32 0, metadata !324, metadata !415}
!418 = metadata !{i32 199, i32 0, metadata !324, metadata !415}
!419 = metadata !{float* getelementptr inbounds ([3 x float]* @gl_fbox, i64 0, i64 0)}
!420 = metadata !{i32 786689, metadata !319, metadata !"a", metadata !285, i32 16777569, metadata !38, i32 0, metadata !421} ; [ DW_TAG_arg_variable ] [a] [line 353]
!421 = metadata !{i32 108, i32 0, metadata !386, null}
!422 = metadata !{i32 353, i32 0, metadata !319, metadata !421}
!423 = metadata !{i32 355, i32 0, metadata !319, metadata !421}
!424 = metadata !{i32 109, i32 0, metadata !386, null}
!425 = metadata !{i32 -2}
!426 = metadata !{i32 110, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !386, i32 110, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!428 = metadata !{i32 116, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !1, metadata !430, i32 113, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!430 = metadata !{i32 786443, metadata !1, metadata !431, i32 112, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!431 = metadata !{i32 786443, metadata !1, metadata !427, i32 111, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!432 = metadata !{i32 355, i32 0, metadata !319, metadata !428}
!433 = metadata !{i32 115, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !429, i32 114, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!435 = metadata !{i32 111, i32 0, metadata !431, null}
!436 = metadata !{i32 113, i32 0, metadata !430, null}
!437 = metadata !{i32 112, i32 0, metadata !430, null}
!438 = metadata !{i32 114, i32 0, metadata !434, null}
!439 = metadata !{i32 786689, metadata !319, metadata !"a", metadata !285, i32 16777569, metadata !38, i32 0, metadata !428} ; [ DW_TAG_arg_variable ] [a] [line 353]
!440 = metadata !{i32 353, i32 0, metadata !319, metadata !428}
!441 = metadata !{i32 117, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !429, i32 116, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!443 = metadata !{i32 121, i32 0, metadata !442, null}
!444 = metadata !{i32 118, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !1, metadata !442, i32 117, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!446 = metadata !{i32 119, i32 0, metadata !445, null}
!447 = metadata !{i32 120, i32 0, metadata !445, null}
!448 = metadata !{i32 786689, metadata !313, metadata !"a", metadata !285, i32 16777486, metadata !36, i32 0, metadata !443} ; [ DW_TAG_arg_variable ] [a] [line 270]
!449 = metadata !{i32 270, i32 0, metadata !313, metadata !443}
!450 = metadata !{i32 786689, metadata !313, metadata !"b", metadata !285, i32 33554702, metadata !38, i32 0, metadata !443} ; [ DW_TAG_arg_variable ] [b] [line 270]
!451 = metadata !{i32 272, i32 0, metadata !313, metadata !443}
!452 = metadata !{i32 273, i32 0, metadata !313, metadata !443}
!453 = metadata !{i32 274, i32 0, metadata !313, metadata !443}
!454 = metadata !{i32 122, i32 0, metadata !442, null}
!455 = metadata !{i32 123, i32 0, metadata !442, null}
!456 = metadata !{i32 128, i32 0, metadata !19, null}
!457 = metadata !{i32 130, i32 0, metadata !33, null}
!458 = metadata !{[3 x float]* undef}
!459 = metadata !{i32 133, i32 0, metadata !33, null}
!460 = metadata !{i32 136, i32 0, metadata !33, null}
!461 = metadata !{i32 137, i32 0, metadata !33, null}
!462 = metadata !{i32 786689, metadata !305, metadata !"a", metadata !285, i32 16777460, metadata !36, i32 0, metadata !463} ; [ DW_TAG_arg_variable ] [a] [line 244]
!463 = metadata !{i32 138, i32 0, metadata !33, null}
!464 = metadata !{i32 244, i32 0, metadata !305, metadata !463}
!465 = metadata !{i32 786689, metadata !305, metadata !"b", metadata !285, i32 33554676, metadata !36, i32 0, metadata !463} ; [ DW_TAG_arg_variable ] [b] [line 244]
!466 = metadata !{i32 786689, metadata !305, metadata !"c", metadata !285, i32 50331892, metadata !38, i32 0, metadata !463} ; [ DW_TAG_arg_variable ] [c] [line 244]
!467 = metadata !{i32 248, i32 0, metadata !305, metadata !463}
!468 = metadata !{i32 786688, metadata !305, metadata !"x", metadata !285, i32 246, metadata !12, i32 0, metadata !463} ; [ DW_TAG_auto_variable ] [x] [line 246]
!469 = metadata !{i32 249, i32 0, metadata !305, metadata !463}
!470 = metadata !{i32 786688, metadata !305, metadata !"y", metadata !285, i32 246, metadata !12, i32 0, metadata !463} ; [ DW_TAG_auto_variable ] [y] [line 246]
!471 = metadata !{i32 250, i32 0, metadata !305, metadata !463}
!472 = metadata !{i32 786688, metadata !305, metadata !"z", metadata !285, i32 246, metadata !12, i32 0, metadata !463} ; [ DW_TAG_auto_variable ] [z] [line 246]
!473 = metadata !{i32 252, i32 0, metadata !305, metadata !463}
!474 = metadata !{i32 253, i32 0, metadata !305, metadata !463}
!475 = metadata !{i32 254, i32 0, metadata !305, metadata !463}
!476 = metadata !{i32 139, i32 0, metadata !33, null}
!477 = metadata !{i32 140, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !33, i32 139, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!479 = metadata !{i32 142, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !481, i32 141, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!481 = metadata !{i32 786443, metadata !1, metadata !478, i32 140, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!482 = metadata !{i32 141, i32 0, metadata !480, null}
!483 = metadata !{i32 144, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !1, metadata !480, i32 143, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!485 = metadata !{i32 143, i32 0, metadata !484, null}
!486 = metadata !{i32 145, i32 0, metadata !480, null}
!487 = metadata !{i32 147, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !480, i32 146, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!489 = metadata !{i32 146, i32 0, metadata !488, null}
!490 = metadata !{i32 786689, metadata !313, metadata !"a", metadata !285, i32 16777486, metadata !36, i32 0, metadata !491} ; [ DW_TAG_arg_variable ] [a] [line 270]
!491 = metadata !{i32 149, i32 0, metadata !481, null}
!492 = metadata !{i32 270, i32 0, metadata !313, metadata !491}
!493 = metadata !{float* undef}
!494 = metadata !{i32 786689, metadata !313, metadata !"b", metadata !285, i32 33554702, metadata !38, i32 0, metadata !491} ; [ DW_TAG_arg_variable ] [b] [line 270]
!495 = metadata !{i32 272, i32 0, metadata !313, metadata !491}
!496 = metadata !{i32 273, i32 0, metadata !313, metadata !491}
!497 = metadata !{i32 274, i32 0, metadata !313, metadata !491}
!498 = metadata !{i32 786689, metadata !319, metadata !"a", metadata !285, i32 16777569, metadata !38, i32 0, metadata !499} ; [ DW_TAG_arg_variable ] [a] [line 353]
!499 = metadata !{i32 150, i32 0, metadata !481, null}
!500 = metadata !{i32 353, i32 0, metadata !319, metadata !499}
!501 = metadata !{i32 355, i32 0, metadata !319, metadata !499}
!502 = metadata !{i32 152, i32 0, metadata !481, null}
!503 = metadata !{i32 153, i32 0, metadata !481, null}
!504 = metadata !{i32 154, i32 0, metadata !505, null}
!505 = metadata !{i32 786443, metadata !1, metadata !481, i32 153, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!506 = metadata !{i32 786689, metadata !297, metadata !"a", metadata !285, i32 16777434, metadata !36, i32 0, metadata !504} ; [ DW_TAG_arg_variable ] [a] [line 218]
!507 = metadata !{i32 218, i32 0, metadata !297, metadata !504}
!508 = metadata !{i32 786689, metadata !297, metadata !"b", metadata !285, i32 33554650, metadata !36, i32 0, metadata !504} ; [ DW_TAG_arg_variable ] [b] [line 218]
!509 = metadata !{i32 786689, metadata !297, metadata !"c", metadata !285, i32 50331866, metadata !38, i32 0, metadata !504} ; [ DW_TAG_arg_variable ] [c] [line 218]
!510 = metadata !{i32 222, i32 0, metadata !297, metadata !504}
!511 = metadata !{i32 786688, metadata !297, metadata !"x", metadata !285, i32 220, metadata !12, i32 0, metadata !504} ; [ DW_TAG_auto_variable ] [x] [line 220]
!512 = metadata !{i32 223, i32 0, metadata !297, metadata !504}
!513 = metadata !{i32 786688, metadata !297, metadata !"y", metadata !285, i32 220, metadata !12, i32 0, metadata !504} ; [ DW_TAG_auto_variable ] [y] [line 220]
!514 = metadata !{i32 224, i32 0, metadata !297, metadata !504}
!515 = metadata !{i32 786688, metadata !297, metadata !"z", metadata !285, i32 220, metadata !12, i32 0, metadata !504} ; [ DW_TAG_auto_variable ] [z] [line 220]
!516 = metadata !{i32 786689, metadata !319, metadata !"a", metadata !285, i32 16777569, metadata !38, i32 0, metadata !517} ; [ DW_TAG_arg_variable ] [a] [line 353]
!517 = metadata !{i32 155, i32 0, metadata !505, null}
!518 = metadata !{i32 353, i32 0, metadata !319, metadata !517}
!519 = metadata !{i32 355, i32 0, metadata !319, metadata !517}
!520 = metadata !{i32 156, i32 0, metadata !505, null}
!521 = metadata !{i32 786689, metadata !313, metadata !"a", metadata !285, i32 16777486, metadata !36, i32 0, metadata !522} ; [ DW_TAG_arg_variable ] [a] [line 270]
!522 = metadata !{i32 157, i32 0, metadata !523, null}
!523 = metadata !{i32 786443, metadata !1, metadata !505, i32 156, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!524 = metadata !{i32 270, i32 0, metadata !313, metadata !522}
!525 = metadata !{i32 786689, metadata !313, metadata !"b", metadata !285, i32 33554702, metadata !38, i32 0, metadata !522} ; [ DW_TAG_arg_variable ] [b] [line 270]
!526 = metadata !{i32 272, i32 0, metadata !313, metadata !522}
!527 = metadata !{i32 273, i32 0, metadata !313, metadata !522}
!528 = metadata !{i32 274, i32 0, metadata !313, metadata !522}
!529 = metadata !{i32 158, i32 0, metadata !523, null}
!530 = metadata !{i32 159, i32 0, metadata !523, null}
!531 = metadata !{i32 164, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !1, metadata !533, i32 163, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!533 = metadata !{i32 786443, metadata !1, metadata !478, i32 162, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!534 = metadata !{i32 165, i32 0, metadata !532, null}
!535 = metadata !{i32 166, i32 0, metadata !532, null}
!536 = metadata !{i32 167, i32 0, metadata !532, null}
!537 = metadata !{i32 163, i32 0, metadata !532, null}
!538 = metadata !{i32 170, i32 0, metadata !33, null}
!539 = metadata !{i32 172, i32 0, metadata !49, null}
!540 = metadata !{float 0.000000e+00}
!541 = metadata !{i32 178, i32 0, metadata !49, null}
!542 = metadata !{i32 179, i32 0, metadata !49, null}
!543 = metadata !{i32 180, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !49, i32 180, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!545 = metadata !{i32 181, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !544, i32 180, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!547 = metadata !{i32 182, i32 0, metadata !546, null}
!548 = metadata !{i32 183, i32 0, metadata !546, null}
!549 = metadata !{i32 184, i32 0, metadata !546, null}
!550 = metadata !{i32 185, i32 0, metadata !546, null}
!551 = metadata !{i32 186, i32 0, metadata !552, null}
!552 = metadata !{i32 786443, metadata !1, metadata !546, i32 185, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!553 = metadata !{i32 187, i32 0, metadata !552, null}
!554 = metadata !{i32 188, i32 0, metadata !552, null}
!555 = metadata !{i32 189, i32 0, metadata !546, null}
!556 = metadata !{i32 190, i32 0, metadata !546, null}
!557 = metadata !{i32 192, i32 0, metadata !546, null}
!558 = metadata !{i32 193, i32 0, metadata !546, null}
!559 = metadata !{i32 194, i32 0, metadata !546, null}
!560 = metadata !{i32 195, i32 0, metadata !546, null}
!561 = metadata !{i32 199, i32 0, metadata !49, null}
!562 = metadata !{i32 200, i32 0, metadata !49, null}
!563 = metadata !{i32 201, i32 0, metadata !49, null}
!564 = metadata !{i32 204, i32 0, metadata !67, null}
!565 = metadata !{i32 205, i32 0, metadata !67, null}
!566 = metadata !{i32 211, i32 0, metadata !67, null}
!567 = metadata !{i32 212, i32 0, metadata !67, null}
!568 = metadata !{i32 213, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !67, i32 213, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!570 = metadata !{i32 214, i32 0, metadata !571, null}
!571 = metadata !{i32 786443, metadata !1, metadata !569, i32 213, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!572 = metadata !{i32 215, i32 0, metadata !571, null}
!573 = metadata !{i32 216, i32 0, metadata !571, null}
!574 = metadata !{i32 217, i32 0, metadata !571, null}
!575 = metadata !{i32 218, i32 0, metadata !571, null}
!576 = metadata !{i32 219, i32 0, metadata !577, null}
!577 = metadata !{i32 786443, metadata !1, metadata !571, i32 218, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!578 = metadata !{i32 220, i32 0, metadata !577, null}
!579 = metadata !{i32 221, i32 0, metadata !577, null}
!580 = metadata !{i32 222, i32 0, metadata !571, null}
!581 = metadata !{i32 223, i32 0, metadata !571, null}
!582 = metadata !{i32 225, i32 0, metadata !571, null}
!583 = metadata !{i32 227, i32 0, metadata !571, null}
!584 = metadata !{i32 228, i32 0, metadata !571, null}
!585 = metadata !{i32 229, i32 0, metadata !571, null}
!586 = metadata !{i32 230, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !571, i32 229, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!588 = metadata !{i32 235, i32 0, metadata !67, null}
!589 = metadata !{i32 236, i32 0, metadata !67, null}
!590 = metadata !{i32 237, i32 0, metadata !67, null}
!591 = metadata !{i32 240, i32 0, metadata !82, null}
!592 = metadata !{i32 244, i32 0, metadata !82, null}
!593 = metadata !{i32 245, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !1, metadata !82, i32 245, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!595 = metadata !{i32 246, i32 0, metadata !594, null}
!596 = metadata !{i32 253, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !1, metadata !598, i32 252, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!598 = metadata !{i32 786443, metadata !1, metadata !599, i32 252, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!599 = metadata !{i32 786443, metadata !1, metadata !600, i32 251, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!600 = metadata !{i32 786443, metadata !1, metadata !82, i32 250, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!601 = metadata !{i32 257, i32 0, metadata !602, null}
!602 = metadata !{i32 786443, metadata !1, metadata !597, i32 256, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!603 = metadata !{i32 251, i32 0, metadata !599, null}
!604 = metadata !{i32 252, i32 0, metadata !598, null}
!605 = metadata !{i32 254, i32 0, metadata !597, null}
!606 = metadata !{i32 255, i32 0, metadata !597, null}
!607 = metadata !{i32 256, i32 0, metadata !602, null}
!608 = metadata !{i32 250, i32 0, metadata !600, null}
!609 = metadata !{i32 259, i32 0, metadata !82, null}
!610 = metadata !{i32 261, i32 0, metadata !96, null}
!611 = metadata !{i32 262, i32 0, metadata !96, null}
!612 = metadata !{i32 265, i32 0, metadata !96, null}
!613 = metadata !{i32 273, i32 0, metadata !96, null}
!614 = metadata !{i32 274, i32 0, metadata !96, null}
!615 = metadata !{i32 277, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !96, i32 277, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!617 = metadata !{i32 288, i32 0, metadata !618, null}
!618 = metadata !{i32 786443, metadata !1, metadata !619, i32 285, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!619 = metadata !{i32 786443, metadata !1, metadata !616, i32 277, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!620 = metadata !{i32 322, i32 0, metadata !292, metadata !617}
!621 = metadata !{i32 323, i32 0, metadata !292, metadata !617}
!622 = metadata !{i32 278, i32 0, metadata !619, null}
!623 = metadata !{i32 279, i32 0, metadata !619, null}
!624 = metadata !{i32 280, i32 0, metadata !619, null}
!625 = metadata !{i32 281, i32 0, metadata !619, null}
!626 = metadata !{i32 282, i32 0, metadata !627, null}
!627 = metadata !{i32 786443, metadata !1, metadata !619, i32 281, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!628 = metadata !{i32 283, i32 0, metadata !627, null}
!629 = metadata !{i32 786689, metadata !313, metadata !"a", metadata !285, i32 16777486, metadata !36, i32 0, metadata !628} ; [ DW_TAG_arg_variable ] [a] [line 270]
!630 = metadata !{i32 270, i32 0, metadata !313, metadata !628}
!631 = metadata !{i32 786689, metadata !313, metadata !"b", metadata !285, i32 33554702, metadata !38, i32 0, metadata !628} ; [ DW_TAG_arg_variable ] [b] [line 270]
!632 = metadata !{i32 272, i32 0, metadata !313, metadata !628}
!633 = metadata !{i32 273, i32 0, metadata !313, metadata !628}
!634 = metadata !{i32 274, i32 0, metadata !313, metadata !628}
!635 = metadata !{i32 284, i32 0, metadata !627, null}
!636 = metadata !{i32 286, i32 0, metadata !618, null}
!637 = metadata !{i32 786689, metadata !292, metadata !"a", metadata !285, i32 16777532, metadata !38, i32 0, metadata !617} ; [ DW_TAG_arg_variable ] [a] [line 316]
!638 = metadata !{i32 316, i32 0, metadata !292, metadata !617}
!639 = metadata !{i32 321, i32 0, metadata !292, metadata !617}
!640 = metadata !{i32 289, i32 0, metadata !641, null}
!641 = metadata !{i32 786443, metadata !1, metadata !618, i32 289, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!642 = metadata !{i32 290, i32 0, metadata !643, null}
!643 = metadata !{i32 786443, metadata !1, metadata !641, i32 289, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!644 = metadata !{i32 291, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !643, i32 291, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!646 = metadata !{i32 292, i32 0, metadata !645, null}
!647 = metadata !{i32 295, i32 0, metadata !648, null}
!648 = metadata !{i32 786443, metadata !1, metadata !618, i32 294, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!649 = metadata !{i32 294, i32 0, metadata !648, null}
!650 = metadata !{i32 298, i32 0, metadata !96, null}
!651 = metadata !{i32 300, i32 0, metadata !187, null}
!652 = metadata !{i32 301, i32 0, metadata !187, null}
!653 = metadata !{i32 302, i32 0, metadata !187, null}
!654 = metadata !{i32 306, i32 0, metadata !187, null}
!655 = metadata !{i32 314, i32 0, metadata !187, null}
!656 = metadata !{i32 315, i32 0, metadata !187, null}
!657 = metadata !{i32 317, i32 0, metadata !187, null}
!658 = metadata !{i32 319, i32 0, metadata !659, null}
!659 = metadata !{i32 786443, metadata !1, metadata !187, i32 319, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!660 = metadata !{i32 326, i32 0, metadata !661, null}
!661 = metadata !{i32 786443, metadata !1, metadata !659, i32 319, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!662 = metadata !{i32 322, i32 0, metadata !292, metadata !660}
!663 = metadata !{i32 323, i32 0, metadata !292, metadata !660}
!664 = metadata !{i32 321, i32 0, metadata !661, null}
!665 = metadata !{i32 322, i32 0, metadata !661, null}
!666 = metadata !{i32 323, i32 0, metadata !661, null}
!667 = metadata !{i32 324, i32 0, metadata !661, null}
!668 = metadata !{i32 786689, metadata !292, metadata !"a", metadata !285, i32 16777532, metadata !38, i32 0, metadata !660} ; [ DW_TAG_arg_variable ] [a] [line 316]
!669 = metadata !{i32 316, i32 0, metadata !292, metadata !660}
!670 = metadata !{i32 321, i32 0, metadata !292, metadata !660}
!671 = metadata !{i32 327, i32 0, metadata !672, null}
!672 = metadata !{i32 786443, metadata !1, metadata !661, i32 327, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!673 = metadata !{i32 328, i32 0, metadata !674, null}
!674 = metadata !{i32 786443, metadata !1, metadata !672, i32 327, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!675 = metadata !{i32 329, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !1, metadata !674, i32 329, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!677 = metadata !{i32 330, i32 0, metadata !676, null}
!678 = metadata !{i32 333, i32 0, metadata !661, null}
!679 = metadata !{i32 335, i32 0, metadata !680, null}
!680 = metadata !{i32 786443, metadata !1, metadata !681, i32 334, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!681 = metadata !{i32 786443, metadata !1, metadata !682, i32 334, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!682 = metadata !{i32 786443, metadata !1, metadata !661, i32 333, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!683 = metadata !{i32 334, i32 0, metadata !681, null}
!684 = metadata !{i32 337, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !686, i32 336, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!686 = metadata !{i32 786443, metadata !1, metadata !687, i32 336, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!687 = metadata !{i32 786443, metadata !1, metadata !680, i32 335, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!688 = metadata !{i32 338, i32 0, metadata !689, null}
!689 = metadata !{i32 786443, metadata !1, metadata !685, i32 338, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!690 = metadata !{i32 339, i32 0, metadata !689, null}
!691 = metadata !{i32 336, i32 0, metadata !686, null}
!692 = metadata !{i32 342, i32 0, metadata !680, null}
!693 = metadata !{i32 344, i32 0, metadata !694, null}
!694 = metadata !{i32 786443, metadata !1, metadata !695, i32 343, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!695 = metadata !{i32 786443, metadata !1, metadata !696, i32 343, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!696 = metadata !{i32 786443, metadata !1, metadata !680, i32 342, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!697 = metadata !{i32 345, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !1, metadata !694, i32 345, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!699 = metadata !{i32 346, i32 0, metadata !698, null}
!700 = metadata !{i32 343, i32 0, metadata !695, null}
!701 = metadata !{i32 349, i32 0, metadata !680, null}
!702 = metadata !{i32 353, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !704, i32 352, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!704 = metadata !{i32 786443, metadata !1, metadata !705, i32 352, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!705 = metadata !{i32 786443, metadata !1, metadata !661, i32 351, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!706 = metadata !{i32 354, i32 0, metadata !707, null}
!707 = metadata !{i32 786443, metadata !1, metadata !703, i32 353, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!708 = metadata !{i32 355, i32 0, metadata !709, null}
!709 = metadata !{i32 786443, metadata !1, metadata !707, i32 355, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!710 = metadata !{i32 356, i32 0, metadata !709, null}
!711 = metadata !{i32 358, i32 0, metadata !703, null}
!712 = metadata !{i32 359, i32 0, metadata !713, null}
!713 = metadata !{i32 786443, metadata !1, metadata !703, i32 358, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!714 = metadata !{i32 360, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !1, metadata !713, i32 360, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!716 = metadata !{i32 361, i32 0, metadata !715, null}
!717 = metadata !{i32 363, i32 0, metadata !703, null}
!718 = metadata !{i32 352, i32 0, metadata !704, null}
!719 = metadata !{i32 376, i32 0, metadata !187, null}
!720 = metadata !{i32 378, i32 0, metadata !212, null}
!721 = metadata !{i32 382, i32 0, metadata !722, null}
!722 = metadata !{i32 786443, metadata !1, metadata !212, i32 382, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!723 = metadata !{i32 383, i32 0, metadata !722, null}
!724 = metadata !{i32 384, i32 0, metadata !212, null}
!725 = metadata !{i32 386, i32 0, metadata !219, null}
!726 = metadata !{i32 391, i32 0, metadata !219, null}
!727 = metadata !{i32 786689, metadata !313, metadata !"a", metadata !285, i32 16777486, metadata !36, i32 0, metadata !726} ; [ DW_TAG_arg_variable ] [a] [line 270]
!728 = metadata !{i32 270, i32 0, metadata !313, metadata !726}
!729 = metadata !{i32 786689, metadata !313, metadata !"b", metadata !285, i32 33554702, metadata !38, i32 0, metadata !726} ; [ DW_TAG_arg_variable ] [b] [line 270]
!730 = metadata !{i32 272, i32 0, metadata !313, metadata !726}
!731 = metadata !{i32 273, i32 0, metadata !313, metadata !726}
!732 = metadata !{i32 274, i32 0, metadata !313, metadata !726}
!733 = metadata !{i32 392, i32 0, metadata !219, null}
!734 = metadata !{i32 786689, metadata !313, metadata !"a", metadata !285, i32 16777486, metadata !36, i32 0, metadata !733} ; [ DW_TAG_arg_variable ] [a] [line 270]
!735 = metadata !{i32 270, i32 0, metadata !313, metadata !733}
!736 = metadata !{i32 786689, metadata !313, metadata !"b", metadata !285, i32 33554702, metadata !38, i32 0, metadata !733} ; [ DW_TAG_arg_variable ] [b] [line 270]
!737 = metadata !{i32 272, i32 0, metadata !313, metadata !733}
!738 = metadata !{i32 273, i32 0, metadata !313, metadata !733}
!739 = metadata !{i32 274, i32 0, metadata !313, metadata !733}
!740 = metadata !{i32 393, i32 0, metadata !219, null}
!741 = metadata !{float -1.000000e+00}
!742 = metadata !{i32 786689, metadata !283, metadata !"a", metadata !285, i32 16777520, metadata !12, i32 0, metadata !743} ; [ DW_TAG_arg_variable ] [a] [line 304]
!743 = metadata !{i32 394, i32 0, metadata !219, null}
!744 = metadata !{i32 304, i32 0, metadata !283, metadata !743}
!745 = metadata !{i32 306, i32 0, metadata !746, metadata !743}
!746 = metadata !{i32 786443, metadata !284, metadata !283} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!747 = metadata !{i32 307, i32 0, metadata !746, metadata !743}
!748 = metadata !{i32 308, i32 0, metadata !746, metadata !743}
!749 = metadata !{i32 395, i32 0, metadata !219, null}
!750 = metadata !{i32 786689, metadata !305, metadata !"a", metadata !285, i32 16777460, metadata !36, i32 0, metadata !749} ; [ DW_TAG_arg_variable ] [a] [line 244]
!751 = metadata !{i32 244, i32 0, metadata !305, metadata !749}
!752 = metadata !{i32 786689, metadata !305, metadata !"b", metadata !285, i32 33554676, metadata !36, i32 0, metadata !749} ; [ DW_TAG_arg_variable ] [b] [line 244]
!753 = metadata !{i32 786689, metadata !305, metadata !"c", metadata !285, i32 50331892, metadata !38, i32 0, metadata !749} ; [ DW_TAG_arg_variable ] [c] [line 244]
!754 = metadata !{i32 248, i32 0, metadata !305, metadata !749}
!755 = metadata !{i32 786688, metadata !305, metadata !"x", metadata !285, i32 246, metadata !12, i32 0, metadata !749} ; [ DW_TAG_auto_variable ] [x] [line 246]
!756 = metadata !{i32 249, i32 0, metadata !305, metadata !749}
!757 = metadata !{i32 786688, metadata !305, metadata !"y", metadata !285, i32 246, metadata !12, i32 0, metadata !749} ; [ DW_TAG_auto_variable ] [y] [line 246]
!758 = metadata !{i32 250, i32 0, metadata !305, metadata !749}
!759 = metadata !{i32 786688, metadata !305, metadata !"z", metadata !285, i32 246, metadata !12, i32 0, metadata !749} ; [ DW_TAG_auto_variable ] [z] [line 246]
!760 = metadata !{i32 252, i32 0, metadata !305, metadata !749}
!761 = metadata !{i32 253, i32 0, metadata !305, metadata !749}
!762 = metadata !{i32 254, i32 0, metadata !305, metadata !749}
!763 = metadata !{i32 398, i32 0, metadata !764, null}
!764 = metadata !{i32 786443, metadata !1, metadata !219, i32 398, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!765 = metadata !{i32 399, i32 0, metadata !764, null}
!766 = metadata !{i32 786689, metadata !283, metadata !"a", metadata !285, i32 16777520, metadata !12, i32 0, metadata !765} ; [ DW_TAG_arg_variable ] [a] [line 304]
!767 = metadata !{i32 304, i32 0, metadata !283, metadata !765}
!768 = metadata !{i32 306, i32 0, metadata !746, metadata !765}
!769 = metadata !{i32 307, i32 0, metadata !746, metadata !765}
!770 = metadata !{i32 308, i32 0, metadata !746, metadata !765}
!771 = metadata !{i32 402, i32 0, metadata !219, null}
!772 = metadata !{i32 786689, metadata !313, metadata !"a", metadata !285, i32 16777486, metadata !36, i32 0, metadata !771} ; [ DW_TAG_arg_variable ] [a] [line 270]
!773 = metadata !{i32 270, i32 0, metadata !313, metadata !771}
!774 = metadata !{i32 786689, metadata !313, metadata !"b", metadata !285, i32 33554702, metadata !38, i32 0, metadata !771} ; [ DW_TAG_arg_variable ] [b] [line 270]
!775 = metadata !{i32 272, i32 0, metadata !313, metadata !771}
!776 = metadata !{i32 273, i32 0, metadata !313, metadata !771}
!777 = metadata !{i32 274, i32 0, metadata !313, metadata !771}
!778 = metadata !{i32 403, i32 0, metadata !219, null}
!779 = metadata !{i32 786689, metadata !283, metadata !"a", metadata !285, i32 16777520, metadata !12, i32 0, metadata !780} ; [ DW_TAG_arg_variable ] [a] [line 304]
!780 = metadata !{i32 404, i32 0, metadata !219, null}
!781 = metadata !{i32 304, i32 0, metadata !283, metadata !780}
!782 = metadata !{i32 306, i32 0, metadata !746, metadata !780}
!783 = metadata !{i32 307, i32 0, metadata !746, metadata !780}
!784 = metadata !{i32 308, i32 0, metadata !746, metadata !780}
!785 = metadata !{i32 405, i32 0, metadata !786, null}
!786 = metadata !{i32 786443, metadata !1, metadata !219, i32 405, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!787 = metadata !{i32 406, i32 0, metadata !786, null}
!788 = metadata !{i32 786689, metadata !297, metadata !"a", metadata !285, i32 16777434, metadata !36, i32 0, metadata !787} ; [ DW_TAG_arg_variable ] [a] [line 218]
!789 = metadata !{i32 218, i32 0, metadata !297, metadata !787}
!790 = metadata !{i32 786689, metadata !297, metadata !"b", metadata !285, i32 33554650, metadata !36, i32 0, metadata !787} ; [ DW_TAG_arg_variable ] [b] [line 218]
!791 = metadata !{i32 786689, metadata !297, metadata !"c", metadata !285, i32 50331866, metadata !38, i32 0, metadata !787} ; [ DW_TAG_arg_variable ] [c] [line 218]
!792 = metadata !{i32 222, i32 0, metadata !297, metadata !787}
!793 = metadata !{i32 786688, metadata !297, metadata !"x", metadata !285, i32 220, metadata !12, i32 0, metadata !787} ; [ DW_TAG_auto_variable ] [x] [line 220]
!794 = metadata !{i32 223, i32 0, metadata !297, metadata !787}
!795 = metadata !{i32 786688, metadata !297, metadata !"y", metadata !285, i32 220, metadata !12, i32 0, metadata !787} ; [ DW_TAG_auto_variable ] [y] [line 220]
!796 = metadata !{i32 224, i32 0, metadata !297, metadata !787}
!797 = metadata !{i32 786688, metadata !297, metadata !"z", metadata !285, i32 220, metadata !12, i32 0, metadata !787} ; [ DW_TAG_auto_variable ] [z] [line 220]
!798 = metadata !{i32 226, i32 0, metadata !297, metadata !787}
!799 = metadata !{i32 227, i32 0, metadata !297, metadata !787}
!800 = metadata !{i32 228, i32 0, metadata !297, metadata !787}
!801 = metadata !{i32 410, i32 0, metadata !802, null}
!802 = metadata !{i32 786443, metadata !1, metadata !219, i32 409, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!803 = metadata !{i32 786689, metadata !283, metadata !"a", metadata !285, i32 16777520, metadata !12, i32 0, metadata !801} ; [ DW_TAG_arg_variable ] [a] [line 304]
!804 = metadata !{i32 304, i32 0, metadata !283, metadata !801}
!805 = metadata !{i32 306, i32 0, metadata !746, metadata !801}
!806 = metadata !{i32 307, i32 0, metadata !746, metadata !801}
!807 = metadata !{i32 308, i32 0, metadata !746, metadata !801}
!808 = metadata !{i32 409, i32 0, metadata !802, null}
!809 = metadata !{i32 411, i32 0, metadata !219, null}
!810 = metadata !{i32 413, i32 0, metadata !226, null}
!811 = metadata !{i32 415, i32 0, metadata !226, null}
!812 = metadata !{i32 416, i32 0, metadata !226, null}
!813 = metadata !{i32 418, i32 0, metadata !226, null}
!814 = metadata !{i32 420, i32 0, metadata !226, null}
!815 = metadata !{i32 2}
!816 = metadata !{i32 421, i32 0, metadata !817, null}
!817 = metadata !{i32 786443, metadata !1, metadata !226, i32 421, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!818 = metadata !{i32 422, i32 0, metadata !819, null}
!819 = metadata !{i32 786443, metadata !1, metadata !817, i32 421, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!820 = metadata !{i32 424, i32 0, metadata !819, null}
!821 = metadata !{i32 427, i32 0, metadata !819, null}
!822 = metadata !{i32 428, i32 0, metadata !819, null}
!823 = metadata !{i32 423, i32 0, metadata !819, null}
!824 = metadata !{i32 429, i32 0, metadata !825, null}
!825 = metadata !{i32 786443, metadata !1, metadata !819, i32 429, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!826 = metadata !{i32 431, i32 0, metadata !827, null}
!827 = metadata !{i32 786443, metadata !1, metadata !828, i32 430, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!828 = metadata !{i32 786443, metadata !1, metadata !825, i32 429, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!829 = metadata !{i32 430, i32 0, metadata !827, null}
!830 = metadata !{i32 8}
!831 = metadata !{i32 432, i32 0, metadata !828, null}
!832 = metadata !{i32 436, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !1, metadata !834, i32 435, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!834 = metadata !{i32 786443, metadata !1, metadata !226, i32 435, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!835 = metadata !{i32 437, i32 0, metadata !833, null}
!836 = metadata !{i32 438, i32 0, metadata !833, null}
!837 = metadata !{i32 439, i32 0, metadata !833, null}
!838 = metadata !{i32 441, i32 0, metadata !833, null}
!839 = metadata !{i32 442, i32 0, metadata !833, null}
!840 = metadata !{i32 443, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !1, metadata !833, i32 443, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!842 = metadata !{i32 445, i32 0, metadata !843, null}
!843 = metadata !{i32 786443, metadata !1, metadata !844, i32 444, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!844 = metadata !{i32 786443, metadata !1, metadata !841, i32 443, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!845 = metadata !{i32 444, i32 0, metadata !843, null}
!846 = metadata !{i32 16}
!847 = metadata !{i32 446, i32 0, metadata !844, null}
!848 = metadata !{i32 435, i32 0, metadata !834, null}
!849 = metadata !{i32 450, i32 0, metadata !850, null}
!850 = metadata !{i32 786443, metadata !1, metadata !851, i32 449, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!851 = metadata !{i32 786443, metadata !1, metadata !226, i32 449, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!852 = metadata !{i32 451, i32 0, metadata !850, null}
!853 = metadata !{i32 453, i32 0, metadata !850, null}
!854 = metadata !{i32 454, i32 0, metadata !850, null}
!855 = metadata !{i32 455, i32 0, metadata !850, null}
!856 = metadata !{i32 458, i32 0, metadata !850, null}
!857 = metadata !{i32 459, i32 0, metadata !850, null}
!858 = metadata !{i32 460, i32 0, metadata !859, null}
!859 = metadata !{i32 786443, metadata !1, metadata !850, i32 460, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!860 = metadata !{i32 462, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !862, i32 461, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!862 = metadata !{i32 786443, metadata !1, metadata !859, i32 460, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!863 = metadata !{i32 461, i32 0, metadata !861, null}
!864 = metadata !{i32 463, i32 0, metadata !862, null}
!865 = metadata !{i32 449, i32 0, metadata !851, null}
!866 = metadata !{i32 383, i32 0, metadata !722, metadata !867}
!867 = metadata !{i32 467, i32 0, metadata !226, null}
!868 = metadata !{i32 382, i32 0, metadata !722, metadata !867}
!869 = metadata !{i32 469, i32 0, metadata !870, null}
!870 = metadata !{i32 786443, metadata !1, metadata !871, i32 469, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!871 = metadata !{i32 786443, metadata !1, metadata !226, i32 468, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!872 = metadata !{i32 470, i32 0, metadata !870, null}
!873 = metadata !{i32 468, i32 0, metadata !871, null}
!874 = metadata !{i32 471, i32 0, metadata !226, null}
!875 = metadata !{i32 1}
!876 = metadata !{i32 481, i32 0, metadata !243, null}
!877 = metadata !{i32 484, i32 0, metadata !878, null}
!878 = metadata !{i32 786443, metadata !1, metadata !243, i32 483, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!879 = metadata !{i32 485, i32 0, metadata !880, null}
!880 = metadata !{i32 786443, metadata !1, metadata !878, i32 485, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!881 = metadata !{i32 487, i32 0, metadata !882, null}
!882 = metadata !{i32 786443, metadata !1, metadata !883, i32 486, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!883 = metadata !{i32 786443, metadata !1, metadata !880, i32 486, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!884 = metadata !{i32 486, i32 0, metadata !883, null}
!885 = metadata !{i32 491, i32 0, metadata !886, null}
!886 = metadata !{i32 786443, metadata !1, metadata !878, i32 490, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!887 = metadata !{i32 493, i32 0, metadata !878, null}
!888 = metadata !{i32 496, i32 0, metadata !243, null}
!889 = metadata !{i32 488, i32 0, metadata !882, null}
!890 = metadata !{i32 499, i32 0, metadata !251, null}
!891 = metadata !{i32 503, i32 0, metadata !892, null}
!892 = metadata !{i32 786443, metadata !1, metadata !251, i32 503, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!893 = metadata !{i32 504, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !892, i32 504, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!895 = metadata !{i32 509, i32 0, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !897, i32 509, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!897 = metadata !{i32 786443, metadata !1, metadata !894, i32 504, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!898 = metadata !{i32 505, i32 0, metadata !897, null}
!899 = metadata !{i32 507, i32 0, metadata !900, null}
!900 = metadata !{i32 786443, metadata !1, metadata !897, i32 506, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!901 = metadata !{i32 506, i32 0, metadata !900, null}
!902 = metadata !{i32 508, i32 0, metadata !897, null}
!903 = metadata !{i32 510, i32 0, metadata !896, null}
!904 = metadata !{i32 512, i32 0, metadata !251, null}
!905 = metadata !{i32 514, i32 0, metadata !261, null}
!906 = metadata !{i32 516, i32 0, metadata !261, null}
!907 = metadata !{i32 517, i32 0, metadata !261, null}
!908 = metadata !{i32 786689, metadata !212, metadata !"box", metadata !5, i32 16777594, metadata !10, i32 0, metadata !909} ; [ DW_TAG_arg_variable ] [box] [line 378]
!909 = metadata !{i32 521, i32 0, metadata !261, null}
!910 = metadata !{i32 378, i32 0, metadata !212, metadata !909}
!911 = metadata !{i32 786688, metadata !212, metadata !"d", metadata !5, i32 380, metadata !25, i32 0, metadata !909} ; [ DW_TAG_auto_variable ] [d] [line 380]
!912 = metadata !{i32 382, i32 0, metadata !722, metadata !909}
!913 = metadata !{i32 383, i32 0, metadata !722, metadata !909}
!914 = metadata !{i32 524, i32 0, metadata !915, null}
!915 = metadata !{i32 786443, metadata !1, metadata !916, i32 524, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!916 = metadata !{i32 786443, metadata !1, metadata !261, i32 523, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!917 = metadata !{i32 527, i32 0, metadata !918, null}
!918 = metadata !{i32 786443, metadata !1, metadata !261, i32 527, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!919 = metadata !{i32 523, i32 0, metadata !916, null}
!920 = metadata !{i32 525, i32 0, metadata !915, null}
!921 = metadata !{i32 528, i32 0, metadata !922, null}
!922 = metadata !{i32 786443, metadata !1, metadata !918, i32 528, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!923 = metadata !{i32 536, i32 0, metadata !924, null}
!924 = metadata !{i32 786443, metadata !1, metadata !925, i32 536, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!925 = metadata !{i32 786443, metadata !1, metadata !922, i32 528, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!926 = metadata !{i32 530, i32 0, metadata !927, null}
!927 = metadata !{i32 786443, metadata !1, metadata !925, i32 530, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!928 = metadata !{i32 531, i32 0, metadata !927, null}
!929 = metadata !{i32 532, i32 0, metadata !925, null}
!930 = metadata !{i32 534, i32 0, metadata !931, null}
!931 = metadata !{i32 786443, metadata !1, metadata !925, i32 533, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!932 = metadata !{i32 533, i32 0, metadata !931, null}
!933 = metadata !{i32 535, i32 0, metadata !925, null}
!934 = metadata !{i32 537, i32 0, metadata !924, null}
!935 = metadata !{i32 539, i32 0, metadata !261, null}
!936 = metadata !{i32 541, i32 0, metadata !275, null}
!937 = metadata !{i32 543, i32 0, metadata !275, null}
!938 = metadata !{i32 546, i32 0, metadata !275, null}
!939 = metadata !{i32 786689, metadata !212, metadata !"box", metadata !5, i32 16777594, metadata !10, i32 0, metadata !940} ; [ DW_TAG_arg_variable ] [box] [line 378]
!940 = metadata !{i32 547, i32 0, metadata !275, null}
!941 = metadata !{i32 378, i32 0, metadata !212, metadata !940}
!942 = metadata !{i32 786689, metadata !212, metadata !"box_center", metadata !5, i32 33554810, metadata !38, i32 0, metadata !940} ; [ DW_TAG_arg_variable ] [box_center] [line 378]
!943 = metadata !{i32 786688, metadata !212, metadata !"d", metadata !5, i32 380, metadata !25, i32 0, metadata !940} ; [ DW_TAG_auto_variable ] [d] [line 380]
!944 = metadata !{i32 382, i32 0, metadata !722, metadata !940}
!945 = metadata !{i32 383, i32 0, metadata !722, metadata !940}
!946 = metadata !{i32 548, i32 0, metadata !947, null}
!947 = metadata !{i32 786443, metadata !1, metadata !275, i32 548, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!948 = metadata !{i32 549, i32 0, metadata !949, null}
!949 = metadata !{i32 786443, metadata !1, metadata !947, i32 548, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pbc.c]
!950 = metadata !{i32 223, i32 0, metadata !297, metadata !951}
!951 = metadata !{i32 550, i32 0, metadata !949, null}
!952 = metadata !{i32 224, i32 0, metadata !297, metadata !951}
!953 = metadata !{i32 786689, metadata !297, metadata !"a", metadata !285, i32 16777434, metadata !36, i32 0, metadata !951} ; [ DW_TAG_arg_variable ] [a] [line 218]
!954 = metadata !{i32 218, i32 0, metadata !297, metadata !951}
!955 = metadata !{i32 786689, metadata !297, metadata !"b", metadata !285, i32 33554650, metadata !36, i32 0, metadata !951} ; [ DW_TAG_arg_variable ] [b] [line 218]
!956 = metadata !{i32 786689, metadata !297, metadata !"c", metadata !285, i32 50331866, metadata !38, i32 0, metadata !951} ; [ DW_TAG_arg_variable ] [c] [line 218]
!957 = metadata !{i32 222, i32 0, metadata !297, metadata !951}
!958 = metadata !{i32 786688, metadata !297, metadata !"x", metadata !285, i32 220, metadata !12, i32 0, metadata !951} ; [ DW_TAG_auto_variable ] [x] [line 220]
!959 = metadata !{i32 786688, metadata !297, metadata !"y", metadata !285, i32 220, metadata !12, i32 0, metadata !951} ; [ DW_TAG_auto_variable ] [y] [line 220]
!960 = metadata !{i32 786688, metadata !297, metadata !"z", metadata !285, i32 220, metadata !12, i32 0, metadata !951} ; [ DW_TAG_auto_variable ] [z] [line 220]
!961 = metadata !{i32 226, i32 0, metadata !297, metadata !951}
!962 = metadata !{i32 227, i32 0, metadata !297, metadata !951}
!963 = metadata !{i32 228, i32 0, metadata !297, metadata !951}
!964 = metadata !{i32 552, i32 0, metadata !275, null}
