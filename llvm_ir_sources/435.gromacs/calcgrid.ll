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
  %cmp = fcmp ugt float %gr_sp, 0.000000e+00
  br i1 %cmp, label %for.body, label %if.then

if.then:                                          ; preds = %entry
  %conv = fpext float %gr_sp to double
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str, i64 0, i64 0), double %conv) #5
  br label %for.body

for.body:                                         ; preds = %if.then, %entry, %for.body
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %for.body ], [ 0, %entry ], [ 0, %if.then ]
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv259, i64 %indvars.iv259
  %0 = load float* %arrayidx4, align 4, !tbaa !0
  %arrayidx6 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv259
  store float %0, float* %arrayidx6, align 4, !tbaa !0
  %indvars.iv.next260 = add i64 %indvars.iv259, 1
  %lftr.wideiv261 = trunc i64 %indvars.iv.next260 to i32
  %exitcond262 = icmp eq i32 %lftr.wideiv261, 3
  br i1 %exitcond262, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %1 = load i32* %nx, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 0
  store i32 %1, i32* %arrayidx7, align 4, !tbaa !3
  %2 = load i32* %ny, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 1
  store i32 %2, i32* %arrayidx8, align 4, !tbaa !3
  %3 = load i32* %nz, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 2
  store i32 %3, i32* %arrayidx9, align 4, !tbaa !3
  store i32 1, i32* @ng, align 4, !tbaa !3
  store i32 1, i32* @ng_max, align 4, !tbaa !3
  br label %for.body13

for.body13:                                       ; preds = %for.inc29, %for.end
  %4 = phi i32 [ 1, %for.end ], [ %6, %for.inc29 ]
  %indvars.iv255 = phi i64 [ 0, %for.end ], [ %indvars.iv.next256, %for.inc29 ]
  %arrayidx15 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv255
  %5 = load float* %arrayidx15, align 4, !tbaa !0
  %div = fdiv float %5, %gr_sp
  %conv16 = fpext float %div to double
  %add = fadd double %conv16, 9.990000e-01
  %conv17 = fptosi double %add to i32
  %arrayidx19 = getelementptr inbounds [3 x i32]* %nmin, i64 0, i64 %indvars.iv255
  store i32 %conv17, i32* %arrayidx19, align 4, !tbaa !3
  %mul = shl nsw i32 %conv17, 1
  %cmp22 = icmp sgt i32 %mul, %4
  br i1 %cmp22, label %if.then24, label %for.inc29

if.then24:                                        ; preds = %for.body13
  store i32 %mul, i32* @ng_max, align 4, !tbaa !3
  br label %for.inc29

for.inc29:                                        ; preds = %for.body13, %if.then24
  %6 = phi i32 [ %4, %for.body13 ], [ %mul, %if.then24 ]
  %indvars.iv.next256 = add i64 %indvars.iv255, 1
  %lftr.wideiv257 = trunc i64 %indvars.iv.next256 to i32
  %exitcond258 = icmp eq i32 %lftr.wideiv257, 3
  br i1 %exitcond258, label %for.end31, label %for.body13

for.end31:                                        ; preds = %for.inc29
  store i32 0, i32* @n_list, align 4, !tbaa !3
  store i32 0, i32* @n_list_alloc, align 4, !tbaa !3
  store i32* null, i32** @list, align 8, !tbaa !4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i32]* @decomp to i8*), i8 0, i64 24, i32 16, i1 false)
  call fastcc void @make_list(i32 0) #6
  %7 = load i32* %nx, align 4, !tbaa !3
  %cmp41 = icmp slt i32 %7, 1
  %.pre263 = load i32* %ny, align 4, !tbaa !3
  %cmp43 = icmp slt i32 %.pre263, 1
  %or.cond = or i1 %cmp41, %cmp43
  br i1 %or.cond, label %if.then48, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %for.end31
  %8 = load i32* %nz, align 4, !tbaa !3
  %cmp46 = icmp slt i32 %8, 1
  br i1 %cmp46, label %if.then48, label %if.end57

if.then48:                                        ; preds = %for.end31, %lor.lhs.false45
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %cmp49 = icmp sgt i32 %7, 0
  %cond = select i1 %cmp49, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0)
  %cmp51 = icmp sgt i32 %.pre263, 0
  %cond53 = select i1 %cmp51, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)
  %10 = load i32* %nz, align 4, !tbaa !3
  %cmp54 = icmp sgt i32 %10, 0
  %cond56 = select i1 %cmp54, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0)
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([47 x i8]* @.str1, i64 0, i64 0), i8* %cond, i8* %cond53, i8* %cond56) #5
  br label %if.end57

