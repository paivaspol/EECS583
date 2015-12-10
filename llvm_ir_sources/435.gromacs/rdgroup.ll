; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@.str = private unnamed_addr constant [76 x i8] c"%s atom number (index[%d]=%d) is larger than the number of atoms in %s (%d)\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"the trajectory\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str5 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"b->index\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"*grpname\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"b->a\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str12 = private unnamed_addr constant [46 x i8] c"Something wrong in your indexfile at group %s\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"grpnr\00", align 1
@.str15 = private unnamed_addr constant [24 x i8] c"No index file specified\00", align 1
@.str16 = private unnamed_addr constant [7 x i8] c"gnames\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"grps\00", align 1
@.str18 = private unnamed_addr constant [12 x i8] c"grps->index\00", align 1
@.str19 = private unnamed_addr constant [30 x i8] c"Error: no groups in indexfile\00", align 1
@stderr = external global %struct._IO_FILE*
@.str20 = private unnamed_addr constant [35 x i8] c"Group %5d (%12s) has %5d elements\0A\00", align 1
@.str21 = private unnamed_addr constant [27 x i8] c"Select between %d and %d.\0A\00", align 1
@.str22 = private unnamed_addr constant [33 x i8] c"There is one group in the index\0A\00", align 1
@.str23 = private unnamed_addr constant [9 x i8] c"index[i]\00", align 1
@.str24 = private unnamed_addr constant [17 x i8] c"Select a group: \00", align 1

; Function Attrs: nounwind optsize uwtable
define void @check_index(i8* %gname, i32 %n, i32* nocapture %index, i8* %traj, i32 %natoms) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %gname}, i64 0, metadata !14), !dbg !226
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !15), !dbg !226
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !16), !dbg !226
  tail call void @llvm.dbg.value(metadata !{i8* %traj}, i64 0, metadata !17), !dbg !226
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !18), !dbg !226
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !19), !dbg !227
  %cmp18 = icmp sgt i32 %n, 0, !dbg !227
  br i1 %cmp18, label %for.body.lr.ph, label %for.end, !dbg !227

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp ne i8* %gname, null, !dbg !229
  %cond = select i1 %tobool, i8* %gname, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), !dbg !229
  %tobool5 = icmp ne i8* %traj, null, !dbg !229
  %cond9 = select i1 %tobool5, i8* %traj, i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0), !dbg !229
  br label %for.body, !dbg !227

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.pre, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !230
  %0 = load i32* %arrayidx, align 4, !dbg !230, !tbaa !231
  %cmp1 = icmp slt i32 %0, %natoms, !dbg !230
  %indvars.iv.next.pre = add i64 %indvars.iv, 1, !dbg !227
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.then, !dbg !230

for.body.for.inc_crit_edge:                       ; preds = %for.body
  %lftr.wideiv.pre = trunc i64 %indvars.iv.next.pre to i32, !dbg !227
  br label %for.inc, !dbg !230

if.then:                                          ; preds = %for.body
  %add4 = add nsw i32 %0, 1, !dbg !229
  %1 = trunc i64 %indvars.iv.next.pre to i32, !dbg !229
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* %cond, i32 %1, i32 %add4, i8* %cond9, i32 %natoms) #6, !dbg !229
  br label %for.inc, !dbg !229

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %if.then
  %lftr.wideiv.pre-phi = phi i32 [ %lftr.wideiv.pre, %for.body.for.inc_crit_edge ], [ %1, %if.then ], !dbg !227
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, %n, !dbg !227
  br i1 %exitcond, label %for.end, label %for.body, !dbg !227

for.end:                                          ; preds = %for.inc, %entry
  ret void, !dbg !234
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define %struct.t_block* @init_index(i8* %gfile, i8*** nocapture %grpname) #0 {
entry:
  %a = alloca i32, align 4
  %ng = alloca i32, align 4
  %line = alloca [4096 x i8], align 16
  %str = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %gfile}, i64 0, metadata !39), !dbg !235
  call void @llvm.dbg.value(metadata !{i8*** %grpname}, i64 0, metadata !40), !dbg !235
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !98), !dbg !236
  call void @llvm.dbg.declare(metadata !{i32* %ng}, metadata !102), !dbg !237
  %0 = getelementptr inbounds [4096 x i8]* %line, i64 0, i64 0, !dbg !238
  call void @llvm.lifetime.start(i64 4096, i8* %0) #3, !dbg !238
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %line}, metadata !103), !dbg !238
  %1 = getelementptr inbounds [4096 x i8]* %str, i64 0, i64 0, !dbg !238
  call void @llvm.lifetime.start(i64 4096, i8* %1) #3, !dbg !238
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %str}, metadata !108), !dbg !238
  %call = call %struct._IO_FILE* @ffopen(i8* %gfile, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !239
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !41), !dbg !239
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 63, i32 1, i32 1056) #6, !dbg !240
  %2 = bitcast i8* %call1 to %struct.t_block*, !dbg !240
  call void @llvm.dbg.value(metadata !{%struct.t_block* %2}, i64 0, metadata !97), !dbg !240
  %call2 = call i32 @get_a_line(%struct._IO_FILE* %call, i8* %0, i32 4096) #6, !dbg !241
  %3 = load i8* %0, align 16, !dbg !242, !tbaa !232
  %cmp = icmp eq i8 %3, 91, !dbg !242
  %nr = getelementptr inbounds i8* %call1, i64 1024, !dbg !243
  %4 = bitcast i8* %nr to i32*, !dbg !243
  br i1 %cmp, label %if.then, label %if.else81, !dbg !242

if.then:                                          ; preds = %entry
  store i32 0, i32* %4, align 4, !dbg !243, !tbaa !231
  %index = getelementptr inbounds i8* %call1, i64 1032, !dbg !245
  %5 = bitcast i8* %index to i32**, !dbg !245
  store i32* null, i32** %5, align 8, !dbg !245, !tbaa !246
  %nra = getelementptr inbounds i8* %call1, i64 1040, !dbg !247
  %6 = bitcast i8* %nra to i32*, !dbg !247
  store i32 0, i32* %6, align 4, !dbg !247, !tbaa !231
  %a4 = getelementptr inbounds i8* %call1, i64 1048, !dbg !248
  %7 = bitcast i8* %a4 to i32**, !dbg !248
  store i32* null, i32** %7, align 8, !dbg !248, !tbaa !246
  store i8** null, i8*** %grpname, align 8, !dbg !249, !tbaa !246
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !99), !dbg !250
  br label %do.body, !dbg !251

do.body:                                          ; preds = %do.cond, %if.then
  %maxentries.0 = phi i32 [ 0, %if.then ], [ %maxentries.3, %do.cond ]
  %call7 = call i32 @get_header(i8* %0, i8* %1) #6, !dbg !252
  %tobool = icmp eq i32 %call7, 0, !dbg !252
  br i1 %tobool, label %while.cond.preheader, label %if.then8, !dbg !252

while.cond.preheader:                             ; preds = %do.body
  %call42202 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* %1) #6, !dbg !254
  call void @llvm.dbg.value(metadata !{i32 %call42202}, i64 0, metadata !100), !dbg !254
  %cmp43203 = icmp eq i32 %call42202, 1, !dbg !254
  br i1 %cmp43203, label %while.body, label %do.cond, !dbg !254

