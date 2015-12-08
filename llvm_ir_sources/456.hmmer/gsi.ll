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
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 58, i64 16) #6
  %0 = bitcast i8* %call to %struct.gsi_s*
  %call1 = call %struct._IO_FILE* @fopen(i8* %gsifile, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #6
  %gsifp = bitcast i8* %call to %struct._IO_FILE**
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %gsifp, align 8, !tbaa !0
  %cmp = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @free(i8* %call) #6
  store i32 4, i32* @squid_errno, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8]* %magic, i64 0, i64 0
  %call3 = call i64 @fread(i8* %arraydecay, i64 1, i64 32, %struct._IO_FILE* %call1) #6
  %tobool = icmp eq i64 %call3, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @free(i8* %call) #6
  store i32 2, i32* @squid_errno, align 4, !tbaa !3
  br label %return

if.end5:                                          ; preds = %if.end
  %call7 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #7
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @free(i8* %call) #6
  store i32 5, i32* @squid_errno, align 4, !tbaa !3
  br label %return

if.end10:                                         ; preds = %if.end5
  %nfiles = getelementptr inbounds i8* %call, i64 8
  %1 = bitcast i8* %nfiles to i16*
  %2 = load %struct._IO_FILE** %gsifp, align 8, !tbaa !0
  %call12 = call i64 @fread(i8* %nfiles, i64 2, i64 1, %struct._IO_FILE* %2) #6
  %tobool13 = icmp eq i64 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @free(i8* %call) #6
  store i32 2, i32* @squid_errno, align 4, !tbaa !3
  br label %return

if.end15:                                         ; preds = %if.end10
  %recnum = getelementptr inbounds i8* %call, i64 12
  %3 = bitcast i8* %recnum to i32*
  %4 = load %struct._IO_FILE** %gsifp, align 8, !tbaa !0
  %call17 = call i64 @fread(i8* %recnum, i64 4, i64 1, %struct._IO_FILE* %4) #6
  %tobool18 = icmp eq i64 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @free(i8* %call) #6
  store i32 2, i32* @squid_errno, align 4, !tbaa !3
  br label %return

if.end20:                                         ; preds = %if.end15
  %5 = load i16* %1, align 2, !tbaa !4
  %call22 = call zeroext i16 @sre_ntoh16(i16 zeroext %5) #6
  store i16 %call22, i16* %1, align 2, !tbaa !4
  %6 = load i32* %3, align 4, !tbaa !3
  %call25 = call i32 @sre_ntoh32(i32 %6) #6
  store i32 %call25, i32* %3, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end20, %if.then19, %if.then14, %if.then9, %if.then4, %if.then
  %retval.0 = phi %struct.gsi_s* [ null, %if.then ], [ null, %if.then9 ], [ %0, %if.end20 ], [ null, %if.then19 ], [ null, %if.then14 ], [ null, %if.then4 ]
  ret %struct.gsi_s* %retval.0
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare zeroext i16 @sre_ntoh16(i16 zeroext) #1

