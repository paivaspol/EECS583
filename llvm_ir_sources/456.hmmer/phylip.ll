; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/phylip.c'
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
@.str1 = private unnamed_addr constant [61 x i8] c"Failed to parse nseq/alen from first line of PHYLIP file %s\0A\00", align 1
@.str2 = private unnamed_addr constant [65 x i8] c"nseq and/or alen not an integer in first line of PHYLIP file %s\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"Failed to parse sequence at line %d of PHYLIP file %s\0A\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c" %d  %d\0A\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str7 = private unnamed_addr constant [12 x i8] c"%-10.10s%s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @ReadPhylip(%struct.msafile_struct* %afp) #0 {
entry:
  %s = alloca i8*, align 8
  %name = alloca [11 x i8], align 1
  %slen = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.msafile_struct* %afp}, i64 0, metadata !213), !dbg !240
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !215), !dbg !241
  call void @llvm.dbg.declare(metadata !{[11 x i8]* %name}, metadata !218), !dbg !242
  call void @llvm.dbg.declare(metadata !{i32* %slen}, metadata !225), !dbg !243
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !244
  %0 = load %struct._IO_FILE** %f, align 8, !dbg !244, !tbaa !245
  %call = call i32 @feof(%struct._IO_FILE* %0) #7, !dbg !244
  %tobool = icmp eq i32 %call, 0, !dbg !244
  br i1 %tobool, label %while.cond, label %return, !dbg !244

while.cond:                                       ; preds = %entry, %while.body
  %call1 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #7, !dbg !248
  call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !215), !dbg !248
  store i8* %call1, i8** %s, align 8, !dbg !248, !tbaa !245
  %cmp = icmp eq i8* %call1, null, !dbg !248
  br i1 %cmp, label %while.end, label %while.body, !dbg !248

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* null) #7, !dbg !249
  call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !216), !dbg !249
  %cmp3 = icmp eq i8* %call2, null, !dbg !249
  br i1 %cmp3, label %while.cond, label %if.end5, !dbg !249

if.end5:                                          ; preds = %while.body
  %call6 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* null) #7, !dbg !251
  call void @llvm.dbg.value(metadata !{i8* %call6}, i64 0, metadata !217), !dbg !251
  %cmp7 = icmp eq i8* %call6, null, !dbg !251
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !251

if.then8:                                         ; preds = %if.end5
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !252
  %1 = load i8** %fname, align 8, !dbg !252, !tbaa !245
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str1, i64 0, i64 0), i8* %1) #7, !dbg !252
  br label %if.end9, !dbg !252

if.end9:                                          ; preds = %if.then8, %if.end5
  %call10 = call i32 @IsInt(i8* %call2) #7, !dbg !253
  %tobool11 = icmp eq i32 %call10, 0, !dbg !253
  br i1 %tobool11, label %if.then14, label %lor.lhs.false, !dbg !253

lor.lhs.false:                                    ; preds = %if.end9
  %call12 = call i32 @IsInt(i8* %call6) #7, !dbg !253
  %tobool13 = icmp eq i32 %call12, 0, !dbg !253
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !253

if.then14:                                        ; preds = %lor.lhs.false, %if.end9
  %fname15 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !254
  %2 = load i8** %fname15, align 8, !dbg !254, !tbaa !245
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([65 x i8]* @.str2, i64 0, i64 0), i8* %2) #7, !dbg !254
  br label %if.end16, !dbg !254

if.end16:                                         ; preds = %lor.lhs.false, %if.then14
  %call17 = call i32 @atoi(i8* %call2) #8, !dbg !255
  call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !222), !dbg !255
  br label %while.end, !dbg !256

while.end:                                        ; preds = %while.cond, %if.end16
  %nseq.0 = phi i32 [ %call17, %if.end16 ], [ 0, %while.cond ]
  %call19 = call %struct.msa_struct* @MSAAlloc(i32 %nseq.0, i32 0) #7, !dbg !257
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call19}, i64 0, metadata !214), !dbg !257
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !224), !dbg !258
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !226), !dbg !259
  %arraydecay = getelementptr inbounds [11 x i8]* %name, i64 0, i64 0, !dbg !260
  %arrayidx33 = getelementptr inbounds [11 x i8]* %name, i64 0, i64 10, !dbg !263
  %index = getelementptr inbounds %struct.msa_struct* %call19, i64 0, i32 39, !dbg !264
  %sqname = getelementptr inbounds %struct.msa_struct* %call19, i64 0, i32 1, !dbg !265
  %linenumber = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2, !dbg !266
  %fname45 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !266
  %aseq = getelementptr inbounds %struct.msa_struct* %call19, i64 0, i32 0, !dbg !267
  %sqlen = getelementptr inbounds %struct.msa_struct* %call19, i64 0, i32 42, !dbg !267
  br label %while.cond20.outer, !dbg !268

while.cond20.outer:                               ; preds = %if.end46, %while.end
  %idx.0.ph = phi i32 [ 0, %while.end ], [ %.inc, %if.end46 ]
  %nblock.0.ph = phi i32 [ 0, %while.end ], [ %inc58.nblock.0, %if.end46 ]
  br label %while.cond20

while.cond20:                                     ; preds = %while.cond20.outer, %while.body23
  %call21 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #7, !dbg !268
  call void @llvm.dbg.value(metadata !{i8* %call21}, i64 0, metadata !215), !dbg !268
  call void @llvm.dbg.value(metadata !{i8* %call21}, i64 0, metadata !215), !dbg !268
  store i8* %call21, i8** %s, align 8, !dbg !268, !tbaa !245
  %cmp22 = icmp eq i8* %call21, null, !dbg !268
  br i1 %cmp22, label %while.end60, label %while.body23, !dbg !268

