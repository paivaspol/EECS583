; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@bDebug = internal unnamed_addr global i1 false
@_where.bFirst = internal unnamed_addr global i1 false
@stdlog = external global %struct._IO_FILE*
@stderr = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [39 x i8] c"\0AHALT in file %s line %d because:\0A\09%s\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@debug = global %struct._IO_FILE* null, align 8
@.str3 = private unnamed_addr constant [17 x i8] c"dump core (y/n):\00", align 1
@stdin = external global %struct._IO_FILE*
@fatal_tmp_file = internal unnamed_addr global i8* null, align 8
@.str4 = private unnamed_addr constant [48 x i8] c"BUGWARNING: fatal_tmp_file already set at %s:%d\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"fatal_tmp_file\00", align 1
@.str6 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/fatal.c\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"BUGWARNING: file %s not set as fatal_tmp_file at %s:%d\00", align 1
@.str8 = private unnamed_addr constant [31 x i8] c"Cleaning up temporary file %s\0A\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"Fatal error: \00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"0x%%%dx\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"%%%dd\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"%%%df\00", align 1
@maxwarn = internal unnamed_addr global i32 10, align 4
@nwarn = internal unnamed_addr global i32 0, align 4
@filenm = internal global [256 x i8] zeroinitializer, align 16
@lineno = internal unnamed_addr global i32 1, align 4
@warn_buf = common global [1024 x i8] zeroinitializer, align 16
@.str13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str16 = private unnamed_addr constant [35 x i8] c"WARNING %d [file %s, line %s]:\0A%s\0A\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"temp2\00", align 1
@.str18 = private unnamed_addr constant [33 x i8] c"Too many warnings, %s terminated\00", align 1
@.str19 = private unnamed_addr constant [23 x i8] c"There %s %d warning%s\0A\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"was\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"were\00", align 1
@.str22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str23 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str24 = private unnamed_addr constant [53 x i8] c"Too few parameters on line (source file %s, line %d)\00", align 1
@.str25 = private unnamed_addr constant [51 x i8] c"Invalid case in switch statement, file %s, line %d\00", align 1
@.str26 = private unnamed_addr constant [71 x i8] c"Unexpected end of file in file %s at line %d\0A(Source file %s, line %d)\00", align 1
@.str27 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @bDebugMode() #0 {
entry:
  %.b = load i1* @bDebug, align 1
  %0 = zext i1 %.b to i32
  ret i32 %0
}

; Function Attrs: nounwind optsize uwtable
define void @_where(i8* nocapture %file, i32 %line) #1 {
entry:
  %.b = load i1* @_where.bFirst, align 1
  br i1 %.b, label %if.end12, label %if.end

if.end:                                           ; preds = %entry
  store i1 true, i1* @_where.bFirst, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize uwtable
define void @_halt(i8* %file, i32 %line, i8* %reason) #3 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([39 x i8]* @.str1, i64 0, i64 0), i8* %file, i32 %line, i8* %reason) #10
  tail call void @exit(i32 1) #11
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: noreturn nounwind optsize uwtable
define void @quit_gmx(i32 %fatal_errno, i8* %msg) #3 {
entry:
  switch i32 %fatal_errno, label %if.then4 [
    i32 0, label %if.then
    i32 -1, label %if.end6
  ]

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !0
  %tobool1 = icmp eq %struct._IO_FILE* %0, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* %msg) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* %msg) #10
  br label %if.end7

if.then4:                                         ; preds = %entry
  %call5 = tail call i32* @__errno_location() #12
  store i32 %fatal_errno, i32* %call5, align 4, !tbaa !3
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.then4
  tail call void @perror(i8* %msg) #10
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %2 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool8 = icmp eq %struct._IO_FILE* %2, null
  br i1 %tobool8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = tail call i32 @fflush(%struct._IO_FILE* %2) #10
  br label %if.end11

