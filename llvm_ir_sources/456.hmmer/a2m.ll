; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/a2m.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct._IO_FILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str1 = private unnamed_addr constant [37 x i8] c"Blank name in A2M file %s (line %d)\0A\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c">%s %s\0A\00", align 1
@.str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @ReadA2M(%struct.msafile_struct* %afp) #0 {
entry:
  %buf = alloca i8*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.msafile_struct* %afp}, i64 0, metadata !197), !dbg !219
  call void @llvm.dbg.declare(metadata !{i8** %buf}, metadata !199), !dbg !220
  call void @llvm.dbg.declare(metadata !{i32* %len1}, metadata !204), !dbg !221
  call void @llvm.dbg.declare(metadata !{i32* %len2}, metadata !205), !dbg !221
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !222
  %0 = load %struct._IO_FILE** %f, align 8, !dbg !222, !tbaa !223
  %call = call i32 @feof(%struct._IO_FILE* %0) #5, !dbg !222
  %tobool = icmp eq i32 %call, 0, !dbg !222
  br i1 %tobool, label %if.end, label %return, !dbg !222

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !226, i64 0, metadata !200), !dbg !227
  %call1 = call %struct.msa_struct* @MSAAlloc(i32 10, i32 0) #5, !dbg !228
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call1}, i64 0, metadata !198), !dbg !228
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !203), !dbg !229
  %call2687480 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5, !dbg !230
  call void @llvm.dbg.value(metadata !{i8* %call270}, i64 0, metadata !199), !dbg !230
  call void @llvm.dbg.value(metadata !{i8* %call2687480}, i64 0, metadata !199), !dbg !230
  store i8* %call2687480, i8** %buf, align 8, !dbg !230, !tbaa !223
  %cmp697581 = icmp eq i8* %call2687480, null, !dbg !230
  br i1 %cmp697581, label %if.then42, label %while.body.lr.ph.lr.ph.lr.ph, !dbg !230

while.body.lr.ph.lr.ph.lr.ph:                     ; preds = %if.end
  %aseq = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 0, !dbg !231
  %sqlen = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 42, !dbg !231
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !234
  %linenumber = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2, !dbg !234
  %index = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 39, !dbg !236
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 40, !dbg !237
  %sqname = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 1, !dbg !238
  %nseq = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 4, !dbg !239
  br label %while.body.lr.ph.lr.ph, !dbg !230

while.body.lr.ph.lr.ph:                           ; preds = %while.body.lr.ph.lr.ph.lr.ph, %if.end21
  %call2687484 = phi i8* [ %call2687480, %while.body.lr.ph.lr.ph.lr.ph ], [ %call26874, %if.end21 ]
  %idx.0.ph.ph83 = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph ], [ %call12, %if.end21 ]
  %name.0.ph.ph82 = phi i8* [ null, %while.body.lr.ph.lr.ph.lr.ph ], [ %call6, %if.end21 ]
  %idxprom30 = sext i32 %idx.0.ph.ph83 to i64, !dbg !231
  br label %while.body.lr.ph, !dbg !230

while.cond.outer.loopexit:                        ; preds = %if.else
  %call268 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5, !dbg !230
  call void @llvm.dbg.value(metadata !{i8* %call270}, i64 0, metadata !199), !dbg !230
  call void @llvm.dbg.value(metadata !{i8* %call268}, i64 0, metadata !199), !dbg !230
  store i8* %call268, i8** %buf, align 8, !dbg !230, !tbaa !223
  %cmp69 = icmp eq i8* %call268, null, !dbg !230
  br i1 %cmp69, label %if.then42, label %while.body.lr.ph, !dbg !230

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %while.cond.outer.loopexit
  %call26877 = phi i8* [ %call2687484, %while.body.lr.ph.lr.ph ], [ %call268, %while.cond.outer.loopexit ]
  %name.0.ph76 = phi i8* [ %name.0.ph.ph82, %while.body.lr.ph.lr.ph ], [ null, %while.cond.outer.loopexit ]
  %cmp22 = icmp eq i8* %name.0.ph76, null, !dbg !240
  br label %while.body, !dbg !230

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call270 = phi i8* [ %call26877, %while.body.lr.ph ], [ %call2, %while.cond.backedge ]
  %1 = load i8* %call270, align 1, !dbg !241, !tbaa !224
  %cmp3 = icmp eq i8 %1, 62, !dbg !241
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !241

if.then5:                                         ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8* %call270, i64 1, !dbg !242
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !199), !dbg !242
  store i8* %incdec.ptr, i8** %buf, align 8, !dbg !242, !tbaa !223
  %call6 = call i8* @sre_strtok(i8** %buf, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* %len1) #5, !dbg !243
  call void @llvm.dbg.value(metadata !{i8* %call6}, i64 0, metadata !200), !dbg !243
  %cmp7 = icmp eq i8* %call6, null, !dbg !243
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !243

if.then9:                                         ; preds = %if.then5
  %2 = load i8** %fname, align 8, !dbg !234, !tbaa !223
  %3 = load i32* %linenumber, align 4, !dbg !234, !tbaa !244
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([37 x i8]* @.str1, i64 0, i64 0), i8* %2, i32 %3) #5, !dbg !234
  br label %if.end10, !dbg !234

