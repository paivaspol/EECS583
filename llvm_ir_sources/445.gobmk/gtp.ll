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
@.str15 = private unnamed_addr constant [18 x i8] c"gtp_boardsize > 0\00", align 1
@.str16 = private unnamed_addr constant [59 x i8] c"../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c\00", align 1
@__PRETTY_FUNCTION__.gtp_decode_color = private unnamed_addr constant [36 x i8] c"int gtp_decode_color(char *, int *)\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"%6s%n\00", align 1
@.str18 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@__PRETTY_FUNCTION__.gtp_decode_coord = private unnamed_addr constant [43 x i8] c"int gtp_decode_coord(char *, int *, int *)\00", align 1
@.str20 = private unnamed_addr constant [8 x i8] c" %c%d%n\00", align 1
@__PRETTY_FUNCTION__.gtp_decode_move = private unnamed_addr constant [49 x i8] c"int gtp_decode_move(char *, int *, int *, int *)\00", align 1
@.str21 = private unnamed_addr constant [6 x i8] c"%5s%n\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@__PRETTY_FUNCTION__.gtp_print_vertices = private unnamed_addr constant [43 x i8] c"void gtp_print_vertices(int, int *, int *)\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str24 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str25 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @gtp_main_loop(%struct.gtp_command* nocapture %commands, %struct._IO_FILE* nocapture %gtp_input) #0 {
entry:
  %line = alloca [1000 x i8], align 16
  %command = alloca [1000 x i8], align 16
  %n = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.gtp_command* %commands}, i64 0, metadata !79), !dbg !253
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %gtp_input}, i64 0, metadata !80), !dbg !253
  %0 = getelementptr inbounds [1000 x i8]* %line, i64 0, i64 0, !dbg !254
  call void @llvm.lifetime.start(i64 1000, i8* %0) #2, !dbg !254
  call void @llvm.dbg.declare(metadata !{[1000 x i8]* %line}, metadata !81), !dbg !254
  %1 = getelementptr inbounds [1000 x i8]* %command, i64 0, i64 0, !dbg !255
  call void @llvm.lifetime.start(i64 1000, i8* %1) #2, !dbg !255
  call void @llvm.dbg.declare(metadata !{[1000 x i8]* %command}, metadata !85), !dbg !255
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !88), !dbg !256
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !89), !dbg !257
  %name116 = getelementptr inbounds %struct.gtp_command* %commands, i64 0, i32 0, !dbg !258
  br label %while.body

while.body:                                       ; preds = %if.end79, %if.end42, %entry
  %call = call i8* @fgets(i8* %0, i32 1000, %struct._IO_FILE* %gtp_input) #6, !dbg !260
  %tobool = icmp eq i8* %call, null, !dbg !260
  br i1 %tobool, label %while.end.split, label %for.cond, !dbg !260

for.cond:                                         ; preds = %while.body, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %while.body ]
  %p.0 = phi i8* [ %p.1, %for.inc ], [ %0, %while.body ]
  %arrayidx = getelementptr inbounds [1000 x i8]* %line, i64 0, i64 %indvars.iv, !dbg !261
  %2 = load i8* %arrayidx, align 1, !dbg !261, !tbaa !262
  switch i8 %2, label %if.else [
    i8 0, label %for.end
    i8 9, label %if.then7
  ], !dbg !261

if.then7:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %p.0, i64 1, !dbg !264
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !86), !dbg !264
  store i8 32, i8* %p.0, align 1, !dbg !264, !tbaa !262
  br label %for.inc, !dbg !264

if.else:                                          ; preds = %for.cond
  %.off = add i8 %2, -1, !dbg !265
  %3 = icmp ult i8 %.off, 9, !dbg !265
  br i1 %3, label %for.inc, label %lor.lhs.false, !dbg !265

lor.lhs.false:                                    ; preds = %if.else
  %.off113 = add i8 %2, -11, !dbg !265
  %4 = icmp ult i8 %.off113, 21, !dbg !265
  %cmp23 = icmp eq i8 %2, 127, !dbg !265
  %or.cond109 = or i1 %4, %cmp23, !dbg !265
  br i1 %or.cond109, label %for.inc, label %if.else26, !dbg !265

if.else26:                                        ; preds = %lor.lhs.false
  %cmp28 = icmp eq i8 %2, 35, !dbg !266
  br i1 %cmp28, label %for.end, label %if.else31, !dbg !266

if.else31:                                        ; preds = %if.else26
  %incdec.ptr32 = getelementptr inbounds i8* %p.0, i64 1, !dbg !267
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr32}, i64 0, metadata !86), !dbg !267
  store i8 %2, i8* %p.0, align 1, !dbg !267, !tbaa !262
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %if.else, %if.then7, %if.else31
  %p.1 = phi i8* [ %incdec.ptr, %if.then7 ], [ %incdec.ptr32, %if.else31 ], [ %p.0, %if.else ], [ %p.0, %lor.lhs.false ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !261
  br label %for.cond, !dbg !261

for.end:                                          ; preds = %for.cond, %if.else26
  store i8 0, i8* %p.0, align 1, !dbg !268, !tbaa !262
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !86), !dbg !269
  %call37 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i32* @current_id, i32* %n) #6, !dbg !270
  %cmp38 = icmp eq i32 %call37, 1, !dbg !270
  br i1 %cmp38, label %if.then40, label %if.else41, !dbg !270

if.then40:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !88), !dbg !271
  %5 = load i32* %n, align 4, !dbg !271, !tbaa !272
  %idx.ext = sext i32 %5 to i64, !dbg !271
  %add.ptr = getelementptr inbounds [1000 x i8]* %line, i64 0, i64 %idx.ext, !dbg !271
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !86), !dbg !271
  br label %if.end42, !dbg !271

if.else41:                                        ; preds = %for.end
  store i32 -1, i32* @current_id, align 4, !dbg !273, !tbaa !272
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then40
  %p.2 = phi i8* [ %add.ptr, %if.then40 ], [ %0, %if.else41 ]
  %call44 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %p.2, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* %1, i32* %n) #6, !dbg !274
  %cmp45 = icmp slt i32 %call44, 1, !dbg !274
  br i1 %cmp45, label %while.body, label %if.end48, !dbg !274

if.end48:                                         ; preds = %if.end42
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !88), !dbg !275
  %6 = load i32* %n, align 4, !dbg !275, !tbaa !272
  %idx.ext49 = sext i32 %6 to i64, !dbg !275
  %add.ptr50 = getelementptr inbounds i8* %p.2, i64 %idx.ext49, !dbg !275
  call void @llvm.dbg.value(metadata !{i8* %add.ptr50}, i64 0, metadata !86), !dbg !275
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !87), !dbg !258
  %7 = load i8** %name116, align 8, !dbg !258, !tbaa !276
  %cmp54117 = icmp eq i8* %7, null, !dbg !258
  br i1 %cmp54117, label %if.then77, label %for.body56, !dbg !258

for.cond51:                                       ; preds = %for.body56
  %name = getelementptr inbounds %struct.gtp_command* %commands, i64 %indvars.iv.next125, i32 0, !dbg !258
  %8 = load i8** %name, align 8, !dbg !258, !tbaa !276
  %cmp54 = icmp eq i8* %8, null, !dbg !258
  br i1 %cmp54, label %if.then77, label %for.body56, !dbg !258

for.body56:                                       ; preds = %if.end48, %for.cond51
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.cond51 ], [ 0, %if.end48 ]
  %9 = phi i8* [ %8, %for.cond51 ], [ %7, %if.end48 ]
  %name120 = phi i8** [ %name, %for.cond51 ], [ %name116, %if.end48 ]
  %call61 = call i32 @strcmp(i8* %1, i8* %9) #7, !dbg !277
  %cmp62 = icmp eq i32 %call61, 0, !dbg !277
  %indvars.iv.next125 = add i64 %indvars.iv124, 1, !dbg !258
  br i1 %cmp62, label %for.end71, label %for.cond51, !dbg !277

for.end71:                                        ; preds = %for.body56
  %function = getelementptr inbounds %struct.gtp_command* %commands, i64 %indvars.iv124, i32 1, !dbg !279
  %10 = load i32 (i8*)** %function, align 8, !dbg !279, !tbaa !276
  %call67 = call i32 %10(i8* %add.ptr50) #6, !dbg !279
  call void @llvm.dbg.value(metadata !{i32 %call67}, i64 0, metadata !89), !dbg !279
  %.pr = load i8** %name120, align 8, !dbg !281, !tbaa !276
  %cmp75 = icmp eq i8* %.pr, null, !dbg !281
  br i1 %cmp75, label %if.then77, label %if.end79, !dbg !281

if.then77:                                        ; preds = %if.end48, %for.cond51, %for.end71
  %status.1112 = phi i32 [ %call67, %for.end71 ], [ 0, %for.cond51 ], [ 0, %if.end48 ]
  %call78 = call i32 (i8*, ...)* @gtp_failure(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !282
  br label %if.end79, !dbg !282

if.end79:                                         ; preds = %if.then77, %for.end71
  %status.1111 = phi i32 [ %status.1112, %if.then77 ], [ %call67, %for.end71 ]
  switch i32 %status.1111, label %while.end.split [
    i32 1, label %while.cond.outer.backedge.thread
    i32 0, label %while.body
  ], !dbg !283

while.cond.outer.backedge.thread:                 ; preds = %if.end79
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0)) #6, !dbg !284
  br label %while.end.split

while.end.split:                                  ; preds = %if.end79, %while.body, %while.cond.outer.backedge.thread
  call void @llvm.lifetime.end(i64 1000, i8* %1) #2, !dbg !286
  call void @llvm.lifetime.end(i64 1000, i8* %0) #2, !dbg !286
  ret void, !dbg !286
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @gtp_failure(i8* nocapture %format, ...) #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %format}, i64 0, metadata !164), !dbg !287
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !165), !dbg !288
  call void @gtp_start_response(i32 1) #8, !dbg !289
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !290
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !290
  call void @llvm.va_start(i8* %arraydecay1), !dbg !290
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !291, !tbaa !276
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %format, %struct.__va_list_tag* %arraydecay) #6, !dbg !291
  call void @llvm.va_end(i8* %arraydecay1), !dbg !292
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #6, !dbg !293
  ret i32 0, !dbg !294
}

; Function Attrs: nounwind optsize uwtable
define void @gtp_panic() #0 {
entry:
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0)) #8, !dbg !295
  ret void, !dbg !296
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @gtp_internal_set_boardsize(i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !98), !dbg !297
  store i32 %size, i32* @gtp_boardsize, align 4, !dbg !298, !tbaa !272
  ret void, !dbg !299
}

; Function Attrs: nounwind optsize uwtable
define void @gtp_set_vertex_transform_hooks(void (i32, i32, i32*, i32*)* %in, void (i32, i32, i32*, i32*)* %out) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{void (i32, i32, i32*, i32*)* %in}, i64 0, metadata !108), !dbg !300
  tail call void @llvm.dbg.value(metadata !{void (i32, i32, i32*, i32*)* %out}, i64 0, metadata !109), !dbg !300
  store void (i32, i32, i32*, i32*)* %in, void (i32, i32, i32*, i32*)** @vertex_transform_input_hook, align 8, !dbg !301, !tbaa !276
  store void (i32, i32, i32*, i32*)* %out, void (i32, i32, i32*, i32*)** @vertex_transform_output_hook, align 8, !dbg !302, !tbaa !276
  ret void, !dbg !303
}