; Function Attrs: optsize
declare i32 @sre_ntoh32(i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @GSIGetRecord(%struct.gsi_s* nocapture %gsi, i8* %f1, i16* %f2, i32* %f3) #0 {
entry:
  %cmp = icmp eq i8* %f1, null
  %gsifp = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 0
  %0 = load %struct._IO_FILE** %gsifp, align 8, !tbaa !0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @fseek(%struct._IO_FILE* %0, i64 32, i32 1) #6
  br label %if.end4

if.else:                                          ; preds = %entry
  %call2 = tail call i64 @fread(i8* %f1, i64 32, i64 1, %struct._IO_FILE* %0) #6
  %tobool = icmp eq i64 %call2, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.else
  store i32 2, i32* @squid_errno, align 4, !tbaa !3
  br label %return

if.end4:                                          ; preds = %if.else, %if.then
  %cmp5 = icmp eq i16* %f2, null
  br i1 %cmp5, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.end4
  %1 = load %struct._IO_FILE** %gsifp, align 8, !tbaa !0
  %call8 = tail call i32 @fseek(%struct._IO_FILE* %1, i64 2, i32 1) #6
  br label %if.end15

if.else9:                                         ; preds = %if.end4
  %2 = bitcast i16* %f2 to i8*
  %3 = load %struct._IO_FILE** %gsifp, align 8, !tbaa !0
  %call11 = tail call i64 @fread(i8* %2, i64 2, i64 1, %struct._IO_FILE* %3) #6
  %tobool12 = icmp eq i64 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.else9
  store i32 2, i32* @squid_errno, align 4, !tbaa !3
  br label %return

if.end15:                                         ; preds = %if.else9, %if.then6
  %cmp16 = icmp eq i32* %f3, null
  br i1 %cmp16, label %if.then17, label %if.else20

if.then17:                                        ; preds = %if.end15
  %4 = load %struct._IO_FILE** %gsifp, align 8, !tbaa !0
  %call19 = tail call i32 @fseek(%struct._IO_FILE* %4, i64 4, i32 1) #6
  br label %if.end26

if.else20:                                        ; preds = %if.end15
  %5 = bitcast i32* %f3 to i8*
  %6 = load %struct._IO_FILE** %gsifp, align 8, !tbaa !0
  %call22 = tail call i64 @fread(i8* %5, i64 4, i64 1, %struct._IO_FILE* %6) #6
  %tobool23 = icmp eq i64 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.else20
  store i32 2, i32* @squid_errno, align 4, !tbaa !3
  br label %return

if.end26:                                         ; preds = %if.else20, %if.then17
  br i1 %cmp5, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end26
  %7 = load i16* %f2, align 2, !tbaa !4
  %call29 = tail call zeroext i16 @sre_ntoh16(i16 zeroext %7) #6
  store i16 %call29, i16* %f2, align 2, !tbaa !4
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %if.then28
  br i1 %cmp16, label %return, label %if.then32

if.then32:                                        ; preds = %if.end30
  %8 = load i32* %f3, align 4, !tbaa !3
  %call33 = tail call i32 @sre_ntoh32(i32 %8) #6
  store i32 %call33, i32* %f3, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.then32, %if.end30, %if.then24, %if.then13, %if.then3
  %retval.0 = phi i32 [ 0, %if.then24 ], [ 0, %if.then13 ], [ 0, %if.then3 ], [ 1, %if.end30 ], [ 1, %if.then32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @GSIGetOffset(%struct.gsi_s* nocapture %gsi, i8* nocapture %key, i8* %ret_seqfile, i32* nocapture %ret_format, i64* nocapture %ret_offset) #0 {
entry:
  %name = alloca [33 x i8], align 16
  %offset = alloca i32, align 4
  %filenum = alloca i16, align 2
  %fmt = alloca i32, align 4
  %0 = getelementptr inbounds [33 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start(i64 33, i8* %0) #4
  %arrayidx = getelementptr inbounds [33 x i8]* %name, i64 0, i64 32
  store i8 0, i8* %arrayidx, align 16, !tbaa !1
  %nfiles = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 1
  %1 = load i16* %nfiles, align 2, !tbaa !4
  %conv = zext i16 %1 to i32
  %add = add nsw i32 %conv, 1
  %recnum = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 2
  %2 = load i32* %recnum, align 4, !tbaa !3
  %add3 = add i32 %conv, %2
  %add4 = add i32 %add, %add3
  %div = lshr i32 %add4, 1
  %gsifp = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 0
  %3 = load %struct._IO_FILE** %gsifp, align 8, !tbaa !0
  %mul = mul i32 %div, 38
  %conv5 = zext i32 %mul to i64
  %call = call i32 @fseek(%struct._IO_FILE* %3, i64 %conv5, i32 0) #6
  %call656 = call i32 @GSIGetRecord(%struct.gsi_s* %gsi, i8* %0, i16* %filenum, i32* %offset) #8
  %tobool57 = icmp eq i32 %call656, 0
  br i1 %tobool57, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.else14
  %mid.060 = phi i32 [ %div27, %if.else14 ], [ %div, %entry ]
  %right.059 = phi i32 [ %right.1, %if.else14 ], [ %add3, %entry ]
  %left.058 = phi i32 [ %left.1, %if.else14 ], [ %add, %entry ]
  %call8 = call i32 @strcmp(i8* %0, i8* %key) #7
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %while.end, label %if.else

if.else:                                          ; preds = %while.body
  %cmp11 = icmp ult i32 %left.058, %right.059
  br i1 %cmp11, label %if.else14, label %cleanup

if.else14:                                        ; preds = %if.else
  %cmp15 = icmp slt i32 %call8, 0
  %add18 = add i32 %mid.060, 1
  %sub = add i32 %mid.060, -1
  %left.1 = select i1 %cmp15, i32 %add18, i32 %left.058
  %right.1 = select i1 %cmp15, i32 %right.059, i32 %sub
  %add26 = add i32 %left.1, %right.1
  %div27 = lshr i32 %add26, 1
  %4 = load %struct._IO_FILE** %gsifp, align 8, !tbaa !0
  %mul29 = mul i32 %div27, 38
  %conv30 = zext i32 %mul29 to i64
  %call31 = call i32 @fseek(%struct._IO_FILE* %4, i64 %conv30, i32 0) #6
  %call6 = call i32 @GSIGetRecord(%struct.gsi_s* %gsi, i8* %0, i16* %filenum, i32* %offset) #8
  %tobool = icmp eq i32 %call6, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %if.else14, %while.body, %entry
  %5 = load %struct._IO_FILE** %gsifp, align 8, !tbaa !0
  %6 = load i16* %filenum, align 2, !tbaa !4
  %conv33 = zext i16 %6 to i64
  %mul34 = mul i64 %conv33, 38
  %call36 = call i32 @fseek(%struct._IO_FILE* %5, i64 %mul34, i32 0) #6
  %call37 = call i32 @GSIGetRecord(%struct.gsi_s* %gsi, i8* %ret_seqfile, i16* null, i32* %fmt) #8
  %7 = load i32* %fmt, align 4, !tbaa !3
  store i32 %7, i32* %ret_format, align 4, !tbaa !3
  %8 = load i32* %offset, align 4, !tbaa !3
  %conv38 = zext i32 %8 to i64
  store i64 %conv38, i64* %ret_offset, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %while.end
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %if.else ]
  call void @llvm.lifetime.end(i64 33, i8* %0) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @GSIClose(%struct.gsi_s* nocapture %gsi) #0 {
entry:
  %gsifp = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 0
  %0 = load %struct._IO_FILE** %gsifp, align 8, !tbaa !0
  %call = tail call i32 @fclose(%struct._IO_FILE* %0) #6
  %1 = bitcast %struct.gsi_s* %gsi to i8*
  tail call void @free(i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define %struct.gsiindex_s* @GSIAllocIndex() #0 {
entry:
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 200, i64 40) #6
  %0 = bitcast i8* %call to %struct.gsiindex_s*
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 201, i64 80) #6
  %1 = bitcast i8* %call1 to i8**
  %filenames = bitcast i8* %call to i8***
  store i8** %1, i8*** %filenames, align 8, !tbaa !0
  %call2 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 202, i64 40) #6
  %2 = bitcast i8* %call2 to i32*
  %fmt = getelementptr inbounds i8* %call, i64 8
  %3 = bitcast i8* %fmt to i32**
  store i32* %2, i32** %3, align 8, !tbaa !0
  %call3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 203, i64 4000) #6
  %4 = bitcast i8* %call3 to %struct.gsikey_s*
  %elems = getelementptr inbounds i8* %call, i64 24
  %5 = bitcast i8* %elems to %struct.gsikey_s**
  store %struct.gsikey_s* %4, %struct.gsikey_s** %5, align 8, !tbaa !0
  %nfiles = getelementptr inbounds i8* %call, i64 16
  %6 = bitcast i8* %nfiles to i16*
  store i16 0, i16* %6, align 2, !tbaa !4
  %nkeys = getelementptr inbounds i8* %call, i64 32
  %7 = bitcast i8* %nkeys to i32*
  store i32 0, i32* %7, align 4, !tbaa !3
  ret %struct.gsiindex_s* %0
}