if.then8:                                         ; preds = %do.body
  %8 = load i32* %4, align 4, !dbg !256, !tbaa !231
  %inc = add nsw i32 %8, 1, !dbg !256
  store i32 %inc, i32* %4, align 4, !dbg !256, !tbaa !231
  %9 = load i32** %5, align 8, !dbg !258, !tbaa !246
  %10 = bitcast i32* %9 to i8*, !dbg !258
  %add = shl i32 %8, 2, !dbg !258
  %mul = add i32 %add, 8, !dbg !258
  %call14 = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 76, i8* %10, i32 %mul) #6, !dbg !258
  %11 = bitcast i8* %call14 to i32*, !dbg !258
  store i32* %11, i32** %5, align 8, !dbg !258, !tbaa !246
  %12 = load i8*** %grpname, align 8, !dbg !259, !tbaa !246
  %13 = bitcast i8** %12 to i8*, !dbg !259
  %14 = load i32* %4, align 4, !dbg !259, !tbaa !231
  %mul18 = shl i32 %14, 3, !dbg !259
  %call20 = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 77, i8* %13, i32 %mul18) #6, !dbg !259
  %15 = bitcast i8* %call20 to i8**, !dbg !259
  store i8** %15, i8*** %grpname, align 8, !dbg !259, !tbaa !246
  %16 = load i32* %4, align 4, !dbg !260, !tbaa !231
  %cmp22 = icmp eq i32 %16, 1, !dbg !260
  %17 = load i32** %5, align 8, !dbg !261, !tbaa !246
  br i1 %cmp22, label %if.then24, label %if.end, !dbg !260

if.then24:                                        ; preds = %if.then8
  store i32 0, i32* %17, align 4, !dbg !261, !tbaa !231
  %.pre = load i32* %4, align 4, !dbg !262, !tbaa !231
  br label %if.end, !dbg !261

if.end:                                           ; preds = %if.then8, %if.then24
  %18 = phi i32 [ %.pre, %if.then24 ], [ %16, %if.then8 ]
  %sub = add nsw i32 %18, -1, !dbg !262
  %idxprom = sext i32 %sub to i64, !dbg !262
  %arrayidx29 = getelementptr inbounds i32* %17, i64 %idxprom, !dbg !262
  %19 = load i32* %arrayidx29, align 4, !dbg !262, !tbaa !231
  %idxprom31 = sext i32 %18 to i64, !dbg !262
  %arrayidx33 = getelementptr inbounds i32* %17, i64 %idxprom31, !dbg !262
  store i32 %19, i32* %arrayidx33, align 4, !dbg !262, !tbaa !231
  %call35 = call noalias i8* @strdup(i8* %1) #6, !dbg !263
  %20 = load i32* %4, align 4, !dbg !263, !tbaa !231
  %sub37 = add nsw i32 %20, -1, !dbg !263
  %idxprom38 = sext i32 %sub37 to i64, !dbg !263
  %21 = load i8*** %grpname, align 8, !dbg !263, !tbaa !246
  %arrayidx39 = getelementptr inbounds i8** %21, i64 %idxprom38, !dbg !263
  store i8* %call35, i8** %arrayidx39, align 8, !dbg !263, !tbaa !246
  br label %do.cond, !dbg !264

while.body:                                       ; preds = %while.cond.preheader, %if.end59
  %maxentries.1205 = phi i32 [ %maxentries.2, %if.end59 ], [ %maxentries.0, %while.cond.preheader ]
  %pt.0204 = phi i8* [ %add.ptr, %if.end59 ], [ %0, %while.cond.preheader ]
  %22 = load i32* %4, align 4, !dbg !265, !tbaa !231
  %idxprom46 = sext i32 %22 to i64, !dbg !265
  %23 = load i32** %5, align 8, !dbg !265, !tbaa !246
  %arrayidx48 = getelementptr inbounds i32* %23, i64 %idxprom46, !dbg !265
  %24 = load i32* %arrayidx48, align 4, !dbg !265, !tbaa !231
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !100), !dbg !265
  %cmp49 = icmp slt i32 %24, %maxentries.1205, !dbg !267
  br i1 %cmp49, label %while.body.if.end59_crit_edge, label %if.then51, !dbg !267

while.body.if.end59_crit_edge:                    ; preds = %while.body
  %.pre213 = load i32** %7, align 8, !dbg !268, !tbaa !246
  br label %if.end59, !dbg !267

if.then51:                                        ; preds = %while.body
  %add52 = add nsw i32 %maxentries.1205, 100, !dbg !269
  call void @llvm.dbg.value(metadata !{i32 %add52}, i64 0, metadata !99), !dbg !269
  %25 = load i32** %7, align 8, !dbg !271, !tbaa !246
  %26 = bitcast i32* %25 to i8*, !dbg !271
  %mul55 = shl i32 %add52, 2, !dbg !271
  %call57 = call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 88, i8* %26, i32 %mul55) #6, !dbg !271
  %27 = bitcast i8* %call57 to i32*, !dbg !271
  store i32* %27, i32** %7, align 8, !dbg !271, !tbaa !246
  %.pre211 = load i32** %5, align 8, !dbg !272, !tbaa !246
  br label %if.end59, !dbg !273

if.end59:                                         ; preds = %while.body.if.end59_crit_edge, %if.then51
  %28 = phi i32* [ %27, %if.then51 ], [ %.pre213, %while.body.if.end59_crit_edge ]
  %29 = phi i32* [ %.pre211, %if.then51 ], [ %23, %while.body.if.end59_crit_edge ]
  %maxentries.2 = phi i32 [ %add52, %if.then51 ], [ %maxentries.1205, %while.body.if.end59_crit_edge ]
  %call61 = call i32 @atoi(i8* %1) #7, !dbg !268
  %sub62 = add nsw i32 %call61, -1, !dbg !268
  %idxprom63 = sext i32 %24 to i64, !dbg !268
  %arrayidx65 = getelementptr inbounds i32* %28, i64 %idxprom63, !dbg !268
  store i32 %sub62, i32* %arrayidx65, align 4, !dbg !268, !tbaa !231
  %30 = load i32* %4, align 4, !dbg !272, !tbaa !231
  %idxprom67 = sext i32 %30 to i64, !dbg !272
  %arrayidx69 = getelementptr inbounds i32* %29, i64 %idxprom67, !dbg !272
  %31 = load i32* %arrayidx69, align 4, !dbg !272, !tbaa !231
  %inc70 = add nsw i32 %31, 1, !dbg !272
  store i32 %inc70, i32* %arrayidx69, align 4, !dbg !272, !tbaa !231
  %32 = load i32* %6, align 4, !dbg !274, !tbaa !231
  %inc72 = add nsw i32 %32, 1, !dbg !274
  store i32 %inc72, i32* %6, align 4, !dbg !274, !tbaa !231
  %call74 = call i8* @strstr(i8* %pt.0204, i8* %1) #7, !dbg !275
  %call76 = call i64 @strlen(i8* %1) #7, !dbg !275
  %add.ptr = getelementptr inbounds i8* %call74, i64 %call76, !dbg !275
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !107), !dbg !275
  %call42 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* %1) #6, !dbg !254
  call void @llvm.dbg.value(metadata !{i32 %call42}, i64 0, metadata !100), !dbg !254
  %cmp43 = icmp eq i32 %call42, 1, !dbg !254
  br i1 %cmp43, label %while.body, label %do.cond, !dbg !254

do.cond:                                          ; preds = %while.cond.preheader, %if.end59, %if.end
  %maxentries.3 = phi i32 [ %maxentries.0, %if.end ], [ %maxentries.0, %while.cond.preheader ], [ %maxentries.2, %if.end59 ]
  %call79 = call i32 @get_a_line(%struct._IO_FILE* %call, i8* %0, i32 4096) #6, !dbg !276
  %tobool80 = icmp eq i32 %call79, 0, !dbg !276
  br i1 %tobool80, label %if.end140, label %do.body, !dbg !276