if.end11:                                         ; preds = %if.end7, %if.then9
  %.b = load i1* @bDebug, align 1
  br i1 %.b, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.end11
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %3)
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call15 = tail call i32 @fflush(%struct._IO_FILE* %5) #10
  %6 = load %struct._IO_FILE** @stdin, align 8, !tbaa !0
  %call16 = tail call i32 @_IO_getc(%struct._IO_FILE* %6) #10
  %call17 = tail call i32 @toupper(i32 %call16) #10
  %cmp18 = icmp eq i32 %call17, 78
  br i1 %cmp18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.then13
  tail call void @abort() #11
  unreachable

if.end21:                                         ; preds = %if.then13, %if.end11
  tail call void @exit(i32 -1) #11
  unreachable
}

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind optsize
declare void @perror(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #2

; Function Attrs: nounwind optsize
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) #2

; Function Attrs: noreturn nounwind optsize
declare void @abort() #4

; Function Attrs: nounwind optsize uwtable
define void @_set_fatal_tmp_file(i8* %fn, i8* %file, i32 %line) #1 {
entry:
  %0 = load i8** @fatal_tmp_file, align 8, !tbaa !0
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i8* @gmx_strdup(i8* %fn) #10
  store i8* %call, i8** @fatal_tmp_file, align 8, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), i8* %file, i32 %line) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #6

; Function Attrs: nounwind optsize uwtable
define void @_unset_fatal_tmp_file(i8* %fn, i8* %file, i32 %line) #1 {
entry:
  %0 = load i8** @fatal_tmp_file, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %fn, i8* %0) #13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), i32 193, i8* %0) #10
  store i8* null, i8** @fatal_tmp_file, align 8, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i8* %fn, i8* %file, i32 %line) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #7

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #6

; Function Attrs: noreturn nounwind optsize uwtable
define void @fatal_error(i32 %fatal_errno, i8* %fmt, ...) #3 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %msg = alloca [4096 x i8], align 16
  %ibuf = alloca [64 x i8], align 16
  %ifmt = alloca [64 x i8], align 16
  %len = alloca i32, align 4
  %0 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #8
  %1 = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %1) #8
  %2 = getelementptr inbounds [64 x i8]* %ifmt, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %2) #8
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %3 = load i8** @fatal_tmp_file, align 8, !tbaa !0
  %tobool = icmp eq i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([31 x i8]* @.str8, i64 0, i64 0), i8* %3) #10
  %5 = load i8** @fatal_tmp_file, align 8, !tbaa !0
  %call2 = call i32 @remove(i8* %5) #10
  %6 = load i8** @fatal_tmp_file, align 8, !tbaa !0
  call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), i32 221, i8* %6) #10
  store i8* null, i8** @fatal_tmp_file, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  store i32 0, i32* %len, align 4, !tbaa !3
  call fastcc void @bputs(i8* %0, i32* %len, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 0) #14
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  %fp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc113, %if.end
  %storemerge = phi i8* [ %fmt, %if.end ], [ %incdec.ptr114, %for.inc113 ]
  %8 = load i8* %storemerge, align 1, !tbaa !1
  switch i8 %8, label %if.then6 [
    i8 0, label %for.end115
    i8 37, label %if.else
  ]

if.then6:                                         ; preds = %for.cond
  %9 = load i32* %len, align 4, !tbaa !3
  %inc.i = add nsw i32 %9, 1
  store i32 %inc.i, i32* %len, align 4, !tbaa !3
  %idxprom.i = sext i32 %9 to i64
  %arrayidx.i = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %idxprom.i
  store i8 %8, i8* %arrayidx.i, align 1, !tbaa !1
  br label %for.inc113

