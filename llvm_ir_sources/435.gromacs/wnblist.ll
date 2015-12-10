; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }

@.str = private unnamed_addr constant [37 x i8] c"EOF when looking for '%s' in logfile\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"Neighborlist:\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"%*s%d%*s%d\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"Not enough arguments read line %d\00", align 1
@.str4 = private unnamed_addr constant [21 x i8] c"%*s%d%*s%d%*s%d%*s%d\00", align 1
@.str5 = private unnamed_addr constant [21 x i8] c"iatom = %d (max %d)\0A\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"%*s%d\00", align 1
@.str7 = private unnamed_addr constant [36 x i8] c"mat[%d][%d] changing from %d to %d\0A\00", align 1
@.str8 = private unnamed_addr constant [20 x i8] c"nri = %d  nrj = %d\0A\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str10 = private unnamed_addr constant [25 x i8] c"il_code: %d solvent: %d\0A\00", align 1
@.str11 = private unnamed_addr constant [18 x i8] c"nri: %d  nrj: %d\0A\00", align 1
@.str12 = private unnamed_addr constant [32 x i8] c"i: %d shift: %d gid: %d nj: %d\0A\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"  j: %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @read_nblist(%struct._IO_FILE* %in, %struct._IO_FILE* nocapture %log, i32** nocapture %mat, i32 %natoms) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %j = alloca i32, align 4
  %nri = alloca i32, align 4
  %il_code = alloca i32, align 4
  %solv = alloca i32, align 4
  %iatom = alloca i32, align 4
  %nrj = alloca i32, align 4
  %nj = alloca i32, align 4
  %shift = alloca i32, align 4
  %gid = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %in}, i64 0, metadata !87), !dbg !241
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !88), !dbg !241
  call void @llvm.dbg.value(metadata !{i32** %mat}, i64 0, metadata !89), !dbg !241
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !90), !dbg !241
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !242
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !242
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !92), !dbg !242
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !103), !dbg !243
  call void @llvm.dbg.declare(metadata !{i32* %nri}, metadata !107), !dbg !243
  call void @llvm.dbg.declare(metadata !{i32* %il_code}, metadata !108), !dbg !243
  call void @llvm.dbg.declare(metadata !{i32* %solv}, metadata !109), !dbg !243
  call void @llvm.dbg.declare(metadata !{i32* %iatom}, metadata !110), !dbg !244
  call void @llvm.dbg.declare(metadata !{i32* %nrj}, metadata !111), !dbg !244
  call void @llvm.dbg.declare(metadata !{i32* %nj}, metadata !112), !dbg !244
  call void @llvm.dbg.declare(metadata !{i32* %shift}, metadata !113), !dbg !244
  call void @llvm.dbg.declare(metadata !{i32* %gid}, metadata !114), !dbg !244
  br label %do.body, !dbg !245

do.body:                                          ; preds = %do.cond, %entry
  %call = call i8* @fgets2(i8* %0, i32 255, %struct._IO_FILE* %in) #6, !dbg !246
  %cmp = icmp eq i8* %call, null, !dbg !246
  br i1 %cmp, label %if.then, label %do.cond, !dbg !246

if.then:                                          ; preds = %do.body
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !248
  br label %do.cond, !dbg !248

do.cond:                                          ; preds = %do.body, %if.then
  %call2 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !249
  %cmp3 = icmp eq i8* %call2, null, !dbg !249
  br i1 %cmp3, label %do.body, label %do.body4.preheader, !dbg !249

do.body4.preheader:                               ; preds = %do.cond
  %call573 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %in, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32* %il_code, i32* %solv) #6, !dbg !250
  %cmp674 = icmp eq i32 %call573, 2, !dbg !250
  br i1 %cmp674, label %if.end8, label %do.end54, !dbg !250

if.end8:                                          ; preds = %do.body4.preheader, %for.end51
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %in, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32* %nri, i32* %nrj) #6, !dbg !252
  %cmp10 = icmp eq i32 %call9, 2, !dbg !252
  br i1 %cmp10, label %for.cond.preheader, label %if.then11, !dbg !252

if.then11:                                        ; preds = %if.end8
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 77) #6, !dbg !253
  br label %for.cond.preheader, !dbg !253

for.cond.preheader:                               ; preds = %if.end8, %if.then11
  call void @llvm.dbg.value(metadata !{i32* %nri}, i64 0, metadata !107), !dbg !254
  %1 = load i32* %nri, align 4, !dbg !254, !tbaa !256
  %cmp1371 = icmp sgt i32 %1, 0, !dbg !254
  br i1 %cmp1371, label %for.body, label %for.end51, !dbg !254

for.body:                                         ; preds = %for.cond.preheader, %for.inc49
  %ii.072 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond.preheader ]
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %in, i8* getelementptr inbounds ([21 x i8]* @.str4, i64 0, i64 0), i32* %iatom, i32* %gid, i32* %shift, i32* %nj) #6, !dbg !259
  %cmp15 = icmp eq i32 %call14, 4, !dbg !259
  br i1 %cmp15, label %if.end17, label %if.then16, !dbg !259

if.then16:                                        ; preds = %for.body
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 80) #6, !dbg !261
  br label %if.end17, !dbg !261

if.end17:                                         ; preds = %for.body, %if.then16
  call void @llvm.dbg.value(metadata !{i32* %shift}, i64 0, metadata !113), !dbg !262
  %2 = load i32* %shift, align 4, !dbg !262, !tbaa !256
  %add = add nsw i32 %2, 1, !dbg !262
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !113), !dbg !262
  store i32 %add, i32* %shift, align 4, !dbg !262, !tbaa !256
  call void @llvm.dbg.value(metadata !{i32* %iatom}, i64 0, metadata !110), !dbg !263
  %3 = load i32* %iatom, align 4, !dbg !263, !tbaa !256
  %cmp18 = icmp sgt i32 %3, -1, !dbg !263
  %cmp19 = icmp slt i32 %3, %natoms, !dbg !263
  %or.cond = and i1 %cmp18, %cmp19, !dbg !263
  br i1 %or.cond, label %if.end21, label %if.then20, !dbg !263

if.then20:                                        ; preds = %if.end17
  call void @llvm.dbg.value(metadata !{i32* %iatom}, i64 0, metadata !110), !dbg !264
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str5, i64 0, i64 0), i32 %3, i32 %natoms) #6, !dbg !264
  br label %if.end21, !dbg !264