; Function Attrs: nounwind optsize uwtable
define void @GSIFreeIndex(%struct.gsiindex_s* nocapture %g) #0 {
entry:
  %nfiles = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 2
  %0 = load i16* %nfiles, align 2, !tbaa !4
  %cmp11 = icmp eq i16 %0, 0
  %filenames2.pre = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 0
  br i1 %cmp11, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %1 = load i8*** %filenames2.pre, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv
  %2 = load i8** %arrayidx, align 8, !tbaa !0
  tail call void @free(i8* %2) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = load i16* %nfiles, align 2, !tbaa !4
  %conv = zext i16 %3 to i32
  %4 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %4, %conv
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %entry, %for.body
  %5 = load i8*** %filenames2.pre, align 8, !tbaa !0
  %6 = bitcast i8** %5 to i8*
  tail call void @free(i8* %6) #6
  %fmt = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 1
  %7 = load i32** %fmt, align 8, !tbaa !0
  %8 = bitcast i32* %7 to i8*
  tail call void @free(i8* %8) #6
  %elems = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 3
  %9 = load %struct.gsikey_s** %elems, align 8, !tbaa !0
  %10 = getelementptr inbounds %struct.gsikey_s* %9, i64 0, i32 0, i64 0
  tail call void @free(i8* %10) #6
  %11 = bitcast %struct.gsiindex_s* %g to i8*
  tail call void @free(i8* %11) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @GSIAddFileToIndex(%struct.gsiindex_s* nocapture %g, i8* %filename, i32 %fmt) #0 {
