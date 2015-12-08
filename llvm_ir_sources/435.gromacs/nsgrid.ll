; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_grid = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"grid->cell_index\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"grid->a\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"grid->index\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"grid->nra\00", align 1
@.str5 = private unnamed_addr constant [26 x i8] c"Grid: %d x %d x %d cells\0A\00", align 1
@debug = external global %struct._IO_FILE*
@.str6 = private unnamed_addr constant [48 x i8] c"Succesfully allocated memory for grid pointers.\00", align 1
@.str7 = private unnamed_addr constant [44 x i8] c"Succesfully freed memory for grid pointers.\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str9 = private unnamed_addr constant [30 x i8] c"Not a valid cell entry at %d\0A\00", align 1
@.str10 = private unnamed_addr constant [47 x i8] c"WARNING: your box is exploding! (ncells = %d)\0A\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"ci\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"ind\00", align 1
@.str13 = private unnamed_addr constant [39 x i8] c"Filling grid from %d to %d (total %d)\0A\00", align 1
@.str14 = private unnamed_addr constant [29 x i8] c"nra=%d, grid->nra=%d, cci=%d\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"cci\00", align 1
@.str16 = private unnamed_addr constant [18 x i8] c"ci = %d, cci = %d\00", align 1
@.str17 = private unnamed_addr constant [11 x i8] c"nr:    %d\0A\00", align 1
@.str18 = private unnamed_addr constant [11 x i8] c"nrx:   %d\0A\00", align 1
@.str19 = private unnamed_addr constant [11 x i8] c"nry:   %d\0A\00", align 1
@.str20 = private unnamed_addr constant [11 x i8] c"nrz:   %d\0A\00", align 1
@.str21 = private unnamed_addr constant [11 x i8] c"delta: %d\0A\00", align 1
@.str22 = private unnamed_addr constant [11 x i8] c"gmax:  %d\0A\00", align 1
@.str23 = private unnamed_addr constant [19 x i8] c"    i  cell_index\0A\00", align 1
@.str24 = private unnamed_addr constant [10 x i8] c"%5d  %5d\0A\00", align 1
@.str25 = private unnamed_addr constant [7 x i8] c"cells\0A\00", align 1
@.str26 = private unnamed_addr constant [31 x i8] c" ix iy iz   nr  index  cgs...\0A\00", align 1
@.str27 = private unnamed_addr constant [16 x i8] c"%3d%3d%3d%5d%5d\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"%5d\00", align 1
@.str30 = private unnamed_addr constant [35 x i8] c"Dividing by zero, file %s, line %d\00", align 1
@.str31 = private unnamed_addr constant [34 x i8] c"calc_bor: cg0=%d, cg1=%d, ncg=%d\0A\00", align 1
@.str32 = private unnamed_addr constant [24 x i8] c"CG0[%d]=%d, CG1[%d]=%d\0A\00", align 1
@.str33 = private unnamed_addr constant [48 x i8] c"%s = %d should be in 0 .. %d [FILE %s, LINE %d]\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @init_grid(%struct._IO_FILE* %log, %struct.t_grid* nocapture %grid, i32 %delta, [3 x float]* nocapture %box, float %rlistlong, i32 %ncg) #0 {
entry:
  %cx = alloca [3 x i32], align 4
  %conv = sitofp i32 %delta to float
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx2 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %0 = load float* %arrayidx2, align 4, !tbaa !0
  %mul = fmul float %conv, %0
  %div = fdiv float %mul, %rlistlong
  %conv3 = fptosi float %div to i32
  %arrayidx5 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 %indvars.iv
  store i32 %conv3, i32* %arrayidx5, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %nr = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 0
  store i32 %ncg, i32* %nr, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 0
  %1 = load i32* %arrayidx6, align 4, !tbaa !3
  %nrx = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1
  store i32 %1, i32* %nrx, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 1
  %2 = load i32* %arrayidx7, align 4, !tbaa !3
  %nry = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2
  store i32 %2, i32* %nry, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 2
  %3 = load i32* %arrayidx8, align 4, !tbaa !3
  %nrz = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3
  store i32 %3, i32* %nrz, align 4, !tbaa !3
  %mul11 = mul nsw i32 %2, %1
  %mul13 = mul nsw i32 %mul11, %3
  %ncells = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4
  store i32 %mul13, i32* %ncells, align 4, !tbaa !3
  %mul15 = shl nsw i32 %mul13, 1
  %maxcells = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 5
  store i32 %mul15, i32* %maxcells, align 4, !tbaa !3
  %delta16 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 6
  store i32 %delta, i32* %delta16, align 4, !tbaa !3
  %gmax = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 7
  store i32 0, i32* %gmax, align 4, !tbaa !3
  %add = add nsw i32 %ncg, 1
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 74, i32 %add, i32 4) #5
  %4 = bitcast i8* %call to i32*
  %cell_index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  store i32* %4, i32** %cell_index, align 8, !tbaa !4
  %5 = load i32* %nr, align 4, !tbaa !3
  %add19 = add nsw i32 %5, 1
  %call20 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 75, i32 %add19, i32 4) #5
  %6 = bitcast i8* %call20 to i32*
  %a = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 11
  store i32* %6, i32** %a, align 8, !tbaa !4
  %7 = load i32* %maxcells, align 4, !tbaa !3
  %call22 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 76, i32 %7, i32 4) #5
  %8 = bitcast i8* %call22 to i32*
  %index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9
  store i32* %8, i32** %index, align 8, !tbaa !4
  %9 = load i32* %maxcells, align 4, !tbaa !3
  %call24 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 77, i32 %9, i32 4) #5
  %10 = bitcast i8* %call24 to i32*
  %nra = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  store i32* %10, i32** %nra, align 8, !tbaa !4
  %tobool = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %11 = load i32* %nrx, align 4, !tbaa !3
  %12 = load i32* %nry, align 4, !tbaa !3
  %13 = load i32* %nrz, align 4, !tbaa !3
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0), i32 %11, i32 %12, i32 %13) #5
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %14 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool29 = icmp eq %struct._IO_FILE* %14, null
  br i1 %tobool29, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str6, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %14)
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then30
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @done_grid(%struct.t_grid* nocapture %grid) #0 {
entry:
  %cell_index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  %0 = bitcast %struct.t_grid* %grid to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 4, i1 false)
  %1 = load i32** %cell_index, align 8, !tbaa !4
  %2 = bitcast i32* %1 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 97, i8* %2) #5
  %a = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 11
  %3 = load i32** %a, align 8, !tbaa !4
  %4 = bitcast i32* %3 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 98, i8* %4) #5
  %index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9
  %5 = load i32** %index, align 8, !tbaa !4
  %6 = bitcast i32* %5 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 99, i8* %6) #5
  %nra = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %7 = load i32** %nra, align 8, !tbaa !4
  %8 = bitcast i32* %7 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 100, i8* %8) #5
  %9 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool = icmp eq %struct._IO_FILE* %9, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str7, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %9)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @xyz2ci_(i32 %nry, i32 %nrz, i32 %x, i32 %y, i32 %z) #3 {
