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
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !91), !dbg !306
  call void @llvm.dbg.value(metadata !{%struct.t_grid* %grid}, i64 0, metadata !92), !dbg !306
  call void @llvm.dbg.value(metadata !{i32 %delta}, i64 0, metadata !93), !dbg !306
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !94), !dbg !306
  call void @llvm.dbg.value(metadata !{float %rlistlong}, i64 0, metadata !95), !dbg !307
  call void @llvm.dbg.value(metadata !{i32 %ncg}, i64 0, metadata !96), !dbg !307
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %cx}, metadata !98), !dbg !308
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !97), !dbg !309
  %conv = sitofp i32 %delta to float, !dbg !311
  br label %for.body, !dbg !309

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx2 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv, !dbg !311
  %0 = load float* %arrayidx2, align 4, !dbg !311, !tbaa !312
  %mul = fmul float %conv, %0, !dbg !311
  %div = fdiv float %mul, %rlistlong, !dbg !311
  %conv3 = fptosi float %div to i32, !dbg !311
  %arrayidx5 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 %indvars.iv, !dbg !311
  store i32 %conv3, i32* %arrayidx5, align 4, !dbg !311, !tbaa !315
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !309
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !309
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !309
  br i1 %exitcond, label %for.end, label %for.body, !dbg !309

for.end:                                          ; preds = %for.body
  %nr = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 0, !dbg !316
  store i32 %ncg, i32* %nr, align 4, !dbg !316, !tbaa !315
  %arrayidx6 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 0, !dbg !317
  %1 = load i32* %arrayidx6, align 4, !dbg !317, !tbaa !315
  %nrx = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1, !dbg !317
  store i32 %1, i32* %nrx, align 4, !dbg !317, !tbaa !315
  %arrayidx7 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 1, !dbg !318
  %2 = load i32* %arrayidx7, align 4, !dbg !318, !tbaa !315
  %nry = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2, !dbg !318
  store i32 %2, i32* %nry, align 4, !dbg !318, !tbaa !315
  %arrayidx8 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 2, !dbg !319
  %3 = load i32* %arrayidx8, align 4, !dbg !319, !tbaa !315
  %nrz = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3, !dbg !319
  store i32 %3, i32* %nrz, align 4, !dbg !319, !tbaa !315
  %mul11 = mul nsw i32 %2, %1, !dbg !320
  %mul13 = mul nsw i32 %mul11, %3, !dbg !320
  %ncells = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4, !dbg !320
  store i32 %mul13, i32* %ncells, align 4, !dbg !320, !tbaa !315
  %mul15 = shl nsw i32 %mul13, 1, !dbg !321
  %maxcells = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 5, !dbg !321
  store i32 %mul15, i32* %maxcells, align 4, !dbg !321, !tbaa !315
  %delta16 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 6, !dbg !322
  store i32 %delta, i32* %delta16, align 4, !dbg !322, !tbaa !315
  %gmax = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 7, !dbg !323
  store i32 0, i32* %gmax, align 4, !dbg !323, !tbaa !315
  %add = add nsw i32 %ncg, 1, !dbg !324
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 74, i32 %add, i32 4) #6, !dbg !324
  %4 = bitcast i8* %call to i32*, !dbg !324
  %cell_index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8, !dbg !324
  store i32* %4, i32** %cell_index, align 8, !dbg !324, !tbaa !325
  %5 = load i32* %nr, align 4, !dbg !326, !tbaa !315
  %add19 = add nsw i32 %5, 1, !dbg !326
  %call20 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 75, i32 %add19, i32 4) #6, !dbg !326
  %6 = bitcast i8* %call20 to i32*, !dbg !326
  %a = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 11, !dbg !326
  store i32* %6, i32** %a, align 8, !dbg !326, !tbaa !325
  %7 = load i32* %maxcells, align 4, !dbg !327, !tbaa !315
  %call22 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 76, i32 %7, i32 4) #6, !dbg !327
  %8 = bitcast i8* %call22 to i32*, !dbg !327
  %index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9, !dbg !327
  store i32* %8, i32** %index, align 8, !dbg !327, !tbaa !325
  %9 = load i32* %maxcells, align 4, !dbg !328, !tbaa !315
  %call24 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 77, i32 %9, i32 4) #6, !dbg !328
  %10 = bitcast i8* %call24 to i32*, !dbg !328
  %nra = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10, !dbg !328
  store i32* %10, i32** %nra, align 8, !dbg !328, !tbaa !325
  %tobool = icmp eq %struct._IO_FILE* %log, null, !dbg !329
  br i1 %tobool, label %if.end, label %if.then, !dbg !329

if.then:                                          ; preds = %for.end
  %11 = load i32* %nrx, align 4, !dbg !330, !tbaa !315
  %12 = load i32* %nry, align 4, !dbg !330, !tbaa !315
  %13 = load i32* %nrz, align 4, !dbg !330, !tbaa !315
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0), i32 %11, i32 %12, i32 %13) #6, !dbg !330
  br label %if.end, !dbg !330

if.end:                                           ; preds = %for.end, %if.then
  %14 = load %struct._IO_FILE** @debug, align 8, !dbg !331, !tbaa !325
  %tobool29 = icmp eq %struct._IO_FILE* %14, null, !dbg !331
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !331

if.then30:                                        ; preds = %if.end
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str6, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %14), !dbg !332
  br label %if.end32, !dbg !332

if.end32:                                         ; preds = %if.end, %if.then30
  ret void, !dbg !333
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @done_grid(%struct.t_grid* nocapture %grid) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_grid* %grid}, i64 0, metadata !105), !dbg !334
  %cell_index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8, !dbg !335
  %0 = bitcast %struct.t_grid* %grid to i8*, !dbg !335
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 4, i1 false), !dbg !336
  %1 = load i32** %cell_index, align 8, !dbg !335, !tbaa !325
  %2 = bitcast i32* %1 to i8*, !dbg !335
  tail call void @save_free(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 97, i8* %2) #6, !dbg !335
  %a = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 11, !dbg !337
  %3 = load i32** %a, align 8, !dbg !337, !tbaa !325
  %4 = bitcast i32* %3 to i8*, !dbg !337
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 98, i8* %4) #6, !dbg !337
  %index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9, !dbg !338
  %5 = load i32** %index, align 8, !dbg !338, !tbaa !325
  %6 = bitcast i32* %5 to i8*, !dbg !338
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 99, i8* %6) #6, !dbg !338
  %nra = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10, !dbg !339
  %7 = load i32** %nra, align 8, !dbg !339, !tbaa !325
  %8 = bitcast i32* %7 to i8*, !dbg !339
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 100, i8* %8) #6, !dbg !339
  %9 = load %struct._IO_FILE** @debug, align 8, !dbg !340, !tbaa !325
  %tobool = icmp eq %struct._IO_FILE* %9, null, !dbg !340
  br i1 %tobool, label %if.end, label %if.then, !dbg !340

if.then:                                          ; preds = %entry
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str7, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %9), !dbg !341
  br label %if.end, !dbg !341

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !342
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize readnone uwtable
define i32 @xyz2ci_(i32 %nry, i32 %nrz, i32 %x, i32 %y, i32 %z) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nry}, i64 0, metadata !110), !dbg !343
  tail call void @llvm.dbg.value(metadata !{i32 %nrz}, i64 0, metadata !111), !dbg !343
  tail call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !112), !dbg !343
  tail call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !113), !dbg !343
  tail call void @llvm.dbg.value(metadata !{i32 %z}, i64 0, metadata !114), !dbg !343
  %mul1 = mul i32 %x, %nry, !dbg !344
  %tmp = add i32 %mul1, %y
  %tmp5 = mul i32 %tmp, %nrz
  %add3 = add i32 %tmp5, %z, !dbg !344
  ret i32 %add3, !dbg !344
}

; Function Attrs: nounwind optsize uwtable
define void @ci2xyz(%struct.t_grid* nocapture %grid, i32 %i, i32* nocapture %x, i32* nocapture %y, i32* nocapture %z) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_grid* %grid}, i64 0, metadata !119), !dbg !345
  tail call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !120), !dbg !345
  tail call void @llvm.dbg.value(metadata !{i32* %x}, i64 0, metadata !121), !dbg !345
  tail call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !122), !dbg !345
  tail call void @llvm.dbg.value(metadata !{i32* %z}, i64 0, metadata !123), !dbg !345
  %nr = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 0, !dbg !346
  %0 = load i32* %nr, align 4, !dbg !346, !tbaa !315
  tail call fastcc void @_range_check(i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i32 %i, i32 %0, i32 117) #7, !dbg !346
  %idxprom = sext i32 %i to i64, !dbg !347
  %cell_index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8, !dbg !347
  %1 = load i32** %cell_index, align 8, !dbg !347, !tbaa !325
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !347
  %2 = load i32* %arrayidx, align 4, !dbg !347, !tbaa !315
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !124), !dbg !347
  %cmp = icmp eq i32 %2, -1, !dbg !348
  br i1 %cmp, label %if.then, label %if.end, !dbg !348

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str9, i64 0, i64 0), i32 %i) #6, !dbg !349
  br label %if.end, !dbg !349

if.end:                                           ; preds = %if.then, %entry
  %nry = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2, !dbg !350
  %3 = load i32* %nry, align 4, !dbg !350, !tbaa !315
  %nrz = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3, !dbg !350
  %4 = load i32* %nrz, align 4, !dbg !350, !tbaa !315
  %mul = mul nsw i32 %4, %3, !dbg !350
  %div = sdiv i32 %2, %mul, !dbg !350
  store i32 %div, i32* %x, align 4, !dbg !350, !tbaa !315
  %5 = load i32* %nry, align 4, !dbg !351, !tbaa !315
  %mul2 = mul nsw i32 %5, %div, !dbg !351
  %6 = load i32* %nrz, align 4, !dbg !351, !tbaa !315
  %mul4 = mul nsw i32 %mul2, %6, !dbg !351
  %sub = sub nsw i32 %2, %mul4, !dbg !351
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !124), !dbg !351
  %div6 = sdiv i32 %sub, %6, !dbg !352
  store i32 %div6, i32* %y, align 4, !dbg !352, !tbaa !315
  %7 = load i32* %nrz, align 4, !dbg !353, !tbaa !315
  %mul8 = mul nsw i32 %7, %div6, !dbg !353
  %sub9 = sub nsw i32 %sub, %mul8, !dbg !353
  tail call void @llvm.dbg.value(metadata !{i32 %sub9}, i64 0, metadata !124), !dbg !353
  store i32 %sub9, i32* %z, align 4, !dbg !354, !tbaa !315
  ret void, !dbg !355
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @_range_check(i8* %s, i32 %i, i32 %nr, i32 %line) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !356, i64 0, metadata !304), !dbg !357
  %cmp = icmp sgt i32 %i, -1, !dbg !358
  %cmp1 = icmp slt i32 %i, %nr, !dbg !358
  %or.cond = and i1 %cmp, %cmp1, !dbg !358
  br i1 %or.cond, label %if.end, label %if.then, !dbg !358

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %nr, -1, !dbg !359
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str33, i64 0, i64 0), i8* %s, i32 %i, i32 %sub, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 %line) #6, !dbg !359
  br label %if.end, !dbg !359

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !360
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @grid_first(%struct._IO_FILE* %log, %struct.t_grid* nocapture %grid, [3 x float]* nocapture %box, float %rlistlong) #0 {
entry:
  %cx = alloca [3 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !129), !dbg !361
  call void @llvm.dbg.value(metadata !{%struct.t_grid* %grid}, i64 0, metadata !130), !dbg !361
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !131), !dbg !361
  call void @llvm.dbg.value(metadata !{float %rlistlong}, i64 0, metadata !132), !dbg !361
  %nra1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10, !dbg !362
  %0 = load i32** %nra1, align 8, !dbg !362, !tbaa !325
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !133), !dbg !362
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %cx}, metadata !137), !dbg !363
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !135), !dbg !364
  %delta = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 6, !dbg !366
  %1 = load i32* %delta, align 4, !dbg !366, !tbaa !315
  %conv = sitofp i32 %1 to float, !dbg !366
  br label %for.body, !dbg !364

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv116 = phi i64 [ 0, %entry ], [ %indvars.iv.next117, %for.body ]
  %arrayidx3 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116, i64 %indvars.iv116, !dbg !366
  %2 = load float* %arrayidx3, align 4, !dbg !366, !tbaa !312
  %mul = fmul float %conv, %2, !dbg !366
  %div = fdiv float %mul, %rlistlong, !dbg !366
  %conv4 = fptosi float %div to i32, !dbg !366
  %arrayidx6 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 %indvars.iv116, !dbg !366
  store i32 %conv4, i32* %arrayidx6, align 4, !dbg !366, !tbaa !315
  %indvars.iv.next117 = add i64 %indvars.iv116, 1, !dbg !364
  %lftr.wideiv = trunc i64 %indvars.iv.next117 to i32, !dbg !364
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !364
  br i1 %exitcond, label %for.end, label %for.body, !dbg !364

for.end:                                          ; preds = %for.body
  %arrayidx7 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 0, !dbg !367
  %3 = load i32* %arrayidx7, align 4, !dbg !367, !tbaa !315
  %nrx = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1, !dbg !367
  store i32 %3, i32* %nrx, align 4, !dbg !367, !tbaa !315
  %arrayidx8 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 1, !dbg !368
  %4 = load i32* %arrayidx8, align 4, !dbg !368, !tbaa !315
  %nry = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2, !dbg !368
  store i32 %4, i32* %nry, align 4, !dbg !368, !tbaa !315
  %arrayidx9 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 2, !dbg !369
  %5 = load i32* %arrayidx9, align 4, !dbg !369, !tbaa !315
  %nrz = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3, !dbg !369
  store i32 %5, i32* %nrz, align 4, !dbg !369, !tbaa !315
  %mul12 = mul i32 %4, %3, !dbg !370
  %mul14 = mul i32 %mul12, %5, !dbg !370
  call void @llvm.dbg.value(metadata !{i32 %mul14}, i64 0, metadata !136), !dbg !370
  %ncells15 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4, !dbg !371
  %6 = load i32* %ncells15, align 4, !dbg !371, !tbaa !315
  %cmp16 = icmp eq i32 %6, %mul14, !dbg !371
  br i1 %cmp16, label %if.end58, label %if.then, !dbg !371

if.then:                                          ; preds = %for.end
  %tobool = icmp ne %struct._IO_FILE* %log, null, !dbg !372
  br i1 %tobool, label %if.then18, label %if.end, !dbg !372

if.then18:                                        ; preds = %if.then
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0), i32 %3, i32 %4, i32 %5) #6, !dbg !374
  br label %if.end, !dbg !374

if.end:                                           ; preds = %if.then18, %if.then
  %maxcells = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 5, !dbg !375
  %7 = load i32* %maxcells, align 4, !dbg !375, !tbaa !315
  %cmp22 = icmp sgt i32 %mul14, %7, !dbg !375
  br i1 %cmp22, label %if.then24, label %if.end55, !dbg !375

if.then24:                                        ; preds = %if.end
  %8 = load i32** %nra1, align 8, !dbg !376, !tbaa !325
  %9 = bitcast i32* %8 to i8*, !dbg !376
  %mul27 = shl i32 %mul14, 2, !dbg !376
  %call29 = call i8* @save_realloc(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 148, i8* %9, i32 %mul27) #6, !dbg !376
  %10 = bitcast i8* %call29 to i32*, !dbg !376
  store i32* %10, i32** %nra1, align 8, !dbg !376, !tbaa !325
  %index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9, !dbg !378
  %11 = load i32** %index, align 8, !dbg !378, !tbaa !325
  %12 = bitcast i32* %11 to i8*, !dbg !378
  %call34 = call i8* @save_realloc(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 149, i8* %12, i32 %mul27) #6, !dbg !378
  %13 = bitcast i8* %call34 to i32*, !dbg !378
  store i32* %13, i32** %index, align 8, !dbg !378, !tbaa !325
  %14 = load i32* %maxcells, align 4, !dbg !379, !tbaa !315
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !134), !dbg !379
  %cmp38110 = icmp slt i32 %14, %mul14, !dbg !379
  br i1 %cmp38110, label %for.body40.lr.ph, label %for.end49, !dbg !379