entry:
  %call = tail call i64 @strlen(i8* %filename) #7
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = tail call i8* @sre_strdup(i8* %filename, i32 %conv) #6
  %nfiles = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 2
  %0 = load i16* %nfiles, align 2, !tbaa !4
  %idxprom = zext i16 %0 to i64
  %filenames = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 0
  %1 = load i8*** %filenames, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %1, i64 %idxprom
  store i8* %call2, i8** %arrayidx, align 8, !tbaa !0
  %fmt5 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 1
  %2 = load i32** %fmt5, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds i32* %2, i64 %idxprom
  store i32 %fmt, i32* %arrayidx6, align 4, !tbaa !3
  %inc = add i16 %0, 1
  store i16 %inc, i16* %nfiles, align 2, !tbaa !4
  %3 = urem i16 %inc, 10
  %cmp10 = icmp eq i16 %3, 0
  br i1 %cmp10, label %if.then12, label %if.end27

if.then12:                                        ; preds = %if.end
  %conv9 = zext i16 %inc to i64
  %4 = load i8*** %filenames, align 8, !tbaa !0
  %5 = bitcast i8** %4 to i8*
  %add = shl nuw nsw i64 %conv9, 3
  %mul = add i64 %add, 80
  %call17 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 229, i8* %5, i64 %mul) #6
  %6 = bitcast i8* %call17 to i8**
  store i8** %6, i8*** %filenames, align 8, !tbaa !0
  %7 = load i32** %fmt5, align 8, !tbaa !0
  %8 = bitcast i32* %7 to i8*
  %9 = load i16* %nfiles, align 2, !tbaa !4
  %conv21 = zext i16 %9 to i64
  %add22 = shl nuw nsw i64 %conv21, 2
  %mul24 = add i64 %add22, 40
  %call25 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 230, i8* %8, i64 %mul24) #6
  %10 = bitcast i8* %call25 to i32*
  store i32* %10, i32** %fmt5, align 8, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %if.then12, %if.end
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #1

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @GSIAddKeyToIndex(%struct.gsiindex_s* nocapture %g, i8* nocapture %key, i32 %filenum, i64 %offset) #0 {
entry:
  %call = tail call i64 @strlen(i8* %key) #7
  %cmp = icmp ugt i64 %call, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str4, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %filenum, 65535
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str5, i64 0, i64 0)) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %cmp4 = icmp sgt i64 %offset, 4294967295
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str6, i64 0, i64 0)) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %nkeys = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 4
  %0 = load i32* %nkeys, align 4, !tbaa !3
  %idxprom = sext i32 %0 to i64
  %elems = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 3
  %1 = load %struct.gsikey_s** %elems, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.gsikey_s* %1, i64 %idxprom, i32 0, i64 0
  %call8 = tail call i8* @strncpy(i8* %arraydecay, i8* %key, i64 31) #6
  %2 = load i32* %nkeys, align 4, !tbaa !3
  %idxprom10 = sext i32 %2 to i64
  %3 = load %struct.gsikey_s** %elems, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds %struct.gsikey_s* %3, i64 %idxprom10, i32 0, i64 31
  store i8 0, i8* %arrayidx14, align 1, !tbaa !1
  %conv = trunc i32 %filenum to i16
  %4 = load i32* %nkeys, align 4, !tbaa !3
  %idxprom16 = sext i32 %4 to i64
  %5 = load %struct.gsikey_s** %elems, align 8, !tbaa !0
  %filenum19 = getelementptr inbounds %struct.gsikey_s* %5, i64 %idxprom16, i32 1
  store i16 %conv, i16* %filenum19, align 2, !tbaa !4
  %conv20 = trunc i64 %offset to i32
  %offset25 = getelementptr inbounds %struct.gsikey_s* %5, i64 %idxprom16, i32 2
  store i32 %conv20, i32* %offset25, align 4, !tbaa !3
  %6 = load i32* %nkeys, align 4, !tbaa !3
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %nkeys, align 4, !tbaa !3
  %rem = srem i32 %inc, 100
  %cmp28 = icmp eq i32 %rem, 0
  br i1 %cmp28, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.end6
  %7 = getelementptr inbounds %struct.gsikey_s* %5, i64 0, i32 0, i64 0
  %add = add nsw i32 %6, 101
  %conv33 = sext i32 %add to i64
  %mul = mul i64 %conv33, 40
  %call34 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 247, i8* %7, i64 %mul) #6
  %8 = bitcast i8* %call34 to %struct.gsikey_s*
  store %struct.gsikey_s* %8, %struct.gsikey_s** %elems, align 8, !tbaa !0
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end6
  ret void
}

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @GSISortIndex(%struct.gsiindex_s* nocapture %g) #0 {
entry:
  %elems = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 3
  %0 = load %struct.gsikey_s** %elems, align 8, !tbaa !0
  %1 = getelementptr inbounds %struct.gsikey_s* %0, i64 0, i32 0, i64 0
  %nkeys = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 4
  %2 = load i32* %nkeys, align 4, !tbaa !3
  %call = tail call i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)* bitcast (i32 (...)* @specqsort to i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)*)(i8* %1, i32 %2, i64 40, i32 (i8*, i8*)* @gsi_keysorter) #6
  ret void
}