entry:
  %mul1 = mul i32 %x, %nry
  %tmp = add i32 %mul1, %y
  %tmp5 = mul i32 %tmp, %nrz
  %add3 = add i32 %tmp5, %z
  ret i32 %add3
}

; Function Attrs: nounwind optsize uwtable
define void @ci2xyz(%struct.t_grid* nocapture %grid, i32 %i, i32* nocapture %x, i32* nocapture %y, i32* nocapture %z) #0 {
entry:
  %nr = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 0
  %0 = load i32* %nr, align 4, !tbaa !3
  tail call fastcc void @_range_check(i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i32 %i, i32 %0, i32 117) #6
  %idxprom = sext i32 %i to i64
  %cell_index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  %1 = load i32** %cell_index, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str9, i64 0, i64 0), i32 %i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nry = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2
  %3 = load i32* %nry, align 4, !tbaa !3
  %nrz = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3
  %4 = load i32* %nrz, align 4, !tbaa !3
  %mul = mul nsw i32 %4, %3
  %div = sdiv i32 %2, %mul
  store i32 %div, i32* %x, align 4, !tbaa !3
  %5 = load i32* %nry, align 4, !tbaa !3
  %mul2 = mul nsw i32 %5, %div
  %6 = load i32* %nrz, align 4, !tbaa !3
  %mul4 = mul nsw i32 %mul2, %6
  %sub = sub nsw i32 %2, %mul4
  %div6 = sdiv i32 %sub, %6
  store i32 %div6, i32* %y, align 4, !tbaa !3
  %7 = load i32* %nrz, align 4, !tbaa !3
  %mul8 = mul nsw i32 %7, %div6
  %sub9 = sub nsw i32 %sub, %mul8
  store i32 %sub9, i32* %z, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @_range_check(i8* %s, i32 %i, i32 %nr, i32 %line) #0 {
entry:
  %cmp = icmp sgt i32 %i, -1
  %cmp1 = icmp slt i32 %i, %nr
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %nr, -1
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str33, i64 0, i64 0), i8* %s, i32 %i, i32 %sub, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 %line) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @grid_first(%struct._IO_FILE* %log, %struct.t_grid* nocapture %grid, [3 x float]* nocapture %box, float %rlistlong) #0 {
entry:
  %cx = alloca [3 x i32], align 4
  %nra1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %0 = load i32** %nra1, align 8, !tbaa !4
  %delta = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 6
  %1 = load i32* %delta, align 4, !tbaa !3
  %conv = sitofp i32 %1 to float
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv116 = phi i64 [ 0, %entry ], [ %indvars.iv.next117, %for.body ]
  %arrayidx3 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116, i64 %indvars.iv116
  %2 = load float* %arrayidx3, align 4, !tbaa !0
  %mul = fmul float %conv, %2
  %div = fdiv float %mul, %rlistlong
  %conv4 = fptosi float %div to i32
  %arrayidx6 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 %indvars.iv116
  store i32 %conv4, i32* %arrayidx6, align 4, !tbaa !3
  %indvars.iv.next117 = add i64 %indvars.iv116, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next117 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %arrayidx7 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 0
  %3 = load i32* %arrayidx7, align 4, !tbaa !3
  %nrx = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1
  store i32 %3, i32* %nrx, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 1
  %4 = load i32* %arrayidx8, align 4, !tbaa !3
  %nry = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2
  store i32 %4, i32* %nry, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 2
  %5 = load i32* %arrayidx9, align 4, !tbaa !3
  %nrz = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3
  store i32 %5, i32* %nrz, align 4, !tbaa !3
  %mul12 = mul i32 %4, %3
  %mul14 = mul i32 %mul12, %5
  %ncells15 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4
  %6 = load i32* %ncells15, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %6, %mul14
  br i1 %cmp16, label %if.end58, label %if.then

if.then:                                          ; preds = %for.end
  %tobool = icmp ne %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0), i32 %3, i32 %4, i32 %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then
  %maxcells = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 5
  %7 = load i32* %maxcells, align 4, !tbaa !3
  %cmp22 = icmp sgt i32 %mul14, %7
  br i1 %cmp22, label %if.then24, label %if.end55

if.then24:                                        ; preds = %if.end
  %8 = load i32** %nra1, align 8, !tbaa !4
  %9 = bitcast i32* %8 to i8*
  %mul27 = shl i32 %mul14, 2
  %call29 = call i8* @save_realloc(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 148, i8* %9, i32 %mul27) #5
  %10 = bitcast i8* %call29 to i32*
  store i32* %10, i32** %nra1, align 8, !tbaa !4
  %index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9
  %11 = load i32** %index, align 8, !tbaa !4
  %12 = bitcast i32* %11 to i8*
  %call34 = call i8* @save_realloc(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 149, i8* %12, i32 %mul27) #5
  %13 = bitcast i8* %call34 to i32*
  store i32* %13, i32** %index, align 8, !tbaa !4
  %14 = load i32* %maxcells, align 4, !tbaa !3
  %cmp38110 = icmp slt i32 %14, %mul14
  br i1 %cmp38110, label %for.body40.lr.ph, label %for.end49

for.body40.lr.ph:                                 ; preds = %if.then24
  %15 = load i32** %nra1, align 8, !tbaa !4
  %16 = sext i32 %14 to i64
  br label %for.body40

for.body40:                                       ; preds = %for.body40.lr.ph, %for.body40
  %indvars.iv = phi i64 [ %16, %for.body40.lr.ph ], [ %indvars.iv.next, %for.body40 ]
  %arrayidx43 = getelementptr inbounds i32* %15, i64 %indvars.iv
  store i32 0, i32* %arrayidx43, align 4, !tbaa !3
  %arrayidx46 = getelementptr inbounds i32* %13, i64 %indvars.iv
  store i32 0, i32* %arrayidx46, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %17 = trunc i64 %indvars.iv.next to i32
  %cmp38 = icmp slt i32 %17, %mul14
  br i1 %cmp38, label %for.body40, label %for.end49

for.end49:                                        ; preds = %for.body40, %if.then24
  br i1 %tobool, label %if.then51, label %if.end53

if.then51:                                        ; preds = %for.end49
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([47 x i8]* @.str10, i64 0, i64 0), i32 %mul14) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %for.end49
  store i32 %mul14, i32* %maxcells, align 4, !tbaa !3
  br label %if.end55

if.end55:                                         ; preds = %if.end, %if.end53
  store i32 %mul14, i32* %ncells15, align 4, !tbaa !3
  %18 = load i32** %nra1, align 8, !tbaa !4
  br label %if.end58

if.end58:                                         ; preds = %for.end, %if.end55
  %nra.0 = phi i32* [ %18, %if.end55 ], [ %0, %for.end ]
  %cmp60108 = icmp sgt i32 %mul14, 0
  br i1 %cmp60108, label %for.body62.lr.ph, label %for.end67