if.else81:                                        ; preds = %entry
  %nra84 = getelementptr inbounds i8* %call1, i64 1040, !dbg !277
  %33 = bitcast i8* %nra84 to i32*, !dbg !277
  %call85 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* %nr, i8* %nra84) #6, !dbg !277
  %34 = load i32* %4, align 4, !dbg !279, !tbaa !231
  %add87 = add nsw i32 %34, 1, !dbg !279
  %call88 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 101, i32 %add87, i32 4) #6, !dbg !279
  %35 = bitcast i8* %call88 to i32*, !dbg !279
  %index89 = getelementptr inbounds i8* %call1, i64 1032, !dbg !279
  %36 = bitcast i8* %index89 to i32**, !dbg !279
  store i32* %35, i32** %36, align 8, !dbg !279, !tbaa !246
  %37 = load i32* %4, align 4, !dbg !280, !tbaa !231
  %call91 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 102, i32 %37, i32 8) #6, !dbg !280
  %38 = bitcast i8* %call91 to i8**, !dbg !280
  store i8** %38, i8*** %grpname, align 8, !dbg !280, !tbaa !246
  %39 = load i32** %36, align 8, !dbg !281, !tbaa !246
  store i32 0, i32* %39, align 4, !dbg !281, !tbaa !231
  %40 = load i32* %33, align 4, !dbg !282, !tbaa !231
  %call95 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 104, i32 %40, i32 4) #6, !dbg !282
  %41 = bitcast i8* %call95 to i32*, !dbg !282
  %a96 = getelementptr inbounds i8* %call1, i64 1048, !dbg !282
  %42 = bitcast i8* %a96 to i32**, !dbg !282
  store i32* %41, i32** %42, align 8, !dbg !282, !tbaa !246
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !100), !dbg !283
  %43 = load i32* %4, align 4, !dbg !283, !tbaa !231
  %cmp98209 = icmp sgt i32 %43, 0, !dbg !283
  br i1 %cmp98209, label %for.body, label %if.end140, !dbg !283

for.cond.loopexit:                                ; preds = %for.body127, %for.cond124.preheader
  %44 = load i32* %4, align 4, !dbg !283, !tbaa !231
  %45 = trunc i64 %indvars.iv.next to i32, !dbg !283
  %cmp98 = icmp slt i32 %45, %44, !dbg !283
  br i1 %cmp98, label %for.body, label %if.end140, !dbg !283

for.body:                                         ; preds = %if.else81, %for.cond.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond.loopexit ], [ 0, %if.else81 ]
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i8* %1, i32* %ng) #6, !dbg !285
  %call103 = call noalias i8* @strdup(i8* %1) #6, !dbg !287
  %46 = load i8*** %grpname, align 8, !dbg !287, !tbaa !246
  %arrayidx105 = getelementptr inbounds i8** %46, i64 %indvars.iv, !dbg !287
  store i8* %call103, i8** %arrayidx105, align 8, !dbg !287, !tbaa !246
  %47 = load i32** %36, align 8, !dbg !288, !tbaa !246
  %arrayidx108 = getelementptr inbounds i32* %47, i64 %indvars.iv, !dbg !288
  %48 = load i32* %arrayidx108, align 4, !dbg !288, !tbaa !231
  call void @llvm.dbg.value(metadata !{i32* %ng}, i64 0, metadata !102), !dbg !288
  %49 = load i32* %ng, align 4, !dbg !288, !tbaa !231
  %add109 = add nsw i32 %49, %48, !dbg !288
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !283
  %arrayidx113 = getelementptr inbounds i32* %47, i64 %indvars.iv.next, !dbg !288
  store i32 %add109, i32* %arrayidx113, align 4, !dbg !288, !tbaa !231
  %50 = load i32* %33, align 4, !dbg !289, !tbaa !231
  %cmp119 = icmp sgt i32 %add109, %50, !dbg !289
  br i1 %cmp119, label %if.then121, label %for.cond124.preheader, !dbg !289

if.then121:                                       ; preds = %for.body
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str12, i64 0, i64 0), i8* %1) #6, !dbg !290
  br label %for.cond124.preheader, !dbg !290

for.cond124.preheader:                            ; preds = %if.then121, %for.body
  call void @llvm.dbg.value(metadata !{i32* %ng}, i64 0, metadata !102), !dbg !291
  %51 = load i32* %ng, align 4, !dbg !291, !tbaa !231
  %cmp125206 = icmp sgt i32 %51, 0, !dbg !291
  br i1 %cmp125206, label %for.body127, label %for.cond.loopexit, !dbg !291

for.body127:                                      ; preds = %for.cond124.preheader, %for.body127
  %j.0207 = phi i32 [ %inc136, %for.body127 ], [ 0, %for.cond124.preheader ]
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i32* %a) #6, !dbg !293
  call void @llvm.dbg.value(metadata !{i32* %a}, i64 0, metadata !98), !dbg !295
  %52 = load i32* %a, align 4, !dbg !295, !tbaa !231
  %53 = load i32** %36, align 8, !dbg !295, !tbaa !246
  %arrayidx131 = getelementptr inbounds i32* %53, i64 %indvars.iv, !dbg !295
  %54 = load i32* %arrayidx131, align 4, !dbg !295, !tbaa !231
  %add132 = add nsw i32 %54, %j.0207, !dbg !295
  %idxprom133 = sext i32 %add132 to i64, !dbg !295
  %55 = load i32** %42, align 8, !dbg !295, !tbaa !246
  %arrayidx135 = getelementptr inbounds i32* %55, i64 %idxprom133, !dbg !295
  store i32 %52, i32* %arrayidx135, align 4, !dbg !295, !tbaa !231
  %inc136 = add nsw i32 %j.0207, 1, !dbg !291
  call void @llvm.dbg.value(metadata !{i32 %inc136}, i64 0, metadata !101), !dbg !291
  call void @llvm.dbg.value(metadata !{i32* %ng}, i64 0, metadata !102), !dbg !291
  %56 = load i32* %ng, align 4, !dbg !291, !tbaa !231
  %cmp125 = icmp slt i32 %inc136, %56, !dbg !291
  br i1 %cmp125, label %for.body127, label %for.cond.loopexit, !dbg !291

if.end140:                                        ; preds = %if.else81, %for.cond.loopexit, %do.cond
  call void @ffclose(%struct._IO_FILE* %call) #6, !dbg !296
  call void @llvm.lifetime.end(i64 4096, i8* %1) #3, !dbg !297
  call void @llvm.lifetime.end(i64 4096, i8* %0) #3, !dbg !297
  ret %struct.t_block* %2, !dbg !297
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @get_a_line(%struct._IO_FILE*, i8*, i32) #2

; Function Attrs: optsize
declare i32 @get_header(i8*, i8*) #2

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @rd_index(i8* %statfile, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i8** nocapture %grpnames) #0 {
entry:
  %gnames = alloca i8**, align 8
  call void @llvm.dbg.value(metadata !{i8* %statfile}, i64 0, metadata !115), !dbg !298
  call void @llvm.dbg.value(metadata !{i32 %ngrps}, i64 0, metadata !116), !dbg !298
  call void @llvm.dbg.value(metadata !{i32* %isize}, i64 0, metadata !117), !dbg !298
  call void @llvm.dbg.value(metadata !{i32** %index}, i64 0, metadata !118), !dbg !299
  call void @llvm.dbg.value(metadata !{i8** %grpnames}, i64 0, metadata !119), !dbg !299
  call void @llvm.dbg.declare(metadata !{i8*** %gnames}, metadata !120), !dbg !300
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 204, i32 %ngrps, i32 4) #6, !dbg !301
  %0 = bitcast i8* %call to i32*, !dbg !301
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !122), !dbg !301
  %tobool = icmp eq i8* %statfile, null, !dbg !302
  br i1 %tobool, label %if.then, label %if.end, !dbg !302

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str15, i64 0, i64 0)) #6, !dbg !303
  br label %if.end, !dbg !303