if.end10:                                         ; preds = %if.then9, %if.then5
  %call11 = call i8* @sre_strtok(i8** %buf, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i32* %len2) #5, !dbg !245
  call void @llvm.dbg.value(metadata !{i8* %call11}, i64 0, metadata !201), !dbg !245
  %4 = load %struct.GKI** %index, align 8, !dbg !236, !tbaa !223
  %call12 = call i32 @GKIStoreKey(%struct.GKI* %4, i8* %call6) #5, !dbg !236
  call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !203), !dbg !236
  %5 = load i32* %nseqalloc, align 4, !dbg !237, !tbaa !244
  %cmp13 = icmp slt i32 %call12, %5, !dbg !237
  br i1 %cmp13, label %if.end16, label %if.then15, !dbg !237

if.then15:                                        ; preds = %if.end10
  call void @MSAExpand(%struct.msa_struct* %call1) #5, !dbg !237
  br label %if.end16, !dbg !237

if.end16:                                         ; preds = %if.end10, %if.then15
  call void @llvm.dbg.value(metadata !{i32* %len1}, i64 0, metadata !204), !dbg !238
  %6 = load i32* %len1, align 4, !dbg !238, !tbaa !244
  %call17 = call i8* @sre_strdup(i8* %call6, i32 %6) #5, !dbg !238
  %idxprom = sext i32 %call12 to i64, !dbg !238
  %7 = load i8*** %sqname, align 8, !dbg !238, !tbaa !223
  %arrayidx = getelementptr inbounds i8** %7, i64 %idxprom, !dbg !238
  store i8* %call17, i8** %arrayidx, align 8, !dbg !238, !tbaa !223
  %cmp18 = icmp eq i8* %call11, null, !dbg !246
  br i1 %cmp18, label %if.end21, label %if.then20, !dbg !246

if.then20:                                        ; preds = %if.end16
  call void @MSASetSeqDescription(%struct.msa_struct* %call1, i32 %call12, i8* %call11) #5, !dbg !246
  br label %if.end21, !dbg !246

if.end21:                                         ; preds = %if.end16, %if.then20
  %8 = load i32* %nseq, align 4, !dbg !239, !tbaa !244
  %inc = add nsw i32 %8, 1, !dbg !239
  store i32 %inc, i32* %nseq, align 4, !dbg !239, !tbaa !244
  %call26874 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5, !dbg !230
  call void @llvm.dbg.value(metadata !{i8* %call270}, i64 0, metadata !199), !dbg !230
  call void @llvm.dbg.value(metadata !{i8* %call26874}, i64 0, metadata !199), !dbg !230
  store i8* %call26874, i8** %buf, align 8, !dbg !230, !tbaa !223
  %cmp6975 = icmp eq i8* %call26874, null, !dbg !230
  br i1 %cmp6975, label %while.end, label %while.body.lr.ph.lr.ph, !dbg !230

if.else:                                          ; preds = %while.body
  br i1 %cmp22, label %while.cond.outer.loopexit, label %if.then24, !dbg !240

if.then24:                                        ; preds = %if.else
  %call25 = call i8* @sre_strtok(i8** %buf, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* %len1) #5, !dbg !247
  call void @llvm.dbg.value(metadata !{i8* %call25}, i64 0, metadata !202), !dbg !247
  %cmp26 = icmp eq i8* %call25, null, !dbg !247
  br i1 %cmp26, label %while.cond.backedge, label %if.end29, !dbg !247

while.cond.backedge:                              ; preds = %if.then24, %if.end29
  %call2 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5, !dbg !230
  call void @llvm.dbg.value(metadata !{i8* %call270}, i64 0, metadata !199), !dbg !230
  call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !199), !dbg !230
  store i8* %call2, i8** %buf, align 8, !dbg !230, !tbaa !223
  %cmp = icmp eq i8* %call2, null, !dbg !230
  br i1 %cmp, label %while.end, label %while.body, !dbg !230

if.end29:                                         ; preds = %if.then24
  %9 = load i8*** %aseq, align 8, !dbg !231, !tbaa !223
  %arrayidx31 = getelementptr inbounds i8** %9, i64 %idxprom30, !dbg !231
  %10 = load i32** %sqlen, align 8, !dbg !231, !tbaa !223
  %arrayidx33 = getelementptr inbounds i32* %10, i64 %idxprom30, !dbg !231
  %11 = load i32* %arrayidx33, align 4, !dbg !231, !tbaa !244
  call void @llvm.dbg.value(metadata !{i32* %len1}, i64 0, metadata !204), !dbg !231
  %12 = load i32* %len1, align 4, !dbg !231, !tbaa !244
  %call34 = call i32 @sre_strcat(i8** %arrayidx31, i32 %11, i8* %call25, i32 %12) #5, !dbg !231
  %13 = load i32** %sqlen, align 8, !dbg !231, !tbaa !223
  %arrayidx37 = getelementptr inbounds i32* %13, i64 %idxprom30, !dbg !231
  store i32 %call34, i32* %arrayidx37, align 4, !dbg !231, !tbaa !244
  br label %while.cond.backedge, !dbg !248

while.end:                                        ; preds = %if.end21, %while.cond.backedge
  %name.0.ph73 = phi i8* [ %name.0.ph76, %while.cond.backedge ], [ %call6, %if.end21 ]
  %cmp40 = icmp eq i8* %name.0.ph73, null, !dbg !249
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !249

if.then42:                                        ; preds = %if.end, %while.cond.outer.loopexit, %while.end
  call void @MSAFree(%struct.msa_struct* %call1) #5, !dbg !250
  br label %return, !dbg !250

