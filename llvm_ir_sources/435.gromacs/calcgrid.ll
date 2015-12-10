; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@factor = global [6 x i32] [i32 2, i32 3, i32 5, i32 7, i32 11, i32 13], align 16
@.str = private unnamed_addr constant [33 x i8] c"invalid fourier grid spacing: %g\00", align 1
@ng = common global i32 0, align 4
@ng_max = common global i32 0, align 4
@n_list = common global i32 0, align 4
@n_list_alloc = common global i32 0, align 4
@list = common global i32* null, align 8
@decomp = common global [6 x i32] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [47 x i8] c"Calculating fourier grid dimensions for%s%s%s\0A\00", align 1
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str3 = private unnamed_addr constant [3 x i8] c" X\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c" Y\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c" Z\00", align 1
@debug = external global %struct._IO_FILE*
@.str6 = private unnamed_addr constant [10 x i8] c"grid: %d\0A\00", align 1
@.str7 = private unnamed_addr constant [84 x i8] c"the x or y grid spacing (nx %d, ny %d) is not divisible by the number of nodes (%d)\00", align 1
@.str8 = private unnamed_addr constant [83 x i8] c"could not find a grid spacing with nx and ny divisible by the number of nodes (%d)\00", align 1
@.str9 = private unnamed_addr constant [58 x i8] c"Using a fourier grid of %dx%dx%d, spacing %.3f %.3f %.3f\0A\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str11 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @calc_grid([3 x float]* nocapture %box, float %gr_sp, i32* nocapture %nx, i32* nocapture %ny, i32* nocapture %nz, i32 %nnodes) #0 {
entry:
  %n = alloca [3 x i32], align 4
  %nmin = alloca [3 x i32], align 4
  %box_size = alloca [3 x float], align 4
  %spacing = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !17), !dbg !57
  call void @llvm.dbg.value(metadata !{float %gr_sp}, i64 0, metadata !18), !dbg !57
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !19), !dbg !57
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !20), !dbg !57
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !21), !dbg !57
  call void @llvm.dbg.value(metadata !{i32 %nnodes}, i64 0, metadata !22), !dbg !57
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %n}, metadata !24), !dbg !58
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %nmin}, metadata !27), !dbg !59
  call void @llvm.dbg.declare(metadata !{[3 x float]* %box_size}, metadata !28), !dbg !60
  call void @llvm.dbg.declare(metadata !{[3 x float]* %spacing}, metadata !30), !dbg !60
  %cmp = fcmp ugt float %gr_sp, 0.000000e+00, !dbg !61
  br i1 %cmp, label %for.body, label %if.then, !dbg !61

if.then:                                          ; preds = %entry
  %conv = fpext float %gr_sp to double, !dbg !62
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str, i64 0, i64 0), double %conv) #6, !dbg !62
  br label %for.body, !dbg !62

for.body:                                         ; preds = %if.then, %entry, %for.body
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %for.body ], [ 0, %entry ], [ 0, %if.then ]
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv259, i64 %indvars.iv259, !dbg !63
  %0 = load float* %arrayidx4, align 4, !dbg !63, !tbaa !65
  %arrayidx6 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv259, !dbg !63
  store float %0, float* %arrayidx6, align 4, !dbg !63, !tbaa !65
  %indvars.iv.next260 = add i64 %indvars.iv259, 1, !dbg !68
  %lftr.wideiv261 = trunc i64 %indvars.iv.next260 to i32, !dbg !68
  %exitcond262 = icmp eq i32 %lftr.wideiv261, 3, !dbg !68
  br i1 %exitcond262, label %for.end, label %for.body, !dbg !68

for.end:                                          ; preds = %for.body
  %1 = load i32* %nx, align 4, !dbg !69, !tbaa !70
  %arrayidx7 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 0, !dbg !69
  store i32 %1, i32* %arrayidx7, align 4, !dbg !69, !tbaa !70
  %2 = load i32* %ny, align 4, !dbg !71, !tbaa !70
  %arrayidx8 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 1, !dbg !71
  store i32 %2, i32* %arrayidx8, align 4, !dbg !71, !tbaa !70
  %3 = load i32* %nz, align 4, !dbg !72, !tbaa !70
  %arrayidx9 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 2, !dbg !72
  store i32 %3, i32* %arrayidx9, align 4, !dbg !72, !tbaa !70
  store i32 1, i32* @ng, align 4, !dbg !73, !tbaa !70
  store i32 1, i32* @ng_max, align 4, !dbg !74, !tbaa !70
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !23), !dbg !75
  br label %for.body13, !dbg !75

