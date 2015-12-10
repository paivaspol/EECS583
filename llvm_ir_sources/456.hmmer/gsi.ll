; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsi_s = type { %struct._IO_FILE*, i16, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gsiindex_s = type { i8**, i32*, i16, %struct.gsikey_s*, i32 }
%struct.gsikey_s = type { [32 x i8], i16, i32 }

@.str = private unnamed_addr constant [49 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@squid_errno = external global i32
@.str2 = private unnamed_addr constant [4 x i8] c"GSI\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"File name too long to be indexed.\00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"key too long in GSI index\00", align 1
@.str5 = private unnamed_addr constant [28 x i8] c"too many files in GSI index\00", align 1
@.str6 = private unnamed_addr constant [28 x i8] c"offset too big in GSI index\00", align 1
@.str9 = private unnamed_addr constant [25 x i8] c"GSI: nfiles out of range\00", align 1
@.str10 = private unnamed_addr constant [24 x i8] c"GSI: nkeys out of range\00", align 1
@.str11 = private unnamed_addr constant [29 x i8] c"GSI: file index out of range\00", align 1
@.str13 = private unnamed_addr constant [25 x i8] c"GSI: offset out of range\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.gsi_s* @GSIOpen(i8* nocapture %gsifile) #0 {
entry:
  %magic = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %gsifile}, i64 0, metadata !78), !dbg !213
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %magic}, metadata !80), !dbg !214
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 58, i64 16) #7, !dbg !215
  %0 = bitcast i8* %call to %struct.gsi_s*, !dbg !215
  call void @llvm.dbg.value(metadata !{%struct.gsi_s* %0}, i64 0, metadata !79), !dbg !215
  %call1 = call %struct._IO_FILE* @fopen(i8* %gsifile, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !216
  %gsifp = bitcast i8* %call to %struct._IO_FILE**, !dbg !216
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %gsifp, align 8, !dbg !216, !tbaa !217
  %cmp = icmp eq %struct._IO_FILE* %call1, null, !dbg !216
  br i1 %cmp, label %if.then, label %if.end, !dbg !216

if.then:                                          ; preds = %entry
  call void @free(i8* %call) #7, !dbg !220
  store i32 4, i32* @squid_errno, align 4, !dbg !220, !tbaa !222
  br label %return, !dbg !220

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8]* %magic, i64 0, i64 0, !dbg !223
  %call3 = call i64 @fread(i8* %arraydecay, i64 1, i64 32, %struct._IO_FILE* %call1) #7, !dbg !223
  %tobool = icmp eq i64 %call3, 0, !dbg !223
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !223

if.then4:                                         ; preds = %if.end
  call void @free(i8* %call) #7, !dbg !224
  store i32 2, i32* @squid_errno, align 4, !dbg !224, !tbaa !222
  br label %return, !dbg !224

if.end5:                                          ; preds = %if.end
  %call7 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !226
  %cmp8 = icmp eq i32 %call7, 0, !dbg !226
  br i1 %cmp8, label %if.end10, label %if.then9, !dbg !226

if.then9:                                         ; preds = %if.end5
  call void @free(i8* %call) #7, !dbg !227
  store i32 5, i32* @squid_errno, align 4, !dbg !227, !tbaa !222
  br label %return, !dbg !227

if.end10:                                         ; preds = %if.end5
  %nfiles = getelementptr inbounds i8* %call, i64 8, !dbg !229
  %1 = bitcast i8* %nfiles to i16*, !dbg !229
  %2 = load %struct._IO_FILE** %gsifp, align 8, !dbg !229, !tbaa !217
  %call12 = call i64 @fread(i8* %nfiles, i64 2, i64 1, %struct._IO_FILE* %2) #7, !dbg !229
  %tobool13 = icmp eq i64 %call12, 0, !dbg !229
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !229

if.then14:                                        ; preds = %if.end10
  call void @free(i8* %call) #7, !dbg !230
  store i32 2, i32* @squid_errno, align 4, !dbg !230, !tbaa !222
  br label %return, !dbg !230

if.end15:                                         ; preds = %if.end10
  %recnum = getelementptr inbounds i8* %call, i64 12, !dbg !232
  %3 = bitcast i8* %recnum to i32*, !dbg !232
  %4 = load %struct._IO_FILE** %gsifp, align 8, !dbg !232, !tbaa !217
  %call17 = call i64 @fread(i8* %recnum, i64 4, i64 1, %struct._IO_FILE* %4) #7, !dbg !232
  %tobool18 = icmp eq i64 %call17, 0, !dbg !232
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !232

if.then19:                                        ; preds = %if.end15
  call void @free(i8* %call) #7, !dbg !233
  store i32 2, i32* @squid_errno, align 4, !dbg !233, !tbaa !222
  br label %return, !dbg !233

if.end20:                                         ; preds = %if.end15
  %5 = load i16* %1, align 2, !dbg !235, !tbaa !236
  %call22 = call zeroext i16 @sre_ntoh16(i16 zeroext %5) #7, !dbg !235
  store i16 %call22, i16* %1, align 2, !dbg !235, !tbaa !236
  %6 = load i32* %3, align 4, !dbg !237, !tbaa !222
  %call25 = call i32 @sre_ntoh32(i32 %6) #7, !dbg !237
  store i32 %call25, i32* %3, align 4, !dbg !237, !tbaa !222
  br label %return, !dbg !238

return:                                           ; preds = %if.end20, %if.then19, %if.then14, %if.then9, %if.then4, %if.then
  %retval.0 = phi %struct.gsi_s* [ null, %if.then ], [ null, %if.then9 ], [ %0, %if.end20 ], [ null, %if.then19 ], [ null, %if.then14 ], [ null, %if.then4 ]
  ret %struct.gsi_s* %retval.0, !dbg !239
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare zeroext i16 @sre_ntoh16(i16 zeroext) #2

; Function Attrs: optsize
declare i32 @sre_ntoh32(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @GSIGetRecord(%struct.gsi_s* nocapture %gsi, i8* %f1, i16* %f2, i32* %f3) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.gsi_s* %gsi}, i64 0, metadata !90), !dbg !240
  tail call void @llvm.dbg.value(metadata !{i8* %f1}, i64 0, metadata !91), !dbg !240
  tail call void @llvm.dbg.value(metadata !{i16* %f2}, i64 0, metadata !92), !dbg !240
  tail call void @llvm.dbg.value(metadata !{i32* %f3}, i64 0, metadata !93), !dbg !240
  %cmp = icmp eq i8* %f1, null, !dbg !241
  %gsifp = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 0, !dbg !241
  %0 = load %struct._IO_FILE** %gsifp, align 8, !dbg !241, !tbaa !217
  br i1 %cmp, label %if.then, label %if.else, !dbg !241

if.then:                                          ; preds = %entry
  %call = tail call i32 @fseek(%struct._IO_FILE* %0, i64 32, i32 1) #7, !dbg !241
  br label %if.end4, !dbg !241

if.else:                                          ; preds = %entry
  %call2 = tail call i64 @fread(i8* %f1, i64 32, i64 1, %struct._IO_FILE* %0) #7, !dbg !242
  %tobool = icmp eq i64 %call2, 0, !dbg !242
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !242

if.then3:                                         ; preds = %if.else
  store i32 2, i32* @squid_errno, align 4, !dbg !243, !tbaa !222
  br label %return, !dbg !243

if.end4:                                          ; preds = %if.else, %if.then
  %cmp5 = icmp eq i16* %f2, null, !dbg !245
  br i1 %cmp5, label %if.then6, label %if.else9, !dbg !245

if.then6:                                         ; preds = %if.end4
  %1 = load %struct._IO_FILE** %gsifp, align 8, !dbg !245, !tbaa !217
  %call8 = tail call i32 @fseek(%struct._IO_FILE* %1, i64 2, i32 1) #7, !dbg !245
  br label %if.end15, !dbg !245

if.else9:                                         ; preds = %if.end4
  %2 = bitcast i16* %f2 to i8*, !dbg !246
  %3 = load %struct._IO_FILE** %gsifp, align 8, !dbg !246, !tbaa !217
  %call11 = tail call i64 @fread(i8* %2, i64 2, i64 1, %struct._IO_FILE* %3) #7, !dbg !246
  %tobool12 = icmp eq i64 %call11, 0, !dbg !246
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !246

if.then13:                                        ; preds = %if.else9
  store i32 2, i32* @squid_errno, align 4, !dbg !247, !tbaa !222
  br label %return, !dbg !247

if.end15:                                         ; preds = %if.else9, %if.then6
  %cmp16 = icmp eq i32* %f3, null, !dbg !249
  br i1 %cmp16, label %if.then17, label %if.else20, !dbg !249

if.then17:                                        ; preds = %if.end15
  %4 = load %struct._IO_FILE** %gsifp, align 8, !dbg !249, !tbaa !217
  %call19 = tail call i32 @fseek(%struct._IO_FILE* %4, i64 4, i32 1) #7, !dbg !249
  br label %if.end26, !dbg !249

if.else20:                                        ; preds = %if.end15
  %5 = bitcast i32* %f3 to i8*, !dbg !250
  %6 = load %struct._IO_FILE** %gsifp, align 8, !dbg !250, !tbaa !217
  %call22 = tail call i64 @fread(i8* %5, i64 4, i64 1, %struct._IO_FILE* %6) #7, !dbg !250
  %tobool23 = icmp eq i64 %call22, 0, !dbg !250
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !250

if.then24:                                        ; preds = %if.else20
  store i32 2, i32* @squid_errno, align 4, !dbg !251, !tbaa !222
  br label %return, !dbg !251

if.end26:                                         ; preds = %if.else20, %if.then17
  br i1 %cmp5, label %if.end30, label %if.then28, !dbg !253