; Function Attrs: nounwind optsize uwtable
define void @gtp_mprintf(i8* nocapture %fmt, ...) #0 {
entry:
  %i.addr.i = alloca i32, align 4
  %j.addr.i = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !114), !dbg !304
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !115), !dbg !305
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !306
  call void @llvm.va_start(i8* %arraydecay1), !dbg !306
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !307
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !307
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !307
  %fp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 1, !dbg !308
  %1 = bitcast i32* %i.addr.i to i8*, !dbg !309
  %2 = bitcast i32* %j.addr.i to i8*, !dbg !309
  br label %for.cond, !dbg !311

for.cond:                                         ; preds = %for.inc, %entry
  %fmt.addr.0 = phi i8* [ %fmt, %entry ], [ %incdec.ptr99, %for.inc ]
  %3 = load i8* %fmt.addr.0, align 1, !dbg !311, !tbaa !262
  switch i8 %3, label %if.else95 [
    i8 0, label %for.end
    i8 37, label %if.then
  ], !dbg !311

if.then:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %fmt.addr.0, i64 1, !dbg !312
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !114), !dbg !312
  %4 = load i8* %incdec.ptr, align 1, !dbg !312, !tbaa !262
  %conv3 = sext i8 %4 to i32, !dbg !312
  switch i32 %conv3, label %sw.default [
    i32 99, label %sw.bb
    i32 100, label %sw.bb5
    i32 102, label %sw.bb19
    i32 115, label %sw.bb30
    i32 109, label %sw.bb44
    i32 67, label %sw.bb69
  ], !dbg !312

sw.bb:                                            ; preds = %if.then
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !307
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !307
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !307

vaarg.in_reg:                                     ; preds = %sw.bb
  %reg_save_area = load i8** %0, align 16, !dbg !307
  %5 = sext i32 %gp_offset to i64, !dbg !307
  %6 = getelementptr i8* %reg_save_area, i64 %5, !dbg !307
  %7 = add i32 %gp_offset, 8, !dbg !307
  store i32 %7, i32* %gp_offset_p, align 16, !dbg !307
  br label %vaarg.end, !dbg !307

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !307
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !307
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !307
  br label %vaarg.end, !dbg !307

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %6, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !307
  %8 = load i32* %vaarg.addr, align 4, !dbg !307
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !128), !dbg !307
  %9 = load %struct._IO_FILE** @stdout, align 8, !dbg !313, !tbaa !276
  %call = call i32 @_IO_putc(i32 %8, %struct._IO_FILE* %9) #6, !dbg !313
  br label %for.inc, !dbg !314

sw.bb5:                                           ; preds = %if.then
  %gp_offset8 = load i32* %gp_offset_p, align 16, !dbg !315
  %fits_in_gp9 = icmp ult i32 %gp_offset8, 41, !dbg !315
  br i1 %fits_in_gp9, label %vaarg.in_reg10, label %vaarg.in_mem12, !dbg !315

vaarg.in_reg10:                                   ; preds = %sw.bb5
  %reg_save_area11 = load i8** %0, align 16, !dbg !315
  %10 = sext i32 %gp_offset8 to i64, !dbg !315
  %11 = getelementptr i8* %reg_save_area11, i64 %10, !dbg !315
  %12 = add i32 %gp_offset8, 8, !dbg !315
  store i32 %12, i32* %gp_offset_p, align 16, !dbg !315
  br label %vaarg.end16, !dbg !315

vaarg.in_mem12:                                   ; preds = %sw.bb5
  %overflow_arg_area14 = load i8** %overflow_arg_area_p, align 8, !dbg !315
  %overflow_arg_area.next15 = getelementptr i8* %overflow_arg_area14, i64 8, !dbg !315
  store i8* %overflow_arg_area.next15, i8** %overflow_arg_area_p, align 8, !dbg !315
  br label %vaarg.end16, !dbg !315

vaarg.end16:                                      ; preds = %vaarg.in_mem12, %vaarg.in_reg10
  %vaarg.addr17.in = phi i8* [ %11, %vaarg.in_reg10 ], [ %overflow_arg_area14, %vaarg.in_mem12 ]
  %vaarg.addr17 = bitcast i8* %vaarg.addr17.in to i32*, !dbg !315
  %13 = load i32* %vaarg.addr17, align 4, !dbg !315
  call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !134), !dbg !315
  %14 = load %struct._IO_FILE** @stdout, align 8, !dbg !316, !tbaa !276
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i32 %13) #6, !dbg !316
  br label %for.inc, !dbg !317

sw.bb19:                                          ; preds = %if.then
  %fp_offset = load i32* %fp_offset_p, align 4, !dbg !308
  %fits_in_fp = icmp ult i32 %fp_offset, 161, !dbg !308
  br i1 %fits_in_fp, label %vaarg.in_reg21, label %vaarg.in_mem23, !dbg !308

vaarg.in_reg21:                                   ; preds = %sw.bb19
  %reg_save_area22 = load i8** %0, align 16, !dbg !308
  %15 = sext i32 %fp_offset to i64, !dbg !308
  %16 = getelementptr i8* %reg_save_area22, i64 %15, !dbg !308
  %17 = add i32 %fp_offset, 16, !dbg !308
  store i32 %17, i32* %fp_offset_p, align 4, !dbg !308
  br label %vaarg.end27, !dbg !308

vaarg.in_mem23:                                   ; preds = %sw.bb19
  %overflow_arg_area25 = load i8** %overflow_arg_area_p, align 8, !dbg !308
  %overflow_arg_area.next26 = getelementptr i8* %overflow_arg_area25, i64 8, !dbg !308
  store i8* %overflow_arg_area.next26, i8** %overflow_arg_area_p, align 8, !dbg !308
  br label %vaarg.end27, !dbg !308

vaarg.end27:                                      ; preds = %vaarg.in_mem23, %vaarg.in_reg21
  %vaarg.addr28.in = phi i8* [ %16, %vaarg.in_reg21 ], [ %overflow_arg_area25, %vaarg.in_mem23 ]
  %vaarg.addr28 = bitcast i8* %vaarg.addr28.in to double*, !dbg !308
  %18 = load double* %vaarg.addr28, align 8, !dbg !308
  call void @llvm.dbg.value(metadata !{double %18}, i64 0, metadata !136), !dbg !308
  %19 = load %struct._IO_FILE** @stdout, align 8, !dbg !318, !tbaa !276
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), double %18) #6, !dbg !318
  br label %for.inc, !dbg !319

sw.bb30:                                          ; preds = %if.then
  %gp_offset33 = load i32* %gp_offset_p, align 16, !dbg !320
  %fits_in_gp34 = icmp ult i32 %gp_offset33, 41, !dbg !320
  br i1 %fits_in_gp34, label %vaarg.in_reg35, label %vaarg.in_mem37, !dbg !320

vaarg.in_reg35:                                   ; preds = %sw.bb30
  %reg_save_area36 = load i8** %0, align 16, !dbg !320
  %20 = sext i32 %gp_offset33 to i64, !dbg !320
  %21 = getelementptr i8* %reg_save_area36, i64 %20, !dbg !320
  %22 = add i32 %gp_offset33, 8, !dbg !320
  store i32 %22, i32* %gp_offset_p, align 16, !dbg !320
  br label %vaarg.end41, !dbg !320

vaarg.in_mem37:                                   ; preds = %sw.bb30
  %overflow_arg_area39 = load i8** %overflow_arg_area_p, align 8, !dbg !320
  %overflow_arg_area.next40 = getelementptr i8* %overflow_arg_area39, i64 8, !dbg !320
  store i8* %overflow_arg_area.next40, i8** %overflow_arg_area_p, align 8, !dbg !320
  br label %vaarg.end41, !dbg !320

vaarg.end41:                                      ; preds = %vaarg.in_mem37, %vaarg.in_reg35
  %vaarg.addr42.in = phi i8* [ %21, %vaarg.in_reg35 ], [ %overflow_arg_area39, %vaarg.in_mem37 ]
  %vaarg.addr42 = bitcast i8* %vaarg.addr42.in to i8**, !dbg !320
  %23 = load i8** %vaarg.addr42, align 8, !dbg !320
  call void @llvm.dbg.value(metadata !{i8* %23}, i64 0, metadata !139), !dbg !320
  %24 = load %struct._IO_FILE** @stdout, align 8, !dbg !321, !tbaa !276
  %call43 = call i32 @fputs(i8* %23, %struct._IO_FILE* %24) #6, !dbg !321
  br label %for.inc, !dbg !322

sw.bb44:                                          ; preds = %if.then
  %gp_offset47 = load i32* %gp_offset_p, align 16, !dbg !323
  %fits_in_gp48 = icmp ult i32 %gp_offset47, 41, !dbg !323
  br i1 %fits_in_gp48, label %vaarg.end55, label %vaarg.end55.thread, !dbg !323

vaarg.end55.thread:                               ; preds = %sw.bb44
  %overflow_arg_area53 = load i8** %overflow_arg_area_p, align 8, !dbg !323
  %overflow_arg_area.next54 = getelementptr i8* %overflow_arg_area53, i64 8, !dbg !323
  store i8* %overflow_arg_area.next54, i8** %overflow_arg_area_p, align 8, !dbg !323
  %vaarg.addr56107 = bitcast i8* %overflow_arg_area53 to i32*, !dbg !323
  %25 = load i32* %vaarg.addr56107, align 4, !dbg !323
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !141), !dbg !323
  br label %vaarg.in_mem63, !dbg !324

vaarg.end55:                                      ; preds = %sw.bb44
  %reg_save_area50 = load i8** %0, align 16, !dbg !323
  %26 = sext i32 %gp_offset47 to i64, !dbg !323
  %27 = getelementptr i8* %reg_save_area50, i64 %26, !dbg !323
  %28 = add i32 %gp_offset47, 8, !dbg !323
  store i32 %28, i32* %gp_offset_p, align 16, !dbg !323
  %vaarg.addr56 = bitcast i8* %27 to i32*, !dbg !323
  %29 = load i32* %vaarg.addr56, align 4, !dbg !323
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !141), !dbg !323
  %fits_in_gp60 = icmp ult i32 %28, 41, !dbg !324
  br i1 %fits_in_gp60, label %vaarg.in_reg61, label %vaarg.in_mem63, !dbg !324

vaarg.in_reg61:                                   ; preds = %vaarg.end55
  %reg_save_area62 = load i8** %0, align 16, !dbg !324
  %30 = sext i32 %28 to i64, !dbg !324
  %31 = getelementptr i8* %reg_save_area62, i64 %30, !dbg !324
  %32 = add i32 %gp_offset47, 16, !dbg !324
  store i32 %32, i32* %gp_offset_p, align 16, !dbg !324
  br label %vaarg.end67, !dbg !324

vaarg.in_mem63:                                   ; preds = %vaarg.end55.thread, %vaarg.end55
  %33 = phi i32 [ %25, %vaarg.end55.thread ], [ %29, %vaarg.end55 ]
  %overflow_arg_area65 = load i8** %overflow_arg_area_p, align 8, !dbg !324
  %overflow_arg_area.next66 = getelementptr i8* %overflow_arg_area65, i64 8, !dbg !324
  store i8* %overflow_arg_area.next66, i8** %overflow_arg_area_p, align 8, !dbg !324
  br label %vaarg.end67, !dbg !324

