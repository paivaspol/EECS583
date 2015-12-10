; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_inpfile = type { i32, i32, i8*, i8* }

@debug = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [21 x i8] c"Reading MDP file %s\0A\00", align 1
@inp_count = internal unnamed_addr global i32 1, align 4
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [37 x i8] c"No = on line %d in file %s, ignored\0A\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"Empty left hand side on line %d in file %s, ignored\0A\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"Empty right hand side on line %d in file %s, ignored\0A\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"inp\00", align 1
@.str6 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"Done reading MDP file, there were %d entries in there\0A\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"%-24s = %s\0A\00", align 1
@.str10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@warn_buf = external global [1024 x i8]
@.str11 = private unnamed_addr constant [40 x i8] c"Unknown left-hand %s in parameter file\0A\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@stderr = external global %struct._IO_FILE*
@.str15 = private unnamed_addr constant [48 x i8] c"%snvalid enum '%s' for variable %s, using '%s'\0A\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"ERROR: i\00", align 1
@.str17 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str18 = private unnamed_addr constant [22 x i8] c"Next time use one of:\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c" '%s'\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"*inp\00", align 1
@.str22 = private unnamed_addr constant [13 x i8] c"Inp %d = %s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.t_inpfile* @read_inpfile(i8* %fn, i32* nocapture %ninp) #0 {
entry:
  %buf = alloca [4096 x i8], align 16
  %buf167 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  %lbuf = alloca [4096 x i8], align 16
  %lbuf166 = getelementptr inbounds [4096 x i8]* %lbuf, i64 0, i64 0
  %rbuf = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !22), !dbg !188
  call void @llvm.dbg.value(metadata !{i32* %ninp}, i64 0, metadata !23), !dbg !188
  %0 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0, !dbg !189
  call void @llvm.lifetime.start(i64 4096, i8* %0) #2, !dbg !189
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %buf}, metadata !80), !dbg !189
  %1 = getelementptr inbounds [4096 x i8]* %lbuf, i64 0, i64 0, !dbg !189
  call void @llvm.lifetime.start(i64 4096, i8* %1) #2, !dbg !189
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %lbuf}, metadata !84), !dbg !189
  %2 = getelementptr inbounds [4096 x i8]* %rbuf, i64 0, i64 0, !dbg !189
  call void @llvm.lifetime.start(i64 4096, i8* %2) #2, !dbg !189
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %rbuf}, metadata !85), !dbg !189
  call void @llvm.dbg.value(metadata !190, i64 0, metadata !88), !dbg !191
  %3 = load %struct._IO_FILE** @debug, align 8, !dbg !192, !tbaa !193
  %tobool = icmp eq %struct._IO_FILE* %3, null, !dbg !192
  br i1 %tobool, label %if.end, label %if.then, !dbg !192

if.then:                                          ; preds = %entry
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0), i8* %fn) #8, !dbg !196
  br label %if.end, !dbg !196

if.end:                                           ; preds = %entry, %if.then
  store i32 1, i32* @inp_count, align 4, !dbg !197, !tbaa !198
  %call1 = call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !199
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call1}, i64 0, metadata !24), !dbg !199
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !90), !dbg !200
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !89), !dbg !200
  br label %do.body, !dbg !201

do.body:                                          ; preds = %if.then28, %if.then23, %if.else83, %if.then80, %if.then52, %if.then78, %if.then50, %if.end
  %nin.0 = phi i32 [ 0, %if.end ], [ %nin.0, %if.then28 ], [ %nin.0, %if.then23 ], [ %nin.0, %if.then52 ], [ %nin.0, %if.then50 ], [ %nin.0, %if.then80 ], [ %nin.0, %if.then78 ], [ %inc84, %if.else83 ]
  %lc.0 = phi i32 [ 0, %if.end ], [ %inc, %if.then28 ], [ %inc, %if.then23 ], [ %inc, %if.then52 ], [ %inc, %if.then50 ], [ %inc, %if.then80 ], [ %inc, %if.then78 ], [ %inc, %if.else83 ]
  %inp.0 = phi %struct.t_inpfile* [ null, %if.end ], [ %inp.0, %if.then28 ], [ %inp.0, %if.then23 ], [ %inp.0, %if.then52 ], [ %inp.0, %if.then50 ], [ %inp.0, %if.then80 ], [ %inp.0, %if.then78 ], [ %17, %if.else83 ]
  %call2 = call i8* @fgets2(i8* %0, i32 4095, %struct._IO_FILE* %call1) #8, !dbg !202
  call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !86), !dbg !202
  %inc = add nsw i32 %lc.0, 1, !dbg !204
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !90), !dbg !204
  %tobool3 = icmp eq i8* %call2, null, !dbg !205
  br i1 %tobool3, label %do.end, label %if.then4, !dbg !205

if.then4:                                         ; preds = %do.body
  %call6 = call i8* @strchr(i8* %0, i32 59) #9, !dbg !206
  call void @llvm.dbg.value(metadata !{i8* %call6}, i64 0, metadata !87), !dbg !206
  %cmp = icmp eq i8* %call6, null, !dbg !206
  br i1 %cmp, label %if.end8, label %if.then7, !dbg !206

if.then7:                                         ; preds = %if.then4
  store i8 0, i8* %call6, align 1, !dbg !208, !tbaa !194
  br label %if.end8, !dbg !208

if.end8:                                          ; preds = %if.then4, %if.then7
  call void @trim(i8* %0) #8, !dbg !209
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !210
  br label %for.cond, !dbg !210

for.cond:                                         ; preds = %for.inc, %if.end8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end8 ]
  %j.0 = phi i32 [ %inc17, %for.inc ], [ 0, %if.end8 ]
  %arrayidx = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %indvars.iv, !dbg !210
  %4 = load i8* %arrayidx, align 1, !dbg !210, !tbaa !194
  switch i8 %4, label %for.inc [
    i8 0, label %if.then23
    i8 61, label %for.cond32.loopexit
  ], !dbg !210

for.inc:                                          ; preds = %for.cond
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !210
  %inc17 = add nsw i32 %j.0, 1, !dbg !210
  call void @llvm.dbg.value(metadata !{i32 %inc17}, i64 0, metadata !92), !dbg !210
  br label %for.cond, !dbg !210

if.then23:                                        ; preds = %for.cond
  %cmp24 = icmp sgt i32 %j.0, 0, !dbg !212
  %5 = load %struct._IO_FILE** @debug, align 8, !dbg !214, !tbaa !193
  %tobool27 = icmp ne %struct._IO_FILE* %5, null, !dbg !214
  %or.cond = and i1 %cmp24, %tobool27, !dbg !212
  br i1 %or.cond, label %if.then28, label %do.body, !dbg !212

if.then28:                                        ; preds = %if.then23
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0), i32 %inc, i8* %fn) #8, !dbg !216
  br label %do.body, !dbg !216

for.cond32.loopexit:                              ; preds = %for.cond
  %cmp33149 = icmp sgt i32 %j.0, 0, !dbg !217
  br i1 %cmp33149, label %for.body35.lr.ph, label %for.end42, !dbg !217

for.body35.lr.ph:                                 ; preds = %for.cond32.loopexit
  %6 = add i32 %j.0, -1, !dbg !217
  %7 = zext i32 %6 to i64, !dbg !217
  %8 = add i64 %7, 1, !dbg !217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %lbuf166, i8* %buf167, i64 %8, i32 16, i1 false), !dbg !220
  br label %for.end42, !dbg !217

for.end42:                                        ; preds = %for.body35.lr.ph, %for.cond32.loopexit
  %idxprom36.lcssa = phi i64 [ %8, %for.body35.lr.ph ], [ 0, %for.cond32.loopexit ]
  %arrayidx44 = getelementptr inbounds [4096 x i8]* %lbuf, i64 0, i64 %idxprom36.lcssa, !dbg !221
  store i8 0, i8* %arrayidx44, align 1, !dbg !221, !tbaa !194
  call void @trim(i8* %1) #8, !dbg !222
  %9 = load i8* %1, align 16, !dbg !223, !tbaa !194
  %cmp48 = icmp eq i8 %9, 0, !dbg !223
  br i1 %cmp48, label %if.then50, label %for.cond56.preheader, !dbg !223