if.end57:                                         ; preds = %if.then48, %lor.lhs.false45
  %11 = load i32** @list, align 8, !tbaa !4
  %12 = bitcast i32* %11 to i8*
  %13 = load i32* @n_list, align 4, !tbaa !3
  %conv58 = sext i32 %13 to i64
  call void @qsort(i8* %12, i64 %conv58, i64 4, i32 (i8*, i8*)* @list_comp) #5
  %14 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool = icmp ne %struct._IO_FILE* %14, null
  %15 = load i32* @n_list, align 4, !tbaa !3
  %cmp61238 = icmp sgt i32 %15, 0
  %or.cond268 = and i1 %tobool, %cmp61238
  br i1 %or.cond268, label %for.body63, label %if.end70

for.body63:                                       ; preds = %if.end57, %for.body63.for.body63_crit_edge
  %16 = phi %struct._IO_FILE* [ %.pre266, %for.body63.for.body63_crit_edge ], [ %14, %if.end57 ]
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %for.body63.for.body63_crit_edge ], [ 0, %if.end57 ]
  %17 = load i32** @list, align 8, !tbaa !4
  %arrayidx65 = getelementptr inbounds i32* %17, i64 %indvars.iv249
  %18 = load i32* %arrayidx65, align 4, !tbaa !3
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), i32 %18) #5
  %indvars.iv.next250 = add i64 %indvars.iv249, 1
  %19 = load i32* @n_list, align 4, !tbaa !3
  %20 = trunc i64 %indvars.iv.next250 to i32
  %cmp61 = icmp slt i32 %20, %19
  br i1 %cmp61, label %for.body63.for.body63_crit_edge, label %if.end70

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  %.pre266 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  br label %for.body63

if.end70:                                         ; preds = %if.end57, %for.body63
  %21 = load i32* %nx, align 4, !tbaa !3
  %cmp71 = icmp sgt i32 %21, 0
  br i1 %cmp71, label %land.lhs.true, label %lor.lhs.false77

land.lhs.true:                                    ; preds = %if.end70
  %div73 = srem i32 %21, %nnodes
  %cmp75 = icmp eq i32 %div73, 0
  br i1 %cmp75, label %lor.lhs.false77, label %land.lhs.true.if.then85_crit_edge

land.lhs.true.if.then85_crit_edge:                ; preds = %land.lhs.true
  %.pre264 = load i32* %ny, align 4, !tbaa !3
  br label %if.then85

lor.lhs.false77:                                  ; preds = %land.lhs.true, %if.end70
  %22 = load i32* %ny, align 4, !tbaa !3
  %cmp78 = icmp sgt i32 %22, 0
  br i1 %cmp78, label %land.lhs.true80, label %for.cond91.preheader

land.lhs.true80:                                  ; preds = %lor.lhs.false77
  %div81 = srem i32 %22, %nnodes
  %cmp83 = icmp eq i32 %div81, 0
  br i1 %cmp83, label %for.cond91.preheader, label %if.then85

if.then85:                                        ; preds = %land.lhs.true.if.then85_crit_edge, %land.lhs.true80
  %23 = phi i32 [ %.pre264, %land.lhs.true.if.then85_crit_edge ], [ %22, %land.lhs.true80 ]
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([84 x i8]* @.str7, i64 0, i64 0), i32 %21, i32 %23, i32 %nnodes) #5
  br label %for.cond91.preheader

for.cond91.preheader:                             ; preds = %for.inc132, %lor.lhs.false77, %if.then85, %land.lhs.true80
  %indvars.iv245 = phi i64 [ 0, %land.lhs.true80 ], [ 0, %if.then85 ], [ 0, %lor.lhs.false77 ], [ %indvars.iv.next246, %for.inc132 ]
  %arrayidx95 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 %indvars.iv245
  %24 = load i32* @n_list, align 4, !tbaa !3
  %cmp92235 = icmp sgt i32 %24, 0
  br i1 %cmp92235, label %land.rhs.lr.ph, label %for.cond91.preheader.for.end125_crit_edge

for.cond91.preheader.for.end125_crit_edge:        ; preds = %for.cond91.preheader
  %.pre265 = load i32* %arrayidx95, align 4, !tbaa !3
  br label %for.end125