vaarg.end67:                                      ; preds = %vaarg.in_mem63, %vaarg.in_reg61
  %34 = phi i32 [ %29, %vaarg.in_reg61 ], [ %33, %vaarg.in_mem63 ]
  %vaarg.addr68.in = phi i8* [ %31, %vaarg.in_reg61 ], [ %overflow_arg_area65, %vaarg.in_mem63 ]
  %vaarg.addr68 = bitcast i8* %vaarg.addr68.in to i32*, !dbg !324
  %35 = load i32* %vaarg.addr68, align 4, !dbg !324
  call void @llvm.dbg.value(metadata !{i32 %35}, i64 0, metadata !143), !dbg !324
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !309
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !309
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !325) #2, !dbg !309
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !233), !dbg !309
  store i32 %34, i32* %i.addr.i, align 4, !tbaa !272
  call void @llvm.dbg.declare(metadata !{i32* %i.addr.i}, metadata !233) #2, !dbg !309
  call void @llvm.dbg.value(metadata !{i32 %35}, i64 0, metadata !326) #2, !dbg !309
  call void @llvm.dbg.value(metadata !{i32 %35}, i64 0, metadata !234), !dbg !309
  store i32 %35, i32* %j.addr.i, align 4, !tbaa !272
  call void @llvm.dbg.declare(metadata !{i32* %j.addr.i}, metadata !234) #2, !dbg !309
  call void @gtp_print_vertices(i32 1, i32* %i.addr.i, i32* %j.addr.i) #6, !dbg !327
  call void @llvm.lifetime.end(i64 4, i8* %1) #2, !dbg !328
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !328
  br label %for.inc, !dbg !329

sw.bb69:                                          ; preds = %if.then
  %gp_offset72 = load i32* %gp_offset_p, align 16, !dbg !330
  %fits_in_gp73 = icmp ult i32 %gp_offset72, 41, !dbg !330
  br i1 %fits_in_gp73, label %vaarg.in_reg74, label %vaarg.in_mem76, !dbg !330

vaarg.in_reg74:                                   ; preds = %sw.bb69
  %reg_save_area75 = load i8** %0, align 16, !dbg !330
  %36 = sext i32 %gp_offset72 to i64, !dbg !330
  %37 = getelementptr i8* %reg_save_area75, i64 %36, !dbg !330
  %38 = add i32 %gp_offset72, 8, !dbg !330
  store i32 %38, i32* %gp_offset_p, align 16, !dbg !330
  br label %vaarg.end80, !dbg !330

vaarg.in_mem76:                                   ; preds = %sw.bb69
  %overflow_arg_area78 = load i8** %overflow_arg_area_p, align 8, !dbg !330
  %overflow_arg_area.next79 = getelementptr i8* %overflow_arg_area78, i64 8, !dbg !330
  store i8* %overflow_arg_area.next79, i8** %overflow_arg_area_p, align 8, !dbg !330
  br label %vaarg.end80, !dbg !330

vaarg.end80:                                      ; preds = %vaarg.in_mem76, %vaarg.in_reg74
  %vaarg.addr81.in = phi i8* [ %37, %vaarg.in_reg74 ], [ %overflow_arg_area78, %vaarg.in_mem76 ]
  %vaarg.addr81 = bitcast i8* %vaarg.addr81.in to i32*, !dbg !330
  %39 = load i32* %vaarg.addr81, align 4, !dbg !330
  call void @llvm.dbg.value(metadata !{i32 %39}, i64 0, metadata !144), !dbg !330
  %cmp82 = icmp eq i32 %39, 1, !dbg !331
  br i1 %cmp82, label %if.then84, label %if.else, !dbg !331

if.then84:                                        ; preds = %vaarg.end80
  %40 = load %struct._IO_FILE** @stdout, align 8, !dbg !332, !tbaa !276
  %41 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %40), !dbg !332
  br label %for.inc, !dbg !332

if.else:                                          ; preds = %vaarg.end80
  %cmp86 = icmp eq i32 %39, 2, !dbg !333
  %42 = load %struct._IO_FILE** @stdout, align 8, !dbg !334, !tbaa !276
  br i1 %cmp86, label %if.then88, label %if.else90, !dbg !333

if.then88:                                        ; preds = %if.else
  %43 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %42), !dbg !334
  br label %for.inc, !dbg !334

if.else90:                                        ; preds = %if.else
  %44 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %42), !dbg !335
  br label %for.inc

sw.default:                                       ; preds = %if.then
  %45 = load %struct._IO_FILE** @stdout, align 8, !dbg !336, !tbaa !276
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([33 x i8]* @.str8, i64 0, i64 0), i32 %conv3) #6, !dbg !336
  br label %for.inc, !dbg !337

if.else95:                                        ; preds = %for.cond
  %conv = sext i8 %3 to i32, !dbg !338
  %46 = load %struct._IO_FILE** @stdout, align 8, !dbg !339, !tbaa !276
  %call97 = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %46) #6, !dbg !339
  br label %for.inc

for.inc:                                          ; preds = %if.else95, %if.then84, %if.else90, %if.then88, %sw.default, %vaarg.end67, %vaarg.end41, %vaarg.end27, %vaarg.end16, %vaarg.end
  %fmt.addr.1 = phi i8* [ %incdec.ptr, %sw.default ], [ %incdec.ptr, %if.then84 ], [ %incdec.ptr, %if.then88 ], [ %incdec.ptr, %if.else90 ], [ %incdec.ptr, %vaarg.end67 ], [ %incdec.ptr, %vaarg.end41 ], [ %incdec.ptr, %vaarg.end27 ], [ %incdec.ptr, %vaarg.end16 ], [ %incdec.ptr, %vaarg.end ], [ %fmt.addr.0, %if.else95 ]
  %incdec.ptr99 = getelementptr inbounds i8* %fmt.addr.1, i64 1, !dbg !311
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr99}, i64 0, metadata !114), !dbg !311
  br label %for.cond, !dbg !311

for.end:                                          ; preds = %for.cond
  call void @llvm.va_end(i8* %arraydecay1), !dbg !340
  ret void, !dbg !341
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @gtp_print_vertex(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !233), !dbg !342
  store i32 %i, i32* %i.addr, align 4, !tbaa !272
  call void @llvm.dbg.declare(metadata !{i32* %i.addr}, metadata !233), !dbg !342
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !234), !dbg !342
  store i32 %j, i32* %j.addr, align 4, !tbaa !272
  call void @llvm.dbg.declare(metadata !{i32* %j.addr}, metadata !234), !dbg !342
  call void @gtp_print_vertices(i32 1, i32* %i.addr, i32* %j.addr) #8, !dbg !343
  ret void, !dbg !344
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @gtp_printf(i8* nocapture %format, ...) #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %format}, i64 0, metadata !148), !dbg !345
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !149), !dbg !346
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !347
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !347
  call void @llvm.va_start(i8* %arraydecay1), !dbg !347
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !348, !tbaa !276
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %format, %struct.__va_list_tag* %arraydecay) #6, !dbg !348
  call void @llvm.va_end(i8* %arraydecay1), !dbg !349
  ret void, !dbg !350
}

; Function Attrs: nounwind optsize
declare i32 @vfprintf(%struct._IO_FILE* nocapture, i8* nocapture, %struct.__va_list_tag*) #3

; Function Attrs: nounwind optsize uwtable
define void @gtp_start_response(i32 %status) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %status}, i64 0, metadata !152), !dbg !351
  %cmp = icmp eq i32 %status, 0, !dbg !352
  br i1 %cmp, label %if.then, label %if.else, !dbg !352

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #8, !dbg !353
  br label %if.end, !dbg !353

if.else:                                          ; preds = %entry
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #8, !dbg !354
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i32* @current_id, align 4, !dbg !355, !tbaa !272
  %cmp1 = icmp slt i32 %0, 0, !dbg !355
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !355

if.then2:                                         ; preds = %if.end
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #8, !dbg !356
  br label %if.end4, !dbg !356

if.else3:                                         ; preds = %if.end
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), i32 %0) #8, !dbg !357
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  ret void, !dbg !358
}

; Function Attrs: nounwind optsize uwtable
define i32 @gtp_finish_response() #0 {
entry:
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #8, !dbg !359
  ret i32 0, !dbg !360
}

; Function Attrs: nounwind optsize uwtable
define i32 @gtp_success(i8* nocapture %format, ...) #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %format}, i64 0, metadata !160), !dbg !361
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !161), !dbg !362
  call void @gtp_start_response(i32 0) #8, !dbg !363
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !364
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !364
  call void @llvm.va_start(i8* %arraydecay1), !dbg !364
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !365, !tbaa !276
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %format, %struct.__va_list_tag* %arraydecay) #6, !dbg !365
  call void @llvm.va_end(i8* %arraydecay1), !dbg !366
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #6, !dbg !367
  ret i32 0, !dbg !368
}

; Function Attrs: nounwind optsize uwtable
define i32 @gtp_decode_color(i8* nocapture %s, i32* nocapture %color) #0 {
entry:
  %color_string = alloca [7 x i8], align 1
  %n = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !173), !dbg !369
  call void @llvm.dbg.value(metadata !{i32* %color}, i64 0, metadata !174), !dbg !369
  call void @llvm.dbg.declare(metadata !{[7 x i8]* %color_string}, metadata !175), !dbg !370
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !180), !dbg !371
  %0 = load i32* @gtp_boardsize, align 4, !dbg !372, !tbaa !272
  %cmp = icmp sgt i32 %0, 0, !dbg !372
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !372

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str16, i64 0, i64 0), i32 312, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__.gtp_decode_color, i64 0, i64 0)) #9, !dbg !372
  unreachable, !dbg !372

cond.end:                                         ; preds = %entry
  %arraydecay = getelementptr inbounds [7 x i8]* %color_string, i64 0, i64 0, !dbg !373
  %call = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %s, i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* %arraydecay, i32* %n) #6, !dbg !373
  %cmp1 = icmp eq i32 %call, 1, !dbg !373
  br i1 %cmp1, label %for.cond.preheader, label %return, !dbg !373

for.cond.preheader:                               ; preds = %cond.end
  %call337 = call i64 @strlen(i8* %arraydecay) #7, !dbg !374
  %conv38 = trunc i64 %call337 to i32, !dbg !374
  %cmp439 = icmp sgt i32 %conv38, 0, !dbg !374
  br i1 %cmp439, label %for.body, label %for.end, !dbg !374

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds [7 x i8]* %color_string, i64 0, i64 %indvars.iv, !dbg !375
  %1 = load i8* %arrayidx, align 1, !dbg !375, !tbaa !262
  %conv6 = sext i8 %1 to i32, !dbg !375
  %call7 = call i32 @tolower(i32 %conv6) #6, !dbg !375
  call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !181), !dbg !375
  %conv8 = trunc i32 %call7 to i8, !dbg !377
  store i8 %conv8, i8* %arrayidx, align 1, !dbg !377, !tbaa !262
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !374
  %call3 = call i64 @strlen(i8* %arraydecay) #7, !dbg !374
  %conv = trunc i64 %call3 to i32, !dbg !374
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !374
  %cmp4 = icmp slt i32 %2, %conv, !dbg !374
  br i1 %cmp4, label %for.body, label %for.end, !dbg !374

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call12 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !378
  %cmp13 = icmp eq i32 %call12, 0, !dbg !378
  br i1 %cmp13, label %if.end32, label %lor.lhs.false, !dbg !378

lor.lhs.false:                                    ; preds = %for.end
  %call16 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !379
  %cmp17 = icmp eq i32 %call16, 0, !dbg !379
  br i1 %cmp17, label %if.end32, label %if.else, !dbg !379

if.else:                                          ; preds = %lor.lhs.false
  %call21 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !380
  %cmp22 = icmp eq i32 %call21, 0, !dbg !380
  br i1 %cmp22, label %if.end32, label %lor.lhs.false24, !dbg !380

lor.lhs.false24:                                  ; preds = %if.else
  %call26 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !381
  %cmp27 = icmp eq i32 %call26, 0, !dbg !381
  br i1 %cmp27, label %if.end32, label %return, !dbg !381