for.cond56.preheader:                             ; preds = %for.end42
  %i.1152 = add nsw i32 %j.0, 1, !dbg !224
  %idxprom57153 = sext i32 %i.1152 to i64, !dbg !224
  %arrayidx58154 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %idxprom57153, !dbg !224
  %10 = load i8* %arrayidx58154, align 1, !dbg !224, !tbaa !194
  %cmp60155 = icmp eq i8 %10, 0, !dbg !224
  br i1 %cmp60155, label %for.end70, label %for.body62, !dbg !224

if.then50:                                        ; preds = %for.end42
  %11 = load %struct._IO_FILE** @debug, align 8, !dbg !227, !tbaa !193
  %tobool51 = icmp eq %struct._IO_FILE* %11, null, !dbg !227
  br i1 %tobool51, label %do.body, label %if.then52, !dbg !227

if.then52:                                        ; preds = %if.then50
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 %inc, i8* %fn) #8, !dbg !229
  br label %do.body, !dbg !229

for.body62:                                       ; preds = %for.cond56.preheader, %for.body62
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %for.body62 ], [ 0, %for.cond56.preheader ], !dbg !224
  %arrayidx72159 = phi i8* [ %arrayidx72, %for.body62 ], [ %2, %for.cond56.preheader ]
  %12 = phi i8 [ %13, %for.body62 ], [ %10, %for.cond56.preheader ]
  %i.1158 = phi i32 [ %i.1, %for.body62 ], [ %i.1152, %for.cond56.preheader ]
  store i8 %12, i8* %arrayidx72159, align 1, !dbg !230, !tbaa !194
  %indvars.iv.next173 = add i64 %indvars.iv172, 1, !dbg !224
  %i.1 = add nsw i32 %i.1158, 1, !dbg !224
  %idxprom57 = sext i32 %i.1 to i64, !dbg !224
  %arrayidx58 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %idxprom57, !dbg !224
  %13 = load i8* %arrayidx58, align 1, !dbg !224, !tbaa !194
  %cmp60 = icmp eq i8 %13, 0, !dbg !224
  %arrayidx72 = getelementptr inbounds [4096 x i8]* %rbuf, i64 0, i64 %indvars.iv.next173, !dbg !231
  br i1 %cmp60, label %for.end70, label %for.body62, !dbg !224

for.end70:                                        ; preds = %for.body62, %for.cond56.preheader
  %arrayidx72.lcssa = phi i8* [ %2, %for.cond56.preheader ], [ %arrayidx72, %for.body62 ]
  store i8 0, i8* %arrayidx72.lcssa, align 1, !dbg !231, !tbaa !194
  call void @trim(i8* %2) #8, !dbg !232
  %14 = load i8* %2, align 16, !dbg !233, !tbaa !194
  %cmp76 = icmp eq i8 %14, 0, !dbg !233
  br i1 %cmp76, label %if.then78, label %if.else83, !dbg !233

if.then78:                                        ; preds = %for.end70
  %15 = load %struct._IO_FILE** @debug, align 8, !dbg !234, !tbaa !193
  %tobool79 = icmp eq %struct._IO_FILE* %15, null, !dbg !234
  br i1 %tobool79, label %do.body, label %if.then80, !dbg !234

if.then80:                                        ; preds = %if.then78
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 %inc, i8* %fn) #8, !dbg !236
  br label %do.body, !dbg !236

if.else83:                                        ; preds = %for.end70
  %16 = bitcast %struct.t_inpfile* %inp.0 to i8*, !dbg !237
  %inc84 = add nsw i32 %nin.0, 1, !dbg !237
  call void @llvm.dbg.value(metadata !{i32 %inc84}, i64 0, metadata !89), !dbg !237
  %mul = mul i32 %inc84, 24, !dbg !237
  %call87 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str6, i64 0, i64 0), i32 96, i8* %16, i32 %mul) #8, !dbg !237
  %17 = bitcast i8* %call87 to %struct.t_inpfile*, !dbg !237
  call void @llvm.dbg.value(metadata !{%struct.t_inpfile* %17}, i64 0, metadata !88), !dbg !237
  %idxprom88 = sext i32 %nin.0 to i64, !dbg !239
  %count = getelementptr inbounds %struct.t_inpfile* %17, i64 %idxprom88, i32 0, !dbg !239
  store i32 0, i32* %count, align 4, !dbg !239, !tbaa !198
  %bSet = getelementptr inbounds %struct.t_inpfile* %17, i64 %idxprom88, i32 1, !dbg !240
  store i32 0, i32* %bSet, align 4, !dbg !240, !tbaa !198
  %call94 = call noalias i8* @strdup(i8* %1) #8, !dbg !241
  %name = getelementptr inbounds %struct.t_inpfile* %17, i64 %idxprom88, i32 2, !dbg !241
  store i8* %call94, i8** %name, align 8, !dbg !241, !tbaa !193
  %call99 = call noalias i8* @strdup(i8* %2) #8, !dbg !242
  %value = getelementptr inbounds %struct.t_inpfile* %17, i64 %idxprom88, i32 3, !dbg !242
  store i8* %call99, i8** %value, align 8, !dbg !242, !tbaa !193
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @ffclose(%struct._IO_FILE* %call1) #8, !dbg !243
  %18 = load %struct._IO_FILE** @debug, align 8, !dbg !244, !tbaa !193
  %tobool108 = icmp eq %struct._IO_FILE* %18, null, !dbg !244
  br i1 %tobool108, label %if.end111, label %if.then109, !dbg !244

if.then109:                                       ; preds = %do.end
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i32 %nin.0) #8, !dbg !245
  br label %if.end111, !dbg !245

if.end111:                                        ; preds = %do.end, %if.then109
  store i32 %nin.0, i32* %ninp, align 4, !dbg !246, !tbaa !198
  call void @llvm.lifetime.end(i64 4096, i8* %2) #2, !dbg !247
  call void @llvm.lifetime.end(i64 4096, i8* %1) #2, !dbg !247
  call void @llvm.lifetime.end(i64 4096, i8* %0) #2, !dbg !247
  ret %struct.t_inpfile* %inp.0, !dbg !247
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #4

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: optsize
declare void @trim(i8*) #4

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #4

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #3

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @write_inpfile(i8* %fn, i32 %ninp, %struct.t_inpfile* %inp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !98), !dbg !248
  tail call void @llvm.dbg.value(metadata !{i32 %ninp}, i64 0, metadata !99), !dbg !248
  tail call void @llvm.dbg.value(metadata !{%struct.t_inpfile* %inp}, i64 0, metadata !100), !dbg !248
  tail call void @llvm.dbg.value(metadata !{i32 %ninp}, i64 0, metadata !249) #2, !dbg !251
  tail call void @llvm.dbg.value(metadata !{%struct.t_inpfile* %inp}, i64 0, metadata !252) #2, !dbg !251
  tail call void @llvm.dbg.value(metadata !253, i64 0, metadata !254) #2, !dbg !255
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !256) #2, !dbg !257
  %cmp37.i = icmp sgt i32 %ninp, 0, !dbg !257
  br i1 %cmp37.i, label %for.body.i, label %sort_inp.exit, !dbg !257

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %for.body.i ], [ 0, %entry ]
  %mm.039.i = phi i32 [ %mm.0..i, %for.body.i ], [ -1, %entry ]
  %count.i = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv40.i, i32 0, !dbg !259
  %0 = load i32* %count.i, align 4, !dbg !259, !tbaa !198
  %cmp1.i = icmp sgt i32 %mm.039.i, %0, !dbg !259
  %mm.0..i = select i1 %cmp1.i, i32 %mm.039.i, i32 %0, !dbg !259
  tail call void @llvm.dbg.value(metadata !{i32 %mm.0..i}, i64 0, metadata !254) #2, !dbg !259
  %indvars.iv.next41.i = add i64 %indvars.iv40.i, 1, !dbg !257
  %lftr.wideiv33 = trunc i64 %indvars.iv.next41.i to i32, !dbg !257
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %ninp, !dbg !257
  br i1 %exitcond34, label %for.body7.i, label %for.body.i, !dbg !257