for.body40.lr.ph:                                 ; preds = %if.then24
  %15 = load i32** %nra1, align 8, !dbg !381, !tbaa !325
  %16 = sext i32 %14 to i64
  br label %for.body40, !dbg !379

for.body40:                                       ; preds = %for.body40.lr.ph, %for.body40
  %indvars.iv = phi i64 [ %16, %for.body40.lr.ph ], [ %indvars.iv.next, %for.body40 ]
  %arrayidx43 = getelementptr inbounds i32* %15, i64 %indvars.iv, !dbg !381
  store i32 0, i32* %arrayidx43, align 4, !dbg !381, !tbaa !315
  %arrayidx46 = getelementptr inbounds i32* %13, i64 %indvars.iv, !dbg !383
  store i32 0, i32* %arrayidx46, align 4, !dbg !383, !tbaa !315
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !379
  %17 = trunc i64 %indvars.iv.next to i32, !dbg !379
  %cmp38 = icmp slt i32 %17, %mul14, !dbg !379
  br i1 %cmp38, label %for.body40, label %for.end49, !dbg !379

for.end49:                                        ; preds = %for.body40, %if.then24
  br i1 %tobool, label %if.then51, label %if.end53, !dbg !384

if.then51:                                        ; preds = %for.end49
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([47 x i8]* @.str10, i64 0, i64 0), i32 %mul14) #6, !dbg !385
  br label %if.end53, !dbg !385

if.end53:                                         ; preds = %if.then51, %for.end49
  store i32 %mul14, i32* %maxcells, align 4, !dbg !386, !tbaa !315
  br label %if.end55, !dbg !387

if.end55:                                         ; preds = %if.end, %if.end53
  store i32 %mul14, i32* %ncells15, align 4, !dbg !388, !tbaa !315
  %18 = load i32** %nra1, align 8, !dbg !389, !tbaa !325
  call void @llvm.dbg.value(metadata !{i32* %18}, i64 0, metadata !133), !dbg !389
  br label %if.end58, !dbg !390

if.end58:                                         ; preds = %for.end, %if.end55
  %nra.0 = phi i32* [ %18, %if.end55 ], [ %0, %for.end ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !134), !dbg !391
  %cmp60108 = icmp sgt i32 %mul14, 0, !dbg !391
  br i1 %cmp60108, label %for.body62.lr.ph, label %for.end67, !dbg !391

for.body62.lr.ph:                                 ; preds = %if.end58
  %nra.0113 = bitcast i32* %nra.0 to i8*
  %19 = add i32 %mul14, -1, !dbg !391
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 2, !dbg !391
  %22 = add i64 %21, 4, !dbg !391
  call void @llvm.memset.p0i8.i64(i8* %nra.0113, i8 0, i64 %22, i32 4, i1 false), !dbg !393
  br label %for.end67, !dbg !391

for.end67:                                        ; preds = %for.body62.lr.ph, %if.end58
  ret void, !dbg !394
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @calc_elemnr(%struct._IO_FILE* %log, i32 %bDD, i32* nocapture %cg_index, %struct.t_grid* nocapture %grid, i32 %cg0, i32 %cg1, i32 %ncg) #0 {
entry:
  %CG0 = alloca [2 x i32], align 4
  %CG1 = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !142), !dbg !395
  call void @llvm.dbg.value(metadata !{i32 %bDD}, i64 0, metadata !143), !dbg !395
  call void @llvm.dbg.value(metadata !{i32* %cg_index}, i64 0, metadata !144), !dbg !395
  call void @llvm.dbg.value(metadata !{%struct.t_grid* %grid}, i64 0, metadata !145), !dbg !396
  call void @llvm.dbg.value(metadata !{i32 %cg0}, i64 0, metadata !146), !dbg !396
  call void @llvm.dbg.value(metadata !{i32 %cg1}, i64 0, metadata !147), !dbg !396
  call void @llvm.dbg.value(metadata !{i32 %ncg}, i64 0, metadata !148), !dbg !396
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %CG0}, metadata !149), !dbg !397
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %CG1}, metadata !153), !dbg !397
  %cell_index1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8, !dbg !398
  %0 = load i32** %cell_index1, align 8, !dbg !398, !tbaa !325
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !154), !dbg !398
  %nra2 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10, !dbg !399
  %1 = load i32** %nra2, align 8, !dbg !399, !tbaa !325
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !155), !dbg !399
  %ncells3 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4, !dbg !400
  %2 = load i32* %ncells3, align 4, !dbg !400, !tbaa !315
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !158), !dbg !400
  %arraydecay = getelementptr inbounds [2 x i32]* %CG0, i64 0, i64 0, !dbg !401
  %arraydecay4 = getelementptr inbounds [2 x i32]* %CG1, i64 0, i64 0, !dbg !401
  call fastcc void @calc_bor(%struct._IO_FILE* %log, i32 %bDD, i32 %cg0, i32 %cg1, i32 %ncg, i32* %arraydecay, i32* %arraydecay4) #7, !dbg !401
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !157), !dbg !402
  br label %for.body, !dbg !402

for.body:                                         ; preds = %for.inc15, %entry
  %indvars.iv29 = phi i64 [ 0, %entry ], [ %indvars.iv.next30, %for.inc15 ]
  %arrayidx = getelementptr inbounds [2 x i32]* %CG0, i64 0, i64 %indvars.iv29, !dbg !404
  %3 = load i32* %arrayidx, align 4, !dbg !404, !tbaa !315
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !156), !dbg !404
  %arrayidx7 = getelementptr inbounds [2 x i32]* %CG1, i64 0, i64 %indvars.iv29, !dbg !404
  %4 = load i32* %arrayidx7, align 4, !dbg !404, !tbaa !315
  %cmp826 = icmp slt i32 %3, %4, !dbg !404
  br i1 %cmp826, label %for.body9.lr.ph, label %for.inc15, !dbg !404

for.body9.lr.ph:                                  ; preds = %for.body
  %5 = sext i32 %3 to i64
  br label %for.body9, !dbg !404

for.body9:                                        ; preds = %for.body9.lr.ph, %for.body9
  %indvars.iv = phi i64 [ %5, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  %arrayidx11 = getelementptr inbounds i32* %0, i64 %indvars.iv, !dbg !406
  %6 = load i32* %arrayidx11, align 4, !dbg !406, !tbaa !315
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !159), !dbg !406
  call fastcc void @_range_check(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i32 %6, i32 %2, i32 217) #7, !dbg !408
  %idxprom12 = sext i32 %6 to i64, !dbg !409
  %arrayidx13 = getelementptr inbounds i32* %1, i64 %idxprom12, !dbg !409
  %7 = load i32* %arrayidx13, align 4, !dbg !409, !tbaa !315
  %inc = add nsw i32 %7, 1, !dbg !409
  store i32 %inc, i32* %arrayidx13, align 4, !dbg !409, !tbaa !315
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !404
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !404
  %cmp8 = icmp slt i32 %8, %4, !dbg !404
  br i1 %cmp8, label %for.body9, label %for.inc15, !dbg !404

for.inc15:                                        ; preds = %for.body9, %for.body
  %indvars.iv.next30 = add i64 %indvars.iv29, 1, !dbg !402
  %lftr.wideiv = trunc i64 %indvars.iv.next30 to i32, !dbg !402
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !402
  br i1 %exitcond, label %for.end17, label %for.body, !dbg !402

for.end17:                                        ; preds = %for.inc15
  ret void, !dbg !410
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @calc_bor(%struct._IO_FILE* %log, i32 %bDD, i32 %cg0, i32 %cg1, i32 %ncg, i32* nocapture %CG0, i32* nocapture %CG1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !287), !dbg !411
  tail call void @llvm.dbg.value(metadata !{i32 %bDD}, i64 0, metadata !288), !dbg !411
  tail call void @llvm.dbg.value(metadata !{i32 %cg0}, i64 0, metadata !289), !dbg !412
  tail call void @llvm.dbg.value(metadata !{i32 %cg1}, i64 0, metadata !290), !dbg !412
  tail call void @llvm.dbg.value(metadata !{i32 %ncg}, i64 0, metadata !291), !dbg !412
  tail call void @llvm.dbg.value(metadata !{i32* %CG0}, i64 0, metadata !292), !dbg !412
  tail call void @llvm.dbg.value(metadata !{i32* %CG1}, i64 0, metadata !293), !dbg !412
  %tobool = icmp eq i32 %bDD, 0, !dbg !413
  br i1 %tobool, label %if.else, label %if.then, !dbg !413

if.then:                                          ; preds = %entry
  store i32 %cg0, i32* %CG0, align 4, !dbg !414, !tbaa !315
  %arrayidx1 = getelementptr inbounds i32* %CG0, i64 1, !dbg !416
  store i32 0, i32* %arrayidx1, align 4, !dbg !416, !tbaa !315
  store i32 %cg1, i32* %CG1, align 4, !dbg !417, !tbaa !315
  %arrayidx3 = getelementptr inbounds i32* %CG1, i64 1, !dbg !418
  store i32 0, i32* %arrayidx3, align 4, !dbg !418, !tbaa !315
  br label %if.end14, !dbg !419

if.else:                                          ; preds = %entry
  %cmp = icmp sgt i32 %cg1, %ncg, !dbg !420
  store i32 %cg0, i32* %CG0, align 4, !dbg !422, !tbaa !315
  br i1 %cmp, label %if.then4, label %if.else9, !dbg !420

if.then4:                                         ; preds = %if.else
  store i32 %ncg, i32* %CG1, align 4, !dbg !424, !tbaa !315
  %arrayidx7 = getelementptr inbounds i32* %CG0, i64 1, !dbg !425
  store i32 0, i32* %arrayidx7, align 4, !dbg !425, !tbaa !315
  %sub = sub nsw i32 %cg1, %ncg, !dbg !426
  %arrayidx8 = getelementptr inbounds i32* %CG1, i64 1, !dbg !426
  store i32 %sub, i32* %arrayidx8, align 4, !dbg !426, !tbaa !315
  br label %if.end14, !dbg !427

if.else9:                                         ; preds = %if.else
  store i32 %cg1, i32* %CG1, align 4, !dbg !428, !tbaa !315
  %arrayidx12 = getelementptr inbounds i32* %CG0, i64 1, !dbg !430
  store i32 0, i32* %arrayidx12, align 4, !dbg !430, !tbaa !315
  %arrayidx13 = getelementptr inbounds i32* %CG1, i64 1, !dbg !431
  store i32 0, i32* %arrayidx13, align 4, !dbg !431, !tbaa !315
  br label %if.end14

if.end14:                                         ; preds = %if.then4, %if.else9, %if.then
  %0 = load %struct._IO_FILE** @debug, align 8, !dbg !432, !tbaa !325
  %tobool15 = icmp eq %struct._IO_FILE* %0, null, !dbg !432
  %tobool17 = icmp eq %struct._IO_FILE* %log, null, !dbg !433
  %or.cond = or i1 %tobool15, %tobool17, !dbg !432
  br i1 %or.cond, label %if.end25, label %if.then18, !dbg !432

if.then18:                                        ; preds = %if.end14
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([34 x i8]* @.str31, i64 0, i64 0), i32 %cg0, i32 %cg1, i32 %ncg) #6, !dbg !434
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !294), !dbg !436
  br label %for.body, !dbg !436

for.body:                                         ; preds = %for.body, %if.then18
  %indvars.iv = phi i64 [ 0, %if.then18 ], [ %indvars.iv.next, %for.body ]
  %arrayidx20 = getelementptr inbounds i32* %CG0, i64 %indvars.iv, !dbg !438
  %1 = load i32* %arrayidx20, align 4, !dbg !438, !tbaa !315
  %arrayidx22 = getelementptr inbounds i32* %CG1, i64 %indvars.iv, !dbg !438
  %2 = load i32* %arrayidx22, align 4, !dbg !438, !tbaa !315
  %3 = trunc i64 %indvars.iv to i32, !dbg !438
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([24 x i8]* @.str32, i64 0, i64 0), i32 %3, i32 %1, i32 %3, i32 %2) #6, !dbg !438
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !436
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !436
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !436
  br i1 %exitcond, label %if.end25, label %for.body, !dbg !436

if.end25:                                         ; preds = %for.body, %if.end14
  ret void, !dbg !439
}

; Function Attrs: nounwind optsize uwtable
define void @calc_ptrs(%struct.t_grid* nocapture %grid) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_grid* %grid}, i64 0, metadata !162), !dbg !440
  %index1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9, !dbg !441
  %0 = load i32** %index1, align 8, !dbg !441, !tbaa !325
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !163), !dbg !441
  %nra2 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10, !dbg !442
  %1 = load i32** %nra2, align 8, !dbg !442, !tbaa !325
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !164), !dbg !442
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !172), !dbg !443
  %ncells3 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4, !dbg !444
  %2 = load i32* %ncells3, align 4, !dbg !444, !tbaa !315
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !171), !dbg !444
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !169), !dbg !445
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !168), !dbg !445
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !165), !dbg !446
  %nrx = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1, !dbg !446
  %3 = load i32* %nrx, align 4, !dbg !446, !tbaa !315
  %cmp57 = icmp sgt i32 %3, 0, !dbg !446
  br i1 %cmp57, label %for.cond4.preheader.lr.ph, label %for.end21, !dbg !446

for.cond4.preheader.lr.ph:                        ; preds = %entry
  %nry = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2, !dbg !448
  %nrz = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3, !dbg !450
  %.pre = load i32* %nry, align 4, !dbg !448, !tbaa !315
  br label %for.cond4.preheader, !dbg !446

for.cond4.preheader:                              ; preds = %for.cond4.preheader.lr.ph, %for.inc19
  %4 = phi i32 [ %3, %for.cond4.preheader.lr.ph ], [ %14, %for.inc19 ]
  %5 = phi i32 [ %.pre, %for.cond4.preheader.lr.ph ], [ %15, %for.inc19 ], !dbg !448
  %gmax.061 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %gmax.1.lcssa, %for.inc19 ]
  %ix.060 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %inc20, %for.inc19 ]
  %nr.059 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %nr.1.lcssa, %for.inc19 ]
  %ci.058 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %ci.1.lcssa, %for.inc19 ]
  %cmp549 = icmp sgt i32 %5, 0, !dbg !448
  br i1 %cmp549, label %for.cond7.preheader.lr.ph, label %for.inc19, !dbg !448

for.cond7.preheader.lr.ph:                        ; preds = %for.cond4.preheader
  %.pre64 = load i32* %nrz, align 4, !dbg !450, !tbaa !315
  br label %for.cond7.preheader, !dbg !448

for.cond7.preheader:                              ; preds = %for.cond7.preheader.lr.ph, %for.inc16
  %6 = phi i32 [ %5, %for.cond7.preheader.lr.ph ], [ %12, %for.inc16 ]
  %7 = phi i32 [ %.pre64, %for.cond7.preheader.lr.ph ], [ %13, %for.inc16 ], !dbg !450
  %gmax.153 = phi i32 [ %gmax.061, %for.cond7.preheader.lr.ph ], [ %gmax.2.lcssa, %for.inc16 ]
  %iy.052 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %inc17, %for.inc16 ]
  %nr.151 = phi i32 [ %nr.059, %for.cond7.preheader.lr.ph ], [ %nr.2.lcssa, %for.inc16 ]
  %ci.150 = phi i32 [ %ci.058, %for.cond7.preheader.lr.ph ], [ %ci.2.lcssa, %for.inc16 ]
  %cmp842 = icmp sgt i32 %7, 0, !dbg !450
  br i1 %cmp842, label %for.body9.lr.ph, label %for.inc16, !dbg !450

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %8 = sext i32 %ci.150 to i64
  br label %for.body9, !dbg !450