if.end32:                                         ; preds = %if.else, %lor.lhs.false24, %for.end, %lor.lhs.false
  %storemerge = phi i32 [ 2, %lor.lhs.false ], [ 2, %for.end ], [ 1, %lor.lhs.false24 ], [ 1, %if.else ]
  store i32 %storemerge, i32* %color, align 4, !dbg !382, !tbaa !272
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !180), !dbg !383
  %3 = load i32* %n, align 4, !dbg !383, !tbaa !272
  br label %return, !dbg !383

return:                                           ; preds = %lor.lhs.false24, %cond.end, %if.end32
  %retval.0 = phi i32 [ %3, %if.end32 ], [ 0, %cond.end ], [ 0, %lor.lhs.false24 ]
  ret i32 %retval.0, !dbg !384
}

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @tolower(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @gtp_decode_coord(i8* nocapture %s, i32* %i, i32* %j) #0 {
entry:
  %column = alloca i8, align 1
  %row = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !188), !dbg !385
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !189), !dbg !385
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !190), !dbg !385
  call void @llvm.dbg.declare(metadata !{i8* %column}, metadata !191), !dbg !386
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !192), !dbg !387
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !193), !dbg !388
  %0 = load i32* @gtp_boardsize, align 4, !dbg !389, !tbaa !272
  %cmp = icmp sgt i32 %0, 0, !dbg !389
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !389

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str16, i64 0, i64 0), i32 344, i8* getelementptr inbounds ([43 x i8]* @__PRETTY_FUNCTION__.gtp_decode_coord, i64 0, i64 0)) #9, !dbg !389
  unreachable, !dbg !389

cond.end:                                         ; preds = %entry
  %call = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %s, i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0), i8* %column, i32* %row, i32* %n) #6, !dbg !390
  %cmp1 = icmp eq i32 %call, 2, !dbg !390
  br i1 %cmp1, label %if.end, label %return, !dbg !390

if.end:                                           ; preds = %cond.end
  call void @llvm.dbg.value(metadata !{i8* %column}, i64 0, metadata !191), !dbg !391
  %1 = load i8* %column, align 1, !dbg !391, !tbaa !262
  %conv = sext i8 %1 to i32, !dbg !391
  %call2 = call i32 @tolower(i32 %conv) #6, !dbg !391
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !194), !dbg !391
  %cmp3 = icmp eq i32 %call2, 105, !dbg !393
  br i1 %cmp3, label %return, label %if.end6, !dbg !393

if.end6:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i8* %column}, i64 0, metadata !191), !dbg !394
  %2 = load i8* %column, align 1, !dbg !394, !tbaa !262
  %conv8 = sext i8 %2 to i32, !dbg !394
  %call9 = call i32 @tolower(i32 %conv8) #6, !dbg !394
  call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !196), !dbg !394
  %sub = add nsw i32 %call9, -97, !dbg !396
  store i32 %sub, i32* %j, align 4, !dbg !396, !tbaa !272
  call void @llvm.dbg.value(metadata !{i8* %column}, i64 0, metadata !191), !dbg !397
  %3 = load i8* %column, align 1, !dbg !397, !tbaa !262
  %conv11 = sext i8 %3 to i32, !dbg !397
  %call12 = call i32 @tolower(i32 %conv11) #6, !dbg !397
  call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !198), !dbg !397
  %cmp13 = icmp sgt i32 %call12, 105, !dbg !399
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !399

if.then15:                                        ; preds = %if.end6
  %4 = load i32* %j, align 4, !dbg !400, !tbaa !272
  %dec = add nsw i32 %4, -1, !dbg !400
  store i32 %dec, i32* %j, align 4, !dbg !400, !tbaa !272
  br label %if.end16, !dbg !400

if.end16:                                         ; preds = %if.then15, %if.end6
  %5 = load i32* @gtp_boardsize, align 4, !dbg !401, !tbaa !272
  call void @llvm.dbg.value(metadata !{i32* %row}, i64 0, metadata !192), !dbg !401
  %6 = load i32* %row, align 4, !dbg !401, !tbaa !272
  %sub17 = sub nsw i32 %5, %6, !dbg !401
  store i32 %sub17, i32* %i, align 4, !dbg !401, !tbaa !272
  %cmp18 = icmp slt i32 %sub17, 0, !dbg !402
  br i1 %cmp18, label %return, label %lor.lhs.false, !dbg !402

lor.lhs.false:                                    ; preds = %if.end16
  %7 = load i32* @gtp_boardsize, align 4, !dbg !402, !tbaa !272
  %cmp20 = icmp slt i32 %sub17, %7, !dbg !402
  br i1 %cmp20, label %lor.lhs.false22, label %return, !dbg !402

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %8 = load i32* %j, align 4, !dbg !402, !tbaa !272
  %cmp23 = icmp sgt i32 %8, -1, !dbg !402
  %cmp26 = icmp slt i32 %8, %7, !dbg !402
  %or.cond = and i1 %cmp23, %cmp26, !dbg !402
  br i1 %or.cond, label %if.end29, label %return, !dbg !402

if.end29:                                         ; preds = %lor.lhs.false22
  %9 = load void (i32, i32, i32*, i32*)** @vertex_transform_input_hook, align 8, !dbg !403, !tbaa !276
  %cmp30 = icmp eq void (i32, i32, i32*, i32*)* %9, null, !dbg !403
  br i1 %cmp30, label %if.end33, label %if.then32, !dbg !403

if.then32:                                        ; preds = %if.end29
  call void %9(i32 %sub17, i32 %8, i32* %i, i32* %j) #6, !dbg !404
  br label %if.end33, !dbg !404

if.end33:                                         ; preds = %if.end29, %if.then32
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !193), !dbg !405
  %10 = load i32* %n, align 4, !dbg !405, !tbaa !272
  br label %return, !dbg !405

return:                                           ; preds = %if.end16, %lor.lhs.false, %lor.lhs.false22, %if.end, %cond.end, %if.end33
  %retval.0 = phi i32 [ %10, %if.end33 ], [ 0, %cond.end ], [ 0, %if.end ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false ], [ 0, %if.end16 ]
  ret i32 %retval.0, !dbg !406
}

; Function Attrs: nounwind optsize uwtable
define i32 @gtp_decode_move(i8* nocapture %s, i32* nocapture %color, i32* %i, i32* %j) #0 {
entry:
  %n2 = alloca i32, align 4
  %buf = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !204), !dbg !407
  call void @llvm.dbg.value(metadata !{i32* %color}, i64 0, metadata !205), !dbg !407
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !206), !dbg !407
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !207), !dbg !407
  call void @llvm.dbg.declare(metadata !{i32* %n2}, metadata !209), !dbg !408
  %0 = load i32* @gtp_boardsize, align 4, !dbg !409, !tbaa !272
  %cmp = icmp sgt i32 %0, 0, !dbg !409
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !409

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str16, i64 0, i64 0), i32 376, i8* getelementptr inbounds ([49 x i8]* @__PRETTY_FUNCTION__.gtp_decode_move, i64 0, i64 0)) #9, !dbg !409
  unreachable, !dbg !409

cond.end:                                         ; preds = %entry
  %call = call i32 @gtp_decode_color(i8* %s, i32* %color) #8, !dbg !410
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !208), !dbg !410
  %cmp1 = icmp eq i32 %call, 0, !dbg !411
  br i1 %cmp1, label %return, label %if.end, !dbg !411

if.end:                                           ; preds = %cond.end
  %idx.ext = sext i32 %call to i64, !dbg !412
  %add.ptr = getelementptr inbounds i8* %s, i64 %idx.ext, !dbg !412
  %call2 = call i32 @gtp_decode_coord(i8* %add.ptr, i32* %i, i32* %j) #8, !dbg !412
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !209), !dbg !412
  store i32 %call2, i32* %n2, align 4, !dbg !412, !tbaa !272
  %cmp3 = icmp eq i32 %call2, 0, !dbg !413
  br i1 %cmp3, label %if.then4, label %if.end26, !dbg !413

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata !{[6 x i8]* %buf}, metadata !211), !dbg !414
  %arraydecay = getelementptr inbounds [6 x i8]* %buf, i64 0, i64 0, !dbg !415
  %call7 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str21, i64 0, i64 0), i8* %arraydecay, i32* %n2) #6, !dbg !415
  %cmp8 = icmp eq i32 %call7, 1, !dbg !415
  br i1 %cmp8, label %for.cond.preheader, label %return, !dbg !415

for.cond.preheader:                               ; preds = %if.then4
  %call1237 = call i64 @strlen(i8* %arraydecay) #7, !dbg !416
  %conv38 = trunc i64 %call1237 to i32, !dbg !416
  %cmp1339 = icmp sgt i32 %conv38, 0, !dbg !416
  br i1 %cmp1339, label %for.body, label %for.end, !dbg !416

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds [6 x i8]* %buf, i64 0, i64 %indvars.iv, !dbg !417
  %1 = load i8* %arrayidx, align 1, !dbg !417, !tbaa !262
  %conv15 = sext i8 %1 to i32, !dbg !417
  %call16 = call i32 @tolower(i32 %conv15) #6, !dbg !417
  call void @llvm.dbg.value(metadata !{i32 %call16}, i64 0, metadata !216), !dbg !417
  %conv17 = trunc i32 %call16 to i8, !dbg !419
  store i8 %conv17, i8* %arrayidx, align 1, !dbg !419, !tbaa !262
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !416
  %call12 = call i64 @strlen(i8* %arraydecay) #7, !dbg !416
  %conv = trunc i64 %call12 to i32, !dbg !416
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !416
  %cmp13 = icmp slt i32 %2, %conv, !dbg !416
  br i1 %cmp13, label %for.body, label %for.end, !dbg !416

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call21 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !420
  %cmp22 = icmp eq i32 %call21, 0, !dbg !420
  br i1 %cmp22, label %if.end25, label %return, !dbg !420

if.end25:                                         ; preds = %for.end
  store i32 -1, i32* %i, align 4, !dbg !421, !tbaa !272
  store i32 -1, i32* %j, align 4, !dbg !422, !tbaa !272
  call void @llvm.dbg.value(metadata !{i32* %n2}, i64 0, metadata !209), !dbg !423
  %.pre = load i32* %n2, align 4, !dbg !423, !tbaa !272
  br label %if.end26, !dbg !424

if.end26:                                         ; preds = %if.end25, %if.end
  %3 = phi i32 [ %.pre, %if.end25 ], [ %call2, %if.end ]
  call void @llvm.dbg.value(metadata !{i32* %n2}, i64 0, metadata !209), !dbg !423
  %add = add nsw i32 %3, %call, !dbg !423
  br label %return, !dbg !423

return:                                           ; preds = %for.end, %if.then4, %cond.end, %if.end26
  %retval.0 = phi i32 [ %add, %if.end26 ], [ 0, %cond.end ], [ 0, %if.then4 ], [ 0, %for.end ]
  ret i32 %retval.0, !dbg !425
}

; Function Attrs: nounwind optsize uwtable
define void @gtp_print_vertices(i32 %n, i32* nocapture %movei, i32* nocapture %movej) #0 {
entry:
  %ri = alloca i32, align 4
  %rj = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !223), !dbg !426
  call void @llvm.dbg.value(metadata !{i32* %movei}, i64 0, metadata !224), !dbg !426
  call void @llvm.dbg.value(metadata !{i32* %movej}, i64 0, metadata !225), !dbg !426
  call void @llvm.dbg.declare(metadata !{i32* %ri}, metadata !227), !dbg !427
  call void @llvm.dbg.declare(metadata !{i32* %rj}, metadata !228), !dbg !427
  %0 = load i32* @gtp_boardsize, align 4, !dbg !428, !tbaa !272
  %cmp = icmp sgt i32 %0, 0, !dbg !428
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !428

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str16, i64 0, i64 0), i32 431, i8* getelementptr inbounds ([43 x i8]* @__PRETTY_FUNCTION__.gtp_print_vertices, i64 0, i64 0)) #9, !dbg !428
  unreachable, !dbg !428

