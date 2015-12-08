; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/bio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"s3\0A\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"version %s\0A\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"endhdr\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/bio.c\00", align 1
@.str4 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str5 = private unnamed_addr constant [24 x i8] c"Premature EOF, line %d\0A\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"%s%n\00", align 1
@.str7 = private unnamed_addr constant [30 x i8] c"Header format error, line %d\0A\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"endhdr\00", align 1
@.str9 = private unnamed_addr constant [59 x i8] c"Max arg-value limit(%d) exceeded; increase BIO_HDRARG_MAX\0A\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str12 = private unnamed_addr constant [19 x i8] c"swap_check failed\0A\00", align 1
@.str13 = private unnamed_addr constant [26 x i8] c"Unsupported elemsize: %d\0A\00", align 1
@.str14 = private unnamed_addr constant [25 x i8] c"fread(arraysize) failed\0A\00", align 1
@.str15 = private unnamed_addr constant [19 x i8] c"Bad arraysize: %d\0A\00", align 1
@.str16 = private unnamed_addr constant [25 x i8] c"fread(arraydata) failed\0A\00", align 1
@.str17 = private unnamed_addr constant [22 x i8] c"fread(chksum) failed\0A\00", align 1
@.str18 = private unnamed_addr constant [51 x i8] c"Checksum error; file-checksum %08x, computed %08x\0A\00", align 1
@.str19 = private unnamed_addr constant [39 x i8] c"Unsupported elemsize for checksum: %d\0A\00", align 1
@.str20 = private unnamed_addr constant [43 x i8] c"Unsupported elemsize for byteswapping: %d\0A\00", align 1
@.str21 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str22 = private unnamed_addr constant [33 x i8] c"Cannot read BYTEORDER MAGIC NO.\0A\00", align 1
@.str23 = private unnamed_addr constant [46 x i8] c"Bad BYTEORDER MAGIC NO: %08x, expecting %08x\0A\00", align 1
@.str24 = private unnamed_addr constant [15 x i8] c"*end_comment*\0A\00", align 1
@.str25 = private unnamed_addr constant [19 x i8] c"Missing %s marker\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @bio_hdrarg_free(i8** %argname, i8** %argval) #0 {
entry:
  %0 = load i8** %argname, align 8, !tbaa !0
  %tobool11 = icmp eq i8* %0, null
  br i1 %tobool11, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %1 = phi i8* [ %3, %for.body ], [ %0, %entry ]
  tail call void @ckd_free(i8* %1) #6
  %arrayidx4 = getelementptr inbounds i8** %argval, i64 %indvars.iv
  %2 = load i8** %arrayidx4, align 8, !tbaa !0
  tail call void @ckd_free(i8* %2) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i8** %argname, i64 %indvars.iv.next
  %3 = load i8** %arrayidx, align 8, !tbaa !0
  %tobool = icmp eq i8* %3, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %4 = bitcast i8** %argname to i8*
  tail call void @ckd_free(i8* %4) #6
  %5 = bitcast i8** %argval to i8*
  tail call void @ckd_free(i8* %5) #6
  ret void
}

; Function Attrs: optsize
declare void @ckd_free(i8*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @bio_writehdr_version(%struct._IO_FILE* nocapture %fp, i8* %version) #0 {
entry:
  %b = alloca i32, align 4
  %0 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp) #3
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* %version) #6
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %fp) #3
  %call3 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  store i32 287454020, i32* %b, align 4, !tbaa !3
  %2 = bitcast i32* %b to i8*
  %call4 = call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %call5 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @bio_readhdr(%struct._IO_FILE* nocapture %fp, i8*** nocapture %argname, i8*** nocapture %argval, i32* nocapture %swap) #0 {
entry:
  %magic.i = alloca i32, align 4
  %iline.i = alloca [16384 x i8], align 16
  %line = alloca [16384 x i8], align 16
  %word = alloca [4096 x i8], align 16
  %l = alloca i32, align 4
  %0 = getelementptr inbounds [16384 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16384, i8* %0) #3
  %1 = getelementptr inbounds [4096 x i8]* %word, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #3
  %call = call i8* @__ckd_calloc__(i64 33, i64 8, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i32 137) #6
  %2 = bitcast i8* %call to i8**
  store i8** %2, i8*** %argname, align 8, !tbaa !0
  %call1 = call i8* @__ckd_calloc__(i64 32, i64 8, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i32 138) #6
  %3 = bitcast i8* %call1 to i8**
  store i8** %3, i8*** %argval, align 8, !tbaa !0
  %call2 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %fp) #6
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 142, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([24 x i8]* @.str5, i64 0, i64 0), i32 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = bitcast [16384 x i8]* %line to i32*
  %5 = load i32* %4, align 16
  %6 = and i32 %5, 16777215
  %7 = icmp eq i32 %6, 668531
  br i1 %7, label %for.cond.outer, label %if.else