for.body9:                                        ; preds = %for.body9.lr.ph, %for.body9
  %indvars.iv = phi i64 [ %8, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  %gmax.246 = phi i32 [ %gmax.153, %for.body9.lr.ph ], [ %cond, %for.body9 ]
  %nr.245 = phi i32 [ %nr.151, %for.body9.lr.ph ], [ %add, %for.body9 ]
  %ci.244 = phi i32 [ %ci.150, %for.body9.lr.ph ], [ %inc15, %for.body9 ]
  %iz.043 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %for.body9 ]
  %9 = trunc i64 %indvars.iv to i32, !dbg !452
  tail call fastcc void @_range_check(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i32 %9, i32 %2, i32 235) #7, !dbg !452
  %arrayidx = getelementptr inbounds i32* %0, i64 %indvars.iv, !dbg !454
  store i32 %nr.245, i32* %arrayidx, align 4, !dbg !454, !tbaa !315
  %arrayidx11 = getelementptr inbounds i32* %1, i64 %indvars.iv, !dbg !455
  %10 = load i32* %arrayidx11, align 4, !dbg !455, !tbaa !315
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !170), !dbg !455
  %add = add nsw i32 %10, %nr.245, !dbg !456
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !169), !dbg !456
  %cmp12 = icmp sgt i32 %gmax.246, %10, !dbg !457
  %cond = select i1 %cmp12, i32 %gmax.246, i32 %10, !dbg !457
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !172), !dbg !457
  store i32 0, i32* %arrayidx11, align 4, !dbg !458, !tbaa !315
  %inc = add nsw i32 %iz.043, 1, !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !167), !dbg !450
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !450
  %inc15 = add nsw i32 %ci.244, 1, !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32 %inc15}, i64 0, metadata !168), !dbg !450
  %11 = load i32* %nrz, align 4, !dbg !450, !tbaa !315
  %cmp8 = icmp slt i32 %inc, %11, !dbg !450
  br i1 %cmp8, label %for.body9, label %for.cond7.for.inc16_crit_edge, !dbg !450

for.cond7.for.inc16_crit_edge:                    ; preds = %for.body9
  %.pre65 = load i32* %nry, align 4, !dbg !448, !tbaa !315
  br label %for.inc16, !dbg !450

for.inc16:                                        ; preds = %for.cond7.for.inc16_crit_edge, %for.cond7.preheader
  %12 = phi i32 [ %.pre65, %for.cond7.for.inc16_crit_edge ], [ %6, %for.cond7.preheader ], !dbg !448
  %13 = phi i32 [ %11, %for.cond7.for.inc16_crit_edge ], [ %7, %for.cond7.preheader ]
  %gmax.2.lcssa = phi i32 [ %cond, %for.cond7.for.inc16_crit_edge ], [ %gmax.153, %for.cond7.preheader ]
  %nr.2.lcssa = phi i32 [ %add, %for.cond7.for.inc16_crit_edge ], [ %nr.151, %for.cond7.preheader ]
  %ci.2.lcssa = phi i32 [ %inc15, %for.cond7.for.inc16_crit_edge ], [ %ci.150, %for.cond7.preheader ]
  %inc17 = add nsw i32 %iy.052, 1, !dbg !448
  tail call void @llvm.dbg.value(metadata !{i32 %inc17}, i64 0, metadata !166), !dbg !448
  %cmp5 = icmp slt i32 %inc17, %12, !dbg !448
  br i1 %cmp5, label %for.cond7.preheader, label %for.cond4.for.inc19_crit_edge, !dbg !448

for.cond4.for.inc19_crit_edge:                    ; preds = %for.inc16
  %.pre63 = load i32* %nrx, align 4, !dbg !446, !tbaa !315
  br label %for.inc19, !dbg !448

for.inc19:                                        ; preds = %for.cond4.for.inc19_crit_edge, %for.cond4.preheader
  %14 = phi i32 [ %.pre63, %for.cond4.for.inc19_crit_edge ], [ %4, %for.cond4.preheader ], !dbg !446
  %15 = phi i32 [ %12, %for.cond4.for.inc19_crit_edge ], [ %5, %for.cond4.preheader ]
  %gmax.1.lcssa = phi i32 [ %gmax.2.lcssa, %for.cond4.for.inc19_crit_edge ], [ %gmax.061, %for.cond4.preheader ]
  %nr.1.lcssa = phi i32 [ %nr.2.lcssa, %for.cond4.for.inc19_crit_edge ], [ %nr.059, %for.cond4.preheader ]
  %ci.1.lcssa = phi i32 [ %ci.2.lcssa, %for.cond4.for.inc19_crit_edge ], [ %ci.058, %for.cond4.preheader ]
  %inc20 = add nsw i32 %ix.060, 1, !dbg !446
  tail call void @llvm.dbg.value(metadata !{i32 %inc20}, i64 0, metadata !165), !dbg !446
  %cmp = icmp slt i32 %inc20, %14, !dbg !446
  br i1 %cmp, label %for.cond4.preheader, label %for.end21, !dbg !446

for.end21:                                        ; preds = %for.inc19, %entry
  %gmax.0.lcssa = phi i32 [ 0, %entry ], [ %gmax.1.lcssa, %for.inc19 ]
  %gmax22 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 7, !dbg !459
  store i32 %gmax.0.lcssa, i32* %gmax22, align 4, !dbg !459, !tbaa !315
  ret void, !dbg !460
}

; Function Attrs: nounwind optsize uwtable
define void @grid_last(%struct._IO_FILE* %log, i32 %bDD, i32* nocapture %cg_index, %struct.t_grid* nocapture %grid, i32 %cg0, i32 %cg1, i32 %ncg) #0 {
entry:
  %CG0 = alloca [2 x i32], align 4
  %CG1 = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !175), !dbg !461
  call void @llvm.dbg.value(metadata !{i32 %bDD}, i64 0, metadata !176), !dbg !461
  call void @llvm.dbg.value(metadata !{i32* %cg_index}, i64 0, metadata !177), !dbg !461
  call void @llvm.dbg.value(metadata !{%struct.t_grid* %grid}, i64 0, metadata !178), !dbg !462
  call void @llvm.dbg.value(metadata !{i32 %cg0}, i64 0, metadata !179), !dbg !462
  call void @llvm.dbg.value(metadata !{i32 %cg1}, i64 0, metadata !180), !dbg !462
  call void @llvm.dbg.value(metadata !{i32 %ncg}, i64 0, metadata !181), !dbg !462
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %CG0}, metadata !182), !dbg !463
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %CG1}, metadata !183), !dbg !463
  %cell_index1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8, !dbg !464
  %0 = load i32** %cell_index1, align 8, !dbg !464, !tbaa !325
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !189), !dbg !464
  %nra2 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10, !dbg !465
  %1 = load i32** %nra2, align 8, !dbg !465, !tbaa !325
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !190), !dbg !465
  %index3 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9, !dbg !466
  %2 = load i32** %index3, align 8, !dbg !466, !tbaa !325
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !191), !dbg !466
  %a4 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 11, !dbg !467
  %3 = load i32** %a4, align 8, !dbg !467, !tbaa !325
  call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !192), !dbg !467
  %ncells5 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4, !dbg !468
  %4 = load i32* %ncells5, align 4, !dbg !468, !tbaa !315
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !188), !dbg !468
  %arraydecay = getelementptr inbounds [2 x i32]* %CG0, i64 0, i64 0, !dbg !469
  %arraydecay6 = getelementptr inbounds [2 x i32]* %CG1, i64 0, i64 0, !dbg !469
  call fastcc void @calc_bor(%struct._IO_FILE* %log, i32 %bDD, i32 %cg0, i32 %cg1, i32 %ncg, i32* %arraydecay, i32* %arraydecay6) #7, !dbg !469
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !185), !dbg !470
  %nr = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 0, !dbg !472
  br label %for.body, !dbg !470

for.body:                                         ; preds = %for.inc23, %entry
  %indvars.iv43 = phi i64 [ 0, %entry ], [ %indvars.iv.next44, %for.inc23 ]
  %arrayidx = getelementptr inbounds [2 x i32]* %CG0, i64 0, i64 %indvars.iv43, !dbg !475
  %5 = load i32* %arrayidx, align 4, !dbg !475, !tbaa !315
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !184), !dbg !475
  %arrayidx9 = getelementptr inbounds [2 x i32]* %CG1, i64 0, i64 %indvars.iv43, !dbg !475
  %6 = load i32* %arrayidx9, align 4, !dbg !475, !tbaa !315
  %cmp1040 = icmp slt i32 %5, %6, !dbg !475
  br i1 %cmp1040, label %for.body11.lr.ph, label %for.inc23, !dbg !475

for.body11.lr.ph:                                 ; preds = %for.body
  %7 = sext i32 %5 to i64
  br label %for.body11, !dbg !475

for.body11:                                       ; preds = %for.body11.lr.ph, %for.body11
  %indvars.iv = phi i64 [ %7, %for.body11.lr.ph ], [ %indvars.iv.next, %for.body11 ]
  %arrayidx13 = getelementptr inbounds i32* %0, i64 %indvars.iv, !dbg !476
  %8 = load i32* %arrayidx13, align 4, !dbg !476, !tbaa !315
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !186), !dbg !476
  call fastcc void @_range_check(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i32 %8, i32 %4, i32 261) #7, !dbg !477
  %idxprom14 = sext i32 %8 to i64, !dbg !478
  %arrayidx15 = getelementptr inbounds i32* %2, i64 %idxprom14, !dbg !478
  %9 = load i32* %arrayidx15, align 4, !dbg !478, !tbaa !315
  %arrayidx17 = getelementptr inbounds i32* %1, i64 %idxprom14, !dbg !478
  %10 = load i32* %arrayidx17, align 4, !dbg !478, !tbaa !315
  %inc = add nsw i32 %10, 1, !dbg !478
  store i32 %inc, i32* %arrayidx17, align 4, !dbg !478, !tbaa !315
  %add = add nsw i32 %10, %9, !dbg !478
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !187), !dbg !478
  %11 = load i32* %nr, align 4, !dbg !472, !tbaa !315
  call fastcc void @_range_check(i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), i32 %add, i32 %11, i32 263) #7, !dbg !472
  %arrayidx19 = getelementptr inbounds i32* %cg_index, i64 %indvars.iv, !dbg !479
  %12 = load i32* %arrayidx19, align 4, !dbg !479, !tbaa !315
  %idxprom20 = sext i32 %add to i64, !dbg !479
  %arrayidx21 = getelementptr inbounds i32* %3, i64 %idxprom20, !dbg !479
  store i32 %12, i32* %arrayidx21, align 4, !dbg !479, !tbaa !315
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !475
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !475
  %cmp10 = icmp slt i32 %13, %6, !dbg !475
  br i1 %cmp10, label %for.body11, label %for.inc23, !dbg !475

for.inc23:                                        ; preds = %for.body11, %for.body
  %indvars.iv.next44 = add i64 %indvars.iv43, 1, !dbg !470
  %lftr.wideiv = trunc i64 %indvars.iv.next44 to i32, !dbg !470
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !470
  br i1 %exitcond, label %for.end25, label %for.body, !dbg !470

for.end25:                                        ; preds = %for.inc23
  ret void, !dbg !480
}

; Function Attrs: nounwind optsize uwtable
define void @fill_grid(%struct._IO_FILE* nocapture %log, i32 %bDD, i32* nocapture %cg_index, %struct.t_grid* nocapture %grid, [3 x float]* nocapture %box, i32 %ncg, i32 %cg0, i32 %cg1, [3 x float]* nocapture %cg_cm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !199), !dbg !481
  tail call void @llvm.dbg.value(metadata !{i32 %bDD}, i64 0, metadata !200), !dbg !481
  tail call void @llvm.dbg.value(metadata !{i32* %cg_index}, i64 0, metadata !201), !dbg !481
  tail call void @llvm.dbg.value(metadata !{%struct.t_grid* %grid}, i64 0, metadata !202), !dbg !482
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !203), !dbg !482
  tail call void @llvm.dbg.value(metadata !{i32 %ncg}, i64 0, metadata !204), !dbg !483
  tail call void @llvm.dbg.value(metadata !{i32 %cg0}, i64 0, metadata !205), !dbg !483
  tail call void @llvm.dbg.value(metadata !{i32 %cg1}, i64 0, metadata !206), !dbg !483
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %cg_cm}, i64 0, metadata !207), !dbg !483
  %cell_index1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8, !dbg !484
  %0 = load i32** %cell_index1, align 8, !dbg !484, !tbaa !325
  %1 = bitcast i32* %0 to i8*
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !208), !dbg !484
  %nrx2 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1, !dbg !485
  %2 = load i32* %nrx2, align 4, !dbg !485, !tbaa !315
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !209), !dbg !485
  %nry3 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2, !dbg !486
  %3 = load i32* %nry3, align 4, !dbg !486, !tbaa !315
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !210), !dbg !486
  %nrz4 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3, !dbg !487
  %4 = load i32* %nrz4, align 4, !dbg !487, !tbaa !315
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !211), !dbg !487
  %conv = sitofp i32 %2 to float, !dbg !488
  %arrayidx5 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !488
  %5 = load float* %arrayidx5, align 4, !dbg !488, !tbaa !312
  tail call void @llvm.dbg.value(metadata !356, i64 0, metadata !489) #5, !dbg !490
  %conv.i = fpext float %5 to double, !dbg !491
  %cmp.i = fcmp olt double %conv.i, 1.200000e-38, !dbg !491
  br i1 %cmp.i, label %if.then.i, label %_divide.exit, !dbg !491

if.then.i:                                        ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 282) #6, !dbg !493
  br label %_divide.exit, !dbg !493

_divide.exit:                                     ; preds = %entry, %if.then.i
  %div.i = fdiv float %conv, %5, !dbg !494
  tail call void @llvm.dbg.value(metadata !{float %div.i}, i64 0, metadata !212), !dbg !488
  %conv6 = sitofp i32 %3 to float, !dbg !495
  %arrayidx8 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !495
  %6 = load float* %arrayidx8, align 4, !dbg !495, !tbaa !312
  tail call void @llvm.dbg.value(metadata !356, i64 0, metadata !496) #5, !dbg !497
  %conv.i105 = fpext float %6 to double, !dbg !498
  %cmp.i106 = fcmp olt double %conv.i105, 1.200000e-38, !dbg !498
  br i1 %cmp.i106, label %if.then.i107, label %_divide.exit109, !dbg !498

if.then.i107:                                     ; preds = %_divide.exit
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 283) #6, !dbg !499
  br label %_divide.exit109, !dbg !499

_divide.exit109:                                  ; preds = %_divide.exit, %if.then.i107
  %div.i108 = fdiv float %conv6, %6, !dbg !500
  tail call void @llvm.dbg.value(metadata !{float %div.i108}, i64 0, metadata !213), !dbg !495
  %conv10 = sitofp i32 %4 to float, !dbg !501
  %arrayidx12 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !501
  %7 = load float* %arrayidx12, align 4, !dbg !501, !tbaa !312
  tail call void @llvm.dbg.value(metadata !356, i64 0, metadata !502) #5, !dbg !503
  %conv.i110 = fpext float %7 to double, !dbg !504
  %cmp.i111 = fcmp olt double %conv.i110, 1.200000e-38, !dbg !504
  br i1 %cmp.i111, label %if.then.i112, label %_divide.exit114, !dbg !504