for.body13:                                       ; preds = %for.inc29, %for.end
  %4 = phi i32 [ 1, %for.end ], [ %6, %for.inc29 ], !dbg !77
  %indvars.iv255 = phi i64 [ 0, %for.end ], [ %indvars.iv.next256, %for.inc29 ]
  %arrayidx15 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv255, !dbg !77
  %5 = load float* %arrayidx15, align 4, !dbg !77, !tbaa !65
  %div = fdiv float %5, %gr_sp, !dbg !77
  %conv16 = fpext float %div to double, !dbg !77
  %add = fadd double %conv16, 9.990000e-01, !dbg !77
  %conv17 = fptosi double %add to i32, !dbg !77
  %arrayidx19 = getelementptr inbounds [3 x i32]* %nmin, i64 0, i64 %indvars.iv255, !dbg !77
  store i32 %conv17, i32* %arrayidx19, align 4, !dbg !77, !tbaa !70
  %mul = shl nsw i32 %conv17, 1, !dbg !79
  %cmp22 = icmp sgt i32 %mul, %4, !dbg !79
  br i1 %cmp22, label %if.then24, label %for.inc29, !dbg !79

if.then24:                                        ; preds = %for.body13
  store i32 %mul, i32* @ng_max, align 4, !dbg !80, !tbaa !70
  br label %for.inc29, !dbg !80

for.inc29:                                        ; preds = %for.body13, %if.then24
  %6 = phi i32 [ %4, %for.body13 ], [ %mul, %if.then24 ]
  %indvars.iv.next256 = add i64 %indvars.iv255, 1, !dbg !75
  %lftr.wideiv257 = trunc i64 %indvars.iv.next256 to i32, !dbg !75
  %exitcond258 = icmp eq i32 %lftr.wideiv257, 3, !dbg !75
  br i1 %exitcond258, label %for.end31, label %for.body13, !dbg !75

for.end31:                                        ; preds = %for.inc29
  store i32 0, i32* @n_list, align 4, !dbg !81, !tbaa !70
  store i32 0, i32* @n_list_alloc, align 4, !dbg !82, !tbaa !70
  store i32* null, i32** @list, align 8, !dbg !83, !tbaa !84
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !26), !dbg !85
  call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i32]* @decomp to i8*), i8 0, i64 24, i32 16, i1 false), !dbg !87
  call fastcc void @make_list(i32 0) #7, !dbg !88
  %7 = load i32* %nx, align 4, !dbg !89, !tbaa !70
  %cmp41 = icmp slt i32 %7, 1, !dbg !89
  %.pre263 = load i32* %ny, align 4, !dbg !90, !tbaa !70
  %cmp43 = icmp slt i32 %.pre263, 1, !dbg !89
  %or.cond = or i1 %cmp41, %cmp43, !dbg !89
  br i1 %or.cond, label %if.then48, label %lor.lhs.false45, !dbg !89

lor.lhs.false45:                                  ; preds = %for.end31
  %8 = load i32* %nz, align 4, !dbg !89, !tbaa !70
  %cmp46 = icmp slt i32 %8, 1, !dbg !89
  br i1 %cmp46, label %if.then48, label %if.end57, !dbg !89

if.then48:                                        ; preds = %for.end31, %lor.lhs.false45
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !90, !tbaa !84
  %cmp49 = icmp sgt i32 %7, 0, !dbg !90
  %cond = select i1 %cmp49, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), !dbg !90
  %cmp51 = icmp sgt i32 %.pre263, 0, !dbg !90
  %cond53 = select i1 %cmp51, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), !dbg !90
  %10 = load i32* %nz, align 4, !dbg !90, !tbaa !70
  %cmp54 = icmp sgt i32 %10, 0, !dbg !90
  %cond56 = select i1 %cmp54, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), !dbg !90
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([47 x i8]* @.str1, i64 0, i64 0), i8* %cond, i8* %cond53, i8* %cond56) #6, !dbg !90
  br label %if.end57, !dbg !90

if.end57:                                         ; preds = %if.then48, %lor.lhs.false45
  %11 = load i32** @list, align 8, !dbg !91, !tbaa !84
  %12 = bitcast i32* %11 to i8*, !dbg !91
  %13 = load i32* @n_list, align 4, !dbg !91, !tbaa !70
  %conv58 = sext i32 %13 to i64, !dbg !91
  call void @qsort(i8* %12, i64 %conv58, i64 4, i32 (i8*, i8*)* @list_comp) #6, !dbg !91
  %14 = load %struct._IO_FILE** @debug, align 8, !dbg !92, !tbaa !84
  %tobool = icmp ne %struct._IO_FILE* %14, null, !dbg !92
  %15 = load i32* @n_list, align 4, !dbg !93, !tbaa !70
  %cmp61238 = icmp sgt i32 %15, 0, !dbg !93
  %or.cond268 = and i1 %tobool, %cmp61238, !dbg !92
  br i1 %or.cond268, label %for.body63, label %if.end70, !dbg !92

