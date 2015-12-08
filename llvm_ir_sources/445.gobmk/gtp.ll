; ModuleID = '../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gtp_command = type { i8*, i32 (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@current_id = internal global i32 0, align 4
@.str1 = private unnamed_addr constant [7 x i8] c" %s %n\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"unknown command\00", align 1
@gtp_boardsize = internal unnamed_addr global i32 -1, align 4
@vertex_transform_input_hook = internal unnamed_addr global void (i32, i32, i32*, i32*)* null, align 8
@vertex_transform_output_hook = internal unnamed_addr global void (i32, i32, i32*, i32*)* null, align 8
@stdout = external global %struct._IO_FILE*
@.str3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str8 = private unnamed_addr constant [33 x i8] c"\0A\0AUnknown format character '%c'\0A\00", align 1
@.str9 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str14 = private unnamed_addr constant [10 x i8] c"! panic\0A\0A\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"%6s%n\00", align 1
@.str16 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str17 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str18 = private unnamed_addr constant [8 x i8] c" %c%d%n\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c"%5s%n\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str22 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @gtp_main_loop(%struct.gtp_command* nocapture %commands, %struct._IO_FILE* nocapture %gtp_input) #0 {
entry:
  %line = alloca [1000 x i8], align 16
  %command = alloca [1000 x i8], align 16
  %n = alloca i32, align 4
  %0 = getelementptr inbounds [1000 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1000, i8* %0) #1
  %1 = getelementptr inbounds [1000 x i8]* %command, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1000, i8* %1) #1
  %name116 = getelementptr inbounds %struct.gtp_command* %commands, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %if.end79, %if.end42, %entry
  %call = call i8* @fgets(i8* %0, i32 1000, %struct._IO_FILE* %gtp_input) #4
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %while.end.split, label %for.cond

for.cond:                                         ; preds = %while.body, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %while.body ]
  %p.0 = phi i8* [ %p.1, %for.inc ], [ %0, %while.body ]
  %arrayidx = getelementptr inbounds [1000 x i8]* %line, i64 0, i64 %indvars.iv
  %2 = load i8* %arrayidx, align 1, !tbaa !0
  switch i8 %2, label %if.else [
    i8 0, label %for.end
    i8 9, label %if.then7
  ]

if.then7:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %p.0, i64 1
  store i8 32, i8* %p.0, align 1, !tbaa !0
  br label %for.inc

if.else:                                          ; preds = %for.cond
  %.off = add i8 %2, -1
  %3 = icmp ult i8 %.off, 9
  br i1 %3, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %.off113 = add i8 %2, -11
  %4 = icmp ult i8 %.off113, 21
  %cmp23 = icmp eq i8 %2, 127
  %or.cond109 = or i1 %4, %cmp23
  br i1 %or.cond109, label %for.inc, label %if.else26

if.else26:                                        ; preds = %lor.lhs.false
  %cmp28 = icmp eq i8 %2, 35
  br i1 %cmp28, label %for.end, label %if.else31

if.else31:                                        ; preds = %if.else26
  %incdec.ptr32 = getelementptr inbounds i8* %p.0, i64 1
  store i8 %2, i8* %p.0, align 1, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %if.else, %if.then7, %if.else31
  %p.1 = phi i8* [ %incdec.ptr, %if.then7 ], [ %incdec.ptr32, %if.else31 ], [ %p.0, %if.else ], [ %p.0, %lor.lhs.false ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond, %if.else26
  store i8 0, i8* %p.0, align 1, !tbaa !0
  %call37 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i32* @current_id, i32* %n) #4
  %cmp38 = icmp eq i32 %call37, 1
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %for.end
  %5 = load i32* %n, align 4, !tbaa !2
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds [1000 x i8]* %line, i64 0, i64 %idx.ext
  br label %if.end42

if.else41:                                        ; preds = %for.end
  store i32 -1, i32* @current_id, align 4, !tbaa !2
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then40
  %p.2 = phi i8* [ %add.ptr, %if.then40 ], [ %0, %if.else41 ]
  %call44 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %p.2, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* %1, i32* %n) #4
  %cmp45 = icmp slt i32 %call44, 1
  br i1 %cmp45, label %while.body, label %if.end48