; Function Attrs: optsize
declare i32 @specqsort(...) #1

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @gsi_keysorter(i8* nocapture %k1, i8* nocapture %k2) #5 {
entry:
  %call = tail call i32 @strcmp(i8* %k1, i8* %k2) #7
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define void @GSIWriteIndex(%struct._IO_FILE* nocapture %fp, %struct.gsiindex_s* nocapture %g) #0 {
entry:
  %nfiles = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 2
  %nkeys = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 4
  %0 = load i16* %nfiles, align 2, !tbaa !4
  %conv7 = zext i16 %0 to i32
  %1 = load i32* %nkeys, align 4, !tbaa !3
  %conv9 = sext i32 %1 to i64
  tail call void @GSIWriteHeader(%struct._IO_FILE* %fp, i32 %conv7, i64 %conv9) #8
  %2 = load i16* %nfiles, align 2, !tbaa !4
  %cmp1259 = icmp eq i16 %2, 0
  br i1 %cmp1259, label %for.cond16.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %filenames = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 0
  %fmt = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 1
  br label %for.body

for.cond16.preheader:                             ; preds = %for.body, %entry
  %3 = load i32* %nkeys, align 4, !tbaa !3
  %cmp1856 = icmp eq i32 %3, 0
  br i1 %cmp1856, label %for.end34, label %for.body20.lr.ph