for.cond.outer:                                   ; preds = %if.end, %if.end54
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end54 ], [ 0, %if.end ]
  %lineno.0.ph = phi i32 [ %inc21, %if.end54 ], [ 1, %if.end ]
  %i.0.ph = phi i32 [ %inc59, %if.end54 ], [ 0, %if.end ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.end34
  %lineno.0 = phi i32 [ %inc21, %if.end34 ], [ %lineno.0.ph, %for.cond.outer ]
  %call16 = call i8* @fgets(i8* %0, i32 16384, %struct._IO_FILE* %fp) #6
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.cond
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 149, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([24 x i8]* @.str5, i64 0, i64 0), i32 %lineno.0) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %for.cond
  %inc21 = add nsw i32 %lineno.0, 1
  %call24 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* %1, i32* %l) #6
  %cmp25 = icmp eq i32 %call24, 1
  br i1 %cmp25, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end20
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 153, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([30 x i8]* @.str7, i64 0, i64 0), i32 %inc21) #6
  br label %if.end28

if.end28:                                         ; preds = %if.end20, %if.then27
  %call30 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #7
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.end72, label %if.end34

if.end34:                                         ; preds = %if.end28
  %8 = load i8* %1, align 16, !tbaa !1
  %cmp37 = icmp eq i8 %8, 35
  br i1 %cmp37, label %for.cond, label %if.end40

if.end40:                                         ; preds = %if.end34
  %9 = trunc i64 %indvars.iv to i32
  %cmp41 = icmp sgt i32 %9, 31
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 160, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([59 x i8]* @.str9, i64 0, i64 0), i32 32) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40
  %call46 = call i8* @__ckd_salloc__(i8* %1, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i32 163) #6
  %10 = load i8*** %argname, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds i8** %10, i64 %indvars.iv
  store i8* %call46, i8** %arrayidx47, align 8, !tbaa !0
  %11 = load i32* %l, align 4, !tbaa !3
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds [16384 x i8]* %line, i64 0, i64 %idx.ext
  %call50 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i8* %1) #6
  %cmp51 = icmp eq i32 %call50, 1
  br i1 %cmp51, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end44
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 165, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([30 x i8]* @.str7, i64 0, i64 0), i32 %inc21) #6
  br label %if.end54

if.end54:                                         ; preds = %if.end44, %if.then53
  %call56 = call i8* @__ckd_salloc__(i8* %1, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i32 166) #6
  %12 = load i8*** %argval, align 8, !tbaa !0
  %arrayidx58 = getelementptr inbounds i8** %12, i64 %indvars.iv
  store i8* %call56, i8** %arrayidx58, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc59 = add nsw i32 %i.0.ph, 1
  br label %for.cond.outer

if.else:                                          ; preds = %if.end
  %call62 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i8* %1) #6
  %cmp63 = icmp eq i32 %call62, 1
  br i1 %cmp63, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.else
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 172, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([30 x i8]* @.str7, i64 0, i64 0), i32 1) #6
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then65
  %call67 = call i8* @__ckd_salloc__(i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i32 174) #6
  %13 = load i8*** %argname, align 8, !tbaa !0
  store i8* %call67, i8** %13, align 8, !tbaa !0
  %call70 = call i8* @__ckd_salloc__(i8* %1, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i32 175) #6
  %14 = load i8*** %argval, align 8, !tbaa !0
  store i8* %call70, i8** %14, align 8, !tbaa !0
  %15 = getelementptr inbounds [16384 x i8]* %iline.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16384, i8* %15) #3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.end66
  %call.i = call i8* @fgets(i8* %15, i32 16384, %struct._IO_FILE* %fp) #6
  %cmp.i = icmp eq i8* %call.i, null
  br i1 %cmp.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %call2.i = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([15 x i8]* @.str24, i64 0, i64 0)) #7
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end72, label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 71, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str24, i64 0, i64 0)) #6
  br label %if.end72