if.end48:                                         ; preds = %if.end42
  %6 = load i32* %n, align 4, !tbaa !2
  %idx.ext49 = sext i32 %6 to i64
  %add.ptr50 = getelementptr inbounds i8* %p.2, i64 %idx.ext49
  %7 = load i8** %name116, align 8, !tbaa !3
  %cmp54117 = icmp eq i8* %7, null
  br i1 %cmp54117, label %if.then77, label %for.body56

for.cond51:                                       ; preds = %for.body56
  %name = getelementptr inbounds %struct.gtp_command* %commands, i64 %indvars.iv.next125, i32 0
  %8 = load i8** %name, align 8, !tbaa !3
  %cmp54 = icmp eq i8* %8, null
  br i1 %cmp54, label %if.then77, label %for.body56

for.body56:                                       ; preds = %if.end48, %for.cond51
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.cond51 ], [ 0, %if.end48 ]
  %9 = phi i8* [ %8, %for.cond51 ], [ %7, %if.end48 ]
  %name120 = phi i8** [ %name, %for.cond51 ], [ %name116, %if.end48 ]
  %call61 = call i32 @strcmp(i8* %1, i8* %9) #5
  %cmp62 = icmp eq i32 %call61, 0
  %indvars.iv.next125 = add i64 %indvars.iv124, 1
  br i1 %cmp62, label %for.end71, label %for.cond51

for.end71:                                        ; preds = %for.body56
  %function = getelementptr inbounds %struct.gtp_command* %commands, i64 %indvars.iv124, i32 1
  %10 = load i32 (i8*)** %function, align 8, !tbaa !3
  %call67 = call i32 %10(i8* %add.ptr50) #4
  %.pr = load i8** %name120, align 8, !tbaa !3
  %cmp75 = icmp eq i8* %.pr, null
  br i1 %cmp75, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.end48, %for.cond51, %for.end71
  %status.1112 = phi i32 [ %call67, %for.end71 ], [ 0, %for.cond51 ], [ 0, %if.end48 ]
  %call78 = call i32 (i8*, ...)* @gtp_failure(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #6
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %for.end71
  %status.1111 = phi i32 [ %status.1112, %if.then77 ], [ %call67, %for.end71 ]
  switch i32 %status.1111, label %while.end.split [
    i32 1, label %while.cond.outer.backedge.thread
    i32 0, label %while.body
  ]

while.cond.outer.backedge.thread:                 ; preds = %if.end79
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0)) #4
  br label %while.end.split

while.end.split:                                  ; preds = %if.end79, %while.body, %while.cond.outer.backedge.thread
  call void @llvm.lifetime.end(i64 1000, i8* %1) #1
  call void @llvm.lifetime.end(i64 1000, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @gtp_failure(i8* nocapture %format, ...) #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @gtp_start_response(i32 1) #6
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %format, %struct.__va_list_tag* %arraydecay) #4
  call void @llvm.va_end(i8* %arraydecay1)
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @gtp_panic() #0 {
entry:
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0)) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @gtp_internal_set_boardsize(i32 %size) #0 {
entry:
  store i32 %size, i32* @gtp_boardsize, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gtp_set_vertex_transform_hooks(void (i32, i32, i32*, i32*)* %in, void (i32, i32, i32*, i32*)* %out) #0 {
entry:
  store void (i32, i32, i32*, i32*)* %in, void (i32, i32, i32*, i32*)** @vertex_transform_input_hook, align 8, !tbaa !3
  store void (i32, i32, i32*, i32*)* %out, void (i32, i32, i32*, i32*)** @vertex_transform_output_hook, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gtp_mprintf(i8* nocapture %fmt, ...) #0 {
entry:
  %i.addr.i = alloca i32, align 4
  %j.addr.i = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  %fp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 1
  %1 = bitcast i32* %i.addr.i to i8*
  %2 = bitcast i32* %j.addr.i to i8*
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %fmt.addr.0 = phi i8* [ %fmt, %entry ], [ %incdec.ptr99, %for.inc ]
  %3 = load i8* %fmt.addr.0, align 1, !tbaa !0
  switch i8 %3, label %if.else95 [
    i8 0, label %for.end
    i8 37, label %if.then
  ]

if.then:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %fmt.addr.0, i64 1
  %4 = load i8* %incdec.ptr, align 1, !tbaa !0
  %conv3 = sext i8 %4 to i32
  switch i32 %conv3, label %sw.default [
    i32 99, label %sw.bb
    i32 100, label %sw.bb5
    i32 102, label %sw.bb19
    i32 115, label %sw.bb30
    i32 109, label %sw.bb44
    i32 67, label %sw.bb69
  ]