if.then28:                                        ; preds = %if.end26
  %7 = load i16* %f2, align 2, !dbg !253, !tbaa !236
  %call29 = tail call zeroext i16 @sre_ntoh16(i16 zeroext %7) #7, !dbg !253
  store i16 %call29, i16* %f2, align 2, !dbg !253, !tbaa !236
  br label %if.end30, !dbg !253

if.end30:                                         ; preds = %if.end26, %if.then28
  br i1 %cmp16, label %return, label %if.then32, !dbg !254

if.then32:                                        ; preds = %if.end30
  %8 = load i32* %f3, align 4, !dbg !254, !tbaa !222
  %call33 = tail call i32 @sre_ntoh32(i32 %8) #7, !dbg !254
  store i32 %call33, i32* %f3, align 4, !dbg !254, !tbaa !222
  br label %return, !dbg !254

return:                                           ; preds = %if.then32, %if.end30, %if.then24, %if.then13, %if.then3
  %retval.0 = phi i32 [ 0, %if.then24 ], [ 0, %if.then13 ], [ 0, %if.then3 ], [ 1, %if.end30 ], [ 1, %if.then32 ]
  ret i32 %retval.0, !dbg !255
}

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @GSIGetOffset(%struct.gsi_s* nocapture %gsi, i8* nocapture %key, i8* %ret_seqfile, i32* nocapture %ret_format, i64* nocapture %ret_offset) #0 {
entry:
  %name = alloca [33 x i8], align 16
  %offset = alloca i32, align 4
  %filenum = alloca i16, align 2
  %fmt = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.gsi_s* %gsi}, i64 0, metadata !100), !dbg !256
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !101), !dbg !256
  call void @llvm.dbg.value(metadata !{i8* %ret_seqfile}, i64 0, metadata !102), !dbg !256
  call void @llvm.dbg.value(metadata !{i32* %ret_format}, i64 0, metadata !103), !dbg !257
  call void @llvm.dbg.value(metadata !{i64* %ret_offset}, i64 0, metadata !104), !dbg !257
  %0 = getelementptr inbounds [33 x i8]* %name, i64 0, i64 0, !dbg !258
  call void @llvm.lifetime.start(i64 33, i8* %0) #5, !dbg !258
  call void @llvm.dbg.declare(metadata !{[33 x i8]* %name}, metadata !109), !dbg !258
  call void @llvm.dbg.declare(metadata !{i32* %offset}, metadata !113), !dbg !259
  call void @llvm.dbg.declare(metadata !{i16* %filenum}, metadata !114), !dbg !260
  call void @llvm.dbg.declare(metadata !{i32* %fmt}, metadata !115), !dbg !261
  %arrayidx = getelementptr inbounds [33 x i8]* %name, i64 0, i64 32, !dbg !262
  store i8 0, i8* %arrayidx, align 16, !dbg !262, !tbaa !218
  %nfiles = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 1, !dbg !263
  %1 = load i16* %nfiles, align 2, !dbg !263, !tbaa !236
  %conv = zext i16 %1 to i32, !dbg !263
  %add = add nsw i32 %conv, 1, !dbg !263
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !105), !dbg !263
  %recnum = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 2, !dbg !264
  %2 = load i32* %recnum, align 4, !dbg !264, !tbaa !222
  %add3 = add i32 %conv, %2, !dbg !264
  call void @llvm.dbg.value(metadata !{i32 %add3}, i64 0, metadata !106), !dbg !264
  %add4 = add i32 %add, %add3, !dbg !265
  %div = lshr i32 %add4, 1, !dbg !265
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !107), !dbg !265
  %gsifp = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 0, !dbg !266
  %3 = load %struct._IO_FILE** %gsifp, align 8, !dbg !266, !tbaa !217
  %mul = mul i32 %div, 38, !dbg !266
  %conv5 = zext i32 %mul to i64, !dbg !266
  %call = call i32 @fseek(%struct._IO_FILE* %3, i64 %conv5, i32 0) #7, !dbg !266
  %call656 = call i32 @GSIGetRecord(%struct.gsi_s* %gsi, i8* %0, i16* %filenum, i32* %offset) #9, !dbg !267
  %tobool57 = icmp eq i32 %call656, 0, !dbg !267
  br i1 %tobool57, label %while.end, label %while.body, !dbg !267

while.body:                                       ; preds = %entry, %if.else14
  %mid.060 = phi i32 [ %div27, %if.else14 ], [ %div, %entry ]
  %right.059 = phi i32 [ %right.1, %if.else14 ], [ %add3, %entry ]
  %left.058 = phi i32 [ %left.1, %if.else14 ], [ %add, %entry ]
  %call8 = call i32 @strcmp(i8* %0, i8* %key) #8, !dbg !268
  call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !108), !dbg !268
  %cmp9 = icmp eq i32 %call8, 0, !dbg !270
  br i1 %cmp9, label %while.end, label %if.else, !dbg !270

if.else:                                          ; preds = %while.body
  %cmp11 = icmp ult i32 %left.058, %right.059, !dbg !271
  br i1 %cmp11, label %if.else14, label %cleanup, !dbg !271

if.else14:                                        ; preds = %if.else
  %cmp15 = icmp slt i32 %call8, 0, !dbg !272
  %add18 = add i32 %mid.060, 1, !dbg !272
  call void @llvm.dbg.value(metadata !{i32 %add18}, i64 0, metadata !105), !dbg !272
  %sub = add i32 %mid.060, -1, !dbg !273
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !106), !dbg !273
  %left.1 = select i1 %cmp15, i32 %add18, i32 %left.058, !dbg !272
  %right.1 = select i1 %cmp15, i32 %right.059, i32 %sub, !dbg !272
  %add26 = add i32 %left.1, %right.1, !dbg !274
  %div27 = lshr i32 %add26, 1, !dbg !274
  call void @llvm.dbg.value(metadata !{i32 %div27}, i64 0, metadata !107), !dbg !274
  %4 = load %struct._IO_FILE** %gsifp, align 8, !dbg !275, !tbaa !217
  %mul29 = mul i32 %div27, 38, !dbg !275
  %conv30 = zext i32 %mul29 to i64, !dbg !275
  %call31 = call i32 @fseek(%struct._IO_FILE* %4, i64 %conv30, i32 0) #7, !dbg !275
  %call6 = call i32 @GSIGetRecord(%struct.gsi_s* %gsi, i8* %0, i16* %filenum, i32* %offset) #9, !dbg !267
  %tobool = icmp eq i32 %call6, 0, !dbg !267
  br i1 %tobool, label %while.end, label %while.body, !dbg !267

while.end:                                        ; preds = %if.else14, %while.body, %entry
  %5 = load %struct._IO_FILE** %gsifp, align 8, !dbg !276, !tbaa !217
  call void @llvm.dbg.value(metadata !{i16* %filenum}, i64 0, metadata !114), !dbg !276
  %6 = load i16* %filenum, align 2, !dbg !276, !tbaa !236
  %conv33 = zext i16 %6 to i64, !dbg !276
  %mul34 = mul i64 %conv33, 38, !dbg !276
  %call36 = call i32 @fseek(%struct._IO_FILE* %5, i64 %mul34, i32 0) #7, !dbg !276
  %call37 = call i32 @GSIGetRecord(%struct.gsi_s* %gsi, i8* %ret_seqfile, i16* null, i32* %fmt) #9, !dbg !277
  call void @llvm.dbg.value(metadata !{i32* %fmt}, i64 0, metadata !115), !dbg !278
  %7 = load i32* %fmt, align 4, !dbg !278, !tbaa !222
  store i32 %7, i32* %ret_format, align 4, !dbg !278, !tbaa !222
  call void @llvm.dbg.value(metadata !{i32* %offset}, i64 0, metadata !113), !dbg !279
  %8 = load i32* %offset, align 4, !dbg !279, !tbaa !222
  %conv38 = zext i32 %8 to i64, !dbg !279
  store i64 %conv38, i64* %ret_offset, align 8, !dbg !279, !tbaa !280
  br label %cleanup, !dbg !281

cleanup:                                          ; preds = %if.else, %while.end
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %if.else ]
  call void @llvm.lifetime.end(i64 33, i8* %0) #5, !dbg !281
  ret i32 %retval.0, !dbg !282
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @GSIClose(%struct.gsi_s* nocapture %gsi) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.gsi_s* %gsi}, i64 0, metadata !120), !dbg !283
  %gsifp = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 0, !dbg !284
  %0 = load %struct._IO_FILE** %gsifp, align 8, !dbg !284, !tbaa !217
  %call = tail call i32 @fclose(%struct._IO_FILE* %0) #7, !dbg !284
  %1 = bitcast %struct.gsi_s* %gsi to i8*, !dbg !285
  tail call void @free(i8* %1) #7, !dbg !285
  ret void, !dbg !286
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define %struct.gsiindex_s* @GSIAllocIndex() #0 {
entry:
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 200, i64 40) #7, !dbg !287
  %0 = bitcast i8* %call to %struct.gsiindex_s*, !dbg !287
  tail call void @llvm.dbg.value(metadata !{%struct.gsiindex_s* %0}, i64 0, metadata !140), !dbg !287
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 201, i64 80) #7, !dbg !288
  %1 = bitcast i8* %call1 to i8**, !dbg !288
  %filenames = bitcast i8* %call to i8***, !dbg !288
  store i8** %1, i8*** %filenames, align 8, !dbg !288, !tbaa !217
  %call2 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 202, i64 40) #7, !dbg !289
  %2 = bitcast i8* %call2 to i32*, !dbg !289
  %fmt = getelementptr inbounds i8* %call, i64 8, !dbg !289
  %3 = bitcast i8* %fmt to i32**, !dbg !289
  store i32* %2, i32** %3, align 8, !dbg !289, !tbaa !217
  %call3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 203, i64 4000) #7, !dbg !290
  %4 = bitcast i8* %call3 to %struct.gsikey_s*, !dbg !290
  %elems = getelementptr inbounds i8* %call, i64 24, !dbg !290
  %5 = bitcast i8* %elems to %struct.gsikey_s**, !dbg !290
  store %struct.gsikey_s* %4, %struct.gsikey_s** %5, align 8, !dbg !290, !tbaa !217
  %nfiles = getelementptr inbounds i8* %call, i64 16, !dbg !291
  %6 = bitcast i8* %nfiles to i16*, !dbg !291
  store i16 0, i16* %6, align 2, !dbg !291, !tbaa !236
  %nkeys = getelementptr inbounds i8* %call, i64 32, !dbg !292
  %7 = bitcast i8* %nkeys to i32*, !dbg !292
  store i32 0, i32* %7, align 4, !dbg !292, !tbaa !222
  ret %struct.gsiindex_s* %0, !dbg !293
}