for.body62.lr.ph:                                 ; preds = %if.end58
  %nra.0113 = bitcast i32* %nra.0 to i8*
  %19 = add i32 %mul14, -1
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 2
  %22 = add i64 %21, 4
  call void @llvm.memset.p0i8.i64(i8* %nra.0113, i8 0, i64 %22, i32 4, i1 false)
  br label %for.end67

for.end67:                                        ; preds = %for.body62.lr.ph, %if.end58
  ret void
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @calc_elemnr(%struct._IO_FILE* %log, i32 %bDD, i32* nocapture %cg_index, %struct.t_grid* nocapture %grid, i32 %cg0, i32 %cg1, i32 %ncg) #0 {
entry:
  %CG0 = alloca [2 x i32], align 4
  %CG1 = alloca [2 x i32], align 4
  %cell_index1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  %0 = load i32** %cell_index1, align 8, !tbaa !4
  %nra2 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %1 = load i32** %nra2, align 8, !tbaa !4
  %ncells3 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4
  %2 = load i32* %ncells3, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds [2 x i32]* %CG0, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [2 x i32]* %CG1, i64 0, i64 0
  call fastcc void @calc_bor(%struct._IO_FILE* %log, i32 %bDD, i32 %cg0, i32 %cg1, i32 %ncg, i32* %arraydecay, i32* %arraydecay4) #6
  br label %for.body

for.body:                                         ; preds = %for.inc15, %entry
  %indvars.iv29 = phi i64 [ 0, %entry ], [ %indvars.iv.next30, %for.inc15 ]
  %arrayidx = getelementptr inbounds [2 x i32]* %CG0, i64 0, i64 %indvars.iv29
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds [2 x i32]* %CG1, i64 0, i64 %indvars.iv29
  %4 = load i32* %arrayidx7, align 4, !tbaa !3
  %cmp826 = icmp slt i32 %3, %4
  br i1 %cmp826, label %for.body9.lr.ph, label %for.inc15

for.body9.lr.ph:                                  ; preds = %for.body
  %5 = sext i32 %3 to i64
  br label %for.body9

for.body9:                                        ; preds = %for.body9.lr.ph, %for.body9
  %indvars.iv = phi i64 [ %5, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  %arrayidx11 = getelementptr inbounds i32* %0, i64 %indvars.iv
  %6 = load i32* %arrayidx11, align 4, !tbaa !3
  call fastcc void @_range_check(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i32 %6, i32 %2, i32 217) #6
  %idxprom12 = sext i32 %6 to i64
  %arrayidx13 = getelementptr inbounds i32* %1, i64 %idxprom12
  %7 = load i32* %arrayidx13, align 4, !tbaa !3
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %arrayidx13, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp8 = icmp slt i32 %8, %4
  br i1 %cmp8, label %for.body9, label %for.inc15

for.inc15:                                        ; preds = %for.body9, %for.body
  %indvars.iv.next30 = add i64 %indvars.iv29, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next30 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.end17, label %for.body

for.end17:                                        ; preds = %for.inc15
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @calc_bor(%struct._IO_FILE* %log, i32 %bDD, i32 %cg0, i32 %cg1, i32 %ncg, i32* nocapture %CG0, i32* nocapture %CG1) #0 {
entry:
  %tobool = icmp eq i32 %bDD, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 %cg0, i32* %CG0, align 4, !tbaa !3
  %arrayidx1 = getelementptr inbounds i32* %CG0, i64 1
  store i32 0, i32* %arrayidx1, align 4, !tbaa !3
  store i32 %cg1, i32* %CG1, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds i32* %CG1, i64 1
  store i32 0, i32* %arrayidx3, align 4, !tbaa !3
  br label %if.end14

if.else:                                          ; preds = %entry
  %cmp = icmp sgt i32 %cg1, %ncg
  store i32 %cg0, i32* %CG0, align 4, !tbaa !3
  br i1 %cmp, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  store i32 %ncg, i32* %CG1, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds i32* %CG0, i64 1
  store i32 0, i32* %arrayidx7, align 4, !tbaa !3
  %sub = sub nsw i32 %cg1, %ncg
  %arrayidx8 = getelementptr inbounds i32* %CG1, i64 1
  store i32 %sub, i32* %arrayidx8, align 4, !tbaa !3
  br label %if.end14

if.else9:                                         ; preds = %if.else
  store i32 %cg1, i32* %CG1, align 4, !tbaa !3
  %arrayidx12 = getelementptr inbounds i32* %CG0, i64 1
  store i32 0, i32* %arrayidx12, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds i32* %CG1, i64 1
  store i32 0, i32* %arrayidx13, align 4, !tbaa !3
  br label %if.end14

if.end14:                                         ; preds = %if.then4, %if.else9, %if.then
  %0 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool15 = icmp eq %struct._IO_FILE* %0, null
  %tobool17 = icmp eq %struct._IO_FILE* %log, null
  %or.cond = or i1 %tobool15, %tobool17
  br i1 %or.cond, label %if.end25, label %if.then18

if.then18:                                        ; preds = %if.end14
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([34 x i8]* @.str31, i64 0, i64 0), i32 %cg0, i32 %cg1, i32 %ncg) #5
  br label %for.body

for.body:                                         ; preds = %for.body, %if.then18
  %indvars.iv = phi i64 [ 0, %if.then18 ], [ %indvars.iv.next, %for.body ]
  %arrayidx20 = getelementptr inbounds i32* %CG0, i64 %indvars.iv
  %1 = load i32* %arrayidx20, align 4, !tbaa !3
  %arrayidx22 = getelementptr inbounds i32* %CG1, i64 %indvars.iv
  %2 = load i32* %arrayidx22, align 4, !tbaa !3
  %3 = trunc i64 %indvars.iv to i32
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([24 x i8]* @.str32, i64 0, i64 0), i32 %3, i32 %1, i32 %3, i32 %2) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %if.end25, label %for.body

if.end25:                                         ; preds = %for.body, %if.end14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @calc_ptrs(%struct.t_grid* nocapture %grid) #0 {
entry:
  %index1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9
  %0 = load i32** %index1, align 8, !tbaa !4
  %nra2 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %1 = load i32** %nra2, align 8, !tbaa !4
  %ncells3 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4
  %2 = load i32* %ncells3, align 4, !tbaa !3
  %nrx = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1
  %3 = load i32* %nrx, align 4, !tbaa !3
  %cmp57 = icmp sgt i32 %3, 0
  br i1 %cmp57, label %for.cond4.preheader.lr.ph, label %for.end21