if.else:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %storemerge, i64 1
  %10 = load i8* %incdec.ptr, align 1, !tbaa !1
  %idxprom4.i = sext i8 %10 to i64
  %call.i = call i16** @__ctype_b_loc() #12
  %11 = load i16** %call.i, align 8, !tbaa !0
  %arrayidx5.i = getelementptr inbounds i16* %11, i64 %idxprom4.i
  %12 = load i16* %arrayidx5.i, align 2, !tbaa !4
  %and6.i = and i16 %12, 2048
  %tobool7.i = icmp eq i16 %and6.i, 0
  br i1 %tobool7.i, label %getfld.exit, label %while.body.i

while.body.i:                                     ; preds = %if.else, %while.body.i
  %13 = phi i8 [ %15, %while.body.i ], [ %10, %if.else ]
  %14 = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %incdec.ptr, %if.else ]
  %fld.08.i = phi i32 [ %add.i, %while.body.i ], [ 0, %if.else ]
  %mul.i = mul nsw i32 %fld.08.i, 10
  %incdec.ptr.i = getelementptr inbounds i8* %14, i64 1
  %conv2.i = sext i8 %13 to i32
  %sub.i = add i32 %mul.i, -48
  %add.i = add i32 %sub.i, %conv2.i
  %15 = load i8* %incdec.ptr.i, align 1, !tbaa !1
  %idxprom.i132 = sext i8 %15 to i64
  %arrayidx.i133 = getelementptr inbounds i16* %11, i64 %idxprom.i132
  %16 = load i16* %arrayidx.i133, align 2, !tbaa !4
  %and.i = and i16 %16, 2048
  %tobool.i = icmp eq i16 %and.i, 0
  br i1 %tobool.i, label %getfld.exit, label %while.body.i

getfld.exit:                                      ; preds = %while.body.i, %if.else
  %17 = phi i8 [ %10, %if.else ], [ %15, %while.body.i ]
  %incdec.ptr.i152 = phi i8* [ %incdec.ptr, %if.else ], [ %incdec.ptr.i, %while.body.i ]
  %fld.0.lcssa.i = phi i32 [ 0, %if.else ], [ %add.i, %while.body.i ]
  %conv9 = sext i8 %17 to i32
  switch i32 %conv9, label %for.inc113 [
    i32 120, label %sw.bb
    i32 100, label %sw.bb24
    i32 102, label %sw.bb55
    i32 99, label %sw.bb83
    i32 115, label %sw.bb98
  ]

sw.bb:                                            ; preds = %getfld.exit
  %gp_offset = load i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %reg_save_area = load i8** %7, align 16
  %18 = sext i32 %gp_offset to i64
  %19 = getelementptr i8* %reg_save_area, i64 %18
  %20 = add i32 %gp_offset, 8
  store i32 %20, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %19, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*
  %21 = load i32* %vaarg.addr, align 4
  %call12 = call i32 (i8*, i8*, ...)* @sprintf(i8* %2, i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0), i32 %fld.0.lcssa.i) #10
  %call15 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* %2, i32 %21) #10
  %call18166 = call i64 @strlen(i8* %1) #13
  %conv19167 = trunc i64 %call18166 to i32
  %cmp20168 = icmp sgt i32 %conv19167, 0
  br i1 %cmp20168, label %for.body22.lr.ph, label %for.inc113

for.body22.lr.ph:                                 ; preds = %vaarg.end
  %len.promoted170 = load i32* %len, align 4, !tbaa !3
  %22 = sext i32 %len.promoted170 to i64
  br label %for.body22

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %indvars.iv180 = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next181, %for.body22 ]
  %indvars.iv178 = phi i64 [ %22, %for.body22.lr.ph ], [ %indvars.iv.next179, %for.body22 ]
  %inc.i134171 = phi i32 [ %len.promoted170, %for.body22.lr.ph ], [ %inc.i134, %for.body22 ]
  %arrayidx = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 %indvars.iv180
  %23 = load i8* %arrayidx, align 1, !tbaa !1
  %indvars.iv.next179 = add i64 %indvars.iv178, 1
  %inc.i134 = add nsw i32 %inc.i134171, 1
  %arrayidx.i136 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %indvars.iv178
  store i8 %23, i8* %arrayidx.i136, align 1, !tbaa !1
  %indvars.iv.next181 = add i64 %indvars.iv180, 1
  %call18 = call i64 @strlen(i8* %1) #13
  %conv19 = trunc i64 %call18 to i32
  %24 = trunc i64 %indvars.iv.next181 to i32
  %cmp20 = icmp slt i32 %24, %conv19
  br i1 %cmp20, label %for.body22, label %for.cond16.for.inc113.loopexit165_crit_edge