for.body63:                                       ; preds = %if.end57, %for.body63.for.body63_crit_edge
  %16 = phi %struct._IO_FILE* [ %.pre266, %for.body63.for.body63_crit_edge ], [ %14, %if.end57 ]
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %for.body63.for.body63_crit_edge ], [ 0, %if.end57 ]
  %17 = load i32** @list, align 8, !dbg !95, !tbaa !84
  %arrayidx65 = getelementptr inbounds i32* %17, i64 %indvars.iv249, !dbg !95
  %18 = load i32* %arrayidx65, align 4, !dbg !95, !tbaa !70
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), i32 %18) #6, !dbg !95
  %indvars.iv.next250 = add i64 %indvars.iv249, 1, !dbg !93
  %19 = load i32* @n_list, align 4, !dbg !93, !tbaa !70
  %20 = trunc i64 %indvars.iv.next250 to i32, !dbg !93
  %cmp61 = icmp slt i32 %20, %19, !dbg !93
  br i1 %cmp61, label %for.body63.for.body63_crit_edge, label %if.end70, !dbg !93

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  %.pre266 = load %struct._IO_FILE** @debug, align 8, !dbg !95, !tbaa !84
  br label %for.body63, !dbg !93

if.end70:                                         ; preds = %if.end57, %for.body63
  %21 = load i32* %nx, align 4, !dbg !96, !tbaa !70
  %cmp71 = icmp sgt i32 %21, 0, !dbg !96
  br i1 %cmp71, label %land.lhs.true, label %lor.lhs.false77, !dbg !96

land.lhs.true:                                    ; preds = %if.end70
  %div73 = srem i32 %21, %nnodes, !dbg !96
  %cmp75 = icmp eq i32 %div73, 0, !dbg !96
  br i1 %cmp75, label %lor.lhs.false77, label %land.lhs.true.if.then85_crit_edge, !dbg !96

land.lhs.true.if.then85_crit_edge:                ; preds = %land.lhs.true
  %.pre264 = load i32* %ny, align 4, !dbg !97, !tbaa !70
  br label %if.then85, !dbg !96

lor.lhs.false77:                                  ; preds = %land.lhs.true, %if.end70
  %22 = load i32* %ny, align 4, !dbg !96, !tbaa !70
  %cmp78 = icmp sgt i32 %22, 0, !dbg !96
  br i1 %cmp78, label %land.lhs.true80, label %for.cond91.preheader, !dbg !96

land.lhs.true80:                                  ; preds = %lor.lhs.false77
  %div81 = srem i32 %22, %nnodes, !dbg !96
  %cmp83 = icmp eq i32 %div81, 0, !dbg !96
  br i1 %cmp83, label %for.cond91.preheader, label %if.then85, !dbg !96

if.then85:                                        ; preds = %land.lhs.true.if.then85_crit_edge, %land.lhs.true80
  %23 = phi i32 [ %.pre264, %land.lhs.true.if.then85_crit_edge ], [ %22, %land.lhs.true80 ]
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([84 x i8]* @.str7, i64 0, i64 0), i32 %21, i32 %23, i32 %nnodes) #6, !dbg !97
  br label %for.cond91.preheader, !dbg !97

for.cond91.preheader:                             ; preds = %for.inc132, %lor.lhs.false77, %if.then85, %land.lhs.true80
  %indvars.iv245 = phi i64 [ 0, %land.lhs.true80 ], [ 0, %if.then85 ], [ 0, %lor.lhs.false77 ], [ %indvars.iv.next246, %for.inc132 ]
  %arrayidx95 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 %indvars.iv245, !dbg !98
  %24 = load i32* @n_list, align 4, !dbg !98, !tbaa !70
  %cmp92235 = icmp sgt i32 %24, 0, !dbg !98
  br i1 %cmp92235, label %land.rhs.lr.ph, label %for.cond91.preheader.for.end125_crit_edge, !dbg !98

for.cond91.preheader.for.end125_crit_edge:        ; preds = %for.cond91.preheader
  %.pre265 = load i32* %arrayidx95, align 4, !dbg !102, !tbaa !70
  br label %for.end125, !dbg !98