if.end43:                                         ; preds = %while.end
  call void @MSAVerifyParse(%struct.msa_struct* %call1) #5, !dbg !252
  br label %return, !dbg !253

return:                                           ; preds = %entry, %if.end43, %if.then42
  %retval.0 = phi %struct.msa_struct* [ null, %if.then42 ], [ %call1, %if.end43 ], [ null, %entry ]
  ret %struct.msa_struct* %retval.0, !dbg !254
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #3

; Function Attrs: optsize
declare i8* @MSAFileGetLine(%struct.msafile_struct*) #3

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: optsize
declare i32 @GKIStoreKey(%struct.GKI*, i8*) #3

; Function Attrs: optsize
declare void @MSAExpand(%struct.msa_struct*) #3

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #3

; Function Attrs: optsize
declare void @MSASetSeqDescription(%struct.msa_struct*, i32, i8*) #3

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #3

; Function Attrs: optsize
declare void @MSAFree(%struct.msa_struct*) #3

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #3

; Function Attrs: nounwind optsize uwtable
define void @WriteA2M(%struct._IO_FILE* nocapture %fp, %struct.msa_struct* nocapture %msa) #0 {
entry:
  %buf = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !210), !dbg !255
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !211), !dbg !255
  %0 = getelementptr inbounds [64 x i8]* %buf, i64 0, i64 0, !dbg !256
  call void @llvm.lifetime.start(i64 64, i8* %0) #4, !dbg !256
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %buf}, metadata !214), !dbg !256
  call void @llvm.dbg.value(metadata !257, i64 0, metadata !218), !dbg !258
  %arrayidx = getelementptr inbounds [64 x i8]* %buf, i64 0, i64 60, !dbg !259
  store i8 0, i8* %arrayidx, align 4, !dbg !259, !tbaa !224
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !212), !dbg !260
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !260
  %1 = load i32* %nseq, align 4, !dbg !260, !tbaa !244
  %cmp41 = icmp sgt i32 %1, 0, !dbg !260
  br i1 %cmp41, label %for.body.lr.ph, label %for.end22, !dbg !260

for.body.lr.ph:                                   ; preds = %entry
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !262
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15, !dbg !262
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !264
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !266
  br label %for.body, !dbg !260

for.body:                                         ; preds = %for.body.lr.ph, %for.inc21
  %indvars.iv43 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next44, %for.inc21 ]
  %2 = load i8*** %sqname, align 8, !dbg !262, !tbaa !223
  %arrayidx2 = getelementptr inbounds i8** %2, i64 %indvars.iv43, !dbg !262
  %3 = load i8** %arrayidx2, align 8, !dbg !262, !tbaa !223
  %4 = load i8*** %sqdesc, align 8, !dbg !262, !tbaa !223
  %cmp3 = icmp eq i8** %4, null, !dbg !262
  br i1 %cmp3, label %cond.end, label %land.lhs.true, !dbg !262

land.lhs.true:                                    ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i8** %4, i64 %indvars.iv43, !dbg !262
  %5 = load i8** %arrayidx6, align 8, !dbg !262, !tbaa !223
  %cmp7 = icmp eq i8* %5, null, !dbg !262
  %. = select i1 %cmp7, i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), i8* %5, !dbg !262
  br label %cond.end, !dbg !262

cond.end:                                         ; preds = %land.lhs.true, %for.body
  %cond = phi i8* [ getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), %for.body ], [ %., %land.lhs.true ], !dbg !262
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* %3, i8* %cond) #5, !dbg !262
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !213), !dbg !264
  %6 = load i32* %alen, align 4, !dbg !264, !tbaa !244
  %cmp1239 = icmp sgt i32 %6, 0, !dbg !264
  br i1 %cmp1239, label %for.body13, label %for.inc21, !dbg !264

for.body13:                                       ; preds = %cond.end, %for.body13
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body13 ], [ 0, %cond.end ]
  %7 = load i8*** %aseq, align 8, !dbg !266, !tbaa !223
  %arrayidx16 = getelementptr inbounds i8** %7, i64 %indvars.iv43, !dbg !266
  %8 = load i8** %arrayidx16, align 8, !dbg !266, !tbaa !223
  %arrayidx17 = getelementptr inbounds i8* %8, i64 %indvars.iv, !dbg !266
  %call18 = call i8* @strncpy(i8* %0, i8* %arrayidx17, i64 60) #5, !dbg !266
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* %0) #5, !dbg !268
  %indvars.iv.next = add i64 %indvars.iv, 60, !dbg !264
  %9 = load i32* %alen, align 4, !dbg !264, !tbaa !244
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !264
  %cmp12 = icmp slt i32 %10, %9, !dbg !264
  br i1 %cmp12, label %for.body13, label %for.inc21, !dbg !264

for.inc21:                                        ; preds = %for.body13, %cond.end
  %indvars.iv.next44 = add i64 %indvars.iv43, 1, !dbg !260
  %11 = load i32* %nseq, align 4, !dbg !260, !tbaa !244
  %12 = trunc i64 %indvars.iv.next44 to i32, !dbg !260
  %cmp = icmp slt i32 %12, %11, !dbg !260
  br i1 %cmp, label %for.body, label %for.end22, !dbg !260