sw.bb24:                                          ; preds = %getfld.exit
  %gp_offset27 = load i32* %gp_offset_p, align 16
  %fits_in_gp28 = icmp ult i32 %gp_offset27, 41
  br i1 %fits_in_gp28, label %vaarg.in_reg29, label %vaarg.in_mem31

vaarg.in_reg29:                                   ; preds = %sw.bb24
  %reg_save_area30 = load i8** %7, align 16
  %25 = sext i32 %gp_offset27 to i64
  %26 = getelementptr i8* %reg_save_area30, i64 %25
  %27 = add i32 %gp_offset27, 8
  store i32 %27, i32* %gp_offset_p, align 16
  br label %vaarg.end35

vaarg.in_mem31:                                   ; preds = %sw.bb24
  %overflow_arg_area33 = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next34 = getelementptr i8* %overflow_arg_area33, i64 8
  store i8* %overflow_arg_area.next34, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end35

vaarg.end35:                                      ; preds = %vaarg.in_mem31, %vaarg.in_reg29
  %vaarg.addr36.in = phi i8* [ %26, %vaarg.in_reg29 ], [ %overflow_arg_area33, %vaarg.in_mem31 ]
  %vaarg.addr36 = bitcast i8* %vaarg.addr36.in to i32*
  %28 = load i32* %vaarg.addr36, align 4
  %call38 = call i32 (i8*, i8*, ...)* @sprintf(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0), i32 %fld.0.lcssa.i) #10
  %call41 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* %2, i32 %28) #10
  %call44159 = call i64 @strlen(i8* %1) #13
  %conv45160 = trunc i64 %call44159 to i32
  %cmp46161 = icmp sgt i32 %conv45160, 0
  br i1 %cmp46161, label %for.body48.lr.ph, label %for.inc113

for.body48.lr.ph:                                 ; preds = %vaarg.end35
  %len.promoted163 = load i32* %len, align 4, !tbaa !3
  %29 = sext i32 %len.promoted163 to i64
  br label %for.body48

for.body48:                                       ; preds = %for.body48.lr.ph, %for.body48
  %indvars.iv176 = phi i64 [ 0, %for.body48.lr.ph ], [ %indvars.iv.next177, %for.body48 ]
  %indvars.iv174 = phi i64 [ %29, %for.body48.lr.ph ], [ %indvars.iv.next175, %for.body48 ]
  %inc.i140164 = phi i32 [ %len.promoted163, %for.body48.lr.ph ], [ %inc.i140, %for.body48 ]
  %arrayidx51 = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 %indvars.iv176
  %30 = load i8* %arrayidx51, align 1, !tbaa !1
  %indvars.iv.next175 = add i64 %indvars.iv174, 1
  %inc.i140 = add nsw i32 %inc.i140164, 1
  %arrayidx.i142 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %indvars.iv174
  store i8 %30, i8* %arrayidx.i142, align 1, !tbaa !1
  %indvars.iv.next177 = add i64 %indvars.iv176, 1
  %call44 = call i64 @strlen(i8* %1) #13
  %conv45 = trunc i64 %call44 to i32
  %31 = trunc i64 %indvars.iv.next177 to i32
  %cmp46 = icmp slt i32 %31, %conv45
  br i1 %cmp46, label %for.body48, label %for.cond42.for.inc113.loopexit158_crit_edge