land.rhs.lr.ph:                                   ; preds = %for.cond91.preheader
  %25 = load i32** @list, align 8, !dbg !103, !tbaa !84
  %arrayidx102 = getelementptr inbounds [3 x i32]* %nmin, i64 0, i64 %indvars.iv245, !dbg !103
  %26 = trunc i64 %indvars.iv245 to i32, !dbg !103
  %cmp106 = icmp eq i32 %26, 2, !dbg !103
  %.pre = load i32* %arrayidx95, align 4, !dbg !98, !tbaa !70
  br label %land.rhs, !dbg !98

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc123
  %27 = phi i32 [ %.pre, %land.rhs.lr.ph ], [ %30, %for.inc123 ], !dbg !98
  %indvars.iv243 = phi i64 [ 0, %land.rhs.lr.ph ], [ %indvars.iv.next244, %for.inc123 ]
  %cmp96 = icmp slt i32 %27, 1, !dbg !98
  br i1 %cmp96, label %for.body98, label %for.inc132

for.body98:                                       ; preds = %land.rhs
  %arrayidx100 = getelementptr inbounds i32* %25, i64 %indvars.iv243, !dbg !103
  %28 = load i32* %arrayidx100, align 4, !dbg !103, !tbaa !70
  %29 = load i32* %arrayidx102, align 4, !dbg !103, !tbaa !70
  %cmp103 = icmp slt i32 %28, %29, !dbg !103
  br i1 %cmp103, label %for.inc123, label %land.lhs.true105, !dbg !103

land.lhs.true105:                                 ; preds = %for.body98
  br i1 %cmp106, label %if.then117, label %lor.lhs.false108, !dbg !103

lor.lhs.false108:                                 ; preds = %land.lhs.true105
  %div113 = srem i32 %28, %nnodes, !dbg !103
  %cmp115 = icmp eq i32 %div113, 0, !dbg !103
  br i1 %cmp115, label %if.then117, label %for.inc123, !dbg !103

if.then117:                                       ; preds = %lor.lhs.false108, %land.lhs.true105
  store i32 %28, i32* %arrayidx95, align 4, !dbg !104, !tbaa !70
  br label %for.inc123, !dbg !104

for.inc123:                                       ; preds = %for.body98, %lor.lhs.false108, %if.then117
  %30 = phi i32 [ %27, %for.body98 ], [ %27, %lor.lhs.false108 ], [ %28, %if.then117 ]
  %indvars.iv.next244 = add i64 %indvars.iv243, 1, !dbg !98
  %31 = trunc i64 %indvars.iv.next244 to i32, !dbg !98
  %cmp92 = icmp slt i32 %31, %24, !dbg !98
  br i1 %cmp92, label %land.rhs, label %for.end125, !dbg !98

for.end125:                                       ; preds = %for.inc123, %for.cond91.preheader.for.end125_crit_edge
  %32 = phi i32 [ %.pre265, %for.cond91.preheader.for.end125_crit_edge ], [ %30, %for.inc123 ]
  %cmp128 = icmp slt i32 %32, 1, !dbg !102
  br i1 %cmp128, label %if.then130, label %for.inc132, !dbg !102

if.then130:                                       ; preds = %for.end125
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([83 x i8]* @.str8, i64 0, i64 0), i32 %nnodes) #6, !dbg !105
  br label %for.inc132, !dbg !105

for.inc132:                                       ; preds = %land.rhs, %for.end125, %if.then130
  %indvars.iv.next246 = add i64 %indvars.iv245, 1, !dbg !106
  %lftr.wideiv247 = trunc i64 %indvars.iv.next246 to i32, !dbg !106
  %exitcond248 = icmp eq i32 %lftr.wideiv247, 3, !dbg !106
  br i1 %exitcond248, label %for.body138, label %for.cond91.preheader, !dbg !106

for.body138:                                      ; preds = %for.body138, %for.inc132
  %indvars.iv = phi i64 [ 0, %for.inc132 ], [ %indvars.iv.next, %for.body138 ]
  %max_spacing.0234 = phi float [ 0.000000e+00, %for.inc132 ], [ %max_spacing.1, %for.body138 ]
  %arrayidx140 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv, !dbg !107
  %33 = load float* %arrayidx140, align 4, !dbg !107, !tbaa !65
  %arrayidx142 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 %indvars.iv, !dbg !107
  %34 = load i32* %arrayidx142, align 4, !dbg !107, !tbaa !70
  %conv143 = sitofp i32 %34 to float, !dbg !107
  %div144 = fdiv float %33, %conv143, !dbg !107
  %arrayidx146 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 %indvars.iv, !dbg !107
  store float %div144, float* %arrayidx146, align 4, !dbg !107, !tbaa !65
  %cmp149 = fcmp ogt float %div144, %max_spacing.0234, !dbg !110
  call void @llvm.dbg.value(metadata !{float %div144}, i64 0, metadata !31), !dbg !111
  %max_spacing.1 = select i1 %cmp149, float %div144, float %max_spacing.0234, !dbg !110
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !112
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !112
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !112
  br i1 %exitcond, label %for.end157, label %for.body138, !dbg !112