sw.bb:                                            ; preds = %if.then
  %gp_offset = load i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %reg_save_area = load i8** %0, align 16
  %5 = sext i32 %gp_offset to i64
  %6 = getelementptr i8* %reg_save_area, i64 %5
  %7 = add i32 %gp_offset, 8
  store i32 %7, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %6, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*
  %8 = load i32* %vaarg.addr, align 4
  %9 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call = call i32 @_IO_putc(i32 %8, %struct._IO_FILE* %9) #4
  br label %for.inc

sw.bb5:                                           ; preds = %if.then
  %gp_offset8 = load i32* %gp_offset_p, align 16
  %fits_in_gp9 = icmp ult i32 %gp_offset8, 41
  br i1 %fits_in_gp9, label %vaarg.in_reg10, label %vaarg.in_mem12

vaarg.in_reg10:                                   ; preds = %sw.bb5
  %reg_save_area11 = load i8** %0, align 16
  %10 = sext i32 %gp_offset8 to i64
  %11 = getelementptr i8* %reg_save_area11, i64 %10
  %12 = add i32 %gp_offset8, 8
  store i32 %12, i32* %gp_offset_p, align 16
  br label %vaarg.end16

vaarg.in_mem12:                                   ; preds = %sw.bb5
  %overflow_arg_area14 = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next15 = getelementptr i8* %overflow_arg_area14, i64 8
  store i8* %overflow_arg_area.next15, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end16

vaarg.end16:                                      ; preds = %vaarg.in_mem12, %vaarg.in_reg10
  %vaarg.addr17.in = phi i8* [ %11, %vaarg.in_reg10 ], [ %overflow_arg_area14, %vaarg.in_mem12 ]
  %vaarg.addr17 = bitcast i8* %vaarg.addr17.in to i32*
  %13 = load i32* %vaarg.addr17, align 4
  %14 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i32 %13) #4
  br label %for.inc

sw.bb19:                                          ; preds = %if.then
  %fp_offset = load i32* %fp_offset_p, align 4
  %fits_in_fp = icmp ult i32 %fp_offset, 161
  br i1 %fits_in_fp, label %vaarg.in_reg21, label %vaarg.in_mem23

vaarg.in_reg21:                                   ; preds = %sw.bb19
  %reg_save_area22 = load i8** %0, align 16
  %15 = sext i32 %fp_offset to i64
  %16 = getelementptr i8* %reg_save_area22, i64 %15
  %17 = add i32 %fp_offset, 16
  store i32 %17, i32* %fp_offset_p, align 4
  br label %vaarg.end27

vaarg.in_mem23:                                   ; preds = %sw.bb19
  %overflow_arg_area25 = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next26 = getelementptr i8* %overflow_arg_area25, i64 8
  store i8* %overflow_arg_area.next26, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end27

vaarg.end27:                                      ; preds = %vaarg.in_mem23, %vaarg.in_reg21
  %vaarg.addr28.in = phi i8* [ %16, %vaarg.in_reg21 ], [ %overflow_arg_area25, %vaarg.in_mem23 ]
  %vaarg.addr28 = bitcast i8* %vaarg.addr28.in to double*
  %18 = load double* %vaarg.addr28, align 8
  %19 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), double %18) #4
  br label %for.inc

sw.bb30:                                          ; preds = %if.then
  %gp_offset33 = load i32* %gp_offset_p, align 16
  %fits_in_gp34 = icmp ult i32 %gp_offset33, 41
  br i1 %fits_in_gp34, label %vaarg.in_reg35, label %vaarg.in_mem37

vaarg.in_reg35:                                   ; preds = %sw.bb30
  %reg_save_area36 = load i8** %0, align 16
  %20 = sext i32 %gp_offset33 to i64
  %21 = getelementptr i8* %reg_save_area36, i64 %20
  %22 = add i32 %gp_offset33, 8
  store i32 %22, i32* %gp_offset_p, align 16
  br label %vaarg.end41

vaarg.in_mem37:                                   ; preds = %sw.bb30
  %overflow_arg_area39 = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next40 = getelementptr i8* %overflow_arg_area39, i64 8
  store i8* %overflow_arg_area.next40, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end41