sw.bb55:                                          ; preds = %getfld.exit
  %fp_offset = load i32* %fp_offset_p, align 4
  %fits_in_fp = icmp ult i32 %fp_offset, 161
  br i1 %fits_in_fp, label %vaarg.in_reg57, label %vaarg.in_mem59

vaarg.in_reg57:                                   ; preds = %sw.bb55
  %reg_save_area58 = load i8** %7, align 16
  %32 = sext i32 %fp_offset to i64
  %33 = getelementptr i8* %reg_save_area58, i64 %32
  %34 = add i32 %fp_offset, 16
  store i32 %34, i32* %fp_offset_p, align 4
  br label %vaarg.end63

vaarg.in_mem59:                                   ; preds = %sw.bb55
  %overflow_arg_area61 = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next62 = getelementptr i8* %overflow_arg_area61, i64 8
  store i8* %overflow_arg_area.next62, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end63

vaarg.end63:                                      ; preds = %vaarg.in_mem59, %vaarg.in_reg57
  %vaarg.addr64.in = phi i8* [ %33, %vaarg.in_reg57 ], [ %overflow_arg_area61, %vaarg.in_mem59 ]
  %vaarg.addr64 = bitcast i8* %vaarg.addr64.in to double*
  %35 = load double* %vaarg.addr64, align 8
  %call66 = call i32 (i8*, i8*, ...)* @sprintf(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i32 %fld.0.lcssa.i) #10
  %call69 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* %2, double %35) #10
  %call72153 = call i64 @strlen(i8* %1) #13
  %conv73154 = trunc i64 %call72153 to i32
  %cmp74155 = icmp sgt i32 %conv73154, 0
  br i1 %cmp74155, label %for.body76.lr.ph, label %for.inc113

for.body76.lr.ph:                                 ; preds = %vaarg.end63
  %len.promoted = load i32* %len, align 4, !tbaa !3
  %36 = sext i32 %len.promoted to i64
  br label %for.body76

for.body76:                                       ; preds = %for.body76.lr.ph, %for.body76
  %indvars.iv172 = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next173, %for.body76 ]
  %indvars.iv = phi i64 [ %36, %for.body76.lr.ph ], [ %indvars.iv.next, %for.body76 ]
  %inc.i146157 = phi i32 [ %len.promoted, %for.body76.lr.ph ], [ %inc.i146, %for.body76 ]
  %arrayidx79 = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 %indvars.iv172
  %37 = load i8* %arrayidx79, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc.i146 = add nsw i32 %inc.i146157, 1
  %arrayidx.i148 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %indvars.iv
  store i8 %37, i8* %arrayidx.i148, align 1, !tbaa !1
  %indvars.iv.next173 = add i64 %indvars.iv172, 1
  %call72 = call i64 @strlen(i8* %1) #13
  %conv73 = trunc i64 %call72 to i32
  %38 = trunc i64 %indvars.iv.next173 to i32
  %cmp74 = icmp slt i32 %38, %conv73
  br i1 %cmp74, label %for.body76, label %for.cond70.for.inc113.loopexit_crit_edge

sw.bb83:                                          ; preds = %getfld.exit
  %gp_offset86 = load i32* %gp_offset_p, align 16
  %fits_in_gp87 = icmp ult i32 %gp_offset86, 41
  br i1 %fits_in_gp87, label %vaarg.in_reg88, label %vaarg.in_mem90

vaarg.in_reg88:                                   ; preds = %sw.bb83
  %reg_save_area89 = load i8** %7, align 16
  %39 = sext i32 %gp_offset86 to i64
  %40 = getelementptr i8* %reg_save_area89, i64 %39
  %41 = add i32 %gp_offset86, 8
  store i32 %41, i32* %gp_offset_p, align 16
  br label %vaarg.end94

vaarg.in_mem90:                                   ; preds = %sw.bb83
  %overflow_arg_area92 = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next93 = getelementptr i8* %overflow_arg_area92, i64 8
  store i8* %overflow_arg_area.next93, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end94