if.end:                                           ; preds = %entry, %if.then
  %call1 = call %struct.t_block* @init_index(i8* %statfile, i8*** %gnames) #8, !dbg !304
  call void @llvm.dbg.value(metadata !{%struct.t_block* %call1}, i64 0, metadata !121), !dbg !304
  call void @llvm.dbg.value(metadata !{i8*** %gnames}, i64 0, metadata !120), !dbg !305
  %1 = load i8*** %gnames, align 8, !dbg !305, !tbaa !246
  call fastcc void @rd_groups(%struct.t_block* %call1, i8** %1, i8** %grpnames, i32 %ngrps, i32* %isize, i32** %index, i32* %0) #8, !dbg !305
  ret void, !dbg !306
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @rd_groups(%struct.t_block* nocapture %grps, i8** nocapture %grpname, i8** nocapture %gnames, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i32* %grpnr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %grps}, i64 0, metadata !211), !dbg !307
  tail call void @llvm.dbg.value(metadata !{i8** %grpname}, i64 0, metadata !212), !dbg !307
  tail call void @llvm.dbg.value(metadata !{i8** %gnames}, i64 0, metadata !213), !dbg !307
  tail call void @llvm.dbg.value(metadata !{i32 %ngrps}, i64 0, metadata !214), !dbg !308
  tail call void @llvm.dbg.value(metadata !{i32* %isize}, i64 0, metadata !215), !dbg !308
  tail call void @llvm.dbg.value(metadata !{i32** %index}, i64 0, metadata !216), !dbg !308
  tail call void @llvm.dbg.value(metadata !{i32* %grpnr}, i64 0, metadata !217), !dbg !308
  %nr = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 1, !dbg !309
  %0 = load i32* %nr, align 4, !dbg !309, !tbaa !231
  %cmp = icmp eq i32 %0, 0, !dbg !309
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !309

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str19, i64 0, i64 0)) #6, !dbg !310
  %.pre = load i32* %nr, align 4, !dbg !311, !tbaa !231
  br label %for.cond.preheader, !dbg !310

for.cond.preheader:                               ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %cmp2115 = icmp sgt i32 %1, 0, !dbg !311
  br i1 %cmp2115, label %for.body.lr.ph, label %for.cond9.preheader, !dbg !311

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %index4 = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 2, !dbg !313
  br label %for.body, !dbg !311

for.cond9.preheader:                              ; preds = %for.body, %for.cond.preheader
  %2 = phi i32 [ %1, %for.cond.preheader ], [ %9, %for.body ]
  %cmp10113 = icmp sgt i32 %ngrps, 0, !dbg !314
  br i1 %cmp10113, label %for.body11.lr.ph, label %for.end71, !dbg !314

for.body11.lr.ph:                                 ; preds = %for.cond9.preheader
  %index38 = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 2, !dbg !316
  %a = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 4, !dbg !318
  br label %for.body11, !dbg !314

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv119 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next120, %for.body ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !313, !tbaa !246
  %arrayidx = getelementptr inbounds i8** %grpname, i64 %indvars.iv119, !dbg !313
  %4 = load i8** %arrayidx, align 8, !dbg !313, !tbaa !246
  %indvars.iv.next120 = add i64 %indvars.iv119, 1, !dbg !311
  %5 = load i32** %index4, align 8, !dbg !313, !tbaa !246
  %arrayidx5 = getelementptr inbounds i32* %5, i64 %indvars.iv.next120, !dbg !313
  %6 = load i32* %arrayidx5, align 4, !dbg !313, !tbaa !231
  %arrayidx8 = getelementptr inbounds i32* %5, i64 %indvars.iv119, !dbg !313
  %7 = load i32* %arrayidx8, align 4, !dbg !313, !tbaa !231
  %sub = sub nsw i32 %6, %7, !dbg !313
  %8 = trunc i64 %indvars.iv119 to i32, !dbg !313
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([35 x i8]* @.str20, i64 0, i64 0), i32 %8, i8* %4, i32 %sub) #6, !dbg !313
  %9 = load i32* %nr, align 4, !dbg !311, !tbaa !231
  %10 = trunc i64 %indvars.iv.next120 to i32, !dbg !311
  %cmp2 = icmp slt i32 %10, %9, !dbg !311
  br i1 %cmp2, label %for.body, label %for.cond9.preheader, !dbg !311

for.body11:                                       ; preds = %for.inc69.for.body11_crit_edge, %for.body11.lr.ph
  %11 = phi i32 [ %2, %for.body11.lr.ph ], [ %.pre121, %for.inc69.for.body11_crit_edge ]
  %indvars.iv117 = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next118, %for.inc69.for.body11_crit_edge ]
  %cmp13 = icmp sgt i32 %11, 1, !dbg !320
  br i1 %cmp13, label %do.body.preheader, label %if.else, !dbg !320

do.body.preheader:                                ; preds = %for.body11
  %arrayidx16 = getelementptr inbounds i32* %grpnr, i64 %indvars.iv117, !dbg !321
  br label %do.body, !dbg !321

do.body.critedge:                                 ; preds = %do.body
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !323, !tbaa !246
  %13 = load i32* %nr, align 4, !dbg !323, !tbaa !231
  %sub23.c = add nsw i32 %13, -1, !dbg !323
  %call24.c = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), i32 0, i32 %sub23.c) #6, !dbg !323
  br label %do.body

do.body:                                          ; preds = %do.body.critedge, %lor.rhs, %do.body.preheader
  tail call void @llvm.dbg.value(metadata !{i32* %arrayidx16}, i64 0, metadata !324) #3, !dbg !325
  %14 = load %struct._IO_FILE** @stderr, align 8, !dbg !326, !tbaa !246
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str24, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %14) #3, !dbg !326
  %call1.i = tail call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i32* %arrayidx16) #6, !dbg !327
  %16 = load i32* %arrayidx16, align 4, !dbg !328, !tbaa !231
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !220), !dbg !321
  %cmp18 = icmp slt i32 %16, 0, !dbg !329
  br i1 %cmp18, label %do.body.critedge, label %lor.lhs.false, !dbg !329

lor.lhs.false:                                    ; preds = %do.body
  %17 = load i32* %nr, align 4, !dbg !329, !tbaa !231
  %cmp20 = icmp slt i32 %16, %17, !dbg !329
  br i1 %cmp20, label %lor.rhs, label %do.cond.lor.rhs_crit_edge, !dbg !329

do.cond.lor.rhs_crit_edge:                        ; preds = %lor.lhs.false
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !323, !tbaa !246
  %sub23 = add nsw i32 %17, -1, !dbg !323
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), i32 0, i32 %sub23) #6, !dbg !323
  %.pre122 = load i32* %nr, align 4, !dbg !330, !tbaa !231
  br label %lor.rhs, !dbg !330

lor.rhs:                                          ; preds = %do.cond.lor.rhs_crit_edge, %lor.lhs.false
  %19 = phi i32 [ %.pre122, %do.cond.lor.rhs_crit_edge ], [ %17, %lor.lhs.false ]
  %cmp28 = icmp slt i32 %16, %19, !dbg !330
  br i1 %cmp28, label %if.end30, label %do.body, !dbg !330

if.else:                                          ; preds = %for.body11
  %20 = load %struct._IO_FILE** @stderr, align 8, !dbg !331, !tbaa !246
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str22, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %20), !dbg !331
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !220), !dbg !333
  br label %if.end30