for.body7.i:                                      ; preds = %for.body.i, %for.inc16.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc16.i ], [ 0, %for.body.i ]
  %mm.136.i = phi i32 [ %mm.2.i, %for.inc16.i ], [ %mm.0..i, %for.body.i ]
  %count10.i = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv.i, i32 0, !dbg !260
  %1 = load i32* %count10.i, align 4, !dbg !260, !tbaa !198
  %cmp11.i = icmp eq i32 %1, 0, !dbg !260
  br i1 %cmp11.i, label %if.then.i, label %for.inc16.i, !dbg !260

if.then.i:                                        ; preds = %for.body7.i
  %inc12.i = add nsw i32 %mm.136.i, 1, !dbg !263
  tail call void @llvm.dbg.value(metadata !{i32 %inc12.i}, i64 0, metadata !254) #2, !dbg !263
  store i32 %mm.136.i, i32* %count10.i, align 4, !dbg !263, !tbaa !198
  br label %for.inc16.i, !dbg !263

for.inc16.i:                                      ; preds = %if.then.i, %for.body7.i
  %mm.2.i = phi i32 [ %inc12.i, %if.then.i ], [ %mm.136.i, %for.body7.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !264
  %lftr.wideiv31 = trunc i64 %indvars.iv.next.i to i32, !dbg !264
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %ninp, !dbg !264
  br i1 %exitcond32, label %sort_inp.exit, label %for.body7.i, !dbg !264

sort_inp.exit:                                    ; preds = %for.inc16.i, %entry
  %2 = bitcast %struct.t_inpfile* %inp to i8*, !dbg !265
  %conv.i = sext i32 %ninp to i64, !dbg !265
  tail call void @qsort(i8* %2, i64 %conv.i, i64 24, i32 (i8*, i8*)* @inp_comp) #8, !dbg !265
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #8, !dbg !266
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !101), !dbg !266
  tail call void @nice_header(%struct._IO_FILE* %call, i8* %fn) #8, !dbg !267
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !102), !dbg !268
  br i1 %cmp37.i, label %for.body, label %for.end, !dbg !268

for.body:                                         ; preds = %sort_inp.exit, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %sort_inp.exit ]
  %bSet = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv, i32 1, !dbg !270
  %3 = load i32* %bSet, align 4, !dbg !270, !tbaa !198
  %tobool = icmp eq i32 %3, 0, !dbg !270
  %name12 = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv, i32 2, !dbg !272
  %4 = load i8** %name12, align 8, !dbg !272, !tbaa !193
  br i1 %tobool, label %if.else, label %if.then, !dbg !270

if.then:                                          ; preds = %for.body
  %value = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv, i32 3, !dbg !274
  %5 = load i8** %value, align 8, !dbg !274, !tbaa !193
  %tobool5 = icmp eq i8* %5, null, !dbg !274
  %. = select i1 %tobool5, i8* getelementptr inbounds ([1 x i8]* @.str10, i64 0, i64 0), i8* %5, !dbg !274
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0), i8* %4, i8* %.) #8, !dbg !274
  br label %for.inc, !dbg !274

if.else:                                          ; preds = %for.body
  %call13 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str11, i64 0, i64 0), i8* %4) #8, !dbg !272
  tail call void @warning(i8* null) #8, !dbg !275
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !268
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !268
  %exitcond = icmp eq i32 %lftr.wideiv, %ninp, !dbg !268
  br i1 %exitcond, label %for.end, label %for.body, !dbg !268

for.end:                                          ; preds = %for.inc, %sort_inp.exit
  tail call void @ffclose(%struct._IO_FILE* %call) #8, !dbg !276
  ret void, !dbg !277
}

; Function Attrs: optsize
declare void @nice_header(%struct._IO_FILE*, i8*) #4

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @warning(i8*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @get_eint(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i32 %def) #0 {
entry:
  %buf = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32* %ninp}, i64 0, metadata !108), !dbg !278
  call void @llvm.dbg.value(metadata !{%struct.t_inpfile** %inp}, i64 0, metadata !109), !dbg !278
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !110), !dbg !278
  call void @llvm.dbg.value(metadata !{i32 %def}, i64 0, metadata !111), !dbg !278
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %buf}, metadata !112), !dbg !279
  %call = call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #10, !dbg !280
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !116), !dbg !280
  %cmp = icmp eq i32 %call, -1, !dbg !281
  br i1 %cmp, label %if.then, label %if.else, !dbg !281

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0, !dbg !282
  %call1 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i32 %def) #8, !dbg !282
  %call3 = call noalias i8* @strdup(i8* %arraydecay) #8, !dbg !284
  %0 = load i32* %ninp, align 4, !dbg !284, !tbaa !198
  %sub = add nsw i32 %0, -1, !dbg !284
  %idxprom = sext i32 %sub to i64, !dbg !284
  %1 = load %struct.t_inpfile** %inp, align 8, !dbg !284, !tbaa !193
  %value = getelementptr inbounds %struct.t_inpfile* %1, i64 %idxprom, i32 3, !dbg !284
  store i8* %call3, i8** %value, align 8, !dbg !284, !tbaa !193
  br label %return, !dbg !285

if.else:                                          ; preds = %entry
  %idxprom4 = sext i32 %call to i64, !dbg !286
  %2 = load %struct.t_inpfile** %inp, align 8, !dbg !286, !tbaa !193
  %value6 = getelementptr inbounds %struct.t_inpfile* %2, i64 %idxprom4, i32 3, !dbg !286
  %3 = load i8** %value6, align 8, !dbg !286, !tbaa !193
  %call7 = call i32 @atoi(i8* %3) #9, !dbg !286
  br label %return, !dbg !286

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %def, %if.then ], [ %call7, %if.else ]
  ret i32 %retval.0, !dbg !287
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @get_einp(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ninp}, i64 0, metadata !166), !dbg !288
  tail call void @llvm.dbg.value(metadata !{%struct.t_inpfile** %inp}, i64 0, metadata !167), !dbg !288
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !168), !dbg !288
  %cmp = icmp eq %struct.t_inpfile** %inp, null, !dbg !289
  br i1 %cmp, label %return, label %for.cond.preheader, !dbg !289

for.cond.preheader:                               ; preds = %entry
  %0 = load i32* %ninp, align 4, !dbg !290, !tbaa !198
  %cmp161 = icmp sgt i32 %0, 0, !dbg !290
  br i1 %cmp161, label %for.body, label %for.end, !dbg !290

for.cond:                                         ; preds = %for.body
  %1 = trunc i64 %indvars.iv.next to i32, !dbg !290
  %cmp1 = icmp slt i32 %1, %.pre, !dbg !290
  br i1 %cmp1, label %for.body, label %for.end, !dbg !290

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %i.062 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %2 = load %struct.t_inpfile** %inp, align 8, !dbg !292, !tbaa !193
  %name2 = getelementptr inbounds %struct.t_inpfile* %2, i64 %indvars.iv, i32 2, !dbg !292
  %3 = load i8** %name2, align 8, !dbg !292, !tbaa !193
  %call = tail call i32 @strcasecmp_min(i8* %name, i8* %3) #8, !dbg !292
  %cmp3 = icmp eq i32 %call, 0, !dbg !292
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !290
  %inc = add nsw i32 %i.062, 1, !dbg !290
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !169), !dbg !290
  %.pre = load i32* %ninp, align 4, !dbg !293, !tbaa !198
  br i1 %cmp3, label %for.end, label %for.cond, !dbg !292

for.end:                                          ; preds = %for.body, %for.cond, %for.cond.preheader
  %4 = phi i32 [ %0, %for.cond.preheader ], [ %.pre, %for.cond ], [ %.pre, %for.body ]
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond ], [ %i.062, %for.body ]
  %cmp6 = icmp eq i32 %i.0.lcssa, %4, !dbg !293
  br i1 %cmp6, label %if.then7, label %for.end.if.end17_crit_edge, !dbg !293

for.end.if.end17_crit_edge:                       ; preds = %for.end
  %.pre65 = load %struct.t_inpfile** %inp, align 8, !dbg !294, !tbaa !193
  br label %if.end17, !dbg !293