for.cond4.preheader.lr.ph:                        ; preds = %entry
  %nry = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2
  %nrz = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3
  %.pre = load i32* %nry, align 4, !tbaa !3
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond4.preheader.lr.ph, %for.inc19
  %4 = phi i32 [ %3, %for.cond4.preheader.lr.ph ], [ %14, %for.inc19 ]
  %5 = phi i32 [ %.pre, %for.cond4.preheader.lr.ph ], [ %15, %for.inc19 ]
  %gmax.061 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %gmax.1.lcssa, %for.inc19 ]
  %ix.060 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %inc20, %for.inc19 ]
  %nr.059 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %nr.1.lcssa, %for.inc19 ]
  %ci.058 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %ci.1.lcssa, %for.inc19 ]
  %cmp549 = icmp sgt i32 %5, 0
  br i1 %cmp549, label %for.cond7.preheader.lr.ph, label %for.inc19

for.cond7.preheader.lr.ph:                        ; preds = %for.cond4.preheader
  %.pre64 = load i32* %nrz, align 4, !tbaa !3
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond7.preheader.lr.ph, %for.inc16
  %6 = phi i32 [ %5, %for.cond7.preheader.lr.ph ], [ %12, %for.inc16 ]
  %7 = phi i32 [ %.pre64, %for.cond7.preheader.lr.ph ], [ %13, %for.inc16 ]
  %gmax.153 = phi i32 [ %gmax.061, %for.cond7.preheader.lr.ph ], [ %gmax.2.lcssa, %for.inc16 ]
  %iy.052 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %inc17, %for.inc16 ]
  %nr.151 = phi i32 [ %nr.059, %for.cond7.preheader.lr.ph ], [ %nr.2.lcssa, %for.inc16 ]
  %ci.150 = phi i32 [ %ci.058, %for.cond7.preheader.lr.ph ], [ %ci.2.lcssa, %for.inc16 ]
  %cmp842 = icmp sgt i32 %7, 0
  br i1 %cmp842, label %for.body9.lr.ph, label %for.inc16

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %8 = sext i32 %ci.150 to i64
  br label %for.body9

for.body9:                                        ; preds = %for.body9.lr.ph, %for.body9
  %indvars.iv = phi i64 [ %8, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  %gmax.246 = phi i32 [ %gmax.153, %for.body9.lr.ph ], [ %cond, %for.body9 ]
  %nr.245 = phi i32 [ %nr.151, %for.body9.lr.ph ], [ %add, %for.body9 ]
  %ci.244 = phi i32 [ %ci.150, %for.body9.lr.ph ], [ %inc15, %for.body9 ]
  %iz.043 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %for.body9 ]
  %9 = trunc i64 %indvars.iv to i32
  tail call fastcc void @_range_check(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i32 %9, i32 %2, i32 235) #6
  %arrayidx = getelementptr inbounds i32* %0, i64 %indvars.iv
  store i32 %nr.245, i32* %arrayidx, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds i32* %1, i64 %indvars.iv
  %10 = load i32* %arrayidx11, align 4, !tbaa !3
  %add = add nsw i32 %10, %nr.245
  %cmp12 = icmp sgt i32 %gmax.246, %10
  %cond = select i1 %cmp12, i32 %gmax.246, i32 %10
  store i32 0, i32* %arrayidx11, align 4, !tbaa !3
  %inc = add nsw i32 %iz.043, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc15 = add nsw i32 %ci.244, 1
  %11 = load i32* %nrz, align 4, !tbaa !3
  %cmp8 = icmp slt i32 %inc, %11
  br i1 %cmp8, label %for.body9, label %for.cond7.for.inc16_crit_edge

for.cond7.for.inc16_crit_edge:                    ; preds = %for.body9
  %.pre65 = load i32* %nry, align 4, !tbaa !3
  br label %for.inc16

for.inc16:                                        ; preds = %for.cond7.for.inc16_crit_edge, %for.cond7.preheader
  %12 = phi i32 [ %.pre65, %for.cond7.for.inc16_crit_edge ], [ %6, %for.cond7.preheader ]
  %13 = phi i32 [ %11, %for.cond7.for.inc16_crit_edge ], [ %7, %for.cond7.preheader ]
  %gmax.2.lcssa = phi i32 [ %cond, %for.cond7.for.inc16_crit_edge ], [ %gmax.153, %for.cond7.preheader ]
  %nr.2.lcssa = phi i32 [ %add, %for.cond7.for.inc16_crit_edge ], [ %nr.151, %for.cond7.preheader ]
  %ci.2.lcssa = phi i32 [ %inc15, %for.cond7.for.inc16_crit_edge ], [ %ci.150, %for.cond7.preheader ]
  %inc17 = add nsw i32 %iy.052, 1
  %cmp5 = icmp slt i32 %inc17, %12
  br i1 %cmp5, label %for.cond7.preheader, label %for.cond4.for.inc19_crit_edge

for.cond4.for.inc19_crit_edge:                    ; preds = %for.inc16
  %.pre63 = load i32* %nrx, align 4, !tbaa !3
  br label %for.inc19

for.inc19:                                        ; preds = %for.cond4.for.inc19_crit_edge, %for.cond4.preheader
  %14 = phi i32 [ %.pre63, %for.cond4.for.inc19_crit_edge ], [ %4, %for.cond4.preheader ]
  %15 = phi i32 [ %12, %for.cond4.for.inc19_crit_edge ], [ %5, %for.cond4.preheader ]
  %gmax.1.lcssa = phi i32 [ %gmax.2.lcssa, %for.cond4.for.inc19_crit_edge ], [ %gmax.061, %for.cond4.preheader ]
  %nr.1.lcssa = phi i32 [ %nr.2.lcssa, %for.cond4.for.inc19_crit_edge ], [ %nr.059, %for.cond4.preheader ]
  %ci.1.lcssa = phi i32 [ %ci.2.lcssa, %for.cond4.for.inc19_crit_edge ], [ %ci.058, %for.cond4.preheader ]
  %inc20 = add nsw i32 %ix.060, 1
  %cmp = icmp slt i32 %inc20, %14
  br i1 %cmp, label %for.cond4.preheader, label %for.end21

for.end21:                                        ; preds = %for.inc19, %entry
  %gmax.0.lcssa = phi i32 [ 0, %entry ], [ %gmax.1.lcssa, %for.inc19 ]
  %gmax22 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 7
  store i32 %gmax.0.lcssa, i32* %gmax22, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @grid_last(%struct._IO_FILE* %log, i32 %bDD, i32* nocapture %cg_index, %struct.t_grid* nocapture %grid, i32 %cg0, i32 %cg1, i32 %ncg) #0 {
entry:
  %CG0 = alloca [2 x i32], align 4
  %CG1 = alloca [2 x i32], align 4
  %cell_index1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  %0 = load i32** %cell_index1, align 8, !tbaa !4
  %nra2 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %1 = load i32** %nra2, align 8, !tbaa !4
  %index3 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9
  %2 = load i32** %index3, align 8, !tbaa !4
  %a4 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 11
  %3 = load i32** %a4, align 8, !tbaa !4
  %ncells5 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4
  %4 = load i32* %ncells5, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds [2 x i32]* %CG0, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [2 x i32]* %CG1, i64 0, i64 0
  call fastcc void @calc_bor(%struct._IO_FILE* %log, i32 %bDD, i32 %cg0, i32 %cg1, i32 %ncg, i32* %arraydecay, i32* %arraydecay6) #6
  %nr = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.inc23, %entry
  %indvars.iv43 = phi i64 [ 0, %entry ], [ %indvars.iv.next44, %for.inc23 ]
  %arrayidx = getelementptr inbounds [2 x i32]* %CG0, i64 0, i64 %indvars.iv43
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds [2 x i32]* %CG1, i64 0, i64 %indvars.iv43
  %6 = load i32* %arrayidx9, align 4, !tbaa !3
  %cmp1040 = icmp slt i32 %5, %6
  br i1 %cmp1040, label %for.body11.lr.ph, label %for.inc23