vaarg.end41:                                      ; preds = %vaarg.in_mem37, %vaarg.in_reg35
  %vaarg.addr42.in = phi i8* [ %21, %vaarg.in_reg35 ], [ %overflow_arg_area39, %vaarg.in_mem37 ]
  %vaarg.addr42 = bitcast i8* %vaarg.addr42.in to i8**
  %23 = load i8** %vaarg.addr42, align 8
  %24 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call43 = call i32 @fputs(i8* %23, %struct._IO_FILE* %24) #4
  br label %for.inc

sw.bb44:                                          ; preds = %if.then
  %gp_offset47 = load i32* %gp_offset_p, align 16
  %fits_in_gp48 = icmp ult i32 %gp_offset47, 41
  br i1 %fits_in_gp48, label %vaarg.end55, label %vaarg.end55.thread

vaarg.end55.thread:                               ; preds = %sw.bb44
  %overflow_arg_area53 = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next54 = getelementptr i8* %overflow_arg_area53, i64 8
  store i8* %overflow_arg_area.next54, i8** %overflow_arg_area_p, align 8
  %vaarg.addr56107 = bitcast i8* %overflow_arg_area53 to i32*
  %25 = load i32* %vaarg.addr56107, align 4
  br label %vaarg.in_mem63

vaarg.end55:                                      ; preds = %sw.bb44
  %reg_save_area50 = load i8** %0, align 16
  %26 = sext i32 %gp_offset47 to i64
  %27 = getelementptr i8* %reg_save_area50, i64 %26
  %28 = add i32 %gp_offset47, 8
  store i32 %28, i32* %gp_offset_p, align 16
  %vaarg.addr56 = bitcast i8* %27 to i32*
  %29 = load i32* %vaarg.addr56, align 4
  %fits_in_gp60 = icmp ult i32 %28, 41
  br i1 %fits_in_gp60, label %vaarg.in_reg61, label %vaarg.in_mem63

vaarg.in_reg61:                                   ; preds = %vaarg.end55
  %reg_save_area62 = load i8** %0, align 16
  %30 = sext i32 %28 to i64
  %31 = getelementptr i8* %reg_save_area62, i64 %30
  %32 = add i32 %gp_offset47, 16
  store i32 %32, i32* %gp_offset_p, align 16
  br label %vaarg.end67

vaarg.in_mem63:                                   ; preds = %vaarg.end55.thread, %vaarg.end55
  %33 = phi i32 [ %25, %vaarg.end55.thread ], [ %29, %vaarg.end55 ]
  %overflow_arg_area65 = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next66 = getelementptr i8* %overflow_arg_area65, i64 8
  store i8* %overflow_arg_area.next66, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end67

vaarg.end67:                                      ; preds = %vaarg.in_mem63, %vaarg.in_reg61
  %34 = phi i32 [ %29, %vaarg.in_reg61 ], [ %33, %vaarg.in_mem63 ]
  %vaarg.addr68.in = phi i8* [ %31, %vaarg.in_reg61 ], [ %overflow_arg_area65, %vaarg.in_mem63 ]
  %vaarg.addr68 = bitcast i8* %vaarg.addr68.in to i32*
  %35 = load i32* %vaarg.addr68, align 4
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 %34, i32* %i.addr.i, align 4, !tbaa !2
  store i32 %35, i32* %j.addr.i, align 4, !tbaa !2
  call void @gtp_print_vertices(i32 1, i32* %i.addr.i, i32* %j.addr.i) #4
  call void @llvm.lifetime.end(i64 4, i8* %1) #1
  call void @llvm.lifetime.end(i64 4, i8* %2) #1
  br label %for.inc

sw.bb69:                                          ; preds = %if.then
  %gp_offset72 = load i32* %gp_offset_p, align 16
  %fits_in_gp73 = icmp ult i32 %gp_offset72, 41
  br i1 %fits_in_gp73, label %vaarg.in_reg74, label %vaarg.in_mem76

vaarg.in_reg74:                                   ; preds = %sw.bb69
  %reg_save_area75 = load i8** %0, align 16
  %36 = sext i32 %gp_offset72 to i64
  %37 = getelementptr i8* %reg_save_area75, i64 %36
  %38 = add i32 %gp_offset72, 8
  store i32 %38, i32* %gp_offset_p, align 16
  br label %vaarg.end80

vaarg.in_mem76:                                   ; preds = %sw.bb69
  %overflow_arg_area78 = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next79 = getelementptr i8* %overflow_arg_area78, i64 8
  store i8* %overflow_arg_area.next79, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end80