if.then.i112:                                     ; preds = %_divide.exit109
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 284) #6, !dbg !505
  br label %_divide.exit114, !dbg !505

_divide.exit114:                                  ; preds = %_divide.exit109, %if.then.i112
  %div.i113 = fdiv float %conv10, %7, !dbg !506
  tail call void @llvm.dbg.value(metadata !{float %div.i113}, i64 0, metadata !214), !dbg !501
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !215), !dbg !507
  %cmp120 = icmp sgt i32 %cg0, 0, !dbg !507
  br i1 %cmp120, label %for.body.lr.ph, label %for.end, !dbg !507

for.body.lr.ph:                                   ; preds = %_divide.exit114
  %8 = add i32 %cg0, -1, !dbg !507
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 2, !dbg !507
  %11 = add i64 %10, 4, !dbg !507
  call void @llvm.memset.p0i8.i64(i8* %1, i8 -1, i64 %11, i32 4, i1 false), !dbg !509
  br label %for.end, !dbg !507

for.end:                                          ; preds = %for.body.lr.ph, %_divide.exit114
  %12 = load %struct._IO_FILE** @debug, align 8, !dbg !511, !tbaa !325
  %tobool = icmp eq %struct._IO_FILE* %12, null, !dbg !511
  br i1 %tobool, label %for.cond17.preheader, label %if.then, !dbg !511

if.then:                                          ; preds = %for.end
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([39 x i8]* @.str13, i64 0, i64 0), i32 %cg0, i32 %cg1, i32 %ncg) #6, !dbg !512
  br label %for.cond17.preheader, !dbg !512

for.cond17.preheader:                             ; preds = %for.end, %if.then
  %cmp18118 = icmp slt i32 %cg0, %cg1, !dbg !513
  br i1 %cmp18118, label %for.body20.lr.ph, label %for.cond60.preheader, !dbg !513

for.body20.lr.ph:                                 ; preds = %for.cond17.preheader
  %sub = add nsw i32 %2, -1, !dbg !515
  %sub44 = add nsw i32 %3, -1, !dbg !517
  %sub49 = add nsw i32 %4, -1, !dbg !518
  %13 = sext i32 %cg0 to i64
  br label %for.body20, !dbg !513

for.cond60.preheader:                             ; preds = %for.body20, %for.cond17.preheader
  %i.1.lcssa = phi i32 [ %cg0, %for.cond17.preheader ], [ %cg1, %for.body20 ]
  %cmp61116 = icmp slt i32 %i.1.lcssa, %ncg, !dbg !519
  br i1 %cmp61116, label %for.body63.lr.ph, label %for.end68, !dbg !519

for.body63.lr.ph:                                 ; preds = %for.cond60.preheader
  %14 = sext i32 %i.1.lcssa to i64
  %scevgep = getelementptr i32* %0, i64 %14
  %scevgep122 = bitcast i32* %scevgep to i8*
  %15 = add i32 %ncg, -1, !dbg !519
  %16 = sub i32 %15, %i.1.lcssa, !dbg !519
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2, !dbg !519
  %19 = add i64 %18, 4, !dbg !519
  call void @llvm.memset.p0i8.i64(i8* %scevgep122, i8 -1, i64 %19, i32 4, i1 false), !dbg !521
  br label %for.end68, !dbg !519

for.body20:                                       ; preds = %for.body20.lr.ph, %for.body20
  %indvars.iv = phi i64 [ %13, %for.body20.lr.ph ], [ %indvars.iv.next, %for.body20 ]
  %arrayidx22 = getelementptr inbounds i32* %cg_index, i64 %indvars.iv, !dbg !523
  %20 = load i32* %arrayidx22, align 4, !dbg !523, !tbaa !315
  tail call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !216), !dbg !523
  %idxprom23 = sext i32 %20 to i64, !dbg !524
  %arrayidx25 = getelementptr inbounds [3 x float]* %cg_cm, i64 %idxprom23, i64 0, !dbg !524
  %21 = load float* %arrayidx25, align 4, !dbg !524, !tbaa !312
  %mul = fmul float %div.i, %21, !dbg !524
  %conv26 = fptosi float %mul to i32, !dbg !524
  tail call void @llvm.dbg.value(metadata !{i32 %conv26}, i64 0, metadata !217), !dbg !524
  %arrayidx29 = getelementptr inbounds [3 x float]* %cg_cm, i64 %idxprom23, i64 1, !dbg !525
  %22 = load float* %arrayidx29, align 4, !dbg !525, !tbaa !312
  %mul30 = fmul float %div.i108, %22, !dbg !525
  %conv31 = fptosi float %mul30 to i32, !dbg !525
  tail call void @llvm.dbg.value(metadata !{i32 %conv31}, i64 0, metadata !218), !dbg !525
  %arrayidx34 = getelementptr inbounds [3 x float]* %cg_cm, i64 %idxprom23, i64 2, !dbg !526
  %23 = load float* %arrayidx34, align 4, !dbg !526, !tbaa !312
  %mul35 = fmul float %div.i113, %23, !dbg !526
  %conv36 = fptosi float %mul35 to i32, !dbg !526
  tail call void @llvm.dbg.value(metadata !{i32 %conv36}, i64 0, metadata !219), !dbg !526
  %cmp37 = icmp slt i32 %conv26, %2, !dbg !515
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !217), !dbg !515
  %conv26.sub = select i1 %cmp37, i32 %conv26, i32 %sub, !dbg !515
  %cmp41 = icmp slt i32 %conv31, %3, !dbg !517
  tail call void @llvm.dbg.value(metadata !{i32 %sub44}, i64 0, metadata !218), !dbg !517
  %iy.0 = select i1 %cmp41, i32 %conv31, i32 %sub44, !dbg !517
  %cmp46 = icmp slt i32 %conv36, %4, !dbg !518
  tail call void @llvm.dbg.value(metadata !{i32 %sub49}, i64 0, metadata !219), !dbg !518
  %conv36.sub49 = select i1 %cmp46, i32 %conv36, i32 %sub49, !dbg !518
  %mul52 = mul i32 %conv26.sub, %3, !dbg !527
  %tmp = add i32 %iy.0, %mul52
  %tmp115 = mul i32 %tmp, %4
  %add54 = add i32 %tmp115, %conv36.sub49, !dbg !527
  tail call void @llvm.dbg.value(metadata !{i32 %add54}, i64 0, metadata !220), !dbg !527
  %arrayidx56 = getelementptr inbounds i32* %0, i64 %indvars.iv, !dbg !528
  store i32 %add54, i32* %arrayidx56, align 4, !dbg !528, !tbaa !315
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !513
  tail call void @llvm.dbg.value(metadata !{i32 %cg1}, i64 0, metadata !215), !dbg !513
  %24 = trunc i64 %indvars.iv.next to i32, !dbg !513
  %cmp18 = icmp slt i32 %24, %cg1, !dbg !513
  br i1 %cmp18, label %for.body20, label %for.cond60.preheader, !dbg !513

for.end68:                                        ; preds = %for.body63.lr.ph, %for.cond60.preheader
  ret void, !dbg !529
}

; Function Attrs: nounwind optsize uwtable
define void @check_grid(%struct._IO_FILE* nocapture %log, %struct.t_grid* nocapture %grid) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !225), !dbg !530
  tail call void @llvm.dbg.value(metadata !{%struct.t_grid* %grid}, i64 0, metadata !226), !dbg !530
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !230), !dbg !531
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !231), !dbg !532
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !227), !dbg !533
  %nrx = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1, !dbg !533
  %0 = load i32* %nrx, align 4, !dbg !533, !tbaa !315
  %cmp76 = icmp sgt i32 %0, 0, !dbg !533
  br i1 %cmp76, label %for.cond1.preheader.lr.ph, label %for.end35, !dbg !533

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %nry = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2, !dbg !535
  %nrz = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3, !dbg !537
  %index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9, !dbg !539
  %nra12 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10, !dbg !542
  %ncells = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4, !dbg !543
  %.pre = load i32* %nry, align 4, !dbg !535, !tbaa !315
  br label %for.cond1.preheader, !dbg !533

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc33
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %19, %for.inc33 ]
  %2 = phi i32 [ %.pre, %for.cond1.preheader.lr.ph ], [ %20, %for.inc33 ], !dbg !535
  %ix.079 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc34, %for.inc33 ]
  %cci.078 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %cci.1.lcssa, %for.inc33 ]
  %ci.077 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %ci.1.lcssa, %for.inc33 ]
  %cmp269 = icmp sgt i32 %2, 0, !dbg !535
  br i1 %cmp269, label %for.cond4.preheader.lr.ph, label %for.inc33, !dbg !535

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %.pre82 = load i32* %nrz, align 4, !dbg !537, !tbaa !315
  br label %for.cond4.preheader, !dbg !535

for.cond4.preheader:                              ; preds = %for.cond4.preheader.lr.ph, %for.inc30
  %3 = phi i32 [ %2, %for.cond4.preheader.lr.ph ], [ %17, %for.inc30 ]
  %4 = phi i32 [ %.pre82, %for.cond4.preheader.lr.ph ], [ %18, %for.inc30 ], !dbg !537
  %cci.173 = phi i32 [ %cci.078, %for.cond4.preheader.lr.ph ], [ %cci.2.lcssa, %for.inc30 ]
  %ci.172 = phi i32 [ %ci.077, %for.cond4.preheader.lr.ph ], [ %ci.2.lcssa, %for.inc30 ]
  %iy.070 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %inc31, %for.inc30 ]
  %cmp564 = icmp sgt i32 %4, 0, !dbg !537
  br i1 %cmp564, label %for.body6.lr.ph, label %for.inc30, !dbg !537

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %5 = sext i32 %ci.172 to i64
  br label %for.body6, !dbg !537

for.body6:                                        ; preds = %for.body6.lr.ph, %for.inc
  %6 = phi i32 [ %4, %for.body6.lr.ph ], [ %16, %for.inc ]
  %indvars.iv = phi i64 [ %5, %for.body6.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %cci.267 = phi i32 [ %cci.173, %for.body6.lr.ph ], [ %add25, %for.inc ]
  %ci.266 = phi i32 [ %ci.172, %for.body6.lr.ph ], [ %inc29, %for.inc ]
  %iz.065 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.inc ]
  %7 = trunc i64 %indvars.iv to i32, !dbg !544
  %cmp7 = icmp sgt i32 %7, 0, !dbg !544
  br i1 %cmp7, label %if.then, label %if.end19, !dbg !544

if.then:                                          ; preds = %for.body6
  %8 = load i32** %index, align 8, !dbg !539, !tbaa !325
  %arrayidx = getelementptr inbounds i32* %8, i64 %indvars.iv, !dbg !539
  %9 = load i32* %arrayidx, align 4, !dbg !539, !tbaa !315
  %idxprom8 = sext i32 %cci.267 to i64, !dbg !539
  %arrayidx10 = getelementptr inbounds i32* %8, i64 %idxprom8, !dbg !539
  %10 = load i32* %arrayidx10, align 4, !dbg !539, !tbaa !315
  %sub = sub nsw i32 %9, %10, !dbg !539
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !232), !dbg !539
  %11 = load i32** %nra12, align 8, !dbg !542, !tbaa !325
  %arrayidx13 = getelementptr inbounds i32* %11, i64 %idxprom8, !dbg !542
  %12 = load i32* %arrayidx13, align 4, !dbg !542, !tbaa !315
  %cmp14 = icmp eq i32 %sub, %12, !dbg !542
  br i1 %cmp14, label %if.end19, label %if.then15, !dbg !542

if.then15:                                        ; preds = %if.then
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i32 %sub, i32 %12, i32 %cci.267) #6, !dbg !545
  %.pre84 = load i32* %nrz, align 4, !dbg !546, !tbaa !315
  br label %if.end19, !dbg !545

if.end19:                                         ; preds = %if.then, %for.body6, %if.then15
  %13 = phi i32 [ %.pre84, %if.then15 ], [ %6, %for.body6 ], [ %6, %if.then ]
  %14 = load i32* %nry, align 4, !dbg !546, !tbaa !315
  %mul22 = mul i32 %14, %ix.079, !dbg !546
  %tmp = add i32 %mul22, %iy.070
  %tmp63 = mul i32 %tmp, %13
  %add25 = add i32 %tmp63, %iz.065, !dbg !546
  tail call void @llvm.dbg.value(metadata !{i32 %add25}, i64 0, metadata !231), !dbg !546
  %15 = load i32* %ncells, align 4, !dbg !543, !tbaa !315
  tail call fastcc void @_range_check(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i32 %add25, i32 %15, i32 340) #7, !dbg !543
  %cmp26 = icmp eq i32 %add25, %7, !dbg !547
  br i1 %cmp26, label %for.inc, label %if.then27, !dbg !547

if.then27:                                        ; preds = %if.end19
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str16, i64 0, i64 0), i32 %7, i32 %add25) #6, !dbg !548
  br label %for.inc, !dbg !548

for.inc:                                          ; preds = %if.end19, %if.then27
  %inc = add nsw i32 %iz.065, 1, !dbg !537
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !229), !dbg !537
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !537
  %inc29 = add nsw i32 %ci.266, 1, !dbg !537
  tail call void @llvm.dbg.value(metadata !{i32 %inc29}, i64 0, metadata !230), !dbg !537
  %16 = load i32* %nrz, align 4, !dbg !537, !tbaa !315
  %cmp5 = icmp slt i32 %inc, %16, !dbg !537
  br i1 %cmp5, label %for.body6, label %for.cond4.for.inc30_crit_edge, !dbg !537

for.cond4.for.inc30_crit_edge:                    ; preds = %for.inc
  %.pre83 = load i32* %nry, align 4, !dbg !535, !tbaa !315
  br label %for.inc30, !dbg !537

for.inc30:                                        ; preds = %for.cond4.for.inc30_crit_edge, %for.cond4.preheader
  %17 = phi i32 [ %.pre83, %for.cond4.for.inc30_crit_edge ], [ %3, %for.cond4.preheader ], !dbg !535
  %18 = phi i32 [ %16, %for.cond4.for.inc30_crit_edge ], [ %4, %for.cond4.preheader ]
  %cci.2.lcssa = phi i32 [ %add25, %for.cond4.for.inc30_crit_edge ], [ %cci.173, %for.cond4.preheader ]
  %ci.2.lcssa = phi i32 [ %inc29, %for.cond4.for.inc30_crit_edge ], [ %ci.172, %for.cond4.preheader ]
  %inc31 = add nsw i32 %iy.070, 1, !dbg !535
  tail call void @llvm.dbg.value(metadata !{i32 %inc31}, i64 0, metadata !228), !dbg !535
  %cmp2 = icmp slt i32 %inc31, %17, !dbg !535
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond1.for.inc33_crit_edge, !dbg !535

for.cond1.for.inc33_crit_edge:                    ; preds = %for.inc30
  %.pre81 = load i32* %nrx, align 4, !dbg !533, !tbaa !315
  br label %for.inc33, !dbg !535