for.body11.lr.ph:                                 ; preds = %for.body
  %7 = sext i32 %5 to i64
  br label %for.body11

for.body11:                                       ; preds = %for.body11.lr.ph, %for.body11
  %indvars.iv = phi i64 [ %7, %for.body11.lr.ph ], [ %indvars.iv.next, %for.body11 ]
  %arrayidx13 = getelementptr inbounds i32* %0, i64 %indvars.iv
  %8 = load i32* %arrayidx13, align 4, !tbaa !3
  call fastcc void @_range_check(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i32 %8, i32 %4, i32 261) #6
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds i32* %2, i64 %idxprom14
  %9 = load i32* %arrayidx15, align 4, !tbaa !3
  %arrayidx17 = getelementptr inbounds i32* %1, i64 %idxprom14
  %10 = load i32* %arrayidx17, align 4, !tbaa !3
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %arrayidx17, align 4, !tbaa !3
  %add = add nsw i32 %10, %9
  %11 = load i32* %nr, align 4, !tbaa !3
  call fastcc void @_range_check(i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), i32 %add, i32 %11, i32 263) #6
  %arrayidx19 = getelementptr inbounds i32* %cg_index, i64 %indvars.iv
  %12 = load i32* %arrayidx19, align 4, !tbaa !3
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds i32* %3, i64 %idxprom20
  store i32 %12, i32* %arrayidx21, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp10 = icmp slt i32 %13, %6
  br i1 %cmp10, label %for.body11, label %for.inc23

for.inc23:                                        ; preds = %for.body11, %for.body
  %indvars.iv.next44 = add i64 %indvars.iv43, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next44 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.end25, label %for.body

for.end25:                                        ; preds = %for.inc23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @fill_grid(%struct._IO_FILE* nocapture %log, i32 %bDD, i32* nocapture %cg_index, %struct.t_grid* nocapture %grid, [3 x float]* nocapture %box, i32 %ncg, i32 %cg0, i32 %cg1, [3 x float]* nocapture %cg_cm) #0 {
entry:
  %cell_index1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  %0 = load i32** %cell_index1, align 8, !tbaa !4
  %1 = bitcast i32* %0 to i8*
  %nrx2 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1
  %2 = load i32* %nrx2, align 4, !tbaa !3
  %nry3 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2
  %3 = load i32* %nry3, align 4, !tbaa !3
  %nrz4 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3
  %4 = load i32* %nrz4, align 4, !tbaa !3
  %conv = sitofp i32 %2 to float
  %arrayidx5 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %5 = load float* %arrayidx5, align 4, !tbaa !0
  %conv.i = fpext float %5 to double
  %cmp.i = fcmp olt double %conv.i, 1.200000e-38
  br i1 %cmp.i, label %if.then.i, label %_divide.exit

if.then.i:                                        ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 282) #5
  br label %_divide.exit

_divide.exit:                                     ; preds = %entry, %if.then.i
  %div.i = fdiv float %conv, %5
  %conv6 = sitofp i32 %3 to float
  %arrayidx8 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %6 = load float* %arrayidx8, align 4, !tbaa !0
  %conv.i105 = fpext float %6 to double
  %cmp.i106 = fcmp olt double %conv.i105, 1.200000e-38
  br i1 %cmp.i106, label %if.then.i107, label %_divide.exit109

if.then.i107:                                     ; preds = %_divide.exit
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 283) #5
  br label %_divide.exit109

_divide.exit109:                                  ; preds = %_divide.exit, %if.then.i107
  %div.i108 = fdiv float %conv6, %6
  %conv10 = sitofp i32 %4 to float
  %arrayidx12 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %7 = load float* %arrayidx12, align 4, !tbaa !0
  %conv.i110 = fpext float %7 to double
  %cmp.i111 = fcmp olt double %conv.i110, 1.200000e-38
  br i1 %cmp.i111, label %if.then.i112, label %_divide.exit114

if.then.i112:                                     ; preds = %_divide.exit109
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 284) #5
  br label %_divide.exit114

_divide.exit114:                                  ; preds = %_divide.exit109, %if.then.i112
  %div.i113 = fdiv float %conv10, %7
  %cmp120 = icmp sgt i32 %cg0, 0
  br i1 %cmp120, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %_divide.exit114
  %8 = add i32 %cg0, -1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 2
  %11 = add i64 %10, 4
  call void @llvm.memset.p0i8.i64(i8* %1, i8 -1, i64 %11, i32 4, i1 false)
  br label %for.end

for.end:                                          ; preds = %for.body.lr.ph, %_divide.exit114
  %12 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool = icmp eq %struct._IO_FILE* %12, null
  br i1 %tobool, label %for.cond17.preheader, label %if.then

if.then:                                          ; preds = %for.end
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([39 x i8]* @.str13, i64 0, i64 0), i32 %cg0, i32 %cg1, i32 %ncg) #5
  br label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.end, %if.then
  %cmp18118 = icmp slt i32 %cg0, %cg1
  br i1 %cmp18118, label %for.body20.lr.ph, label %for.cond60.preheader

for.body20.lr.ph:                                 ; preds = %for.cond17.preheader
  %sub = add nsw i32 %2, -1
  %sub44 = add nsw i32 %3, -1
  %sub49 = add nsw i32 %4, -1
  %13 = sext i32 %cg0 to i64
  br label %for.body20

for.cond60.preheader:                             ; preds = %for.body20, %for.cond17.preheader
  %i.1.lcssa = phi i32 [ %cg0, %for.cond17.preheader ], [ %cg1, %for.body20 ]
  %cmp61116 = icmp slt i32 %i.1.lcssa, %ncg
  br i1 %cmp61116, label %for.body63.lr.ph, label %for.end68

for.body63.lr.ph:                                 ; preds = %for.cond60.preheader
  %14 = sext i32 %i.1.lcssa to i64
  %scevgep = getelementptr i32* %0, i64 %14
  %scevgep122 = bitcast i32* %scevgep to i8*
  %15 = add i32 %ncg, -1
  %16 = sub i32 %15, %i.1.lcssa
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  %19 = add i64 %18, 4
  call void @llvm.memset.p0i8.i64(i8* %scevgep122, i8 -1, i64 %19, i32 4, i1 false)
  br label %for.end68