vaarg.end80:                                      ; preds = %vaarg.in_mem76, %vaarg.in_reg74
  %vaarg.addr81.in = phi i8* [ %37, %vaarg.in_reg74 ], [ %overflow_arg_area78, %vaarg.in_mem76 ]
  %vaarg.addr81 = bitcast i8* %vaarg.addr81.in to i32*
  %39 = load i32* %vaarg.addr81, align 4
  %cmp82 = icmp eq i32 %39, 1
  br i1 %cmp82, label %if.then84, label %if.else

if.then84:                                        ; preds = %vaarg.end80
  %40 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %41 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %40)
  br label %for.inc

if.else:                                          ; preds = %vaarg.end80
  %cmp86 = icmp eq i32 %39, 2
  %42 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  br i1 %cmp86, label %if.then88, label %if.else90

if.then88:                                        ; preds = %if.else
  %43 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %42)
  br label %for.inc

if.else90:                                        ; preds = %if.else
  %44 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %42)
  br label %for.inc

sw.default:                                       ; preds = %if.then
  %45 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([33 x i8]* @.str8, i64 0, i64 0), i32 %conv3) #4
  br label %for.inc

if.else95:                                        ; preds = %for.cond
  %conv = sext i8 %3 to i32
  %46 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call97 = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %46) #4
  br label %for.inc

for.inc:                                          ; preds = %if.else95, %if.then84, %if.else90, %if.then88, %sw.default, %vaarg.end67, %vaarg.end41, %vaarg.end27, %vaarg.end16, %vaarg.end
  %fmt.addr.1 = phi i8* [ %incdec.ptr, %sw.default ], [ %incdec.ptr, %if.then84 ], [ %incdec.ptr, %if.then88 ], [ %incdec.ptr, %if.else90 ], [ %incdec.ptr, %vaarg.end67 ], [ %incdec.ptr, %vaarg.end41 ], [ %incdec.ptr, %vaarg.end27 ], [ %incdec.ptr, %vaarg.end16 ], [ %incdec.ptr, %vaarg.end ], [ %fmt.addr.0, %if.else95 ]
  %incdec.ptr99 = getelementptr inbounds i8* %fmt.addr.1, i64 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.va_end(i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind optsize
declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @gtp_print_vertex(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4, !tbaa !2
  store i32 %j, i32* %j.addr, align 4, !tbaa !2
  call void @gtp_print_vertices(i32 1, i32* %i.addr, i32* %j.addr) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @gtp_printf(i8* nocapture %format, ...) #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %format, %struct.__va_list_tag* %arraydecay) #4
  call void @llvm.va_end(i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @vfprintf(%struct._IO_FILE* nocapture, i8* nocapture, %struct.__va_list_tag*) #2

; Function Attrs: nounwind optsize uwtable
define void @gtp_start_response(i32 %status) #0 {
entry:
  %cmp = icmp eq i32 %status, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #6
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i32* @current_id, align 4, !tbaa !2
  %cmp1 = icmp slt i32 %0, 0
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #6
  br label %if.end4

if.else3:                                         ; preds = %if.end
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), i32 %0) #6
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @gtp_finish_response() #0 {
entry:
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #6
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @gtp_success(i8* nocapture %format, ...) #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @gtp_start_response(i32 0) #6
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %format, %struct.__va_list_tag* %arraydecay) #4
  call void @llvm.va_end(i8* %arraydecay1)
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @gtp_decode_color(i8* nocapture %s, i32* nocapture %color) #0 {
entry:
  %color_string = alloca [7 x i8], align 1
  %n = alloca i32, align 4
  %arraydecay = getelementptr inbounds [7 x i8]* %color_string, i64 0, i64 0
  %call = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %s, i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0), i8* %arraydecay, i32* %n) #4
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %entry
  %call236 = call i64 @strlen(i8* %arraydecay) #5
  %conv37 = trunc i64 %call236 to i32
  %cmp338 = icmp sgt i32 %conv37, 0
  br i1 %cmp338, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds [7 x i8]* %color_string, i64 0, i64 %indvars.iv
  %0 = load i8* %arrayidx, align 1, !tbaa !0
  %conv5 = sext i8 %0 to i32
  %call6 = call i32 @tolower(i32 %conv5) #4
  %conv7 = trunc i32 %call6 to i8
  store i8 %conv7, i8* %arrayidx, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %call2 = call i64 @strlen(i8* %arraydecay) #5
  %conv = trunc i64 %call2 to i32
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %1, %conv
  br i1 %cmp3, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call11 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0)) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.end31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %call15 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #5
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.end31, label %if.else