if.then7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %4, 1, !dbg !295
  store i32 %inc8, i32* %ninp, align 4, !dbg !295, !tbaa !198
  %5 = load %struct.t_inpfile** %inp, align 8, !dbg !297, !tbaa !193
  %6 = bitcast %struct.t_inpfile* %5 to i8*, !dbg !297
  %mul = mul i32 %inc8, 24, !dbg !297
  %call10 = tail call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str6, i64 0, i64 0), i32 165, i8* %6, i32 %mul) #8, !dbg !297
  %7 = bitcast i8* %call10 to %struct.t_inpfile*, !dbg !297
  store %struct.t_inpfile* %7, %struct.t_inpfile** %inp, align 8, !dbg !297, !tbaa !193
  %call11 = tail call noalias i8* @strdup(i8* %name) #8, !dbg !298
  %idxprom12 = sext i32 %4 to i64, !dbg !298
  %8 = load %struct.t_inpfile** %inp, align 8, !dbg !298, !tbaa !193
  %name14 = getelementptr inbounds %struct.t_inpfile* %8, i64 %idxprom12, i32 2, !dbg !298
  store i8* %call11, i8** %name14, align 8, !dbg !298, !tbaa !193
  %9 = load %struct.t_inpfile** %inp, align 8, !dbg !299, !tbaa !193
  %bSet = getelementptr inbounds %struct.t_inpfile* %9, i64 %idxprom12, i32 1, !dbg !299
  store i32 1, i32* %bSet, align 4, !dbg !299, !tbaa !198
  br label %if.end17, !dbg !300

if.end17:                                         ; preds = %for.end.if.end17_crit_edge, %if.then7
  %10 = phi %struct.t_inpfile* [ %.pre65, %for.end.if.end17_crit_edge ], [ %9, %if.then7 ]
  %11 = load i32* @inp_count, align 4, !dbg !294, !tbaa !198
  %inc18 = add nsw i32 %11, 1, !dbg !294
  store i32 %inc18, i32* @inp_count, align 4, !dbg !294, !tbaa !198
  %idxprom19 = sext i32 %i.0.lcssa to i64, !dbg !294
  %count = getelementptr inbounds %struct.t_inpfile* %10, i64 %idxprom19, i32 0, !dbg !294
  store i32 %11, i32* %count, align 4, !dbg !294, !tbaa !198
  %bSet23 = getelementptr inbounds %struct.t_inpfile* %10, i64 %idxprom19, i32 1, !dbg !301
  store i32 1, i32* %bSet23, align 4, !dbg !301, !tbaa !198
  %12 = load %struct._IO_FILE** @debug, align 8, !dbg !302, !tbaa !193
  %tobool = icmp eq %struct._IO_FILE* %12, null, !dbg !302
  br i1 %tobool, label %if.end32, label %if.then24, !dbg !302

if.then24:                                        ; preds = %if.end17
  %name30 = getelementptr inbounds %struct.t_inpfile* %10, i64 %idxprom19, i32 2, !dbg !303
  %13 = load i8** %name30, align 8, !dbg !303, !tbaa !193
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0), i32 %11, i8* %13) #8, !dbg !303
  br label %if.end32, !dbg !303

if.end32:                                         ; preds = %if.end17, %if.then24
  %14 = load i32* %ninp, align 4, !dbg !304, !tbaa !198
  %sub = add nsw i32 %14, -1, !dbg !304
  %cmp33 = icmp eq i32 %i.0.lcssa, %sub, !dbg !304
  %.i.0 = select i1 %cmp33, i32 -1, i32 %i.0.lcssa, !dbg !305
  br label %return, !dbg !305

return:                                           ; preds = %if.end32, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %.i.0, %if.end32 ]
  ret i32 %retval.0, !dbg !306
}

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define float @get_ereal(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, float %def) #0 {
entry:
  %buf = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32* %ninp}, i64 0, metadata !123), !dbg !307
  call void @llvm.dbg.value(metadata !{%struct.t_inpfile** %inp}, i64 0, metadata !124), !dbg !307
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !125), !dbg !307
  call void @llvm.dbg.value(metadata !{float %def}, i64 0, metadata !126), !dbg !307
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %buf}, metadata !127), !dbg !308
  %call = call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #10, !dbg !309
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !128), !dbg !309
  %cmp = icmp eq i32 %call, -1, !dbg !310
  br i1 %cmp, label %if.then, label %if.else, !dbg !310

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0, !dbg !311
  %conv = fpext float %def to double, !dbg !311
  %call1 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), double %conv) #8, !dbg !311
  %call3 = call noalias i8* @strdup(i8* %arraydecay) #8, !dbg !313
  %0 = load i32* %ninp, align 4, !dbg !313, !tbaa !198
  %sub = add nsw i32 %0, -1, !dbg !313
  %idxprom = sext i32 %sub to i64, !dbg !313
  %1 = load %struct.t_inpfile** %inp, align 8, !dbg !313, !tbaa !193
  %value = getelementptr inbounds %struct.t_inpfile* %1, i64 %idxprom, i32 3, !dbg !313
  store i8* %call3, i8** %value, align 8, !dbg !313, !tbaa !193
  br label %return, !dbg !314

if.else:                                          ; preds = %entry
  %idxprom4 = sext i32 %call to i64, !dbg !315
  %2 = load %struct.t_inpfile** %inp, align 8, !dbg !315, !tbaa !193
  %value6 = getelementptr inbounds %struct.t_inpfile* %2, i64 %idxprom4, i32 3, !dbg !315
  %3 = load i8** %value6, align 8, !dbg !315, !tbaa !193
  %call7 = call double @atof(i8* %3) #9, !dbg !315
  %conv8 = fptrunc double %call7 to float, !dbg !315
  br label %return, !dbg !315

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi float [ %def, %if.then ], [ %conv8, %if.else ]
  ret float %retval.0, !dbg !316
}

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define i8* @get_estr(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i8* %def) #0 {
entry:
  %buf = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32* %ninp}, i64 0, metadata !133), !dbg !317
  call void @llvm.dbg.value(metadata !{%struct.t_inpfile** %inp}, i64 0, metadata !134), !dbg !317
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !135), !dbg !317
  call void @llvm.dbg.value(metadata !{i8* %def}, i64 0, metadata !136), !dbg !317
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %buf}, metadata !137), !dbg !318
  %call = call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #10, !dbg !319
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !138), !dbg !319
  %cmp = icmp eq i32 %call, -1, !dbg !320
  br i1 %cmp, label %if.then, label %if.else9, !dbg !320

if.then:                                          ; preds = %entry
  %tobool = icmp eq i8* %def, null, !dbg !321
  br i1 %tobool, label %if.else, label %if.then1, !dbg !321

if.then1:                                         ; preds = %if.then
  %arraydecay = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0, !dbg !323
  %strlen = call i64 @strlen(i8* %def), !dbg !323
  %leninc = add i64 %strlen, 1, !dbg !323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay, i8* %def, i64 %leninc, i32 1, i1 false), !dbg !323
  %call4 = call noalias i8* @strdup(i8* %arraydecay) #8, !dbg !325
  %0 = load i32* %ninp, align 4, !dbg !325, !tbaa !198
  %sub = add nsw i32 %0, -1, !dbg !325
  %idxprom = sext i32 %sub to i64, !dbg !325
  %1 = load %struct.t_inpfile** %inp, align 8, !dbg !325, !tbaa !193
  %value = getelementptr inbounds %struct.t_inpfile* %1, i64 %idxprom, i32 3, !dbg !325
  store i8* %call4, i8** %value, align 8, !dbg !325, !tbaa !193
  br label %return, !dbg !326

if.else:                                          ; preds = %if.then
  %2 = load i32* %ninp, align 4, !dbg !327, !tbaa !198
  %sub5 = add nsw i32 %2, -1, !dbg !327
  %idxprom6 = sext i32 %sub5 to i64, !dbg !327
  %3 = load %struct.t_inpfile** %inp, align 8, !dbg !327, !tbaa !193
  %value8 = getelementptr inbounds %struct.t_inpfile* %3, i64 %idxprom6, i32 3, !dbg !327
  store i8* null, i8** %value8, align 8, !dbg !327, !tbaa !193
  br label %return