if.end72:                                         ; preds = %while.body.i, %if.end28, %while.end.i
  %i.1 = phi i32 [ 1, %while.end.i ], [ %i.0.ph, %if.end28 ], [ 1, %while.body.i ]
  %idxprom73 = sext i32 %i.1 to i64
  %16 = load i8*** %argname, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds i8** %16, i64 %idxprom73
  store i8* null, i8** %arrayidx74, align 8, !tbaa !0
  %17 = bitcast i32* %magic.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #3
  %call.i98 = call i64 @fread(i8* %17, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %cmp.i99 = icmp eq i64 %call.i98, 1
  br i1 %cmp.i99, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end72
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 80, i8* getelementptr inbounds ([6 x i8]* @.str21, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([33 x i8]* @.str22, i64 0, i64 0)) #6
  br label %if.then78

if.end.i:                                         ; preds = %if.end72
  %18 = load i32* %magic.i, align 4, !tbaa !3
  %cmp1.i = icmp eq i32 %18, 287454020
  br i1 %cmp1.i, label %swap_check.exit.thread102, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %or9.i = call i32 @llvm.bswap.i32(i32 %18) #3
  store i32 %or9.i, i32* %magic.i, align 4, !tbaa !3
  %cmp10.i = icmp eq i32 %18, 1144201745
  br i1 %cmp10.i, label %swap_check.exit.thread102, label %if.end12.i

if.end12.i:                                       ; preds = %if.then2.i
  store i32 %18, i32* %magic.i, align 4, !tbaa !3
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 92, i8* getelementptr inbounds ([6 x i8]* @.str21, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([46 x i8]* @.str23, i64 0, i64 0), i32 %18, i32 287454020) #6
  br label %if.then78

swap_check.exit.thread102:                        ; preds = %if.then2.i, %if.end.i
  %retval.0.i.ph = phi i32 [ 1, %if.then2.i ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end(i64 4, i8* %17) #3
  store i32 %retval.0.i.ph, i32* %swap, align 4, !tbaa !3
  br label %if.end79

if.then78:                                        ; preds = %if.then.i, %if.end12.i
  call void @llvm.lifetime.end(i64 4, i8* %17) #3
  store i32 -1, i32* %swap, align 4, !tbaa !3
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 183, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([19 x i8]* @.str12, i64 0, i64 0)) #6
  br label %if.end79

if.end79:                                         ; preds = %swap_check.exit.thread102, %if.then78
  call void @llvm.lifetime.end(i64 4096, i8* %1) #3
  call void @llvm.lifetime.end(i64 16384, i8* %0) #3
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @__ckd_salloc__(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @bio_fread(i8* nocapture %buf, i32 %el_sz, i32 %n_el, %struct._IO_FILE* nocapture %fp, i32 %swap, i32* %chksum) #0 {
entry:
  %conv = sext i32 %el_sz to i64
  %conv1 = sext i32 %n_el to i64
  %call = tail call i64 @fread(i8* %buf, i64 %conv, i64 %conv1, %struct._IO_FILE* %fp) #6
  %cmp = icmp eq i64 %call, %conv1
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %tobool = icmp eq i32 %swap, 0
  br i1 %tobool, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  switch i32 %el_sz, label %sw.default.i [
    i32 1, label %if.end5
    i32 2, label %sw.bb.i
    i32 4, label %sw.bb8.i
  ]

sw.bb.i:                                          ; preds = %if.then4
  %0 = bitcast i8* %buf to i16*
  %cmp58.i = icmp sgt i32 %n_el, 0
  br i1 %cmp58.i, label %for.body.i, label %if.end5

for.body.i:                                       ; preds = %sw.bb.i, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %sw.bb.i ]
  %add.ptr.i = getelementptr inbounds i16* %0, i64 %indvars.iv.i
  %1 = load i16* %add.ptr.i, align 2, !tbaa !4
  %or.i = tail call i16 @llvm.bswap.i16(i16 %1) #3
  store i16 %or.i, i16* %add.ptr.i, align 2, !tbaa !4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv34 = trunc i64 %indvars.iv.next.i to i32
  %exitcond35 = icmp eq i32 %lftr.wideiv34, %n_el
  br i1 %exitcond35, label %if.end5, label %for.body.i

sw.bb8.i:                                         ; preds = %if.then4
  %2 = bitcast i8* %buf to i32*
  %cmp1061.i = icmp sgt i32 %n_el, 0
  br i1 %cmp1061.i, label %for.body12.i, label %if.end5

for.body12.i:                                     ; preds = %sw.bb8.i, %for.body12.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %for.body12.i ], [ 0, %sw.bb8.i ]
  %add.ptr14.i = getelementptr inbounds i32* %2, i64 %indvars.iv63.i
  %3 = load i32* %add.ptr14.i, align 4, !tbaa !3
  %or31.i = tail call i32 @llvm.bswap.i32(i32 %3) #3
  store i32 %or31.i, i32* %add.ptr14.i, align 4, !tbaa !3
  %indvars.iv.next64.i = add i64 %indvars.iv63.i, 1
  %lftr.wideiv36 = trunc i64 %indvars.iv.next64.i to i32
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %n_el
  br i1 %exitcond37, label %if.end5, label %for.body12.i