if.else:                                          ; preds = %lor.lhs.false
  %call20 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8]* @.str17, i64 0, i64 0)) #5
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.end31, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.else
  %call25 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #5
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.end31, label %return

if.end31:                                         ; preds = %if.else, %lor.lhs.false23, %for.end, %lor.lhs.false
  %storemerge = phi i32 [ 2, %lor.lhs.false ], [ 2, %for.end ], [ 1, %lor.lhs.false23 ], [ 1, %if.else ]
  store i32 %storemerge, i32* %color, align 4, !tbaa !2
  %2 = load i32* %n, align 4, !tbaa !2
  br label %return

return:                                           ; preds = %lor.lhs.false23, %entry, %if.end31
  %retval.0 = phi i32 [ %2, %if.end31 ], [ 0, %entry ], [ 0, %lor.lhs.false23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @tolower(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @gtp_decode_coord(i8* nocapture %s, i32* %i, i32* %j) #0 {
entry:
  %column = alloca i8, align 1
  %row = alloca i32, align 4
  %n = alloca i32, align 4
  %call = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %s, i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0), i8* %column, i32* %row, i32* %n) #4
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load i8* %column, align 1, !tbaa !0
  %conv = sext i8 %0 to i32
  %call1 = call i32 @tolower(i32 %conv) #4
  %cmp2 = icmp eq i32 %call1, 105
  br i1 %cmp2, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %1 = load i8* %column, align 1, !tbaa !0
  %conv7 = sext i8 %1 to i32
  %call8 = call i32 @tolower(i32 %conv7) #4
  %sub = add nsw i32 %call8, -97
  store i32 %sub, i32* %j, align 4, !tbaa !2
  %2 = load i8* %column, align 1, !tbaa !0
  %conv10 = sext i8 %2 to i32
  %call11 = call i32 @tolower(i32 %conv10) #4
  %cmp12 = icmp sgt i32 %call11, 105
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end5
  %3 = load i32* %j, align 4, !tbaa !2
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %j, align 4, !tbaa !2
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end5
  %4 = load i32* @gtp_boardsize, align 4, !tbaa !2
  %5 = load i32* %row, align 4, !tbaa !2
  %sub16 = sub nsw i32 %4, %5
  store i32 %sub16, i32* %i, align 4, !tbaa !2
  %cmp17 = icmp slt i32 %sub16, 0
  br i1 %cmp17, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %6 = load i32* @gtp_boardsize, align 4, !tbaa !2
  %cmp19 = icmp slt i32 %sub16, %6
  br i1 %cmp19, label %lor.lhs.false21, label %return

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %7 = load i32* %j, align 4, !tbaa !2
  %cmp22 = icmp sgt i32 %7, -1
  %cmp25 = icmp slt i32 %7, %6
  %or.cond = and i1 %cmp22, %cmp25
  br i1 %or.cond, label %if.end28, label %return

if.end28:                                         ; preds = %lor.lhs.false21
  %8 = load void (i32, i32, i32*, i32*)** @vertex_transform_input_hook, align 8, !tbaa !3
  %cmp29 = icmp eq void (i32, i32, i32*, i32*)* %8, null
  br i1 %cmp29, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void %8(i32 %sub16, i32 %7, i32* %i, i32* %j) #4
  br label %if.end32

if.end32:                                         ; preds = %if.end28, %if.then31
  %9 = load i32* %n, align 4, !tbaa !2
  br label %return