land.rhs.lr.ph:                                   ; preds = %for.cond91.preheader
  %25 = load i32** @list, align 8, !tbaa !4
  %arrayidx102 = getelementptr inbounds [3 x i32]* %nmin, i64 0, i64 %indvars.iv245
  %26 = trunc i64 %indvars.iv245 to i32
  %cmp106 = icmp eq i32 %26, 2
  %.pre = load i32* %arrayidx95, align 4, !tbaa !3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc123
  %27 = phi i32 [ %.pre, %land.rhs.lr.ph ], [ %30, %for.inc123 ]
  %indvars.iv243 = phi i64 [ 0, %land.rhs.lr.ph ], [ %indvars.iv.next244, %for.inc123 ]
  %cmp96 = icmp slt i32 %27, 1
  br i1 %cmp96, label %for.body98, label %for.inc132

for.body98:                                       ; preds = %land.rhs
  %arrayidx100 = getelementptr inbounds i32* %25, i64 %indvars.iv243
  %28 = load i32* %arrayidx100, align 4, !tbaa !3
  %29 = load i32* %arrayidx102, align 4, !tbaa !3
  %cmp103 = icmp slt i32 %28, %29
  br i1 %cmp103, label %for.inc123, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %for.body98
  br i1 %cmp106, label %if.then117, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %land.lhs.true105
  %div113 = srem i32 %28, %nnodes
  %cmp115 = icmp eq i32 %div113, 0
  br i1 %cmp115, label %if.then117, label %for.inc123

if.then117:                                       ; preds = %lor.lhs.false108, %land.lhs.true105
  store i32 %28, i32* %arrayidx95, align 4, !tbaa !3
  br label %for.inc123

for.inc123:                                       ; preds = %for.body98, %lor.lhs.false108, %if.then117
  %30 = phi i32 [ %27, %for.body98 ], [ %27, %lor.lhs.false108 ], [ %28, %if.then117 ]
  %indvars.iv.next244 = add i64 %indvars.iv243, 1
  %31 = trunc i64 %indvars.iv.next244 to i32
  %cmp92 = icmp slt i32 %31, %24
  br i1 %cmp92, label %land.rhs, label %for.end125

for.end125:                                       ; preds = %for.inc123, %for.cond91.preheader.for.end125_crit_edge
  %32 = phi i32 [ %.pre265, %for.cond91.preheader.for.end125_crit_edge ], [ %30, %for.inc123 ]
  %cmp128 = icmp slt i32 %32, 1
  br i1 %cmp128, label %if.then130, label %for.inc132

if.then130:                                       ; preds = %for.end125
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([83 x i8]* @.str8, i64 0, i64 0), i32 %nnodes) #5
  br label %for.inc132

for.inc132:                                       ; preds = %land.rhs, %for.end125, %if.then130
  %indvars.iv.next246 = add i64 %indvars.iv245, 1
  %lftr.wideiv247 = trunc i64 %indvars.iv.next246 to i32
  %exitcond248 = icmp eq i32 %lftr.wideiv247, 3
  br i1 %exitcond248, label %for.body138, label %for.cond91.preheader

for.body138:                                      ; preds = %for.body138, %for.inc132
  %indvars.iv = phi i64 [ 0, %for.inc132 ], [ %indvars.iv.next, %for.body138 ]
  %max_spacing.0234 = phi float [ 0.000000e+00, %for.inc132 ], [ %max_spacing.1, %for.body138 ]
  %arrayidx140 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv
  %33 = load float* %arrayidx140, align 4, !tbaa !0
  %arrayidx142 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 %indvars.iv
  %34 = load i32* %arrayidx142, align 4, !tbaa !3
  %conv143 = sitofp i32 %34 to float
  %div144 = fdiv float %33, %conv143
  %arrayidx146 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 %indvars.iv
  store float %div144, float* %arrayidx146, align 4, !tbaa !0
  %cmp149 = fcmp ogt float %div144, %max_spacing.0234
  %max_spacing.1 = select i1 %cmp149, float %div144, float %max_spacing.0234
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end157, label %for.body138