cond.end:                                         ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !429), !dbg !431
  tail call void @llvm.dbg.value(metadata !{i32* %movei}, i64 0, metadata !432), !dbg !431
  tail call void @llvm.dbg.value(metadata !{i32* %movej}, i64 0, metadata !433), !dbg !431
  %b.067.i = add i32 %n, -1, !dbg !434
  %cmp68.i = icmp sgt i32 %b.067.i, 0, !dbg !434
  br i1 %cmp68.i, label %for.cond1.preheader.lr.ph.i, label %for.cond.preheader, !dbg !434

for.cond1.preheader.lr.ph.i:                      ; preds = %cond.end
  %1 = sext i32 %b.067.i to i64
  br label %for.body3.lr.ph.i, !dbg !434

for.cond.loopexit.i:                              ; preds = %for.inc.i
  %indvars.iv.next66 = add i32 %indvars.iv65, -1, !dbg !434
  %cmp.i = icmp sgt i32 %indvars.iv.next66, 0, !dbg !434
  %indvars.iv.next73.i = add i64 %indvars.iv72.i, -1, !dbg !434
  br i1 %cmp.i, label %for.body3.lr.ph.i, label %for.cond.preheader, !dbg !434

for.cond.preheader:                               ; preds = %for.cond.loopexit.i, %cond.end
  %cmp163 = icmp sgt i32 %n, 0, !dbg !435
  br i1 %cmp163, label %for.body, label %for.end, !dbg !435

for.body3.lr.ph.i:                                ; preds = %for.cond.loopexit.i, %for.cond1.preheader.lr.ph.i
  %indvars.iv65 = phi i32 [ %indvars.iv.next66, %for.cond.loopexit.i ], [ %b.067.i, %for.cond1.preheader.lr.ph.i ]
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %for.cond.loopexit.i ], [ %1, %for.cond1.preheader.lr.ph.i ]
  %arrayidx5.i = getelementptr inbounds i32* %movei, i64 %indvars.iv72.i, !dbg !437
  %arrayidx26.i = getelementptr inbounds i32* %movej, i64 %indvars.iv72.i, !dbg !438
  br label %for.body3.i, !dbg !439

for.body3.i:                                      ; preds = %for.inc.i, %for.body3.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body3.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds i32* %movei, i64 %indvars.iv.i, !dbg !437
  %2 = load i32* %arrayidx.i, align 4, !dbg !437, !tbaa !272
  %3 = load i32* %arrayidx5.i, align 4, !dbg !437, !tbaa !272
  %cmp6.i = icmp sgt i32 %2, %3, !dbg !437
  br i1 %cmp6.i, label %for.body3.if.then_crit_edge.i, label %lor.lhs.false.i, !dbg !437

for.body3.if.then_crit_edge.i:                    ; preds = %for.body3.i
  %arrayidx28.pre.i = getelementptr inbounds i32* %movej, i64 %indvars.iv.i, !dbg !440
  br label %if.then.i, !dbg !437

lor.lhs.false.i:                                  ; preds = %for.body3.i
  %cmp11.i = icmp eq i32 %2, %3, !dbg !437
  br i1 %cmp11.i, label %land.lhs.true.i, label %for.inc.i, !dbg !437

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %arrayidx13.i = getelementptr inbounds i32* %movej, i64 %indvars.iv.i, !dbg !437
  %4 = load i32* %arrayidx13.i, align 4, !dbg !437, !tbaa !272
  %5 = load i32* %arrayidx26.i, align 4, !dbg !437, !tbaa !272
  %cmp16.i = icmp sgt i32 %4, %5, !dbg !437
  br i1 %cmp16.i, label %if.then.i, label %for.inc.i, !dbg !437

if.then.i:                                        ; preds = %land.lhs.true.i, %for.body3.if.then_crit_edge.i
  %arrayidx28.pre-phi.i = phi i32* [ %arrayidx28.pre.i, %for.body3.if.then_crit_edge.i ], [ %arrayidx13.i, %land.lhs.true.i ], !dbg !440
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !441), !dbg !442
  store i32 %2, i32* %arrayidx5.i, align 4, !dbg !443, !tbaa !272
  store i32 %3, i32* %arrayidx.i, align 4, !dbg !444, !tbaa !272
  %6 = load i32* %arrayidx26.i, align 4, !dbg !438, !tbaa !272
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !441), !dbg !438
  %7 = load i32* %arrayidx28.pre-phi.i, align 4, !dbg !440, !tbaa !272
  store i32 %7, i32* %arrayidx26.i, align 4, !dbg !440, !tbaa !272
  store i32 %6, i32* %arrayidx28.pre-phi.i, align 4, !dbg !445, !tbaa !272
  br label %for.inc.i, !dbg !446

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i, %lor.lhs.false.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !439
  %lftr.wideiv67 = trunc i64 %indvars.iv.next.i to i32, !dbg !439
  %exitcond68 = icmp eq i32 %lftr.wideiv67, %indvars.iv65, !dbg !439
  br i1 %exitcond68, label %for.cond.loopexit.i, label %for.body3.i, !dbg !439

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %8 = trunc i64 %indvars.iv to i32, !dbg !447
  %cmp2 = icmp sgt i32 %8, 0, !dbg !447
  br i1 %cmp2, label %if.then, label %if.end, !dbg !447

if.then:                                          ; preds = %for.body
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #8, !dbg !449
  br label %if.end, !dbg !449

if.end:                                           ; preds = %if.then, %for.body
  %arrayidx = getelementptr inbounds i32* %movei, i64 %indvars.iv, !dbg !450
  %9 = load i32* %arrayidx, align 4, !dbg !450, !tbaa !272
  %cmp3 = icmp eq i32 %9, -1, !dbg !450
  br i1 %cmp3, label %land.lhs.true, label %if.else, !dbg !450

land.lhs.true:                                    ; preds = %if.end
  %arrayidx5 = getelementptr inbounds i32* %movej, i64 %indvars.iv, !dbg !450
  %10 = load i32* %arrayidx5, align 4, !dbg !450, !tbaa !272
  %cmp6 = icmp eq i32 %10, -1, !dbg !450
  br i1 %cmp6, label %if.then7, label %if.then22, !dbg !450

if.then7:                                         ; preds = %land.lhs.true
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0)) #8, !dbg !451
  br label %for.inc, !dbg !451

if.else:                                          ; preds = %if.end
  %cmp10 = icmp slt i32 %9, 0, !dbg !452
  br i1 %cmp10, label %if.then22, label %lor.lhs.false, !dbg !452

lor.lhs.false:                                    ; preds = %if.else
  %11 = load i32* @gtp_boardsize, align 4, !dbg !452, !tbaa !272
  %cmp13 = icmp slt i32 %9, %11, !dbg !452
  br i1 %cmp13, label %lor.lhs.false14, label %if.then22, !dbg !452

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %arrayidx16 = getelementptr inbounds i32* %movej, i64 %indvars.iv, !dbg !452
  %12 = load i32* %arrayidx16, align 4, !dbg !452, !tbaa !272
  %cmp17 = icmp sgt i32 %12, -1, !dbg !452
  %cmp21 = icmp slt i32 %12, %11, !dbg !452
  %or.cond = and i1 %cmp17, %cmp21, !dbg !452
  br i1 %or.cond, label %if.else23, label %if.then22, !dbg !452

if.then22:                                        ; preds = %land.lhs.true, %lor.lhs.false14, %lor.lhs.false, %if.else
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([3 x i8]* @.str24, i64 0, i64 0)) #8, !dbg !453
  br label %for.inc, !dbg !453

if.else23:                                        ; preds = %lor.lhs.false14
  %13 = load void (i32, i32, i32*, i32*)** @vertex_transform_output_hook, align 8, !dbg !454, !tbaa !276
  %cmp24 = icmp eq void (i32, i32, i32*, i32*)* %13, null, !dbg !454
  br i1 %cmp24, label %if.else30, label %if.then25, !dbg !454

if.then25:                                        ; preds = %if.else23
  call void %13(i32 %9, i32 %12, i32* %ri, i32* %rj) #6, !dbg !456
  call void @llvm.dbg.value(metadata !{i32* %rj}, i64 0, metadata !228), !dbg !457
  %.pre = load i32* %rj, align 4, !dbg !457, !tbaa !272
  %.pre69 = load i32* @gtp_boardsize, align 4, !dbg !457, !tbaa !272
  call void @llvm.dbg.value(metadata !{i32* %ri}, i64 0, metadata !227), !dbg !457
  %.pre70 = load i32* %ri, align 4, !dbg !457, !tbaa !272
  br label %if.end35, !dbg !456

if.else30:                                        ; preds = %if.else23
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !227), !dbg !458
  store i32 %9, i32* %ri, align 4, !dbg !458, !tbaa !272
  call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !228), !dbg !460
  store i32 %12, i32* %rj, align 4, !dbg !460, !tbaa !272
  br label %if.end35