for.end157:                                       ; preds = %for.body138
  %35 = load i32* %arrayidx7, align 4, !dbg !113, !tbaa !70
  store i32 %35, i32* %nx, align 4, !dbg !113, !tbaa !70
  %36 = load i32* %arrayidx8, align 4, !dbg !114, !tbaa !70
  store i32 %36, i32* %ny, align 4, !dbg !114, !tbaa !70
  %37 = load i32* %arrayidx9, align 4, !dbg !115, !tbaa !70
  store i32 %37, i32* %nz, align 4, !dbg !115, !tbaa !70
  %38 = load %struct._IO_FILE** @stderr, align 8, !dbg !116, !tbaa !84
  %39 = load i32* %nx, align 4, !dbg !116, !tbaa !70
  %40 = load i32* %ny, align 4, !dbg !116, !tbaa !70
  %arrayidx161 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 0, !dbg !116
  %41 = load float* %arrayidx161, align 4, !dbg !116, !tbaa !65
  %conv162 = fpext float %41 to double, !dbg !116
  %arrayidx163 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 1, !dbg !116
  %42 = load float* %arrayidx163, align 4, !dbg !116, !tbaa !65
  %conv164 = fpext float %42 to double, !dbg !116
  %arrayidx165 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 2, !dbg !116
  %43 = load float* %arrayidx165, align 4, !dbg !116, !tbaa !65
  %conv166 = fpext float %43 to double, !dbg !116
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), i32 %39, i32 %40, i32 %37, double %conv162, double %conv164, double %conv166) #6, !dbg !116
  ret float %max_spacing.1, !dbg !117
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @make_list(i32 %start_fac) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %start_fac}, i64 0, metadata !44), !dbg !118
  %0 = load i32* @ng, align 4, !dbg !119, !tbaa !70
  %1 = load i32* @ng_max, align 4, !dbg !119, !tbaa !70
  %cmp = icmp slt i32 %0, %1, !dbg !119
  br i1 %cmp, label %if.then, label %if.end24, !dbg !119

if.then:                                          ; preds = %entry
  %2 = load i32* @n_list, align 4, !dbg !120, !tbaa !70
  %3 = load i32* @n_list_alloc, align 4, !dbg !120, !tbaa !70
  %cmp1 = icmp slt i32 %2, %3, !dbg !120
  br i1 %cmp1, label %if.then.if.end_crit_edge, label %if.then2, !dbg !120

if.then.if.end_crit_edge:                         ; preds = %if.then
  %.pre35 = load i32** @list, align 8, !dbg !122, !tbaa !84
  br label %if.end, !dbg !120

if.then2:                                         ; preds = %if.then
  %add = add nsw i32 %3, 100, !dbg !123
  store i32 %add, i32* @n_list_alloc, align 4, !dbg !123, !tbaa !70
  %4 = load i32** @list, align 8, !dbg !125, !tbaa !84
  %5 = bitcast i32* %4 to i8*, !dbg !125
  %mul = shl i32 %add, 2, !dbg !125
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str11, i64 0, i64 0), i32 50, i8* %5, i32 %mul) #6, !dbg !125
  %6 = bitcast i8* %call to i32*, !dbg !125
  store i32* %6, i32** @list, align 8, !dbg !125, !tbaa !84
  %.pre = load i32* @ng, align 4, !dbg !122, !tbaa !70
  %.pre34 = load i32* @n_list, align 4, !dbg !122, !tbaa !70
  br label %if.end, !dbg !126

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then2
  %7 = phi i32* [ %.pre35, %if.then.if.end_crit_edge ], [ %6, %if.then2 ]
  %8 = phi i32 [ %2, %if.then.if.end_crit_edge ], [ %.pre34, %if.then2 ]
  %9 = phi i32 [ %0, %if.then.if.end_crit_edge ], [ %.pre, %if.then2 ]
  %idxprom = sext i32 %8 to i64, !dbg !122
  %arrayidx = getelementptr inbounds i32* %7, i64 %idxprom, !dbg !122
  store i32 %9, i32* %arrayidx, align 4, !dbg !122, !tbaa !70
  %10 = load i32* @n_list, align 4, !dbg !127, !tbaa !70
  %inc = add nsw i32 %10, 1, !dbg !127
  store i32 %inc, i32* @n_list, align 4, !dbg !127, !tbaa !70
  tail call void @llvm.dbg.value(metadata !{i32 %start_fac}, i64 0, metadata !45), !dbg !128
  %cmp432 = icmp slt i32 %start_fac, 6, !dbg !128
  br i1 %cmp432, label %for.body.lr.ph, label %if.end24, !dbg !128