while.body23:                                     ; preds = %while.cond20
  %3 = load i8* %call21, align 1, !dbg !269, !tbaa !246
  %idxprom = sext i8 %3 to i64, !dbg !269
  %call24 = call i16** @__ctype_b_loc() #9, !dbg !269
  %4 = load i16** %call24, align 8, !dbg !269, !tbaa !245
  %arrayidx = getelementptr inbounds i16* %4, i64 %idxprom, !dbg !269
  %5 = load i16* %arrayidx, align 2, !dbg !269, !tbaa !270
  %and = and i16 %5, 8192, !dbg !269
  %tobool26 = icmp eq i16 %and, 0, !dbg !269
  br i1 %tobool26, label %if.end28, label %while.cond20, !dbg !269

if.end28:                                         ; preds = %while.body23
  %cmp29 = icmp eq i32 %nblock.0.ph, 0, !dbg !271
  br i1 %cmp29, label %if.then31, label %if.end40, !dbg !271

if.then31:                                        ; preds = %if.end28
  %call32 = call i8* @strncpy(i8* %arraydecay, i8* %call21, i64 10) #7, !dbg !260
  store i8 0, i8* %arrayidx33, align 1, !dbg !263, !tbaa !246
  %6 = load %struct.GKI** %index, align 8, !dbg !264, !tbaa !245
  %call35 = call i32 @GKIStoreKey(%struct.GKI* %6, i8* %arraydecay) #7, !dbg !264
  %call37 = call i8* @sre_strdup(i8* %arraydecay, i32 -1) #7, !dbg !265
  %idxprom38 = sext i32 %idx.0.ph to i64, !dbg !265
  %7 = load i8*** %sqname, align 8, !dbg !265, !tbaa !245
  %arrayidx39 = getelementptr inbounds i8** %7, i64 %idxprom38, !dbg !265
  store i8* %call37, i8** %arrayidx39, align 8, !dbg !265, !tbaa !245
  call void @llvm.dbg.value(metadata !{i8** %s}, i64 0, metadata !215), !dbg !272
  %8 = load i8** %s, align 8, !dbg !272, !tbaa !245
  %add.ptr = getelementptr inbounds i8* %8, i64 10, !dbg !272
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !215), !dbg !272
  store i8* %add.ptr, i8** %s, align 8, !dbg !272, !tbaa !245
  br label %if.end40, !dbg !273

if.end40:                                         ; preds = %if.then31, %if.end28
  %call41 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* %slen) #7, !dbg !274
  call void @llvm.dbg.value(metadata !{i8* %call41}, i64 0, metadata !216), !dbg !274
  %cmp42 = icmp eq i8* %call41, null, !dbg !274
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !274

if.then44:                                        ; preds = %if.end40
  %9 = load i32* %linenumber, align 4, !dbg !266, !tbaa !275
  %10 = load i8** %fname45, align 8, !dbg !266, !tbaa !245
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i32 %9, i8* %10) #7, !dbg !266
  br label %if.end46, !dbg !266

if.end46:                                         ; preds = %if.then44, %if.end40
  %idxprom47 = sext i32 %idx.0.ph to i64, !dbg !267
  %11 = load i8*** %aseq, align 8, !dbg !267, !tbaa !245
  %arrayidx48 = getelementptr inbounds i8** %11, i64 %idxprom47, !dbg !267
  %12 = load i32** %sqlen, align 8, !dbg !267, !tbaa !245
  %arrayidx50 = getelementptr inbounds i32* %12, i64 %idxprom47, !dbg !267
  %13 = load i32* %arrayidx50, align 4, !dbg !267, !tbaa !275
  call void @llvm.dbg.value(metadata !{i32* %slen}, i64 0, metadata !225), !dbg !267
  %14 = load i32* %slen, align 4, !dbg !267, !tbaa !275
  %call51 = call i32 @sre_strcat(i8** %arrayidx48, i32 %13, i8* %call41, i32 %14) #7, !dbg !267
  %15 = load i32** %sqlen, align 8, !dbg !267, !tbaa !245
  %arrayidx54 = getelementptr inbounds i32* %15, i64 %idxprom47, !dbg !267
  store i32 %call51, i32* %arrayidx54, align 4, !dbg !267, !tbaa !275
  %inc = add nsw i32 %idx.0.ph, 1, !dbg !276
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !224), !dbg !276
  %cmp55 = icmp eq i32 %inc, %nseq.0, !dbg !277
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !224), !dbg !278
  %.inc = select i1 %cmp55, i32 0, i32 %inc, !dbg !277
  %inc58 = zext i1 %cmp55 to i32, !dbg !277
  %inc58.nblock.0 = add nsw i32 %inc58, %nblock.0.ph, !dbg !277
  br label %while.cond20.outer, !dbg !277

while.end60:                                      ; preds = %while.cond20
  %nseq61 = getelementptr inbounds %struct.msa_struct* %call19, i64 0, i32 4, !dbg !280
  store i32 %nseq.0, i32* %nseq61, align 4, !dbg !280, !tbaa !275
  call void @MSAVerifyParse(%struct.msa_struct* %call19) #7, !dbg !281
  br label %return, !dbg !282

return:                                           ; preds = %entry, %while.end60
  %retval.0 = phi %struct.msa_struct* [ %call19, %while.end60 ], [ null, %entry ]
  ret %struct.msa_struct* %retval.0, !dbg !283
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i8* @MSAFileGetLine(%struct.msafile_struct*) #3

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: optsize
declare i32 @IsInt(i8*) #3

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #2

; Function Attrs: optsize
declare i32 @GKIStoreKey(%struct.GKI*, i8*) #3

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #3

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #3

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #3