vaarg.end94:                                      ; preds = %vaarg.in_mem90, %vaarg.in_reg88
  %vaarg.addr95.in = phi i8* [ %40, %vaarg.in_reg88 ], [ %overflow_arg_area92, %vaarg.in_mem90 ]
  %vaarg.addr95 = bitcast i8* %vaarg.addr95.in to i32*
  %42 = load i32* %vaarg.addr95, align 4
  %conv96 = trunc i32 %42 to i8
  %43 = load i32* %len, align 4, !tbaa !3
  %inc.i143 = add nsw i32 %43, 1
  store i32 %inc.i143, i32* %len, align 4, !tbaa !3
  %idxprom.i144 = sext i32 %43 to i64
  %arrayidx.i145 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %idxprom.i144
  store i8 %conv96, i8* %arrayidx.i145, align 1, !tbaa !1
  br label %for.inc113

sw.bb98:                                          ; preds = %getfld.exit
  %gp_offset101 = load i32* %gp_offset_p, align 16
  %fits_in_gp102 = icmp ult i32 %gp_offset101, 41
  br i1 %fits_in_gp102, label %vaarg.in_reg103, label %vaarg.in_mem105

vaarg.in_reg103:                                  ; preds = %sw.bb98
  %reg_save_area104 = load i8** %7, align 16
  %44 = sext i32 %gp_offset101 to i64
  %45 = getelementptr i8* %reg_save_area104, i64 %44
  %46 = add i32 %gp_offset101, 8
  store i32 %46, i32* %gp_offset_p, align 16
  br label %vaarg.end109

vaarg.in_mem105:                                  ; preds = %sw.bb98
  %overflow_arg_area107 = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next108 = getelementptr i8* %overflow_arg_area107, i64 8
  store i8* %overflow_arg_area.next108, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end109

vaarg.end109:                                     ; preds = %vaarg.in_mem105, %vaarg.in_reg103
  %vaarg.addr110.in = phi i8* [ %45, %vaarg.in_reg103 ], [ %overflow_arg_area107, %vaarg.in_mem105 ]
  %vaarg.addr110 = bitcast i8* %vaarg.addr110.in to i8**
  %47 = load i8** %vaarg.addr110, align 8
  call fastcc void @bputs(i8* %0, i32* %len, i8* %47, i32 %fld.0.lcssa.i) #14
  br label %for.inc113

for.cond70.for.inc113.loopexit_crit_edge:         ; preds = %for.body76
  store i32 %inc.i146, i32* %len, align 4, !tbaa !3
  br label %for.inc113

for.cond42.for.inc113.loopexit158_crit_edge:      ; preds = %for.body48
  store i32 %inc.i140, i32* %len, align 4, !tbaa !3
  br label %for.inc113

for.cond16.for.inc113.loopexit165_crit_edge:      ; preds = %for.body22
  store i32 %inc.i134, i32* %len, align 4, !tbaa !3
  br label %for.inc113

for.inc113:                                       ; preds = %vaarg.end, %for.cond16.for.inc113.loopexit165_crit_edge, %vaarg.end35, %for.cond42.for.inc113.loopexit158_crit_edge, %vaarg.end63, %for.cond70.for.inc113.loopexit_crit_edge, %if.then6, %getfld.exit, %vaarg.end109, %vaarg.end94
  %incdec.ptr.i151 = phi i8* [ %storemerge, %if.then6 ], [ %incdec.ptr.i152, %getfld.exit ], [ %incdec.ptr.i152, %vaarg.end109 ], [ %incdec.ptr.i152, %vaarg.end94 ], [ %incdec.ptr.i152, %for.cond70.for.inc113.loopexit_crit_edge ], [ %incdec.ptr.i152, %vaarg.end63 ], [ %incdec.ptr.i152, %for.cond42.for.inc113.loopexit158_crit_edge ], [ %incdec.ptr.i152, %vaarg.end35 ], [ %incdec.ptr.i152, %for.cond16.for.inc113.loopexit165_crit_edge ], [ %incdec.ptr.i152, %vaarg.end ]
  %incdec.ptr114 = getelementptr inbounds i8* %incdec.ptr.i151, i64 1
  br label %for.cond