if.end21:                                         ; preds = %if.end17, %if.then20
  call void @llvm.dbg.value(metadata !{i32* %nj}, i64 0, metadata !112), !dbg !265
  %4 = load i32* %nj, align 4, !dbg !265, !tbaa !256
  call void @llvm.dbg.value(metadata !{i32* %nrj}, i64 0, metadata !111), !dbg !265
  %5 = load i32* %nrj, align 4, !dbg !265, !tbaa !256
  %add22 = add nsw i32 %5, %4, !dbg !265
  call void @llvm.dbg.value(metadata !{i32 %add22}, i64 0, metadata !111), !dbg !265
  store i32 %add22, i32* %nrj, align 4, !dbg !265, !tbaa !256
  call void @llvm.dbg.value(metadata !20, i64 0, metadata !101), !dbg !266
  call void @llvm.dbg.value(metadata !{i32* %nj}, i64 0, metadata !112), !dbg !266
  %cmp2469 = icmp sgt i32 %4, 0, !dbg !266
  br i1 %cmp2469, label %for.body25, label %for.inc49, !dbg !266

for.body25:                                       ; preds = %if.end21, %if.end44
  %i.070 = phi i32 [ %inc, %if.end44 ], [ 0, %if.end21 ]
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %in, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i32* %j) #6, !dbg !268
  %cmp27 = icmp eq i32 %call26, 1, !dbg !268
  br i1 %cmp27, label %if.end29, label %if.then28, !dbg !268

if.then28:                                        ; preds = %for.body25
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 90) #6, !dbg !270
  br label %if.end29, !dbg !270

if.end29:                                         ; preds = %for.body25, %if.then28
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !103), !dbg !271
  %6 = load i32* %j, align 4, !dbg !271, !tbaa !256
  %cmp30 = icmp sgt i32 %6, -1, !dbg !271
  %cmp32 = icmp slt i32 %6, %natoms, !dbg !271
  %or.cond68 = and i1 %cmp30, %cmp32, !dbg !271
  br i1 %or.cond68, label %if.end34, label %if.then33, !dbg !271

if.then33:                                        ; preds = %if.end29
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !103), !dbg !272
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str5, i64 0, i64 0), i32 %6, i32 %natoms) #6, !dbg !272
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !103), !dbg !273
  %.pre = load i32* %j, align 4, !dbg !273, !tbaa !256
  br label %if.end34, !dbg !272

if.end34:                                         ; preds = %if.end29, %if.then33
  %7 = phi i32 [ %6, %if.end29 ], [ %.pre, %if.then33 ]
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !103), !dbg !273
  %idxprom = sext i32 %7 to i64, !dbg !273
  call void @llvm.dbg.value(metadata !{i32* %iatom}, i64 0, metadata !110), !dbg !273
  %8 = load i32* %iatom, align 4, !dbg !273, !tbaa !256
  %idxprom35 = sext i32 %8 to i64, !dbg !273
  %arrayidx = getelementptr inbounds i32** %mat, i64 %idxprom35, !dbg !273
  %9 = load i32** %arrayidx, align 8, !dbg !273, !tbaa !274
  %arrayidx36 = getelementptr inbounds i32* %9, i64 %idxprom, !dbg !273
  %10 = load i32* %arrayidx36, align 4, !dbg !273, !tbaa !256
  %cmp37 = icmp eq i32 %10, 0, !dbg !273
  br i1 %cmp37, label %if.end44, label %if.then38, !dbg !273

if.then38:                                        ; preds = %if.end34
  call void @llvm.dbg.value(metadata !{i32* %shift}, i64 0, metadata !113), !dbg !275
  %11 = load i32* %shift, align 4, !dbg !275, !tbaa !256
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([36 x i8]* @.str7, i64 0, i64 0), i32 %i.070, i32 %7, i32 %10, i32 %11) #6, !dbg !275
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !103), !dbg !276
  %.pre76 = load i32* %j, align 4, !dbg !276, !tbaa !256
  call void @llvm.dbg.value(metadata !{i32* %iatom}, i64 0, metadata !110), !dbg !276
  %.pre77 = load i32* %iatom, align 4, !dbg !276, !tbaa !256
  %idxprom46.phi.trans.insert = sext i32 %.pre77 to i64
  %arrayidx47.phi.trans.insert = getelementptr inbounds i32** %mat, i64 %idxprom46.phi.trans.insert
  %.pre78 = load i32** %arrayidx47.phi.trans.insert, align 8, !dbg !276, !tbaa !274
  br label %if.end44, !dbg !275

if.end44:                                         ; preds = %if.end34, %if.then38
  %12 = phi i32* [ %9, %if.end34 ], [ %.pre78, %if.then38 ]
  %13 = phi i32 [ %7, %if.end34 ], [ %.pre76, %if.then38 ]
  call void @llvm.dbg.value(metadata !{i32* %shift}, i64 0, metadata !113), !dbg !276
  %14 = load i32* %shift, align 4, !dbg !276, !tbaa !256
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !103), !dbg !276
  %idxprom45 = sext i32 %13 to i64, !dbg !276
  call void @llvm.dbg.value(metadata !{i32* %iatom}, i64 0, metadata !110), !dbg !276
  %arrayidx48 = getelementptr inbounds i32* %12, i64 %idxprom45, !dbg !276
  store i32 %14, i32* %arrayidx48, align 4, !dbg !276, !tbaa !256
  %inc = add nsw i32 %i.070, 1, !dbg !266
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !101), !dbg !266
  call void @llvm.dbg.value(metadata !{i32* %nj}, i64 0, metadata !112), !dbg !266
  %15 = load i32* %nj, align 4, !dbg !266, !tbaa !256
  %cmp24 = icmp slt i32 %inc, %15, !dbg !266
  br i1 %cmp24, label %for.body25, label %for.inc49, !dbg !266

for.inc49:                                        ; preds = %if.end44, %if.end21
  %inc50 = add nsw i32 %ii.072, 1, !dbg !254
  call void @llvm.dbg.value(metadata !{i32 %inc50}, i64 0, metadata !102), !dbg !254
  call void @llvm.dbg.value(metadata !{i32* %nri}, i64 0, metadata !107), !dbg !254
  %16 = load i32* %nri, align 4, !dbg !254, !tbaa !256
  %cmp13 = icmp slt i32 %inc50, %16, !dbg !254
  br i1 %cmp13, label %for.body, label %for.end51, !dbg !254

for.end51:                                        ; preds = %for.inc49, %for.cond.preheader
  %.lcssa = phi i32 [ %1, %for.cond.preheader ], [ %16, %for.inc49 ]
  call void @llvm.dbg.value(metadata !{i32* %nrj}, i64 0, metadata !111), !dbg !277
  %17 = load i32* %nrj, align 4, !dbg !277, !tbaa !256
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str8, i64 0, i64 0), i32 %.lcssa, i32 %17) #6, !dbg !277
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %in, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32* %il_code, i32* %solv) #6, !dbg !250
  %cmp6 = icmp eq i32 %call5, 2, !dbg !250
  br i1 %cmp6, label %if.end8, label %do.end54, !dbg !250