; Function Attrs: nounwind optsize uwtable
define void @WritePhylip(%struct._IO_FILE* nocapture %fp, %struct.msa_struct* nocapture %msa) #0 {
entry:
  %buf = alloca [51 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !231), !dbg !284
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !232), !dbg !284
  call void @llvm.dbg.value(metadata !285, i64 0, metadata !234), !dbg !286
  %0 = getelementptr inbounds [51 x i8]* %buf, i64 0, i64 0, !dbg !287
  call void @llvm.lifetime.start(i64 51, i8* %0) #6, !dbg !287
  call void @llvm.dbg.declare(metadata !{[51 x i8]* %buf}, metadata !235), !dbg !287
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !288
  %1 = load i32* %nseq, align 4, !dbg !288, !tbaa !275
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !288
  %2 = load i32* %alen, align 4, !dbg !288, !tbaa !275
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i32 %1, i32 %2) #7, !dbg !288
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !239), !dbg !289
  %3 = load i32* %alen, align 4, !dbg !289, !tbaa !275
  %cmp41 = icmp sgt i32 %3, 0, !dbg !289
  br i1 %cmp41, label %for.body.lr.ph, label %for.end22, !dbg !289

for.body.lr.ph:                                   ; preds = %entry
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !291
  %arrayidx10 = getelementptr inbounds [51 x i8]* %buf, i64 0, i64 50, !dbg !295
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !296
  br label %for.body, !dbg !289

for.body:                                         ; preds = %for.body.lr.ph, %for.inc21
  %indvars.iv43 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next44, %for.inc21 ]
  %4 = trunc i64 %indvars.iv43 to i32, !dbg !297
  %cmp2 = icmp sgt i32 %4, 0, !dbg !297
  br i1 %cmp2, label %if.then, label %for.cond4.preheader, !dbg !297

if.then:                                          ; preds = %for.body
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !297
  br label %for.cond4.preheader, !dbg !297

for.cond4.preheader:                              ; preds = %for.body, %if.then
  %5 = load i32* %nseq, align 4, !dbg !298, !tbaa !275
  %cmp639 = icmp sgt i32 %5, 0, !dbg !298
  br i1 %cmp639, label %for.body7, label %for.inc21, !dbg !298

for.body7:                                        ; preds = %for.cond4.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond4.preheader ]
  %6 = load i8*** %aseq, align 8, !dbg !291, !tbaa !245
  %arrayidx = getelementptr inbounds i8** %6, i64 %indvars.iv, !dbg !291
  %7 = load i8** %arrayidx, align 8, !dbg !291, !tbaa !245
  %add.ptr = getelementptr inbounds i8* %7, i64 %indvars.iv43, !dbg !291
  %call8 = call i8* @strncpy(i8* %0, i8* %add.ptr, i64 50) #7, !dbg !291
  store i8 0, i8* %arrayidx10, align 2, !dbg !295, !tbaa !246
  br i1 %cmp2, label %if.then13, label %if.else, !dbg !299

if.then13:                                        ; preds = %for.body7
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), i8* %0) #7, !dbg !299
  br label %for.inc, !dbg !299

if.else:                                          ; preds = %for.body7
  %8 = load i8*** %sqname, align 8, !dbg !296, !tbaa !245
  %arrayidx17 = getelementptr inbounds i8** %8, i64 %indvars.iv, !dbg !296
  %9 = load i8** %arrayidx17, align 8, !dbg !296, !tbaa !245
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i8* %9, i8* %0) #7, !dbg !296
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !298
  %10 = load i32* %nseq, align 4, !dbg !298, !tbaa !275
  %11 = trunc i64 %indvars.iv.next to i32, !dbg !298
  %cmp6 = icmp slt i32 %11, %10, !dbg !298
  br i1 %cmp6, label %for.body7, label %for.inc21, !dbg !298

for.inc21:                                        ; preds = %for.inc, %for.cond4.preheader
  %indvars.iv.next44 = add i64 %indvars.iv43, 50, !dbg !289
  %12 = load i32* %alen, align 4, !dbg !289, !tbaa !275
  %13 = trunc i64 %indvars.iv.next44 to i32, !dbg !289
  %cmp = icmp slt i32 %13, %12, !dbg !289
  br i1 %cmp, label %for.body, label %for.end22, !dbg !289