for.body20.lr.ph:                                 ; preds = %for.cond16.preheader
  %elems = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 3
  br label %for.body20

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.060 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %idxprom = zext i32 %i.060 to i64
  %4 = load i8*** %filenames, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %4, i64 %idxprom
  %5 = load i8** %arrayidx, align 8, !tbaa !0
  %add = add i32 %i.060, 1
  %6 = load i32** %fmt, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32* %6, i64 %idxprom
  %7 = load i32* %arrayidx15, align 4, !tbaa !3
  %call = tail call i32 @GSIWriteFileRecord(%struct._IO_FILE* %fp, i8* %5, i32 %add, i32 %7) #8
  %8 = load i16* %nfiles, align 2, !tbaa !4
  %conv11 = zext i16 %8 to i32
  %cmp12 = icmp ult i32 %add, %conv11
  br i1 %cmp12, label %for.body, label %for.cond16.preheader

for.body20:                                       ; preds = %for.body20.lr.ph, %for.body20
  %i.157 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc33, %for.body20 ]
  %idxprom21 = zext i32 %i.157 to i64
  %9 = load %struct.gsikey_s** %elems, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.gsikey_s* %9, i64 %idxprom21, i32 0, i64 0
  %filenum = getelementptr inbounds %struct.gsikey_s* %9, i64 %idxprom21, i32 1
  %10 = load i16* %filenum, align 2, !tbaa !4
  %conv26 = zext i16 %10 to i32
  %offset = getelementptr inbounds %struct.gsikey_s* %9, i64 %idxprom21, i32 2
  %11 = load i32* %offset, align 4, !tbaa !3
  %conv30 = zext i32 %11 to i64
  %call31 = tail call i32 @GSIWriteKeyRecord(%struct._IO_FILE* %fp, i8* %arraydecay, i32 %conv26, i64 %conv30) #8
  %inc33 = add i32 %i.157, 1
  %12 = load i32* %nkeys, align 4, !tbaa !3
  %cmp18 = icmp ult i32 %inc33, %12
  br i1 %cmp18, label %for.body20, label %for.end34

for.end34:                                        ; preds = %for.body20, %for.cond16.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @GSIWriteHeader(%struct._IO_FILE* nocapture %fp, i32 %nfiles, i64 %nkeys) #0 {
entry:
  %key = alloca [32 x i8], align 16
  %f1 = alloca i16, align 2
  %f2 = alloca i32, align 4
  %cmp = icmp sgt i32 %nfiles, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([25 x i8]* @.str9, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i64 %nkeys, 4294967295
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([24 x i8]* @.str10, i64 0, i64 0)) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %conv = trunc i32 %nfiles to i16
  %conv4 = trunc i64 %nkeys to i32
  %call = call zeroext i16 @sre_hton16(i16 zeroext %conv) #6
  store i16 %call, i16* %f1, align 2, !tbaa !4
  %call5 = call i32 @sre_hton32(i32 %conv4) #6
  store i32 %call5, i32* %f2, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds [32 x i8]* %key, i64 0, i64 0
  %0 = bitcast [32 x i8]* %key to i32*
  store i32 4805447, i32* %0, align 16
  %call8 = call i64 @fwrite(i8* %arraydecay, i64 1, i64 32, %struct._IO_FILE* %fp) #6
  %cmp9 = icmp ult i64 %call8, 32
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end3
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 314) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end3
  %1 = bitcast i16* %f1 to i8*
  %call13 = call i64 @fwrite(i8* %1, i64 2, i64 1, %struct._IO_FILE* %fp) #6
  %cmp14 = icmp eq i64 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 315) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12
  %2 = bitcast i32* %f2 to i8*
  %call18 = call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %cmp19 = icmp eq i64 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 316) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @GSIWriteFileRecord(%struct._IO_FILE* nocapture %fp, i8* nocapture %fname, i32 %idx, i32 %fmt) #0 {