; Function Attrs: nounwind optsize uwtable
define void @GSIFreeIndex(%struct.gsiindex_s* nocapture %g) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.gsiindex_s* %g}, i64 0, metadata !145), !dbg !294
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !146), !dbg !295
  %nfiles = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 2, !dbg !295
  %0 = load i16* %nfiles, align 2, !dbg !295, !tbaa !236
  %cmp11 = icmp eq i16 %0, 0, !dbg !295
  %filenames2.pre = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 0, !dbg !297
  br i1 %cmp11, label %for.end, label %for.body, !dbg !295

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %1 = load i8*** %filenames2.pre, align 8, !dbg !295, !tbaa !217
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv, !dbg !295
  %2 = load i8** %arrayidx, align 8, !dbg !295, !tbaa !217
  tail call void @free(i8* %2) #7, !dbg !295
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !295
  %3 = load i16* %nfiles, align 2, !dbg !295, !tbaa !236
  %conv = zext i16 %3 to i32, !dbg !295
  %4 = trunc i64 %indvars.iv.next to i32, !dbg !295
  %cmp = icmp slt i32 %4, %conv, !dbg !295
  br i1 %cmp, label %for.body, label %for.end, !dbg !295

for.end:                                          ; preds = %entry, %for.body
  %5 = load i8*** %filenames2.pre, align 8, !dbg !297, !tbaa !217
  %6 = bitcast i8** %5 to i8*, !dbg !297
  tail call void @free(i8* %6) #7, !dbg !297
  %fmt = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 1, !dbg !298
  %7 = load i32** %fmt, align 8, !dbg !298, !tbaa !217
  %8 = bitcast i32* %7 to i8*, !dbg !298
  tail call void @free(i8* %8) #7, !dbg !298
  %elems = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 3, !dbg !299
  %9 = load %struct.gsikey_s** %elems, align 8, !dbg !299, !tbaa !217
  %10 = getelementptr inbounds %struct.gsikey_s* %9, i64 0, i32 0, i64 0, !dbg !299
  tail call void @free(i8* %10) #7, !dbg !299
  %11 = bitcast %struct.gsiindex_s* %g to i8*, !dbg !300
  tail call void @free(i8* %11) #7, !dbg !300
  ret void, !dbg !301
}

; Function Attrs: nounwind optsize uwtable
define void @GSIAddFileToIndex(%struct.gsiindex_s* nocapture %g, i8* %filename, i32 %fmt) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.gsiindex_s* %g}, i64 0, metadata !151), !dbg !302
  tail call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !152), !dbg !302
  tail call void @llvm.dbg.value(metadata !{i32 %fmt}, i64 0, metadata !153), !dbg !302
  %call = tail call i64 @strlen(i8* %filename) #8, !dbg !303
  %conv = trunc i64 %call to i32, !dbg !303
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !154), !dbg !303
  %cmp = icmp sgt i32 %conv, 31, !dbg !304
  br i1 %cmp, label %if.then, label %if.end, !dbg !304

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !304
  br label %if.end, !dbg !304

if.end:                                           ; preds = %if.then, %entry
  %call2 = tail call i8* @sre_strdup(i8* %filename, i32 %conv) #7, !dbg !305
  %nfiles = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 2, !dbg !305
  %0 = load i16* %nfiles, align 2, !dbg !305, !tbaa !236
  %idxprom = zext i16 %0 to i64, !dbg !305
  %filenames = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 0, !dbg !305
  %1 = load i8*** %filenames, align 8, !dbg !305, !tbaa !217
  %arrayidx = getelementptr inbounds i8** %1, i64 %idxprom, !dbg !305
  store i8* %call2, i8** %arrayidx, align 8, !dbg !305, !tbaa !217
  %fmt5 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 1, !dbg !306
  %2 = load i32** %fmt5, align 8, !dbg !306, !tbaa !217
  %arrayidx6 = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !306
  store i32 %fmt, i32* %arrayidx6, align 4, !dbg !306, !tbaa !222
  %inc = add i16 %0, 1, !dbg !307
  store i16 %inc, i16* %nfiles, align 2, !dbg !307, !tbaa !236
  %3 = urem i16 %inc, 10, !dbg !308
  %cmp10 = icmp eq i16 %3, 0, !dbg !308
  br i1 %cmp10, label %if.then12, label %if.end27, !dbg !308

if.then12:                                        ; preds = %if.end
  %conv9 = zext i16 %inc to i64, !dbg !308
  %4 = load i8*** %filenames, align 8, !dbg !309, !tbaa !217
  %5 = bitcast i8** %4 to i8*, !dbg !309
  %add = shl nuw nsw i64 %conv9, 3, !dbg !309
  %mul = add i64 %add, 80, !dbg !309
  %call17 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 229, i8* %5, i64 %mul) #7, !dbg !309
  %6 = bitcast i8* %call17 to i8**, !dbg !309
  store i8** %6, i8*** %filenames, align 8, !dbg !309, !tbaa !217
  %7 = load i32** %fmt5, align 8, !dbg !311, !tbaa !217
  %8 = bitcast i32* %7 to i8*, !dbg !311
  %9 = load i16* %nfiles, align 2, !dbg !311, !tbaa !236
  %conv21 = zext i16 %9 to i64, !dbg !311
  %add22 = shl nuw nsw i64 %conv21, 2, !dbg !311
  %mul24 = add i64 %add22, 40, !dbg !311
  %call25 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 230, i8* %8, i64 %mul24) #7, !dbg !311
  %10 = bitcast i8* %call25 to i32*, !dbg !311
  store i32* %10, i32** %fmt5, align 8, !dbg !311, !tbaa !217
  br label %if.end27, !dbg !312

if.end27:                                         ; preds = %if.then12, %if.end
  ret void, !dbg !313
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #2

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @GSIAddKeyToIndex(%struct.gsiindex_s* nocapture %g, i8* nocapture %key, i32 %filenum, i64 %offset) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.gsiindex_s* %g}, i64 0, metadata !159), !dbg !314
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !160), !dbg !314
  tail call void @llvm.dbg.value(metadata !{i32 %filenum}, i64 0, metadata !161), !dbg !314
  tail call void @llvm.dbg.value(metadata !{i64 %offset}, i64 0, metadata !162), !dbg !314
  %call = tail call i64 @strlen(i8* %key) #8, !dbg !315
  %cmp = icmp ugt i64 %call, 31, !dbg !315
  br i1 %cmp, label %if.then, label %if.end, !dbg !315

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !315
  br label %if.end, !dbg !315

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %filenum, 65535, !dbg !316
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !316

if.then2:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !316
  br label %if.end3, !dbg !316

if.end3:                                          ; preds = %if.then2, %if.end
  %cmp4 = icmp sgt i64 %offset, 4294967295, !dbg !317
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !317

if.then5:                                         ; preds = %if.end3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !317
  br label %if.end6, !dbg !317

if.end6:                                          ; preds = %if.then5, %if.end3
  %nkeys = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 4, !dbg !318
  %0 = load i32* %nkeys, align 4, !dbg !318, !tbaa !222
  %idxprom = sext i32 %0 to i64, !dbg !318
  %elems = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 3, !dbg !318
  %1 = load %struct.gsikey_s** %elems, align 8, !dbg !318, !tbaa !217
  %arraydecay = getelementptr inbounds %struct.gsikey_s* %1, i64 %idxprom, i32 0, i64 0, !dbg !318
  %call8 = tail call i8* @strncpy(i8* %arraydecay, i8* %key, i64 31) #7, !dbg !318
  %2 = load i32* %nkeys, align 4, !dbg !319, !tbaa !222
  %idxprom10 = sext i32 %2 to i64, !dbg !319
  %3 = load %struct.gsikey_s** %elems, align 8, !dbg !319, !tbaa !217
  %arrayidx14 = getelementptr inbounds %struct.gsikey_s* %3, i64 %idxprom10, i32 0, i64 31, !dbg !319
  store i8 0, i8* %arrayidx14, align 1, !dbg !319, !tbaa !218
  %conv = trunc i32 %filenum to i16, !dbg !320
  %4 = load i32* %nkeys, align 4, !dbg !320, !tbaa !222
  %idxprom16 = sext i32 %4 to i64, !dbg !320
  %5 = load %struct.gsikey_s** %elems, align 8, !dbg !320, !tbaa !217
  %filenum19 = getelementptr inbounds %struct.gsikey_s* %5, i64 %idxprom16, i32 1, !dbg !320
  store i16 %conv, i16* %filenum19, align 2, !dbg !320, !tbaa !236
  %conv20 = trunc i64 %offset to i32, !dbg !321
  %offset25 = getelementptr inbounds %struct.gsikey_s* %5, i64 %idxprom16, i32 2, !dbg !321
  store i32 %conv20, i32* %offset25, align 4, !dbg !321, !tbaa !222
  %6 = load i32* %nkeys, align 4, !dbg !322, !tbaa !222
  %inc = add nsw i32 %6, 1, !dbg !322
  store i32 %inc, i32* %nkeys, align 4, !dbg !322, !tbaa !222
  %rem = srem i32 %inc, 100, !dbg !323
  %cmp28 = icmp eq i32 %rem, 0, !dbg !323
  br i1 %cmp28, label %if.then30, label %if.end36, !dbg !323