for.body20:                                       ; preds = %for.body20.lr.ph, %for.body20
  %indvars.iv = phi i64 [ %13, %for.body20.lr.ph ], [ %indvars.iv.next, %for.body20 ]
  %arrayidx22 = getelementptr inbounds i32* %cg_index, i64 %indvars.iv
  %20 = load i32* %arrayidx22, align 4, !tbaa !3
  %idxprom23 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [3 x float]* %cg_cm, i64 %idxprom23, i64 0
  %21 = load float* %arrayidx25, align 4, !tbaa !0
  %mul = fmul float %div.i, %21
  %conv26 = fptosi float %mul to i32
  %arrayidx29 = getelementptr inbounds [3 x float]* %cg_cm, i64 %idxprom23, i64 1
  %22 = load float* %arrayidx29, align 4, !tbaa !0
  %mul30 = fmul float %div.i108, %22
  %conv31 = fptosi float %mul30 to i32
  %arrayidx34 = getelementptr inbounds [3 x float]* %cg_cm, i64 %idxprom23, i64 2
  %23 = load float* %arrayidx34, align 4, !tbaa !0
  %mul35 = fmul float %div.i113, %23
  %conv36 = fptosi float %mul35 to i32
  %cmp37 = icmp slt i32 %conv26, %2
  %conv26.sub = select i1 %cmp37, i32 %conv26, i32 %sub
  %cmp41 = icmp slt i32 %conv31, %3
  %iy.0 = select i1 %cmp41, i32 %conv31, i32 %sub44
  %cmp46 = icmp slt i32 %conv36, %4
  %conv36.sub49 = select i1 %cmp46, i32 %conv36, i32 %sub49
  %mul52 = mul i32 %conv26.sub, %3
  %tmp = add i32 %iy.0, %mul52
  %tmp115 = mul i32 %tmp, %4
  %add54 = add i32 %tmp115, %conv36.sub49
  %arrayidx56 = getelementptr inbounds i32* %0, i64 %indvars.iv
  store i32 %add54, i32* %arrayidx56, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %24 = trunc i64 %indvars.iv.next to i32
  %cmp18 = icmp slt i32 %24, %cg1
  br i1 %cmp18, label %for.body20, label %for.cond60.preheader

for.end68:                                        ; preds = %for.body63.lr.ph, %for.cond60.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @check_grid(%struct._IO_FILE* nocapture %log, %struct.t_grid* nocapture %grid) #0 {
entry:
  %nrx = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1
  %0 = load i32* %nrx, align 4, !tbaa !3
  %cmp76 = icmp sgt i32 %0, 0
  br i1 %cmp76, label %for.cond1.preheader.lr.ph, label %for.end35

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %nry = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2
  %nrz = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3
  %index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9
  %nra12 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %ncells = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4
  %.pre = load i32* %nry, align 4, !tbaa !3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc33
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %19, %for.inc33 ]
  %2 = phi i32 [ %.pre, %for.cond1.preheader.lr.ph ], [ %20, %for.inc33 ]
  %ix.079 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc34, %for.inc33 ]
  %cci.078 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %cci.1.lcssa, %for.inc33 ]
  %ci.077 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %ci.1.lcssa, %for.inc33 ]
  %cmp269 = icmp sgt i32 %2, 0
  br i1 %cmp269, label %for.cond4.preheader.lr.ph, label %for.inc33

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %.pre82 = load i32* %nrz, align 4, !tbaa !3
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond4.preheader.lr.ph, %for.inc30
  %3 = phi i32 [ %2, %for.cond4.preheader.lr.ph ], [ %17, %for.inc30 ]
  %4 = phi i32 [ %.pre82, %for.cond4.preheader.lr.ph ], [ %18, %for.inc30 ]
  %cci.173 = phi i32 [ %cci.078, %for.cond4.preheader.lr.ph ], [ %cci.2.lcssa, %for.inc30 ]
  %ci.172 = phi i32 [ %ci.077, %for.cond4.preheader.lr.ph ], [ %ci.2.lcssa, %for.inc30 ]
  %iy.070 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %inc31, %for.inc30 ]
  %cmp564 = icmp sgt i32 %4, 0
  br i1 %cmp564, label %for.body6.lr.ph, label %for.inc30

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %5 = sext i32 %ci.172 to i64
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.inc
  %6 = phi i32 [ %4, %for.body6.lr.ph ], [ %16, %for.inc ]
  %indvars.iv = phi i64 [ %5, %for.body6.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %cci.267 = phi i32 [ %cci.173, %for.body6.lr.ph ], [ %add25, %for.inc ]
  %ci.266 = phi i32 [ %ci.172, %for.body6.lr.ph ], [ %inc29, %for.inc ]
  %iz.065 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.inc ]
  %7 = trunc i64 %indvars.iv to i32
  %cmp7 = icmp sgt i32 %7, 0
  br i1 %cmp7, label %if.then, label %if.end19

if.then:                                          ; preds = %for.body6
  %8 = load i32** %index, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32* %8, i64 %indvars.iv
  %9 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom8 = sext i32 %cci.267 to i64
  %arrayidx10 = getelementptr inbounds i32* %8, i64 %idxprom8
  %10 = load i32* %arrayidx10, align 4, !tbaa !3
  %sub = sub nsw i32 %9, %10
  %11 = load i32** %nra12, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds i32* %11, i64 %idxprom8
  %12 = load i32* %arrayidx13, align 4, !tbaa !3
  %cmp14 = icmp eq i32 %sub, %12
  br i1 %cmp14, label %if.end19, label %if.then15

if.then15:                                        ; preds = %if.then
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i32 %sub, i32 %12, i32 %cci.267) #5
  %.pre84 = load i32* %nrz, align 4, !tbaa !3
  br label %if.end19

if.end19:                                         ; preds = %if.then, %for.body6, %if.then15
  %13 = phi i32 [ %.pre84, %if.then15 ], [ %6, %for.body6 ], [ %6, %if.then ]
  %14 = load i32* %nry, align 4, !tbaa !3
  %mul22 = mul i32 %14, %ix.079
  %tmp = add i32 %mul22, %iy.070
  %tmp63 = mul i32 %tmp, %13
  %add25 = add i32 %tmp63, %iz.065
  %15 = load i32* %ncells, align 4, !tbaa !3
  tail call fastcc void @_range_check(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i32 %add25, i32 %15, i32 340) #6
  %cmp26 = icmp eq i32 %add25, %7
  br i1 %cmp26, label %for.inc, label %if.then27

if.then27:                                        ; preds = %if.end19
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str16, i64 0, i64 0), i32 %7, i32 %add25) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %if.then27
  %inc = add nsw i32 %iz.065, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc29 = add nsw i32 %ci.266, 1
  %16 = load i32* %nrz, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %inc, %16
  br i1 %cmp5, label %for.body6, label %for.cond4.for.inc30_crit_edge

for.cond4.for.inc30_crit_edge:                    ; preds = %for.inc
  %.pre83 = load i32* %nry, align 4, !tbaa !3
  br label %for.inc30