do.end54:                                         ; preds = %for.end51, %do.body4.preheader
  call void @llvm.lifetime.end(i64 256, i8* %0) #2, !dbg !278
  ret void, !dbg !278
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @dump_nblist(%struct._IO_FILE* nocapture %out, %struct.t_forcerec* nocapture %fr, i32 %nDNL) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !223), !dbg !279
  tail call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !224), !dbg !279
  tail call void @llvm.dbg.value(metadata !{i32 %nDNL}, i64 0, metadata !225), !dbg !279
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !280
  tail call void @llvm.dbg.value(metadata !20, i64 0, metadata !226), !dbg !281
  br label %for.body, !dbg !281

for.body:                                         ; preds = %write_nblist.exit, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %write_nblist.exit ]
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !283) #2, !dbg !285
  %il_code.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 0, !dbg !286
  %0 = load i32* %il_code.i, align 4, !dbg !286, !tbaa !256
  %solvent.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 6, !dbg !286
  %1 = load i32* %solvent.i, align 4, !dbg !286, !tbaa !256
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0), i32 %0, i32 %1) #6, !dbg !286
  %nri.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 1, !dbg !287
  %2 = load i32* %nri.i, align 4, !dbg !287, !tbaa !256
  %nrj.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 3, !dbg !287
  %3 = load i32* %nrj.i, align 4, !dbg !287, !tbaa !256
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i32 %2, i32 %3) #6, !dbg !287
  tail call void @llvm.dbg.value(metadata !20, i64 0, metadata !288) #2, !dbg !289
  %4 = load i32* %nri.i, align 4, !dbg !289, !tbaa !256
  %cmp59.i = icmp sgt i32 %4, 0, !dbg !289
  br i1 %cmp59.i, label %for.body.lr.ph.i, label %write_nblist.exit, !dbg !289

for.body.lr.ph.i:                                 ; preds = %for.body
  %jindex.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 10, !dbg !291
  %iinr.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 7, !dbg !293
  %shift.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 9, !dbg !293
  %gid.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 8, !dbg !293
  %jjnr.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 11, !dbg !294
  %.pre.i = load i32** %jindex.i, align 8, !dbg !291, !tbaa !274
  br label %for.body.i, !dbg !289

for.cond.loopexit.i:                              ; preds = %for.body22.i, %for.body.i
  %5 = phi i32* [ %17, %for.body.i ], [ %23, %for.body22.i ]
  %6 = load i32* %nri.i, align 4, !dbg !289, !tbaa !256
  %7 = trunc i64 %indvars.iv.next62.i to i32, !dbg !289
  %cmp.i = icmp slt i32 %7, %6, !dbg !289
  br i1 %cmp.i, label %for.body.i, label %write_nblist.exit, !dbg !289

for.body.i:                                       ; preds = %for.cond.loopexit.i, %for.body.lr.ph.i
  %8 = phi i32* [ %.pre.i, %for.body.lr.ph.i ], [ %5, %for.cond.loopexit.i ], !dbg !289
  %indvars.iv61.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next62.i, %for.cond.loopexit.i ]
  %indvars.iv.next62.i = add i64 %indvars.iv61.i, 1, !dbg !289
  %arrayidx.i = getelementptr inbounds i32* %8, i64 %indvars.iv.next62.i, !dbg !291
  %9 = load i32* %arrayidx.i, align 4, !dbg !291, !tbaa !256
  %arrayidx5.i = getelementptr inbounds i32* %8, i64 %indvars.iv61.i, !dbg !291
  %10 = load i32* %arrayidx5.i, align 4, !dbg !291, !tbaa !256
  %sub.i = sub nsw i32 %9, %10, !dbg !291
  tail call void @llvm.dbg.value(metadata !{i32 %sub.i}, i64 0, metadata !296) #2, !dbg !291
  %11 = load i32** %iinr.i, align 8, !dbg !293, !tbaa !274
  %arrayidx7.i = getelementptr inbounds i32* %11, i64 %indvars.iv61.i, !dbg !293
  %12 = load i32* %arrayidx7.i, align 4, !dbg !293, !tbaa !256
  %13 = load i32** %shift.i, align 8, !dbg !293, !tbaa !274
  %arrayidx9.i = getelementptr inbounds i32* %13, i64 %indvars.iv61.i, !dbg !293
  %14 = load i32* %arrayidx9.i, align 4, !dbg !293, !tbaa !256
  %15 = load i32** %gid.i, align 8, !dbg !293, !tbaa !274
  %arrayidx11.i = getelementptr inbounds i32* %15, i64 %indvars.iv61.i, !dbg !293
  %16 = load i32* %arrayidx11.i, align 4, !dbg !293, !tbaa !256
  %call12.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([32 x i8]* @.str12, i64 0, i64 0), i32 %12, i32 %14, i32 %16, i32 %sub.i) #6, !dbg !293
  %17 = load i32** %jindex.i, align 8, !dbg !297, !tbaa !274
  %arrayidx15.i = getelementptr inbounds i32* %17, i64 %indvars.iv61.i, !dbg !297
  %18 = load i32* %arrayidx15.i, align 4, !dbg !297, !tbaa !256
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !298) #2, !dbg !297
  %arrayidx2056.i = getelementptr inbounds i32* %17, i64 %indvars.iv.next62.i, !dbg !297
  %19 = load i32* %arrayidx2056.i, align 4, !dbg !297, !tbaa !256
  %cmp2157.i = icmp slt i32 %18, %19, !dbg !297
  br i1 %cmp2157.i, label %for.body22.lr.ph.i, label %for.cond.loopexit.i, !dbg !297

for.body22.lr.ph.i:                               ; preds = %for.body.i
  %20 = sext i32 %18 to i64
  br label %for.body22.i, !dbg !297

for.body22.i:                                     ; preds = %for.body22.i, %for.body22.lr.ph.i
  %indvars.iv.i = phi i64 [ %20, %for.body22.lr.ph.i ], [ %indvars.iv.next.i, %for.body22.i ]
  %21 = load i32** %jjnr.i, align 8, !dbg !294, !tbaa !274
  %arrayidx24.i = getelementptr inbounds i32* %21, i64 %indvars.iv.i, !dbg !294
  %22 = load i32* %arrayidx24.i, align 4, !dbg !294, !tbaa !256
  %call25.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i32 %22) #6, !dbg !294
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !297
  %23 = load i32** %jindex.i, align 8, !dbg !297, !tbaa !274
  %arrayidx20.i = getelementptr inbounds i32* %23, i64 %indvars.iv.next62.i, !dbg !297
  %24 = load i32* %arrayidx20.i, align 4, !dbg !297, !tbaa !256
  %25 = trunc i64 %indvars.iv.next.i to i32, !dbg !297
  %cmp21.i = icmp slt i32 %25, %24, !dbg !297
  br i1 %cmp21.i, label %for.body22.i, label %for.cond.loopexit.i, !dbg !297