for.inc33:                                        ; preds = %for.cond1.for.inc33_crit_edge, %for.cond1.preheader
  %19 = phi i32 [ %.pre81, %for.cond1.for.inc33_crit_edge ], [ %1, %for.cond1.preheader ], !dbg !533
  %20 = phi i32 [ %17, %for.cond1.for.inc33_crit_edge ], [ %2, %for.cond1.preheader ]
  %cci.1.lcssa = phi i32 [ %cci.2.lcssa, %for.cond1.for.inc33_crit_edge ], [ %cci.078, %for.cond1.preheader ]
  %ci.1.lcssa = phi i32 [ %ci.2.lcssa, %for.cond1.for.inc33_crit_edge ], [ %ci.077, %for.cond1.preheader ]
  %inc34 = add nsw i32 %ix.079, 1, !dbg !533
  tail call void @llvm.dbg.value(metadata !{i32 %inc34}, i64 0, metadata !227), !dbg !533
  %cmp = icmp slt i32 %inc34, %19, !dbg !533
  br i1 %cmp, label %for.cond1.preheader, label %for.end35, !dbg !533

for.end35:                                        ; preds = %for.inc33, %entry
  ret void, !dbg !549
}

; Function Attrs: nounwind optsize uwtable
define void @print_grid(%struct._IO_FILE* %log, %struct.t_grid* nocapture %grid, i32 %bDD, i32* nocapture %cg_index) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !237), !dbg !550
  tail call void @llvm.dbg.value(metadata !{%struct.t_grid* %grid}, i64 0, metadata !238), !dbg !550
  tail call void @llvm.dbg.value(metadata !{i32 %bDD}, i64 0, metadata !239), !dbg !550
  tail call void @llvm.dbg.value(metadata !{i32* %cg_index}, i64 0, metadata !240), !dbg !550
  %tobool = icmp eq %struct._IO_FILE* %log, null, !dbg !551
  br i1 %tobool, label %if.end, label %if.then, !dbg !551

if.then:                                          ; preds = %entry
  %nr = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 0, !dbg !552
  %0 = load i32* %nr, align 4, !dbg !552, !tbaa !315
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str17, i64 0, i64 0), i32 %0) #6, !dbg !552
  %nrx = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1, !dbg !554
  %1 = load i32* %nrx, align 4, !dbg !554, !tbaa !315
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str18, i64 0, i64 0), i32 %1) #6, !dbg !554
  %nry = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2, !dbg !555
  %2 = load i32* %nry, align 4, !dbg !555, !tbaa !315
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str19, i64 0, i64 0), i32 %2) #6, !dbg !555
  %nrz = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3, !dbg !556
  %3 = load i32* %nrz, align 4, !dbg !556, !tbaa !315
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str20, i64 0, i64 0), i32 %3) #6, !dbg !556
  %delta = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 6, !dbg !557
  %4 = load i32* %delta, align 4, !dbg !557, !tbaa !315
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str21, i64 0, i64 0), i32 %4) #6, !dbg !557
  %gmax = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 7, !dbg !558
  %5 = load i32* %gmax, align 4, !dbg !558, !tbaa !315
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str22, i64 0, i64 0), i32 %5) #6, !dbg !558
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str23, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %log), !dbg !559
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !241), !dbg !560
  %7 = load i32* %nr, align 4, !dbg !560, !tbaa !315
  %cmp104 = icmp sgt i32 %7, 0, !dbg !560
  br i1 %cmp104, label %for.body.lr.ph, label %for.end, !dbg !560

for.body.lr.ph:                                   ; preds = %if.then
  %cell_index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8, !dbg !562
  br label %for.body, !dbg !560

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv109 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next110, %for.body ]
  %8 = load i32** %cell_index, align 8, !dbg !562, !tbaa !325
  %arrayidx = getelementptr inbounds i32* %8, i64 %indvars.iv109, !dbg !562
  %9 = load i32* %arrayidx, align 4, !dbg !562, !tbaa !315
  %10 = trunc i64 %indvars.iv109 to i32, !dbg !562
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([10 x i8]* @.str24, i64 0, i64 0), i32 %10, i32 %9) #6, !dbg !562
  %indvars.iv.next110 = add i64 %indvars.iv109, 1, !dbg !560
  %11 = load i32* %nr, align 4, !dbg !560, !tbaa !315
  %12 = trunc i64 %indvars.iv.next110 to i32, !dbg !560
  %cmp = icmp slt i32 %12, %11, !dbg !560
  br i1 %cmp, label %for.body, label %for.end, !dbg !560

for.end:                                          ; preds = %for.body, %if.then
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str25, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %log), !dbg !563
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str26, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %log), !dbg !564
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !247), !dbg !565
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !244), !dbg !566
  %15 = load i32* %nrx, align 4, !dbg !566, !tbaa !315
  %cmp13101 = icmp sgt i32 %15, 0, !dbg !566
  br i1 %cmp13101, label %for.cond15.preheader.lr.ph, label %for.end49, !dbg !566

for.cond15.preheader.lr.ph:                       ; preds = %for.end
  %index24 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9, !dbg !568
  %nra27 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10, !dbg !574
  %a = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 11, !dbg !575
  %.pre = load i32* %nry, align 4, !dbg !577, !tbaa !315
  br label %for.cond15.preheader, !dbg !566

for.cond15.preheader:                             ; preds = %for.cond15.preheader.lr.ph, %for.inc47
  %16 = phi i32 [ %15, %for.cond15.preheader.lr.ph ], [ %32, %for.inc47 ]
  %17 = phi i32 [ %.pre, %for.cond15.preheader.lr.ph ], [ %33, %for.inc47 ], !dbg !577
  %ci.0103 = phi i32 [ 0, %for.cond15.preheader.lr.ph ], [ %ci.1.lcssa, %for.inc47 ]
  %ix.0102 = phi i32 [ 0, %for.cond15.preheader.lr.ph ], [ %inc48, %for.inc47 ]
  %cmp1797 = icmp sgt i32 %17, 0, !dbg !577
  br i1 %cmp1797, label %for.cond19.preheader.lr.ph, label %for.inc47, !dbg !577

for.cond19.preheader.lr.ph:                       ; preds = %for.cond15.preheader
  %.pre112 = load i32* %nrz, align 4, !dbg !578, !tbaa !315
  br label %for.cond19.preheader, !dbg !577

for.cond19.preheader:                             ; preds = %for.cond19.preheader.lr.ph, %for.inc44
  %18 = phi i32 [ %17, %for.cond19.preheader.lr.ph ], [ %30, %for.inc44 ]
  %19 = phi i32 [ %.pre112, %for.cond19.preheader.lr.ph ], [ %31, %for.inc44 ], !dbg !578
  %ci.199 = phi i32 [ %ci.0103, %for.cond19.preheader.lr.ph ], [ %ci.2.lcssa, %for.inc44 ]
  %iy.098 = phi i32 [ 0, %for.cond19.preheader.lr.ph ], [ %inc45, %for.inc44 ]
  %cmp2194 = icmp sgt i32 %19, 0, !dbg !578
  br i1 %cmp2194, label %for.body22.lr.ph, label %for.inc44, !dbg !578

for.body22.lr.ph:                                 ; preds = %for.cond19.preheader
  %20 = sext i32 %ci.199 to i64
  br label %for.body22, !dbg !578

for.body22:                                       ; preds = %for.body22.lr.ph, %for.end38
  %indvars.iv107 = phi i64 [ %20, %for.body22.lr.ph ], [ %indvars.iv.next108, %for.end38 ]
  %ci.296 = phi i32 [ %ci.199, %for.body22.lr.ph ], [ %inc42, %for.end38 ]
  %iz.095 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc41, %for.end38 ]
  %21 = load i32** %index24, align 8, !dbg !568, !tbaa !325
  %arrayidx25 = getelementptr inbounds i32* %21, i64 %indvars.iv107, !dbg !568
  %22 = load i32* %arrayidx25, align 4, !dbg !568, !tbaa !315
  tail call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !243), !dbg !568
  %23 = load i32** %nra27, align 8, !dbg !574, !tbaa !325
  %arrayidx28 = getelementptr inbounds i32* %23, i64 %indvars.iv107, !dbg !574
  %24 = load i32* %arrayidx28, align 4, !dbg !574, !tbaa !315
  tail call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !242), !dbg !574
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str27, i64 0, i64 0), i32 %ix.0102, i32 %iy.098, i32 %iz.095, i32 %24, i32 %22) #6, !dbg !579
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !241), !dbg !580
  %cmp3192 = icmp sgt i32 %24, 0, !dbg !580
  br i1 %cmp3192, label %for.body32.lr.ph, label %for.end38, !dbg !580

for.body32.lr.ph:                                 ; preds = %for.body22
  %25 = sext i32 %22 to i64, !dbg !580
  br label %for.body32, !dbg !580

for.body32:                                       ; preds = %for.body32, %for.body32.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body32.lr.ph ], [ %indvars.iv.next, %for.body32 ]
  %26 = add nsw i64 %indvars.iv, %25, !dbg !575
  %27 = load i32** %a, align 8, !dbg !575, !tbaa !325
  %arrayidx34 = getelementptr inbounds i32* %27, i64 %26, !dbg !575
  %28 = load i32* %arrayidx34, align 4, !dbg !575, !tbaa !315
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0), i32 %28) #6, !dbg !575
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !580
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !580
  %exitcond = icmp eq i32 %lftr.wideiv, %24, !dbg !580
  br i1 %exitcond, label %for.end38, label %for.body32, !dbg !580

for.end38:                                        ; preds = %for.body32, %for.body22
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %log), !dbg !581
  %inc41 = add nsw i32 %iz.095, 1, !dbg !578
  tail call void @llvm.dbg.value(metadata !{i32 %inc41}, i64 0, metadata !246), !dbg !578
  %indvars.iv.next108 = add i64 %indvars.iv107, 1, !dbg !578
  %inc42 = add nsw i32 %ci.296, 1, !dbg !578
  tail call void @llvm.dbg.value(metadata !{i32 %inc42}, i64 0, metadata !247), !dbg !578
  %29 = load i32* %nrz, align 4, !dbg !578, !tbaa !315
  %cmp21 = icmp slt i32 %inc41, %29, !dbg !578
  br i1 %cmp21, label %for.body22, label %for.cond19.for.inc44_crit_edge, !dbg !578

for.cond19.for.inc44_crit_edge:                   ; preds = %for.end38
  %.pre113 = load i32* %nry, align 4, !dbg !577, !tbaa !315
  br label %for.inc44, !dbg !578

for.inc44:                                        ; preds = %for.cond19.for.inc44_crit_edge, %for.cond19.preheader
  %30 = phi i32 [ %.pre113, %for.cond19.for.inc44_crit_edge ], [ %18, %for.cond19.preheader ], !dbg !577
  %31 = phi i32 [ %29, %for.cond19.for.inc44_crit_edge ], [ %19, %for.cond19.preheader ]
  %ci.2.lcssa = phi i32 [ %inc42, %for.cond19.for.inc44_crit_edge ], [ %ci.199, %for.cond19.preheader ]
  %inc45 = add nsw i32 %iy.098, 1, !dbg !577
  tail call void @llvm.dbg.value(metadata !{i32 %inc45}, i64 0, metadata !245), !dbg !577
  %cmp17 = icmp slt i32 %inc45, %30, !dbg !577
  br i1 %cmp17, label %for.cond19.preheader, label %for.cond15.for.inc47_crit_edge, !dbg !577

for.cond15.for.inc47_crit_edge:                   ; preds = %for.inc44
  %.pre111 = load i32* %nrx, align 4, !dbg !566, !tbaa !315
  br label %for.inc47, !dbg !577

for.inc47:                                        ; preds = %for.cond15.for.inc47_crit_edge, %for.cond15.preheader
  %32 = phi i32 [ %.pre111, %for.cond15.for.inc47_crit_edge ], [ %16, %for.cond15.preheader ], !dbg !566
  %33 = phi i32 [ %30, %for.cond15.for.inc47_crit_edge ], [ %17, %for.cond15.preheader ]
  %ci.1.lcssa = phi i32 [ %ci.2.lcssa, %for.cond15.for.inc47_crit_edge ], [ %ci.0103, %for.cond15.preheader ]
  %inc48 = add nsw i32 %ix.0102, 1, !dbg !566
  tail call void @llvm.dbg.value(metadata !{i32 %inc48}, i64 0, metadata !244), !dbg !566
  %cmp13 = icmp slt i32 %inc48, %32, !dbg !566
  br i1 %cmp13, label %for.cond15.preheader, label %for.end49, !dbg !566

for.end49:                                        ; preds = %for.inc47, %for.end
  %call50 = tail call i32 @fflush(%struct._IO_FILE* %log) #6, !dbg !582
  br label %if.end, !dbg !583

if.end:                                           ; preds = %entry, %for.end49
  ret void, !dbg !584
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @mv_grid(%struct.t_commrec* nocapture %cr, i32 %bDD, i32* nocapture %cg_index, %struct.t_grid* nocapture %grid, i32* nocapture %cgload) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !263), !dbg !585
  tail call void @llvm.dbg.value(metadata !{i32 %bDD}, i64 0, metadata !264), !dbg !585
  tail call void @llvm.dbg.value(metadata !{i32* %cg_index}, i64 0, metadata !265), !dbg !585
  tail call void @llvm.dbg.value(metadata !{%struct.t_grid* %grid}, i64 0, metadata !266), !dbg !586
  tail call void @llvm.dbg.value(metadata !{i32* %cgload}, i64 0, metadata !267), !dbg !586
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !271), !dbg !587
  %cell_index = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8, !dbg !588
  %0 = load i32** %cell_index, align 8, !dbg !588, !tbaa !325
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !272), !dbg !588
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !268), !dbg !589
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !589
  %1 = load i32* %nnodes, align 4, !dbg !589, !tbaa !315
  %sub62 = add nsw i32 %1, -1, !dbg !589
  %cmp63 = icmp sgt i32 %sub62, 0, !dbg !589
  br i1 %cmp63, label %for.body.lr.ph, label %for.end, !dbg !589

for.body.lr.ph:                                   ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !587
  %2 = load i32* %nodeid, align 4, !dbg !587, !tbaa !315
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !591
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !593
  br label %for.body, !dbg !589

for.body:                                         ; preds = %for.body.lr.ph, %cond.end20
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end20 ]
  %cur.064 = phi i32 [ %2, %for.body.lr.ph ], [ %rem37, %cond.end20 ]
  %cmp1 = icmp eq i32 %cur.064, 0, !dbg !594
  br i1 %cmp1, label %cond.end, label %cond.false, !dbg !594

cond.false:                                       ; preds = %for.body
  %sub2 = add nsw i32 %cur.064, -1, !dbg !594
  %idxprom = sext i32 %sub2 to i64, !dbg !594
  %arrayidx = getelementptr inbounds i32* %cgload, i64 %idxprom, !dbg !594
  %3 = load i32* %arrayidx, align 4, !dbg !594, !tbaa !315
  br label %cond.end, !dbg !594

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi i32 [ %3, %cond.false ], [ 0, %for.body ], !dbg !594
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !269), !dbg !594
  %idxprom3 = sext i32 %cur.064 to i64, !dbg !595
  %arrayidx4 = getelementptr inbounds i32* %cgload, i64 %idxprom3, !dbg !595
  %4 = load i32* %arrayidx4, align 4, !dbg !595, !tbaa !315
  %sub5 = sub nsw i32 %4, %cond, !dbg !595
  tail call void @llvm.dbg.value(metadata !{i32 %sub5}, i64 0, metadata !270), !dbg !595
  %5 = load i32* %left, align 4, !dbg !591, !tbaa !315
  %idxprom6 = sext i32 %cond to i64, !dbg !591
  %arrayidx7 = getelementptr inbounds i32* %0, i64 %idxprom6, !dbg !591
  %6 = bitcast i32* %arrayidx7 to i8*, !dbg !591
  %mul = shl i32 %sub5, 2, !dbg !591
  tail call void @gmx_tx(i32 %5, i8* %6, i32 %mul) #6, !dbg !591
  %add = add nsw i32 %cur.064, 1, !dbg !596
  %7 = load i32* %nnodes, align 4, !dbg !596, !tbaa !315
  %rem = srem i32 %add, %7, !dbg !596
  %cmp10 = icmp eq i32 %rem, 0, !dbg !596
  br i1 %cmp10, label %cond.end20, label %cond.false13, !dbg !596