for.inc30:                                        ; preds = %for.cond4.for.inc30_crit_edge, %for.cond4.preheader
  %17 = phi i32 [ %.pre83, %for.cond4.for.inc30_crit_edge ], [ %3, %for.cond4.preheader ]
  %18 = phi i32 [ %16, %for.cond4.for.inc30_crit_edge ], [ %4, %for.cond4.preheader ]
  %cci.2.lcssa = phi i32 [ %add25, %for.cond4.for.inc30_crit_edge ], [ %cci.173, %for.cond4.preheader ]
  %ci.2.lcssa = phi i32 [ %inc29, %for.cond4.for.inc30_crit_edge ], [ %ci.172, %for.cond4.preheader ]
  %inc31 = add nsw i32 %iy.070, 1
  %cmp2 = icmp slt i32 %inc31, %17
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond1.for.inc33_crit_edge

for.cond1.for.inc33_crit_edge:                    ; preds = %for.inc30
  %.pre81 = load i32* %nrx, align 4, !tbaa !3
  br label %for.inc33

for.inc33:                                        ; preds = %for.cond1.for.inc33_crit_edge, %for.cond1.preheader
  %19 = phi i32 [ %.pre81, %for.cond1.for.inc33_crit_edge ], [ %1, %for.cond1.preheader ]
  %20 = phi i32 [ %17, %for.cond1.for.inc33_crit_edge ], [ %2, %for.cond1.preheader ]
  %cci.1.lcssa = phi i32 [ %cci.2.lcssa, %for.cond1.for.inc33_crit_edge ], [ %cci.078, %for.cond1.preheader ]
  %ci.1.lcssa = phi i32 [ %ci.2.lcssa, %for.cond1.for.inc33_crit_edge ], [ %ci.077, %for.cond1.preheader ]
  %inc34 = add nsw i32 %ix.079, 1
  %cmp = icmp slt i32 %inc34, %19
  br i1 %cmp, label %for.cond1.preheader, label %for.end35

for.end35:                                        ; preds = %for.inc33, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @print_grid(%struct._IO_FILE* %log, %struct.t_grid* nocapture %grid, i32 %bDD, i32* nocapture %cg_index) #0 {
entry:
  %tobool = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %nr = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 0
  %0 = load i32* %nr, align 4, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str17, i64 0, i64 0), i32 %0) #5
  %nrx = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1
  %1 = load i32* %nrx, align 4, !tbaa !3
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str18, i64 0, i64 0), i32 %1) #5
  %nry = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2
  %2 = load i32* %nry, align 4, !tbaa !3
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str19, i64 0, i64 0), i32 %2) #5
  %nrz = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3
  %3 = load i32* %nrz, align 4, !tbaa !3
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str20, i64 0, i64 0), i32 %3) #5
  %delta = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 6
  %4 = load i32* %delta, align 4, !tbaa !3
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str21, i64 0, i64 0), i32 %4) #5
  %gmax = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 7
  %5 = load i32* %gmax, align 4, !tbaa !3
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str22, i64 0, i64 0), i32 %5) #5
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str23, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %log)
  %7 = load i32* %nr, align 4, !tbaa !3
  %cmp104 = icmp sgt i32 %7, 0
  br i1 %cmp104, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %cell_index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv109 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next110, %for.body ]
  %8 = load i32** %cell_index, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32* %8, i64 %indvars.iv109
  %9 = load i32* %arrayidx, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv109 to i32
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([10 x i8]* @.str24, i64 0, i64 0), i32 %10, i32 %9) #5
  %indvars.iv.next110 = add i64 %indvars.iv109, 1
  %11 = load i32* %nr, align 4, !tbaa !3
  %12 = trunc i64 %indvars.iv.next110 to i32
  %cmp = icmp slt i32 %12, %11
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.then
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str25, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %log)
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str26, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %log)
  %15 = load i32* %nrx, align 4, !tbaa !3
  %cmp13101 = icmp sgt i32 %15, 0
  br i1 %cmp13101, label %for.cond15.preheader.lr.ph, label %for.end49

for.cond15.preheader.lr.ph:                       ; preds = %for.end
  %index24 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9
  %nra27 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %a = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 11
  %.pre = load i32* %nry, align 4, !tbaa !3
  br label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond15.preheader.lr.ph, %for.inc47
  %16 = phi i32 [ %15, %for.cond15.preheader.lr.ph ], [ %32, %for.inc47 ]
  %17 = phi i32 [ %.pre, %for.cond15.preheader.lr.ph ], [ %33, %for.inc47 ]
  %ci.0103 = phi i32 [ 0, %for.cond15.preheader.lr.ph ], [ %ci.1.lcssa, %for.inc47 ]
  %ix.0102 = phi i32 [ 0, %for.cond15.preheader.lr.ph ], [ %inc48, %for.inc47 ]
  %cmp1797 = icmp sgt i32 %17, 0
  br i1 %cmp1797, label %for.cond19.preheader.lr.ph, label %for.inc47

for.cond19.preheader.lr.ph:                       ; preds = %for.cond15.preheader
  %.pre112 = load i32* %nrz, align 4, !tbaa !3
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond19.preheader.lr.ph, %for.inc44
  %18 = phi i32 [ %17, %for.cond19.preheader.lr.ph ], [ %30, %for.inc44 ]
  %19 = phi i32 [ %.pre112, %for.cond19.preheader.lr.ph ], [ %31, %for.inc44 ]
  %ci.199 = phi i32 [ %ci.0103, %for.cond19.preheader.lr.ph ], [ %ci.2.lcssa, %for.inc44 ]
  %iy.098 = phi i32 [ 0, %for.cond19.preheader.lr.ph ], [ %inc45, %for.inc44 ]
  %cmp2194 = icmp sgt i32 %19, 0
  br i1 %cmp2194, label %for.body22.lr.ph, label %for.inc44

for.body22.lr.ph:                                 ; preds = %for.cond19.preheader
  %20 = sext i32 %ci.199 to i64
  br label %for.body22

for.body22:                                       ; preds = %for.body22.lr.ph, %for.end38
  %indvars.iv107 = phi i64 [ %20, %for.body22.lr.ph ], [ %indvars.iv.next108, %for.end38 ]
  %ci.296 = phi i32 [ %ci.199, %for.body22.lr.ph ], [ %inc42, %for.end38 ]
  %iz.095 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc41, %for.end38 ]
  %21 = load i32** %index24, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds i32* %21, i64 %indvars.iv107
  %22 = load i32* %arrayidx25, align 4, !tbaa !3
  %23 = load i32** %nra27, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds i32* %23, i64 %indvars.iv107
  %24 = load i32* %arrayidx28, align 4, !tbaa !3
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str27, i64 0, i64 0), i32 %ix.0102, i32 %iy.098, i32 %iz.095, i32 %24, i32 %22) #5
  %cmp3192 = icmp sgt i32 %24, 0
  br i1 %cmp3192, label %for.body32.lr.ph, label %for.end38