for.end22:                                        ; preds = %for.inc21, %entry
  call void @llvm.lifetime.end(i64 64, i8* %0) #4, !dbg !269
  ret void, !dbg !269
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/a2m.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/a2m.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !206}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ReadA2M", metadata !"ReadA2M", metadata !"", i32 40, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.msa_struct* (%struct.msafile_struct*)* @ReadA2M, null, null, metadata !196, i32 41} ; [ DW_TAG_subprogram ] [line 40] [def] [scope 41] [ReadA2M]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/a2m.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !87}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSA]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"MSA", i32 177, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [MSA] [line 177, size 0, align 0, offset 0] [from msa_struct]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"msa_struct", i32 112, i64 2880, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [msa_struct] [line 112, size 2880, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !17, metadata !18, metadata !21, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !41, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !53, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !84, metadata !85, metadata !86}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"aseq", i32 115, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [aseq] [line 115, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!16 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sqname", i32 116, i64 64, i64 64, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [sqname] [line 116, size 64, align 64, offset 64] [from ]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wgt", i32 117, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [wgt] [line 117, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!20 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"alen", i32 118, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [alen] [line 118, size 32, align 32, offset 192] [from int]
!22 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nseq", i32 119, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ] [nseq] [line 119, size 32, align 32, offset 224] [from int]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"flags", i32 123, i64 32, i64 32, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [flags] [line 123, size 32, align 32, offset 256] [from int]
!25 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 124, i64 32, i64 32, i64 288, i32 0, metadata !22} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from int]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"name", i32 125, i64 64, i64 64, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [name] [line 125, size 64, align 64, offset 320] [from ]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"desc", i32 126, i64 64, i64 64, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [desc] [line 126, size 64, align 64, offset 384] [from ]
!28 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"acc", i32 127, i64 64, i64 64, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [acc] [line 127, size 64, align 64, offset 448] [from ]
!29 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"au", i32 128, i64 64, i64 64, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [au] [line 128, size 64, align 64, offset 512] [from ]
!30 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ss_cons", i32 129, i64 64, i64 64, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [ss_cons] [line 129, size 64, align 64, offset 576] [from ]
!31 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sa_cons", i32 130, i64 64, i64 64, i64 640, i32 0, metadata !15} ; [ DW_TAG_member ] [sa_cons] [line 130, size 64, align 64, offset 640] [from ]
!32 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rf", i32 131, i64 64, i64 64, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [rf] [line 131, size 64, align 64, offset 704] [from ]
!33 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sqacc", i32 132, i64 64, i64 64, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [sqacc] [line 132, size 64, align 64, offset 768] [from ]
!34 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sqdesc", i32 133, i64 64, i64 64, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [sqdesc] [line 133, size 64, align 64, offset 832] [from ]
!35 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ss", i32 134, i64 64, i64 64, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [ss] [line 134, size 64, align 64, offset 896] [from ]
!36 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sa", i32 135, i64 64, i64 64, i64 960, i32 0, metadata !14} ; [ DW_TAG_member ] [sa] [line 135, size 64, align 64, offset 960] [from ]
!37 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"cutoff", i32 136, i64 192, i64 32, i64 1024, i32 0, metadata !38} ; [ DW_TAG_member ] [cutoff] [line 136, size 192, align 32, offset 1024] [from ]
!38 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !20, metadata !39, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from float]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!41 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"cutoff_is_set", i32 137, i64 192, i64 32, i64 1216, i32 0, metadata !42} ; [ DW_TAG_member ] [cutoff_is_set] [line 137, size 192, align 32, offset 1216] [from ]
!42 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !22, metadata !39, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!43 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"comment", i32 144, i64 64, i64 64, i64 1408, i32 0, metadata !14} ; [ DW_TAG_member ] [comment] [line 144, size 64, align 64, offset 1408] [from ]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ncomment", i32 145, i64 32, i64 32, i64 1472, i32 0, metadata !22} ; [ DW_TAG_member ] [ncomment] [line 145, size 32, align 32, offset 1472] [from int]
!45 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"alloc_ncomment", i32 146, i64 32, i64 32, i64 1504, i32 0, metadata !22} ; [ DW_TAG_member ] [alloc_ncomment] [line 146, size 32, align 32, offset 1504] [from int]
!46 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gf_tag", i32 148, i64 64, i64 64, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [gf_tag] [line 148, size 64, align 64, offset 1536] [from ]
!47 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gf", i32 149, i64 64, i64 64, i64 1600, i32 0, metadata !14} ; [ DW_TAG_member ] [gf] [line 149, size 64, align 64, offset 1600] [from ]
!48 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ngf", i32 150, i64 32, i64 32, i64 1664, i32 0, metadata !22} ; [ DW_TAG_member ] [ngf] [line 150, size 32, align 32, offset 1664] [from int]
!49 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"alloc_ngf", i32 151, i64 32, i64 32, i64 1696, i32 0, metadata !22} ; [ DW_TAG_member ] [alloc_ngf] [line 151, size 32, align 32, offset 1696] [from int]
!50 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gs_tag", i32 153, i64 64, i64 64, i64 1728, i32 0, metadata !14} ; [ DW_TAG_member ] [gs_tag] [line 153, size 64, align 64, offset 1728] [from ]
!51 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gs", i32 154, i64 64, i64 64, i64 1792, i32 0, metadata !52} ; [ DW_TAG_member ] [gs] [line 154, size 64, align 64, offset 1792] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gs_idx", i32 155, i64 64, i64 64, i64 1856, i32 0, metadata !54} ; [ DW_TAG_member ] [gs_idx] [line 155, size 64, align 64, offset 1856] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GKI]
!55 = metadata !{i32 786454, metadata !11, null, metadata !"GKI", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [GKI] [line 42, size 0, align 0, offset 0] [from ]
!56 = metadata !{i32 786451, metadata !57, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !58, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!57 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!58 = metadata !{metadata !59, metadata !67, metadata !68, metadata !69}
!59 = metadata !{i32 786445, metadata !57, metadata !56, metadata !"table", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ] [table] [line 37, size 64, align 64, offset 0] [from ]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gki_elem]
!62 = metadata !{i32 786451, metadata !57, null, metadata !"gki_elem", i32 26, i64 192, i64 64, i32 0, i32 0, null, metadata !63, i32 0, null, null} ; [ DW_TAG_structure_type ] [gki_elem] [line 26, size 192, align 64, offset 0] [from ]
!63 = metadata !{metadata !64, metadata !65, metadata !66}
!64 = metadata !{i32 786445, metadata !57, metadata !62, metadata !"key", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [key] [line 27, size 64, align 64, offset 0] [from ]
!65 = metadata !{i32 786445, metadata !57, metadata !62, metadata !"idx", i32 28, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [idx] [line 28, size 32, align 32, offset 64] [from int]
!66 = metadata !{i32 786445, metadata !57, metadata !62, metadata !"nxt", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !61} ; [ DW_TAG_member ] [nxt] [line 29, size 64, align 64, offset 128] [from ]
!67 = metadata !{i32 786445, metadata !57, metadata !56, metadata !"primelevel", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [primelevel] [line 39, size 32, align 32, offset 64] [from int]
!68 = metadata !{i32 786445, metadata !57, metadata !56, metadata !"nhash", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [nhash] [line 40, size 32, align 32, offset 96] [from int]
!69 = metadata !{i32 786445, metadata !57, metadata !56, metadata !"nkeys", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [nkeys] [line 41, size 32, align 32, offset 128] [from int]
!70 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ngs", i32 156, i64 32, i64 32, i64 1920, i32 0, metadata !22} ; [ DW_TAG_member ] [ngs] [line 156, size 32, align 32, offset 1920] [from int]
!71 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gc_tag", i32 158, i64 64, i64 64, i64 1984, i32 0, metadata !14} ; [ DW_TAG_member ] [gc_tag] [line 158, size 64, align 64, offset 1984] [from ]
!72 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gc", i32 159, i64 64, i64 64, i64 2048, i32 0, metadata !14} ; [ DW_TAG_member ] [gc] [line 159, size 64, align 64, offset 2048] [from ]
!73 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gc_idx", i32 160, i64 64, i64 64, i64 2112, i32 0, metadata !54} ; [ DW_TAG_member ] [gc_idx] [line 160, size 64, align 64, offset 2112] [from ]
!74 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ngc", i32 161, i64 32, i64 32, i64 2176, i32 0, metadata !22} ; [ DW_TAG_member ] [ngc] [line 161, size 32, align 32, offset 2176] [from int]
!75 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gr_tag", i32 163, i64 64, i64 64, i64 2240, i32 0, metadata !14} ; [ DW_TAG_member ] [gr_tag] [line 163, size 64, align 64, offset 2240] [from ]
!76 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gr", i32 164, i64 64, i64 64, i64 2304, i32 0, metadata !52} ; [ DW_TAG_member ] [gr] [line 164, size 64, align 64, offset 2304] [from ]
!77 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gr_idx", i32 165, i64 64, i64 64, i64 2368, i32 0, metadata !54} ; [ DW_TAG_member ] [gr_idx] [line 165, size 64, align 64, offset 2368] [from ]
!78 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ngr", i32 166, i64 32, i64 32, i64 2432, i32 0, metadata !22} ; [ DW_TAG_member ] [ngr] [line 166, size 32, align 32, offset 2432] [from int]
!79 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"index", i32 170, i64 64, i64 64, i64 2496, i32 0, metadata !54} ; [ DW_TAG_member ] [index] [line 170, size 64, align 64, offset 2496] [from ]
!80 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nseqalloc", i32 171, i64 32, i64 32, i64 2560, i32 0, metadata !22} ; [ DW_TAG_member ] [nseqalloc] [line 171, size 32, align 32, offset 2560] [from int]
!81 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nseqlump", i32 172, i64 32, i64 32, i64 2592, i32 0, metadata !22} ; [ DW_TAG_member ] [nseqlump] [line 172, size 32, align 32, offset 2592] [from int]
!82 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sqlen", i32 173, i64 64, i64 64, i64 2624, i32 0, metadata !83} ; [ DW_TAG_member ] [sqlen] [line 173, size 64, align 64, offset 2624] [from ]
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!84 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sslen", i32 174, i64 64, i64 64, i64 2688, i32 0, metadata !83} ; [ DW_TAG_member ] [sslen] [line 174, size 64, align 64, offset 2688] [from ]
!85 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"salen", i32 175, i64 64, i64 64, i64 2752, i32 0, metadata !83} ; [ DW_TAG_member ] [salen] [line 175, size 64, align 64, offset 2752] [from ]
!86 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lastidx", i32 176, i64 32, i64 32, i64 2816, i32 0, metadata !22} ; [ DW_TAG_member ] [lastidx] [line 176, size 32, align 32, offset 2816] [from int]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSAFILE]
!88 = metadata !{i32 786454, metadata !1, null, metadata !"MSAFILE", i32 199, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [MSAFILE] [line 199, size 0, align 0, offset 0] [from msafile_struct]
!89 = metadata !{i32 786451, metadata !11, null, metadata !"msafile_struct", i32 186, i64 512, i64 64, i32 0, i32 0, null, metadata !90, i32 0, null, null} ; [ DW_TAG_structure_type ] [msafile_struct] [line 186, size 512, align 64, offset 0] [from ]
!90 = metadata !{metadata !91, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !193, metadata !194, metadata !195}
!91 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"f", i32 187, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ] [f] [line 187, size 64, align 64, offset 0] [from ]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!93 = metadata !{i32 786454, metadata !11, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!94 = metadata !{i32 786451, metadata !95, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !96, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!95 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !117, metadata !118, metadata !119, metadata !120, metadata !123, metadata !125, metadata !127, metadata !131, metadata !133, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !142, metadata !143}
!97 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!98 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!99 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!100 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!101 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!102 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!103 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!104 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!105 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!106 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!107 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!108 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!109 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !110} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!111 = metadata !{i32 786451, metadata !95, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !112, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!112 = metadata !{metadata !113, metadata !114, metadata !116}
!113 = metadata !{i32 786445, metadata !95, metadata !111, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!114 = metadata !{i32 786445, metadata !95, metadata !111, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !115} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!115 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!116 = metadata !{i32 786445, metadata !95, metadata !111, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!117 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !115} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!118 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!119 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !22} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!120 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !121} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!121 = metadata !{i32 786454, metadata !95, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!122 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!123 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !124} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!124 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!125 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !126} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!126 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!127 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !128} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!128 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !16, metadata !129, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!129 = metadata !{metadata !130}
!130 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!131 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !132} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!133 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !134} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!134 = metadata !{i32 786454, metadata !95, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!135 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !132} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!136 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !132} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!137 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !132} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!138 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !132} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!139 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !140} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!140 = metadata !{i32 786454, metadata !95, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!141 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!142 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !22} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!143 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !144} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!144 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !16, metadata !145, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!145 = metadata !{metadata !146}
!146 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!147 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"fname", i32 188, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [fname] [line 188, size 64, align 64, offset 64] [from ]
!148 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"linenumber", i32 189, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [linenumber] [line 189, size 32, align 32, offset 128] [from int]
!149 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"buf", i32 191, i64 64, i64 64, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [buf] [line 191, size 64, align 64, offset 192] [from ]
!150 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"buflen", i32 192, i64 32, i64 32, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [buflen] [line 192, size 32, align 32, offset 256] [from int]
!151 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"ssi", i32 194, i64 64, i64 64, i64 320, i32 0, metadata !152} ; [ DW_TAG_member ] [ssi] [line 194, size 64, align 64, offset 320] [from ]
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SSIFILE]
!153 = metadata !{i32 786454, metadata !11, null, metadata !"SSIFILE", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ] [SSIFILE] [line 76, size 0, align 0, offset 0] [from ssifile_s]
!154 = metadata !{i32 786451, metadata !155, null, metadata !"ssifile_s", i32 49, i64 1152, i64 64, i32 0, i32 0, null, metadata !156, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssifile_s] [line 49, size 1152, align 64, offset 0] [from ]
!155 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!156 = metadata !{metadata !157, metadata !158, metadata !161, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !190, metadata !191, metadata !192}
!157 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"fp", i32 50, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ] [fp] [line 50, size 64, align 64, offset 0] [from ]
!158 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"flags", i32 51, i64 32, i64 32, i64 64, i32 0, metadata !159} ; [ DW_TAG_member ] [flags] [line 51, size 32, align 32, offset 64] [from sqd_uint32]
!159 = metadata !{i32 786454, metadata !155, null, metadata !"sqd_uint32", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ] [sqd_uint32] [line 41, size 0, align 0, offset 0] [from unsigned int]
!160 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!161 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"nfiles", i32 52, i64 16, i64 16, i64 96, i32 0, metadata !162} ; [ DW_TAG_member ] [nfiles] [line 52, size 16, align 16, offset 96] [from sqd_uint16]
!162 = metadata !{i32 786454, metadata !155, null, metadata !"sqd_uint16", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !124} ; [ DW_TAG_typedef ] [sqd_uint16] [line 40, size 0, align 0, offset 0] [from unsigned short]
!163 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"nprimary", i32 53, i64 32, i64 32, i64 128, i32 0, metadata !159} ; [ DW_TAG_member ] [nprimary] [line 53, size 32, align 32, offset 128] [from sqd_uint32]
!164 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"nsecondary", i32 54, i64 32, i64 32, i64 160, i32 0, metadata !159} ; [ DW_TAG_member ] [nsecondary] [line 54, size 32, align 32, offset 160] [from sqd_uint32]
!165 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"flen", i32 55, i64 32, i64 32, i64 192, i32 0, metadata !159} ; [ DW_TAG_member ] [flen] [line 55, size 32, align 32, offset 192] [from sqd_uint32]
!166 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"plen", i32 56, i64 32, i64 32, i64 224, i32 0, metadata !159} ; [ DW_TAG_member ] [plen] [line 56, size 32, align 32, offset 224] [from sqd_uint32]
!167 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"slen", i32 57, i64 32, i64 32, i64 256, i32 0, metadata !159} ; [ DW_TAG_member ] [slen] [line 57, size 32, align 32, offset 256] [from sqd_uint32]
!168 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"frecsize", i32 58, i64 32, i64 32, i64 288, i32 0, metadata !159} ; [ DW_TAG_member ] [frecsize] [line 58, size 32, align 32, offset 288] [from sqd_uint32]
!169 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"precsize", i32 59, i64 32, i64 32, i64 320, i32 0, metadata !159} ; [ DW_TAG_member ] [precsize] [line 59, size 32, align 32, offset 320] [from sqd_uint32]
!170 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"srecsize", i32 60, i64 32, i64 32, i64 352, i32 0, metadata !159} ; [ DW_TAG_member ] [srecsize] [line 60, size 32, align 32, offset 352] [from sqd_uint32]
!171 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"foffset", i32 61, i64 128, i64 64, i64 384, i32 0, metadata !172} ; [ DW_TAG_member ] [foffset] [line 61, size 128, align 64, offset 384] [from SSIOFFSET]
!172 = metadata !{i32 786454, metadata !155, null, metadata !"SSIOFFSET", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !173} ; [ DW_TAG_typedef ] [SSIOFFSET] [line 42, size 0, align 0, offset 0] [from ssioffset_s]
!173 = metadata !{i32 786451, metadata !155, null, metadata !"ssioffset_s", i32 35, i64 128, i64 64, i32 0, i32 0, null, metadata !174, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssioffset_s] [line 35, size 128, align 64, offset 0] [from ]
!174 = metadata !{metadata !175, metadata !176}
!175 = metadata !{i32 786445, metadata !155, metadata !173, metadata !"mode", i32 36, i64 8, i64 8, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [mode] [line 36, size 8, align 8, offset 0] [from char]
!176 = metadata !{i32 786445, metadata !155, metadata !173, metadata !"off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !177} ; [ DW_TAG_member ] [off] [line 40, size 64, align 64, offset 64] [from ]
!177 = metadata !{i32 786455, metadata !155, metadata !173, metadata !"", i32 37, i64 64, i64 64, i64 0, i32 0, null, metadata !178, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 37, size 64, align 64, offset 0] [from ]
!178 = metadata !{metadata !179, metadata !180}
!179 = metadata !{i32 786445, metadata !155, metadata !177, metadata !"i32", i32 38, i64 32, i64 32, i64 0, i32 0, metadata !159} ; [ DW_TAG_member ] [i32] [line 38, size 32, align 32, offset 0] [from sqd_uint32]
!180 = metadata !{i32 786445, metadata !155, metadata !177, metadata !"i64", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_member ] [i64] [line 39, size 64, align 64, offset 0] [from sqd_uint64]
!181 = metadata !{i32 786454, metadata !155, null, metadata !"sqd_uint64", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !182} ; [ DW_TAG_typedef ] [sqd_uint64] [line 42, size 0, align 0, offset 0] [from long long unsigned int]
!182 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!183 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"poffset", i32 62, i64 128, i64 64, i64 512, i32 0, metadata !172} ; [ DW_TAG_member ] [poffset] [line 62, size 128, align 64, offset 512] [from SSIOFFSET]
!184 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"soffset", i32 63, i64 128, i64 64, i64 640, i32 0, metadata !172} ; [ DW_TAG_member ] [soffset] [line 63, size 128, align 64, offset 640] [from SSIOFFSET]
!185 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"imode", i32 65, i64 8, i64 8, i64 768, i32 0, metadata !16} ; [ DW_TAG_member ] [imode] [line 65, size 8, align 8, offset 768] [from char]
!186 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"smode", i32 66, i64 8, i64 8, i64 776, i32 0, metadata !16} ; [ DW_TAG_member ] [smode] [line 66, size 8, align 8, offset 776] [from char]
!187 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"filename", i32 70, i64 64, i64 64, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [filename] [line 70, size 64, align 64, offset 832] [from ]
!188 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"fileformat", i32 71, i64 64, i64 64, i64 896, i32 0, metadata !189} ; [ DW_TAG_member ] [fileformat] [line 71, size 64, align 64, offset 896] [from ]
!189 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_uint32]
!190 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"fileflags", i32 72, i64 64, i64 64, i64 960, i32 0, metadata !189} ; [ DW_TAG_member ] [fileflags] [line 72, size 64, align 64, offset 960] [from ]
!191 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"bpl", i32 73, i64 64, i64 64, i64 1024, i32 0, metadata !189} ; [ DW_TAG_member ] [bpl] [line 73, size 64, align 64, offset 1024] [from ]
!192 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"rpl", i32 74, i64 64, i64 64, i64 1088, i32 0, metadata !189} ; [ DW_TAG_member ] [rpl] [line 74, size 64, align 64, offset 1088] [from ]
!193 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"do_gzip", i32 196, i64 32, i64 32, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ] [do_gzip] [line 196, size 32, align 32, offset 384] [from int]
!194 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"do_stdin", i32 197, i64 32, i64 32, i64 416, i32 0, metadata !22} ; [ DW_TAG_member ] [do_stdin] [line 197, size 32, align 32, offset 416] [from int]
!195 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"format", i32 198, i64 32, i64 32, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [format] [line 198, size 32, align 32, offset 448] [from int]
!196 = metadata !{metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205}
!197 = metadata !{i32 786689, metadata !4, metadata !"afp", metadata !5, i32 16777256, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [afp] [line 40]
!198 = metadata !{i32 786688, metadata !4, metadata !"msa", metadata !5, i32 42, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msa] [line 42]
!199 = metadata !{i32 786688, metadata !4, metadata !"buf", metadata !5, i32 43, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 43]
!200 = metadata !{i32 786688, metadata !4, metadata !"name", metadata !5, i32 44, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 44]
!201 = metadata !{i32 786688, metadata !4, metadata !"desc", metadata !5, i32 45, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [desc] [line 45]
!202 = metadata !{i32 786688, metadata !4, metadata !"seq", metadata !5, i32 46, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seq] [line 46]
!203 = metadata !{i32 786688, metadata !4, metadata !"idx", metadata !5, i32 47, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 47]
!204 = metadata !{i32 786688, metadata !4, metadata !"len1", metadata !5, i32 48, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len1] [line 48]
!205 = metadata !{i32 786688, metadata !4, metadata !"len2", metadata !5, i32 48, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len2] [line 48]
!206 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"WriteA2M", metadata !"WriteA2M", metadata !"", i32 96, metadata !207, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.msa_struct*)* @WriteA2M, null, null, metadata !209, i32 97} ; [ DW_TAG_subprogram ] [line 96] [def] [scope 97] [WriteA2M]
!207 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!208 = metadata !{null, metadata !92, metadata !8}
!209 = metadata !{metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !218}
!210 = metadata !{i32 786689, metadata !206, metadata !"fp", metadata !5, i32 16777312, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 96]
!211 = metadata !{i32 786689, metadata !206, metadata !"msa", metadata !5, i32 33554528, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 96]
!212 = metadata !{i32 786688, metadata !206, metadata !"idx", metadata !5, i32 98, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 98]
!213 = metadata !{i32 786688, metadata !206, metadata !"pos", metadata !5, i32 99, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 99]
!214 = metadata !{i32 786688, metadata !206, metadata !"buf", metadata !5, i32 100, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 100]
!215 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !16, metadata !216, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!216 = metadata !{metadata !217}
!217 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!218 = metadata !{i32 786688, metadata !206, metadata !"cpl", metadata !5, i32 101, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cpl] [line 101]
!219 = metadata !{i32 40, i32 0, metadata !4, null}
!220 = metadata !{i32 43, i32 0, metadata !4, null}
!221 = metadata !{i32 48, i32 0, metadata !4, null}
!222 = metadata !{i32 50, i32 0, metadata !4, null}
!223 = metadata !{metadata !"any pointer", metadata !224}
!224 = metadata !{metadata !"omnipotent char", metadata !225}
!225 = metadata !{metadata !"Simple C/C++ TBAA"}
!226 = metadata !{i8* null}
!227 = metadata !{i32 52, i32 0, metadata !4, null}
!228 = metadata !{i32 53, i32 0, metadata !4, null}
!229 = metadata !{i32 54, i32 0, metadata !4, null}
!230 = metadata !{i32 55, i32 0, metadata !4, null}
!231 = metadata !{i32 74, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !233, i32 72, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/a2m.c]
!233 = metadata !{i32 786443, metadata !1, metadata !4, i32 56, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/a2m.c]
!234 = metadata !{i32 61, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !233, i32 58, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/a2m.c]
!236 = metadata !{i32 64, i32 0, metadata !235, null}
!237 = metadata !{i32 65, i32 0, metadata !235, null}
!238 = metadata !{i32 67, i32 0, metadata !235, null}
!239 = metadata !{i32 69, i32 0, metadata !235, null}
!240 = metadata !{i32 71, i32 0, metadata !233, null}
!241 = metadata !{i32 57, i32 0, metadata !233, null}
!242 = metadata !{i32 59, i32 0, metadata !235, null}
!243 = metadata !{i32 60, i32 0, metadata !235, null}
!244 = metadata !{metadata !"int", metadata !224}
!245 = metadata !{i32 62, i32 0, metadata !235, null}
!246 = metadata !{i32 68, i32 0, metadata !235, null}
!247 = metadata !{i32 73, i32 0, metadata !232, null}
!248 = metadata !{i32 75, i32 0, metadata !232, null}
!249 = metadata !{i32 77, i32 0, metadata !4, null}
!250 = metadata !{i32 77, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !4, i32 77, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/a2m.c]
!252 = metadata !{i32 79, i32 0, metadata !4, null}
!253 = metadata !{i32 80, i32 0, metadata !4, null}
!254 = metadata !{i32 81, i32 0, metadata !4, null}
!255 = metadata !{i32 96, i32 0, metadata !206, null}
!256 = metadata !{i32 100, i32 0, metadata !206, null}
!257 = metadata !{i32 60}
!258 = metadata !{i32 101, i32 0, metadata !206, null}
!259 = metadata !{i32 103, i32 0, metadata !206, null}
!260 = metadata !{i32 104, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !206, i32 104, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/a2m.c]
!262 = metadata !{i32 106, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !261, i32 105, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/a2m.c]
!264 = metadata !{i32 109, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !263, i32 109, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/a2m.c]
!266 = metadata !{i32 111, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !265, i32 110, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/a2m.c]
!268 = metadata !{i32 112, i32 0, metadata !267, null}
!269 = metadata !{i32 115, i32 0, metadata !206, null}