cond.false13:                                     ; preds = %cond.end
  %sub17 = add nsw i32 %rem, -1, !dbg !596
  %idxprom18 = sext i32 %sub17 to i64, !dbg !596
  %arrayidx19 = getelementptr inbounds i32* %cgload, i64 %idxprom18, !dbg !596
  %8 = load i32* %arrayidx19, align 4, !dbg !596, !tbaa !315
  br label %cond.end20, !dbg !596

cond.end20:                                       ; preds = %cond.end, %cond.false13
  %cond21 = phi i32 [ %8, %cond.false13 ], [ 0, %cond.end ], !dbg !596
  tail call void @llvm.dbg.value(metadata !{i32 %cond21}, i64 0, metadata !269), !dbg !596
  %idxprom25 = sext i32 %rem to i64, !dbg !597
  %arrayidx26 = getelementptr inbounds i32* %cgload, i64 %idxprom25, !dbg !597
  %9 = load i32* %arrayidx26, align 4, !dbg !597, !tbaa !315
  %sub27 = sub nsw i32 %9, %cond21, !dbg !597
  tail call void @llvm.dbg.value(metadata !{i32 %sub27}, i64 0, metadata !270), !dbg !597
  %10 = load i32* %right, align 4, !dbg !593, !tbaa !315
  %idxprom28 = sext i32 %cond21 to i64, !dbg !593
  %arrayidx29 = getelementptr inbounds i32* %0, i64 %idxprom28, !dbg !593
  %11 = bitcast i32* %arrayidx29 to i8*, !dbg !593
  %mul31 = shl i32 %sub27, 2, !dbg !593
  tail call void @gmx_rx(i32 %10, i8* %11, i32 %mul31) #6, !dbg !593
  %12 = load i32* %left, align 4, !dbg !598, !tbaa !315
  tail call void @gmx_tx_wait(i32 %12) #6, !dbg !598
  %13 = load i32* %right, align 4, !dbg !599, !tbaa !315
  tail call void @gmx_rx_wait(i32 %13) #6, !dbg !599
  %14 = load i32* %nnodes, align 4, !dbg !600, !tbaa !315
  %rem37 = srem i32 %add, %14, !dbg !600
  tail call void @llvm.dbg.value(metadata !{i32 %rem37}, i64 0, metadata !271), !dbg !600
  %inc = add nsw i32 %i.065, 1, !dbg !589
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !268), !dbg !589
  %sub = add nsw i32 %14, -1, !dbg !589
  %cmp = icmp slt i32 %inc, %sub, !dbg !589
  br i1 %cmp, label %for.body, label %for.end, !dbg !589

for.end:                                          ; preds = %cond.end20, %entry
  ret void, !dbg !601
}

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #2

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #2

; Function Attrs: optsize
declare void @gmx_tx_wait(i32) #2