for.end157:                                       ; preds = %for.body138
  %35 = load i32* %arrayidx7, align 4, !tbaa !3
  store i32 %35, i32* %nx, align 4, !tbaa !3
  %36 = load i32* %arrayidx8, align 4, !tbaa !3
  store i32 %36, i32* %ny, align 4, !tbaa !3
  %37 = load i32* %arrayidx9, align 4, !tbaa !3
  store i32 %37, i32* %nz, align 4, !tbaa !3
  %38 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %39 = load i32* %nx, align 4, !tbaa !3
  %40 = load i32* %ny, align 4, !tbaa !3
  %arrayidx161 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 0
  %41 = load float* %arrayidx161, align 4, !tbaa !0
  %conv162 = fpext float %41 to double
  %arrayidx163 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 1
  %42 = load float* %arrayidx163, align 4, !tbaa !0
  %conv164 = fpext float %42 to double
  %arrayidx165 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 2
  %43 = load float* %arrayidx165, align 4, !tbaa !0
  %conv166 = fpext float %43 to double
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), i32 %39, i32 %40, i32 %37, double %conv162, double %conv164, double %conv166) #5
  ret float %max_spacing.1
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @make_list(i32 %start_fac) #0 {
entry:
  %0 = load i32* @ng, align 4, !tbaa !3
  %1 = load i32* @ng_max, align 4, !tbaa !3
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  %2 = load i32* @n_list, align 4, !tbaa !3
  %3 = load i32* @n_list_alloc, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  %.pre35 = load i32** @list, align 8, !tbaa !4
  br label %if.end

if.then2:                                         ; preds = %if.then
  %add = add nsw i32 %3, 100
  store i32 %add, i32* @n_list_alloc, align 4, !tbaa !3
  %4 = load i32** @list, align 8, !tbaa !4
  %5 = bitcast i32* %4 to i8*
  %mul = shl i32 %add, 2
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str11, i64 0, i64 0), i32 50, i8* %5, i32 %mul) #5
  %6 = bitcast i8* %call to i32*
  store i32* %6, i32** @list, align 8, !tbaa !4
  %.pre = load i32* @ng, align 4, !tbaa !3
  %.pre34 = load i32* @n_list, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then2
  %7 = phi i32* [ %.pre35, %if.then.if.end_crit_edge ], [ %6, %if.then2 ]
  %8 = phi i32 [ %2, %if.then.if.end_crit_edge ], [ %.pre34, %if.then2 ]
  %9 = phi i32 [ %0, %if.then.if.end_crit_edge ], [ %.pre, %if.then2 ]
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32* %7, i64 %idxprom
  store i32 %9, i32* %arrayidx, align 4, !tbaa !3
  %10 = load i32* @n_list, align 4, !tbaa !3
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @n_list, align 4, !tbaa !3
  %cmp432 = icmp slt i32 %start_fac, 6
  br i1 %cmp432, label %for.body.lr.ph, label %if.end24

for.body.lr.ph:                                   ; preds = %if.end
  %11 = sext i32 %start_fac to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %11, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %12 = trunc i64 %indvars.iv to i32
  %cmp6 = icmp slt i32 %12, 4
  br i1 %cmp6, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i64* bitcast (i32* getelementptr inbounds ([6 x i32]* @decomp, i64 0, i64 4) to i64*), align 16
  %14 = trunc i64 %13 to i32
  %15 = lshr i64 %13, 32
  %16 = trunc i64 %15 to i32
  %add8 = sub i32 0, %16
  %cmp9 = icmp eq i32 %14, %add8
  br i1 %cmp9, label %if.then11, label %for.inc

if.then11:                                        ; preds = %lor.lhs.false, %for.body
  %arrayidx13 = getelementptr inbounds [6 x i32]* @factor, i64 0, i64 %indvars.iv
  %17 = load i32* %arrayidx13, align 4, !tbaa !3
  %18 = load i32* @ng, align 4, !tbaa !3
  %mul14 = mul nsw i32 %18, %17
  store i32 %mul14, i32* @ng, align 4, !tbaa !3
  %arrayidx16 = getelementptr inbounds [6 x i32]* @decomp, i64 0, i64 %indvars.iv
  %19 = load i32* %arrayidx16, align 4, !tbaa !3
  %inc17 = add nsw i32 %19, 1
  store i32 %inc17, i32* %arrayidx16, align 4, !tbaa !3
  tail call fastcc void @make_list(i32 %12) #6
  %20 = load i32* %arrayidx13, align 4, !tbaa !3
  %21 = load i32* @ng, align 4, !tbaa !3
  %div = sdiv i32 %21, %20
  store i32 %div, i32* @ng, align 4, !tbaa !3
  %22 = load i32* %arrayidx16, align 4, !tbaa !3
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %arrayidx16, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %if.then11
  %indvars.iv.next = add i64 %indvars.iv, 1
  %23 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %23, 6
  br i1 %cmp4, label %for.body, label %if.end24

if.end24:                                         ; preds = %if.end, %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #1

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @list_comp(i8* nocapture %a, i8* nocapture %b) #3 {
entry:
  %0 = bitcast i8* %a to i32*
  %1 = load i32* %0, align 4, !tbaa !3
  %2 = bitcast i8* %b to i32*
  %3 = load i32* %2, align 4, !tbaa !3
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