sw.default.i:                                     ; preds = %if.then4
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 241, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([43 x i8]* @.str20, i64 0, i64 0), i32 %el_sz) #6
  br label %if.end5

if.end5:                                          ; preds = %for.body12.i, %for.body.i, %sw.default.i, %sw.bb8.i, %sw.bb.i, %if.then4, %if.end
  %tobool6 = icmp eq i32* %chksum, null
  br i1 %tobool6, label %return, label %if.then7

if.then7:                                         ; preds = %if.end5
  %4 = load i32* %chksum, align 4, !tbaa !3
  switch i32 %el_sz, label %sw.default.i26 [
    i32 1, label %for.cond.preheader.i
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb16.i
  ]

for.cond.preheader.i:                             ; preds = %if.then7
  %cmp49.i = icmp sgt i32 %n_el, 0
  br i1 %cmp49.i, label %for.body.i25, label %chksum_accum.exit

for.body.i25:                                     ; preds = %for.cond.preheader.i, %for.body.i25
  %indvars.iv.i20 = phi i64 [ %indvars.iv.next.i22, %for.body.i25 ], [ 0, %for.cond.preheader.i ]
  %sum.addr.051.i = phi i32 [ %add.i, %for.body.i25 ], [ %4, %for.cond.preheader.i ]
  %shl.i = shl i32 %sum.addr.051.i, 5
  %shr.i = lshr i32 %sum.addr.051.i, 27
  %or.i21 = or i32 %shl.i, %shr.i
  %arrayidx.i = getelementptr inbounds i8* %buf, i64 %indvars.iv.i20
  %5 = load i8* %arrayidx.i, align 1, !tbaa !1
  %conv.i = zext i8 %5 to i32
  %add.i = add i32 %conv.i, %or.i21
  %indvars.iv.next.i22 = add i64 %indvars.iv.i20, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i22 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n_el
  br i1 %exitcond, label %chksum_accum.exit, label %for.body.i25

sw.bb1.i:                                         ; preds = %if.then7
  %6 = bitcast i8* %buf to i16*
  %cmp353.i = icmp sgt i32 %n_el, 0
  br i1 %cmp353.i, label %for.body5.i, label %chksum_accum.exit

for.body5.i:                                      ; preds = %sw.bb1.i, %for.body5.i
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %for.body5.i ], [ 0, %sw.bb1.i ]
  %sum.addr.155.i = phi i32 [ %add12.i, %for.body5.i ], [ %4, %sw.bb1.i ]
  %shl6.i = shl i32 %sum.addr.155.i, 10
  %shr7.i = lshr i32 %sum.addr.155.i, 22
  %or8.i = or i32 %shl6.i, %shr7.i
  %arrayidx10.i = getelementptr inbounds i16* %6, i64 %indvars.iv62.i
  %7 = load i16* %arrayidx10.i, align 2, !tbaa !4
  %conv11.i = zext i16 %7 to i32
  %add12.i = add i32 %conv11.i, %or8.i
  %indvars.iv.next63.i = add i64 %indvars.iv62.i, 1
  %lftr.wideiv30 = trunc i64 %indvars.iv.next63.i to i32
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %n_el
  br i1 %exitcond31, label %chksum_accum.exit, label %for.body5.i

sw.bb16.i:                                        ; preds = %if.then7
  %8 = bitcast i8* %buf to i32*
  %cmp1858.i = icmp sgt i32 %n_el, 0
  br i1 %cmp1858.i, label %for.body20.i, label %chksum_accum.exit

for.body20.i:                                     ; preds = %sw.bb16.i, %for.body20.i
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %for.body20.i ], [ 0, %sw.bb16.i ]
  %sum.addr.260.i = phi i32 [ %add26.i, %for.body20.i ], [ %4, %sw.bb16.i ]
  %shl21.i = shl i32 %sum.addr.260.i, 20
  %shr22.i = lshr i32 %sum.addr.260.i, 12
  %or23.i = or i32 %shl21.i, %shr22.i
  %arrayidx25.i = getelementptr inbounds i32* %8, i64 %indvars.iv66.i
  %9 = load i32* %arrayidx25.i, align 4, !tbaa !3
  %add26.i = add i32 %or23.i, %9
  %indvars.iv.next67.i = add i64 %indvars.iv66.i, 1
  %lftr.wideiv32 = trunc i64 %indvars.iv.next67.i to i32
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %n_el
  br i1 %exitcond33, label %chksum_accum.exit, label %for.body20.i