write_nblist.exit:                                ; preds = %for.cond.loopexit.i, %for.body
  %call29.i = tail call i32 @fflush(%struct._IO_FILE* %out) #6, !dbg !299
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !281
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !281
  %exitcond = icmp eq i32 %lftr.wideiv, 13, !dbg !281
  br i1 %exitcond, label %for.end, label %for.body, !dbg !281

for.end:                                          ; preds = %write_nblist.exit
  ret void, !dbg !300
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !20, metadata !21, metadata !20, metadata !20, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 36, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 36, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/forcerec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!6 = metadata !{i32 786472, metadata !"eNL_VDWQQ", i64 0} ; [ DW_TAG_enumerator ] [eNL_VDWQQ :: 0]
!7 = metadata !{i32 786472, metadata !"eNL_VDW", i64 1} ; [ DW_TAG_enumerator ] [eNL_VDW :: 1]
!8 = metadata !{i32 786472, metadata !"eNL_QQ", i64 2} ; [ DW_TAG_enumerator ] [eNL_QQ :: 2]
!9 = metadata !{i32 786472, metadata !"eNL_VDWQQ_FREE", i64 3} ; [ DW_TAG_enumerator ] [eNL_VDWQQ_FREE :: 3]
!10 = metadata !{i32 786472, metadata !"eNL_VDW_FREE", i64 4} ; [ DW_TAG_enumerator ] [eNL_VDW_FREE :: 4]
!11 = metadata !{i32 786472, metadata !"eNL_QQ_FREE", i64 5} ; [ DW_TAG_enumerator ] [eNL_QQ_FREE :: 5]
!12 = metadata !{i32 786472, metadata !"eNL_VDWQQ_SOLMNO", i64 6} ; [ DW_TAG_enumerator ] [eNL_VDWQQ_SOLMNO :: 6]
!13 = metadata !{i32 786472, metadata !"eNL_VDW_SOLMNO", i64 7} ; [ DW_TAG_enumerator ] [eNL_VDW_SOLMNO :: 7]
!14 = metadata !{i32 786472, metadata !"eNL_QQ_SOLMNO", i64 8} ; [ DW_TAG_enumerator ] [eNL_QQ_SOLMNO :: 8]
!15 = metadata !{i32 786472, metadata !"eNL_VDWQQ_WATER", i64 9} ; [ DW_TAG_enumerator ] [eNL_VDWQQ_WATER :: 9]
!16 = metadata !{i32 786472, metadata !"eNL_QQ_WATER", i64 10} ; [ DW_TAG_enumerator ] [eNL_QQ_WATER :: 10]
!17 = metadata !{i32 786472, metadata !"eNL_VDWQQ_WATERWATER", i64 11} ; [ DW_TAG_enumerator ] [eNL_VDWQQ_WATERWATER :: 11]
!18 = metadata !{i32 786472, metadata !"eNL_QQ_WATERWATER", i64 12} ; [ DW_TAG_enumerator ] [eNL_QQ_WATERWATER :: 12]
!19 = metadata !{i32 786472, metadata !"eNL_NR", i64 13} ; [ DW_TAG_enumerator ] [eNL_NR :: 13]
!20 = metadata !{i32 0}
!21 = metadata !{metadata !22, metadata !115, metadata !227}
!22 = metadata !{i32 786478, metadata !1, metadata !23, metadata !"read_nblist", metadata !"read_nblist", metadata !"", i32 61, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct._IO_FILE*, i32**, i32)* @read_nblist, null, null, metadata !86, i32 62} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 62] [read_nblist]
!23 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !26, metadata !26, metadata !84, metadata !32}
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!27 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!28 = metadata !{i32 786451, metadata !29, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!29 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !33, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !54, metadata !55, metadata !56, metadata !57, metadata !60, metadata !62, metadata !64, metadata !68, metadata !70, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !79, metadata !80}
!31 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!32 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!33 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!35 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!36 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!37 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!38 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!39 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!40 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!41 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!42 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!43 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!44 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!45 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!46 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !47} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!48 = metadata !{i32 786451, metadata !29, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !51, metadata !53}
!50 = metadata !{i32 786445, metadata !29, metadata !48, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!51 = metadata !{i32 786445, metadata !29, metadata !48, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!53 = metadata !{i32 786445, metadata !29, metadata !48, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!54 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !52} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!55 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !32} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!56 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !32} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!57 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !58} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!58 = metadata !{i32 786454, metadata !29, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!59 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!60 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !61} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!61 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!62 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !63} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!63 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!64 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !65} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!65 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !35, metadata !66, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!68 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !69} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!69 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!70 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !71} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!71 = metadata !{i32 786454, metadata !29, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!72 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !69} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!73 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !69} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!74 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !69} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!75 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !69} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!76 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !77} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!77 = metadata !{i32 786454, metadata !29, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!78 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!79 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !32} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!80 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !81} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!81 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !35, metadata !82, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !96, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114}
!87 = metadata !{i32 786689, metadata !22, metadata !"in", metadata !23, i32 16777277, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 61]
!88 = metadata !{i32 786689, metadata !22, metadata !"log", metadata !23, i32 33554493, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 61]
!89 = metadata !{i32 786689, metadata !22, metadata !"mat", metadata !23, i32 50331709, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mat] [line 61]
!90 = metadata !{i32 786689, metadata !22, metadata !"natoms", metadata !23, i32 67108925, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 61]
!91 = metadata !{i32 786688, metadata !22, metadata !"bNL", metadata !23, i32 63, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bNL] [line 63]
!92 = metadata !{i32 786688, metadata !22, metadata !"buf", metadata !23, i32 64, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 64]
!93 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !35, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!96 = metadata !{i32 786688, metadata !22, metadata !"b1", metadata !23, i32 64, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b1] [line 64]
!97 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !35, metadata !98, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from char]
!98 = metadata !{metadata !99}
!99 = metadata !{i32 786465, i64 0, i64 32}       ; [ DW_TAG_subrange_type ] [0, 31]
!100 = metadata !{i32 786688, metadata !22, metadata !"b2", metadata !23, i32 64, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b2] [line 64]
!101 = metadata !{i32 786688, metadata !22, metadata !"i", metadata !23, i32 65, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 65]
!102 = metadata !{i32 786688, metadata !22, metadata !"ii", metadata !23, i32 65, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 65]
!103 = metadata !{i32 786688, metadata !22, metadata !"j", metadata !23, i32 65, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 65]
!104 = metadata !{i32 786688, metadata !22, metadata !"nnbl", metadata !23, i32 65, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnbl] [line 65]
!105 = metadata !{i32 786688, metadata !22, metadata !"full", metadata !23, i32 65, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [full] [line 65]
!106 = metadata !{i32 786688, metadata !22, metadata !"icmp", metadata !23, i32 65, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icmp] [line 65]
!107 = metadata !{i32 786688, metadata !22, metadata !"nri", metadata !23, i32 65, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nri] [line 65]
!108 = metadata !{i32 786688, metadata !22, metadata !"il_code", metadata !23, i32 65, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [il_code] [line 65]
!109 = metadata !{i32 786688, metadata !22, metadata !"solv", metadata !23, i32 65, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [solv] [line 65]
!110 = metadata !{i32 786688, metadata !22, metadata !"iatom", metadata !23, i32 66, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iatom] [line 66]
!111 = metadata !{i32 786688, metadata !22, metadata !"nrj", metadata !23, i32 66, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrj] [line 66]
!112 = metadata !{i32 786688, metadata !22, metadata !"nj", metadata !23, i32 66, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nj] [line 66]
!113 = metadata !{i32 786688, metadata !22, metadata !"shift", metadata !23, i32 66, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 66]
!114 = metadata !{i32 786688, metadata !22, metadata !"gid", metadata !23, i32 66, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gid] [line 66]
!115 = metadata !{i32 786478, metadata !1, metadata !23, metadata !"dump_nblist", metadata !"dump_nblist", metadata !"", i32 103, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_forcerec*, i32)* @dump_nblist, null, null, metadata !222, i32 104} ; [ DW_TAG_subprogram ] [line 103] [def] [scope 104] [dump_nblist]
!116 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!117 = metadata !{null, metadata !26, metadata !118, metadata !32}
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_forcerec]
!119 = metadata !{i32 786454, metadata !1, null, metadata !"t_forcerec", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [t_forcerec] [line 149, size 0, align 0, offset 0] [from ]
!120 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 43, i64 22784, i64 64, i32 0, i32 0, null, metadata !121, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 43, size 22784, align 64, offset 0] [from ]
!121 = metadata !{metadata !122, metadata !123, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !178, metadata !179, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221}
!122 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"ePBC", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [ePBC] [line 45, size 32, align 32, offset 0] [from int]
!123 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"rlist", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !124} ; [ DW_TAG_member ] [rlist] [line 46, size 32, align 32, offset 32] [from real]
!124 = metadata !{i32 786454, metadata !4, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!125 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!126 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"rlistlong", i32 46, i64 32, i64 32, i64 64, i32 0, metadata !124} ; [ DW_TAG_member ] [rlistlong] [line 46, size 32, align 32, offset 64] [from real]
!127 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"zsquare", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !124} ; [ DW_TAG_member ] [zsquare] [line 49, size 32, align 32, offset 96] [from real]
!128 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"temp", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !124} ; [ DW_TAG_member ] [temp] [line 49, size 32, align 32, offset 128] [from real]
!129 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"epsilon_r", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !124} ; [ DW_TAG_member ] [epsilon_r] [line 50, size 32, align 32, offset 160] [from real]
!130 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"epsfac", i32 50, i64 32, i64 32, i64 192, i32 0, metadata !124} ; [ DW_TAG_member ] [epsfac] [line 50, size 32, align 32, offset 192] [from real]
!131 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"bRF", i32 53, i64 32, i64 32, i64 224, i32 0, metadata !32} ; [ DW_TAG_member ] [bRF] [line 53, size 32, align 32, offset 224] [from int]
!132 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"kappa", i32 54, i64 32, i64 32, i64 256, i32 0, metadata !124} ; [ DW_TAG_member ] [kappa] [line 54, size 32, align 32, offset 256] [from real]
!133 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"k_rf", i32 54, i64 32, i64 32, i64 288, i32 0, metadata !124} ; [ DW_TAG_member ] [k_rf] [line 54, size 32, align 32, offset 288] [from real]
!134 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"c_rf", i32 54, i64 32, i64 32, i64 320, i32 0, metadata !124} ; [ DW_TAG_member ] [c_rf] [line 54, size 32, align 32, offset 320] [from real]
!135 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"avcsix", i32 57, i64 32, i64 32, i64 352, i32 0, metadata !124} ; [ DW_TAG_member ] [avcsix] [line 57, size 32, align 32, offset 352] [from real]
!136 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"fudgeQQ", i32 60, i64 32, i64 32, i64 384, i32 0, metadata !124} ; [ DW_TAG_member ] [fudgeQQ] [line 60, size 32, align 32, offset 384] [from real]
!137 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"bcoultab", i32 63, i64 32, i64 32, i64 416, i32 0, metadata !32} ; [ DW_TAG_member ] [bcoultab] [line 63, size 32, align 32, offset 416] [from int]
!138 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"bvdwtab", i32 64, i64 32, i64 32, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ] [bvdwtab] [line 64, size 32, align 32, offset 448] [from int]
!139 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"rtab", i32 65, i64 32, i64 32, i64 480, i32 0, metadata !124} ; [ DW_TAG_member ] [rtab] [line 65, size 32, align 32, offset 480] [from real]
!140 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"ntab", i32 66, i64 32, i64 32, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [ntab] [line 66, size 32, align 32, offset 512] [from int]
!141 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"tabscale", i32 67, i64 32, i64 32, i64 544, i32 0, metadata !124} ; [ DW_TAG_member ] [tabscale] [line 67, size 32, align 32, offset 544] [from real]
!142 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"coultab", i32 69, i64 64, i64 64, i64 576, i32 0, metadata !143} ; [ DW_TAG_member ] [coultab] [line 69, size 64, align 64, offset 576] [from ]
!143 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !124} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!144 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"vdwtab", i32 70, i64 64, i64 64, i64 640, i32 0, metadata !143} ; [ DW_TAG_member ] [vdwtab] [line 70, size 64, align 64, offset 640] [from ]
!145 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"coulvdwtab", i32 71, i64 64, i64 64, i64 704, i32 0, metadata !143} ; [ DW_TAG_member ] [coulvdwtab] [line 71, size 64, align 64, offset 704] [from ]
!146 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"coulvdw14tab", i32 72, i64 64, i64 64, i64 768, i32 0, metadata !143} ; [ DW_TAG_member ] [coulvdw14tab] [line 72, size 64, align 64, offset 768] [from ]
!147 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"rcoulomb_switch", i32 75, i64 32, i64 32, i64 832, i32 0, metadata !124} ; [ DW_TAG_member ] [rcoulomb_switch] [line 75, size 32, align 32, offset 832] [from real]
!148 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"rcoulomb", i32 75, i64 32, i64 32, i64 864, i32 0, metadata !124} ; [ DW_TAG_member ] [rcoulomb] [line 75, size 32, align 32, offset 864] [from real]
!149 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"phi", i32 76, i64 64, i64 64, i64 896, i32 0, metadata !143} ; [ DW_TAG_member ] [phi] [line 76, size 64, align 64, offset 896] [from ]
!150 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"rvdw_switch", i32 79, i64 32, i64 32, i64 960, i32 0, metadata !124} ; [ DW_TAG_member ] [rvdw_switch] [line 79, size 32, align 32, offset 960] [from real]
!151 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"rvdw", i32 79, i64 32, i64 32, i64 992, i32 0, metadata !124} ; [ DW_TAG_member ] [rvdw] [line 79, size 32, align 32, offset 992] [from real]
!152 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"bham_b_max", i32 80, i64 32, i64 32, i64 1024, i32 0, metadata !124} ; [ DW_TAG_member ] [bham_b_max] [line 80, size 32, align 32, offset 1024] [from real]
!153 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"tabscale_exp", i32 81, i64 32, i64 32, i64 1056, i32 0, metadata !124} ; [ DW_TAG_member ] [tabscale_exp] [line 81, size 32, align 32, offset 1056] [from real]
!154 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"efep", i32 84, i64 32, i64 32, i64 1088, i32 0, metadata !32} ; [ DW_TAG_member ] [efep] [line 84, size 32, align 32, offset 1088] [from int]
!155 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"sc_alpha", i32 85, i64 32, i64 32, i64 1120, i32 0, metadata !124} ; [ DW_TAG_member ] [sc_alpha] [line 85, size 32, align 32, offset 1120] [from real]
!156 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"sc_sigma6", i32 86, i64 32, i64 32, i64 1152, i32 0, metadata !124} ; [ DW_TAG_member ] [sc_sigma6] [line 86, size 32, align 32, offset 1152] [from real]
!157 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"bSepDVDL", i32 87, i64 32, i64 32, i64 1184, i32 0, metadata !32} ; [ DW_TAG_member ] [bSepDVDL] [line 87, size 32, align 32, offset 1184] [from int]
!158 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"eeltype", i32 90, i64 32, i64 32, i64 1216, i32 0, metadata !32} ; [ DW_TAG_member ] [eeltype] [line 90, size 32, align 32, offset 1216] [from int]
!159 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"vdwtype", i32 91, i64 32, i64 32, i64 1248, i32 0, metadata !32} ; [ DW_TAG_member ] [vdwtype] [line 91, size 32, align 32, offset 1248] [from int]
!160 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"cg0", i32 92, i64 32, i64 32, i64 1280, i32 0, metadata !32} ; [ DW_TAG_member ] [cg0] [line 92, size 32, align 32, offset 1280] [from int]
!161 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"hcg", i32 92, i64 32, i64 32, i64 1312, i32 0, metadata !32} ; [ DW_TAG_member ] [hcg] [line 92, size 32, align 32, offset 1312] [from int]
!162 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"ndelta", i32 93, i64 32, i64 32, i64 1344, i32 0, metadata !32} ; [ DW_TAG_member ] [ndelta] [line 93, size 32, align 32, offset 1344] [from int]
!163 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"bSolvOpt", i32 94, i64 32, i64 32, i64 1376, i32 0, metadata !32} ; [ DW_TAG_member ] [bSolvOpt] [line 94, size 32, align 32, offset 1376] [from int]
!164 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"nMNOMol", i32 95, i64 32, i64 32, i64 1408, i32 0, metadata !32} ; [ DW_TAG_member ] [nMNOMol] [line 95, size 32, align 32, offset 1408] [from int]
!165 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"nMNOav", i32 96, i64 96, i64 32, i64 1440, i32 0, metadata !166} ; [ DW_TAG_member ] [nMNOav] [line 96, size 96, align 32, offset 1440] [from ]
!166 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !124, metadata !167, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!167 = metadata !{metadata !168}
!168 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!169 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"nWatMol", i32 97, i64 32, i64 32, i64 1536, i32 0, metadata !32} ; [ DW_TAG_member ] [nWatMol] [line 97, size 32, align 32, offset 1536] [from int]
!170 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"Dimension", i32 98, i64 32, i64 32, i64 1568, i32 0, metadata !32} ; [ DW_TAG_member ] [Dimension] [line 98, size 32, align 32, offset 1568] [from int]
!171 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"bGrid", i32 99, i64 32, i64 32, i64 1600, i32 0, metadata !32} ; [ DW_TAG_member ] [bGrid] [line 99, size 32, align 32, offset 1600] [from int]
!172 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"bDomDecomp", i32 99, i64 32, i64 32, i64 1632, i32 0, metadata !32} ; [ DW_TAG_member ] [bDomDecomp] [line 99, size 32, align 32, offset 1632] [from int]
!173 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"solvent_type", i32 100, i64 64, i64 64, i64 1664, i32 0, metadata !85} ; [ DW_TAG_member ] [solvent_type] [line 100, size 64, align 64, offset 1664] [from ]
!174 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"mno_index", i32 101, i64 64, i64 64, i64 1728, i32 0, metadata !85} ; [ DW_TAG_member ] [mno_index] [line 101, size 64, align 64, offset 1728] [from ]
!175 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"cg_cm", i32 102, i64 64, i64 64, i64 1792, i32 0, metadata !176} ; [ DW_TAG_member ] [cg_cm] [line 102, size 64, align 64, offset 1792] [from ]
!176 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !177} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!177 = metadata !{i32 786454, metadata !4, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !166} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!178 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"shift_vec", i32 103, i64 64, i64 64, i64 1856, i32 0, metadata !176} ; [ DW_TAG_member ] [shift_vec] [line 103, size 64, align 64, offset 1856] [from ]
!179 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"nlist_sr", i32 108, i64 9984, i64 64, i64 1920, i32 0, metadata !180} ; [ DW_TAG_member ] [nlist_sr] [line 108, size 9984, align 64, offset 1920] [from ]
!180 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 9984, i64 64, i32 0, i32 0, metadata !181, metadata !202, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 9984, align 64, offset 0] [from t_nblist]
!181 = metadata !{i32 786454, metadata !4, null, metadata !"t_nblist", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !182} ; [ DW_TAG_typedef ] [t_nblist] [line 60, size 0, align 0, offset 0] [from ]
!182 = metadata !{i32 786451, metadata !183, null, metadata !"", i32 36, i64 768, i64 64, i32 0, i32 0, null, metadata !184, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 768, align 64, offset 0] [from ]
!183 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nblist.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!184 = metadata !{metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201}
!185 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"il_code", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [il_code] [line 37, size 32, align 32, offset 0] [from int]
!186 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"nri", i32 39, i64 32, i64 32, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [nri] [line 39, size 32, align 32, offset 32] [from int]
!187 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"maxnri", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [maxnri] [line 39, size 32, align 32, offset 64] [from int]
!188 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"nrj", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !32} ; [ DW_TAG_member ] [nrj] [line 40, size 32, align 32, offset 96] [from int]
!189 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"maxnrj", i32 40, i64 32, i64 32, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [maxnrj] [line 40, size 32, align 32, offset 128] [from int]
!190 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"maxlen", i32 41, i64 32, i64 32, i64 160, i32 0, metadata !32} ; [ DW_TAG_member ] [maxlen] [line 41, size 32, align 32, offset 160] [from int]
!191 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"solvent", i32 42, i64 32, i64 32, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [solvent] [line 42, size 32, align 32, offset 192] [from int]
!192 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"iinr", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !193} ; [ DW_TAG_member ] [iinr] [line 43, size 64, align 64, offset 256] [from ]
!193 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !194} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!194 = metadata !{i32 786454, metadata !183, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!195 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"gid", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !85} ; [ DW_TAG_member ] [gid] [line 44, size 64, align 64, offset 320] [from ]
!196 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"shift", i32 45, i64 64, i64 64, i64 384, i32 0, metadata !85} ; [ DW_TAG_member ] [shift] [line 45, size 64, align 64, offset 384] [from ]
!197 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"jindex", i32 46, i64 64, i64 64, i64 448, i32 0, metadata !85} ; [ DW_TAG_member ] [jindex] [line 46, size 64, align 64, offset 448] [from ]
!198 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"jjnr", i32 47, i64 64, i64 64, i64 512, i32 0, metadata !193} ; [ DW_TAG_member ] [jjnr] [line 47, size 64, align 64, offset 512] [from ]
!199 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"nsatoms", i32 48, i64 64, i64 64, i64 576, i32 0, metadata !85} ; [ DW_TAG_member ] [nsatoms] [line 48, size 64, align 64, offset 576] [from ]
!200 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"pad1", i32 58, i64 32, i64 32, i64 640, i32 0, metadata !32} ; [ DW_TAG_member ] [pad1] [line 58, size 32, align 32, offset 640] [from int]
!201 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"pad2", i32 58, i64 64, i64 64, i64 704, i32 0, metadata !85} ; [ DW_TAG_member ] [pad2] [line 58, size 64, align 64, offset 704] [from ]
!202 = metadata !{metadata !203}
!203 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 12]
!204 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"nlist_lr", i32 109, i64 9984, i64 64, i64 11904, i32 0, metadata !180} ; [ DW_TAG_member ] [nlist_lr] [line 109, size 9984, align 64, offset 11904] [from ]
!205 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"bTwinRange", i32 120, i64 32, i64 32, i64 21888, i32 0, metadata !32} ; [ DW_TAG_member ] [bTwinRange] [line 120, size 32, align 32, offset 21888] [from int]
!206 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"nlr", i32 121, i64 32, i64 32, i64 21920, i32 0, metadata !32} ; [ DW_TAG_member ] [nlr] [line 121, size 32, align 32, offset 21920] [from int]
!207 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"f_twin", i32 122, i64 64, i64 64, i64 21952, i32 0, metadata !176} ; [ DW_TAG_member ] [f_twin] [line 122, size 64, align 64, offset 21952] [from ]
!208 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"fshift_twin", i32 123, i64 64, i64 64, i64 22016, i32 0, metadata !176} ; [ DW_TAG_member ] [fshift_twin] [line 123, size 64, align 64, offset 22016] [from ]
!209 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"f_pme", i32 126, i64 64, i64 64, i64 22080, i32 0, metadata !176} ; [ DW_TAG_member ] [f_pme] [line 126, size 64, align 64, offset 22080] [from ]
!210 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"bEwald", i32 127, i64 32, i64 32, i64 22144, i32 0, metadata !32} ; [ DW_TAG_member ] [bEwald] [line 127, size 32, align 32, offset 22144] [from int]
!211 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"ewaldcoeff", i32 128, i64 32, i64 32, i64 22176, i32 0, metadata !124} ; [ DW_TAG_member ] [ewaldcoeff] [line 128, size 32, align 32, offset 22176] [from real]
!212 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"fshift", i32 131, i64 64, i64 64, i64 22208, i32 0, metadata !176} ; [ DW_TAG_member ] [fshift] [line 131, size 64, align 64, offset 22208] [from ]
!213 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"nmol", i32 134, i64 32, i64 32, i64 22272, i32 0, metadata !32} ; [ DW_TAG_member ] [nmol] [line 134, size 32, align 32, offset 22272] [from int]
!214 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"mol_nr", i32 135, i64 64, i64 64, i64 22336, i32 0, metadata !193} ; [ DW_TAG_member ] [mol_nr] [line 135, size 64, align 64, offset 22336] [from ]
!215 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"mol_epot", i32 136, i64 64, i64 64, i64 22400, i32 0, metadata !143} ; [ DW_TAG_member ] [mol_epot] [line 136, size 64, align 64, offset 22400] [from ]
!216 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"nstcalc", i32 137, i64 32, i64 32, i64 22464, i32 0, metadata !32} ; [ DW_TAG_member ] [nstcalc] [line 137, size 32, align 32, offset 22464] [from int]
!217 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"ntype", i32 140, i64 32, i64 32, i64 22496, i32 0, metadata !32} ; [ DW_TAG_member ] [ntype] [line 140, size 32, align 32, offset 22496] [from int]
!218 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"bBHAM", i32 141, i64 32, i64 32, i64 22528, i32 0, metadata !32} ; [ DW_TAG_member ] [bBHAM] [line 141, size 32, align 32, offset 22528] [from int]
!219 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"nbfp", i32 142, i64 64, i64 64, i64 22592, i32 0, metadata !143} ; [ DW_TAG_member ] [nbfp] [line 142, size 64, align 64, offset 22592] [from ]
!220 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"eg_excl", i32 145, i64 64, i64 64, i64 22656, i32 0, metadata !85} ; [ DW_TAG_member ] [eg_excl] [line 145, size 64, align 64, offset 22656] [from ]
!221 = metadata !{i32 786445, metadata !4, metadata !120, metadata !"fc_stepsize", i32 148, i64 32, i64 32, i64 22720, i32 0, metadata !124} ; [ DW_TAG_member ] [fc_stepsize] [line 148, size 32, align 32, offset 22720] [from real]
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !226}
!223 = metadata !{i32 786689, metadata !115, metadata !"out", metadata !23, i32 16777319, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 103]
!224 = metadata !{i32 786689, metadata !115, metadata !"fr", metadata !23, i32 33554535, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 103]
!225 = metadata !{i32 786689, metadata !115, metadata !"nDNL", metadata !23, i32 50331751, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nDNL] [line 103]
!226 = metadata !{i32 786688, metadata !115, metadata !"i", metadata !23, i32 105, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 105]
!227 = metadata !{i32 786478, metadata !1, metadata !23, metadata !"write_nblist", metadata !"write_nblist", metadata !"", i32 45, metadata !228, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !231, i32 46} ; [ DW_TAG_subprogram ] [line 45] [local] [def] [scope 46] [write_nblist]
!228 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!229 = metadata !{null, metadata !26, metadata !230}
!230 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nblist]
!231 = metadata !{metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240}
!232 = metadata !{i32 786689, metadata !227, metadata !"out", metadata !23, i32 16777261, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 45]
!233 = metadata !{i32 786689, metadata !227, metadata !"nblist", metadata !23, i32 33554477, metadata !230, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nblist] [line 45]
!234 = metadata !{i32 786688, metadata !227, metadata !"i", metadata !23, i32 47, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 47]
!235 = metadata !{i32 786688, metadata !227, metadata !"j", metadata !23, i32 47, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 47]
!236 = metadata !{i32 786688, metadata !227, metadata !"j0", metadata !23, i32 47, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j0] [line 47]
!237 = metadata !{i32 786688, metadata !227, metadata !"k", metadata !23, i32 47, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 47]
!238 = metadata !{i32 786688, metadata !227, metadata !"i_atom", metadata !23, i32 47, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i_atom] [line 47]
!239 = metadata !{i32 786688, metadata !227, metadata !"jid", metadata !23, i32 47, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jid] [line 47]
!240 = metadata !{i32 786688, metadata !227, metadata !"nj", metadata !23, i32 47, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nj] [line 47]
!241 = metadata !{i32 61, i32 0, metadata !22, null}
!242 = metadata !{i32 64, i32 0, metadata !22, null}
!243 = metadata !{i32 65, i32 0, metadata !22, null}
!244 = metadata !{i32 66, i32 0, metadata !22, null}
!245 = metadata !{i32 68, i32 0, metadata !22, null}
!246 = metadata !{i32 69, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !22, i32 68, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c]
!248 = metadata !{i32 70, i32 0, metadata !247, null}
!249 = metadata !{i32 71, i32 0, metadata !22, null}
!250 = metadata !{i32 74, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !22, i32 73, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c]
!252 = metadata !{i32 76, i32 0, metadata !251, null}
!253 = metadata !{i32 77, i32 0, metadata !251, null}
!254 = metadata !{i32 78, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !251, i32 78, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c]
!256 = metadata !{metadata !"int", metadata !257}
!257 = metadata !{metadata !"omnipotent char", metadata !258}
!258 = metadata !{metadata !"Simple C/C++ TBAA"}
!259 = metadata !{i32 79, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !255, i32 78, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c]
!261 = metadata !{i32 80, i32 0, metadata !260, null}
!262 = metadata !{i32 84, i32 0, metadata !260, null}
!263 = metadata !{i32 85, i32 0, metadata !260, null}
!264 = metadata !{i32 86, i32 0, metadata !260, null}
!265 = metadata !{i32 87, i32 0, metadata !260, null}
!266 = metadata !{i32 88, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !260, i32 88, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c]
!268 = metadata !{i32 89, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !267, i32 88, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c]
!270 = metadata !{i32 90, i32 0, metadata !269, null}
!271 = metadata !{i32 91, i32 0, metadata !269, null}
!272 = metadata !{i32 92, i32 0, metadata !269, null}
!273 = metadata !{i32 93, i32 0, metadata !269, null}
!274 = metadata !{metadata !"any pointer", metadata !257}
!275 = metadata !{i32 94, i32 0, metadata !269, null}
!276 = metadata !{i32 96, i32 0, metadata !269, null}
!277 = metadata !{i32 99, i32 0, metadata !251, null}
!278 = metadata !{i32 101, i32 0, metadata !22, null}
!279 = metadata !{i32 103, i32 0, metadata !115, null}
!280 = metadata !{i32 107, i32 0, metadata !115, null}
!281 = metadata !{i32 109, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !115, i32 109, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c]
!283 = metadata !{i32 786689, metadata !227, metadata !"out", metadata !23, i32 16777261, metadata !26, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [out] [line 45]
!284 = metadata !{i32 110, i32 0, metadata !282, null}
!285 = metadata !{i32 45, i32 0, metadata !227, metadata !284}
!286 = metadata !{i32 48, i32 0, metadata !227, metadata !284}
!287 = metadata !{i32 50, i32 0, metadata !227, metadata !284}
!288 = metadata !{i32 786688, metadata !227, metadata !"i", metadata !23, i32 47, metadata !32, i32 0, metadata !284} ; [ DW_TAG_auto_variable ] [i] [line 47]
!289 = metadata !{i32 51, i32 0, metadata !290, metadata !284}
!290 = metadata !{i32 786443, metadata !1, metadata !227, i32 51, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c]
!291 = metadata !{i32 52, i32 0, metadata !292, metadata !284}
!292 = metadata !{i32 786443, metadata !1, metadata !290, i32 51, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c]
!293 = metadata !{i32 53, i32 0, metadata !292, metadata !284}
!294 = metadata !{i32 56, i32 0, metadata !295, metadata !284}
!295 = metadata !{i32 786443, metadata !1, metadata !292, i32 55, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wnblist.c]
!296 = metadata !{i32 786688, metadata !227, metadata !"nj", metadata !23, i32 47, metadata !32, i32 0, metadata !284} ; [ DW_TAG_auto_variable ] [nj] [line 47]
!297 = metadata !{i32 55, i32 0, metadata !295, metadata !284}
!298 = metadata !{i32 786688, metadata !227, metadata !"j", metadata !23, i32 47, metadata !32, i32 0, metadata !284} ; [ DW_TAG_auto_variable ] [j] [line 47]
!299 = metadata !{i32 58, i32 0, metadata !227, metadata !284} ; [ DW_TAG_imported_module ]
!300 = metadata !{i32 111, i32 0, metadata !115, null}