if.end30:                                         ; preds = %lor.rhs, %if.else
  %gnr1.0 = phi i32 [ 0, %if.else ], [ %16, %lor.rhs ]
  %idxprom31 = sext i32 %gnr1.0 to i64, !dbg !334
  %arrayidx32 = getelementptr inbounds i8** %grpname, i64 %idxprom31, !dbg !334
  %22 = load i8** %arrayidx32, align 8, !dbg !334, !tbaa !246
  %call33 = tail call noalias i8* @strdup(i8* %22) #6, !dbg !334
  %arrayidx35 = getelementptr inbounds i8** %gnames, i64 %indvars.iv117, !dbg !334
  store i8* %call33, i8** %arrayidx35, align 8, !dbg !334, !tbaa !246
  %add36 = add nsw i32 %gnr1.0, 1, !dbg !316
  %idxprom37 = sext i32 %add36 to i64, !dbg !316
  %23 = load i32** %index38, align 8, !dbg !316, !tbaa !246
  %arrayidx39 = getelementptr inbounds i32* %23, i64 %idxprom37, !dbg !316
  %24 = load i32* %arrayidx39, align 4, !dbg !316, !tbaa !231
  %arrayidx42 = getelementptr inbounds i32* %23, i64 %idxprom31, !dbg !316
  %25 = load i32* %arrayidx42, align 4, !dbg !316, !tbaa !231
  %sub43 = sub nsw i32 %24, %25, !dbg !316
  %arrayidx45 = getelementptr inbounds i32* %isize, i64 %indvars.iv117, !dbg !316
  store i32 %sub43, i32* %arrayidx45, align 4, !dbg !316, !tbaa !231
  %call48 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 191, i32 %sub43, i32 4) #6, !dbg !335
  %26 = bitcast i8* %call48 to i32*, !dbg !335
  %arrayidx50 = getelementptr inbounds i32** %index, i64 %indvars.iv117, !dbg !335
  store i32* %26, i32** %arrayidx50, align 8, !dbg !335, !tbaa !246
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !219), !dbg !336
  %27 = load i32* %arrayidx45, align 4, !dbg !336, !tbaa !231
  %cmp54111 = icmp sgt i32 %27, 0, !dbg !336
  br i1 %cmp54111, label %for.body55.lr.ph, label %for.inc69, !dbg !336

for.body55.lr.ph:                                 ; preds = %if.end30
  %28 = load i32** %index38, align 8, !dbg !318, !tbaa !246
  %arrayidx58 = getelementptr inbounds i32* %28, i64 %idxprom31, !dbg !318
  %29 = load i32** %a, align 8, !dbg !318, !tbaa !246
  br label %for.body55, !dbg !336

for.body55:                                       ; preds = %for.body55.lr.ph, %for.body55
  %indvars.iv = phi i64 [ 0, %for.body55.lr.ph ], [ %indvars.iv.next, %for.body55 ]
  %30 = load i32* %arrayidx58, align 4, !dbg !318, !tbaa !231
  %31 = trunc i64 %indvars.iv to i32, !dbg !318
  %add59 = add nsw i32 %30, %31, !dbg !318
  %idxprom60 = sext i32 %add59 to i64, !dbg !318
  %arrayidx61 = getelementptr inbounds i32* %29, i64 %idxprom60, !dbg !318
  %32 = load i32* %arrayidx61, align 4, !dbg !318, !tbaa !231
  %arrayidx65 = getelementptr inbounds i32* %26, i64 %indvars.iv, !dbg !318
  store i32 %32, i32* %arrayidx65, align 4, !dbg !318, !tbaa !231
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !336
  %33 = load i32* %arrayidx45, align 4, !dbg !336, !tbaa !231
  %34 = trunc i64 %indvars.iv.next to i32, !dbg !336
  %cmp54 = icmp slt i32 %34, %33, !dbg !336
  br i1 %cmp54, label %for.body55, label %for.inc69, !dbg !336

for.inc69:                                        ; preds = %for.body55, %if.end30
  %indvars.iv.next118 = add i64 %indvars.iv117, 1, !dbg !314
  %lftr.wideiv = trunc i64 %indvars.iv.next118 to i32, !dbg !314
  %exitcond = icmp eq i32 %lftr.wideiv, %ngrps, !dbg !314
  br i1 %exitcond, label %for.end71, label %for.inc69.for.body11_crit_edge, !dbg !314

for.inc69.for.body11_crit_edge:                   ; preds = %for.inc69
  %.pre121 = load i32* %nr, align 4, !dbg !320, !tbaa !231
  br label %for.body11, !dbg !314

for.end71:                                        ; preds = %for.inc69, %for.cond9.preheader
  ret void, !dbg !337
}

; Function Attrs: nounwind optsize uwtable
define void @rd_index_nrs(i8* %statfile, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i8** nocapture %grpnames, i32* %grpnr) #0 {
entry:
  %gnames = alloca i8**, align 8
  call void @llvm.dbg.value(metadata !{i8* %statfile}, i64 0, metadata !127), !dbg !338
  call void @llvm.dbg.value(metadata !{i32 %ngrps}, i64 0, metadata !128), !dbg !338
  call void @llvm.dbg.value(metadata !{i32* %isize}, i64 0, metadata !129), !dbg !338
  call void @llvm.dbg.value(metadata !{i32** %index}, i64 0, metadata !130), !dbg !339
  call void @llvm.dbg.value(metadata !{i8** %grpnames}, i64 0, metadata !131), !dbg !339
  call void @llvm.dbg.value(metadata !{i32* %grpnr}, i64 0, metadata !132), !dbg !339
  call void @llvm.dbg.declare(metadata !{i8*** %gnames}, metadata !133), !dbg !340
  %tobool = icmp eq i8* %statfile, null, !dbg !341
  br i1 %tobool, label %if.then, label %if.end, !dbg !341

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str15, i64 0, i64 0)) #6, !dbg !342
  br label %if.end, !dbg !342

if.end:                                           ; preds = %entry, %if.then
  %call = call %struct.t_block* @init_index(i8* %statfile, i8*** %gnames) #8, !dbg !343
  call void @llvm.dbg.value(metadata !{%struct.t_block* %call}, i64 0, metadata !134), !dbg !343
  call void @llvm.dbg.value(metadata !{i8*** %gnames}, i64 0, metadata !133), !dbg !344
  %0 = load i8*** %gnames, align 8, !dbg !344, !tbaa !246
  call fastcc void @rd_groups(%struct.t_block* %call, i8** %0, i8** %grpnames, i32 %ngrps, i32* %isize, i32** %index, i32* %grpnr) #8, !dbg !344
  ret void, !dbg !345
}

; Function Attrs: nounwind optsize uwtable
define void @get_index(%struct.t_atoms* %atoms, i8* %fnm, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i8** nocapture %grpnames) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !198), !dbg !346
  tail call void @llvm.dbg.value(metadata !{i8* %fnm}, i64 0, metadata !199), !dbg !346
  tail call void @llvm.dbg.value(metadata !{i32 %ngrps}, i64 0, metadata !200), !dbg !346
  tail call void @llvm.dbg.value(metadata !{i32* %isize}, i64 0, metadata !201), !dbg !347
  tail call void @llvm.dbg.value(metadata !{i32** %index}, i64 0, metadata !202), !dbg !347
  tail call void @llvm.dbg.value(metadata !{i8** %grpnames}, i64 0, metadata !203), !dbg !347
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 231, i32 %ngrps, i32 4) #6, !dbg !348
  %0 = bitcast i8* %call to i32*, !dbg !348
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !206), !dbg !348
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 232, i32 1, i32 8) #6, !dbg !349
  %1 = bitcast i8* %call1 to i8***, !dbg !349
  tail call void @llvm.dbg.value(metadata !{i8*** %1}, i64 0, metadata !204), !dbg !349
  %cmp = icmp eq i8* %fnm, null, !dbg !350
  br i1 %cmp, label %if.else, label %if.then, !dbg !350

if.then:                                          ; preds = %entry
  %call2 = tail call %struct.t_block* @init_index(i8* %fnm, i8*** %1) #8, !dbg !351
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %call2}, i64 0, metadata !205), !dbg !351
  br label %if.end, !dbg !353