for.end115:                                       ; preds = %for.cond
  call void @llvm.va_end(i8* %arraydecay1)
  %48 = load i32* %len, align 4, !tbaa !3
  %idxprom.i138 = sext i32 %48 to i64
  %arrayidx.i139 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %idxprom.i138
  store i8 0, i8* %arrayidx.i139, align 1, !tbaa !1
  call void @quit_gmx(i32 %fatal_errno, i8* %0) #14
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: nounwind optsize
declare i32 @remove(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @bputs(i8* nocapture %msg, i32* nocapture %len, i8* nocapture %s, i32 %fld) #1 {
entry:
  %call = tail call i64 @strlen(i8* %s) #13
  %conv = trunc i64 %call to i32
  %sub = sub nsw i32 %fld, %conv
  %cmp13 = icmp sgt i32 %sub, 0
  br i1 %cmp13, label %for.body, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body, %entry
  %0 = load i8* %s, align 1, !tbaa !1
  %tobool11 = icmp eq i8 %0, 0
  br i1 %tobool11, label %while.end, label %while.body

for.body:                                         ; preds = %entry, %for.body
  %fld.addr.014 = phi i32 [ %dec, %for.body ], [ %sub, %entry ]
  %1 = load i32* %len, align 4, !tbaa !3
  %inc.i = add nsw i32 %1, 1
  store i32 %inc.i, i32* %len, align 4, !tbaa !3
  %idxprom.i = sext i32 %1 to i64
  %arrayidx.i = getelementptr inbounds i8* %msg, i64 %idxprom.i
  store i8 32, i8* %arrayidx.i, align 1, !tbaa !1
  %dec = add nsw i32 %fld.addr.014, -1
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %for.body, label %while.cond.preheader

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %2 = phi i8 [ %4, %while.body ], [ %0, %while.cond.preheader ]
  %s.addr.012 = phi i8* [ %incdec.ptr, %while.body ], [ %s, %while.cond.preheader ]
  %incdec.ptr = getelementptr inbounds i8* %s.addr.012, i64 1
  %3 = load i32* %len, align 4, !tbaa !3
  %inc.i8 = add nsw i32 %3, 1
  store i32 %inc.i8, i32* %len, align 4, !tbaa !3
  %idxprom.i9 = sext i32 %3 to i64
  %arrayidx.i10 = getelementptr inbounds i8* %msg, i64 %idxprom.i9
  store i8 %2, i8* %arrayidx.i10, align 1, !tbaa !1
  %4 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool = icmp eq i8 %4, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: nounwind optsize uwtable
define void @init_warning(i32 %maxwarning) #1 {
entry:
  store i32 %maxwarning, i32* @maxwarn, align 4, !tbaa !3
  store i32 0, i32* @nwarn, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @set_warning_line(i8* nocapture %s, i32 %line) #1 {
entry:
  %call = tail call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @filenm, i64 0, i64 0), i8* %s) #10
  store i32 %line, i32* @lineno, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly uwtable
define i32 @get_warning_line() #0 {
entry:
  %0 = load i32* @lineno, align 4, !tbaa !3
  ret i32 %0
}

; Function Attrs: nounwind optsize readnone uwtable
define i8* @get_warning_file() #9 {
entry:
  ret i8* getelementptr inbounds ([256 x i8]* @filenm, i64 0, i64 0)
}