entry:
  %f1 = alloca i16, align 2
  %f2 = alloca i32, align 4
  %call = call i64 @strlen(i8* %fname) #7
  %cmp = icmp ugt i64 %call, 31
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %idx, 65535
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([29 x i8]* @.str11, i64 0, i64 0)) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  %conv = trunc i32 %idx to i16
  %call7 = call zeroext i16 @sre_hton16(i16 zeroext %conv) #6
  store i16 %call7, i16* %f1, align 2, !tbaa !4
  %call8 = call i32 @sre_hton32(i32 %fmt) #6
  store i32 %call8, i32* %f2, align 4, !tbaa !3
  %call9 = call i64 @fwrite(i8* %fname, i64 1, i64 32, %struct._IO_FILE* %fp) #6
  %cmp10 = icmp ult i64 %call9, 32
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end6
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 347) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end6
  %0 = bitcast i16* %f1 to i8*
  %call14 = call i64 @fwrite(i8* %0, i64 2, i64 1, %struct._IO_FILE* %fp) #6
  %cmp15 = icmp eq i64 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 348) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13
  %1 = bitcast i32* %f2 to i8*
  %call19 = call i64 @fwrite(i8* %1, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %cmp20 = icmp eq i64 %call19, 0
  br i1 %cmp20, label %if.then22, label %return

if.then22:                                        ; preds = %if.end18
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 349) #6
  br label %return

return:                                           ; preds = %if.end18, %if.then22, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then22 ], [ 1, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @GSIWriteKeyRecord(%struct._IO_FILE* nocapture %fp, i8* nocapture %key, i32 %fileidx, i64 %offset) #0 {
entry:
  %f1 = alloca i16, align 2
  %f2 = alloca i32, align 4
  %call = call i64 @strlen(i8* %key) #7
  %cmp = icmp ugt i64 %call, 31
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %fileidx, 65535
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([29 x i8]* @.str11, i64 0, i64 0)) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %cmp4 = icmp sgt i64 %offset, 4294967295
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([25 x i8]* @.str13, i64 0, i64 0)) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %conv = trunc i32 %fileidx to i16
  %conv7 = trunc i64 %offset to i32
  %call8 = call zeroext i16 @sre_hton16(i16 zeroext %conv) #6
  store i16 %call8, i16* %f1, align 2, !tbaa !4
  %call9 = call i32 @sre_hton32(i32 %conv7) #6
  store i32 %call9, i32* %f2, align 4, !tbaa !3
  %call10 = call i64 @fwrite(i8* %key, i64 1, i64 32, %struct._IO_FILE* %fp) #6
  %cmp11 = icmp ult i64 %call10, 32
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end6
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 382) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end6
  %0 = bitcast i16* %f1 to i8*
  %call15 = call i64 @fwrite(i8* %0, i64 2, i64 1, %struct._IO_FILE* %fp) #6
  %cmp16 = icmp eq i64 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 383) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14
  %1 = bitcast i32* %f2 to i8*
  %call20 = call i64 @fwrite(i8* %1, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %cmp21 = icmp eq i64 %call20, 0
  br i1 %cmp21, label %if.then23, label %return

if.then23:                                        ; preds = %if.end19
  call void @Panic(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 384) #6
  br label %return

return:                                           ; preds = %if.end19, %if.then23, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then23 ], [ 1, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare zeroext i16 @sre_hton16(i16 zeroext) #1

; Function Attrs: optsize
declare i32 @sre_hton32(i32) #1

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @Panic(i8*, i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{metadata !"long", metadata !1}