if.then30:                                        ; preds = %if.end6
  %7 = getelementptr inbounds %struct.gsikey_s* %5, i64 0, i32 0, i64 0, !dbg !324
  %add = add nsw i32 %6, 101, !dbg !324
  %conv33 = sext i32 %add to i64, !dbg !324
  %mul = mul i64 %conv33, 40, !dbg !324
  %call34 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 247, i8* %7, i64 %mul) #7, !dbg !324
  %8 = bitcast i8* %call34 to %struct.gsikey_s*, !dbg !324
  store %struct.gsikey_s* %8, %struct.gsikey_s** %elems, align 8, !dbg !324, !tbaa !217
  br label %if.end36, !dbg !324

if.end36:                                         ; preds = %if.then30, %if.end6
  ret void, !dbg !325
}

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize uwtable
define void @GSISortIndex(%struct.gsiindex_s* nocapture %g) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.gsiindex_s* %g}, i64 0, metadata !165), !dbg !326
  %elems = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 3, !dbg !327
  %0 = load %struct.gsikey_s** %elems, align 8, !dbg !327, !tbaa !217
  %1 = getelementptr inbounds %struct.gsikey_s* %0, i64 0, i32 0, i64 0, !dbg !327
  %nkeys = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 4, !dbg !327
  %2 = load i32* %nkeys, align 4, !dbg !327, !tbaa !222
  %call = tail call i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)* bitcast (i32 (...)* @specqsort to i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)*)(i8* %1, i32 %2, i64 40, i32 (i8*, i8*)* @gsi_keysorter) #7, !dbg !327
  ret void, !dbg !328
}

; Function Attrs: optsize
declare i32 @specqsort(...) #2

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @gsi_keysorter(i8* nocapture %k1, i8* nocapture %k2) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %k1}, i64 0, metadata !209), !dbg !329
  tail call void @llvm.dbg.value(metadata !{i8* %k2}, i64 0, metadata !210), !dbg !329
  %call = tail call i32 @strcmp(i8* %k1, i8* %k2) #8, !dbg !330
  ret i32 %call, !dbg !330
}

; Function Attrs: nounwind optsize uwtable
define void @GSIWriteIndex(%struct._IO_FILE* nocapture %fp, %struct.gsiindex_s* nocapture %g) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !170), !dbg !331
  tail call void @llvm.dbg.value(metadata !{%struct.gsiindex_s* %g}, i64 0, metadata !171), !dbg !331
  %nfiles = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 2, !dbg !332
  %nkeys = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 4, !dbg !333
  %0 = load i16* %nfiles, align 2, !dbg !334, !tbaa !236
  %conv7 = zext i16 %0 to i32, !dbg !334
  %1 = load i32* %nkeys, align 4, !dbg !334, !tbaa !222
  %conv9 = sext i32 %1 to i64, !dbg !334
  tail call void @GSIWriteHeader(%struct._IO_FILE* %fp, i32 %conv7, i64 %conv9) #9, !dbg !334
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !172), !dbg !335
  %2 = load i16* %nfiles, align 2, !dbg !335, !tbaa !236
  %cmp1259 = icmp eq i16 %2, 0, !dbg !335
  br i1 %cmp1259, label %for.cond16.preheader, label %for.body.lr.ph, !dbg !335

for.body.lr.ph:                                   ; preds = %entry
  %filenames = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 0, !dbg !337
  %fmt = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 1, !dbg !337
  br label %for.body, !dbg !335

for.cond16.preheader:                             ; preds = %for.body, %entry
  %3 = load i32* %nkeys, align 4, !dbg !338, !tbaa !222
  %cmp1856 = icmp eq i32 %3, 0, !dbg !338
  br i1 %cmp1856, label %for.end34, label %for.body20.lr.ph, !dbg !338

for.body20.lr.ph:                                 ; preds = %for.cond16.preheader
  %elems = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 3, !dbg !340
  br label %for.body20, !dbg !338

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.060 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %idxprom = zext i32 %i.060 to i64, !dbg !337
  %4 = load i8*** %filenames, align 8, !dbg !337, !tbaa !217
  %arrayidx = getelementptr inbounds i8** %4, i64 %idxprom, !dbg !337
  %5 = load i8** %arrayidx, align 8, !dbg !337, !tbaa !217
  %add = add i32 %i.060, 1, !dbg !337
  %6 = load i32** %fmt, align 8, !dbg !337, !tbaa !217
  %arrayidx15 = getelementptr inbounds i32* %6, i64 %idxprom, !dbg !337
  %7 = load i32* %arrayidx15, align 4, !dbg !337, !tbaa !222
  %call = tail call i32 @GSIWriteFileRecord(%struct._IO_FILE* %fp, i8* %5, i32 %add, i32 %7) #9, !dbg !337
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !172), !dbg !335
  %8 = load i16* %nfiles, align 2, !dbg !335, !tbaa !236
  %conv11 = zext i16 %8 to i32, !dbg !335
  %cmp12 = icmp ult i32 %add, %conv11, !dbg !335
  br i1 %cmp12, label %for.body, label %for.cond16.preheader, !dbg !335

for.body20:                                       ; preds = %for.body20.lr.ph, %for.body20
  %i.157 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc33, %for.body20 ]
  %idxprom21 = zext i32 %i.157 to i64, !dbg !340
  %9 = load %struct.gsikey_s** %elems, align 8, !dbg !340, !tbaa !217
  %arraydecay = getelementptr inbounds %struct.gsikey_s* %9, i64 %idxprom21, i32 0, i64 0, !dbg !340
  %filenum = getelementptr inbounds %struct.gsikey_s* %9, i64 %idxprom21, i32 1, !dbg !340
  %10 = load i16* %filenum, align 2, !dbg !340, !tbaa !236
  %conv26 = zext i16 %10 to i32, !dbg !340
  %offset = getelementptr inbounds %struct.gsikey_s* %9, i64 %idxprom21, i32 2, !dbg !340
  %11 = load i32* %offset, align 4, !dbg !340, !tbaa !222
  %conv30 = zext i32 %11 to i64, !dbg !340
  %call31 = tail call i32 @GSIWriteKeyRecord(%struct._IO_FILE* %fp, i8* %arraydecay, i32 %conv26, i64 %conv30) #9, !dbg !340
  %inc33 = add i32 %i.157, 1, !dbg !338
  tail call void @llvm.dbg.value(metadata !{i32 %inc33}, i64 0, metadata !172), !dbg !338
  %12 = load i32* %nkeys, align 4, !dbg !338, !tbaa !222
  %cmp18 = icmp ult i32 %inc33, %12, !dbg !338
  br i1 %cmp18, label %for.body20, label %for.end34, !dbg !338

for.end34:                                        ; preds = %for.body20, %for.cond16.preheader
  ret void, !dbg !341
}

; Function Attrs: nounwind optsize uwtable
define void @GSIWriteHeader(%struct._IO_FILE* nocapture %fp, i32 %nfiles, i64 %nkeys) #0 {
entry:
  %key = alloca [32 x i8], align 16
  %f1 = alloca i16, align 2
  %f2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !177), !dbg !342
  call void @llvm.dbg.value(metadata !{i32 %nfiles}, i64 0, metadata !178), !dbg !342
  call void @llvm.dbg.value(metadata !{i64 %nkeys}, i64 0, metadata !179), !dbg !342
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %key}, metadata !180), !dbg !343
  call void @llvm.dbg.declare(metadata !{i16* %f1}, metadata !181), !dbg !344
  call void @llvm.dbg.declare(metadata !{i32* %f2}, metadata !182), !dbg !345
  %cmp = icmp sgt i32 %nfiles, 65535, !dbg !346
  br i1 %cmp, label %if.then, label %if.end, !dbg !346

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([25 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !346
  br label %if.end, !dbg !346

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i64 %nkeys, 4294967295, !dbg !347
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !347

if.then2:                                         ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([24 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !347
  br label %if.end3, !dbg !347

if.end3:                                          ; preds = %if.then2, %if.end
  %conv = trunc i32 %nfiles to i16, !dbg !348
  call void @llvm.dbg.value(metadata !{i16 %conv}, i64 0, metadata !181), !dbg !348
  %conv4 = trunc i64 %nkeys to i32, !dbg !349
  call void @llvm.dbg.value(metadata !{i32 %conv4}, i64 0, metadata !182), !dbg !349
  call void @llvm.dbg.value(metadata !{i16* %f1}, i64 0, metadata !181), !dbg !350
  %call = call zeroext i16 @sre_hton16(i16 zeroext %conv) #7, !dbg !350
  call void @llvm.dbg.value(metadata !{i16 %call}, i64 0, metadata !181), !dbg !350
  store i16 %call, i16* %f1, align 2, !dbg !350, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32* %f2}, i64 0, metadata !182), !dbg !351
  %call5 = call i32 @sre_hton32(i32 %conv4) #7, !dbg !351
  call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !182), !dbg !351
  store i32 %call5, i32* %f2, align 4, !dbg !351, !tbaa !222
  %arraydecay = getelementptr inbounds [32 x i8]* %key, i64 0, i64 0, !dbg !352
  %0 = bitcast [32 x i8]* %key to i32*, !dbg !352
  store i32 4805447, i32* %0, align 16, !dbg !352
  %call8 = call i64 @fwrite(i8* %arraydecay, i64 1, i64 32, %struct._IO_FILE* %fp) #7, !dbg !353
  %cmp9 = icmp ult i64 %call8, 32, !dbg !353
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !353

if.then11:                                        ; preds = %if.end3
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 314) #7, !dbg !353
  br label %if.end12, !dbg !353