for.body32.lr.ph:                                 ; preds = %for.body22
  %25 = sext i32 %22 to i64
  br label %for.body32

for.body32:                                       ; preds = %for.body32, %for.body32.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body32.lr.ph ], [ %indvars.iv.next, %for.body32 ]
  %26 = add nsw i64 %indvars.iv, %25
  %27 = load i32** %a, align 8, !tbaa !4
  %arrayidx34 = getelementptr inbounds i32* %27, i64 %26
  %28 = load i32* %arrayidx34, align 4, !tbaa !3
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0), i32 %28) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %24
  br i1 %exitcond, label %for.end38, label %for.body32

for.end38:                                        ; preds = %for.body32, %for.body22
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  %inc41 = add nsw i32 %iz.095, 1
  %indvars.iv.next108 = add i64 %indvars.iv107, 1
  %inc42 = add nsw i32 %ci.296, 1
  %29 = load i32* %nrz, align 4, !tbaa !3
  %cmp21 = icmp slt i32 %inc41, %29
  br i1 %cmp21, label %for.body22, label %for.cond19.for.inc44_crit_edge

for.cond19.for.inc44_crit_edge:                   ; preds = %for.end38
  %.pre113 = load i32* %nry, align 4, !tbaa !3
  br label %for.inc44

for.inc44:                                        ; preds = %for.cond19.for.inc44_crit_edge, %for.cond19.preheader
  %30 = phi i32 [ %.pre113, %for.cond19.for.inc44_crit_edge ], [ %18, %for.cond19.preheader ]
  %31 = phi i32 [ %29, %for.cond19.for.inc44_crit_edge ], [ %19, %for.cond19.preheader ]
  %ci.2.lcssa = phi i32 [ %inc42, %for.cond19.for.inc44_crit_edge ], [ %ci.199, %for.cond19.preheader ]
  %inc45 = add nsw i32 %iy.098, 1
  %cmp17 = icmp slt i32 %inc45, %30
  br i1 %cmp17, label %for.cond19.preheader, label %for.cond15.for.inc47_crit_edge

for.cond15.for.inc47_crit_edge:                   ; preds = %for.inc44
  %.pre111 = load i32* %nrx, align 4, !tbaa !3
  br label %for.inc47

for.inc47:                                        ; preds = %for.cond15.for.inc47_crit_edge, %for.cond15.preheader
  %32 = phi i32 [ %.pre111, %for.cond15.for.inc47_crit_edge ], [ %16, %for.cond15.preheader ]
  %33 = phi i32 [ %30, %for.cond15.for.inc47_crit_edge ], [ %17, %for.cond15.preheader ]
  %ci.1.lcssa = phi i32 [ %ci.2.lcssa, %for.cond15.for.inc47_crit_edge ], [ %ci.0103, %for.cond15.preheader ]
  %inc48 = add nsw i32 %ix.0102, 1
  %cmp13 = icmp slt i32 %inc48, %32
  br i1 %cmp13, label %for.cond15.preheader, label %for.end49

for.end49:                                        ; preds = %for.inc47, %for.end
  %call50 = tail call i32 @fflush(%struct._IO_FILE* %log) #5
  br label %if.end

if.end:                                           ; preds = %entry, %for.end49
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @mv_grid(%struct.t_commrec* nocapture %cr, i32 %bDD, i32* nocapture %cg_index, %struct.t_grid* nocapture %grid, i32* nocapture %cgload) #0 {
entry:
  %cell_index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  %0 = load i32** %cell_index, align 8, !tbaa !4
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %1 = load i32* %nnodes, align 4, !tbaa !3
  %sub62 = add nsw i32 %1, -1
  %cmp63 = icmp sgt i32 %sub62, 0
  br i1 %cmp63, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %2 = load i32* %nodeid, align 4, !tbaa !3
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cond.end20
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end20 ]
  %cur.064 = phi i32 [ %2, %for.body.lr.ph ], [ %rem37, %cond.end20 ]
  %cmp1 = icmp eq i32 %cur.064, 0
  br i1 %cmp1, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.body
  %sub2 = add nsw i32 %cur.064, -1
  %idxprom = sext i32 %sub2 to i64
  %arrayidx = getelementptr inbounds i32* %cgload, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi i32 [ %3, %cond.false ], [ 0, %for.body ]
  %idxprom3 = sext i32 %cur.064 to i64
  %arrayidx4 = getelementptr inbounds i32* %cgload, i64 %idxprom3
  %4 = load i32* %arrayidx4, align 4, !tbaa !3
  %sub5 = sub nsw i32 %4, %cond
  %5 = load i32* %left, align 4, !tbaa !3
  %idxprom6 = sext i32 %cond to i64
  %arrayidx7 = getelementptr inbounds i32* %0, i64 %idxprom6
  %6 = bitcast i32* %arrayidx7 to i8*
  %mul = shl i32 %sub5, 2
  tail call void @gmx_tx(i32 %5, i8* %6, i32 %mul) #5
  %add = add nsw i32 %cur.064, 1
  %7 = load i32* %nnodes, align 4, !tbaa !3
  %rem = srem i32 %add, %7
  %cmp10 = icmp eq i32 %rem, 0
  br i1 %cmp10, label %cond.end20, label %cond.false13

cond.false13:                                     ; preds = %cond.end
  %sub17 = add nsw i32 %rem, -1
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds i32* %cgload, i64 %idxprom18
  %8 = load i32* %arrayidx19, align 4, !tbaa !3
  br label %cond.end20

cond.end20:                                       ; preds = %cond.end, %cond.false13
  %cond21 = phi i32 [ %8, %cond.false13 ], [ 0, %cond.end ]
  %idxprom25 = sext i32 %rem to i64
  %arrayidx26 = getelementptr inbounds i32* %cgload, i64 %idxprom25
  %9 = load i32* %arrayidx26, align 4, !tbaa !3
  %sub27 = sub nsw i32 %9, %cond21
  %10 = load i32* %right, align 4, !tbaa !3
  %idxprom28 = sext i32 %cond21 to i64
  %arrayidx29 = getelementptr inbounds i32* %0, i64 %idxprom28
  %11 = bitcast i32* %arrayidx29 to i8*
  %mul31 = shl i32 %sub27, 2
  tail call void @gmx_rx(i32 %10, i8* %11, i32 %mul31) #5
  %12 = load i32* %left, align 4, !tbaa !3
  tail call void @gmx_tx_wait(i32 %12) #5
  %13 = load i32* %right, align 4, !tbaa !3
  tail call void @gmx_rx_wait(i32 %13) #5
  %14 = load i32* %nnodes, align 4, !tbaa !3
  %rem37 = srem i32 %add, %14
  %inc = add nsw i32 %i.065, 1
  %sub = add nsw i32 %14, -1
  %cmp = icmp slt i32 %inc, %sub
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cond.end20, %entry
  ret void
}

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_tx_wait(i32) #1

; Function Attrs: optsize
declare void @gmx_rx_wait(i32) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