for.body.lr.ph:                                   ; preds = %if.end
  %11 = sext i32 %start_fac to i64
  br label %for.body, !dbg !128

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %11, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %12 = trunc i64 %indvars.iv to i32, !dbg !130
  %cmp6 = icmp slt i32 %12, 4, !dbg !130
  br i1 %cmp6, label %if.then11, label %lor.lhs.false, !dbg !130

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i64* bitcast (i32* getelementptr inbounds ([6 x i32]* @decomp, i64 0, i64 4) to i64*), align 16, !dbg !130
  %14 = trunc i64 %13 to i32, !dbg !130
  %15 = lshr i64 %13, 32
  %16 = trunc i64 %15 to i32
  %add8 = sub i32 0, %16, !dbg !130
  %cmp9 = icmp eq i32 %14, %add8, !dbg !130
  br i1 %cmp9, label %if.then11, label %for.inc, !dbg !130

if.then11:                                        ; preds = %lor.lhs.false, %for.body
  %arrayidx13 = getelementptr inbounds [6 x i32]* @factor, i64 0, i64 %indvars.iv, !dbg !132
  %17 = load i32* %arrayidx13, align 4, !dbg !132, !tbaa !70
  %18 = load i32* @ng, align 4, !dbg !132, !tbaa !70
  %mul14 = mul nsw i32 %18, %17, !dbg !132
  store i32 %mul14, i32* @ng, align 4, !dbg !132, !tbaa !70
  %arrayidx16 = getelementptr inbounds [6 x i32]* @decomp, i64 0, i64 %indvars.iv, !dbg !134
  %19 = load i32* %arrayidx16, align 4, !dbg !134, !tbaa !70
  %inc17 = add nsw i32 %19, 1, !dbg !134
  store i32 %inc17, i32* %arrayidx16, align 4, !dbg !134, !tbaa !70
  tail call fastcc void @make_list(i32 %12) #7, !dbg !135
  %20 = load i32* %arrayidx13, align 4, !dbg !136, !tbaa !70
  %21 = load i32* @ng, align 4, !dbg !136, !tbaa !70
  %div = sdiv i32 %21, %20, !dbg !136
  store i32 %div, i32* @ng, align 4, !dbg !136, !tbaa !70
  %22 = load i32* %arrayidx16, align 4, !dbg !137, !tbaa !70
  %dec = add nsw i32 %22, -1, !dbg !137
  store i32 %dec, i32* %arrayidx16, align 4, !dbg !137, !tbaa !70
  br label %for.inc, !dbg !138

for.inc:                                          ; preds = %lor.lhs.false, %if.then11
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !128
  %23 = trunc i64 %indvars.iv.next to i32, !dbg !128
  %cmp4 = icmp slt i32 %23, 6, !dbg !128
  br i1 %cmp4, label %for.body, label %if.end24, !dbg !128