for.end22:                                        ; preds = %for.inc21, %entry
  call void @llvm.lifetime.end(i64 51, i8* %0) #6, !dbg !300
  ret void, !dbg !301
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/phylip.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/phylip.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !227}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"ReadPhylip", metadata !"ReadPhylip", metadata !"", i32 76, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.msa_struct* (%struct.msafile_struct*)* @ReadPhylip, null, null, metadata !212, i32 77} ; [ DW_TAG_subprogram ] [line 76] [def] [scope 77] [ReadPhylip]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/phylip.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !103}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSA]
!25 = metadata !{i32 786454, metadata !1, null, metadata !"MSA", i32 177, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [MSA] [line 177, size 0, align 0, offset 0] [from msa_struct]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"msa_struct", i32 112, i64 2880, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [msa_struct] [line 112, size 2880, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !33, metadata !34, metadata !37, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !57, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !69, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !100, metadata !101, metadata !102}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"aseq", i32 115, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [aseq] [line 115, size 64, align 64, offset 0] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!32 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!33 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sqname", i32 116, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [sqname] [line 116, size 64, align 64, offset 64] [from ]
!34 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"wgt", i32 117, i64 64, i64 64, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [wgt] [line 117, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!36 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!37 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"alen", i32 118, i64 32, i64 32, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [alen] [line 118, size 32, align 32, offset 192] [from int]
!38 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!39 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nseq", i32 119, i64 32, i64 32, i64 224, i32 0, metadata !38} ; [ DW_TAG_member ] [nseq] [line 119, size 32, align 32, offset 224] [from int]
!40 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"flags", i32 123, i64 32, i64 32, i64 256, i32 0, metadata !38} ; [ DW_TAG_member ] [flags] [line 123, size 32, align 32, offset 256] [from int]
!41 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"type", i32 124, i64 32, i64 32, i64 288, i32 0, metadata !38} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from int]
!42 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"name", i32 125, i64 64, i64 64, i64 320, i32 0, metadata !31} ; [ DW_TAG_member ] [name] [line 125, size 64, align 64, offset 320] [from ]
!43 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"desc", i32 126, i64 64, i64 64, i64 384, i32 0, metadata !31} ; [ DW_TAG_member ] [desc] [line 126, size 64, align 64, offset 384] [from ]
!44 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"acc", i32 127, i64 64, i64 64, i64 448, i32 0, metadata !31} ; [ DW_TAG_member ] [acc] [line 127, size 64, align 64, offset 448] [from ]
!45 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"au", i32 128, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [au] [line 128, size 64, align 64, offset 512] [from ]
!46 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ss_cons", i32 129, i64 64, i64 64, i64 576, i32 0, metadata !31} ; [ DW_TAG_member ] [ss_cons] [line 129, size 64, align 64, offset 576] [from ]
!47 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sa_cons", i32 130, i64 64, i64 64, i64 640, i32 0, metadata !31} ; [ DW_TAG_member ] [sa_cons] [line 130, size 64, align 64, offset 640] [from ]
!48 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"rf", i32 131, i64 64, i64 64, i64 704, i32 0, metadata !31} ; [ DW_TAG_member ] [rf] [line 131, size 64, align 64, offset 704] [from ]
!49 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sqacc", i32 132, i64 64, i64 64, i64 768, i32 0, metadata !30} ; [ DW_TAG_member ] [sqacc] [line 132, size 64, align 64, offset 768] [from ]
!50 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sqdesc", i32 133, i64 64, i64 64, i64 832, i32 0, metadata !30} ; [ DW_TAG_member ] [sqdesc] [line 133, size 64, align 64, offset 832] [from ]
!51 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ss", i32 134, i64 64, i64 64, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [ss] [line 134, size 64, align 64, offset 896] [from ]
!52 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sa", i32 135, i64 64, i64 64, i64 960, i32 0, metadata !30} ; [ DW_TAG_member ] [sa] [line 135, size 64, align 64, offset 960] [from ]
!53 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cutoff", i32 136, i64 192, i64 32, i64 1024, i32 0, metadata !54} ; [ DW_TAG_member ] [cutoff] [line 136, size 192, align 32, offset 1024] [from ]
!54 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !36, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from float]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!57 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cutoff_is_set", i32 137, i64 192, i64 32, i64 1216, i32 0, metadata !58} ; [ DW_TAG_member ] [cutoff_is_set] [line 137, size 192, align 32, offset 1216] [from ]
!58 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !38, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!59 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"comment", i32 144, i64 64, i64 64, i64 1408, i32 0, metadata !30} ; [ DW_TAG_member ] [comment] [line 144, size 64, align 64, offset 1408] [from ]
!60 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ncomment", i32 145, i64 32, i64 32, i64 1472, i32 0, metadata !38} ; [ DW_TAG_member ] [ncomment] [line 145, size 32, align 32, offset 1472] [from int]
!61 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"alloc_ncomment", i32 146, i64 32, i64 32, i64 1504, i32 0, metadata !38} ; [ DW_TAG_member ] [alloc_ncomment] [line 146, size 32, align 32, offset 1504] [from int]
!62 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gf_tag", i32 148, i64 64, i64 64, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [gf_tag] [line 148, size 64, align 64, offset 1536] [from ]
!63 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gf", i32 149, i64 64, i64 64, i64 1600, i32 0, metadata !30} ; [ DW_TAG_member ] [gf] [line 149, size 64, align 64, offset 1600] [from ]
!64 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ngf", i32 150, i64 32, i64 32, i64 1664, i32 0, metadata !38} ; [ DW_TAG_member ] [ngf] [line 150, size 32, align 32, offset 1664] [from int]
!65 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"alloc_ngf", i32 151, i64 32, i64 32, i64 1696, i32 0, metadata !38} ; [ DW_TAG_member ] [alloc_ngf] [line 151, size 32, align 32, offset 1696] [from int]
!66 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gs_tag", i32 153, i64 64, i64 64, i64 1728, i32 0, metadata !30} ; [ DW_TAG_member ] [gs_tag] [line 153, size 64, align 64, offset 1728] [from ]
!67 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gs", i32 154, i64 64, i64 64, i64 1792, i32 0, metadata !68} ; [ DW_TAG_member ] [gs] [line 154, size 64, align 64, offset 1792] [from ]
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!69 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gs_idx", i32 155, i64 64, i64 64, i64 1856, i32 0, metadata !70} ; [ DW_TAG_member ] [gs_idx] [line 155, size 64, align 64, offset 1856] [from ]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GKI]
!71 = metadata !{i32 786454, metadata !27, null, metadata !"GKI", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [GKI] [line 42, size 0, align 0, offset 0] [from ]
!72 = metadata !{i32 786451, metadata !73, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !74, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!73 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!74 = metadata !{metadata !75, metadata !83, metadata !84, metadata !85}
!75 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"table", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [table] [line 37, size 64, align 64, offset 0] [from ]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gki_elem]
!78 = metadata !{i32 786451, metadata !73, null, metadata !"gki_elem", i32 26, i64 192, i64 64, i32 0, i32 0, null, metadata !79, i32 0, null, null} ; [ DW_TAG_structure_type ] [gki_elem] [line 26, size 192, align 64, offset 0] [from ]
!79 = metadata !{metadata !80, metadata !81, metadata !82}
!80 = metadata !{i32 786445, metadata !73, metadata !78, metadata !"key", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [key] [line 27, size 64, align 64, offset 0] [from ]
!81 = metadata !{i32 786445, metadata !73, metadata !78, metadata !"idx", i32 28, i64 32, i64 32, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [idx] [line 28, size 32, align 32, offset 64] [from int]
!82 = metadata !{i32 786445, metadata !73, metadata !78, metadata !"nxt", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !77} ; [ DW_TAG_member ] [nxt] [line 29, size 64, align 64, offset 128] [from ]
!83 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"primelevel", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [primelevel] [line 39, size 32, align 32, offset 64] [from int]
!84 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"nhash", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !38} ; [ DW_TAG_member ] [nhash] [line 40, size 32, align 32, offset 96] [from int]
!85 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"nkeys", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [nkeys] [line 41, size 32, align 32, offset 128] [from int]
!86 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ngs", i32 156, i64 32, i64 32, i64 1920, i32 0, metadata !38} ; [ DW_TAG_member ] [ngs] [line 156, size 32, align 32, offset 1920] [from int]
!87 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gc_tag", i32 158, i64 64, i64 64, i64 1984, i32 0, metadata !30} ; [ DW_TAG_member ] [gc_tag] [line 158, size 64, align 64, offset 1984] [from ]
!88 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gc", i32 159, i64 64, i64 64, i64 2048, i32 0, metadata !30} ; [ DW_TAG_member ] [gc] [line 159, size 64, align 64, offset 2048] [from ]
!89 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gc_idx", i32 160, i64 64, i64 64, i64 2112, i32 0, metadata !70} ; [ DW_TAG_member ] [gc_idx] [line 160, size 64, align 64, offset 2112] [from ]
!90 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ngc", i32 161, i64 32, i64 32, i64 2176, i32 0, metadata !38} ; [ DW_TAG_member ] [ngc] [line 161, size 32, align 32, offset 2176] [from int]
!91 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gr_tag", i32 163, i64 64, i64 64, i64 2240, i32 0, metadata !30} ; [ DW_TAG_member ] [gr_tag] [line 163, size 64, align 64, offset 2240] [from ]
!92 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gr", i32 164, i64 64, i64 64, i64 2304, i32 0, metadata !68} ; [ DW_TAG_member ] [gr] [line 164, size 64, align 64, offset 2304] [from ]
!93 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gr_idx", i32 165, i64 64, i64 64, i64 2368, i32 0, metadata !70} ; [ DW_TAG_member ] [gr_idx] [line 165, size 64, align 64, offset 2368] [from ]
!94 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ngr", i32 166, i64 32, i64 32, i64 2432, i32 0, metadata !38} ; [ DW_TAG_member ] [ngr] [line 166, size 32, align 32, offset 2432] [from int]
!95 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"index", i32 170, i64 64, i64 64, i64 2496, i32 0, metadata !70} ; [ DW_TAG_member ] [index] [line 170, size 64, align 64, offset 2496] [from ]
!96 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nseqalloc", i32 171, i64 32, i64 32, i64 2560, i32 0, metadata !38} ; [ DW_TAG_member ] [nseqalloc] [line 171, size 32, align 32, offset 2560] [from int]
!97 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nseqlump", i32 172, i64 32, i64 32, i64 2592, i32 0, metadata !38} ; [ DW_TAG_member ] [nseqlump] [line 172, size 32, align 32, offset 2592] [from int]
!98 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sqlen", i32 173, i64 64, i64 64, i64 2624, i32 0, metadata !99} ; [ DW_TAG_member ] [sqlen] [line 173, size 64, align 64, offset 2624] [from ]
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!100 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sslen", i32 174, i64 64, i64 64, i64 2688, i32 0, metadata !99} ; [ DW_TAG_member ] [sslen] [line 174, size 64, align 64, offset 2688] [from ]
!101 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"salen", i32 175, i64 64, i64 64, i64 2752, i32 0, metadata !99} ; [ DW_TAG_member ] [salen] [line 175, size 64, align 64, offset 2752] [from ]
!102 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"lastidx", i32 176, i64 32, i64 32, i64 2816, i32 0, metadata !38} ; [ DW_TAG_member ] [lastidx] [line 176, size 32, align 32, offset 2816] [from int]
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSAFILE]
!104 = metadata !{i32 786454, metadata !1, null, metadata !"MSAFILE", i32 199, i64 0, i64 0, i64 0, i32 0, metadata !105} ; [ DW_TAG_typedef ] [MSAFILE] [line 199, size 0, align 0, offset 0] [from msafile_struct]
!105 = metadata !{i32 786451, metadata !27, null, metadata !"msafile_struct", i32 186, i64 512, i64 64, i32 0, i32 0, null, metadata !106, i32 0, null, null} ; [ DW_TAG_structure_type ] [msafile_struct] [line 186, size 512, align 64, offset 0] [from ]
!106 = metadata !{metadata !107, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !209, metadata !210, metadata !211}
!107 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"f", i32 187, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [f] [line 187, size 64, align 64, offset 0] [from ]
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!109 = metadata !{i32 786454, metadata !27, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!110 = metadata !{i32 786451, metadata !111, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !112, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!111 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!112 = metadata !{metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !133, metadata !134, metadata !135, metadata !136, metadata !139, metadata !141, metadata !143, metadata !147, metadata !149, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !158, metadata !159}
!113 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !38} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!114 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!115 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!116 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!117 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!118 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!119 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!120 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!121 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!122 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!123 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!124 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!125 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !126} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!126 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!127 = metadata !{i32 786451, metadata !111, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !128, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!128 = metadata !{metadata !129, metadata !130, metadata !132}
!129 = metadata !{i32 786445, metadata !111, metadata !127, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !126} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!130 = metadata !{i32 786445, metadata !111, metadata !127, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !131} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!131 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!132 = metadata !{i32 786445, metadata !111, metadata !127, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!133 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !131} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!134 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !38} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!135 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !38} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!136 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !137} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!137 = metadata !{i32 786454, metadata !111, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!138 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!139 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !140} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!140 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!141 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !142} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!142 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!143 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !144} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!144 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !32, metadata !145, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!145 = metadata !{metadata !146}
!146 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!147 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !148} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!148 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!149 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !150} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!150 = metadata !{i32 786454, metadata !111, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!151 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !148} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!152 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !148} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!153 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !148} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!154 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !148} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!155 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !156} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!156 = metadata !{i32 786454, metadata !111, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !157} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!157 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!158 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !38} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!159 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !160} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!160 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !32, metadata !161, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!161 = metadata !{metadata !162}
!162 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!163 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"fname", i32 188, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [fname] [line 188, size 64, align 64, offset 64] [from ]
!164 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"linenumber", i32 189, i64 32, i64 32, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [linenumber] [line 189, size 32, align 32, offset 128] [from int]
!165 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"buf", i32 191, i64 64, i64 64, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [buf] [line 191, size 64, align 64, offset 192] [from ]
!166 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"buflen", i32 192, i64 32, i64 32, i64 256, i32 0, metadata !38} ; [ DW_TAG_member ] [buflen] [line 192, size 32, align 32, offset 256] [from int]
!167 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"ssi", i32 194, i64 64, i64 64, i64 320, i32 0, metadata !168} ; [ DW_TAG_member ] [ssi] [line 194, size 64, align 64, offset 320] [from ]
!168 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !169} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SSIFILE]
!169 = metadata !{i32 786454, metadata !27, null, metadata !"SSIFILE", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !170} ; [ DW_TAG_typedef ] [SSIFILE] [line 76, size 0, align 0, offset 0] [from ssifile_s]
!170 = metadata !{i32 786451, metadata !171, null, metadata !"ssifile_s", i32 49, i64 1152, i64 64, i32 0, i32 0, null, metadata !172, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssifile_s] [line 49, size 1152, align 64, offset 0] [from ]
!171 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!172 = metadata !{metadata !173, metadata !174, metadata !177, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !206, metadata !207, metadata !208}
!173 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"fp", i32 50, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [fp] [line 50, size 64, align 64, offset 0] [from ]
!174 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"flags", i32 51, i64 32, i64 32, i64 64, i32 0, metadata !175} ; [ DW_TAG_member ] [flags] [line 51, size 32, align 32, offset 64] [from sqd_uint32]
!175 = metadata !{i32 786454, metadata !171, null, metadata !"sqd_uint32", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_typedef ] [sqd_uint32] [line 41, size 0, align 0, offset 0] [from unsigned int]
!176 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!177 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"nfiles", i32 52, i64 16, i64 16, i64 96, i32 0, metadata !178} ; [ DW_TAG_member ] [nfiles] [line 52, size 16, align 16, offset 96] [from sqd_uint16]
!178 = metadata !{i32 786454, metadata !171, null, metadata !"sqd_uint16", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [sqd_uint16] [line 40, size 0, align 0, offset 0] [from unsigned short]
!179 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"nprimary", i32 53, i64 32, i64 32, i64 128, i32 0, metadata !175} ; [ DW_TAG_member ] [nprimary] [line 53, size 32, align 32, offset 128] [from sqd_uint32]
!180 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"nsecondary", i32 54, i64 32, i64 32, i64 160, i32 0, metadata !175} ; [ DW_TAG_member ] [nsecondary] [line 54, size 32, align 32, offset 160] [from sqd_uint32]
!181 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"flen", i32 55, i64 32, i64 32, i64 192, i32 0, metadata !175} ; [ DW_TAG_member ] [flen] [line 55, size 32, align 32, offset 192] [from sqd_uint32]
!182 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"plen", i32 56, i64 32, i64 32, i64 224, i32 0, metadata !175} ; [ DW_TAG_member ] [plen] [line 56, size 32, align 32, offset 224] [from sqd_uint32]
!183 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"slen", i32 57, i64 32, i64 32, i64 256, i32 0, metadata !175} ; [ DW_TAG_member ] [slen] [line 57, size 32, align 32, offset 256] [from sqd_uint32]
!184 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"frecsize", i32 58, i64 32, i64 32, i64 288, i32 0, metadata !175} ; [ DW_TAG_member ] [frecsize] [line 58, size 32, align 32, offset 288] [from sqd_uint32]
!185 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"precsize", i32 59, i64 32, i64 32, i64 320, i32 0, metadata !175} ; [ DW_TAG_member ] [precsize] [line 59, size 32, align 32, offset 320] [from sqd_uint32]
!186 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"srecsize", i32 60, i64 32, i64 32, i64 352, i32 0, metadata !175} ; [ DW_TAG_member ] [srecsize] [line 60, size 32, align 32, offset 352] [from sqd_uint32]
!187 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"foffset", i32 61, i64 128, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [foffset] [line 61, size 128, align 64, offset 384] [from SSIOFFSET]
!188 = metadata !{i32 786454, metadata !171, null, metadata !"SSIOFFSET", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !189} ; [ DW_TAG_typedef ] [SSIOFFSET] [line 42, size 0, align 0, offset 0] [from ssioffset_s]
!189 = metadata !{i32 786451, metadata !171, null, metadata !"ssioffset_s", i32 35, i64 128, i64 64, i32 0, i32 0, null, metadata !190, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssioffset_s] [line 35, size 128, align 64, offset 0] [from ]
!190 = metadata !{metadata !191, metadata !192}
!191 = metadata !{i32 786445, metadata !171, metadata !189, metadata !"mode", i32 36, i64 8, i64 8, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [mode] [line 36, size 8, align 8, offset 0] [from char]
!192 = metadata !{i32 786445, metadata !171, metadata !189, metadata !"off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !193} ; [ DW_TAG_member ] [off] [line 40, size 64, align 64, offset 64] [from ]
!193 = metadata !{i32 786455, metadata !171, metadata !189, metadata !"", i32 37, i64 64, i64 64, i64 0, i32 0, null, metadata !194, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 37, size 64, align 64, offset 0] [from ]
!194 = metadata !{metadata !195, metadata !196}
!195 = metadata !{i32 786445, metadata !171, metadata !193, metadata !"i32", i32 38, i64 32, i64 32, i64 0, i32 0, metadata !175} ; [ DW_TAG_member ] [i32] [line 38, size 32, align 32, offset 0] [from sqd_uint32]
!196 = metadata !{i32 786445, metadata !171, metadata !193, metadata !"i64", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !197} ; [ DW_TAG_member ] [i64] [line 39, size 64, align 64, offset 0] [from sqd_uint64]
!197 = metadata !{i32 786454, metadata !171, null, metadata !"sqd_uint64", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !198} ; [ DW_TAG_typedef ] [sqd_uint64] [line 42, size 0, align 0, offset 0] [from long long unsigned int]
!198 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!199 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"poffset", i32 62, i64 128, i64 64, i64 512, i32 0, metadata !188} ; [ DW_TAG_member ] [poffset] [line 62, size 128, align 64, offset 512] [from SSIOFFSET]
!200 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"soffset", i32 63, i64 128, i64 64, i64 640, i32 0, metadata !188} ; [ DW_TAG_member ] [soffset] [line 63, size 128, align 64, offset 640] [from SSIOFFSET]
!201 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"imode", i32 65, i64 8, i64 8, i64 768, i32 0, metadata !32} ; [ DW_TAG_member ] [imode] [line 65, size 8, align 8, offset 768] [from char]
!202 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"smode", i32 66, i64 8, i64 8, i64 776, i32 0, metadata !32} ; [ DW_TAG_member ] [smode] [line 66, size 8, align 8, offset 776] [from char]
!203 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"filename", i32 70, i64 64, i64 64, i64 832, i32 0, metadata !30} ; [ DW_TAG_member ] [filename] [line 70, size 64, align 64, offset 832] [from ]
!204 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"fileformat", i32 71, i64 64, i64 64, i64 896, i32 0, metadata !205} ; [ DW_TAG_member ] [fileformat] [line 71, size 64, align 64, offset 896] [from ]
!205 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_uint32]
!206 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"fileflags", i32 72, i64 64, i64 64, i64 960, i32 0, metadata !205} ; [ DW_TAG_member ] [fileflags] [line 72, size 64, align 64, offset 960] [from ]
!207 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"bpl", i32 73, i64 64, i64 64, i64 1024, i32 0, metadata !205} ; [ DW_TAG_member ] [bpl] [line 73, size 64, align 64, offset 1024] [from ]
!208 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"rpl", i32 74, i64 64, i64 64, i64 1088, i32 0, metadata !205} ; [ DW_TAG_member ] [rpl] [line 74, size 64, align 64, offset 1088] [from ]
!209 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"do_gzip", i32 196, i64 32, i64 32, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ] [do_gzip] [line 196, size 32, align 32, offset 384] [from int]
!210 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"do_stdin", i32 197, i64 32, i64 32, i64 416, i32 0, metadata !38} ; [ DW_TAG_member ] [do_stdin] [line 197, size 32, align 32, offset 416] [from int]
!211 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"format", i32 198, i64 32, i64 32, i64 448, i32 0, metadata !38} ; [ DW_TAG_member ] [format] [line 198, size 32, align 32, offset 448] [from int]
!212 = metadata !{metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226}
!213 = metadata !{i32 786689, metadata !20, metadata !"afp", metadata !21, i32 16777292, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [afp] [line 76]
!214 = metadata !{i32 786688, metadata !20, metadata !"msa", metadata !21, i32 78, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msa] [line 78]
!215 = metadata !{i32 786688, metadata !20, metadata !"s", metadata !21, i32 79, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 79]
!216 = metadata !{i32 786688, metadata !20, metadata !"s1", metadata !21, i32 79, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 79]
!217 = metadata !{i32 786688, metadata !20, metadata !"s2", metadata !21, i32 79, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 79]
!218 = metadata !{i32 786688, metadata !20, metadata !"name", metadata !21, i32 80, metadata !219, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 80]
!219 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 88, i64 8, i32 0, i32 0, metadata !32, metadata !220, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 88, align 8, offset 0] [from char]
!220 = metadata !{metadata !221}
!221 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!222 = metadata !{i32 786688, metadata !20, metadata !"nseq", metadata !21, i32 81, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nseq] [line 81]
!223 = metadata !{i32 786688, metadata !20, metadata !"alen", metadata !21, i32 81, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alen] [line 81]
!224 = metadata !{i32 786688, metadata !20, metadata !"idx", metadata !21, i32 82, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 82]
!225 = metadata !{i32 786688, metadata !20, metadata !"slen", metadata !21, i32 83, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slen] [line 83]
!226 = metadata !{i32 786688, metadata !20, metadata !"nblock", metadata !21, i32 84, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nblock] [line 84]
!227 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"WritePhylip", metadata !"WritePhylip", metadata !"", i32 146, metadata !228, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.msa_struct*)* @WritePhylip, null, null, metadata !230, i32 147} ; [ DW_TAG_subprogram ] [line 146] [def] [scope 147] [WritePhylip]
!228 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!229 = metadata !{null, metadata !108, metadata !24}
!230 = metadata !{metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !239}
!231 = metadata !{i32 786689, metadata !227, metadata !"fp", metadata !21, i32 16777362, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 146]
!232 = metadata !{i32 786689, metadata !227, metadata !"msa", metadata !21, i32 33554578, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 146]
!233 = metadata !{i32 786688, metadata !227, metadata !"idx", metadata !21, i32 148, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 148]
!234 = metadata !{i32 786688, metadata !227, metadata !"cpl", metadata !21, i32 149, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cpl] [line 149]
!235 = metadata !{i32 786688, metadata !227, metadata !"buf", metadata !21, i32 150, metadata !236, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 150]
!236 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 408, i64 8, i32 0, i32 0, metadata !32, metadata !237, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 408, align 8, offset 0] [from char]
!237 = metadata !{metadata !238}
!238 = metadata !{i32 786465, i64 0, i64 51}      ; [ DW_TAG_subrange_type ] [0, 50]
!239 = metadata !{i32 786688, metadata !227, metadata !"pos", metadata !21, i32 151, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 151]
!240 = metadata !{i32 76, i32 0, metadata !20, null}
!241 = metadata !{i32 79, i32 0, metadata !20, null}
!242 = metadata !{i32 80, i32 0, metadata !20, null}
!243 = metadata !{i32 83, i32 0, metadata !20, null}
!244 = metadata !{i32 86, i32 0, metadata !20, null}
!245 = metadata !{metadata !"any pointer", metadata !246}
!246 = metadata !{metadata !"omnipotent char", metadata !247}
!247 = metadata !{metadata !"Simple C/C++ TBAA"}
!248 = metadata !{i32 92, i32 0, metadata !20, null}
!249 = metadata !{i32 94, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !20, i32 93, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/phylip.c]
!251 = metadata !{i32 95, i32 0, metadata !250, null}
!252 = metadata !{i32 96, i32 0, metadata !250, null}
!253 = metadata !{i32 97, i32 0, metadata !250, null}
!254 = metadata !{i32 98, i32 0, metadata !250, null}
!255 = metadata !{i32 99, i32 0, metadata !250, null}
!256 = metadata !{i32 101, i32 0, metadata !250, null}
!257 = metadata !{i32 104, i32 0, metadata !20, null}
!258 = metadata !{i32 105, i32 0, metadata !20, null}
!259 = metadata !{i32 106, i32 0, metadata !20, null}
!260 = metadata !{i32 113, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !262, i32 112, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/phylip.c]
!262 = metadata !{i32 786443, metadata !1, metadata !20, i32 108, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/phylip.c]
!263 = metadata !{i32 114, i32 0, metadata !261, null}
!264 = metadata !{i32 115, i32 0, metadata !261, null}
!265 = metadata !{i32 116, i32 0, metadata !261, null}
!266 = metadata !{i32 121, i32 0, metadata !262, null}
!267 = metadata !{i32 123, i32 0, metadata !262, null}
!268 = metadata !{i32 107, i32 0, metadata !20, null}
!269 = metadata !{i32 110, i32 0, metadata !262, null}
!270 = metadata !{metadata !"short", metadata !246}
!271 = metadata !{i32 112, i32 0, metadata !262, null}
!272 = metadata !{i32 117, i32 0, metadata !261, null}
!273 = metadata !{i32 118, i32 0, metadata !261, null}
!274 = metadata !{i32 120, i32 0, metadata !262, null}
!275 = metadata !{metadata !"int", metadata !246}
!276 = metadata !{i32 125, i32 0, metadata !262, null}
!277 = metadata !{i32 126, i32 0, metadata !262, null}
!278 = metadata !{i32 126, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !262, i32 126, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/phylip.c]
!280 = metadata !{i32 128, i32 0, metadata !20, null}
!281 = metadata !{i32 129, i32 0, metadata !20, null}
!282 = metadata !{i32 130, i32 0, metadata !20, null}
!283 = metadata !{i32 131, i32 0, metadata !20, null}
!284 = metadata !{i32 146, i32 0, metadata !227, null}
!285 = metadata !{i32 50}
!286 = metadata !{i32 149, i32 0, metadata !227, null}
!287 = metadata !{i32 150, i32 0, metadata !227, null}
!288 = metadata !{i32 155, i32 0, metadata !227, null}
!289 = metadata !{i32 163, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !227, i32 163, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/phylip.c]
!291 = metadata !{i32 169, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !293, i32 168, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/phylip.c]
!293 = metadata !{i32 786443, metadata !1, metadata !294, i32 167, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/phylip.c]
!294 = metadata !{i32 786443, metadata !1, metadata !290, i32 164, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/phylip.c]
!295 = metadata !{i32 170, i32 0, metadata !292, null}
!296 = metadata !{i32 172, i32 0, metadata !292, null}
!297 = metadata !{i32 165, i32 0, metadata !294, null}
!298 = metadata !{i32 167, i32 0, metadata !293, null}
!299 = metadata !{i32 171, i32 0, metadata !292, null}
!300 = metadata !{i32 175, i32 0, metadata !227, null}
!301 = metadata !{i32 176, i32 0, metadata !227, null}