sw.default.i26:                                   ; preds = %if.then7
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 213, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([39 x i8]* @.str19, i64 0, i64 0), i32 %el_sz) #6
  br label %chksum_accum.exit

chksum_accum.exit:                                ; preds = %for.body20.i, %for.body5.i, %for.body.i25, %for.cond.preheader.i, %sw.bb1.i, %sw.bb16.i, %sw.default.i26
  %sum.addr.3.i = phi i32 [ %4, %sw.default.i26 ], [ %4, %for.cond.preheader.i ], [ %4, %sw.bb1.i ], [ %4, %sw.bb16.i ], [ %add.i, %for.body.i25 ], [ %add12.i, %for.body5.i ], [ %add26.i, %for.body20.i ]
  store i32 %sum.addr.3.i, i32* %chksum, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %chksum_accum.exit, %if.end5, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %n_el, %if.end5 ], [ %n_el, %chksum_accum.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @bio_fread_1d(i8** nocapture %buf, i32 %el_sz, i32* nocapture %n_el, %struct._IO_FILE* nocapture %fp, i32 %sw, i32* %ck) #0 {
entry:
  %el_sz.off = add i32 %el_sz, -1
  %0 = icmp ugt i32 %el_sz.off, 1
  %cmp3 = icmp ne i32 %el_sz, 4
  %or.cond17 = and i1 %0, %cmp3
  br i1 %or.cond17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 265, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([26 x i8]* @.str13, i64 0, i64 0), i32 %el_sz) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast i32* %n_el to i8*
  %call = tail call i32 @bio_fread(i8* %1, i32 4, i32 1, %struct._IO_FILE* %fp, i32 %sw, i32* %ck) #8
  %cmp4 = icmp eq i32 %call, 1
  br i1 %cmp4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 269, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([25 x i8]* @.str14, i64 0, i64 0)) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then5
  %2 = load i32* %n_el, align 4, !tbaa !3
  %cmp7 = icmp slt i32 %2, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 271, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  %3 = load i32* %n_el, align 4, !tbaa !3
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([19 x i8]* @.str15, i64 0, i64 0), i32 %3) #6
  %.pre = load i32* %n_el, align 4, !tbaa !3
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %4 = phi i32 [ %.pre, %if.then8 ], [ %2, %if.end6 ]
  %conv = sext i32 %4 to i64
  %conv10 = sext i32 %el_sz to i64
  %call11 = tail call i8* @__ckd_calloc__(i64 %conv, i64 %conv10, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i32 274) #6
  store i8* %call11, i8** %buf, align 8, !tbaa !0
  %5 = load i32* %n_el, align 4, !tbaa !3
  %call12 = tail call i32 @bio_fread(i8* %call11, i32 %el_sz, i32 %5, %struct._IO_FILE* %fp, i32 %sw, i32* %ck) #8
  %6 = load i32* %n_el, align 4, !tbaa !3
  %cmp13 = icmp eq i32 %call12, %6
  br i1 %cmp13, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end9
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 278, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([25 x i8]* @.str16, i64 0, i64 0)) #6
  %.pre33 = load i32* %n_el, align 4, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.end9, %if.then15
  %7 = phi i32 [ %call12, %if.end9 ], [ %.pre33, %if.then15 ]
  ret i32 %7
}

; Function Attrs: nounwind optsize uwtable
define void @bio_verify_chksum(%struct._IO_FILE* nocapture %fp, i32 %byteswap, i32 %chksum) #0 {
entry:
  %file_chksum = alloca i32, align 4
  %0 = bitcast i32* %file_chksum to i8*
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 289, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([22 x i8]* @.str17, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %tobool = icmp eq i32 %byteswap, 0
  %.pre = load i32* %file_chksum, align 4, !tbaa !3
  br i1 %tobool, label %if.end9, label %if.then1

if.then1:                                         ; preds = %if.end
  %or8 = call i32 @llvm.bswap.i32(i32 %.pre)
  store i32 %or8, i32* %file_chksum, align 4, !tbaa !3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then1
  %1 = phi i32 [ %or8, %if.then1 ], [ %.pre, %if.end ]
  %cmp10 = icmp eq i32 %1, %chksum
  br i1 %cmp10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i64 293, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([51 x i8]* @.str18, i64 0, i64 0), i32 %1, i32 %chksum) #6
  br label %if.end12

if.end12:                                         ; preds = %if.end9, %if.then11
  ret void
}

; Function Attrs: optsize
declare void @_E__pr_warn(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind readnone
declare i16 @llvm.bswap.i16(i16) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