if.else9:                                         ; preds = %entry
  %idxprom10 = sext i32 %call to i64, !dbg !328
  %4 = load %struct.t_inpfile** %inp, align 8, !dbg !328, !tbaa !193
  %value12 = getelementptr inbounds %struct.t_inpfile* %4, i64 %idxprom10, i32 3, !dbg !328
  %5 = load i8** %value12, align 8, !dbg !328, !tbaa !193
  br label %return, !dbg !328

return:                                           ; preds = %if.then1, %if.else, %if.else9
  %retval.0 = phi i8* [ %5, %if.else9 ], [ null, %if.else ], [ %def, %if.then1 ]
  ret i8* %retval.0, !dbg !329
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_eeenum(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i8** nocapture %defs, i32* nocapture %nerror, i32 %bPrintError) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ninp}, i64 0, metadata !144), !dbg !330
  tail call void @llvm.dbg.value(metadata !{%struct.t_inpfile** %inp}, i64 0, metadata !145), !dbg !330
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !146), !dbg !330
  tail call void @llvm.dbg.value(metadata !{i8** %defs}, i64 0, metadata !147), !dbg !330
  tail call void @llvm.dbg.value(metadata !{i32* %nerror}, i64 0, metadata !148), !dbg !331
  tail call void @llvm.dbg.value(metadata !{i32 %bPrintError}, i64 0, metadata !149), !dbg !331
  %call = tail call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #10, !dbg !332
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !150), !dbg !332
  %cmp = icmp eq i32 %call, -1, !dbg !333
  %0 = load i8** %defs, align 8, !dbg !334, !tbaa !193
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !333

for.cond.preheader:                               ; preds = %entry
  %cmp567 = icmp eq i8* %0, null, !dbg !336
  %idxprom19.pre.pre = sext i32 %call to i64, !dbg !338
  br i1 %cmp567, label %if.then18, label %for.body, !dbg !336

if.then:                                          ; preds = %entry
  %call1 = tail call noalias i8* @strdup(i8* %0) #8, !dbg !334
  %1 = load i32* %ninp, align 4, !dbg !334, !tbaa !198
  %sub = add nsw i32 %1, -1, !dbg !334
  %idxprom = sext i32 %sub to i64, !dbg !334
  %2 = load %struct.t_inpfile** %inp, align 8, !dbg !334, !tbaa !193
  %value = getelementptr inbounds %struct.t_inpfile* %2, i64 %idxprom, i32 3, !dbg !334
  store i8* %call1, i8** %value, align 8, !dbg !334, !tbaa !193
  br label %return, !dbg !340

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.068, 1, !dbg !336
  %arrayidx4 = getelementptr inbounds i8** %defs, i64 %indvars.iv.next74, !dbg !336
  %3 = load i8** %arrayidx4, align 8, !dbg !336, !tbaa !193
  %cmp5 = icmp eq i8* %3, null, !dbg !336
  br i1 %cmp5, label %if.then18, label %for.body, !dbg !336

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.cond ], [ 0, %for.cond.preheader ]
  %4 = phi i8* [ %3, %for.cond ], [ %0, %for.cond.preheader ]
  %arrayidx469 = phi i8** [ %arrayidx4, %for.cond ], [ %defs, %for.cond.preheader ]
  %i.068 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %5 = load %struct.t_inpfile** %inp, align 8, !dbg !341, !tbaa !193
  %value10 = getelementptr inbounds %struct.t_inpfile* %5, i64 %idxprom19.pre.pre, i32 3, !dbg !341
  %6 = load i8** %value10, align 8, !dbg !341, !tbaa !193
  %call11 = tail call i32 @strcasecmp_min(i8* %4, i8* %6) #8, !dbg !341
  %cmp12 = icmp eq i32 %call11, 0, !dbg !341
  %indvars.iv.next74 = add i64 %indvars.iv73, 1, !dbg !336
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !151), !dbg !336
  br i1 %cmp12, label %for.end, label %for.cond, !dbg !341

for.end:                                          ; preds = %for.body
  %.pr = load i8** %arrayidx469, align 8, !dbg !342, !tbaa !193
  %cmp17 = icmp eq i8* %.pr, null, !dbg !342
  br i1 %cmp17, label %if.then18, label %return, !dbg !342

if.then18:                                        ; preds = %for.cond.preheader, %for.cond, %for.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !338, !tbaa !193
  %tobool = icmp ne i32 %bPrintError, 0, !dbg !338
  %cond = select i1 %tobool, i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str17, i64 0, i64 0), !dbg !338
  %8 = load %struct.t_inpfile** %inp, align 8, !dbg !338, !tbaa !193
  %value21 = getelementptr inbounds %struct.t_inpfile* %8, i64 %idxprom19.pre.pre, i32 3, !dbg !338
  %9 = load i8** %value21, align 8, !dbg !338, !tbaa !193
  %10 = load i8** %defs, align 8, !dbg !338, !tbaa !193
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([48 x i8]* @.str15, i64 0, i64 0), i8* %cond, i8* %9, i8* %name, i8* %10) #8, !dbg !338
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !343, !tbaa !193
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str18, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %11), !dbg !343
  %13 = load i32* %nerror, align 4, !dbg !344, !tbaa !198
  %inc25 = add nsw i32 %13, 1, !dbg !344
  store i32 %inc25, i32* %nerror, align 4, !dbg !344, !tbaa !198
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !152), !dbg !345
  %14 = load i8** %defs, align 8, !dbg !346, !tbaa !193
  %tobool2863 = icmp eq i8* %14, null, !dbg !346
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !347, !tbaa !193
  br i1 %tobool2863, label %while.end, label %while.body, !dbg !346

while.body:                                       ; preds = %if.then18, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %if.then18 ]
  %16 = phi %struct._IO_FILE* [ %19, %while.body ], [ %15, %if.then18 ]
  %17 = phi i8* [ %18, %while.body ], [ %14, %if.then18 ]
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i8* %17) #8, !dbg !347
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !346
  %arrayidx27 = getelementptr inbounds i8** %defs, i64 %indvars.iv.next, !dbg !346
  %18 = load i8** %arrayidx27, align 8, !dbg !346, !tbaa !193
  %tobool28 = icmp eq i8* %18, null, !dbg !346
  %19 = load %struct._IO_FILE** @stderr, align 8, !dbg !347, !tbaa !193
  br i1 %tobool28, label %while.end, label %while.body, !dbg !346

while.end:                                        ; preds = %while.body, %if.then18
  %.lcssa = phi %struct._IO_FILE* [ %15, %if.then18 ], [ %19, %while.body ]
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa), !dbg !349
  %20 = load i8** %defs, align 8, !dbg !350, !tbaa !193
  %call35 = tail call noalias i8* @strdup(i8* %20) #8, !dbg !350
  %21 = load %struct.t_inpfile** %inp, align 8, !dbg !350, !tbaa !193
  %value38 = getelementptr inbounds %struct.t_inpfile* %21, i64 %idxprom19.pre.pre, i32 3, !dbg !350
  store i8* %call35, i8** %value38, align 8, !dbg !350, !tbaa !193
  br label %return, !dbg !351

return:                                           ; preds = %for.end, %while.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %while.end ], [ %i.068, %for.end ]
  ret i32 %retval.0, !dbg !352
}