return:                                           ; preds = %if.end15, %lor.lhs.false, %lor.lhs.false21, %if.end, %entry, %if.end32
  %retval.0 = phi i32 [ %9, %if.end32 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @gtp_decode_move(i8* nocapture %s, i32* nocapture %color, i32* %i, i32* %j) #0 {
entry:
  %n2 = alloca i32, align 4
  %buf = alloca [6 x i8], align 1
  %call = call i32 @gtp_decode_color(i8* %s, i32* %color) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %idx.ext = sext i32 %call to i64
  %add.ptr = getelementptr inbounds i8* %s, i64 %idx.ext
  %call1 = call i32 @gtp_decode_coord(i8* %add.ptr, i32* %i, i32* %j) #6
  store i32 %call1, i32* %n2, align 4, !tbaa !2
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end25

if.then3:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [6 x i8]* %buf, i64 0, i64 0
  %call6 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i8* %arraydecay, i32* %n2) #4
  %cmp7 = icmp eq i32 %call6, 1
  br i1 %cmp7, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %if.then3
  %call1136 = call i64 @strlen(i8* %arraydecay) #5
  %conv37 = trunc i64 %call1136 to i32
  %cmp1238 = icmp sgt i32 %conv37, 0
  br i1 %cmp1238, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds [6 x i8]* %buf, i64 0, i64 %indvars.iv
  %0 = load i8* %arrayidx, align 1, !tbaa !0
  %conv14 = sext i8 %0 to i32
  %call15 = call i32 @tolower(i32 %conv14) #4
  %conv16 = trunc i32 %call15 to i8
  store i8 %conv16, i8* %arrayidx, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %call11 = call i64 @strlen(i8* %arraydecay) #5
  %conv = trunc i64 %call11 to i32
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %1, %conv
  br i1 %cmp12, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call20 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0)) #5
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.end24, label %return

if.end24:                                         ; preds = %for.end
  store i32 -1, i32* %i, align 4, !tbaa !2
  store i32 -1, i32* %j, align 4, !tbaa !2
  %.pre = load i32* %n2, align 4, !tbaa !2
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end
  %2 = phi i32 [ %.pre, %if.end24 ], [ %call1, %if.end ]
  %add = add nsw i32 %2, %call
  br label %return

return:                                           ; preds = %for.end, %if.then3, %entry, %if.end25
  %retval.0 = phi i32 [ %add, %if.end25 ], [ 0, %entry ], [ 0, %if.then3 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @gtp_print_vertices(i32 %n, i32* nocapture %movei, i32* nocapture %movej) #0 {
entry:
  %ri = alloca i32, align 4
  %rj = alloca i32, align 4
  %b.067.i = add i32 %n, -1
  %cmp68.i = icmp sgt i32 %b.067.i, 0
  br i1 %cmp68.i, label %for.cond1.preheader.lr.ph.i, label %for.cond.preheader

for.cond1.preheader.lr.ph.i:                      ; preds = %entry
  %0 = sext i32 %b.067.i to i64
  br label %for.body3.lr.ph.i

for.cond.loopexit.i:                              ; preds = %for.inc.i
  %indvars.iv.next65 = add i32 %indvars.iv64, -1
  %cmp.i = icmp sgt i32 %indvars.iv.next65, 0
  %indvars.iv.next73.i = add i64 %indvars.iv72.i, -1
  br i1 %cmp.i, label %for.body3.lr.ph.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.loopexit.i, %entry
  %cmp62 = icmp sgt i32 %n, 0
  br i1 %cmp62, label %for.body, label %for.end

for.body3.lr.ph.i:                                ; preds = %for.cond.loopexit.i, %for.cond1.preheader.lr.ph.i
  %indvars.iv64 = phi i32 [ %indvars.iv.next65, %for.cond.loopexit.i ], [ %b.067.i, %for.cond1.preheader.lr.ph.i ]
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %for.cond.loopexit.i ], [ %0, %for.cond1.preheader.lr.ph.i ]
  %arrayidx5.i = getelementptr inbounds i32* %movei, i64 %indvars.iv72.i
  %arrayidx26.i = getelementptr inbounds i32* %movej, i64 %indvars.iv72.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i, %for.body3.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body3.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds i32* %movei, i64 %indvars.iv.i
  %1 = load i32* %arrayidx.i, align 4, !tbaa !2
  %2 = load i32* %arrayidx5.i, align 4, !tbaa !2
  %cmp6.i = icmp sgt i32 %1, %2
  br i1 %cmp6.i, label %for.body3.if.then_crit_edge.i, label %lor.lhs.false.i