if.end35:                                         ; preds = %if.else30, %if.then25
  %14 = phi i32 [ %9, %if.else30 ], [ %.pre70, %if.then25 ]
  %15 = phi i32 [ %11, %if.else30 ], [ %.pre69, %if.then25 ]
  %16 = phi i32 [ %12, %if.else30 ], [ %.pre, %if.then25 ]
  call void @llvm.dbg.value(metadata !{i32* %rj}, i64 0, metadata !228), !dbg !457
  %add = add nsw i32 %16, 65, !dbg !457
  %cmp36 = icmp sgt i32 %16, 7, !dbg !457
  %conv = zext i1 %cmp36 to i32, !dbg !457
  %add37 = add nsw i32 %add, %conv, !dbg !457
  call void @llvm.dbg.value(metadata !{i32* %ri}, i64 0, metadata !227), !dbg !457
  %sub = sub nsw i32 %15, %14, !dbg !457
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i32 %add37, i32 %sub) #8, !dbg !457
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %if.end35, %if.then22
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !435
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !435
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !435
  br i1 %exitcond, label %for.end, label %for.body, !dbg !435

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  ret void, !dbg !461
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !248, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !94, metadata !99, metadata !110, metadata !146, metadata !150, metadata !153, metadata !156, metadata !162, metadata !166, metadata !169, metadata !184, metadata !200, metadata !219, metadata !229, metadata !235}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_main_loop", metadata !"gtp_main_loop", metadata !"", i32 73, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.gtp_command*, %struct._IO_FILE*)* @gtp_main_loop, null, null, metadata !78, i32 74} ; [ DW_TAG_subprogram ] [line 73] [def] [scope 74] [gtp_main_loop]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !23}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gtp_command]
!9 = metadata !{i32 786451, metadata !10, null, metadata !"gtp_command", i32 62, i64 128, i64 64, i32 0, i32 0, null, metadata !11, i32 0, null, null} ; [ DW_TAG_structure_type ] [gtp_command] [line 62, size 128, align 64, offset 0] [from ]
!10 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !16}
!12 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"name", i32 63, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [name] [line 63, size 64, align 64, offset 0] [from ]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!15 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!16 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"function", i32 64, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [function] [line 64, size 64, align 64, offset 64] [from gtp_fn_ptr]
!17 = metadata !{i32 786454, metadata !10, null, metadata !"gtp_fn_ptr", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [gtp_fn_ptr] [line 56, size 0, align 0, offset 0] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!19 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{metadata !21, metadata !22}
!21 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!24 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!25 = metadata !{i32 786451, metadata !26, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!26 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !48, metadata !49, metadata !50, metadata !51, metadata !54, metadata !56, metadata !58, metadata !62, metadata !64, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !73, metadata !74}
!28 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!29 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!30 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!31 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!32 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!33 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!34 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!35 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!36 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!37 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!38 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!39 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !22} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!40 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !41} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!42 = metadata !{i32 786451, metadata !26, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!43 = metadata !{metadata !44, metadata !45, metadata !47}
!44 = metadata !{i32 786445, metadata !26, metadata !42, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786445, metadata !26, metadata !42, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!47 = metadata !{i32 786445, metadata !26, metadata !42, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!48 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !46} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!49 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !21} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!50 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !21} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!51 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !52} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!52 = metadata !{i32 786454, metadata !26, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!53 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!54 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !55} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!55 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!56 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !57} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!57 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!58 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !59} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!59 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !15, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!62 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !63} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!64 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !65} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!65 = metadata !{i32 786454, metadata !26, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!66 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!67 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!68 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!69 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!70 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!71 = metadata !{i32 786454, metadata !26, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!72 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!73 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !21} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!74 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !75} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!75 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !15, metadata !76, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90}
!79 = metadata !{i32 786689, metadata !4, metadata !"commands", metadata !5, i32 16777289, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [commands] [line 73]
!80 = metadata !{i32 786689, metadata !4, metadata !"gtp_input", metadata !5, i32 33554505, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gtp_input] [line 73]
!81 = metadata !{i32 786688, metadata !4, metadata !"line", metadata !5, i32 75, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 75]
!82 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8000, i64 8, i32 0, i32 0, metadata !15, metadata !83, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8000, align 8, offset 0] [from char]
!83 = metadata !{metadata !84}
!84 = metadata !{i32 786465, i64 0, i64 1000}     ; [ DW_TAG_subrange_type ] [0, 999]
!85 = metadata !{i32 786688, metadata !4, metadata !"command", metadata !5, i32 76, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [command] [line 76]
!86 = metadata !{i32 786688, metadata !4, metadata !"p", metadata !5, i32 77, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 77]
!87 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 78, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 78]
!88 = metadata !{i32 786688, metadata !4, metadata !"n", metadata !5, i32 79, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 79]
!89 = metadata !{i32 786688, metadata !4, metadata !"status", metadata !5, i32 80, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 80]
!90 = metadata !{i32 786688, metadata !91, metadata !"c", metadata !5, i32 89, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 89]
!91 = metadata !{i32 786443, metadata !1, metadata !92, i32 88, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!92 = metadata !{i32 786443, metadata !1, metadata !93, i32 88, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!93 = metadata !{i32 786443, metadata !1, metadata !4, i32 82, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!94 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_internal_set_boardsize", metadata !"gtp_internal_set_boardsize", metadata !"", i32 140, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @gtp_internal_set_boardsize, null, null, metadata !97, i32 141} ; [ DW_TAG_subprogram ] [line 140] [def] [scope 141] [gtp_internal_set_boardsize]
!95 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{null, metadata !21}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786689, metadata !94, metadata !"size", metadata !5, i32 16777356, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 140]
!99 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_set_vertex_transform_hooks", metadata !"gtp_set_vertex_transform_hooks", metadata !"", i32 151, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)*)* @gtp_set_vertex_transform_hooks, null, null, metadata !107, i32 152} ; [ DW_TAG_subprogram ] [line 151] [def] [scope 152] [gtp_set_vertex_transform_hooks]
!100 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{null, metadata !102, metadata !102}
!102 = metadata !{i32 786454, metadata !1, null, metadata !"gtp_transform_ptr", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [gtp_transform_ptr] [line 59, size 0, align 0, offset 0] [from ]
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!104 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{null, metadata !21, metadata !21, metadata !106, metadata !106}
!106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!107 = metadata !{metadata !108, metadata !109}
!108 = metadata !{i32 786689, metadata !99, metadata !"in", metadata !5, i32 16777367, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 151]
!109 = metadata !{i32 786689, metadata !99, metadata !"out", metadata !5, i32 33554583, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 151]
!110 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_mprintf", metadata !"gtp_mprintf", metadata !"", i32 164, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, ...)* @gtp_mprintf, null, null, metadata !113, i32 165} ; [ DW_TAG_subprogram ] [line 164] [def] [scope 165] [gtp_mprintf]
!111 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!112 = metadata !{null, metadata !13}
!113 = metadata !{metadata !114, metadata !115, metadata !128, metadata !134, metadata !136, metadata !139, metadata !141, metadata !143, metadata !144}
!114 = metadata !{i32 786689, metadata !110, metadata !"fmt", metadata !5, i32 16777380, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 164]
!115 = metadata !{i32 786688, metadata !110, metadata !"ap", metadata !5, i32 166, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 166]
!116 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!117 = metadata !{i32 786454, metadata !1, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!118 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 166, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 166, size 0, align 0, offset 0] [from ]
!119 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !120, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!120 = metadata !{i32 786454, metadata !1, null, metadata !"__va_list_tag", i32 166, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [__va_list_tag] [line 166, size 0, align 0, offset 0] [from __va_list_tag]
!121 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list_tag", i32 166, i64 192, i64 64, i32 0, i32 0, null, metadata !122, i32 0, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 166, size 192, align 64, offset 0] [from ]
!122 = metadata !{metadata !123, metadata !125, metadata !126, metadata !127}
!123 = metadata !{i32 786445, metadata !1, metadata !121, metadata !"gp_offset", i32 166, i64 32, i64 32, i64 0, i32 0, metadata !124} ; [ DW_TAG_member ] [gp_offset] [line 166, size 32, align 32, offset 0] [from unsigned int]
!124 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!125 = metadata !{i32 786445, metadata !1, metadata !121, metadata !"fp_offset", i32 166, i64 32, i64 32, i64 32, i32 0, metadata !124} ; [ DW_TAG_member ] [fp_offset] [line 166, size 32, align 32, offset 32] [from unsigned int]
!126 = metadata !{i32 786445, metadata !1, metadata !121, metadata !"overflow_arg_area", i32 166, i64 64, i64 64, i64 64, i32 0, metadata !63} ; [ DW_TAG_member ] [overflow_arg_area] [line 166, size 64, align 64, offset 64] [from ]
!127 = metadata !{i32 786445, metadata !1, metadata !121, metadata !"reg_save_area", i32 166, i64 64, i64 64, i64 128, i32 0, metadata !63} ; [ DW_TAG_member ] [reg_save_area] [line 166, size 64, align 64, offset 128] [from ]
!128 = metadata !{i32 786688, metadata !129, metadata !"c", metadata !5, i32 175, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 175]
!129 = metadata !{i32 786443, metadata !1, metadata !130, i32 173, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!130 = metadata !{i32 786443, metadata !1, metadata !131, i32 171, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!131 = metadata !{i32 786443, metadata !1, metadata !132, i32 170, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!132 = metadata !{i32 786443, metadata !1, metadata !133, i32 169, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!133 = metadata !{i32 786443, metadata !1, metadata !110, i32 169, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!134 = metadata !{i32 786688, metadata !135, metadata !"d", metadata !5, i32 181, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 181]
!135 = metadata !{i32 786443, metadata !1, metadata !130, i32 180, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!136 = metadata !{i32 786688, metadata !137, metadata !"f", metadata !5, i32 187, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 187]
!137 = metadata !{i32 786443, metadata !1, metadata !130, i32 186, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!138 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!139 = metadata !{i32 786688, metadata !140, metadata !"s", metadata !5, i32 193, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 193]
!140 = metadata !{i32 786443, metadata !1, metadata !130, i32 192, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!141 = metadata !{i32 786688, metadata !142, metadata !"m", metadata !5, i32 199, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 199]
!142 = metadata !{i32 786443, metadata !1, metadata !130, i32 198, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!143 = metadata !{i32 786688, metadata !142, metadata !"n", metadata !5, i32 200, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 200]
!144 = metadata !{i32 786688, metadata !145, metadata !"color", metadata !5, i32 206, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [color] [line 206]
!145 = metadata !{i32 786443, metadata !1, metadata !130, i32 205, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!146 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_printf", metadata !"gtp_printf", metadata !"", i32 229, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, ...)* @gtp_printf, null, null, metadata !147, i32 230} ; [ DW_TAG_subprogram ] [line 229] [def] [scope 230] [gtp_printf]
!147 = metadata !{metadata !148, metadata !149}
!148 = metadata !{i32 786689, metadata !146, metadata !"format", metadata !5, i32 16777445, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 229]
!149 = metadata !{i32 786688, metadata !146, metadata !"ap", metadata !5, i32 231, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 231]
!150 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_start_response", metadata !"gtp_start_response", metadata !"", i32 242, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @gtp_start_response, null, null, metadata !151, i32 243} ; [ DW_TAG_subprogram ] [line 242] [def] [scope 243] [gtp_start_response]
!151 = metadata !{metadata !152}
!152 = metadata !{i32 786689, metadata !150, metadata !"status", metadata !5, i32 16777458, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 242]
!153 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_finish_response", metadata !"gtp_finish_response", metadata !"", i32 258, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @gtp_finish_response, null, null, metadata !2, i32 259} ; [ DW_TAG_subprogram ] [line 258] [def] [scope 259] [gtp_finish_response]
!154 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!155 = metadata !{metadata !21}
!156 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_success", metadata !"gtp_success", metadata !"", i32 269, metadata !157, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, ...)* @gtp_success, null, null, metadata !159, i32 270} ; [ DW_TAG_subprogram ] [line 269] [def] [scope 270] [gtp_success]
!157 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!158 = metadata !{metadata !21, metadata !13}
!159 = metadata !{metadata !160, metadata !161}
!160 = metadata !{i32 786689, metadata !156, metadata !"format", metadata !5, i32 16777485, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 269]
!161 = metadata !{i32 786688, metadata !156, metadata !"ap", metadata !5, i32 271, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 271]
!162 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_failure", metadata !"gtp_failure", metadata !"", i32 282, metadata !157, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, ...)* @gtp_failure, null, null, metadata !163, i32 283} ; [ DW_TAG_subprogram ] [line 282] [def] [scope 283] [gtp_failure]
!163 = metadata !{metadata !164, metadata !165}
!164 = metadata !{i32 786689, metadata !162, metadata !"format", metadata !5, i32 16777498, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 282]
!165 = metadata !{i32 786688, metadata !162, metadata !"ap", metadata !5, i32 284, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 284]
!166 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_panic", metadata !"gtp_panic", metadata !"", i32 295, metadata !167, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @gtp_panic, null, null, metadata !2, i32 296} ; [ DW_TAG_subprogram ] [line 295] [def] [scope 296] [gtp_panic]
!167 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!168 = metadata !{null}
!169 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_decode_color", metadata !"gtp_decode_color", metadata !"", i32 306, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*)* @gtp_decode_color, null, null, metadata !172, i32 307} ; [ DW_TAG_subprogram ] [line 306] [def] [scope 307] [gtp_decode_color]
!170 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!171 = metadata !{metadata !21, metadata !22, metadata !106}
!172 = metadata !{metadata !173, metadata !174, metadata !175, metadata !179, metadata !180, metadata !181}
!173 = metadata !{i32 786689, metadata !169, metadata !"s", metadata !5, i32 16777522, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 306]
!174 = metadata !{i32 786689, metadata !169, metadata !"color", metadata !5, i32 33554738, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [color] [line 306]
!175 = metadata !{i32 786688, metadata !169, metadata !"color_string", metadata !5, i32 308, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [color_string] [line 308]
!176 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 56, i64 8, i32 0, i32 0, metadata !15, metadata !177, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 56, align 8, offset 0] [from char]
!177 = metadata !{metadata !178}
!178 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!179 = metadata !{i32 786688, metadata !169, metadata !"i", metadata !5, i32 309, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 309]
!180 = metadata !{i32 786688, metadata !169, metadata !"n", metadata !5, i32 310, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 310]
!181 = metadata !{i32 786688, metadata !182, metadata !"__res", metadata !5, i32 318, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 318]
!182 = metadata !{i32 786443, metadata !1, metadata !183, i32 318, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!183 = metadata !{i32 786443, metadata !1, metadata !169, i32 317, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!184 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_decode_coord", metadata !"gtp_decode_coord", metadata !"", i32 338, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i32*)* @gtp_decode_coord, null, null, metadata !187, i32 339} ; [ DW_TAG_subprogram ] [line 338] [def] [scope 339] [gtp_decode_coord]
!185 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!186 = metadata !{metadata !21, metadata !22, metadata !106, metadata !106}
!187 = metadata !{metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !196, metadata !198}
!188 = metadata !{i32 786689, metadata !184, metadata !"s", metadata !5, i32 16777554, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 338]
!189 = metadata !{i32 786689, metadata !184, metadata !"i", metadata !5, i32 33554770, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 338]
!190 = metadata !{i32 786689, metadata !184, metadata !"j", metadata !5, i32 50331986, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [j] [line 338]
!191 = metadata !{i32 786688, metadata !184, metadata !"column", metadata !5, i32 340, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [column] [line 340]
!192 = metadata !{i32 786688, metadata !184, metadata !"row", metadata !5, i32 341, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 341]
!193 = metadata !{i32 786688, metadata !184, metadata !"n", metadata !5, i32 342, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 342]
!194 = metadata !{i32 786688, metadata !195, metadata !"__res", metadata !5, i32 349, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 349]
!195 = metadata !{i32 786443, metadata !1, metadata !184, i32 349, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!196 = metadata !{i32 786688, metadata !197, metadata !"__res", metadata !5, i32 351, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 351]
!197 = metadata !{i32 786443, metadata !1, metadata !184, i32 351, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!198 = metadata !{i32 786688, metadata !199, metadata !"__res", metadata !5, i32 352, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 352]
!199 = metadata !{i32 786443, metadata !1, metadata !184, i32 352, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!200 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_decode_move", metadata !"gtp_decode_move", metadata !"", i32 371, metadata !201, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i32*, i32*)* @gtp_decode_move, null, null, metadata !203, i32 372} ; [ DW_TAG_subprogram ] [line 371] [def] [scope 372] [gtp_decode_move]
!201 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!202 = metadata !{metadata !21, metadata !22, metadata !106, metadata !106, metadata !106}
!203 = metadata !{metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !216}
!204 = metadata !{i32 786689, metadata !200, metadata !"s", metadata !5, i32 16777587, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 371]
!205 = metadata !{i32 786689, metadata !200, metadata !"color", metadata !5, i32 33554803, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [color] [line 371]
!206 = metadata !{i32 786689, metadata !200, metadata !"i", metadata !5, i32 50332019, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 371]
!207 = metadata !{i32 786689, metadata !200, metadata !"j", metadata !5, i32 67109235, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [j] [line 371]
!208 = metadata !{i32 786688, metadata !200, metadata !"n1", metadata !5, i32 373, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 373]
!209 = metadata !{i32 786688, metadata !200, metadata !"n2", metadata !5, i32 373, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 373]
!210 = metadata !{i32 786688, metadata !200, metadata !"k", metadata !5, i32 374, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 374]
!211 = metadata !{i32 786688, metadata !212, metadata !"buf", metadata !5, i32 384, metadata !213, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 384]
!212 = metadata !{i32 786443, metadata !1, metadata !200, i32 383, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!213 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !15, metadata !214, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!214 = metadata !{metadata !215}
!215 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!216 = metadata !{i32 786688, metadata !217, metadata !"__res", metadata !5, i32 388, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 388]
!217 = metadata !{i32 786443, metadata !1, metadata !218, i32 388, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!218 = metadata !{i32 786443, metadata !1, metadata !212, i32 387, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!219 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_print_vertices", metadata !"gtp_print_vertices", metadata !"", i32 426, metadata !220, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32*, i32*)* @gtp_print_vertices, null, null, metadata !222, i32 427} ; [ DW_TAG_subprogram ] [line 426] [def] [scope 427] [gtp_print_vertices]
!220 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!221 = metadata !{null, metadata !21, metadata !106, metadata !106}
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228}
!223 = metadata !{i32 786689, metadata !219, metadata !"n", metadata !5, i32 16777642, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 426]
!224 = metadata !{i32 786689, metadata !219, metadata !"movei", metadata !5, i32 33554858, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [movei] [line 426]
!225 = metadata !{i32 786689, metadata !219, metadata !"movej", metadata !5, i32 50332074, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [movej] [line 426]
!226 = metadata !{i32 786688, metadata !219, metadata !"k", metadata !5, i32 428, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 428]
!227 = metadata !{i32 786688, metadata !219, metadata !"ri", metadata !5, i32 429, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ri] [line 429]
!228 = metadata !{i32 786688, metadata !219, metadata !"rj", metadata !5, i32 429, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rj] [line 429]
!229 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gtp_print_vertex", metadata !"gtp_print_vertex", metadata !"", i32 456, metadata !230, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32)* @gtp_print_vertex, null, null, metadata !232, i32 457} ; [ DW_TAG_subprogram ] [line 456] [def] [scope 457] [gtp_print_vertex]
!230 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!231 = metadata !{null, metadata !21, metadata !21}
!232 = metadata !{metadata !233, metadata !234}
!233 = metadata !{i32 786689, metadata !229, metadata !"i", metadata !5, i32 16777672, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 456]
!234 = metadata !{i32 786689, metadata !229, metadata !"j", metadata !5, i32 33554888, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [j] [line 456]
!235 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sort_moves", metadata !"sort_moves", metadata !"", i32 403, metadata !220, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !236, i32 404} ; [ DW_TAG_subprogram ] [line 403] [local] [def] [scope 404] [sort_moves]
!236 = metadata !{metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242}
!237 = metadata !{i32 786689, metadata !235, metadata !"n", metadata !5, i32 16777619, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 403]
!238 = metadata !{i32 786689, metadata !235, metadata !"movei", metadata !5, i32 33554835, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [movei] [line 403]
!239 = metadata !{i32 786689, metadata !235, metadata !"movej", metadata !5, i32 50332051, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [movej] [line 403]
!240 = metadata !{i32 786688, metadata !235, metadata !"b", metadata !5, i32 405, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 405]
!241 = metadata !{i32 786688, metadata !235, metadata !"a", metadata !5, i32 405, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 405]
!242 = metadata !{i32 786688, metadata !243, metadata !"tmp", metadata !5, i32 410, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 410]
!243 = metadata !{i32 786443, metadata !1, metadata !244, i32 409, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!244 = metadata !{i32 786443, metadata !1, metadata !245, i32 407, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!245 = metadata !{i32 786443, metadata !1, metadata !246, i32 407, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!246 = metadata !{i32 786443, metadata !1, metadata !247, i32 406, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!247 = metadata !{i32 786443, metadata !1, metadata !235, i32 406, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!248 = metadata !{metadata !249, metadata !250, metadata !251, metadata !252}
!249 = metadata !{i32 786484, i32 0, null, metadata !"current_id", metadata !"current_id", metadata !"", metadata !5, i32 69, metadata !21, i32 1, i32 1, i32* @current_id, null} ; [ DW_TAG_variable ] [current_id] [line 69] [local] [def]
!250 = metadata !{i32 786484, i32 0, null, metadata !"vertex_transform_output_hook", metadata !"vertex_transform_output_hook", metadata !"", metadata !5, i32 63, metadata !102, i32 1, i32 1, void (i32, i32, i32*, i32*)** @vertex_transform_output_hook, null} ; [ DW_TAG_variable ] [vertex_transform_output_hook] [line 63] [local] [def]
!251 = metadata !{i32 786484, i32 0, null, metadata !"vertex_transform_input_hook", metadata !"vertex_transform_input_hook", metadata !"", metadata !5, i32 62, metadata !102, i32 1, i32 1, void (i32, i32, i32*, i32*)** @vertex_transform_input_hook, null} ; [ DW_TAG_variable ] [vertex_transform_input_hook] [line 62] [local] [def]
!252 = metadata !{i32 786484, i32 0, null, metadata !"gtp_boardsize", metadata !"gtp_boardsize", metadata !"", metadata !5, i32 59, metadata !21, i32 1, i32 1, i32* @gtp_boardsize, null} ; [ DW_TAG_variable ] [gtp_boardsize] [line 59] [local] [def]
!253 = metadata !{i32 73, i32 0, metadata !4, null}
!254 = metadata !{i32 75, i32 0, metadata !4, null}
!255 = metadata !{i32 76, i32 0, metadata !4, null}
!256 = metadata !{i32 79, i32 0, metadata !4, null}
!257 = metadata !{i32 80, i32 0, metadata !4, null}
!258 = metadata !{i32 124, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !93, i32 124, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!260 = metadata !{i32 84, i32 0, metadata !93, null}
!261 = metadata !{i32 88, i32 0, metadata !92, null}
!262 = metadata !{metadata !"omnipotent char", metadata !263}
!263 = metadata !{metadata !"Simple C/C++ TBAA"}
!264 = metadata !{i32 92, i32 0, metadata !91, null}
!265 = metadata !{i32 94, i32 0, metadata !91, null}
!266 = metadata !{i32 99, i32 0, metadata !91, null}
!267 = metadata !{i32 103, i32 0, metadata !91, null}
!268 = metadata !{i32 106, i32 0, metadata !93, null}
!269 = metadata !{i32 108, i32 0, metadata !93, null}
!270 = metadata !{i32 111, i32 0, metadata !93, null}
!271 = metadata !{i32 112, i32 0, metadata !93, null}
!272 = metadata !{metadata !"int", metadata !262}
!273 = metadata !{i32 114, i32 0, metadata !93, null}
!274 = metadata !{i32 117, i32 0, metadata !93, null}
!275 = metadata !{i32 119, i32 0, metadata !93, null}
!276 = metadata !{metadata !"any pointer", metadata !262}
!277 = metadata !{i32 125, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !259, i32 124, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!279 = metadata !{i32 126, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !278, i32 125, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!281 = metadata !{i32 130, i32 0, metadata !93, null}
!282 = metadata !{i32 131, i32 0, metadata !93, null}
!283 = metadata !{i32 133, i32 0, metadata !93, null}
!284 = metadata !{i32 297, i32 0, metadata !166, metadata !285}
!285 = metadata !{i32 134, i32 0, metadata !93, null}
!286 = metadata !{i32 136, i32 0, metadata !4, null}
!287 = metadata !{i32 282, i32 0, metadata !162, null}
!288 = metadata !{i32 284, i32 0, metadata !162, null}
!289 = metadata !{i32 285, i32 0, metadata !162, null}
!290 = metadata !{i32 286, i32 0, metadata !162, null}
!291 = metadata !{i32 287, i32 0, metadata !162, null}
!292 = metadata !{i32 288, i32 0, metadata !162, null}
!293 = metadata !{i32 260, i32 0, metadata !153, metadata !294}
!294 = metadata !{i32 289, i32 0, metadata !162, null}
!295 = metadata !{i32 297, i32 0, metadata !166, null}
!296 = metadata !{i32 298, i32 0, metadata !166, null}
!297 = metadata !{i32 140, i32 0, metadata !94, null}
!298 = metadata !{i32 142, i32 0, metadata !94, null}
!299 = metadata !{i32 143, i32 0, metadata !94, null}
!300 = metadata !{i32 151, i32 0, metadata !99, null}
!301 = metadata !{i32 153, i32 0, metadata !99, null}
!302 = metadata !{i32 154, i32 0, metadata !99, null}
!303 = metadata !{i32 155, i32 0, metadata !99, null}
!304 = metadata !{i32 164, i32 0, metadata !110, null}
!305 = metadata !{i32 166, i32 0, metadata !110, null}
!306 = metadata !{i32 167, i32 0, metadata !110, null}
!307 = metadata !{i32 175, i32 0, metadata !129, null}
!308 = metadata !{i32 187, i32 0, metadata !137, null}
!309 = metadata !{i32 456, i32 0, metadata !229, metadata !310}
!310 = metadata !{i32 201, i32 0, metadata !142, null}
!311 = metadata !{i32 169, i32 0, metadata !133, null}
!312 = metadata !{i32 171, i32 0, metadata !131, null}
!313 = metadata !{i32 176, i32 0, metadata !129, null}
!314 = metadata !{i32 177, i32 0, metadata !129, null}
!315 = metadata !{i32 181, i32 0, metadata !135, null}
!316 = metadata !{i32 182, i32 0, metadata !135, null}
!317 = metadata !{i32 183, i32 0, metadata !135, null}
!318 = metadata !{i32 188, i32 0, metadata !137, null}
!319 = metadata !{i32 189, i32 0, metadata !137, null}
!320 = metadata !{i32 193, i32 0, metadata !140, null}
!321 = metadata !{i32 194, i32 0, metadata !140, null}
!322 = metadata !{i32 195, i32 0, metadata !140, null}
!323 = metadata !{i32 199, i32 0, metadata !142, null}
!324 = metadata !{i32 200, i32 0, metadata !142, null}
!325 = metadata !{i32 786689, metadata !229, metadata !"i", metadata !5, i32 16777672, metadata !21, i32 0, metadata !310} ; [ DW_TAG_arg_variable ] [i] [line 456]
!326 = metadata !{i32 786689, metadata !229, metadata !"j", metadata !5, i32 33554888, metadata !21, i32 0, metadata !310} ; [ DW_TAG_arg_variable ] [j] [line 456]
!327 = metadata !{i32 458, i32 0, metadata !229, metadata !310}
!328 = metadata !{i32 459, i32 0, metadata !229, metadata !310}
!329 = metadata !{i32 202, i32 0, metadata !142, null}
!330 = metadata !{i32 206, i32 0, metadata !145, null}
!331 = metadata !{i32 207, i32 0, metadata !145, null}
!332 = metadata !{i32 208, i32 0, metadata !145, null}
!333 = metadata !{i32 209, i32 0, metadata !145, null}
!334 = metadata !{i32 210, i32 0, metadata !145, null}
!335 = metadata !{i32 212, i32 0, metadata !145, null}
!336 = metadata !{i32 216, i32 0, metadata !130, null}
!337 = metadata !{i32 217, i32 0, metadata !130, null}
!338 = metadata !{i32 170, i32 0, metadata !132, null}
!339 = metadata !{i32 221, i32 0, metadata !132, null}
!340 = metadata !{i32 223, i32 0, metadata !110, null}
!341 = metadata !{i32 224, i32 0, metadata !110, null}
!342 = metadata !{i32 456, i32 0, metadata !229, null}
!343 = metadata !{i32 458, i32 0, metadata !229, null}
!344 = metadata !{i32 459, i32 0, metadata !229, null}
!345 = metadata !{i32 229, i32 0, metadata !146, null}
!346 = metadata !{i32 231, i32 0, metadata !146, null}
!347 = metadata !{i32 232, i32 0, metadata !146, null}
!348 = metadata !{i32 233, i32 0, metadata !146, null}
!349 = metadata !{i32 234, i32 0, metadata !146, null}
!350 = metadata !{i32 235, i32 0, metadata !146, null}
!351 = metadata !{i32 242, i32 0, metadata !150, null}
!352 = metadata !{i32 244, i32 0, metadata !150, null}
!353 = metadata !{i32 245, i32 0, metadata !150, null}
!354 = metadata !{i32 247, i32 0, metadata !150, null}
!355 = metadata !{i32 249, i32 0, metadata !150, null}
!356 = metadata !{i32 250, i32 0, metadata !150, null}
!357 = metadata !{i32 252, i32 0, metadata !150, null}
!358 = metadata !{i32 253, i32 0, metadata !150, null}
!359 = metadata !{i32 260, i32 0, metadata !153, null}
!360 = metadata !{i32 261, i32 0, metadata !153, null}
!361 = metadata !{i32 269, i32 0, metadata !156, null}
!362 = metadata !{i32 271, i32 0, metadata !156, null}
!363 = metadata !{i32 272, i32 0, metadata !156, null}
!364 = metadata !{i32 273, i32 0, metadata !156, null}
!365 = metadata !{i32 274, i32 0, metadata !156, null}
!366 = metadata !{i32 275, i32 0, metadata !156, null}
!367 = metadata !{i32 260, i32 0, metadata !153, metadata !368}
!368 = metadata !{i32 276, i32 0, metadata !156, null}
!369 = metadata !{i32 306, i32 0, metadata !169, null}
!370 = metadata !{i32 308, i32 0, metadata !169, null}
!371 = metadata !{i32 310, i32 0, metadata !169, null}
!372 = metadata !{i32 312, i32 0, metadata !169, null}
!373 = metadata !{i32 314, i32 0, metadata !169, null}
!374 = metadata !{i32 317, i32 0, metadata !183, null}
!375 = metadata !{i32 318, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !182, i32 318, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!377 = metadata !{i32 318, i32 0, metadata !182, null}
!378 = metadata !{i32 320, i32 0, metadata !169, null}
!379 = metadata !{i32 321, i32 0, metadata !169, null}
!380 = metadata !{i32 323, i32 0, metadata !169, null}
!381 = metadata !{i32 324, i32 0, metadata !169, null}
!382 = metadata !{i32 322, i32 0, metadata !169, null}
!383 = metadata !{i32 329, i32 0, metadata !169, null}
!384 = metadata !{i32 330, i32 0, metadata !169, null}
!385 = metadata !{i32 338, i32 0, metadata !184, null}
!386 = metadata !{i32 340, i32 0, metadata !184, null}
!387 = metadata !{i32 341, i32 0, metadata !184, null}
!388 = metadata !{i32 342, i32 0, metadata !184, null}
!389 = metadata !{i32 344, i32 0, metadata !184, null}
!390 = metadata !{i32 346, i32 0, metadata !184, null}
!391 = metadata !{i32 349, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !195, i32 349, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!393 = metadata !{i32 349, i32 0, metadata !195, null}
!394 = metadata !{i32 351, i32 0, metadata !395, null}
!395 = metadata !{i32 786443, metadata !1, metadata !197, i32 351, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!396 = metadata !{i32 351, i32 0, metadata !197, null}
!397 = metadata !{i32 352, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !199, i32 352, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!399 = metadata !{i32 352, i32 0, metadata !199, null}
!400 = metadata !{i32 353, i32 0, metadata !184, null}
!401 = metadata !{i32 355, i32 0, metadata !184, null}
!402 = metadata !{i32 357, i32 0, metadata !184, null}
!403 = metadata !{i32 360, i32 0, metadata !184, null}
!404 = metadata !{i32 361, i32 0, metadata !184, null}
!405 = metadata !{i32 363, i32 0, metadata !184, null}
!406 = metadata !{i32 364, i32 0, metadata !184, null}
!407 = metadata !{i32 371, i32 0, metadata !200, null}
!408 = metadata !{i32 373, i32 0, metadata !200, null}
!409 = metadata !{i32 376, i32 0, metadata !200, null}
!410 = metadata !{i32 378, i32 0, metadata !200, null}
!411 = metadata !{i32 379, i32 0, metadata !200, null}
!412 = metadata !{i32 382, i32 0, metadata !200, null}
!413 = metadata !{i32 383, i32 0, metadata !200, null}
!414 = metadata !{i32 384, i32 0, metadata !212, null}
!415 = metadata !{i32 385, i32 0, metadata !212, null}
!416 = metadata !{i32 387, i32 0, metadata !218, null}
!417 = metadata !{i32 388, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !217, i32 388, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!419 = metadata !{i32 388, i32 0, metadata !217, null}
!420 = metadata !{i32 389, i32 0, metadata !212, null}
!421 = metadata !{i32 391, i32 0, metadata !212, null}
!422 = metadata !{i32 392, i32 0, metadata !212, null}
!423 = metadata !{i32 395, i32 0, metadata !200, null}
!424 = metadata !{i32 393, i32 0, metadata !212, null}
!425 = metadata !{i32 396, i32 0, metadata !200, null}
!426 = metadata !{i32 426, i32 0, metadata !219, null}
!427 = metadata !{i32 429, i32 0, metadata !219, null}
!428 = metadata !{i32 431, i32 0, metadata !219, null}
!429 = metadata !{i32 786689, metadata !235, metadata !"n", metadata !5, i32 16777619, metadata !21, i32 0, metadata !430} ; [ DW_TAG_arg_variable ] [n] [line 403]
!430 = metadata !{i32 433, i32 0, metadata !219, null}
!431 = metadata !{i32 403, i32 0, metadata !235, metadata !430}
!432 = metadata !{i32 786689, metadata !235, metadata !"movei", metadata !5, i32 33554835, metadata !106, i32 0, metadata !430} ; [ DW_TAG_arg_variable ] [movei] [line 403]
!433 = metadata !{i32 786689, metadata !235, metadata !"movej", metadata !5, i32 50332051, metadata !106, i32 0, metadata !430} ; [ DW_TAG_arg_variable ] [movej] [line 403]
!434 = metadata !{i32 406, i32 0, metadata !247, metadata !430}
!435 = metadata !{i32 434, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !219, i32 434, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!437 = metadata !{i32 408, i32 0, metadata !244, metadata !430}
!438 = metadata !{i32 414, i32 0, metadata !243, metadata !430}
!439 = metadata !{i32 407, i32 0, metadata !245, metadata !430}
!440 = metadata !{i32 415, i32 0, metadata !243, metadata !430}
!441 = metadata !{i32 786688, metadata !243, metadata !"tmp", metadata !5, i32 410, metadata !21, i32 0, metadata !430} ; [ DW_TAG_auto_variable ] [tmp] [line 410]
!442 = metadata !{i32 411, i32 0, metadata !243, metadata !430}
!443 = metadata !{i32 412, i32 0, metadata !243, metadata !430}
!444 = metadata !{i32 413, i32 0, metadata !243, metadata !430}
!445 = metadata !{i32 416, i32 0, metadata !243, metadata !430}
!446 = metadata !{i32 417, i32 0, metadata !243, metadata !430}
!447 = metadata !{i32 435, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !436, i32 434, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!449 = metadata !{i32 436, i32 0, metadata !448, null}
!450 = metadata !{i32 437, i32 0, metadata !448, null}
!451 = metadata !{i32 438, i32 0, metadata !448, null}
!452 = metadata !{i32 439, i32 0, metadata !448, null}
!453 = metadata !{i32 441, i32 0, metadata !448, null}
!454 = metadata !{i32 443, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !448, i32 442, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!456 = metadata !{i32 444, i32 0, metadata !455, null}
!457 = metadata !{i32 449, i32 0, metadata !455, null}
!458 = metadata !{i32 446, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !1, metadata !455, i32 445, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/interface/gtp.c]
!460 = metadata !{i32 447, i32 0, metadata !459, null}
!461 = metadata !{i32 452, i32 0, metadata !219, null}