if.end12:                                         ; preds = %if.then11, %if.end3
  %1 = bitcast i16* %f1 to i8*, !dbg !354
  %call13 = call i64 @fwrite(i8* %1, i64 2, i64 1, %struct._IO_FILE* %fp) #7, !dbg !354
  %cmp14 = icmp eq i64 %call13, 0, !dbg !354
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !354

if.then16:                                        ; preds = %if.end12
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 315) #7, !dbg !354
  br label %if.end17, !dbg !354

if.end17:                                         ; preds = %if.then16, %if.end12
  %2 = bitcast i32* %f2 to i8*, !dbg !355
  %call18 = call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !355
  %cmp19 = icmp eq i64 %call18, 0, !dbg !355
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !355

if.then21:                                        ; preds = %if.end17
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 316) #7, !dbg !355
  br label %if.end22, !dbg !355

if.end22:                                         ; preds = %if.then21, %if.end17
  ret void, !dbg !356
}

; Function Attrs: nounwind optsize uwtable
define i32 @GSIWriteFileRecord(%struct._IO_FILE* nocapture %fp, i8* nocapture %fname, i32 %idx, i32 %fmt) #0 {
entry:
  %f1 = alloca i16, align 2
  %f2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !187), !dbg !357
  call void @llvm.dbg.value(metadata !{i8* %fname}, i64 0, metadata !188), !dbg !357
  call void @llvm.dbg.value(metadata !{i32 %idx}, i64 0, metadata !189), !dbg !357
  call void @llvm.dbg.value(metadata !{i32 %fmt}, i64 0, metadata !190), !dbg !357
  call void @llvm.dbg.declare(metadata !{i16* %f1}, metadata !191), !dbg !358
  call void @llvm.dbg.declare(metadata !{i32* %f2}, metadata !192), !dbg !359
  %call = call i64 @strlen(i8* %fname) #8, !dbg !360
  %cmp = icmp ugt i64 %call, 31, !dbg !360
  br i1 %cmp, label %return, label %if.end, !dbg !360

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %idx, 65535, !dbg !361
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !361

if.then2:                                         ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([29 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !361
  br label %if.end6, !dbg !361

if.end6:                                          ; preds = %if.end, %if.then2
  %conv = trunc i32 %idx to i16, !dbg !362
  call void @llvm.dbg.value(metadata !{i16 %conv}, i64 0, metadata !191), !dbg !362
  call void @llvm.dbg.value(metadata !{i32 %fmt}, i64 0, metadata !192), !dbg !363
  call void @llvm.dbg.value(metadata !{i16* %f1}, i64 0, metadata !191), !dbg !364
  %call7 = call zeroext i16 @sre_hton16(i16 zeroext %conv) #7, !dbg !364
  call void @llvm.dbg.value(metadata !{i16 %call7}, i64 0, metadata !191), !dbg !364
  store i16 %call7, i16* %f1, align 2, !dbg !364, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32* %f2}, i64 0, metadata !192), !dbg !365
  %call8 = call i32 @sre_hton32(i32 %fmt) #7, !dbg !365
  call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !192), !dbg !365
  store i32 %call8, i32* %f2, align 4, !dbg !365, !tbaa !222
  %call9 = call i64 @fwrite(i8* %fname, i64 1, i64 32, %struct._IO_FILE* %fp) #7, !dbg !366
  %cmp10 = icmp ult i64 %call9, 32, !dbg !366
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !366

if.then12:                                        ; preds = %if.end6
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 347) #7, !dbg !366
  br label %if.end13, !dbg !366

if.end13:                                         ; preds = %if.then12, %if.end6
  %0 = bitcast i16* %f1 to i8*, !dbg !367
  %call14 = call i64 @fwrite(i8* %0, i64 2, i64 1, %struct._IO_FILE* %fp) #7, !dbg !367
  %cmp15 = icmp eq i64 %call14, 0, !dbg !367
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !367

if.then17:                                        ; preds = %if.end13
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 348) #7, !dbg !367
  br label %if.end18, !dbg !367

if.end18:                                         ; preds = %if.then17, %if.end13
  %1 = bitcast i32* %f2 to i8*, !dbg !368
  %call19 = call i64 @fwrite(i8* %1, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !368
  %cmp20 = icmp eq i64 %call19, 0, !dbg !368
  br i1 %cmp20, label %if.then22, label %return, !dbg !368

if.then22:                                        ; preds = %if.end18
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 349) #7, !dbg !368
  br label %return, !dbg !368

return:                                           ; preds = %if.end18, %if.then22, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then22 ], [ 1, %if.end18 ]
  ret i32 %retval.0, !dbg !369
}

; Function Attrs: nounwind optsize uwtable
define i32 @GSIWriteKeyRecord(%struct._IO_FILE* nocapture %fp, i8* nocapture %key, i32 %fileidx, i64 %offset) #0 {
entry:
  %f1 = alloca i16, align 2
  %f2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !197), !dbg !370
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !198), !dbg !370
  call void @llvm.dbg.value(metadata !{i32 %fileidx}, i64 0, metadata !199), !dbg !370
  call void @llvm.dbg.value(metadata !{i64 %offset}, i64 0, metadata !200), !dbg !370
  call void @llvm.dbg.declare(metadata !{i16* %f1}, metadata !201), !dbg !371
  call void @llvm.dbg.declare(metadata !{i32* %f2}, metadata !202), !dbg !372
  %call = call i64 @strlen(i8* %key) #8, !dbg !373
  %cmp = icmp ugt i64 %call, 31, !dbg !373
  br i1 %cmp, label %return, label %if.end, !dbg !373

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %fileidx, 65535, !dbg !374
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !374

if.then2:                                         ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([29 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !374
  br label %if.end3, !dbg !374

if.end3:                                          ; preds = %if.then2, %if.end
  %cmp4 = icmp sgt i64 %offset, 4294967295, !dbg !375
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !375

if.then5:                                         ; preds = %if.end3
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([25 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !375
  br label %if.end6, !dbg !375

if.end6:                                          ; preds = %if.then5, %if.end3
  %conv = trunc i32 %fileidx to i16, !dbg !376
  call void @llvm.dbg.value(metadata !{i16 %conv}, i64 0, metadata !201), !dbg !376
  %conv7 = trunc i64 %offset to i32, !dbg !377
  call void @llvm.dbg.value(metadata !{i32 %conv7}, i64 0, metadata !202), !dbg !377
  call void @llvm.dbg.value(metadata !{i16* %f1}, i64 0, metadata !201), !dbg !378
  %call8 = call zeroext i16 @sre_hton16(i16 zeroext %conv) #7, !dbg !378
  call void @llvm.dbg.value(metadata !{i16 %call8}, i64 0, metadata !201), !dbg !378
  store i16 %call8, i16* %f1, align 2, !dbg !378, !tbaa !236
  call void @llvm.dbg.value(metadata !{i32* %f2}, i64 0, metadata !202), !dbg !379
  %call9 = call i32 @sre_hton32(i32 %conv7) #7, !dbg !379
  call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !202), !dbg !379
  store i32 %call9, i32* %f2, align 4, !dbg !379, !tbaa !222
  %call10 = call i64 @fwrite(i8* %key, i64 1, i64 32, %struct._IO_FILE* %fp) #7, !dbg !380
  %cmp11 = icmp ult i64 %call10, 32, !dbg !380
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !380

if.then13:                                        ; preds = %if.end6
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 382) #7, !dbg !380
  br label %if.end14, !dbg !380

if.end14:                                         ; preds = %if.then13, %if.end6
  %0 = bitcast i16* %f1 to i8*, !dbg !381
  %call15 = call i64 @fwrite(i8* %0, i64 2, i64 1, %struct._IO_FILE* %fp) #7, !dbg !381
  %cmp16 = icmp eq i64 %call15, 0, !dbg !381
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !381

if.then18:                                        ; preds = %if.end14
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 383) #7, !dbg !381
  br label %if.end19, !dbg !381

if.end19:                                         ; preds = %if.then18, %if.end14
  %1 = bitcast i32* %f2 to i8*, !dbg !382
  %call20 = call i64 @fwrite(i8* %1, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !382
  %cmp21 = icmp eq i64 %call20, 0, !dbg !382
  br i1 %cmp21, label %if.then23, label %return, !dbg !382

if.then23:                                        ; preds = %if.end19
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 384) #7, !dbg !382
  br label %return, !dbg !382

return:                                           ; preds = %if.end19, %if.then23, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then23 ], [ 1, %if.end19 ]
  ret i32 %retval.0, !dbg !383
}

; Function Attrs: optsize
declare zeroext i16 @sre_hton16(i16 zeroext) #2