; Function Attrs: optsize
declare void @gmx_rx_wait(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !101, metadata !106, metadata !115, metadata !125, metadata !138, metadata !160, metadata !173, metadata !193, metadata !221, metadata !233, metadata !248, metadata !273, metadata !283, metadata !297}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"init_grid", metadata !"init_grid", metadata !"", i32 57, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_grid*, i32, [3 x float]*, float, i32)* @init_grid, null, null, metadata !90, i32 59} ; [ DW_TAG_subprogram ] [line 57] [def] [scope 59] [init_grid]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !66, metadata !14, metadata !84, metadata !86, metadata !14}
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
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grid]
!67 = metadata !{i32 786454, metadata !1, null, metadata !"t_grid", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [t_grid] [line 49, size 0, align 0, offset 0] [from ]
!68 = metadata !{i32 786451, metadata !69, null, metadata !"", i32 36, i64 512, i64 64, i32 0, i32 0, null, metadata !70, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 512, align 64, offset 0] [from ]
!69 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nsgrid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !81, metadata !82, metadata !83}
!71 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"nr", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nr] [line 37, size 32, align 32, offset 0] [from int]
!72 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"nrx", i32 38, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nrx] [line 38, size 32, align 32, offset 32] [from int]
!73 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"nry", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nry] [line 38, size 32, align 32, offset 64] [from int]
!74 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"nrz", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nrz] [line 38, size 32, align 32, offset 96] [from int]
!75 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"ncells", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [ncells] [line 39, size 32, align 32, offset 128] [from int]
!76 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"maxcells", i32 40, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [maxcells] [line 40, size 32, align 32, offset 160] [from int]
!77 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"delta", i32 41, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [delta] [line 41, size 32, align 32, offset 192] [from int]
!78 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"gmax", i32 42, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [gmax] [line 42, size 32, align 32, offset 224] [from int]
!79 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"cell_index", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !80} ; [ DW_TAG_member ] [cell_index] [line 43, size 64, align 64, offset 256] [from ]
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!81 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"index", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !80} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 320] [from ]
!82 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"nra", i32 47, i64 64, i64 64, i64 384, i32 0, metadata !80} ; [ DW_TAG_member ] [nra] [line 47, size 64, align 64, offset 384] [from ]
!83 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"a", i32 48, i64 64, i64 64, i64 448, i32 0, metadata !80} ; [ DW_TAG_member ] [a] [line 48, size 64, align 64, offset 448] [from ]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!85 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !86, metadata !88, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!86 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!87 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!91 = metadata !{i32 786689, metadata !4, metadata !"log", metadata !5, i32 16777273, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 57]
!92 = metadata !{i32 786689, metadata !4, metadata !"grid", metadata !5, i32 33554489, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 57]
!93 = metadata !{i32 786689, metadata !4, metadata !"delta", metadata !5, i32 50331705, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [delta] [line 57]
!94 = metadata !{i32 786689, metadata !4, metadata !"box", metadata !5, i32 67108921, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 57]
!95 = metadata !{i32 786689, metadata !4, metadata !"rlistlong", metadata !5, i32 83886138, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rlistlong] [line 58]
!96 = metadata !{i32 786689, metadata !4, metadata !"ncg", metadata !5, i32 100663354, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncg] [line 58]
!97 = metadata !{i32 786688, metadata !4, metadata !"m", metadata !5, i32 60, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 60]
!98 = metadata !{i32 786688, metadata !4, metadata !"cx", metadata !5, i32 61, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cx] [line 61]
!99 = metadata !{i32 786454, metadata !1, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!100 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !14, metadata !88, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!101 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"done_grid", metadata !"done_grid", metadata !"", i32 87, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_grid*)* @done_grid, null, null, metadata !104, i32 88} ; [ DW_TAG_subprogram ] [line 87] [def] [scope 88] [done_grid]
!102 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!103 = metadata !{null, metadata !66}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 786689, metadata !101, metadata !"grid", metadata !5, i32 16777303, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 87]
!106 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"xyz2ci_", metadata !"xyz2ci_", metadata !"", i32 106, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32, i32, i32)* @xyz2ci_, null, null, metadata !109, i32 108} ; [ DW_TAG_subprogram ] [line 106] [def] [scope 108] [xyz2ci_]
!107 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14}
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113, metadata !114}
!110 = metadata !{i32 786689, metadata !106, metadata !"nry", metadata !5, i32 16777322, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nry] [line 106]
!111 = metadata !{i32 786689, metadata !106, metadata !"nrz", metadata !5, i32 33554538, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrz] [line 106]
!112 = metadata !{i32 786689, metadata !106, metadata !"x", metadata !5, i32 50331754, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 106]
!113 = metadata !{i32 786689, metadata !106, metadata !"y", metadata !5, i32 67108970, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 106]
!114 = metadata !{i32 786689, metadata !106, metadata !"z", metadata !5, i32 83886186, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 106]
!115 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ci2xyz", metadata !"ci2xyz", metadata !"", i32 112, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_grid*, i32, i32*, i32*, i32*)* @ci2xyz, null, null, metadata !118, i32 114} ; [ DW_TAG_subprogram ] [line 112] [def] [scope 114] [ci2xyz]
!116 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!117 = metadata !{null, metadata !66, metadata !14, metadata !80, metadata !80, metadata !80}
!118 = metadata !{metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!119 = metadata !{i32 786689, metadata !115, metadata !"grid", metadata !5, i32 16777328, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 112]
!120 = metadata !{i32 786689, metadata !115, metadata !"i", metadata !5, i32 33554544, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 112]
!121 = metadata !{i32 786689, metadata !115, metadata !"x", metadata !5, i32 50331760, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 112]
!122 = metadata !{i32 786689, metadata !115, metadata !"y", metadata !5, i32 67108976, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 112]
!123 = metadata !{i32 786689, metadata !115, metadata !"z", metadata !5, i32 83886192, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 112]
!124 = metadata !{i32 786688, metadata !115, metadata !"ci", metadata !5, i32 115, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 115]
!125 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"grid_first", metadata !"grid_first", metadata !"", i32 129, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_grid*, [3 x float]*, float)* @grid_first, null, null, metadata !128, i32 130} ; [ DW_TAG_subprogram ] [line 129] [def] [scope 130] [grid_first]
!126 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!127 = metadata !{null, metadata !8, metadata !66, metadata !84, metadata !86}
!128 = metadata !{metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137}
!129 = metadata !{i32 786689, metadata !125, metadata !"log", metadata !5, i32 16777345, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 129]
!130 = metadata !{i32 786689, metadata !125, metadata !"grid", metadata !5, i32 33554561, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 129]
!131 = metadata !{i32 786689, metadata !125, metadata !"box", metadata !5, i32 50331777, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 129]
!132 = metadata !{i32 786689, metadata !125, metadata !"rlistlong", metadata !5, i32 67108993, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rlistlong] [line 129]
!133 = metadata !{i32 786688, metadata !125, metadata !"nra", metadata !5, i32 131, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nra] [line 131]
!134 = metadata !{i32 786688, metadata !125, metadata !"i", metadata !5, i32 132, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 132]
!135 = metadata !{i32 786688, metadata !125, metadata !"k", metadata !5, i32 132, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 132]
!136 = metadata !{i32 786688, metadata !125, metadata !"ncells", metadata !5, i32 132, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncells] [line 132]
!137 = metadata !{i32 786688, metadata !125, metadata !"cx", metadata !5, i32 133, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cx] [line 133]
!138 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_elemnr", metadata !"calc_elemnr", metadata !"", i32 203, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32*, %struct.t_grid*, i32, i32, i32)* @calc_elemnr, null, null, metadata !141, i32 205} ; [ DW_TAG_subprogram ] [line 203] [def] [scope 205] [calc_elemnr]
!139 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{null, metadata !8, metadata !14, metadata !80, metadata !66, metadata !14, metadata !14, metadata !14}
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159}
!142 = metadata !{i32 786689, metadata !138, metadata !"log", metadata !5, i32 16777419, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 203]
!143 = metadata !{i32 786689, metadata !138, metadata !"bDD", metadata !5, i32 33554635, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bDD] [line 203]
!144 = metadata !{i32 786689, metadata !138, metadata !"cg_index", metadata !5, i32 50331851, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg_index] [line 203]
!145 = metadata !{i32 786689, metadata !138, metadata !"grid", metadata !5, i32 67109068, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 204]
!146 = metadata !{i32 786689, metadata !138, metadata !"cg0", metadata !5, i32 83886284, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg0] [line 204]
!147 = metadata !{i32 786689, metadata !138, metadata !"cg1", metadata !5, i32 100663500, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg1] [line 204]
!148 = metadata !{i32 786689, metadata !138, metadata !"ncg", metadata !5, i32 117440716, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncg] [line 204]
!149 = metadata !{i32 786688, metadata !138, metadata !"CG0", metadata !5, i32 206, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CG0] [line 206]
!150 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !14, metadata !151, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!151 = metadata !{metadata !152}
!152 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!153 = metadata !{i32 786688, metadata !138, metadata !"CG1", metadata !5, i32 206, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CG1] [line 206]
!154 = metadata !{i32 786688, metadata !138, metadata !"cell_index", metadata !5, i32 207, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cell_index] [line 207]
!155 = metadata !{i32 786688, metadata !138, metadata !"nra", metadata !5, i32 208, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nra] [line 208]
!156 = metadata !{i32 786688, metadata !138, metadata !"i", metadata !5, i32 209, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 209]
!157 = metadata !{i32 786688, metadata !138, metadata !"m", metadata !5, i32 209, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 209]
!158 = metadata !{i32 786688, metadata !138, metadata !"ncells", metadata !5, i32 209, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncells] [line 209]
!159 = metadata !{i32 786688, metadata !138, metadata !"ci", metadata !5, i32 210, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 210]
!160 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_ptrs", metadata !"calc_ptrs", metadata !"", i32 222, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_grid*)* @calc_ptrs, null, null, metadata !161, i32 223} ; [ DW_TAG_subprogram ] [line 222] [def] [scope 223] [calc_ptrs]
!161 = metadata !{metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172}
!162 = metadata !{i32 786689, metadata !160, metadata !"grid", metadata !5, i32 16777438, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 222]
!163 = metadata !{i32 786688, metadata !160, metadata !"index", metadata !5, i32 224, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 224]
!164 = metadata !{i32 786688, metadata !160, metadata !"nra", metadata !5, i32 225, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nra] [line 225]
!165 = metadata !{i32 786688, metadata !160, metadata !"ix", metadata !5, i32 226, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 226]
!166 = metadata !{i32 786688, metadata !160, metadata !"iy", metadata !5, i32 226, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 226]
!167 = metadata !{i32 786688, metadata !160, metadata !"iz", metadata !5, i32 226, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iz] [line 226]
!168 = metadata !{i32 786688, metadata !160, metadata !"ci", metadata !5, i32 226, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 226]
!169 = metadata !{i32 786688, metadata !160, metadata !"nr", metadata !5, i32 226, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nr] [line 226]
!170 = metadata !{i32 786688, metadata !160, metadata !"nnra", metadata !5, i32 227, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnra] [line 227]
!171 = metadata !{i32 786688, metadata !160, metadata !"ncells", metadata !5, i32 227, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncells] [line 227]
!172 = metadata !{i32 786688, metadata !160, metadata !"gmax", metadata !5, i32 228, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gmax] [line 228]
!173 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"grid_last", metadata !"grid_last", metadata !"", i32 245, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32*, %struct.t_grid*, i32, i32, i32)* @grid_last, null, null, metadata !174, i32 247} ; [ DW_TAG_subprogram ] [line 245] [def] [scope 247] [grid_last]
!174 = metadata !{metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192}
!175 = metadata !{i32 786689, metadata !173, metadata !"log", metadata !5, i32 16777461, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 245]
!176 = metadata !{i32 786689, metadata !173, metadata !"bDD", metadata !5, i32 33554677, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bDD] [line 245]
!177 = metadata !{i32 786689, metadata !173, metadata !"cg_index", metadata !5, i32 50331893, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg_index] [line 245]
!178 = metadata !{i32 786689, metadata !173, metadata !"grid", metadata !5, i32 67109110, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 246]
!179 = metadata !{i32 786689, metadata !173, metadata !"cg0", metadata !5, i32 83886326, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg0] [line 246]
!180 = metadata !{i32 786689, metadata !173, metadata !"cg1", metadata !5, i32 100663542, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg1] [line 246]
!181 = metadata !{i32 786689, metadata !173, metadata !"ncg", metadata !5, i32 117440758, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncg] [line 246]
!182 = metadata !{i32 786688, metadata !173, metadata !"CG0", metadata !5, i32 248, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CG0] [line 248]
!183 = metadata !{i32 786688, metadata !173, metadata !"CG1", metadata !5, i32 248, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CG1] [line 248]
!184 = metadata !{i32 786688, metadata !173, metadata !"i", metadata !5, i32 249, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 249]
!185 = metadata !{i32 786688, metadata !173, metadata !"m", metadata !5, i32 249, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 249]
!186 = metadata !{i32 786688, metadata !173, metadata !"ci", metadata !5, i32 250, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 250]
!187 = metadata !{i32 786688, metadata !173, metadata !"ind", metadata !5, i32 250, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ind] [line 250]
!188 = metadata !{i32 786688, metadata !173, metadata !"ncells", metadata !5, i32 250, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncells] [line 250]
!189 = metadata !{i32 786688, metadata !173, metadata !"cell_index", metadata !5, i32 251, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cell_index] [line 251]
!190 = metadata !{i32 786688, metadata !173, metadata !"nra", metadata !5, i32 252, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nra] [line 252]
!191 = metadata !{i32 786688, metadata !173, metadata !"index", metadata !5, i32 253, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 253]
!192 = metadata !{i32 786688, metadata !173, metadata !"a", metadata !5, i32 254, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 254]
!193 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fill_grid", metadata !"fill_grid", metadata !"", i32 268, metadata !194, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32*, %struct.t_grid*, [3 x float]*, i32, i32, i32, [3 x float]*)* @fill_grid, null, null, metadata !198, i32 271} ; [ DW_TAG_subprogram ] [line 268] [def] [scope 271] [fill_grid]
!194 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!195 = metadata !{null, metadata !8, metadata !14, metadata !80, metadata !66, metadata !84, metadata !14, metadata !14, metadata !14, metadata !196}
!196 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !197} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!197 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!198 = metadata !{metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220}
!199 = metadata !{i32 786689, metadata !193, metadata !"log", metadata !5, i32 16777484, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 268]
!200 = metadata !{i32 786689, metadata !193, metadata !"bDD", metadata !5, i32 33554700, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bDD] [line 268]
!201 = metadata !{i32 786689, metadata !193, metadata !"cg_index", metadata !5, i32 50331916, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg_index] [line 268]
!202 = metadata !{i32 786689, metadata !193, metadata !"grid", metadata !5, i32 67109133, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 269]
!203 = metadata !{i32 786689, metadata !193, metadata !"box", metadata !5, i32 83886349, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 269]
!204 = metadata !{i32 786689, metadata !193, metadata !"ncg", metadata !5, i32 100663566, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncg] [line 270]
!205 = metadata !{i32 786689, metadata !193, metadata !"cg0", metadata !5, i32 117440782, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg0] [line 270]
!206 = metadata !{i32 786689, metadata !193, metadata !"cg1", metadata !5, i32 134217998, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg1] [line 270]
!207 = metadata !{i32 786689, metadata !193, metadata !"cg_cm", metadata !5, i32 150995214, metadata !196, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg_cm] [line 270]
!208 = metadata !{i32 786688, metadata !193, metadata !"cell_index", metadata !5, i32 272, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cell_index] [line 272]
!209 = metadata !{i32 786688, metadata !193, metadata !"nrx", metadata !5, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrx] [line 273]
!210 = metadata !{i32 786688, metadata !193, metadata !"nry", metadata !5, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nry] [line 273]
!211 = metadata !{i32 786688, metadata !193, metadata !"nrz", metadata !5, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrz] [line 273]
!212 = metadata !{i32 786688, metadata !193, metadata !"dx", metadata !5, i32 274, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 274]
!213 = metadata !{i32 786688, metadata !193, metadata !"dy", metadata !5, i32 274, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 274]
!214 = metadata !{i32 786688, metadata !193, metadata !"dz", metadata !5, i32 274, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 274]
!215 = metadata !{i32 786688, metadata !193, metadata !"i", metadata !5, i32 275, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 275]
!216 = metadata !{i32 786688, metadata !193, metadata !"index", metadata !5, i32 275, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 275]
!217 = metadata !{i32 786688, metadata !193, metadata !"ix", metadata !5, i32 275, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 275]
!218 = metadata !{i32 786688, metadata !193, metadata !"iy", metadata !5, i32 275, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 275]
!219 = metadata !{i32 786688, metadata !193, metadata !"iz", metadata !5, i32 275, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iz] [line 275]
!220 = metadata !{i32 786688, metadata !193, metadata !"ci", metadata !5, i32 276, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 276]
!221 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"check_grid", metadata !"check_grid", metadata !"", i32 324, metadata !222, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_grid*)* @check_grid, null, null, metadata !224, i32 325} ; [ DW_TAG_subprogram ] [line 324] [def] [scope 325] [check_grid]
!222 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!223 = metadata !{null, metadata !8, metadata !66}
!224 = metadata !{metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232}
!225 = metadata !{i32 786689, metadata !221, metadata !"log", metadata !5, i32 16777540, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 324]
!226 = metadata !{i32 786689, metadata !221, metadata !"grid", metadata !5, i32 33554756, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 324]
!227 = metadata !{i32 786688, metadata !221, metadata !"ix", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 326]
!228 = metadata !{i32 786688, metadata !221, metadata !"iy", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 326]
!229 = metadata !{i32 786688, metadata !221, metadata !"iz", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iz] [line 326]
!230 = metadata !{i32 786688, metadata !221, metadata !"ci", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 326]
!231 = metadata !{i32 786688, metadata !221, metadata !"cci", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cci] [line 326]
!232 = metadata !{i32 786688, metadata !221, metadata !"nra", metadata !5, i32 326, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nra] [line 326]
!233 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"print_grid", metadata !"print_grid", metadata !"", i32 347, metadata !234, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_grid*, i32, i32*)* @print_grid, null, null, metadata !236, i32 348} ; [ DW_TAG_subprogram ] [line 347] [def] [scope 348] [print_grid]
!234 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!235 = metadata !{null, metadata !8, metadata !66, metadata !14, metadata !80}
!236 = metadata !{metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247}
!237 = metadata !{i32 786689, metadata !233, metadata !"log", metadata !5, i32 16777563, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 347]
!238 = metadata !{i32 786689, metadata !233, metadata !"grid", metadata !5, i32 33554779, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 347]
!239 = metadata !{i32 786689, metadata !233, metadata !"bDD", metadata !5, i32 50331995, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bDD] [line 347]
!240 = metadata !{i32 786689, metadata !233, metadata !"cg_index", metadata !5, i32 67109211, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg_index] [line 347]
!241 = metadata !{i32 786688, metadata !233, metadata !"i", metadata !5, i32 349, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 349]
!242 = metadata !{i32 786688, metadata !233, metadata !"nra", metadata !5, i32 349, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nra] [line 349]
!243 = metadata !{i32 786688, metadata !233, metadata !"index", metadata !5, i32 349, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 349]
!244 = metadata !{i32 786688, metadata !233, metadata !"ix", metadata !5, i32 350, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 350]
!245 = metadata !{i32 786688, metadata !233, metadata !"iy", metadata !5, i32 350, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 350]
!246 = metadata !{i32 786688, metadata !233, metadata !"iz", metadata !5, i32 350, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iz] [line 350]
!247 = metadata !{i32 786688, metadata !233, metadata !"ci", metadata !5, i32 350, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 350]
!248 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mv_grid", metadata !"mv_grid", metadata !"", i32 385, metadata !249, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_commrec*, i32, i32*, %struct.t_grid*, i32*)* @mv_grid, null, null, metadata !262, i32 387} ; [ DW_TAG_subprogram ] [line 385] [def] [scope 387] [mv_grid]
!249 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!250 = metadata !{null, metadata !251, metadata !14, metadata !80, metadata !66, metadata !80}
!251 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !252} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!252 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !253} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!253 = metadata !{i32 786451, metadata !254, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !255, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!254 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!255 = metadata !{metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261}
!256 = metadata !{i32 786445, metadata !254, metadata !253, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!257 = metadata !{i32 786445, metadata !254, metadata !253, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!258 = metadata !{i32 786445, metadata !254, metadata !253, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!259 = metadata !{i32 786445, metadata !254, metadata !253, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!260 = metadata !{i32 786445, metadata !254, metadata !253, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!261 = metadata !{i32 786445, metadata !254, metadata !253, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!262 = metadata !{metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272}
!263 = metadata !{i32 786689, metadata !248, metadata !"cr", metadata !5, i32 16777601, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 385]
!264 = metadata !{i32 786689, metadata !248, metadata !"bDD", metadata !5, i32 33554817, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bDD] [line 385]
!265 = metadata !{i32 786689, metadata !248, metadata !"cg_index", metadata !5, i32 50332033, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg_index] [line 385]
!266 = metadata !{i32 786689, metadata !248, metadata !"grid", metadata !5, i32 67109250, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 386]
!267 = metadata !{i32 786689, metadata !248, metadata !"cgload", metadata !5, i32 83886466, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cgload] [line 386]
!268 = metadata !{i32 786688, metadata !248, metadata !"i", metadata !5, i32 388, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 388]
!269 = metadata !{i32 786688, metadata !248, metadata !"start", metadata !5, i32 388, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 388]
!270 = metadata !{i32 786688, metadata !248, metadata !"nr", metadata !5, i32 388, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nr] [line 388]
!271 = metadata !{i32 786688, metadata !248, metadata !"cur", metadata !5, i32 389, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cur] [line 389]
!272 = metadata !{i32 786688, metadata !248, metadata !"ci", metadata !5, i32 390, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 390]
!273 = metadata !{i32 786478, metadata !274, metadata !275, metadata !"_divide", metadata !"_divide", metadata !"", i32 580, metadata !276, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !278, i32 581} ; [ DW_TAG_subprogram ] [line 580] [local] [def] [scope 581] [_divide]
!274 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!275 = metadata !{i32 786473, metadata !274}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!276 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!277 = metadata !{metadata !86, metadata !86, metadata !86, metadata !16, metadata !14}
!278 = metadata !{metadata !279, metadata !280, metadata !281, metadata !282}
!279 = metadata !{i32 786689, metadata !273, metadata !"a", metadata !275, i32 16777796, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 580]
!280 = metadata !{i32 786689, metadata !273, metadata !"b", metadata !275, i32 33555012, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 580]
!281 = metadata !{i32 786689, metadata !273, metadata !"file", metadata !275, i32 50332228, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 580]
!282 = metadata !{i32 786689, metadata !273, metadata !"line", metadata !275, i32 67109444, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 580]
!283 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_bor", metadata !"calc_bor", metadata !"", i32 167, metadata !284, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, i32, i32, i32*, i32*)* @calc_bor, null, null, metadata !286, i32 169} ; [ DW_TAG_subprogram ] [line 167] [local] [def] [scope 169] [calc_bor]
!284 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!285 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !14, metadata !14, metadata !80, metadata !80}
!286 = metadata !{metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294}
!287 = metadata !{i32 786689, metadata !283, metadata !"log", metadata !5, i32 16777383, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 167]
!288 = metadata !{i32 786689, metadata !283, metadata !"bDD", metadata !5, i32 33554599, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bDD] [line 167]
!289 = metadata !{i32 786689, metadata !283, metadata !"cg0", metadata !5, i32 50331816, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg0] [line 168]
!290 = metadata !{i32 786689, metadata !283, metadata !"cg1", metadata !5, i32 67109032, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cg1] [line 168]
!291 = metadata !{i32 786689, metadata !283, metadata !"ncg", metadata !5, i32 83886248, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncg] [line 168]
!292 = metadata !{i32 786689, metadata !283, metadata !"CG0", metadata !5, i32 100663464, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [CG0] [line 168]
!293 = metadata !{i32 786689, metadata !283, metadata !"CG1", metadata !5, i32 117440680, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [CG1] [line 168]
!294 = metadata !{i32 786688, metadata !295, metadata !"m", metadata !5, i32 191, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 191]
!295 = metadata !{i32 786443, metadata !1, metadata !296, i32 190, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!296 = metadata !{i32 786443, metadata !1, metadata !283} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!297 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_range_check", metadata !"_range_check", metadata !"", i32 49, metadata !298, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i32, i32)* @_range_check, null, null, metadata !300, i32 50} ; [ DW_TAG_subprogram ] [line 49] [local] [def] [scope 50] [_range_check]
!298 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !299, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!299 = metadata !{null, metadata !16, metadata !14, metadata !14, metadata !16, metadata !14}
!300 = metadata !{metadata !301, metadata !302, metadata !303, metadata !304, metadata !305}
!301 = metadata !{i32 786689, metadata !297, metadata !"s", metadata !5, i32 16777265, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 49]
!302 = metadata !{i32 786689, metadata !297, metadata !"i", metadata !5, i32 33554481, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 49]
!303 = metadata !{i32 786689, metadata !297, metadata !"nr", metadata !5, i32 50331697, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 49]
!304 = metadata !{i32 786689, metadata !297, metadata !"file", metadata !5, i32 67108913, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 49]
!305 = metadata !{i32 786689, metadata !297, metadata !"line", metadata !5, i32 83886129, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 49]
!306 = metadata !{i32 57, i32 0, metadata !4, null}
!307 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!308 = metadata !{i32 61, i32 0, metadata !4, null}
!309 = metadata !{i32 63, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !4, i32 63, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!311 = metadata !{i32 64, i32 0, metadata !310, null}
!312 = metadata !{metadata !"float", metadata !313}
!313 = metadata !{metadata !"omnipotent char", metadata !314}
!314 = metadata !{metadata !"Simple C/C++ TBAA"}
!315 = metadata !{metadata !"int", metadata !313}
!316 = metadata !{i32 66, i32 0, metadata !4, null}
!317 = metadata !{i32 67, i32 0, metadata !4, null}
!318 = metadata !{i32 68, i32 0, metadata !4, null}
!319 = metadata !{i32 69, i32 0, metadata !4, null}
!320 = metadata !{i32 70, i32 0, metadata !4, null}
!321 = metadata !{i32 71, i32 0, metadata !4, null}
!322 = metadata !{i32 72, i32 0, metadata !4, null}
!323 = metadata !{i32 73, i32 0, metadata !4, null}
!324 = metadata !{i32 74, i32 0, metadata !4, null}
!325 = metadata !{metadata !"any pointer", metadata !313}
!326 = metadata !{i32 75, i32 0, metadata !4, null}
!327 = metadata !{i32 76, i32 0, metadata !4, null}
!328 = metadata !{i32 77, i32 0, metadata !4, null}
!329 = metadata !{i32 79, i32 0, metadata !4, null}
!330 = metadata !{i32 80, i32 0, metadata !4, null}
!331 = metadata !{i32 83, i32 0, metadata !4, null}
!332 = metadata !{i32 84, i32 0, metadata !4, null}
!333 = metadata !{i32 85, i32 0, metadata !4, null}
!334 = metadata !{i32 87, i32 0, metadata !101, null}
!335 = metadata !{i32 97, i32 0, metadata !101, null}
!336 = metadata !{i32 90, i32 0, metadata !101, null}
!337 = metadata !{i32 98, i32 0, metadata !101, null}
!338 = metadata !{i32 99, i32 0, metadata !101, null}
!339 = metadata !{i32 100, i32 0, metadata !101, null}
!340 = metadata !{i32 102, i32 0, metadata !101, null}
!341 = metadata !{i32 103, i32 0, metadata !101, null}
!342 = metadata !{i32 104, i32 0, metadata !101, null}
!343 = metadata !{i32 106, i32 0, metadata !106, null}
!344 = metadata !{i32 109, i32 0, metadata !106, null}
!345 = metadata !{i32 112, i32 0, metadata !115, null}
!346 = metadata !{i32 117, i32 0, metadata !115, null}
!347 = metadata !{i32 119, i32 0, metadata !115, null}
!348 = metadata !{i32 120, i32 0, metadata !115, null}
!349 = metadata !{i32 121, i32 0, metadata !115, null}
!350 = metadata !{i32 122, i32 0, metadata !115, null}
!351 = metadata !{i32 123, i32 0, metadata !115, null}
!352 = metadata !{i32 124, i32 0, metadata !115, null}
!353 = metadata !{i32 125, i32 0, metadata !115, null}
!354 = metadata !{i32 126, i32 0, metadata !115, null}
!355 = metadata !{i32 127, i32 0, metadata !115, null}
!356 = metadata !{null}
!357 = metadata !{i32 49, i32 0, metadata !297, null}
!358 = metadata !{i32 51, i32 0, metadata !297, null}
!359 = metadata !{i32 52, i32 0, metadata !297, null}
!360 = metadata !{i32 54, i32 0, metadata !297, null}
!361 = metadata !{i32 129, i32 0, metadata !125, null}
!362 = metadata !{i32 131, i32 0, metadata !125, null}
!363 = metadata !{i32 133, i32 0, metadata !125, null}
!364 = metadata !{i32 135, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !125, i32 135, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!366 = metadata !{i32 136, i32 0, metadata !365, null}
!367 = metadata !{i32 138, i32 0, metadata !125, null}
!368 = metadata !{i32 139, i32 0, metadata !125, null}
!369 = metadata !{i32 140, i32 0, metadata !125, null}
!370 = metadata !{i32 141, i32 0, metadata !125, null}
!371 = metadata !{i32 143, i32 0, metadata !125, null}
!372 = metadata !{i32 144, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !125, i32 143, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!374 = metadata !{i32 145, i32 0, metadata !373, null}
!375 = metadata !{i32 147, i32 0, metadata !373, null}
!376 = metadata !{i32 148, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !373, i32 147, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!378 = metadata !{i32 149, i32 0, metadata !377, null}
!379 = metadata !{i32 150, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !377, i32 150, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!381 = metadata !{i32 151, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !1, metadata !380, i32 150, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!383 = metadata !{i32 152, i32 0, metadata !382, null}
!384 = metadata !{i32 155, i32 0, metadata !377, null}
!385 = metadata !{i32 156, i32 0, metadata !377, null}
!386 = metadata !{i32 157, i32 0, metadata !377, null}
!387 = metadata !{i32 158, i32 0, metadata !377, null}
!388 = metadata !{i32 159, i32 0, metadata !373, null}
!389 = metadata !{i32 160, i32 0, metadata !373, null}
!390 = metadata !{i32 161, i32 0, metadata !373, null}
!391 = metadata !{i32 163, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !125, i32 163, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!393 = metadata !{i32 164, i32 0, metadata !392, null}
!394 = metadata !{i32 165, i32 0, metadata !125, null}
!395 = metadata !{i32 203, i32 0, metadata !138, null}
!396 = metadata !{i32 204, i32 0, metadata !138, null}
!397 = metadata !{i32 206, i32 0, metadata !138, null}
!398 = metadata !{i32 207, i32 0, metadata !138, null}
!399 = metadata !{i32 208, i32 0, metadata !138, null}
!400 = metadata !{i32 212, i32 0, metadata !138, null}
!401 = metadata !{i32 213, i32 0, metadata !138, null}
!402 = metadata !{i32 214, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !138, i32 214, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!404 = metadata !{i32 215, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !403, i32 215, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!406 = metadata !{i32 216, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !405, i32 215, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!408 = metadata !{i32 217, i32 0, metadata !407, null}
!409 = metadata !{i32 218, i32 0, metadata !407, null}
!410 = metadata !{i32 220, i32 0, metadata !138, null}
!411 = metadata !{i32 167, i32 0, metadata !283, null}
!412 = metadata !{i32 168, i32 0, metadata !283, null}
!413 = metadata !{i32 170, i32 0, metadata !296, null}
!414 = metadata !{i32 171, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !296, i32 170, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!416 = metadata !{i32 172, i32 0, metadata !415, null}
!417 = metadata !{i32 173, i32 0, metadata !415, null}
!418 = metadata !{i32 174, i32 0, metadata !415, null}
!419 = metadata !{i32 175, i32 0, metadata !415, null}
!420 = metadata !{i32 177, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !296, i32 176, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!422 = metadata !{i32 178, i32 0, metadata !423, null}
!423 = metadata !{i32 786443, metadata !1, metadata !421, i32 177, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!424 = metadata !{i32 179, i32 0, metadata !423, null}
!425 = metadata !{i32 180, i32 0, metadata !423, null}
!426 = metadata !{i32 181, i32 0, metadata !423, null}
!427 = metadata !{i32 182, i32 0, metadata !423, null}
!428 = metadata !{i32 185, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !1, metadata !421, i32 183, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!430 = metadata !{i32 186, i32 0, metadata !429, null}
!431 = metadata !{i32 187, i32 0, metadata !429, null}
!432 = metadata !{i32 190, i32 0, metadata !296, null}
!433 = metadata !{i32 193, i32 0, metadata !295, null}
!434 = metadata !{i32 195, i32 0, metadata !435, null}
!435 = metadata !{i32 786443, metadata !1, metadata !295, i32 194, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!436 = metadata !{i32 196, i32 0, metadata !437, null}
!437 = metadata !{i32 786443, metadata !1, metadata !435, i32 196, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!438 = metadata !{i32 197, i32 0, metadata !437, null}
!439 = metadata !{i32 201, i32 0, metadata !296, null}
!440 = metadata !{i32 222, i32 0, metadata !160, null}
!441 = metadata !{i32 224, i32 0, metadata !160, null}
!442 = metadata !{i32 225, i32 0, metadata !160, null}
!443 = metadata !{i32 228, i32 0, metadata !160, null}
!444 = metadata !{i32 230, i32 0, metadata !160, null}
!445 = metadata !{i32 231, i32 0, metadata !160, null}
!446 = metadata !{i32 232, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !160, i32 232, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!448 = metadata !{i32 233, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !447, i32 233, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!450 = metadata !{i32 234, i32 0, metadata !451, null}
!451 = metadata !{i32 786443, metadata !1, metadata !449, i32 234, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!452 = metadata !{i32 235, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !451, i32 234, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!454 = metadata !{i32 236, i32 0, metadata !453, null}
!455 = metadata !{i32 237, i32 0, metadata !453, null}
!456 = metadata !{i32 238, i32 0, metadata !453, null}
!457 = metadata !{i32 239, i32 0, metadata !453, null}
!458 = metadata !{i32 240, i32 0, metadata !453, null}
!459 = metadata !{i32 242, i32 0, metadata !160, null}
!460 = metadata !{i32 243, i32 0, metadata !160, null}
!461 = metadata !{i32 245, i32 0, metadata !173, null}
!462 = metadata !{i32 246, i32 0, metadata !173, null}
!463 = metadata !{i32 248, i32 0, metadata !173, null}
!464 = metadata !{i32 251, i32 0, metadata !173, null}
!465 = metadata !{i32 252, i32 0, metadata !173, null}
!466 = metadata !{i32 253, i32 0, metadata !173, null}
!467 = metadata !{i32 254, i32 0, metadata !173, null}
!468 = metadata !{i32 256, i32 0, metadata !173, null}
!469 = metadata !{i32 257, i32 0, metadata !173, null}
!470 = metadata !{i32 258, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !173, i32 258, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!472 = metadata !{i32 263, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !474, i32 259, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!474 = metadata !{i32 786443, metadata !1, metadata !471, i32 259, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!475 = metadata !{i32 259, i32 0, metadata !474, null}
!476 = metadata !{i32 260, i32 0, metadata !473, null}
!477 = metadata !{i32 261, i32 0, metadata !473, null}
!478 = metadata !{i32 262, i32 0, metadata !473, null}
!479 = metadata !{i32 264, i32 0, metadata !473, null}
!480 = metadata !{i32 266, i32 0, metadata !173, null}
!481 = metadata !{i32 268, i32 0, metadata !193, null}
!482 = metadata !{i32 269, i32 0, metadata !193, null}
!483 = metadata !{i32 270, i32 0, metadata !193, null}
!484 = metadata !{i32 272, i32 0, metadata !193, null}
!485 = metadata !{i32 279, i32 0, metadata !193, null}
!486 = metadata !{i32 280, i32 0, metadata !193, null}
!487 = metadata !{i32 281, i32 0, metadata !193, null}
!488 = metadata !{i32 282, i32 0, metadata !193, null}
!489 = metadata !{i32 786689, metadata !273, metadata !"file", metadata !275, i32 50332228, metadata !16, i32 0, metadata !488} ; [ DW_TAG_arg_variable ] [file] [line 580]
!490 = metadata !{i32 580, i32 0, metadata !273, metadata !488}
!491 = metadata !{i32 582, i32 0, metadata !492, metadata !488}
!492 = metadata !{i32 786443, metadata !274, metadata !273} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!493 = metadata !{i32 583, i32 0, metadata !492, metadata !488}
!494 = metadata !{i32 584, i32 0, metadata !492, metadata !488}
!495 = metadata !{i32 283, i32 0, metadata !193, null}
!496 = metadata !{i32 786689, metadata !273, metadata !"file", metadata !275, i32 50332228, metadata !16, i32 0, metadata !495} ; [ DW_TAG_arg_variable ] [file] [line 580]
!497 = metadata !{i32 580, i32 0, metadata !273, metadata !495}
!498 = metadata !{i32 582, i32 0, metadata !492, metadata !495}
!499 = metadata !{i32 583, i32 0, metadata !492, metadata !495}
!500 = metadata !{i32 584, i32 0, metadata !492, metadata !495}
!501 = metadata !{i32 284, i32 0, metadata !193, null}
!502 = metadata !{i32 786689, metadata !273, metadata !"file", metadata !275, i32 50332228, metadata !16, i32 0, metadata !501} ; [ DW_TAG_arg_variable ] [file] [line 580]
!503 = metadata !{i32 580, i32 0, metadata !273, metadata !501}
!504 = metadata !{i32 582, i32 0, metadata !492, metadata !501}
!505 = metadata !{i32 583, i32 0, metadata !492, metadata !501}
!506 = metadata !{i32 584, i32 0, metadata !492, metadata !501}
!507 = metadata !{i32 287, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !193, i32 287, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!509 = metadata !{i32 288, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !508, i32 287, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!511 = metadata !{i32 291, i32 0, metadata !193, null}
!512 = metadata !{i32 292, i32 0, metadata !193, null}
!513 = metadata !{i32 300, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !193, i32 300, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!515 = metadata !{i32 305, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !514, i32 300, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!517 = metadata !{i32 306, i32 0, metadata !516, null}
!518 = metadata !{i32 307, i32 0, metadata !516, null}
!519 = metadata !{i32 319, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !193, i32 319, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!521 = metadata !{i32 320, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !520, i32 319, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!523 = metadata !{i32 301, i32 0, metadata !516, null}
!524 = metadata !{i32 302, i32 0, metadata !516, null}
!525 = metadata !{i32 303, i32 0, metadata !516, null}
!526 = metadata !{i32 304, i32 0, metadata !516, null}
!527 = metadata !{i32 315, i32 0, metadata !516, null}
!528 = metadata !{i32 316, i32 0, metadata !516, null}
!529 = metadata !{i32 322, i32 0, metadata !193, null}
!530 = metadata !{i32 324, i32 0, metadata !221, null}
!531 = metadata !{i32 328, i32 0, metadata !221, null}
!532 = metadata !{i32 329, i32 0, metadata !221, null}
!533 = metadata !{i32 330, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !1, metadata !221, i32 330, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!535 = metadata !{i32 331, i32 0, metadata !536, null}
!536 = metadata !{i32 786443, metadata !1, metadata !534, i32 331, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!537 = metadata !{i32 332, i32 0, metadata !538, null}
!538 = metadata !{i32 786443, metadata !1, metadata !536, i32 332, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!539 = metadata !{i32 334, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !541, i32 333, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!541 = metadata !{i32 786443, metadata !1, metadata !538, i32 332, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!542 = metadata !{i32 335, i32 0, metadata !540, null}
!543 = metadata !{i32 340, i32 0, metadata !541, null}
!544 = metadata !{i32 333, i32 0, metadata !541, null}
!545 = metadata !{i32 336, i32 0, metadata !540, null}
!546 = metadata !{i32 339, i32 0, metadata !541, null}
!547 = metadata !{i32 342, i32 0, metadata !541, null}
!548 = metadata !{i32 343, i32 0, metadata !541, null}
!549 = metadata !{i32 345, i32 0, metadata !221, null}
!550 = metadata !{i32 347, i32 0, metadata !233, null}
!551 = metadata !{i32 352, i32 0, metadata !233, null}
!552 = metadata !{i32 354, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !233, i32 353, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!554 = metadata !{i32 355, i32 0, metadata !553, null}
!555 = metadata !{i32 356, i32 0, metadata !553, null}
!556 = metadata !{i32 357, i32 0, metadata !553, null}
!557 = metadata !{i32 358, i32 0, metadata !553, null}
!558 = metadata !{i32 359, i32 0, metadata !553, null}
!559 = metadata !{i32 360, i32 0, metadata !553, null}
!560 = metadata !{i32 361, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !553, i32 361, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!562 = metadata !{i32 362, i32 0, metadata !561, null}
!563 = metadata !{i32 363, i32 0, metadata !553, null}
!564 = metadata !{i32 364, i32 0, metadata !553, null}
!565 = metadata !{i32 365, i32 0, metadata !553, null}
!566 = metadata !{i32 366, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !553, i32 366, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!568 = metadata !{i32 372, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !570, i32 371, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!570 = metadata !{i32 786443, metadata !1, metadata !571, i32 370, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!571 = metadata !{i32 786443, metadata !1, metadata !572, i32 369, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!572 = metadata !{i32 786443, metadata !1, metadata !573, i32 368, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!573 = metadata !{i32 786443, metadata !1, metadata !567, i32 367, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!574 = metadata !{i32 373, i32 0, metadata !569, null}
!575 = metadata !{i32 376, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !1, metadata !569, i32 375, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!577 = metadata !{i32 368, i32 0, metadata !572, null}
!578 = metadata !{i32 370, i32 0, metadata !570, null}
!579 = metadata !{i32 374, i32 0, metadata !569, null}
!580 = metadata !{i32 375, i32 0, metadata !576, null}
!581 = metadata !{i32 377, i32 0, metadata !569, null}
!582 = metadata !{i32 381, i32 0, metadata !553, null}
!583 = metadata !{i32 382, i32 0, metadata !553, null}
!584 = metadata !{i32 383, i32 0, metadata !233, null}
!585 = metadata !{i32 385, i32 0, metadata !248, null}
!586 = metadata !{i32 386, i32 0, metadata !248, null}
!587 = metadata !{i32 389, i32 0, metadata !248, null}
!588 = metadata !{i32 393, i32 0, metadata !248, null}
!589 = metadata !{i32 394, i32 0, metadata !590, null}
!590 = metadata !{i32 786443, metadata !1, metadata !248, i32 394, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!591 = metadata !{i32 397, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !1, metadata !590, i32 394, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsgrid.c]
!593 = metadata !{i32 401, i32 0, metadata !592, null}
!594 = metadata !{i32 395, i32 0, metadata !592, null}
!595 = metadata !{i32 396, i32 0, metadata !592, null}
!596 = metadata !{i32 399, i32 0, metadata !592, null}
!597 = metadata !{i32 400, i32 0, metadata !592, null}
!598 = metadata !{i32 403, i32 0, metadata !592, null}
!599 = metadata !{i32 404, i32 0, metadata !592, null}
!600 = metadata !{i32 406, i32 0, metadata !592, null}
!601 = metadata !{i32 408, i32 0, metadata !248, null}