if.end24:                                         ; preds = %if.end, %for.inc, %entry
  ret void, !dbg !139
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #2

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @list_comp(i8* nocapture %a, i8* nocapture %b) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !38), !dbg !140
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !39), !dbg !140
  %0 = bitcast i8* %a to i32*, !dbg !141
  %1 = load i32* %0, align 4, !dbg !141, !tbaa !70
  %2 = bitcast i8* %b to i32*, !dbg !141
  %3 = load i32* %2, align 4, !dbg !141, !tbaa !70
  %sub = sub nsw i32 %1, %3, !dbg !141
  ret i32 %sub, !dbg !141
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !46, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !32, metadata !40}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_grid", metadata !"calc_grid", metadata !"", i32 73, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float ([3 x float]*, float, i32*, i32*, i32*, i32)* @calc_grid, null, null, metadata !16, i32 74} ; [ DW_TAG_subprogram ] [line 73] [def] [scope 74] [calc_grid]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !10, metadata !8, metadata !14, metadata !14, metadata !14, metadata !15}
!8 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!9 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!11 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !8, metadata !12, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !26, metadata !27, metadata !28, metadata !30, metadata !31}
!17 = metadata !{i32 786689, metadata !4, metadata !"box", metadata !5, i32 16777289, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 73]
!18 = metadata !{i32 786689, metadata !4, metadata !"gr_sp", metadata !5, i32 33554505, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gr_sp] [line 73]
!19 = metadata !{i32 786689, metadata !4, metadata !"nx", metadata !5, i32 50331721, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 73]
!20 = metadata !{i32 786689, metadata !4, metadata !"ny", metadata !5, i32 67108937, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 73]
!21 = metadata !{i32 786689, metadata !4, metadata !"nz", metadata !5, i32 83886153, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 73]
!22 = metadata !{i32 786689, metadata !4, metadata !"nnodes", metadata !5, i32 100663369, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnodes] [line 73]
!23 = metadata !{i32 786688, metadata !4, metadata !"d", metadata !5, i32 75, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 75]
!24 = metadata !{i32 786688, metadata !4, metadata !"n", metadata !5, i32 75, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 75]
!25 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !15, metadata !12, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!26 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 76, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 76]
!27 = metadata !{i32 786688, metadata !4, metadata !"nmin", metadata !5, i32 76, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmin] [line 76]
!28 = metadata !{i32 786688, metadata !4, metadata !"box_size", metadata !5, i32 77, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [box_size] [line 77]
!29 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!30 = metadata !{i32 786688, metadata !4, metadata !"spacing", metadata !5, i32 77, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [spacing] [line 77]
!31 = metadata !{i32 786688, metadata !4, metadata !"max_spacing", metadata !5, i32 78, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_spacing] [line 78]
!32 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"list_comp", metadata !"list_comp", metadata !"", i32 68, metadata !33, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @list_comp, null, null, metadata !37, i32 69} ; [ DW_TAG_subprogram ] [line 68] [local] [def] [scope 69] [list_comp]
!33 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{metadata !15, metadata !35, metadata !35}
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!36 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{metadata !38, metadata !39}
!38 = metadata !{i32 786689, metadata !32, metadata !"a", metadata !5, i32 16777284, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 68]
!39 = metadata !{i32 786689, metadata !32, metadata !"b", metadata !5, i32 33554500, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 68]
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"make_list", metadata !"make_list", metadata !"", i32 43, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @make_list, null, null, metadata !43, i32 44} ; [ DW_TAG_subprogram ] [line 43] [local] [def] [scope 44] [make_list]
!41 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{null, metadata !15}
!43 = metadata !{metadata !44, metadata !45}
!44 = metadata !{i32 786689, metadata !40, metadata !"start_fac", metadata !5, i32 16777259, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start_fac] [line 43]
!45 = metadata !{i32 786688, metadata !40, metadata !"i", metadata !5, i32 45, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 45]
!46 = metadata !{metadata !47, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56}
!47 = metadata !{i32 786484, i32 0, null, metadata !"factor", metadata !"factor", metadata !"", metadata !5, i32 39, metadata !48, i32 0, i32 1, [6 x i32]* @factor, null} ; [ DW_TAG_variable ] [factor] [line 39] [def]
!48 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !15, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!51 = metadata !{i32 786484, i32 0, null, metadata !"decomp", metadata !"decomp", metadata !"", metadata !5, i32 40, metadata !48, i32 0, i32 1, [6 x i32]* @decomp, null} ; [ DW_TAG_variable ] [decomp] [line 40] [def]
!52 = metadata !{i32 786484, i32 0, null, metadata !"ng", metadata !"ng", metadata !"", metadata !5, i32 41, metadata !15, i32 0, i32 1, i32* @ng, null} ; [ DW_TAG_variable ] [ng] [line 41] [def]
!53 = metadata !{i32 786484, i32 0, null, metadata !"ng_max", metadata !"ng_max", metadata !"", metadata !5, i32 41, metadata !15, i32 0, i32 1, i32* @ng_max, null} ; [ DW_TAG_variable ] [ng_max] [line 41] [def]
!54 = metadata !{i32 786484, i32 0, null, metadata !"list", metadata !"list", metadata !"", metadata !5, i32 41, metadata !14, i32 0, i32 1, i32** @list, null} ; [ DW_TAG_variable ] [list] [line 41] [def]
!55 = metadata !{i32 786484, i32 0, null, metadata !"n_list", metadata !"n_list", metadata !"", metadata !5, i32 41, metadata !15, i32 0, i32 1, i32* @n_list, null} ; [ DW_TAG_variable ] [n_list] [line 41] [def]
!56 = metadata !{i32 786484, i32 0, null, metadata !"n_list_alloc", metadata !"n_list_alloc", metadata !"", metadata !5, i32 41, metadata !15, i32 0, i32 1, i32* @n_list_alloc, null} ; [ DW_TAG_variable ] [n_list_alloc] [line 41] [def]
!57 = metadata !{i32 73, i32 0, metadata !4, null}
!58 = metadata !{i32 75, i32 0, metadata !4, null}
!59 = metadata !{i32 76, i32 0, metadata !4, null}
!60 = metadata !{i32 77, i32 0, metadata !4, null}
!61 = metadata !{i32 80, i32 0, metadata !4, null}
!62 = metadata !{i32 81, i32 0, metadata !4, null}
!63 = metadata !{i32 84, i32 0, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !4, i32 83, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!65 = metadata !{metadata !"float", metadata !66}
!66 = metadata !{metadata !"omnipotent char", metadata !67}
!67 = metadata !{metadata !"Simple C/C++ TBAA"}
!68 = metadata !{i32 83, i32 0, metadata !64, null}
!69 = metadata !{i32 86, i32 0, metadata !4, null}
!70 = metadata !{metadata !"int", metadata !66}
!71 = metadata !{i32 87, i32 0, metadata !4, null}
!72 = metadata !{i32 88, i32 0, metadata !4, null}
!73 = metadata !{i32 90, i32 0, metadata !4, null}
!74 = metadata !{i32 91, i32 0, metadata !4, null}
!75 = metadata !{i32 92, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !4, i32 92, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!77 = metadata !{i32 93, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !76, i32 92, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!79 = metadata !{i32 94, i32 0, metadata !78, null}
!80 = metadata !{i32 95, i32 0, metadata !78, null}
!81 = metadata !{i32 97, i32 0, metadata !4, null}
!82 = metadata !{i32 98, i32 0, metadata !4, null}
!83 = metadata !{i32 99, i32 0, metadata !4, null}
!84 = metadata !{metadata !"any pointer", metadata !66}
!85 = metadata !{i32 100, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !4, i32 100, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!87 = metadata !{i32 101, i32 0, metadata !86, null}
!88 = metadata !{i32 102, i32 0, metadata !4, null}
!89 = metadata !{i32 104, i32 0, metadata !4, null}
!90 = metadata !{i32 105, i32 0, metadata !4, null}
!91 = metadata !{i32 108, i32 0, metadata !4, null}
!92 = metadata !{i32 109, i32 0, metadata !4, null}
!93 = metadata !{i32 110, i32 0, metadata !94, null}
!94 = metadata !{i32 786443, metadata !1, metadata !4, i32 110, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!95 = metadata !{i32 111, i32 0, metadata !94, null}
!96 = metadata !{i32 113, i32 0, metadata !4, null}
!97 = metadata !{i32 115, i32 0, metadata !4, null}
!98 = metadata !{i32 118, i32 0, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !100, i32 118, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!100 = metadata !{i32 786443, metadata !1, metadata !101, i32 117, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!101 = metadata !{i32 786443, metadata !1, metadata !4, i32 117, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!102 = metadata !{i32 122, i32 0, metadata !100, null}
!103 = metadata !{i32 119, i32 0, metadata !99, null}
!104 = metadata !{i32 121, i32 0, metadata !99, null}
!105 = metadata !{i32 123, i32 0, metadata !100, null}
!106 = metadata !{i32 117, i32 0, metadata !101, null}
!107 = metadata !{i32 128, i32 0, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !109, i32 127, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!109 = metadata !{i32 786443, metadata !1, metadata !4, i32 127, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!110 = metadata !{i32 129, i32 0, metadata !108, null}
!111 = metadata !{i32 130, i32 0, metadata !108, null}
!112 = metadata !{i32 127, i32 0, metadata !109, null}
!113 = metadata !{i32 132, i32 0, metadata !4, null}
!114 = metadata !{i32 133, i32 0, metadata !4, null}
!115 = metadata !{i32 134, i32 0, metadata !4, null}
!116 = metadata !{i32 135, i32 0, metadata !4, null}
!117 = metadata !{i32 138, i32 0, metadata !4, null}
!118 = metadata !{i32 43, i32 0, metadata !40, null}
!119 = metadata !{i32 47, i32 0, metadata !40, null}
!120 = metadata !{i32 48, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !40, i32 47, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!122 = metadata !{i32 52, i32 0, metadata !121, null}
!123 = metadata !{i32 49, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !121, i32 48, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!125 = metadata !{i32 50, i32 0, metadata !124, null}
!126 = metadata !{i32 51, i32 0, metadata !124, null}
!127 = metadata !{i32 53, i32 0, metadata !121, null}
!128 = metadata !{i32 55, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !121, i32 55, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!130 = metadata !{i32 57, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !129, i32 55, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!132 = metadata !{i32 58, i32 0, metadata !133, null} ; [ DW_TAG_imported_module ]
!133 = metadata !{i32 786443, metadata !1, metadata !131, i32 57, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/calcgrid.c]
!134 = metadata !{i32 59, i32 0, metadata !133, null}
!135 = metadata !{i32 60, i32 0, metadata !133, null}
!136 = metadata !{i32 61, i32 0, metadata !133, null}
!137 = metadata !{i32 62, i32 0, metadata !133, null}
!138 = metadata !{i32 63, i32 0, metadata !133, null}
!139 = metadata !{i32 66, i32 0, metadata !40, null}
!140 = metadata !{i32 68, i32 0, metadata !32, null}
!141 = metadata !{i32 70, i32 0, metadata !32, null}