if.else:                                          ; preds = %entry
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 237, i32 1, i32 1056) #6, !dbg !354
  %2 = bitcast i8* %call3 to %struct.t_block*, !dbg !354
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %2}, i64 0, metadata !205), !dbg !354
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 238, i32 1, i32 4) #6, !dbg !356
  %3 = bitcast i8* %call4 to i32*, !dbg !356
  %index5 = getelementptr inbounds i8* %call3, i64 1032, !dbg !356
  %4 = bitcast i8* %index5 to i32**, !dbg !356
  store i32* %3, i32** %4, align 8, !dbg !356, !tbaa !246
  tail call void @analyse(%struct.t_atoms* %atoms, %struct.t_block* %2, i8*** %1, i32 0, i32 0) #6, !dbg !357
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %grps.0 = phi %struct.t_block* [ %call2, %if.then ], [ %2, %if.else ]
  %5 = load i8*** %1, align 8, !dbg !358, !tbaa !246
  tail call fastcc void @rd_groups(%struct.t_block* %grps.0, i8** %5, i8** %grpnames, i32 %ngrps, i32* %isize, i32** %index, i32* %0) #8, !dbg !358
  ret void, !dbg !359
}

; Function Attrs: optsize
declare void @analyse(%struct.t_atoms*, %struct.t_block*, i8***, i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize
declare i32 @__isoc99_scanf(i8* nocapture, ...) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !20, metadata !109, metadata !123, metadata !135, metadata !207, metadata !221}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"check_index", metadata !"check_index", metadata !"", i32 43, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i32*, i8*, i32)* @check_index, null, null, metadata !13, i32 44} ; [ DW_TAG_subprogram ] [line 43] [def] [scope 44] [check_index]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !10, metadata !11, metadata !8, metadata !10}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!9 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!10 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!12 = metadata !{i32 786454, metadata !1, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!14 = metadata !{i32 786689, metadata !4, metadata !"gname", metadata !5, i32 16777259, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gname] [line 43]
!15 = metadata !{i32 786689, metadata !4, metadata !"n", metadata !5, i32 33554475, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 43]
!16 = metadata !{i32 786689, metadata !4, metadata !"index", metadata !5, i32 50331691, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 43]
!17 = metadata !{i32 786689, metadata !4, metadata !"traj", metadata !5, i32 67108907, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [traj] [line 43]
!18 = metadata !{i32 786689, metadata !4, metadata !"natoms", metadata !5, i32 83886123, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 43]
!19 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 45, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 45]
!20 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"init_index", metadata !"init_index", metadata !"", i32 54, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_block* (i8*, i8***)* @init_index, null, null, metadata !38, i32 55} ; [ DW_TAG_subprogram ] [line 54] [def] [scope 55] [init_index]
!21 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{metadata !23, metadata !8, metadata !36}
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_block]
!24 = metadata !{i32 786454, metadata !1, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!25 = metadata !{i32 786451, metadata !26, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!26 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!27 = metadata !{metadata !28, metadata !32, metadata !33, metadata !34, metadata !35}
!28 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!29 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !10, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!32 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !10} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!33 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !11} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!34 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !10} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!35 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !11} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !107, metadata !108}
!39 = metadata !{i32 786689, metadata !20, metadata !"gfile", metadata !5, i32 16777270, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gfile] [line 54]
!40 = metadata !{i32 786689, metadata !20, metadata !"grpname", metadata !5, i32 33554486, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grpname] [line 54]
!41 = metadata !{i32 786688, metadata !20, metadata !"in", metadata !5, i32 56, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 56]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!43 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!44 = metadata !{i32 786451, metadata !45, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !46, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!45 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!46 = metadata !{metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !67, metadata !68, metadata !69, metadata !70, metadata !73, metadata !75, metadata !77, metadata !81, metadata !83, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !92, metadata !93}
!47 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!48 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!49 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!50 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!51 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!52 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!53 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!54 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!55 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!56 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!57 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!58 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !8} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!59 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !60} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!61 = metadata !{i32 786451, metadata !45, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !62, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!62 = metadata !{metadata !63, metadata !64, metadata !66}
!63 = metadata !{i32 786445, metadata !45, metadata !61, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!64 = metadata !{i32 786445, metadata !45, metadata !61, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !65} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!66 = metadata !{i32 786445, metadata !45, metadata !61, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !10} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!67 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !65} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!68 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !10} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!69 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !10} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!70 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !71} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!71 = metadata !{i32 786454, metadata !45, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!72 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!73 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !74} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!74 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!75 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !76} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!76 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!77 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !78} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!78 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !9, metadata !79, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!81 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !82} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!83 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !84} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!84 = metadata !{i32 786454, metadata !45, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!85 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !82} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!86 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !82} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!87 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !82} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!88 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !82} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!89 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !90} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!90 = metadata !{i32 786454, metadata !45, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!91 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!92 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !10} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!93 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !94} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!94 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !9, metadata !95, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!97 = metadata !{i32 786688, metadata !20, metadata !"b", metadata !5, i32 57, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 57]
!98 = metadata !{i32 786688, metadata !20, metadata !"a", metadata !5, i32 58, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 58]
!99 = metadata !{i32 786688, metadata !20, metadata !"maxentries", metadata !5, i32 58, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxentries] [line 58]
!100 = metadata !{i32 786688, metadata !20, metadata !"i", metadata !5, i32 59, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 59]
!101 = metadata !{i32 786688, metadata !20, metadata !"j", metadata !5, i32 59, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 59]
!102 = metadata !{i32 786688, metadata !20, metadata !"ng", metadata !5, i32 59, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ng] [line 59]
!103 = metadata !{i32 786688, metadata !20, metadata !"line", metadata !5, i32 60, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 60]
!104 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !9, metadata !105, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!107 = metadata !{i32 786688, metadata !20, metadata !"pt", metadata !5, i32 60, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pt] [line 60]
!108 = metadata !{i32 786688, metadata !20, metadata !"str", metadata !5, i32 60, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [str] [line 60]
!109 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rd_index", metadata !"rd_index", metadata !"", i32 197, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i32*, i32**, i8**)* @rd_index, null, null, metadata !114, i32 199} ; [ DW_TAG_subprogram ] [line 197] [def] [scope 199] [rd_index]
!110 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{null, metadata !8, metadata !10, metadata !112, metadata !113, metadata !37}
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!114 = metadata !{metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122}
!115 = metadata !{i32 786689, metadata !109, metadata !"statfile", metadata !5, i32 16777413, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [statfile] [line 197]
!116 = metadata !{i32 786689, metadata !109, metadata !"ngrps", metadata !5, i32 33554629, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ngrps] [line 197]
!117 = metadata !{i32 786689, metadata !109, metadata !"isize", metadata !5, i32 50331845, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [isize] [line 197]
!118 = metadata !{i32 786689, metadata !109, metadata !"index", metadata !5, i32 67109062, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 198]
!119 = metadata !{i32 786689, metadata !109, metadata !"grpnames", metadata !5, i32 83886278, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grpnames] [line 198]
!120 = metadata !{i32 786688, metadata !109, metadata !"gnames", metadata !5, i32 200, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gnames] [line 200]
!121 = metadata !{i32 786688, metadata !109, metadata !"grps", metadata !5, i32 201, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grps] [line 201]
!122 = metadata !{i32 786688, metadata !109, metadata !"grpnr", metadata !5, i32 202, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grpnr] [line 202]
!123 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rd_index_nrs", metadata !"rd_index_nrs", metadata !"", i32 211, metadata !124, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i32*, i32**, i8**, i32*)* @rd_index_nrs, null, null, metadata !126, i32 213} ; [ DW_TAG_subprogram ] [line 211] [def] [scope 213] [rd_index_nrs]
!124 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!125 = metadata !{null, metadata !8, metadata !10, metadata !112, metadata !113, metadata !37, metadata !112}
!126 = metadata !{metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134}
!127 = metadata !{i32 786689, metadata !123, metadata !"statfile", metadata !5, i32 16777427, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [statfile] [line 211]
!128 = metadata !{i32 786689, metadata !123, metadata !"ngrps", metadata !5, i32 33554643, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ngrps] [line 211]
!129 = metadata !{i32 786689, metadata !123, metadata !"isize", metadata !5, i32 50331859, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [isize] [line 211]
!130 = metadata !{i32 786689, metadata !123, metadata !"index", metadata !5, i32 67109076, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 212]
!131 = metadata !{i32 786689, metadata !123, metadata !"grpnames", metadata !5, i32 83886292, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grpnames] [line 212]
!132 = metadata !{i32 786689, metadata !123, metadata !"grpnr", metadata !5, i32 100663508, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grpnr] [line 212]
!133 = metadata !{i32 786688, metadata !123, metadata !"gnames", metadata !5, i32 214, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gnames] [line 214]
!134 = metadata !{i32 786688, metadata !123, metadata !"grps", metadata !5, i32 215, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grps] [line 215]
!135 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_index", metadata !"get_index", metadata !"", i32 224, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_atoms*, i8*, i32, i32*, i32**, i8**)* @get_index, null, null, metadata !197, i32 226} ; [ DW_TAG_subprogram ] [line 224] [def] [scope 226] [get_index]
!136 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!137 = metadata !{null, metadata !138, metadata !8, metadata !10, metadata !112, metadata !113, metadata !37}
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atoms]
!139 = metadata !{i32 786454, metadata !1, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!140 = metadata !{i32 786451, metadata !141, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !142, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!141 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!142 = metadata !{metadata !143, metadata !144, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !180}
!143 = metadata !{i32 786445, metadata !141, metadata !140, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!144 = metadata !{i32 786445, metadata !141, metadata !140, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !145} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!145 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!146 = metadata !{i32 786454, metadata !141, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!147 = metadata !{i32 786451, metadata !141, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !148, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!148 = metadata !{metadata !149, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !164}
!149 = metadata !{i32 786445, metadata !141, metadata !147, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !150} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!150 = metadata !{i32 786454, metadata !141, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!151 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!152 = metadata !{i32 786445, metadata !141, metadata !147, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !150} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!153 = metadata !{i32 786445, metadata !141, metadata !147, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !150} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!154 = metadata !{i32 786445, metadata !141, metadata !147, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !150} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!155 = metadata !{i32 786445, metadata !141, metadata !147, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !74} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!156 = metadata !{i32 786445, metadata !141, metadata !147, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !74} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!157 = metadata !{i32 786445, metadata !141, metadata !147, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !10} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!158 = metadata !{i32 786445, metadata !141, metadata !147, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !10} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!159 = metadata !{i32 786445, metadata !141, metadata !147, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !160} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!160 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !161, metadata !162, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!161 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!162 = metadata !{metadata !163}
!163 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!164 = metadata !{i32 786445, metadata !141, metadata !147, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !161} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!165 = metadata !{i32 786445, metadata !141, metadata !140, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!166 = metadata !{i32 786445, metadata !141, metadata !140, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!167 = metadata !{i32 786445, metadata !141, metadata !140, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!168 = metadata !{i32 786445, metadata !141, metadata !140, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !10} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!169 = metadata !{i32 786445, metadata !141, metadata !140, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !36} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!170 = metadata !{i32 786445, metadata !141, metadata !140, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !10} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!171 = metadata !{i32 786445, metadata !141, metadata !140, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !36} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!172 = metadata !{i32 786445, metadata !141, metadata !140, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !24} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!173 = metadata !{i32 786445, metadata !141, metadata !140, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !174} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!174 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !175, metadata !162, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!175 = metadata !{i32 786454, metadata !141, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!176 = metadata !{i32 786451, metadata !141, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !177, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!177 = metadata !{metadata !178, metadata !179}
!178 = metadata !{i32 786445, metadata !141, metadata !176, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!179 = metadata !{i32 786445, metadata !141, metadata !176, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !112} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!180 = metadata !{i32 786445, metadata !141, metadata !140, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !181} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!181 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !182} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!182 = metadata !{i32 786454, metadata !141, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !183} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!183 = metadata !{i32 786451, metadata !141, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !184, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!184 = metadata !{metadata !185, metadata !186, metadata !187, metadata !188, metadata !192, metadata !193, metadata !194, metadata !195}
!185 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!186 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !10} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!187 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!188 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !189} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!189 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !9, metadata !190, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!190 = metadata !{metadata !191}
!191 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!192 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !150} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!193 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !150} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!194 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !10} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!195 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !196} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!196 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !10, metadata !190, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!197 = metadata !{metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206}
!198 = metadata !{i32 786689, metadata !135, metadata !"atoms", metadata !5, i32 16777440, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 224]
!199 = metadata !{i32 786689, metadata !135, metadata !"fnm", metadata !5, i32 33554656, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 224]
!200 = metadata !{i32 786689, metadata !135, metadata !"ngrps", metadata !5, i32 50331872, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ngrps] [line 224]
!201 = metadata !{i32 786689, metadata !135, metadata !"isize", metadata !5, i32 67109089, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [isize] [line 225]
!202 = metadata !{i32 786689, metadata !135, metadata !"index", metadata !5, i32 83886305, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 225]
!203 = metadata !{i32 786689, metadata !135, metadata !"grpnames", metadata !5, i32 100663521, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grpnames] [line 225]
!204 = metadata !{i32 786688, metadata !135, metadata !"gnames", metadata !5, i32 227, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gnames] [line 227]
!205 = metadata !{i32 786688, metadata !135, metadata !"grps", metadata !5, i32 228, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grps] [line 228]
!206 = metadata !{i32 786688, metadata !135, metadata !"grpnr", metadata !5, i32 229, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grpnr] [line 229]
!207 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rd_groups", metadata !"rd_groups", metadata !"", i32 168, metadata !208, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_block*, i8**, i8**, i32, i32*, i32**, i32*)* @rd_groups, null, null, metadata !210, i32 170} ; [ DW_TAG_subprogram ] [line 168] [local] [def] [scope 170] [rd_groups]
!208 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!209 = metadata !{null, metadata !23, metadata !37, metadata !37, metadata !10, metadata !112, metadata !113, metadata !112}
!210 = metadata !{metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220}
!211 = metadata !{i32 786689, metadata !207, metadata !"grps", metadata !5, i32 16777384, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 168]
!212 = metadata !{i32 786689, metadata !207, metadata !"grpname", metadata !5, i32 33554600, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grpname] [line 168]
!213 = metadata !{i32 786689, metadata !207, metadata !"gnames", metadata !5, i32 50331816, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gnames] [line 168]
!214 = metadata !{i32 786689, metadata !207, metadata !"ngrps", metadata !5, i32 67109033, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ngrps] [line 169]
!215 = metadata !{i32 786689, metadata !207, metadata !"isize", metadata !5, i32 83886249, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [isize] [line 169]
!216 = metadata !{i32 786689, metadata !207, metadata !"index", metadata !5, i32 100663465, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 169]
!217 = metadata !{i32 786689, metadata !207, metadata !"grpnr", metadata !5, i32 117440681, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grpnr] [line 169]
!218 = metadata !{i32 786688, metadata !207, metadata !"i", metadata !5, i32 171, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 171]
!219 = metadata !{i32 786688, metadata !207, metadata !"j", metadata !5, i32 171, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 171]
!220 = metadata !{i32 786688, metadata !207, metadata !"gnr1", metadata !5, i32 171, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gnr1] [line 171]
!221 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"qgroup", metadata !"qgroup", metadata !"", i32 123, metadata !222, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !224, i32 124} ; [ DW_TAG_subprogram ] [line 123] [local] [def] [scope 124] [qgroup]
!222 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!223 = metadata !{metadata !10, metadata !112}
!224 = metadata !{metadata !225}
!225 = metadata !{i32 786689, metadata !221, metadata !"a", metadata !5, i32 16777339, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 123]
!226 = metadata !{i32 43, i32 0, metadata !4, null}
!227 = metadata !{i32 47, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !4, i32 47, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!229 = metadata !{i32 49, i32 0, metadata !228, null}
!230 = metadata !{i32 48, i32 0, metadata !228, null}
!231 = metadata !{metadata !"int", metadata !232}
!232 = metadata !{metadata !"omnipotent char", metadata !233}
!233 = metadata !{metadata !"Simple C/C++ TBAA"}
!234 = metadata !{i32 52, i32 0, metadata !4, null}
!235 = metadata !{i32 54, i32 0, metadata !20, null}
!236 = metadata !{i32 58, i32 0, metadata !20, null} ; [ DW_TAG_imported_module ]
!237 = metadata !{i32 59, i32 0, metadata !20, null}
!238 = metadata !{i32 60, i32 0, metadata !20, null}
!239 = metadata !{i32 62, i32 0, metadata !20, null}
!240 = metadata !{i32 63, i32 0, metadata !20, null}
!241 = metadata !{i32 64, i32 0, metadata !20, null}
!242 = metadata !{i32 65, i32 0, metadata !20, null}
!243 = metadata !{i32 67, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !20, i32 65, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!245 = metadata !{i32 68, i32 0, metadata !244, null}
!246 = metadata !{metadata !"any pointer", metadata !232}
!247 = metadata !{i32 69, i32 0, metadata !244, null}
!248 = metadata !{i32 70, i32 0, metadata !244, null}
!249 = metadata !{i32 71, i32 0, metadata !244, null}
!250 = metadata !{i32 72, i32 0, metadata !244, null}
!251 = metadata !{i32 73, i32 0, metadata !244, null}
!252 = metadata !{i32 74, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !244, i32 73, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!254 = metadata !{i32 84, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !253, i32 82, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!256 = metadata !{i32 75, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !253, i32 74, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!258 = metadata !{i32 76, i32 0, metadata !257, null}
!259 = metadata !{i32 77, i32 0, metadata !257, null}
!260 = metadata !{i32 78, i32 0, metadata !257, null}
!261 = metadata !{i32 79, i32 0, metadata !257, null}
!262 = metadata !{i32 80, i32 0, metadata !257, null}
!263 = metadata !{i32 81, i32 0, metadata !257, null}
!264 = metadata !{i32 82, i32 0, metadata !257, null}
!265 = metadata !{i32 85, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !255, i32 84, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!267 = metadata !{i32 86, i32 0, metadata !266, null}
!268 = metadata !{i32 90, i32 0, metadata !266, null}
!269 = metadata !{i32 87, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !266, i32 86, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!271 = metadata !{i32 88, i32 0, metadata !270, null}
!272 = metadata !{i32 91, i32 0, metadata !266, null}
!273 = metadata !{i32 89, i32 0, metadata !270, null}
!274 = metadata !{i32 92, i32 0, metadata !266, null}
!275 = metadata !{i32 93, i32 0, metadata !266, null}
!276 = metadata !{i32 96, i32 0, metadata !244, null}
!277 = metadata !{i32 100, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !20, i32 98, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!279 = metadata !{i32 101, i32 0, metadata !278, null}
!280 = metadata !{i32 102, i32 0, metadata !278, null}
!281 = metadata !{i32 103, i32 0, metadata !278, null}
!282 = metadata !{i32 104, i32 0, metadata !278, null}
!283 = metadata !{i32 105, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !278, i32 105, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!285 = metadata !{i32 106, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !284, i32 105, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!287 = metadata !{i32 107, i32 0, metadata !286, null}
!288 = metadata !{i32 108, i32 0, metadata !286, null}
!289 = metadata !{i32 109, i32 0, metadata !286, null}
!290 = metadata !{i32 110, i32 0, metadata !286, null}
!291 = metadata !{i32 111, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !286, i32 111, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!293 = metadata !{i32 112, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !292, i32 111, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!295 = metadata !{i32 113, i32 0, metadata !294, null}
!296 = metadata !{i32 118, i32 0, metadata !20, null}
!297 = metadata !{i32 121, i32 0, metadata !20, null}
!298 = metadata !{i32 197, i32 0, metadata !109, null}
!299 = metadata !{i32 198, i32 0, metadata !109, null}
!300 = metadata !{i32 200, i32 0, metadata !109, null}
!301 = metadata !{i32 204, i32 0, metadata !109, null}
!302 = metadata !{i32 205, i32 0, metadata !109, null}
!303 = metadata !{i32 206, i32 0, metadata !109, null}
!304 = metadata !{i32 207, i32 0, metadata !109, null}
!305 = metadata !{i32 208, i32 0, metadata !109, null}
!306 = metadata !{i32 209, i32 0, metadata !109, null}
!307 = metadata !{i32 168, i32 0, metadata !207, null}
!308 = metadata !{i32 169, i32 0, metadata !207, null}
!309 = metadata !{i32 173, i32 0, metadata !207, null}
!310 = metadata !{i32 174, i32 0, metadata !207, null}
!311 = metadata !{i32 175, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !207, i32 175, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!313 = metadata !{i32 176, i32 0, metadata !312, null}
!314 = metadata !{i32 178, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !207, i32 178, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!316 = metadata !{i32 190, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !315, i32 178, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!318 = metadata !{i32 193, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !317, i32 192, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!320 = metadata !{i32 179, i32 0, metadata !317, null}
!321 = metadata !{i32 181, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !317, i32 180, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!323 = metadata !{i32 183, i32 0, metadata !322, null}
!324 = metadata !{i32 786689, metadata !221, metadata !"a", metadata !5, i32 16777339, metadata !112, i32 0, metadata !321} ; [ DW_TAG_arg_variable ] [a] [line 123]
!325 = metadata !{i32 123, i32 0, metadata !221, metadata !321}
!326 = metadata !{i32 125, i32 0, metadata !221, metadata !321}
!327 = metadata !{i32 126, i32 0, metadata !221, metadata !321}
!328 = metadata !{i32 127, i32 0, metadata !221, metadata !321}
!329 = metadata !{i32 182, i32 0, metadata !322, null}
!330 = metadata !{i32 184, i32 0, metadata !322, null}
!331 = metadata !{i32 186, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !317, i32 185, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!333 = metadata !{i32 187, i32 0, metadata !332, null}
!334 = metadata !{i32 189, i32 0, metadata !317, null}
!335 = metadata !{i32 191, i32 0, metadata !317, null}
!336 = metadata !{i32 192, i32 0, metadata !319, null}
!337 = metadata !{i32 195, i32 0, metadata !207, null}
!338 = metadata !{i32 211, i32 0, metadata !123, null}
!339 = metadata !{i32 212, i32 0, metadata !123, null}
!340 = metadata !{i32 214, i32 0, metadata !123, null}
!341 = metadata !{i32 217, i32 0, metadata !123, null}
!342 = metadata !{i32 218, i32 0, metadata !123, null}
!343 = metadata !{i32 219, i32 0, metadata !123, null}
!344 = metadata !{i32 221, i32 0, metadata !123, null}
!345 = metadata !{i32 222, i32 0, metadata !123, null}
!346 = metadata !{i32 224, i32 0, metadata !135, null}
!347 = metadata !{i32 225, i32 0, metadata !135, null}
!348 = metadata !{i32 231, i32 0, metadata !135, null}
!349 = metadata !{i32 232, i32 0, metadata !135, null}
!350 = metadata !{i32 233, i32 0, metadata !135, null}
!351 = metadata !{i32 234, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !135, i32 233, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!353 = metadata !{i32 235, i32 0, metadata !352, null}
!354 = metadata !{i32 237, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !135, i32 236, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c]
!356 = metadata !{i32 238, i32 0, metadata !355, null}
!357 = metadata !{i32 239, i32 0, metadata !355, null}
!358 = metadata !{i32 241, i32 0, metadata !135, null}
!359 = metadata !{i32 242, i32 0, metadata !135, null}