; Function Attrs: optsize
declare i32 @sre_hton32(i32) #2

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @Panic(i8*, i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !84, metadata !94, metadata !116, metadata !121, metadata !141, metadata !147, metadata !155, metadata !163, metadata !166, metadata !173, metadata !183, metadata !193, metadata !203}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GSIOpen", metadata !"GSIOpen", metadata !"", i32 53, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.gsi_s* (i8*)* @GSIOpen, null, null, metadata !77, i32 54} ; [ DW_TAG_subprogram ] [line 53] [def] [scope 54] [GSIOpen]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !22}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GSIFILE]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"GSIFILE", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [GSIFILE] [line 51, size 0, align 0, offset 0] [from gsi_s]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"gsi_s", i32 46, i64 128, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [gsi_s] [line 46, size 128, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !72, metadata !74}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gsifp", i32 47, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [gsifp] [line 47, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!15 = metadata !{i32 786454, metadata !11, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!17 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !42, metadata !43, metadata !44, metadata !45, metadata !48, metadata !50, metadata !52, metadata !56, metadata !58, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !67, metadata !68}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!23 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!24 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!25 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!27 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!28 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!29 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!30 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!31 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!32 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!33 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!34 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !35} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!36 = metadata !{i32 786451, metadata !17, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !37, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!37 = metadata !{metadata !38, metadata !39, metadata !41}
!38 = metadata !{i32 786445, metadata !17, metadata !36, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!39 = metadata !{i32 786445, metadata !17, metadata !36, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !40} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!41 = metadata !{i32 786445, metadata !17, metadata !36, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!42 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !40} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!43 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !20} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!44 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !20} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!45 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !46} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!46 = metadata !{i32 786454, metadata !17, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!47 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!48 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !49} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!49 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!50 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !51} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!51 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!52 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !53} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!53 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !23, metadata !54, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!56 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !57} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !59} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!59 = metadata !{i32 786454, metadata !17, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!60 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !57} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!61 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !57} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!62 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !57} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!63 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !57} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!64 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !65} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!65 = metadata !{i32 786454, metadata !17, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!66 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!67 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !20} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!68 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !69} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!69 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !23, metadata !70, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!72 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nfiles", i32 48, i64 16, i64 16, i64 64, i32 0, metadata !73} ; [ DW_TAG_member ] [nfiles] [line 48, size 16, align 16, offset 64] [from sqd_uint16]
!73 = metadata !{i32 786454, metadata !11, null, metadata !"sqd_uint16", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [sqd_uint16] [line 40, size 0, align 0, offset 0] [from unsigned short]
!74 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"recnum", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !75} ; [ DW_TAG_member ] [recnum] [line 49, size 32, align 32, offset 96] [from sqd_uint32]
!75 = metadata !{i32 786454, metadata !11, null, metadata !"sqd_uint32", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [sqd_uint32] [line 41, size 0, align 0, offset 0] [from unsigned int]
!76 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!77 = metadata !{metadata !78, metadata !79, metadata !80}
!78 = metadata !{i32 786689, metadata !4, metadata !"gsifile", metadata !5, i32 16777269, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gsifile] [line 53]
!79 = metadata !{i32 786688, metadata !4, metadata !"gsi", metadata !5, i32 55, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gsi] [line 55]
!80 = metadata !{i32 786688, metadata !4, metadata !"magic", metadata !5, i32 56, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [magic] [line 56]
!81 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !23, metadata !82, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from char]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786465, i64 0, i64 32}       ; [ DW_TAG_subrange_type ] [0, 31]
!84 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GSIGetRecord", metadata !"GSIGetRecord", metadata !"", i32 93, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.gsi_s*, i8*, i16*, i32*)* @GSIGetRecord, null, null, metadata !89, i32 94} ; [ DW_TAG_subprogram ] [line 93] [def] [scope 94] [GSIGetRecord]
!85 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!86 = metadata !{metadata !20, metadata !8, metadata !22, metadata !87, metadata !88}
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_uint16]
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_uint32]
!89 = metadata !{metadata !90, metadata !91, metadata !92, metadata !93}
!90 = metadata !{i32 786689, metadata !84, metadata !"gsi", metadata !5, i32 16777309, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gsi] [line 93]
!91 = metadata !{i32 786689, metadata !84, metadata !"f1", metadata !5, i32 33554525, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f1] [line 93]
!92 = metadata !{i32 786689, metadata !84, metadata !"f2", metadata !5, i32 50331741, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f2] [line 93]
!93 = metadata !{i32 786689, metadata !84, metadata !"f3", metadata !5, i32 67108957, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f3] [line 93]
!94 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GSIGetOffset", metadata !"GSIGetOffset", metadata !"", i32 128, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.gsi_s*, i8*, i8*, i32*, i64*)* @GSIGetOffset, null, null, metadata !99, i32 130} ; [ DW_TAG_subprogram ] [line 128] [def] [scope 130] [GSIGetOffset]
!95 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{metadata !20, metadata !8, metadata !22, metadata !22, metadata !97, metadata !98}
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!98 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!99 = metadata !{metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !113, metadata !114, metadata !115}
!100 = metadata !{i32 786689, metadata !94, metadata !"gsi", metadata !5, i32 16777344, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gsi] [line 128]
!101 = metadata !{i32 786689, metadata !94, metadata !"key", metadata !5, i32 33554560, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 128]
!102 = metadata !{i32 786689, metadata !94, metadata !"ret_seqfile", metadata !5, i32 50331776, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_seqfile] [line 128]
!103 = metadata !{i32 786689, metadata !94, metadata !"ret_format", metadata !5, i32 67108993, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_format] [line 129]
!104 = metadata !{i32 786689, metadata !94, metadata !"ret_offset", metadata !5, i32 83886209, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_offset] [line 129]
!105 = metadata !{i32 786688, metadata !94, metadata !"left", metadata !5, i32 131, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left] [line 131]
!106 = metadata !{i32 786688, metadata !94, metadata !"right", metadata !5, i32 131, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [right] [line 131]
!107 = metadata !{i32 786688, metadata !94, metadata !"mid", metadata !5, i32 131, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mid] [line 131]
!108 = metadata !{i32 786688, metadata !94, metadata !"cmp", metadata !5, i32 132, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmp] [line 132]
!109 = metadata !{i32 786688, metadata !94, metadata !"name", metadata !5, i32 133, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 133]
!110 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 264, i64 8, i32 0, i32 0, metadata !23, metadata !111, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 264, align 8, offset 0] [from char]
!111 = metadata !{metadata !112}
!112 = metadata !{i32 786465, i64 0, i64 33}      ; [ DW_TAG_subrange_type ] [0, 32]
!113 = metadata !{i32 786688, metadata !94, metadata !"offset", metadata !5, i32 134, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 134]
!114 = metadata !{i32 786688, metadata !94, metadata !"filenum", metadata !5, i32 135, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filenum] [line 135]
!115 = metadata !{i32 786688, metadata !94, metadata !"fmt", metadata !5, i32 136, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmt] [line 136]
!116 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GSIClose", metadata !"GSIClose", metadata !"", i32 171, metadata !117, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.gsi_s*)* @GSIClose, null, null, metadata !119, i32 172} ; [ DW_TAG_subprogram ] [line 171] [def] [scope 172] [GSIClose]
!117 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!118 = metadata !{null, metadata !8}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 786689, metadata !116, metadata !"gsi", metadata !5, i32 16777387, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gsi] [line 171]
!121 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GSIAllocIndex", metadata !"GSIAllocIndex", metadata !"", i32 196, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.gsiindex_s* ()* @GSIAllocIndex, null, null, metadata !139, i32 197} ; [ DW_TAG_subprogram ] [line 196] [def] [scope 197] [GSIAllocIndex]
!122 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!123 = metadata !{metadata !124}
!124 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gsiindex_s]
!125 = metadata !{i32 786451, metadata !11, null, metadata !"gsiindex_s", i32 58, i64 320, i64 64, i32 0, i32 0, null, metadata !126, i32 0, null, null} ; [ DW_TAG_structure_type ] [gsiindex_s] [line 58, size 320, align 64, offset 0] [from ]
!126 = metadata !{metadata !127, metadata !129, metadata !130, metadata !131, metadata !138}
!127 = metadata !{i32 786445, metadata !11, metadata !125, metadata !"filenames", i32 59, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_member ] [filenames] [line 59, size 64, align 64, offset 0] [from ]
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!129 = metadata !{i32 786445, metadata !11, metadata !125, metadata !"fmt", i32 60, i64 64, i64 64, i64 64, i32 0, metadata !97} ; [ DW_TAG_member ] [fmt] [line 60, size 64, align 64, offset 64] [from ]
!130 = metadata !{i32 786445, metadata !11, metadata !125, metadata !"nfiles", i32 61, i64 16, i64 16, i64 128, i32 0, metadata !73} ; [ DW_TAG_member ] [nfiles] [line 61, size 16, align 16, offset 128] [from sqd_uint16]
!131 = metadata !{i32 786445, metadata !11, metadata !125, metadata !"elems", i32 63, i64 64, i64 64, i64 192, i32 0, metadata !132} ; [ DW_TAG_member ] [elems] [line 63, size 64, align 64, offset 192] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !133} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gsikey_s]
!133 = metadata !{i32 786451, metadata !11, null, metadata !"gsikey_s", i32 53, i64 320, i64 32, i32 0, i32 0, null, metadata !134, i32 0, null, null} ; [ DW_TAG_structure_type ] [gsikey_s] [line 53, size 320, align 32, offset 0] [from ]
!134 = metadata !{metadata !135, metadata !136, metadata !137}
!135 = metadata !{i32 786445, metadata !11, metadata !133, metadata !"key", i32 54, i64 256, i64 8, i64 0, i32 0, metadata !81} ; [ DW_TAG_member ] [key] [line 54, size 256, align 8, offset 0] [from ]
!136 = metadata !{i32 786445, metadata !11, metadata !133, metadata !"filenum", i32 55, i64 16, i64 16, i64 256, i32 0, metadata !73} ; [ DW_TAG_member ] [filenum] [line 55, size 16, align 16, offset 256] [from sqd_uint16]
!137 = metadata !{i32 786445, metadata !11, metadata !133, metadata !"offset", i32 56, i64 32, i64 32, i64 288, i32 0, metadata !75} ; [ DW_TAG_member ] [offset] [line 56, size 32, align 32, offset 288] [from sqd_uint32]
!138 = metadata !{i32 786445, metadata !11, metadata !125, metadata !"nkeys", i32 64, i64 32, i64 32, i64 256, i32 0, metadata !20} ; [ DW_TAG_member ] [nkeys] [line 64, size 32, align 32, offset 256] [from int]
!139 = metadata !{metadata !140}
!140 = metadata !{i32 786688, metadata !121, metadata !"g", metadata !5, i32 198, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 198]
!141 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GSIFreeIndex", metadata !"GSIFreeIndex", metadata !"", i32 209, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.gsiindex_s*)* @GSIFreeIndex, null, null, metadata !144, i32 210} ; [ DW_TAG_subprogram ] [line 209] [def] [scope 210] [GSIFreeIndex]
!142 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!143 = metadata !{null, metadata !124}
!144 = metadata !{metadata !145, metadata !146}
!145 = metadata !{i32 786689, metadata !141, metadata !"g", metadata !5, i32 16777425, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 209]
!146 = metadata !{i32 786688, metadata !141, metadata !"i", metadata !5, i32 211, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 211]
!147 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GSIAddFileToIndex", metadata !"GSIAddFileToIndex", metadata !"", i32 219, metadata !148, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.gsiindex_s*, i8*, i32)* @GSIAddFileToIndex, null, null, metadata !150, i32 220} ; [ DW_TAG_subprogram ] [line 219] [def] [scope 220] [GSIAddFileToIndex]
!148 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!149 = metadata !{null, metadata !124, metadata !22, metadata !20}
!150 = metadata !{metadata !151, metadata !152, metadata !153, metadata !154}
!151 = metadata !{i32 786689, metadata !147, metadata !"g", metadata !5, i32 16777435, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 219]
!152 = metadata !{i32 786689, metadata !147, metadata !"filename", metadata !5, i32 33554651, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 219]
!153 = metadata !{i32 786689, metadata !147, metadata !"fmt", metadata !5, i32 50331867, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 219]
!154 = metadata !{i32 786688, metadata !147, metadata !"len", metadata !5, i32 221, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 221]
!155 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GSIAddKeyToIndex", metadata !"GSIAddKeyToIndex", metadata !"", i32 234, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.gsiindex_s*, i8*, i32, i64)* @GSIAddKeyToIndex, null, null, metadata !158, i32 235} ; [ DW_TAG_subprogram ] [line 234] [def] [scope 235] [GSIAddKeyToIndex]
!156 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!157 = metadata !{null, metadata !124, metadata !22, metadata !20, metadata !47}
!158 = metadata !{metadata !159, metadata !160, metadata !161, metadata !162}
!159 = metadata !{i32 786689, metadata !155, metadata !"g", metadata !5, i32 16777450, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 234]
!160 = metadata !{i32 786689, metadata !155, metadata !"key", metadata !5, i32 33554666, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 234]
!161 = metadata !{i32 786689, metadata !155, metadata !"filenum", metadata !5, i32 50331882, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filenum] [line 234]
!162 = metadata !{i32 786689, metadata !155, metadata !"offset", metadata !5, i32 67109098, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 234]
!163 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GSISortIndex", metadata !"GSISortIndex", metadata !"", i32 259, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.gsiindex_s*)* @GSISortIndex, null, null, metadata !164, i32 260} ; [ DW_TAG_subprogram ] [line 259] [def] [scope 260] [GSISortIndex]
!164 = metadata !{metadata !165}
!165 = metadata !{i32 786689, metadata !163, metadata !"g", metadata !5, i32 16777475, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 259]
!166 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GSIWriteIndex", metadata !"GSIWriteIndex", metadata !"", i32 264, metadata !167, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.gsiindex_s*)* @GSIWriteIndex, null, null, metadata !169, i32 265} ; [ DW_TAG_subprogram ] [line 264] [def] [scope 265] [GSIWriteIndex]
!167 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!168 = metadata !{null, metadata !14, metadata !124}
!169 = metadata !{metadata !170, metadata !171, metadata !172}
!170 = metadata !{i32 786689, metadata !166, metadata !"fp", metadata !5, i32 16777480, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 264]
!171 = metadata !{i32 786689, metadata !166, metadata !"g", metadata !5, i32 33554696, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 264]
!172 = metadata !{i32 786688, metadata !166, metadata !"i", metadata !5, i32 266, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 266]
!173 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GSIWriteHeader", metadata !"GSIWriteHeader", metadata !"", i32 297, metadata !174, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i64)* @GSIWriteHeader, null, null, metadata !176, i32 298} ; [ DW_TAG_subprogram ] [line 297] [def] [scope 298] [GSIWriteHeader]
!174 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!175 = metadata !{null, metadata !14, metadata !20, metadata !47}
!176 = metadata !{metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182}
!177 = metadata !{i32 786689, metadata !173, metadata !"fp", metadata !5, i32 16777513, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 297]
!178 = metadata !{i32 786689, metadata !173, metadata !"nfiles", metadata !5, i32 33554729, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfiles] [line 297]
!179 = metadata !{i32 786689, metadata !173, metadata !"nkeys", metadata !5, i32 50331945, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nkeys] [line 297]
!180 = metadata !{i32 786688, metadata !173, metadata !"key", metadata !5, i32 299, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 299]
!181 = metadata !{i32 786688, metadata !173, metadata !"f1", metadata !5, i32 300, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f1] [line 300]
!182 = metadata !{i32 786688, metadata !173, metadata !"f2", metadata !5, i32 301, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f2] [line 301]
!183 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GSIWriteFileRecord", metadata !"GSIWriteFileRecord", metadata !"", i32 333, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i8*, i32, i32)* @GSIWriteFileRecord, null, null, metadata !186, i32 334} ; [ DW_TAG_subprogram ] [line 333] [def] [scope 334] [GSIWriteFileRecord]
!184 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!185 = metadata !{metadata !20, metadata !14, metadata !22, metadata !20, metadata !20}
!186 = metadata !{metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192}
!187 = metadata !{i32 786689, metadata !183, metadata !"fp", metadata !5, i32 16777549, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 333]
!188 = metadata !{i32 786689, metadata !183, metadata !"fname", metadata !5, i32 33554765, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fname] [line 333]
!189 = metadata !{i32 786689, metadata !183, metadata !"idx", metadata !5, i32 50331981, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 333]
!190 = metadata !{i32 786689, metadata !183, metadata !"fmt", metadata !5, i32 67109197, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 333]
!191 = metadata !{i32 786688, metadata !183, metadata !"f1", metadata !5, i32 335, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f1] [line 335]
!192 = metadata !{i32 786688, metadata !183, metadata !"f2", metadata !5, i32 336, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f2] [line 336]
!193 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GSIWriteKeyRecord", metadata !"GSIWriteKeyRecord", metadata !"", i32 368, metadata !194, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i8*, i32, i64)* @GSIWriteKeyRecord, null, null, metadata !196, i32 369} ; [ DW_TAG_subprogram ] [line 368] [def] [scope 369] [GSIWriteKeyRecord]
!194 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!195 = metadata !{metadata !20, metadata !14, metadata !22, metadata !20, metadata !47}
!196 = metadata !{metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202}
!197 = metadata !{i32 786689, metadata !193, metadata !"fp", metadata !5, i32 16777584, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 368]
!198 = metadata !{i32 786689, metadata !193, metadata !"key", metadata !5, i32 33554800, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 368]
!199 = metadata !{i32 786689, metadata !193, metadata !"fileidx", metadata !5, i32 50332016, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fileidx] [line 368]
!200 = metadata !{i32 786689, metadata !193, metadata !"offset", metadata !5, i32 67109232, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 368]
!201 = metadata !{i32 786688, metadata !193, metadata !"f1", metadata !5, i32 370, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f1] [line 370]
!202 = metadata !{i32 786688, metadata !193, metadata !"f2", metadata !5, i32 371, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f2] [line 371]
!203 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gsi_keysorter", metadata !"gsi_keysorter", metadata !"", i32 250, metadata !204, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @gsi_keysorter, null, null, metadata !208, i32 251} ; [ DW_TAG_subprogram ] [line 250] [local] [def] [scope 251] [gsi_keysorter]
!204 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!205 = metadata !{metadata !20, metadata !206, metadata !206}
!206 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !207} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!207 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!208 = metadata !{metadata !209, metadata !210, metadata !211, metadata !212}
!209 = metadata !{i32 786689, metadata !203, metadata !"k1", metadata !5, i32 16777466, metadata !206, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k1] [line 250]
!210 = metadata !{i32 786689, metadata !203, metadata !"k2", metadata !5, i32 33554682, metadata !206, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k2] [line 250]
!211 = metadata !{i32 786688, metadata !203, metadata !"key1", metadata !5, i32 252, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key1] [line 252]
!212 = metadata !{i32 786688, metadata !203, metadata !"key2", metadata !5, i32 253, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key2] [line 253]
!213 = metadata !{i32 53, i32 0, metadata !4, null}
!214 = metadata !{i32 56, i32 0, metadata !4, null}
!215 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!216 = metadata !{i32 59, i32 0, metadata !4, null}
!217 = metadata !{metadata !"any pointer", metadata !218}
!218 = metadata !{metadata !"omnipotent char", metadata !219}
!219 = metadata !{metadata !"Simple C/C++ TBAA"}
!220 = metadata !{i32 60, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !4, i32 60, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c]
!222 = metadata !{metadata !"int", metadata !218}
!223 = metadata !{i32 62, i32 0, metadata !4, null}
!224 = metadata !{i32 63, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !4, i32 63, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c]
!226 = metadata !{i32 64, i32 0, metadata !4, null}
!227 = metadata !{i32 65, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !4, i32 65, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c]
!229 = metadata !{i32 67, i32 0, metadata !4, null}
!230 = metadata !{i32 68, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !4, i32 68, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c]
!232 = metadata !{i32 69, i32 0, metadata !4, null}
!233 = metadata !{i32 70, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !4, i32 70, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c]
!235 = metadata !{i32 72, i32 0, metadata !4, null}
!236 = metadata !{metadata !"short", metadata !218}
!237 = metadata !{i32 73, i32 0, metadata !4, null}
!238 = metadata !{i32 75, i32 0, metadata !4, null}
!239 = metadata !{i32 76, i32 0, metadata !4, null}
!240 = metadata !{i32 93, i32 0, metadata !84, null}
!241 = metadata !{i32 95, i32 0, metadata !84, null}
!242 = metadata !{i32 96, i32 0, metadata !84, null}
!243 = metadata !{i32 97, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !84, i32 97, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c]
!245 = metadata !{i32 99, i32 0, metadata !84, null}
!246 = metadata !{i32 100, i32 0, metadata !84, null}
!247 = metadata !{i32 101, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !84, i32 101, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c]
!249 = metadata !{i32 103, i32 0, metadata !84, null}
!250 = metadata !{i32 104, i32 0, metadata !84, null}
!251 = metadata !{i32 105, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !84, i32 105, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c]
!253 = metadata !{i32 107, i32 0, metadata !84, null}
!254 = metadata !{i32 108, i32 0, metadata !84, null}
!255 = metadata !{i32 110, i32 0, metadata !84, null}
!256 = metadata !{i32 128, i32 0, metadata !94, null}
!257 = metadata !{i32 129, i32 0, metadata !94, null}
!258 = metadata !{i32 133, i32 0, metadata !94, null}
!259 = metadata !{i32 134, i32 0, metadata !94, null}
!260 = metadata !{i32 135, i32 0, metadata !94, null}
!261 = metadata !{i32 136, i32 0, metadata !94, null}
!262 = metadata !{i32 138, i32 0, metadata !94, null}
!263 = metadata !{i32 140, i32 0, metadata !94, null}
!264 = metadata !{i32 141, i32 0, metadata !94, null}
!265 = metadata !{i32 142, i32 0, metadata !94, null}
!266 = metadata !{i32 143, i32 0, metadata !94, null}
!267 = metadata !{i32 145, i32 0, metadata !94, null}
!268 = metadata !{i32 147, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !94, i32 146, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c]
!270 = metadata !{i32 148, i32 0, metadata !269, null}
!271 = metadata !{i32 149, i32 0, metadata !269, null}
!272 = metadata !{i32 150, i32 0, metadata !269, null}
!273 = metadata !{i32 151, i32 0, metadata !269, null}
!274 = metadata !{i32 152, i32 0, metadata !269, null}
!275 = metadata !{i32 153, i32 0, metadata !269, null}
!276 = metadata !{i32 158, i32 0, metadata !94, null}
!277 = metadata !{i32 159, i32 0, metadata !94, null}
!278 = metadata !{i32 160, i32 0, metadata !94, null}
!279 = metadata !{i32 161, i32 0, metadata !94, null}
!280 = metadata !{metadata !"long", metadata !218}
!281 = metadata !{i32 163, i32 0, metadata !94, null}
!282 = metadata !{i32 164, i32 0, metadata !94, null}
!283 = metadata !{i32 171, i32 0, metadata !116, null}
!284 = metadata !{i32 173, i32 0, metadata !116, null}
!285 = metadata !{i32 174, i32 0, metadata !116, null}
!286 = metadata !{i32 175, i32 0, metadata !116, null}
!287 = metadata !{i32 200, i32 0, metadata !121, null}
!288 = metadata !{i32 201, i32 0, metadata !121, null}
!289 = metadata !{i32 202, i32 0, metadata !121, null}
!290 = metadata !{i32 203, i32 0, metadata !121, null}
!291 = metadata !{i32 204, i32 0, metadata !121, null}
!292 = metadata !{i32 205, i32 0, metadata !121, null}
!293 = metadata !{i32 206, i32 0, metadata !121, null}
!294 = metadata !{i32 209, i32 0, metadata !141, null}
!295 = metadata !{i32 212, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !141, i32 212, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c]
!297 = metadata !{i32 213, i32 0, metadata !141, null}
!298 = metadata !{i32 214, i32 0, metadata !141, null}
!299 = metadata !{i32 215, i32 0, metadata !141, null}
!300 = metadata !{i32 216, i32 0, metadata !141, null}
!301 = metadata !{i32 217, i32 0, metadata !141, null}
!302 = metadata !{i32 219, i32 0, metadata !147, null}
!303 = metadata !{i32 223, i32 0, metadata !147, null}
!304 = metadata !{i32 224, i32 0, metadata !147, null}
!305 = metadata !{i32 225, i32 0, metadata !147, null}
!306 = metadata !{i32 226, i32 0, metadata !147, null}
!307 = metadata !{i32 227, i32 0, metadata !147, null}
!308 = metadata !{i32 228, i32 0, metadata !147, null}
!309 = metadata !{i32 229, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !147, i32 228, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c]
!311 = metadata !{i32 230, i32 0, metadata !310, null}
!312 = metadata !{i32 231, i32 0, metadata !310, null}
!313 = metadata !{i32 232, i32 0, metadata !147, null}
!314 = metadata !{i32 234, i32 0, metadata !155, null}
!315 = metadata !{i32 236, i32 0, metadata !155, null}
!316 = metadata !{i32 237, i32 0, metadata !155, null}
!317 = metadata !{i32 238, i32 0, metadata !155, null}
!318 = metadata !{i32 240, i32 0, metadata !155, null}
!319 = metadata !{i32 241, i32 0, metadata !155, null}
!320 = metadata !{i32 242, i32 0, metadata !155, null}
!321 = metadata !{i32 243, i32 0, metadata !155, null}
!322 = metadata !{i32 244, i32 0, metadata !155, null}
!323 = metadata !{i32 246, i32 0, metadata !155, null}
!324 = metadata !{i32 247, i32 0, metadata !155, null}
!325 = metadata !{i32 248, i32 0, metadata !155, null}
!326 = metadata !{i32 259, i32 0, metadata !163, null}
!327 = metadata !{i32 261, i32 0, metadata !163, null}
!328 = metadata !{i32 262, i32 0, metadata !163, null}
!329 = metadata !{i32 250, i32 0, metadata !203, null}
!330 = metadata !{i32 256, i32 0, metadata !203, null}
!331 = metadata !{i32 264, i32 0, metadata !166, null}
!332 = metadata !{i32 270, i32 0, metadata !166, null}
!333 = metadata !{i32 271, i32 0, metadata !166, null}
!334 = metadata !{i32 273, i32 0, metadata !166, null}
!335 = metadata !{i32 274, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !166, i32 274, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c]
!337 = metadata !{i32 275, i32 0, metadata !336, null}
!338 = metadata !{i32 276, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !166, i32 276, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gsi.c]
!340 = metadata !{i32 277, i32 0, metadata !339, null}
!341 = metadata !{i32 278, i32 0, metadata !166, null}
!342 = metadata !{i32 297, i32 0, metadata !173, null}
!343 = metadata !{i32 299, i32 0, metadata !173, null}
!344 = metadata !{i32 300, i32 0, metadata !173, null}
!345 = metadata !{i32 301, i32 0, metadata !173, null}
!346 = metadata !{i32 305, i32 0, metadata !173, null}
!347 = metadata !{i32 306, i32 0, metadata !173, null}
!348 = metadata !{i32 308, i32 0, metadata !173, null}
!349 = metadata !{i32 309, i32 0, metadata !173, null}
!350 = metadata !{i32 310, i32 0, metadata !173, null}
!351 = metadata !{i32 311, i32 0, metadata !173, null}
!352 = metadata !{i32 312, i32 0, metadata !173, null}
!353 = metadata !{i32 314, i32 0, metadata !173, null}
!354 = metadata !{i32 315, i32 0, metadata !173, null}
!355 = metadata !{i32 316, i32 0, metadata !173, null}
!356 = metadata !{i32 317, i32 0, metadata !173, null}
!357 = metadata !{i32 333, i32 0, metadata !183, null}
!358 = metadata !{i32 335, i32 0, metadata !183, null}
!359 = metadata !{i32 336, i32 0, metadata !183, null}
!360 = metadata !{i32 338, i32 0, metadata !183, null}
!361 = metadata !{i32 339, i32 0, metadata !183, null}
!362 = metadata !{i32 342, i32 0, metadata !183, null}
!363 = metadata !{i32 343, i32 0, metadata !183, null}
!364 = metadata !{i32 344, i32 0, metadata !183, null}
!365 = metadata !{i32 345, i32 0, metadata !183, null}
!366 = metadata !{i32 347, i32 0, metadata !183, null}
!367 = metadata !{i32 348, i32 0, metadata !183, null}
!368 = metadata !{i32 349, i32 0, metadata !183, null}
!369 = metadata !{i32 350, i32 0, metadata !183, null}
!370 = metadata !{i32 368, i32 0, metadata !193, null}
!371 = metadata !{i32 370, i32 0, metadata !193, null}
!372 = metadata !{i32 371, i32 0, metadata !193, null}
!373 = metadata !{i32 373, i32 0, metadata !193, null}
!374 = metadata !{i32 374, i32 0, metadata !193, null}
!375 = metadata !{i32 375, i32 0, metadata !193, null}
!376 = metadata !{i32 377, i32 0, metadata !193, null}
!377 = metadata !{i32 378, i32 0, metadata !193, null}
!378 = metadata !{i32 379, i32 0, metadata !193, null}
!379 = metadata !{i32 380, i32 0, metadata !193, null}
!380 = metadata !{i32 382, i32 0, metadata !193, null}
!381 = metadata !{i32 383, i32 0, metadata !193, null}
!382 = metadata !{i32 384, i32 0, metadata !193, null}
!383 = metadata !{i32 385, i32 0, metadata !193, null}