; Function Attrs: nounwind optsize uwtable
define void @warning(i8* %s) #1 {
entry:
  %linenobuf = alloca [32 x i8], align 16
  %0 = load i32* @nwarn, align 4, !tbaa !3
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @nwarn, align 4, !tbaa !3
  %cmp = icmp eq i8* %s, null
  %.s = select i1 %cmp, i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i8* %s
  %1 = load i32* @lineno, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, -1
  %arraydecay = getelementptr inbounds [32 x i8]* %linenobuf, i64 0, i64 0
  br i1 %cmp1, label %if.else, label %if.then2

if.then2:                                         ; preds = %entry
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i32 %1) #10
  br label %if.end5

if.else:                                          ; preds = %entry
  %2 = bitcast [32 x i8]* %linenobuf to i64*
  store i64 31093567915781749, i64* %2, align 16
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %call6 = call i64 @strlen(i8* %.s) #13
  %add7 = add i64 %call6, 3
  %conv = trunc i64 %add7 to i32
  %call8 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), i32 315, i32 %conv, i32 1) #10
  %3 = bitcast i8* %call8 to i16*
  store i16 8224, i16* %3, align 1
  %arrayidx12 = getelementptr inbounds i8* %call8, i64 2
  store i8 0, i8* %arrayidx12, align 1, !tbaa !1
  %call13 = call i8* @strcat(i8* %call8, i8* %.s) #10
  %call14 = call i8* @wrap_lines(i8* %call8, i32 79, i32 2) #10
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %5 = load i32* @nwarn, align 4, !tbaa !3
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([35 x i8]* @.str16, i64 0, i64 0), i32 %5, i8* getelementptr inbounds ([256 x i8]* @filenm, i64 0, i64 0), i8* %arraydecay, i8* %call14) #10
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), i32 323, i8* %call8) #10
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), i32 324, i8* %call14) #10
  %6 = load i32* @nwarn, align 4, !tbaa !3
  %7 = load i32* @maxwarn, align 4, !tbaa !3
  %cmp17 = icmp slt i32 %6, %7
  br i1 %cmp17, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end5
  %call20 = call i8* @Program() #10
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str18, i64 0, i64 0), i8* %call20) #14
  unreachable

if.end21:                                         ; preds = %if.end5
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #6

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #2

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #6

; Function Attrs: optsize
declare i8* @Program() #6

; Function Attrs: nounwind optsize uwtable
define void @print_warn_num() #1 {
entry:
  %0 = load i32* @nwarn, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %cmp1 = icmp eq i32 %0, 1
  %cond = select i1 %cmp1, i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0)
  %cond3 = select i1 %cmp1, i8* getelementptr inbounds ([1 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8]* @.str19, i64 0, i64 0), i8* %cond, i32 %0, i8* %cond3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @_too_few(i8* %fn, i32 %line) #1 {
entry:
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str24, i64 0, i64 0), i8* %fn, i32 %line) #10
  tail call void @warning(i8* null) #14
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define void @_invalid_case(i8* %fn, i32 %line) #3 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([51 x i8]* @.str25, i64 0, i64 0), i8* %fn, i32 %line) #14
  unreachable
}

; Function Attrs: noreturn nounwind optsize uwtable
define void @_unexpected_eof(i8* %fn, i32 %line, i8* %srcfn, i32 %srcline) #3 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([71 x i8]* @.str26, i64 0, i64 0), i8* %fn, i32 %line, i8* %srcfn, i32 %srcline) #14
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define void @init_debug(i8* %dbgfile) #1 {
entry:
  tail call void @no_buffers() #10
  %call = tail call %struct._IO_FILE* @ffopen(i8* %dbgfile, i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0)) #10
  store %struct._IO_FILE* %call, %struct._IO_FILE** @debug, align 8, !tbaa !0
  store i1 true, i1* @bDebug, align 1
  ret void
}

; Function Attrs: optsize
declare void @no_buffers() #6

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #6

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #8

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind optsize }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { nounwind optsize readnone }
attributes #13 = { nounwind optsize readonly }
attributes #14 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