; Function Attrs: optsize
declare i32 @strcasecmp_min(i8*, i8*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @get_eenum(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i8** nocapture %defs) #0 {
entry:
  %dum = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32* %ninp}, i64 0, metadata !157), !dbg !353
  call void @llvm.dbg.value(metadata !{%struct.t_inpfile** %inp}, i64 0, metadata !158), !dbg !353
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !159), !dbg !353
  call void @llvm.dbg.value(metadata !{i8** %defs}, i64 0, metadata !160), !dbg !353
  call void @llvm.dbg.declare(metadata !{i32* %dum}, metadata !161), !dbg !354
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !161), !dbg !354
  store i32 0, i32* %dum, align 4, !dbg !354, !tbaa !198
  %call = call i32 @get_eeenum(i32* %ninp, %struct.t_inpfile** %inp, i8* %name, i8** %defs, i32* %dum, i32 0) #10, !dbg !355
  ret i32 %call, !dbg !355
}

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #4

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @inp_comp(i8* nocapture %a, i8* nocapture %b) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !184), !dbg !356
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !185), !dbg !356
  %count = bitcast i8* %a to i32*, !dbg !357
  %0 = load i32* %count, align 4, !dbg !357, !tbaa !198
  %count1 = bitcast i8* %b to i32*, !dbg !357
  %1 = load i32* %count1, align 4, !dbg !357, !tbaa !198
  %sub = sub nsw i32 %0, %1, !dbg !357
  ret i32 %sub, !dbg !357
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !186, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !94, metadata !103, metadata !117, metadata !129, metadata !139, metadata !153, metadata !162, metadata !170, metadata !178}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"read_inpfile", metadata !"read_inpfile", metadata !"", i32 45, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_inpfile* (i8*, i32*)* @read_inpfile, null, null, metadata !21, i32 46} ; [ DW_TAG_subprogram ] [line 45] [def] [scope 46] [read_inpfile]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !17, metadata !20}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_inpfile]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"t_inpfile", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [t_inpfile] [line 48, size 0, align 0, offset 0] [from ]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 43, i64 192, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 43, size 192, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !19}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"count", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [count] [line 44, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"bSet", i32 45, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [bSet] [line 45, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"name", i32 46, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [name] [line 46, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!18 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"value", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [value] [line 47, size 64, align 64, offset 128] [from ]
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !80, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93}
!22 = metadata !{i32 786689, metadata !4, metadata !"fn", metadata !5, i32 16777261, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 45]
!23 = metadata !{i32 786689, metadata !4, metadata !"ninp", metadata !5, i32 33554477, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninp] [line 45]
!24 = metadata !{i32 786688, metadata !4, metadata !"in", metadata !5, i32 47, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 47]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!26 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!27 = metadata !{i32 786451, metadata !28, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!28 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !50, metadata !51, metadata !52, metadata !53, metadata !56, metadata !58, metadata !60, metadata !64, metadata !66, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !75, metadata !76}
!30 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!32 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!33 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!34 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !17} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!35 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !17} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!36 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !17} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!37 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !17} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!38 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !17} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!39 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !17} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!40 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !17} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!41 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !17} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!42 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !43} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!44 = metadata !{i32 786451, metadata !28, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !45, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!45 = metadata !{metadata !46, metadata !47, metadata !49}
!46 = metadata !{i32 786445, metadata !28, metadata !44, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!47 = metadata !{i32 786445, metadata !28, metadata !44, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !48} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!49 = metadata !{i32 786445, metadata !28, metadata !44, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!50 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !48} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!51 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!52 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!53 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !54} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!54 = metadata !{i32 786454, metadata !28, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!55 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!56 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !57} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!57 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!58 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !59} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!59 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!60 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !61} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!61 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !18, metadata !62, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!64 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !65} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!66 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !67} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!67 = metadata !{i32 786454, metadata !28, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!68 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !65} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!69 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !65} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!70 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !65} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!71 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !65} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!72 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!73 = metadata !{i32 786454, metadata !28, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!74 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!75 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!76 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !77} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!77 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !18, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!80 = metadata !{i32 786688, metadata !4, metadata !"buf", metadata !5, i32 48, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 48]
!81 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !18, metadata !82, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786465, i64 0, i64 4096}     ; [ DW_TAG_subrange_type ] [0, 4095]
!84 = metadata !{i32 786688, metadata !4, metadata !"lbuf", metadata !5, i32 48, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lbuf] [line 48]
!85 = metadata !{i32 786688, metadata !4, metadata !"rbuf", metadata !5, i32 48, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rbuf] [line 48]
!86 = metadata !{i32 786688, metadata !4, metadata !"ptr", metadata !5, i32 49, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 49]
!87 = metadata !{i32 786688, metadata !4, metadata !"cptr", metadata !5, i32 49, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cptr] [line 49]
!88 = metadata !{i32 786688, metadata !4, metadata !"inp", metadata !5, i32 50, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inp] [line 50]
!89 = metadata !{i32 786688, metadata !4, metadata !"nin", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nin] [line 51]
!90 = metadata !{i32 786688, metadata !4, metadata !"lc", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lc] [line 51]
!91 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 51]
!92 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 51]
!93 = metadata !{i32 786688, metadata !4, metadata !"k", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 51]
!94 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"write_inpfile", metadata !"write_inpfile", metadata !"", i32 134, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, %struct.t_inpfile*)* @write_inpfile, null, null, metadata !97, i32 135} ; [ DW_TAG_subprogram ] [line 134] [def] [scope 135] [write_inpfile]
!95 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{null, metadata !17, metadata !14, metadata !8}
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101, metadata !102}
!98 = metadata !{i32 786689, metadata !94, metadata !"fn", metadata !5, i32 16777350, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 134]
!99 = metadata !{i32 786689, metadata !94, metadata !"ninp", metadata !5, i32 33554566, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninp] [line 134]
!100 = metadata !{i32 786689, metadata !94, metadata !"inp", metadata !5, i32 50331782, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inp] [line 134]
!101 = metadata !{i32 786688, metadata !94, metadata !"out", metadata !5, i32 136, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out] [line 136]
!102 = metadata !{i32 786688, metadata !94, metadata !"i", metadata !5, i32 137, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 137]
!103 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_eint", metadata !"get_eint", metadata !"", i32 180, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, %struct.t_inpfile**, i8*, i32)* @get_eint, null, null, metadata !107, i32 181} ; [ DW_TAG_subprogram ] [line 180] [def] [scope 181] [get_eint]
!104 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{metadata !14, metadata !20, metadata !106, metadata !17, metadata !14}
!106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !116}
!108 = metadata !{i32 786689, metadata !103, metadata !"ninp", metadata !5, i32 16777396, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninp] [line 180]
!109 = metadata !{i32 786689, metadata !103, metadata !"inp", metadata !5, i32 33554612, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inp] [line 180]
!110 = metadata !{i32 786689, metadata !103, metadata !"name", metadata !5, i32 50331828, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 180]
!111 = metadata !{i32 786689, metadata !103, metadata !"def", metadata !5, i32 67109044, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [def] [line 180]
!112 = metadata !{i32 786688, metadata !103, metadata !"buf", metadata !5, i32 182, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 182]
!113 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !18, metadata !114, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from char]
!114 = metadata !{metadata !115}
!115 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!116 = metadata !{i32 786688, metadata !103, metadata !"ii", metadata !5, i32 183, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 183]
!117 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_ereal", metadata !"get_ereal", metadata !"", i32 197, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32*, %struct.t_inpfile**, i8*, float)* @get_ereal, null, null, metadata !122, i32 198} ; [ DW_TAG_subprogram ] [line 197] [def] [scope 198] [get_ereal]
!118 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!119 = metadata !{metadata !120, metadata !20, metadata !106, metadata !17, metadata !120}
!120 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!121 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128}
!123 = metadata !{i32 786689, metadata !117, metadata !"ninp", metadata !5, i32 16777413, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninp] [line 197]
!124 = metadata !{i32 786689, metadata !117, metadata !"inp", metadata !5, i32 33554629, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inp] [line 197]
!125 = metadata !{i32 786689, metadata !117, metadata !"name", metadata !5, i32 50331845, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 197]
!126 = metadata !{i32 786689, metadata !117, metadata !"def", metadata !5, i32 67109061, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [def] [line 197]
!127 = metadata !{i32 786688, metadata !117, metadata !"buf", metadata !5, i32 199, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 199]
!128 = metadata !{i32 786688, metadata !117, metadata !"ii", metadata !5, i32 200, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 200]
!129 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_estr", metadata !"get_estr", metadata !"", i32 214, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32*, %struct.t_inpfile**, i8*, i8*)* @get_estr, null, null, metadata !132, i32 215} ; [ DW_TAG_subprogram ] [line 214] [def] [scope 215] [get_estr]
!130 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{metadata !17, metadata !20, metadata !106, metadata !17, metadata !17}
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138}
!133 = metadata !{i32 786689, metadata !129, metadata !"ninp", metadata !5, i32 16777430, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninp] [line 214]
!134 = metadata !{i32 786689, metadata !129, metadata !"inp", metadata !5, i32 33554646, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inp] [line 214]
!135 = metadata !{i32 786689, metadata !129, metadata !"name", metadata !5, i32 50331862, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 214]
!136 = metadata !{i32 786689, metadata !129, metadata !"def", metadata !5, i32 67109078, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [def] [line 214]
!137 = metadata !{i32 786688, metadata !129, metadata !"buf", metadata !5, i32 216, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 216]
!138 = metadata !{i32 786688, metadata !129, metadata !"ii", metadata !5, i32 217, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 217]
!139 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_eeenum", metadata !"get_eeenum", metadata !"", i32 235, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, %struct.t_inpfile**, i8*, i8**, i32*, i32)* @get_eeenum, null, null, metadata !143, i32 237} ; [ DW_TAG_subprogram ] [line 235] [def] [scope 237] [get_eeenum]
!140 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{metadata !14, metadata !20, metadata !106, metadata !17, metadata !142, metadata !20, metadata !14}
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!143 = metadata !{metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152}
!144 = metadata !{i32 786689, metadata !139, metadata !"ninp", metadata !5, i32 16777451, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninp] [line 235]
!145 = metadata !{i32 786689, metadata !139, metadata !"inp", metadata !5, i32 33554667, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inp] [line 235]
!146 = metadata !{i32 786689, metadata !139, metadata !"name", metadata !5, i32 50331883, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 235]
!147 = metadata !{i32 786689, metadata !139, metadata !"defs", metadata !5, i32 67109099, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [defs] [line 235]
!148 = metadata !{i32 786689, metadata !139, metadata !"nerror", metadata !5, i32 83886316, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nerror] [line 236]
!149 = metadata !{i32 786689, metadata !139, metadata !"bPrintError", metadata !5, i32 100663532, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bPrintError] [line 236]
!150 = metadata !{i32 786688, metadata !139, metadata !"ii", metadata !5, i32 238, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 238]
!151 = metadata !{i32 786688, metadata !139, metadata !"i", metadata !5, i32 238, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 238]
!152 = metadata !{i32 786688, metadata !139, metadata !"j", metadata !5, i32 238, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 238]
!153 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_eenum", metadata !"get_eenum", metadata !"", i32 271, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, %struct.t_inpfile**, i8*, i8**)* @get_eenum, null, null, metadata !156, i32 272} ; [ DW_TAG_subprogram ] [line 271] [def] [scope 272] [get_eenum]
!154 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!155 = metadata !{metadata !14, metadata !20, metadata !106, metadata !17, metadata !142}
!156 = metadata !{metadata !157, metadata !158, metadata !159, metadata !160, metadata !161}
!157 = metadata !{i32 786689, metadata !153, metadata !"ninp", metadata !5, i32 16777487, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninp] [line 271]
!158 = metadata !{i32 786689, metadata !153, metadata !"inp", metadata !5, i32 33554703, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inp] [line 271]
!159 = metadata !{i32 786689, metadata !153, metadata !"name", metadata !5, i32 50331919, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 271]
!160 = metadata !{i32 786689, metadata !153, metadata !"defs", metadata !5, i32 67109135, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [defs] [line 271]
!161 = metadata !{i32 786688, metadata !153, metadata !"dum", metadata !5, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dum] [line 273]
!162 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_einp", metadata !"get_einp", metadata !"", i32 154, metadata !163, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, %struct.t_inpfile**, i8*)* @get_einp, null, null, metadata !165, i32 155} ; [ DW_TAG_subprogram ] [line 154] [local] [def] [scope 155] [get_einp]
!163 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{metadata !14, metadata !20, metadata !106, metadata !17}
!165 = metadata !{metadata !166, metadata !167, metadata !168, metadata !169}
!166 = metadata !{i32 786689, metadata !162, metadata !"ninp", metadata !5, i32 16777370, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninp] [line 154]
!167 = metadata !{i32 786689, metadata !162, metadata !"inp", metadata !5, i32 33554586, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inp] [line 154]
!168 = metadata !{i32 786689, metadata !162, metadata !"name", metadata !5, i32 50331802, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 154]
!169 = metadata !{i32 786688, metadata !162, metadata !"i", metadata !5, i32 156, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 156]
!170 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sort_inp", metadata !"sort_inp", metadata !"", i32 120, metadata !171, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !173, i32 121} ; [ DW_TAG_subprogram ] [line 120] [local] [def] [scope 121] [sort_inp]
!171 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!172 = metadata !{null, metadata !14, metadata !8}
!173 = metadata !{metadata !174, metadata !175, metadata !176, metadata !177}
!174 = metadata !{i32 786689, metadata !170, metadata !"ninp", metadata !5, i32 16777336, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninp] [line 120]
!175 = metadata !{i32 786689, metadata !170, metadata !"inp", metadata !5, i32 33554552, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inp] [line 120]
!176 = metadata !{i32 786688, metadata !170, metadata !"i", metadata !5, i32 122, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 122]
!177 = metadata !{i32 786688, metadata !170, metadata !"mm", metadata !5, i32 122, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mm] [line 122]
!178 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"inp_comp", metadata !"inp_comp", metadata !"", i32 115, metadata !179, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @inp_comp, null, null, metadata !183, i32 116} ; [ DW_TAG_subprogram ] [line 115] [local] [def] [scope 116] [inp_comp]
!179 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!180 = metadata !{metadata !14, metadata !181, metadata !181}
!181 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !182} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!182 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!183 = metadata !{metadata !184, metadata !185}
!184 = metadata !{i32 786689, metadata !178, metadata !"a", metadata !5, i32 16777331, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 115]
!185 = metadata !{i32 786689, metadata !178, metadata !"b", metadata !5, i32 33554547, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 115]
!186 = metadata !{metadata !187}
!187 = metadata !{i32 786484, i32 0, null, metadata !"inp_count", metadata !"inp_count", metadata !"", metadata !5, i32 43, metadata !14, i32 1, i32 1, i32* @inp_count, null} ; [ DW_TAG_variable ] [inp_count] [line 43] [local] [def]
!188 = metadata !{i32 45, i32 0, metadata !4, null}
!189 = metadata !{i32 48, i32 0, metadata !4, null}
!190 = metadata !{%struct.t_inpfile* null}
!191 = metadata !{i32 50, i32 0, metadata !4, null}
!192 = metadata !{i32 53, i32 0, metadata !4, null}
!193 = metadata !{metadata !"any pointer", metadata !194}
!194 = metadata !{metadata !"omnipotent char", metadata !195}
!195 = metadata !{metadata !"Simple C/C++ TBAA"}
!196 = metadata !{i32 54, i32 0, metadata !4, null}
!197 = metadata !{i32 55, i32 0, metadata !4, null}
!198 = metadata !{metadata !"int", metadata !194}
!199 = metadata !{i32 56, i32 0, metadata !4, null}
!200 = metadata !{i32 57, i32 0, metadata !4, null}
!201 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!202 = metadata !{i32 59, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !4, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!204 = metadata !{i32 60, i32 0, metadata !203, null}
!205 = metadata !{i32 61, i32 0, metadata !203, null}
!206 = metadata !{i32 63, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !203, i32 61, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!208 = metadata !{i32 64, i32 0, metadata !207, null}
!209 = metadata !{i32 66, i32 0, metadata !207, null}
!210 = metadata !{i32 68, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !207, i32 68, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!212 = metadata !{i32 71, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !207, i32 70, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!214 = metadata !{i32 72, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !213, i32 71, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!216 = metadata !{i32 73, i32 0, metadata !215, null}
!217 = metadata !{i32 77, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !219, i32 77, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!219 = metadata !{i32 786443, metadata !1, metadata !207, i32 76, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!220 = metadata !{i32 78, i32 0, metadata !218, null}
!221 = metadata !{i32 79, i32 0, metadata !219, null}
!222 = metadata !{i32 80, i32 0, metadata !219, null}
!223 = metadata !{i32 81, i32 0, metadata !219, null}
!224 = metadata !{i32 86, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !226, i32 86, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!226 = metadata !{i32 786443, metadata !1, metadata !219, i32 85, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!227 = metadata !{i32 82, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !219, i32 81, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!229 = metadata !{i32 83, i32 0, metadata !228, null}
!230 = metadata !{i32 87, i32 0, metadata !225, null}
!231 = metadata !{i32 88, i32 0, metadata !226, null}
!232 = metadata !{i32 89, i32 0, metadata !226, null}
!233 = metadata !{i32 90, i32 0, metadata !226, null}
!234 = metadata !{i32 91, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !226, i32 90, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!236 = metadata !{i32 92, i32 0, metadata !235, null}
!237 = metadata !{i32 96, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !226, i32 94, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!239 = metadata !{i32 97, i32 0, metadata !238, null}
!240 = metadata !{i32 98, i32 0, metadata !238, null}
!241 = metadata !{i32 99, i32 0, metadata !238, null}
!242 = metadata !{i32 100, i32 0, metadata !238, null}
!243 = metadata !{i32 106, i32 0, metadata !4, null}
!244 = metadata !{i32 108, i32 0, metadata !4, null}
!245 = metadata !{i32 109, i32 0, metadata !4, null}
!246 = metadata !{i32 111, i32 0, metadata !4, null}
!247 = metadata !{i32 113, i32 0, metadata !4, null}
!248 = metadata !{i32 134, i32 0, metadata !94, null}
!249 = metadata !{i32 786689, metadata !170, metadata !"ninp", metadata !5, i32 16777336, metadata !14, i32 0, metadata !250} ; [ DW_TAG_arg_variable ] [ninp] [line 120]
!250 = metadata !{i32 139, i32 0, metadata !94, null}
!251 = metadata !{i32 120, i32 0, metadata !170, metadata !250}
!252 = metadata !{i32 786689, metadata !170, metadata !"inp", metadata !5, i32 33554552, metadata !8, i32 0, metadata !250} ; [ DW_TAG_arg_variable ] [inp] [line 120]
!253 = metadata !{i32 -1}
!254 = metadata !{i32 786688, metadata !170, metadata !"mm", metadata !5, i32 122, metadata !14, i32 0, metadata !250} ; [ DW_TAG_auto_variable ] [mm] [line 122]
!255 = metadata !{i32 124, i32 0, metadata !170, metadata !250}
!256 = metadata !{i32 786688, metadata !170, metadata !"i", metadata !5, i32 122, metadata !14, i32 0, metadata !250} ; [ DW_TAG_auto_variable ] [i] [line 122]
!257 = metadata !{i32 125, i32 0, metadata !258, metadata !250}
!258 = metadata !{i32 786443, metadata !1, metadata !170, i32 125, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!259 = metadata !{i32 126, i32 0, metadata !258, metadata !250}
!260 = metadata !{i32 128, i32 0, metadata !261, metadata !250}
!261 = metadata !{i32 786443, metadata !1, metadata !262, i32 127, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!262 = metadata !{i32 786443, metadata !1, metadata !170, i32 127, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!263 = metadata !{i32 129, i32 0, metadata !261, metadata !250}
!264 = metadata !{i32 127, i32 0, metadata !262, metadata !250}
!265 = metadata !{i32 131, i32 0, metadata !170, metadata !250}
!266 = metadata !{i32 140, i32 0, metadata !94, null}
!267 = metadata !{i32 141, i32 0, metadata !94, null}
!268 = metadata !{i32 142, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !94, i32 142, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!270 = metadata !{i32 143, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !269, i32 142, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!272 = metadata !{i32 146, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !271, i32 145, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!274 = metadata !{i32 144, i32 0, metadata !271, null}
!275 = metadata !{i32 148, i32 0, metadata !273, null}
!276 = metadata !{i32 151, i32 0, metadata !94, null}
!277 = metadata !{i32 152, i32 0, metadata !94, null}
!278 = metadata !{i32 180, i32 0, metadata !103, null}
!279 = metadata !{i32 182, i32 0, metadata !103, null}
!280 = metadata !{i32 185, i32 0, metadata !103, null}
!281 = metadata !{i32 187, i32 0, metadata !103, null}
!282 = metadata !{i32 188, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !103, i32 187, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!284 = metadata !{i32 189, i32 0, metadata !283, null}
!285 = metadata !{i32 191, i32 0, metadata !283, null}
!286 = metadata !{i32 194, i32 0, metadata !103, null}
!287 = metadata !{i32 195, i32 0, metadata !103, null}
!288 = metadata !{i32 154, i32 0, metadata !162, null}
!289 = metadata !{i32 158, i32 0, metadata !162, null}
!290 = metadata !{i32 160, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !162, i32 160, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!292 = metadata !{i32 161, i32 0, metadata !291, null}
!293 = metadata !{i32 163, i32 0, metadata !162, null}
!294 = metadata !{i32 169, i32 0, metadata !162, null}
!295 = metadata !{i32 164, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !162, i32 163, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!297 = metadata !{i32 165, i32 0, metadata !296, null}
!298 = metadata !{i32 166, i32 0, metadata !296, null}
!299 = metadata !{i32 167, i32 0, metadata !296, null}
!300 = metadata !{i32 168, i32 0, metadata !296, null}
!301 = metadata !{i32 170, i32 0, metadata !162, null}
!302 = metadata !{i32 171, i32 0, metadata !162, null}
!303 = metadata !{i32 172, i32 0, metadata !162, null}
!304 = metadata !{i32 174, i32 0, metadata !162, null}
!305 = metadata !{i32 175, i32 0, metadata !162, null}
!306 = metadata !{i32 178, i32 0, metadata !162, null}
!307 = metadata !{i32 197, i32 0, metadata !117, null}
!308 = metadata !{i32 199, i32 0, metadata !117, null}
!309 = metadata !{i32 202, i32 0, metadata !117, null}
!310 = metadata !{i32 204, i32 0, metadata !117, null}
!311 = metadata !{i32 205, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !117, i32 204, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!313 = metadata !{i32 206, i32 0, metadata !312, null}
!314 = metadata !{i32 208, i32 0, metadata !312, null}
!315 = metadata !{i32 211, i32 0, metadata !117, null}
!316 = metadata !{i32 212, i32 0, metadata !117, null}
!317 = metadata !{i32 214, i32 0, metadata !129, null}
!318 = metadata !{i32 216, i32 0, metadata !129, null}
!319 = metadata !{i32 219, i32 0, metadata !129, null}
!320 = metadata !{i32 221, i32 0, metadata !129, null}
!321 = metadata !{i32 222, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !129, i32 221, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!323 = metadata !{i32 223, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !322, i32 222, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!325 = metadata !{i32 224, i32 0, metadata !324, null}
!326 = metadata !{i32 225, i32 0, metadata !324, null}
!327 = metadata !{i32 227, i32 0, metadata !322, null}
!328 = metadata !{i32 232, i32 0, metadata !129, null}
!329 = metadata !{i32 233, i32 0, metadata !129, null}
!330 = metadata !{i32 235, i32 0, metadata !139, null}
!331 = metadata !{i32 236, i32 0, metadata !139, null}
!332 = metadata !{i32 240, i32 0, metadata !139, null}
!333 = metadata !{i32 242, i32 0, metadata !139, null}
!334 = metadata !{i32 243, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !139, i32 242, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!336 = metadata !{i32 248, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !139, i32 248, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!338 = metadata !{i32 253, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !139, i32 252, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!340 = metadata !{i32 245, i32 0, metadata !335, null}
!341 = metadata !{i32 249, i32 0, metadata !337, null}
!342 = metadata !{i32 252, i32 0, metadata !139, null}
!343 = metadata !{i32 255, i32 0, metadata !339, null}
!344 = metadata !{i32 256, i32 0, metadata !339, null}
!345 = metadata !{i32 257, i32 0, metadata !339, null}
!346 = metadata !{i32 258, i32 0, metadata !339, null}
!347 = metadata !{i32 259, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !339, i32 258, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.c]
!349 = metadata !{i32 262, i32 0, metadata !339, null}
!350 = metadata !{i32 263, i32 0, metadata !339, null}
!351 = metadata !{i32 265, i32 0, metadata !339, null}
!352 = metadata !{i32 269, i32 0, metadata !139, null}
!353 = metadata !{i32 271, i32 0, metadata !153, null}
!354 = metadata !{i32 273, i32 0, metadata !153, null}
!355 = metadata !{i32 275, i32 0, metadata !153, null}
!356 = metadata !{i32 115, i32 0, metadata !178, null}
!357 = metadata !{i32 117, i32 0, metadata !178, null}