for.body3.if.then_crit_edge.i:                    ; preds = %for.body3.i
  %arrayidx28.pre.i = getelementptr inbounds i32* %movej, i64 %indvars.iv.i
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body3.i
  %cmp11.i = icmp eq i32 %1, %2
  br i1 %cmp11.i, label %land.lhs.true.i, label %for.inc.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %arrayidx13.i = getelementptr inbounds i32* %movej, i64 %indvars.iv.i
  %3 = load i32* %arrayidx13.i, align 4, !tbaa !2
  %4 = load i32* %arrayidx26.i, align 4, !tbaa !2
  %cmp16.i = icmp sgt i32 %3, %4
  br i1 %cmp16.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i, %for.body3.if.then_crit_edge.i
  %arrayidx28.pre-phi.i = phi i32* [ %arrayidx28.pre.i, %for.body3.if.then_crit_edge.i ], [ %arrayidx13.i, %land.lhs.true.i ]
  store i32 %1, i32* %arrayidx5.i, align 4, !tbaa !2
  store i32 %2, i32* %arrayidx.i, align 4, !tbaa !2
  %5 = load i32* %arrayidx26.i, align 4, !tbaa !2
  %6 = load i32* %arrayidx28.pre-phi.i, align 4, !tbaa !2
  store i32 %6, i32* %arrayidx26.i, align 4, !tbaa !2
  store i32 %5, i32* %arrayidx28.pre-phi.i, align 4, !tbaa !2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i, %lor.lhs.false.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv66 = trunc i64 %indvars.iv.next.i to i32
  %exitcond67 = icmp eq i32 %lftr.wideiv66, %indvars.iv64
  br i1 %exitcond67, label %for.cond.loopexit.i, label %for.body3.i

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %7 = trunc i64 %indvars.iv to i32
  %cmp1 = icmp sgt i32 %7, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %arrayidx = getelementptr inbounds i32* %movei, i64 %indvars.iv
  %8 = load i32* %arrayidx, align 4, !tbaa !2
  %cmp2 = icmp eq i32 %8, -1
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %arrayidx4 = getelementptr inbounds i32* %movej, i64 %indvars.iv
  %9 = load i32* %arrayidx4, align 4, !tbaa !2
  %cmp5 = icmp eq i32 %9, -1
  br i1 %cmp5, label %if.then6, label %if.then21

if.then6:                                         ; preds = %land.lhs.true
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0)) #6
  br label %for.inc

if.else:                                          ; preds = %if.end
  %cmp9 = icmp slt i32 %8, 0
  br i1 %cmp9, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %10 = load i32* @gtp_boardsize, align 4, !tbaa !2
  %cmp12 = icmp slt i32 %8, %10
  br i1 %cmp12, label %lor.lhs.false13, label %if.then21

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %arrayidx15 = getelementptr inbounds i32* %movej, i64 %indvars.iv
  %11 = load i32* %arrayidx15, align 4, !tbaa !2
  %cmp16 = icmp sgt i32 %11, -1
  %cmp20 = icmp slt i32 %11, %10
  %or.cond = and i1 %cmp16, %cmp20
  br i1 %or.cond, label %if.else22, label %if.then21

if.then21:                                        ; preds = %land.lhs.true, %lor.lhs.false13, %lor.lhs.false, %if.else
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([3 x i8]* @.str22, i64 0, i64 0)) #6
  br label %for.inc

if.else22:                                        ; preds = %lor.lhs.false13
  %12 = load void (i32, i32, i32*, i32*)** @vertex_transform_output_hook, align 8, !tbaa !3
  %cmp23 = icmp eq void (i32, i32, i32*, i32*)* %12, null
  br i1 %cmp23, label %if.else29, label %if.then24

if.then24:                                        ; preds = %if.else22
  call void %12(i32 %8, i32 %11, i32* %ri, i32* %rj) #4
  %.pre = load i32* %rj, align 4, !tbaa !2
  %.pre68 = load i32* @gtp_boardsize, align 4, !tbaa !2
  %.pre69 = load i32* %ri, align 4, !tbaa !2
  br label %if.end34

if.else29:                                        ; preds = %if.else22
  store i32 %8, i32* %ri, align 4, !tbaa !2
  store i32 %11, i32* %rj, align 4, !tbaa !2
  br label %if.end34

if.end34:                                         ; preds = %if.else29, %if.then24
  %13 = phi i32 [ %8, %if.else29 ], [ %.pre69, %if.then24 ]
  %14 = phi i32 [ %10, %if.else29 ], [ %.pre68, %if.then24 ]
  %15 = phi i32 [ %11, %if.else29 ], [ %.pre, %if.then24 ]
  %add = add nsw i32 %15, 65
  %cmp35 = icmp sgt i32 %15, 7
  %conv = zext i1 %cmp35 to i32
  %add36 = add nsw i32 %add, %conv
  %sub = sub nsw i32 %14, %13
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i32 %add36, i32 %sub) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.end34, %if.then21
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readonly }
attributes #6 = { optsize }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"int", metadata !0}
!3 = metadata !{metadata !"any pointer", metadata !0}
