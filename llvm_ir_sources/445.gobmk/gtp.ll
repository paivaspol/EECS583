; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/445.gobmk/src/interface/gtp.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.gtp_command = type { i8*, i32 (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@current_id = internal global i32 0, align 4
@.str1 = private unnamed_addr constant [7 x i8] c" %s %n\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"unknown command\00", align 1
@gtp_boardsize = internal unnamed_addr global i32 -1, align 4
@vertex_transform_input_hook = internal unnamed_addr global void (i32, i32, i32*, i32*)* null, align 8
@vertex_transform_output_hook = internal unnamed_addr global void (i32, i32, i32*, i32*)* null, align 8
@__stdoutp = external global %struct.__sFILE*
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
@__func__.gtp_decode_color = private unnamed_addr constant [17 x i8] c"gtp_decode_color\00", align 1
@.str15 = private unnamed_addr constant [71 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/445.gobmk/src/interface/gtp.c\00", align 1
@.str16 = private unnamed_addr constant [18 x i8] c"gtp_boardsize > 0\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"%6s%n\00", align 1
@.str18 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@__func__.gtp_decode_coord = private unnamed_addr constant [17 x i8] c"gtp_decode_coord\00", align 1
@.str20 = private unnamed_addr constant [8 x i8] c" %c%d%n\00", align 1
@__func__.gtp_decode_move = private unnamed_addr constant [16 x i8] c"gtp_decode_move\00", align 1
@.str21 = private unnamed_addr constant [6 x i8] c"%5s%n\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@__func__.gtp_print_vertices = private unnamed_addr constant [19 x i8] c"gtp_print_vertices\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str24 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str25 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @gtp_main_loop(%struct.gtp_command* nocapture readonly %commands, %struct.__sFILE* nocapture %gtp_input) #0 {
  %line = alloca [1000 x i8], align 16
  %command = alloca [1000 x i8], align 16
  %n = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.gtp_command* %commands, i64 0, metadata !83, metadata !262), !dbg !263
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %gtp_input, i64 0, metadata !84, metadata !262), !dbg !264
  %1 = getelementptr inbounds [1000 x i8]* %line, i64 0, i64 0, !dbg !265
  call void @llvm.lifetime.start(i64 1000, i8* %1) #2, !dbg !265
  tail call void @llvm.dbg.declare(metadata [1000 x i8]* %line, metadata !85, metadata !262), !dbg !266
  %2 = getelementptr inbounds [1000 x i8]* %command, i64 0, i64 0, !dbg !267
  call void @llvm.lifetime.start(i64 1000, i8* %2) #2, !dbg !267
  tail call void @llvm.dbg.declare(metadata [1000 x i8]* %command, metadata !89, metadata !262), !dbg !268
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !262), !dbg !269
  %3 = getelementptr inbounds %struct.gtp_command* %commands, i64 0, i32 0, !dbg !270
  %4 = call i8* @fgets(i8* %1, i32 1000, %struct.__sFILE* %gtp_input) #7, !dbg !273
  %5 = icmp eq i8* %4, null, !dbg !273
  br i1 %5, label %.split, label %.preheader, !dbg !275

.preheader:                                       ; preds = %.outer..outer.split_crit_edge.backedge, %0, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ 0, %0 ], [ 0, %.outer..outer.split_crit_edge.backedge ]
  %p.0 = phi i8* [ %p.1, %19 ], [ %1, %0 ], [ %1, %.outer..outer.split_crit_edge.backedge ]
  %6 = getelementptr inbounds [1000 x i8]* %line, i64 0, i64 %indvars.iv, !dbg !276
  %7 = load i8* %6, align 1, !dbg !276, !tbaa !277
  switch i8 %7, label %10 [
    i8 0, label %20
    i8 9, label %8
  ], !dbg !280

; <label>:8                                       ; preds = %.preheader
  %9 = getelementptr inbounds i8* %p.0, i64 1, !dbg !281
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !90, metadata !262), !dbg !283
  store i8 32, i8* %p.0, align 1, !dbg !284, !tbaa !277
  br label %19, !dbg !285

; <label>:10                                      ; preds = %.preheader
  %.off = add i8 %7, -1, !dbg !286
  %11 = icmp ult i8 %.off, 9, !dbg !286
  br i1 %11, label %19, label %12, !dbg !286

; <label>:12                                      ; preds = %10
  %.off5 = add i8 %7, -11, !dbg !288
  %13 = icmp ult i8 %.off5, 21, !dbg !288
  %14 = icmp eq i8 %7, 127, !dbg !289
  %or.cond2 = or i1 %14, %13, !dbg !288
  br i1 %or.cond2, label %19, label %15, !dbg !288

; <label>:15                                      ; preds = %12
  %16 = icmp eq i8 %7, 35, !dbg !290
  br i1 %16, label %20, label %17, !dbg !292

; <label>:17                                      ; preds = %15
  %18 = getelementptr inbounds i8* %p.0, i64 1, !dbg !293
  call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !90, metadata !262), !dbg !283
  store i8 %7, i8* %p.0, align 1, !dbg !294, !tbaa !277
  br label %19

; <label>:19                                      ; preds = %12, %10, %8, %17
  %p.1 = phi i8* [ %9, %8 ], [ %18, %17 ], [ %p.0, %10 ], [ %p.0, %12 ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !295
  br label %.preheader, !dbg !295

; <label>:20                                      ; preds = %.preheader, %15
  store i8 0, i8* %p.0, align 1, !dbg !296, !tbaa !277
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !90, metadata !262), !dbg !283
  call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !92, metadata !262), !dbg !297
  %21 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i32* @current_id, i32* %n) #7, !dbg !298
  %22 = icmp eq i32 %21, 1, !dbg !300
  br i1 %22, label %23, label %27, !dbg !301

; <label>:23                                      ; preds = %20
  call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !92, metadata !262), !dbg !297
  %24 = load i32* %n, align 4, !dbg !302, !tbaa !303
  %25 = sext i32 %24 to i64, !dbg !305
  %26 = getelementptr inbounds [1000 x i8]* %line, i64 0, i64 %25, !dbg !305
  call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !90, metadata !262), !dbg !283
  br label %28, !dbg !306

; <label>:27                                      ; preds = %20
  store i32 -1, i32* @current_id, align 4, !dbg !307, !tbaa !303
  br label %28

; <label>:28                                      ; preds = %27, %23
  %29 = phi i64 [ %25, %23 ], [ 0, %27 ]
  %p.2 = phi i8* [ %26, %23 ], [ %1, %27 ]
  call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !92, metadata !262), !dbg !297
  %30 = call i32 (i8*, i8*, ...)* @sscanf(i8* %p.2, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* %2, i32* %n) #7, !dbg !308
  %31 = icmp slt i32 %30, 1, !dbg !310
  br i1 %31, label %.outer..outer.split_crit_edge.backedge, label %34, !dbg !311

.outer..outer.split_crit_edge.backedge:           ; preds = %28, %54
  %32 = call i8* @fgets(i8* %1, i32 1000, %struct.__sFILE* %gtp_input) #7, !dbg !273
  %33 = icmp eq i8* %32, null, !dbg !273
  br i1 %33, label %.split, label %.preheader, !dbg !275

; <label>:34                                      ; preds = %28
  call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !92, metadata !262), !dbg !297
  %35 = load i32* %n, align 4, !dbg !312, !tbaa !303
  %36 = sext i32 %35 to i64, !dbg !313
  %.sum = add nsw i64 %36, %29, !dbg !313
  %37 = getelementptr inbounds [1000 x i8]* %line, i64 0, i64 %.sum, !dbg !313
  call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !90, metadata !262), !dbg !283
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !91, metadata !262), !dbg !314
  %38 = load i8** %3, align 8, !dbg !270, !tbaa !315
  %39 = icmp eq i8* %38, null, !dbg !318
  br i1 %39, label %.thread, label %.lr.ph, !dbg !319

; <label>:40                                      ; preds = %.lr.ph
  %41 = getelementptr inbounds %struct.gtp_command* %commands, i64 %indvars.iv.next17, i32 0, !dbg !270
  %42 = load i8** %41, align 8, !dbg !270, !tbaa !315
  %43 = icmp eq i8* %42, null, !dbg !318
  br i1 %43, label %.thread, label %.lr.ph, !dbg !319

.lr.ph:                                           ; preds = %34, %40
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %40 ], [ 0, %34 ]
  %44 = phi i8* [ %42, %40 ], [ %38, %34 ]
  %45 = phi i8** [ %41, %40 ], [ %3, %34 ]
  %46 = call i32 @strcmp(i8* %2, i8* %44) #7, !dbg !320
  %47 = icmp eq i32 %46, 0, !dbg !323
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1, !dbg !319
  br i1 %47, label %48, label %40, !dbg !324

; <label>:48                                      ; preds = %.lr.ph
  %49 = getelementptr inbounds %struct.gtp_command* %commands, i64 %indvars.iv16, i32 1, !dbg !325
  %50 = load i32 (i8*)** %49, align 8, !dbg !325, !tbaa !327
  %51 = call i32 %50(i8* %37) #7, !dbg !328
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !93, metadata !262), !dbg !269
  %.pr = load i8** %45, align 8, !dbg !329, !tbaa !315
  %52 = icmp eq i8* %.pr, null, !dbg !331
  br i1 %52, label %.thread, label %54, !dbg !332

.thread:                                          ; preds = %40, %34, %48
  %status.14 = phi i32 [ %51, %48 ], [ 0, %34 ], [ 0, %40 ]
  %53 = call i32 (i8*, ...)* @gtp_failure(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !333
  br label %54, !dbg !333

; <label>:54                                      ; preds = %.thread, %48
  %status.13 = phi i32 [ %status.14, %.thread ], [ %51, %48 ]
  switch i32 %status.13, label %.split [
    i32 1, label %.outer.backedge.thread
    i32 0, label %.outer..outer.split_crit_edge.backedge
  ], !dbg !334

.outer.backedge.thread:                           ; preds = %54
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !335
  br label %.split

.split:                                           ; preds = %0, %.outer..outer.split_crit_edge.backedge, %54, %.outer.backedge.thread
  call void @llvm.lifetime.end(i64 1000, i8* %2) #2, !dbg !338
  call void @llvm.lifetime.end(i64 1000, i8* %1) #2, !dbg !338
  ret void, !dbg !338
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gtp_failure(i8* nocapture readonly %format, ...) #0 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !171, metadata !262), !dbg !339
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !172, metadata !262), !dbg !340
  tail call void @gtp_start_response(i32 1) #8, !dbg !341
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !342
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !342
  call void @llvm.va_start(i8* %2), !dbg !342
  %3 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !343, !tbaa !344
  %4 = call i32 @vfprintf(%struct.__sFILE* %3, i8* %format, %struct.__va_list_tag* %1) #7, !dbg !345
  call void @llvm.va_end(i8* %2), !dbg !346
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !347
  ret i32 0, !dbg !349
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gtp_panic() #0 {
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0)) #8, !dbg !350
  ret void, !dbg !351
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @gtp_internal_set_boardsize(i32 %size) #0 {
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !103, metadata !262), !dbg !352
  store i32 %size, i32* @gtp_boardsize, align 4, !dbg !353, !tbaa !303
  ret void, !dbg !354
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gtp_set_vertex_transform_hooks(void (i32, i32, i32*, i32*)* %in, void (i32, i32, i32*, i32*)* %out) #0 {
  tail call void @llvm.dbg.value(metadata void (i32, i32, i32*, i32*)* %in, i64 0, metadata !113, metadata !262), !dbg !355
  tail call void @llvm.dbg.value(metadata void (i32, i32, i32*, i32*)* %out, i64 0, metadata !114, metadata !262), !dbg !356
  store void (i32, i32, i32*, i32*)* %in, void (i32, i32, i32*, i32*)** @vertex_transform_input_hook, align 8, !dbg !357, !tbaa !344
  store void (i32, i32, i32*, i32*)* %out, void (i32, i32, i32*, i32*)** @vertex_transform_output_hook, align 8, !dbg !358, !tbaa !344
  ret void, !dbg !359
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gtp_mprintf(i8* nocapture readonly %fmt, ...) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %fmt, i64 0, metadata !119, metadata !262), !dbg !360
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !120, metadata !262), !dbg !361
  %3 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !362
  call void @llvm.va_start(i8* %3), !dbg !362
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !363
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !363
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !363
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 1, !dbg !364
  %8 = bitcast i32* %1 to i8*, !dbg !365
  %9 = bitcast i32* %2 to i8*, !dbg !365
  br label %10, !dbg !367

; <label>:10                                      ; preds = %140, %0
  %.0 = phi i8* [ %fmt, %0 ], [ %141, %140 ]
  %11 = load i8* %.0, align 1, !dbg !368, !tbaa !277
  switch i8 %11, label %136 [
    i8 0, label %142
    i8 37, label %12
  ], !dbg !369

; <label>:12                                      ; preds = %10
  %13 = getelementptr inbounds i8* %.0, i64 1, !dbg !370
  call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !119, metadata !262), !dbg !360
  %14 = load i8* %13, align 1, !dbg !371, !tbaa !277
  %15 = sext i8 %14 to i32, !dbg !371
  switch i32 %15, label %133 [
    i32 99, label %16
    i32 100, label %32
    i32 102, label %48
    i32 115, label %64
    i32 109, label %80
    i32 67, label %108
  ], !dbg !372

; <label>:16                                      ; preds = %12
  %17 = load i32* %4, align 16, !dbg !363
  %18 = icmp ult i32 %17, 41, !dbg !363
  br i1 %18, label %19, label %24, !dbg !363

; <label>:19                                      ; preds = %16
  %20 = load i8** %5, align 16, !dbg !363
  %21 = sext i32 %17 to i64, !dbg !363
  %22 = getelementptr i8* %20, i64 %21, !dbg !363
  %23 = add i32 %17, 8, !dbg !363
  store i32 %23, i32* %4, align 16, !dbg !363
  br label %27, !dbg !363

; <label>:24                                      ; preds = %16
  %25 = load i8** %6, align 8, !dbg !363
  %26 = getelementptr i8* %25, i64 8, !dbg !363
  store i8* %26, i8** %6, align 8, !dbg !363
  br label %27, !dbg !363

; <label>:27                                      ; preds = %24, %19
  %.in6 = phi i8* [ %22, %19 ], [ %25, %24 ]
  %28 = bitcast i8* %.in6 to i32*, !dbg !363
  %29 = load i32* %28, align 4, !dbg !363
  call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !133, metadata !262), !dbg !373
  %30 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !374, !tbaa !344
  %31 = call i32 @putc(i32 %29, %struct.__sFILE* %30) #7, !dbg !375
  br label %140, !dbg !376

; <label>:32                                      ; preds = %12
  %33 = load i32* %4, align 16, !dbg !377
  %34 = icmp ult i32 %33, 41, !dbg !377
  br i1 %34, label %35, label %40, !dbg !377

; <label>:35                                      ; preds = %32
  %36 = load i8** %5, align 16, !dbg !377
  %37 = sext i32 %33 to i64, !dbg !377
  %38 = getelementptr i8* %36, i64 %37, !dbg !377
  %39 = add i32 %33, 8, !dbg !377
  store i32 %39, i32* %4, align 16, !dbg !377
  br label %43, !dbg !377

; <label>:40                                      ; preds = %32
  %41 = load i8** %6, align 8, !dbg !377
  %42 = getelementptr i8* %41, i64 8, !dbg !377
  store i8* %42, i8** %6, align 8, !dbg !377
  br label %43, !dbg !377

; <label>:43                                      ; preds = %40, %35
  %.in5 = phi i8* [ %38, %35 ], [ %41, %40 ]
  %44 = bitcast i8* %.in5 to i32*, !dbg !377
  %45 = load i32* %44, align 4, !dbg !377
  call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !141, metadata !262), !dbg !378
  %46 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !379, !tbaa !344
  %47 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %46, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i32 %45) #7, !dbg !380
  br label %140, !dbg !381

; <label>:48                                      ; preds = %12
  %49 = load i32* %7, align 4, !dbg !364
  %50 = icmp ult i32 %49, 161, !dbg !364
  br i1 %50, label %51, label %56, !dbg !364

; <label>:51                                      ; preds = %48
  %52 = load i8** %5, align 16, !dbg !364
  %53 = sext i32 %49 to i64, !dbg !364
  %54 = getelementptr i8* %52, i64 %53, !dbg !364
  %55 = add i32 %49, 16, !dbg !364
  store i32 %55, i32* %7, align 4, !dbg !364
  br label %59, !dbg !364

; <label>:56                                      ; preds = %48
  %57 = load i8** %6, align 8, !dbg !364
  %58 = getelementptr i8* %57, i64 8, !dbg !364
  store i8* %58, i8** %6, align 8, !dbg !364
  br label %59, !dbg !364

; <label>:59                                      ; preds = %56, %51
  %.in4 = phi i8* [ %54, %51 ], [ %57, %56 ]
  %60 = bitcast i8* %.in4 to double*, !dbg !364
  %61 = load double* %60, align 8, !dbg !364
  call void @llvm.dbg.value(metadata double %61, i64 0, metadata !143, metadata !262), !dbg !382
  %62 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !383, !tbaa !344
  %63 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %62, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), double %61) #7, !dbg !384
  br label %140, !dbg !385

; <label>:64                                      ; preds = %12
  %65 = load i32* %4, align 16, !dbg !386
  %66 = icmp ult i32 %65, 41, !dbg !386
  br i1 %66, label %67, label %72, !dbg !386

; <label>:67                                      ; preds = %64
  %68 = load i8** %5, align 16, !dbg !386
  %69 = sext i32 %65 to i64, !dbg !386
  %70 = getelementptr i8* %68, i64 %69, !dbg !386
  %71 = add i32 %65, 8, !dbg !386
  store i32 %71, i32* %4, align 16, !dbg !386
  br label %75, !dbg !386

; <label>:72                                      ; preds = %64
  %73 = load i8** %6, align 8, !dbg !386
  %74 = getelementptr i8* %73, i64 8, !dbg !386
  store i8* %74, i8** %6, align 8, !dbg !386
  br label %75, !dbg !386

; <label>:75                                      ; preds = %72, %67
  %.in3 = phi i8* [ %70, %67 ], [ %73, %72 ]
  %76 = bitcast i8* %.in3 to i8**, !dbg !386
  %77 = load i8** %76, align 8, !dbg !386
  call void @llvm.dbg.value(metadata i8* %77, i64 0, metadata !146, metadata !262), !dbg !387
  %78 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !388, !tbaa !344
  %79 = call i32 @"\01_fputs"(i8* %77, %struct.__sFILE* %78) #7, !dbg !389
  br label %140, !dbg !390

; <label>:80                                      ; preds = %12
  %81 = load i32* %4, align 16, !dbg !391
  %82 = icmp ult i32 %81, 41, !dbg !391
  br i1 %82, label %87, label %.thread, !dbg !391

.thread:                                          ; preds = %80
  %83 = load i8** %6, align 8, !dbg !391
  %84 = getelementptr i8* %83, i64 8, !dbg !391
  store i8* %84, i8** %6, align 8, !dbg !391
  %85 = bitcast i8* %83 to i32*, !dbg !391
  %86 = load i32* %85, align 4, !dbg !391
  call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !148, metadata !262), !dbg !392
  br label %100, !dbg !393

; <label>:87                                      ; preds = %80
  %88 = load i8** %5, align 16, !dbg !391
  %89 = sext i32 %81 to i64, !dbg !391
  %90 = getelementptr i8* %88, i64 %89, !dbg !391
  %91 = add i32 %81, 8, !dbg !391
  store i32 %91, i32* %4, align 16, !dbg !391
  %92 = bitcast i8* %90 to i32*, !dbg !391
  %93 = load i32* %92, align 4, !dbg !391
  call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !148, metadata !262), !dbg !392
  %94 = icmp ult i32 %91, 41, !dbg !393
  br i1 %94, label %95, label %100, !dbg !393

; <label>:95                                      ; preds = %87
  %96 = load i8** %5, align 16, !dbg !393
  %97 = sext i32 %91 to i64, !dbg !393
  %98 = getelementptr i8* %96, i64 %97, !dbg !393
  %99 = add i32 %81, 16, !dbg !393
  store i32 %99, i32* %4, align 16, !dbg !393
  br label %104, !dbg !393

; <label>:100                                     ; preds = %.thread, %87
  %101 = phi i32 [ %86, %.thread ], [ %93, %87 ]
  %102 = load i8** %6, align 8, !dbg !393
  %103 = getelementptr i8* %102, i64 8, !dbg !393
  store i8* %103, i8** %6, align 8, !dbg !393
  br label %104, !dbg !393

; <label>:104                                     ; preds = %100, %95
  %105 = phi i32 [ %93, %95 ], [ %101, %100 ]
  %.in2 = phi i8* [ %98, %95 ], [ %102, %100 ]
  %106 = bitcast i8* %.in2 to i32*, !dbg !393
  %107 = load i32* %106, align 4, !dbg !393
  call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !150, metadata !262), !dbg !394
  call void @llvm.lifetime.start(i64 4, i8* %8), !dbg !365
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !365
  call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !229, metadata !262) #2, !dbg !365
  store i32 %105, i32* %1, align 4, !dbg !395, !tbaa !303
  call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !230, metadata !262) #2, !dbg !396
  store i32 %107, i32* %2, align 4, !dbg !395, !tbaa !303
  call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !229, metadata !262) #2, !dbg !365
  call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !230, metadata !262) #2, !dbg !396
  call void @gtp_print_vertices(i32 1, i32* %1, i32* %2) #7, !dbg !397
  call void @llvm.lifetime.end(i64 4, i8* %8), !dbg !398
  call void @llvm.lifetime.end(i64 4, i8* %9), !dbg !398
  br label %140, !dbg !399

; <label>:108                                     ; preds = %12
  %109 = load i32* %4, align 16, !dbg !400
  %110 = icmp ult i32 %109, 41, !dbg !400
  br i1 %110, label %111, label %116, !dbg !400

; <label>:111                                     ; preds = %108
  %112 = load i8** %5, align 16, !dbg !400
  %113 = sext i32 %109 to i64, !dbg !400
  %114 = getelementptr i8* %112, i64 %113, !dbg !400
  %115 = add i32 %109, 8, !dbg !400
  store i32 %115, i32* %4, align 16, !dbg !400
  br label %119, !dbg !400

; <label>:116                                     ; preds = %108
  %117 = load i8** %6, align 8, !dbg !400
  %118 = getelementptr i8* %117, i64 8, !dbg !400
  store i8* %118, i8** %6, align 8, !dbg !400
  br label %119, !dbg !400

; <label>:119                                     ; preds = %116, %111
  %.in = phi i8* [ %114, %111 ], [ %117, %116 ]
  %120 = bitcast i8* %.in to i32*, !dbg !400
  %121 = load i32* %120, align 4, !dbg !400
  call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !151, metadata !262), !dbg !401
  %122 = icmp eq i32 %121, 1, !dbg !402
  br i1 %122, label %123, label %126, !dbg !404

; <label>:123                                     ; preds = %119
  %124 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !405, !tbaa !344
  %125 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), %struct.__sFILE* %124) #7, !dbg !406
  br label %140, !dbg !406

; <label>:126                                     ; preds = %119
  %127 = icmp eq i32 %121, 2, !dbg !407
  %128 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !409, !tbaa !344
  br i1 %127, label %129, label %131, !dbg !410

; <label>:129                                     ; preds = %126
  %130 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), %struct.__sFILE* %128) #7, !dbg !411
  br label %140, !dbg !411

; <label>:131                                     ; preds = %126
  %132 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), %struct.__sFILE* %128) #7, !dbg !412
  br label %140

; <label>:133                                     ; preds = %12
  %134 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !413, !tbaa !344
  %135 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %134, i8* getelementptr inbounds ([33 x i8]* @.str8, i64 0, i64 0), i32 %15) #7, !dbg !414
  br label %140, !dbg !415

; <label>:136                                     ; preds = %10
  %137 = sext i8 %11 to i32, !dbg !416
  %138 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !417, !tbaa !344
  %139 = call i32 @putc(i32 %137, %struct.__sFILE* %138) #7, !dbg !418
  br label %140

; <label>:140                                     ; preds = %136, %123, %131, %129, %133, %104, %75, %59, %43, %27
  %.1 = phi i8* [ %13, %133 ], [ %13, %123 ], [ %13, %129 ], [ %13, %131 ], [ %13, %104 ], [ %13, %75 ], [ %13, %59 ], [ %13, %43 ], [ %13, %27 ], [ %.0, %136 ]
  %141 = getelementptr inbounds i8* %.1, i64 1, !dbg !419
  call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !119, metadata !262), !dbg !360
  br label %10, !dbg !420

; <label>:142                                     ; preds = %10
  call void @llvm.va_end(i8* %3), !dbg !421
  ret void, !dbg !422
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @putc(i32, %struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: optsize
declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @gtp_print_vertex(i32 %i, i32 %j) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %i, i64 0, metadata !229, metadata !262), !dbg !423
  store i32 %i, i32* %1, align 4, !tbaa !303
  tail call void @llvm.dbg.value(metadata i32 %j, i64 0, metadata !230, metadata !262), !dbg !424
  store i32 %j, i32* %2, align 4, !tbaa !303
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !229, metadata !262), !dbg !423
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !230, metadata !262), !dbg !424
  call void @gtp_print_vertices(i32 1, i32* %1, i32* %2) #8, !dbg !425
  ret void, !dbg !426
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @gtp_printf(i8* nocapture readonly %format, ...) #0 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !155, metadata !262), !dbg !427
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !156, metadata !262), !dbg !428
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !429
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !429
  call void @llvm.va_start(i8* %2), !dbg !429
  %3 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !430, !tbaa !344
  %4 = call i32 @vfprintf(%struct.__sFILE* %3, i8* %format, %struct.__va_list_tag* %1) #7, !dbg !431
  call void @llvm.va_end(i8* %2), !dbg !432
  ret void, !dbg !433
}

; Function Attrs: nounwind optsize
declare i32 @vfprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, %struct.__va_list_tag*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @gtp_start_response(i32 %status) #0 {
  tail call void @llvm.dbg.value(metadata i32 %status, i64 0, metadata !159, metadata !262), !dbg !434
  %1 = icmp eq i32 %status, 0, !dbg !435
  br i1 %1, label %2, label %3, !dbg !437

; <label>:2                                       ; preds = %0
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #8, !dbg !438
  br label %4, !dbg !438

; <label>:3                                       ; preds = %0
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #8, !dbg !439
  br label %4

; <label>:4                                       ; preds = %3, %2
  %5 = load i32* @current_id, align 4, !dbg !440, !tbaa !303
  %6 = icmp slt i32 %5, 0, !dbg !442
  br i1 %6, label %7, label %8, !dbg !443

; <label>:7                                       ; preds = %4
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #8, !dbg !444
  br label %9, !dbg !444

; <label>:8                                       ; preds = %4
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), i32 %5) #8, !dbg !445
  br label %9

; <label>:9                                       ; preds = %8, %7
  ret void, !dbg !446
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gtp_finish_response() #0 {
  tail call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #8, !dbg !447
  ret i32 0, !dbg !448
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gtp_success(i8* nocapture readonly %format, ...) #0 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !167, metadata !262), !dbg !449
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !168, metadata !262), !dbg !450
  tail call void @gtp_start_response(i32 0) #8, !dbg !451
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !452
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !452
  call void @llvm.va_start(i8* %2), !dbg !452
  %3 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !453, !tbaa !344
  %4 = call i32 @vfprintf(%struct.__sFILE* %3, i8* %format, %struct.__va_list_tag* %1) #7, !dbg !454
  call void @llvm.va_end(i8* %2), !dbg !455
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !456
  ret i32 0, !dbg !458
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gtp_decode_color(i8* nocapture readonly %s, i32* nocapture %color) #0 {
  %color_string = alloca [7 x i8], align 1
  %n = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !180, metadata !262), !dbg !459
  tail call void @llvm.dbg.value(metadata i32* %color, i64 0, metadata !181, metadata !262), !dbg !460
  tail call void @llvm.dbg.declare(metadata [7 x i8]* %color_string, metadata !182, metadata !262), !dbg !461
  %1 = load i32* @gtp_boardsize, align 4, !dbg !462, !tbaa !303
  %2 = icmp slt i32 %1, 1, !dbg !462
  br i1 %2, label %3, label %4, !dbg !462, !prof !463

; <label>:3                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([17 x i8]* @__func__.gtp_decode_color, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8]* @.str15, i64 0, i64 0), i32 312, i8* getelementptr inbounds ([18 x i8]* @.str16, i64 0, i64 0)) #9, !dbg !462
  unreachable, !dbg !462

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds [7 x i8]* %color_string, i64 0, i64 0, !dbg !464
  tail call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !187, metadata !262), !dbg !466
  %6 = call i32 (i8*, i8*, ...)* @sscanf(i8* %s, i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* %5, i32* %n) #7, !dbg !467
  %7 = icmp eq i32 %6, 1, !dbg !468
  br i1 %7, label %.preheader, label %32, !dbg !469

.preheader:                                       ; preds = %4
  %8 = call i64 @strlen(i8* %5) #7, !dbg !470
  %9 = trunc i64 %8 to i32, !dbg !473
  %10 = icmp sgt i32 %9, 0, !dbg !474
  br i1 %10, label %.lr.ph, label %._crit_edge, !dbg !475

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %11 = getelementptr inbounds [7 x i8]* %color_string, i64 0, i64 %indvars.iv, !dbg !476
  %12 = load i8* %11, align 1, !dbg !476, !tbaa !277
  %13 = sext i8 %12 to i32, !dbg !477
  call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !236, metadata !262) #2, !dbg !478
  %14 = call i32 @__tolower(i32 %13) #7, !dbg !480
  %15 = trunc i32 %14 to i8, !dbg !481
  store i8 %15, i8* %11, align 1, !dbg !482, !tbaa !277
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !475
  %16 = call i64 @strlen(i8* %5) #7, !dbg !470
  %sext = shl i64 %16, 32, !dbg !474
  %17 = ashr exact i64 %sext, 32, !dbg !474
  %18 = icmp slt i64 %indvars.iv.next, %17, !dbg !474
  br i1 %18, label %.lr.ph, label %._crit_edge, !dbg !475

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %19 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([2 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !483
  %20 = icmp eq i32 %19, 0, !dbg !485
  br i1 %20, label %30, label %21, !dbg !486

; <label>:21                                      ; preds = %._crit_edge
  %22 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !487
  %23 = icmp eq i32 %22, 0, !dbg !488
  br i1 %23, label %30, label %24, !dbg !489

; <label>:24                                      ; preds = %21
  %25 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !490
  %26 = icmp eq i32 %25, 0, !dbg !492
  br i1 %26, label %30, label %27, !dbg !493

; <label>:27                                      ; preds = %24
  %28 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !494
  %29 = icmp eq i32 %28, 0, !dbg !495
  br i1 %29, label %30, label %32, !dbg !496

; <label>:30                                      ; preds = %24, %27, %._crit_edge, %21
  %storemerge = phi i32 [ 2, %21 ], [ 2, %._crit_edge ], [ 1, %27 ], [ 1, %24 ]
  store i32 %storemerge, i32* %color, align 4, !dbg !497, !tbaa !303
  call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !187, metadata !262), !dbg !466
  %31 = load i32* %n, align 4, !dbg !498, !tbaa !303
  br label %32, !dbg !499

; <label>:32                                      ; preds = %27, %4, %30
  %.0 = phi i32 [ %31, %30 ], [ 0, %4 ], [ 0, %27 ]
  ret i32 %.0, !dbg !500
}

; Function Attrs: noreturn optsize
declare void @__assert_rtn(i8*, i8*, i32, i8*) #6

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gtp_decode_coord(i8* nocapture readonly %s, i32* %i, i32* %j) #0 {
  %column = alloca i8, align 1
  %row = alloca i32, align 4
  %n = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !192, metadata !262), !dbg !501
  tail call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !193, metadata !262), !dbg !502
  tail call void @llvm.dbg.value(metadata i32* %j, i64 0, metadata !194, metadata !262), !dbg !503
  %1 = load i32* @gtp_boardsize, align 4, !dbg !504, !tbaa !303
  %2 = icmp slt i32 %1, 1, !dbg !504
  br i1 %2, label %3, label %4, !dbg !504, !prof !463

; <label>:3                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([17 x i8]* @__func__.gtp_decode_coord, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8]* @.str15, i64 0, i64 0), i32 344, i8* getelementptr inbounds ([18 x i8]* @.str16, i64 0, i64 0)) #9, !dbg !504
  unreachable, !dbg !504

; <label>:4                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i8* %column, i64 0, metadata !195, metadata !262), !dbg !505
  tail call void @llvm.dbg.value(metadata i32* %row, i64 0, metadata !196, metadata !262), !dbg !506
  tail call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !197, metadata !262), !dbg !507
  %5 = call i32 (i8*, i8*, ...)* @sscanf(i8* %s, i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0), i8* %column, i32* %row, i32* %n) #7, !dbg !508
  %6 = icmp eq i32 %5, 2, !dbg !510
  br i1 %6, label %7, label %42, !dbg !511

; <label>:7                                       ; preds = %4
  call void @llvm.dbg.value(metadata i8* %column, i64 0, metadata !195, metadata !262), !dbg !505
  %8 = load i8* %column, align 1, !dbg !512, !tbaa !277
  %9 = sext i8 %8 to i32, !dbg !514
  call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !236, metadata !262) #2, !dbg !515
  %10 = call i32 @__tolower(i32 %9) #7, !dbg !517
  %11 = icmp eq i32 %10, 105, !dbg !518
  br i1 %11, label %42, label %12, !dbg !519

; <label>:12                                      ; preds = %7
  call void @llvm.dbg.value(metadata i8* %column, i64 0, metadata !195, metadata !262), !dbg !505
  %13 = load i8* %column, align 1, !dbg !520, !tbaa !277
  %14 = sext i8 %13 to i32, !dbg !521
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !236, metadata !262) #2, !dbg !522
  %15 = call i32 @__tolower(i32 %14) #7, !dbg !524
  %16 = add nsw i32 %15, -97, !dbg !525
  store i32 %16, i32* %j, align 4, !dbg !526, !tbaa !303
  call void @llvm.dbg.value(metadata i8* %column, i64 0, metadata !195, metadata !262), !dbg !505
  %17 = load i8* %column, align 1, !dbg !527, !tbaa !277
  %18 = sext i8 %17 to i32, !dbg !529
  call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !236, metadata !262) #2, !dbg !530
  %19 = call i32 @__tolower(i32 %18) #7, !dbg !532
  %20 = icmp sgt i32 %19, 105, !dbg !533
  br i1 %20, label %21, label %24, !dbg !534

; <label>:21                                      ; preds = %12
  %22 = load i32* %j, align 4, !dbg !535, !tbaa !303
  %23 = add nsw i32 %22, -1, !dbg !535
  store i32 %23, i32* %j, align 4, !dbg !535, !tbaa !303
  br label %24, !dbg !535

; <label>:24                                      ; preds = %21, %12
  %25 = load i32* @gtp_boardsize, align 4, !dbg !536, !tbaa !303
  call void @llvm.dbg.value(metadata i32* %row, i64 0, metadata !196, metadata !262), !dbg !506
  %26 = load i32* %row, align 4, !dbg !537, !tbaa !303
  %27 = sub nsw i32 %25, %26, !dbg !538
  store i32 %27, i32* %i, align 4, !dbg !539, !tbaa !303
  %28 = icmp slt i32 %27, 0, !dbg !540
  br i1 %28, label %42, label %29, !dbg !542

; <label>:29                                      ; preds = %24
  %30 = load i32* @gtp_boardsize, align 4, !dbg !543, !tbaa !303
  %31 = icmp slt i32 %27, %30, !dbg !544
  br i1 %31, label %32, label %42, !dbg !545

; <label>:32                                      ; preds = %29
  %33 = load i32* %j, align 4, !dbg !546, !tbaa !303
  %34 = icmp sgt i32 %33, -1, !dbg !547
  %35 = icmp slt i32 %33, %30, !dbg !548
  %or.cond = and i1 %34, %35, !dbg !549
  br i1 %or.cond, label %36, label %42, !dbg !549

; <label>:36                                      ; preds = %32
  %37 = load void (i32, i32, i32*, i32*)** @vertex_transform_input_hook, align 8, !dbg !550, !tbaa !344
  %38 = icmp eq void (i32, i32, i32*, i32*)* %37, null, !dbg !552
  br i1 %38, label %40, label %39, !dbg !553

; <label>:39                                      ; preds = %36
  call void %37(i32 %27, i32 %33, i32* %i, i32* %j) #7, !dbg !554
  br label %40, !dbg !554

; <label>:40                                      ; preds = %36, %39
  call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !197, metadata !262), !dbg !507
  %41 = load i32* %n, align 4, !dbg !555, !tbaa !303
  br label %42, !dbg !556

; <label>:42                                      ; preds = %24, %29, %32, %7, %4, %40
  %.0 = phi i32 [ %41, %40 ], [ 0, %4 ], [ 0, %7 ], [ 0, %32 ], [ 0, %29 ], [ 0, %24 ]
  ret i32 %.0, !dbg !557
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gtp_decode_move(i8* nocapture readonly %s, i32* nocapture %color, i32* %i, i32* %j) #0 {
  %n2 = alloca i32, align 4
  %buf = alloca [6 x i8], align 1
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !202, metadata !262), !dbg !558
  tail call void @llvm.dbg.value(metadata i32* %color, i64 0, metadata !203, metadata !262), !dbg !559
  tail call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !204, metadata !262), !dbg !560
  tail call void @llvm.dbg.value(metadata i32* %j, i64 0, metadata !205, metadata !262), !dbg !561
  %1 = load i32* @gtp_boardsize, align 4, !dbg !562, !tbaa !303
  %2 = icmp slt i32 %1, 1, !dbg !562
  br i1 %2, label %3, label %4, !dbg !562, !prof !463

; <label>:3                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.gtp_decode_move, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8]* @.str15, i64 0, i64 0), i32 376, i8* getelementptr inbounds ([18 x i8]* @.str16, i64 0, i64 0)) #9, !dbg !562
  unreachable, !dbg !562

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @gtp_decode_color(i8* %s, i32* %color) #8, !dbg !563
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !206, metadata !262), !dbg !564
  %6 = icmp eq i32 %5, 0, !dbg !565
  br i1 %6, label %33, label %7, !dbg !567

; <label>:7                                       ; preds = %4
  %8 = sext i32 %5 to i64, !dbg !568
  %9 = getelementptr inbounds i8* %s, i64 %8, !dbg !568
  %10 = tail call i32 @gtp_decode_coord(i8* %9, i32* %i, i32* %j) #8, !dbg !569
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !207, metadata !262), !dbg !570
  store i32 %10, i32* %n2, align 4, !dbg !571, !tbaa !303
  %11 = icmp eq i32 %10, 0, !dbg !572
  br i1 %11, label %12, label %30, !dbg !573

; <label>:12                                      ; preds = %7
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %buf, metadata !209, metadata !262), !dbg !574
  %13 = getelementptr inbounds [6 x i8]* %buf, i64 0, i64 0, !dbg !575
  tail call void @llvm.dbg.value(metadata i32* %n2, i64 0, metadata !207, metadata !262), !dbg !570
  %14 = call i32 (i8*, i8*, ...)* @sscanf(i8* %9, i8* getelementptr inbounds ([6 x i8]* @.str21, i64 0, i64 0), i8* %13, i32* %n2) #7, !dbg !577
  %15 = icmp eq i32 %14, 1, !dbg !578
  br i1 %15, label %.preheader, label %33, !dbg !579

.preheader:                                       ; preds = %12
  %16 = call i64 @strlen(i8* %13) #7, !dbg !580
  %17 = trunc i64 %16 to i32, !dbg !583
  %18 = icmp sgt i32 %17, 0, !dbg !584
  br i1 %18, label %.lr.ph, label %._crit_edge, !dbg !585

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %19 = getelementptr inbounds [6 x i8]* %buf, i64 0, i64 %indvars.iv, !dbg !586
  %20 = load i8* %19, align 1, !dbg !586, !tbaa !277
  %21 = sext i8 %20 to i32, !dbg !587
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !236, metadata !262) #2, !dbg !588
  %22 = call i32 @__tolower(i32 %21) #7, !dbg !590
  %23 = trunc i32 %22 to i8, !dbg !591
  store i8 %23, i8* %19, align 1, !dbg !592, !tbaa !277
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !585
  %24 = call i64 @strlen(i8* %13) #7, !dbg !580
  %sext = shl i64 %24, 32, !dbg !584
  %25 = ashr exact i64 %sext, 32, !dbg !584
  %26 = icmp slt i64 %indvars.iv.next, %25, !dbg !584
  br i1 %26, label %.lr.ph, label %._crit_edge, !dbg !585

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %27 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !593
  %28 = icmp eq i32 %27, 0, !dbg !595
  br i1 %28, label %29, label %33, !dbg !596

; <label>:29                                      ; preds = %._crit_edge
  store i32 -1, i32* %i, align 4, !dbg !597, !tbaa !303
  store i32 -1, i32* %j, align 4, !dbg !598, !tbaa !303
  %.pre = load i32* %n2, align 4, !dbg !599, !tbaa !303
  br label %30, !dbg !600

; <label>:30                                      ; preds = %29, %7
  %31 = phi i32 [ %.pre, %29 ], [ %10, %7 ]
  call void @llvm.dbg.value(metadata i32* %n2, i64 0, metadata !207, metadata !262), !dbg !570
  %32 = add nsw i32 %31, %5, !dbg !601
  br label %33, !dbg !602

; <label>:33                                      ; preds = %._crit_edge, %12, %4, %30
  %.0 = phi i32 [ %32, %30 ], [ 0, %4 ], [ 0, %12 ], [ 0, %._crit_edge ]
  ret i32 %.0, !dbg !603
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gtp_print_vertices(i32 %n, i32* nocapture %movei, i32* nocapture %movej) #0 {
  %ri = alloca i32, align 4
  %rj = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !219, metadata !262), !dbg !604
  tail call void @llvm.dbg.value(metadata i32* %movei, i64 0, metadata !220, metadata !262), !dbg !605
  tail call void @llvm.dbg.value(metadata i32* %movej, i64 0, metadata !221, metadata !262), !dbg !606
  %1 = load i32* @gtp_boardsize, align 4, !dbg !607, !tbaa !303
  %2 = icmp slt i32 %1, 1, !dbg !607
  br i1 %2, label %3, label %4, !dbg !607, !prof !463

; <label>:3                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.gtp_print_vertices, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8]* @.str15, i64 0, i64 0), i32 431, i8* getelementptr inbounds ([18 x i8]* @.str16, i64 0, i64 0)) #9, !dbg !607
  unreachable, !dbg !607

; <label>:4                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !239, metadata !262), !dbg !608
  tail call void @llvm.dbg.value(metadata i32* %movei, i64 0, metadata !240, metadata !262), !dbg !610
  tail call void @llvm.dbg.value(metadata i32* %movej, i64 0, metadata !241, metadata !262), !dbg !611
  %5 = icmp sgt i32 %n, 1, !dbg !612
  br i1 %5, label %.preheader.lr.ph.i, label %sort_moves.exit.preheader, !dbg !613

.preheader.lr.ph.i:                               ; preds = %4
  %6 = sext i32 %n to i64, !dbg !614
  br label %.lr.ph.i, !dbg !613

.loopexit.i:                                      ; preds = %27
  %7 = icmp sgt i64 %indvars.iv.next5.i, 1, !dbg !612
  br i1 %7, label %.lr.ph.i, label %sort_moves.exit.preheader, !dbg !613

sort_moves.exit.preheader:                        ; preds = %.loopexit.i, %4
  %8 = icmp sgt i32 %n, 0, !dbg !615
  br i1 %8, label %.lr.ph, label %sort_moves.exit._crit_edge, !dbg !618

.lr.ph:                                           ; preds = %sort_moves.exit.preheader
  %9 = add i32 %n, -1, !dbg !618
  br label %29, !dbg !618

.lr.ph.i:                                         ; preds = %.loopexit.i, %.preheader.lr.ph.i
  %indvars.iv4.i = phi i64 [ %6, %.preheader.lr.ph.i ], [ %indvars.iv.next5.i, %.loopexit.i ], !dbg !614
  %indvars.iv.next5.i = add nsw i64 %indvars.iv4.i, -1, !dbg !613
  %10 = getelementptr inbounds i32* %movei, i64 %indvars.iv.next5.i, !dbg !619
  %11 = getelementptr inbounds i32* %movej, i64 %indvars.iv.next5.i, !dbg !620
  br label %12, !dbg !621

; <label>:12                                      ; preds = %27, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %27 ], !dbg !614
  %13 = getelementptr inbounds i32* %movei, i64 %indvars.iv.i, !dbg !622
  %14 = load i32* %13, align 4, !dbg !622, !tbaa !303
  %15 = load i32* %10, align 4, !dbg !619, !tbaa !303
  %16 = icmp sgt i32 %14, %15, !dbg !623
  br i1 %16, label %._crit_edge6.i, label %17, !dbg !624

._crit_edge6.i:                                   ; preds = %12
  %.pre.i = getelementptr inbounds i32* %movej, i64 %indvars.iv.i, !dbg !625
  br label %24, !dbg !624

; <label>:17                                      ; preds = %12
  %18 = icmp eq i32 %14, %15, !dbg !626
  br i1 %18, label %19, label %27, !dbg !627

; <label>:19                                      ; preds = %17
  %20 = getelementptr inbounds i32* %movej, i64 %indvars.iv.i, !dbg !628
  %21 = load i32* %20, align 4, !dbg !628, !tbaa !303
  %22 = load i32* %11, align 4, !dbg !629, !tbaa !303
  %23 = icmp sgt i32 %21, %22, !dbg !630
  br i1 %23, label %24, label %27, !dbg !631

; <label>:24                                      ; preds = %19, %._crit_edge6.i
  %.pre-phi.i = phi i32* [ %.pre.i, %._crit_edge6.i ], [ %20, %19 ], !dbg !625
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !244, metadata !262), !dbg !632
  store i32 %14, i32* %10, align 4, !dbg !633, !tbaa !303
  store i32 %15, i32* %13, align 4, !dbg !634, !tbaa !303
  %25 = load i32* %11, align 4, !dbg !620, !tbaa !303
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !244, metadata !262), !dbg !632
  %26 = load i32* %.pre-phi.i, align 4, !dbg !625, !tbaa !303
  store i32 %26, i32* %11, align 4, !dbg !635, !tbaa !303
  store i32 %25, i32* %.pre-phi.i, align 4, !dbg !636, !tbaa !303
  br label %27, !dbg !637

; <label>:27                                      ; preds = %24, %19, %17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !621
  %28 = icmp slt i64 %indvars.iv.next.i, %indvars.iv.next5.i, !dbg !638
  br i1 %28, label %12, label %.loopexit.i, !dbg !621

; <label>:29                                      ; preds = %sort_moves.exit, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sort_moves.exit ]
  %30 = icmp sgt i64 %indvars.iv, 0, !dbg !639
  br i1 %30, label %31, label %32, !dbg !642

; <label>:31                                      ; preds = %29
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #8, !dbg !643
  br label %32, !dbg !643

; <label>:32                                      ; preds = %31, %29
  %33 = getelementptr inbounds i32* %movei, i64 %indvars.iv, !dbg !644
  %34 = load i32* %33, align 4, !dbg !644, !tbaa !303
  %35 = icmp eq i32 %34, -1, !dbg !646
  br i1 %35, label %36, label %thread-pre-split, !dbg !647

; <label>:36                                      ; preds = %32
  %37 = getelementptr inbounds i32* %movej, i64 %indvars.iv, !dbg !648
  %38 = load i32* %37, align 4, !dbg !648, !tbaa !303
  %39 = icmp eq i32 %38, -1, !dbg !649
  br i1 %39, label %40, label %thread-pre-split.thread, !dbg !650

; <label>:40                                      ; preds = %36
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0)) #8, !dbg !651
  br label %sort_moves.exit, !dbg !651

thread-pre-split:                                 ; preds = %32
  %41 = icmp slt i32 %34, 0, !dbg !652
  br i1 %41, label %thread-pre-split.thread, label %42, !dbg !654

; <label>:42                                      ; preds = %thread-pre-split
  %43 = load i32* @gtp_boardsize, align 4, !dbg !655, !tbaa !303
  %44 = icmp slt i32 %34, %43, !dbg !656
  br i1 %44, label %45, label %thread-pre-split.thread, !dbg !657

; <label>:45                                      ; preds = %42
  %46 = getelementptr inbounds i32* %movej, i64 %indvars.iv, !dbg !658
  %47 = load i32* %46, align 4, !dbg !658, !tbaa !303
  %48 = icmp sgt i32 %47, -1, !dbg !659
  %49 = icmp slt i32 %47, %43, !dbg !660
  %or.cond = and i1 %48, %49, !dbg !661
  br i1 %or.cond, label %50, label %thread-pre-split.thread, !dbg !661

thread-pre-split.thread:                          ; preds = %36, %45, %42, %thread-pre-split
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([3 x i8]* @.str24, i64 0, i64 0)) #8, !dbg !662
  br label %sort_moves.exit, !dbg !662

; <label>:50                                      ; preds = %45
  %51 = load void (i32, i32, i32*, i32*)** @vertex_transform_output_hook, align 8, !dbg !663, !tbaa !344
  %52 = icmp eq void (i32, i32, i32*, i32*)* %51, null, !dbg !666
  br i1 %52, label %54, label %53, !dbg !667

; <label>:53                                      ; preds = %50
  call void @llvm.dbg.value(metadata i32* %ri, i64 0, metadata !223, metadata !262), !dbg !668
  call void @llvm.dbg.value(metadata i32* %rj, i64 0, metadata !224, metadata !262), !dbg !669
  call void %51(i32 %34, i32 %47, i32* %ri, i32* %rj) #7, !dbg !670
  %.pre = load i32* %rj, align 4, !dbg !671, !tbaa !303
  %.pre2 = load i32* @gtp_boardsize, align 4, !dbg !672, !tbaa !303
  %.pre3 = load i32* %ri, align 4, !dbg !673, !tbaa !303
  br label %55, !dbg !670

; <label>:54                                      ; preds = %50
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !223, metadata !262), !dbg !668
  store i32 %34, i32* %ri, align 4, !dbg !674, !tbaa !303
  call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !224, metadata !262), !dbg !669
  store i32 %47, i32* %rj, align 4, !dbg !676, !tbaa !303
  br label %55

; <label>:55                                      ; preds = %54, %53
  %56 = phi i32 [ %34, %54 ], [ %.pre3, %53 ]
  %57 = phi i32 [ %43, %54 ], [ %.pre2, %53 ]
  %58 = phi i32 [ %47, %54 ], [ %.pre, %53 ]
  call void @llvm.dbg.value(metadata i32* %rj, i64 0, metadata !224, metadata !262), !dbg !669
  %59 = add nsw i32 %58, 65, !dbg !677
  %60 = icmp sgt i32 %58, 7, !dbg !678
  %61 = zext i1 %60 to i32, !dbg !678
  %62 = add nsw i32 %59, %61, !dbg !679
  call void @llvm.dbg.value(metadata i32* %ri, i64 0, metadata !223, metadata !262), !dbg !668
  %63 = sub nsw i32 %57, %56, !dbg !680
  call void (i8*, ...)* @gtp_printf(i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i32 %62, i32 %63) #8, !dbg !681
  br label %sort_moves.exit

sort_moves.exit:                                  ; preds = %40, %55, %thread-pre-split.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !618
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !618
  %exitcond = icmp eq i32 %lftr.wideiv, %9, !dbg !618
  br i1 %exitcond, label %sort_moves.exit._crit_edge, label %29, !dbg !618

sort_moves.exit._crit_edge:                       ; preds = %sort_moves.exit, %sort_moves.exit.preheader
  ret void, !dbg !682
}

; Function Attrs: optsize
declare i32 @__tolower(i32) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!258, !259, !260}
!llvm.ident = !{!261}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !253, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/445.gobmk/src/interface/gtp.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !99, !104, !115, !153, !157, !160, !163, !169, !173, !176, !188, !198, !215, !225, !231, !237}
!7 = !DISubprogram(name: "gtp_main_loop", scope: !1, file: !1, line: 73, type: !8, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.gtp_command*, %struct.__sFILE*)* @gtp_main_loop, variables: !82)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !24}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DICompositeType(tag: DW_TAG_structure_type, name: "gtp_command", file: !12, line: 62, size: 128, align: 64, elements: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/445.gobmk/src/interface/gtp.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !{!14, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !11, file: !12, line: 63, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !11, file: !12, line: 64, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "gtp_fn_ptr", file: !12, line: 56, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DISubroutineType(types: !22)
!22 = !{!5, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !26, line: 153, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !26, line: 122, size: 1216, align: 64, elements: !28)
!28 = !{!29, !32, !33, !34, !36, !37, !42, !43, !44, !48, !52, !62, !66, !67, !70, !71, !75, !79, !80, !81}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !27, file: !26, line: 123, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !27, file: !26, line: 124, baseType: !5, size: 32, align: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !27, file: !26, line: 125, baseType: !5, size: 32, align: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !27, file: !26, line: 126, baseType: !35, size: 16, align: 16, offset: 128)
!35 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !27, file: !26, line: 127, baseType: !35, size: 16, align: 16, offset: 144)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !27, file: !26, line: 128, baseType: !38, size: 128, align: 64, offset: 192)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !26, line: 88, size: 128, align: 64, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !38, file: !26, line: 89, baseType: !30, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !38, file: !26, line: 90, baseType: !5, size: 32, align: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !27, file: !26, line: 129, baseType: !5, size: 32, align: 32, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !27, file: !26, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !27, file: !26, line: 133, baseType: !45, size: 64, align: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!5, !4}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !27, file: !26, line: 134, baseType: !49, size: 64, align: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!5, !4, !23, !5}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !27, file: !26, line: 135, baseType: !53, size: 64, align: 64, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !4, !56, !5}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !26, line: 77, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !58, line: 71, baseType: !59)
!58 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !60, line: 46, baseType: !61)
!60 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!61 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !27, file: !26, line: 136, baseType: !63, size: 64, align: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!5, !4, !15, !5}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !27, file: !26, line: 139, baseType: !38, size: 128, align: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !27, file: !26, line: 140, baseType: !68, size: 64, align: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !26, line: 94, flags: DIFlagFwdDecl)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !27, file: !26, line: 141, baseType: !5, size: 32, align: 32, offset: 896)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !27, file: !26, line: 144, baseType: !72, size: 24, align: 8, offset: 928)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, align: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !27, file: !26, line: 145, baseType: !76, size: 8, align: 8, offset: 952)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 1)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !27, file: !26, line: 148, baseType: !38, size: 128, align: 64, offset: 960)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !27, file: !26, line: 151, baseType: !5, size: 32, align: 32, offset: 1088)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !27, file: !26, line: 152, baseType: !56, size: 64, align: 64, offset: 1152)
!82 = !{!83, !84, !85, !89, !90, !91, !92, !93, !94}
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "commands", arg: 1, scope: !7, file: !1, line: 73, type: !10)
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gtp_input", arg: 2, scope: !7, file: !1, line: 73, type: !24)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !7, file: !1, line: 75, type: !86)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8000, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 1000)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "command", scope: !7, file: !1, line: 76, type: !86)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !7, file: !1, line: 77, type: !23)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !7, file: !1, line: 78, type: !5)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !7, file: !1, line: 79, type: !5)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !7, file: !1, line: 80, type: !5)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !95, file: !1, line: 89, type: !17)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 88, column: 41)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 88, column: 5)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 88, column: 5)
!98 = distinct !DILexicalBlock(scope: !7, file: !1, line: 82, column: 28)
!99 = !DISubprogram(name: "gtp_internal_set_boardsize", scope: !1, file: !1, line: 140, type: !100, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @gtp_internal_set_boardsize, variables: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !5}
!102 = !{!103}
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !99, file: !1, line: 140, type: !5)
!104 = !DISubprogram(name: "gtp_set_vertex_transform_hooks", scope: !1, file: !1, line: 151, type: !105, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, function: void (void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)*)* @gtp_set_vertex_transform_hooks, variables: !112)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107, !107}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "gtp_transform_ptr", file: !12, line: 59, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !5, !5, !111, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!112 = !{!113, !114}
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in", arg: 1, scope: !104, file: !1, line: 151, type: !107)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 2, scope: !104, file: !1, line: 151, type: !107)
!115 = !DISubprogram(name: "gtp_mprintf", scope: !1, file: !1, line: 164, type: !116, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, ...)* @gtp_mprintf, variables: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !15, null}
!118 = !{!119, !120, !133, !141, !143, !146, !148, !150, !151}
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 1, scope: !115, file: !1, line: 164, type: !15)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !115, file: !1, line: 166, type: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !122, line: 30, baseType: !123)
!122 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.0.0/include/stdarg.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 166, baseType: !124)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 192, align: 64, elements: !77)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 166, baseType: !126)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 166, size: 192, align: 64, elements: !127)
!127 = !{!128, !130, !131, !132}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !126, file: !1, line: 166, baseType: !129, size: 32, align: 32)
!129 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !126, file: !1, line: 166, baseType: !129, size: 32, align: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !126, file: !1, line: 166, baseType: !4, size: 64, align: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !126, file: !1, line: 166, baseType: !4, size: 64, align: 64, offset: 128)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !134, file: !1, line: 175, type: !5)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 173, column: 7)
!135 = distinct !DILexicalBlock(scope: !136, file: !1, line: 171, column: 23)
!136 = distinct !DILexicalBlock(scope: !137, file: !1, line: 170, column: 22)
!137 = distinct !DILexicalBlock(scope: !138, file: !1, line: 170, column: 9)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 169, column: 24)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 169, column: 3)
!140 = distinct !DILexicalBlock(scope: !115, file: !1, line: 169, column: 3)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !142, file: !1, line: 181, type: !5)
!142 = distinct !DILexicalBlock(scope: !135, file: !1, line: 180, column: 7)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !144, file: !1, line: 187, type: !145)
!144 = distinct !DILexicalBlock(scope: !135, file: !1, line: 186, column: 7)
!145 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !147, file: !1, line: 193, type: !23)
!147 = distinct !DILexicalBlock(scope: !135, file: !1, line: 192, column: 7)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !149, file: !1, line: 199, type: !5)
!149 = distinct !DILexicalBlock(scope: !135, file: !1, line: 198, column: 7)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !149, file: !1, line: 200, type: !5)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "color", scope: !152, file: !1, line: 206, type: !5)
!152 = distinct !DILexicalBlock(scope: !135, file: !1, line: 205, column: 7)
!153 = !DISubprogram(name: "gtp_printf", scope: !1, file: !1, line: 229, type: !116, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, ...)* @gtp_printf, variables: !154)
!154 = !{!155, !156}
!155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 1, scope: !153, file: !1, line: 229, type: !15)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !153, file: !1, line: 231, type: !121)
!157 = !DISubprogram(name: "gtp_start_response", scope: !1, file: !1, line: 242, type: !100, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @gtp_start_response, variables: !158)
!158 = !{!159}
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !157, file: !1, line: 242, type: !5)
!160 = !DISubprogram(name: "gtp_finish_response", scope: !1, file: !1, line: 258, type: !161, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @gtp_finish_response, variables: !2)
!161 = !DISubroutineType(types: !162)
!162 = !{!5}
!163 = !DISubprogram(name: "gtp_success", scope: !1, file: !1, line: 269, type: !164, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, ...)* @gtp_success, variables: !166)
!164 = !DISubroutineType(types: !165)
!165 = !{!5, !15, null}
!166 = !{!167, !168}
!167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 1, scope: !163, file: !1, line: 269, type: !15)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !163, file: !1, line: 271, type: !121)
!169 = !DISubprogram(name: "gtp_failure", scope: !1, file: !1, line: 282, type: !164, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, ...)* @gtp_failure, variables: !170)
!170 = !{!171, !172}
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 1, scope: !169, file: !1, line: 282, type: !15)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !169, file: !1, line: 284, type: !121)
!173 = !DISubprogram(name: "gtp_panic", scope: !1, file: !1, line: 295, type: !174, isLocal: false, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @gtp_panic, variables: !2)
!174 = !DISubroutineType(types: !175)
!175 = !{null}
!176 = !DISubprogram(name: "gtp_decode_color", scope: !1, file: !1, line: 306, type: !177, isLocal: false, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32*)* @gtp_decode_color, variables: !179)
!177 = !DISubroutineType(types: !178)
!178 = !{!5, !23, !111}
!179 = !{!180, !181, !182, !186, !187}
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !176, file: !1, line: 306, type: !23)
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "color", arg: 2, scope: !176, file: !1, line: 306, type: !111)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "color_string", scope: !176, file: !1, line: 308, type: !183)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 56, align: 8, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 7)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !176, file: !1, line: 309, type: !5)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !176, file: !1, line: 310, type: !5)
!188 = !DISubprogram(name: "gtp_decode_coord", scope: !1, file: !1, line: 338, type: !189, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32*, i32*)* @gtp_decode_coord, variables: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{!5, !23, !111, !111}
!191 = !{!192, !193, !194, !195, !196, !197}
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !188, file: !1, line: 338, type: !23)
!193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !188, file: !1, line: 338, type: !111)
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "j", arg: 3, scope: !188, file: !1, line: 338, type: !111)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "column", scope: !188, file: !1, line: 340, type: !17)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "row", scope: !188, file: !1, line: 341, type: !5)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !188, file: !1, line: 342, type: !5)
!198 = !DISubprogram(name: "gtp_decode_move", scope: !1, file: !1, line: 371, type: !199, isLocal: false, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32*, i32*, i32*)* @gtp_decode_move, variables: !201)
!199 = !DISubroutineType(types: !200)
!200 = !{!5, !23, !111, !111, !111}
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209}
!202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !198, file: !1, line: 371, type: !23)
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "color", arg: 2, scope: !198, file: !1, line: 371, type: !111)
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 3, scope: !198, file: !1, line: 371, type: !111)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "j", arg: 4, scope: !198, file: !1, line: 371, type: !111)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n1", scope: !198, file: !1, line: 373, type: !5)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n2", scope: !198, file: !1, line: 373, type: !5)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !198, file: !1, line: 374, type: !5)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !210, file: !1, line: 384, type: !212)
!210 = distinct !DILexicalBlock(scope: !211, file: !1, line: 383, column: 16)
!211 = distinct !DILexicalBlock(scope: !198, file: !1, line: 383, column: 7)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 48, align: 8, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 6)
!215 = !DISubprogram(name: "gtp_print_vertices", scope: !1, file: !1, line: 426, type: !216, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32*, i32*)* @gtp_print_vertices, variables: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !5, !111, !111}
!218 = !{!219, !220, !221, !222, !223, !224}
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !215, file: !1, line: 426, type: !5)
!220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "movei", arg: 2, scope: !215, file: !1, line: 426, type: !111)
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "movej", arg: 3, scope: !215, file: !1, line: 426, type: !111)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !215, file: !1, line: 428, type: !5)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ri", scope: !215, file: !1, line: 429, type: !5)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rj", scope: !215, file: !1, line: 429, type: !5)
!225 = !DISubprogram(name: "gtp_print_vertex", scope: !1, file: !1, line: 456, type: !226, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32)* @gtp_print_vertex, variables: !228)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !5, !5}
!228 = !{!229, !230}
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 1, scope: !225, file: !1, line: 456, type: !5)
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "j", arg: 2, scope: !225, file: !1, line: 456, type: !5)
!231 = !DISubprogram(name: "tolower", scope: !232, file: !232, line: 292, type: !233, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, variables: !235)
!232 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!233 = !DISubroutineType(types: !234)
!234 = !{!5, !5}
!235 = !{!236}
!236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !231, file: !232, line: 292, type: !5)
!237 = !DISubprogram(name: "sort_moves", scope: !1, file: !1, line: 403, type: !216, isLocal: true, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: true, variables: !238)
!238 = !{!239, !240, !241, !242, !243, !244}
!239 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !237, file: !1, line: 403, type: !5)
!240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "movei", arg: 2, scope: !237, file: !1, line: 403, type: !111)
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "movej", arg: 3, scope: !237, file: !1, line: 403, type: !111)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !237, file: !1, line: 405, type: !5)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !237, file: !1, line: 405, type: !5)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !245, file: !1, line: 410, type: !5)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 409, column: 54)
!246 = distinct !DILexicalBlock(scope: !247, file: !1, line: 408, column: 11)
!247 = distinct !DILexicalBlock(scope: !248, file: !1, line: 407, column: 29)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 407, column: 5)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 407, column: 5)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 406, column: 29)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 406, column: 3)
!252 = distinct !DILexicalBlock(scope: !237, file: !1, line: 406, column: 3)
!253 = !{!254, !255, !256, !257}
!254 = !DIGlobalVariable(name: "current_id", scope: !0, file: !1, line: 69, type: !5, isLocal: true, isDefinition: true, variable: i32* @current_id)
!255 = !DIGlobalVariable(name: "gtp_boardsize", scope: !0, file: !1, line: 59, type: !5, isLocal: true, isDefinition: true, variable: i32* @gtp_boardsize)
!256 = !DIGlobalVariable(name: "vertex_transform_input_hook", scope: !0, file: !1, line: 62, type: !107, isLocal: true, isDefinition: true, variable: void (i32, i32, i32*, i32*)** @vertex_transform_input_hook)
!257 = !DIGlobalVariable(name: "vertex_transform_output_hook", scope: !0, file: !1, line: 63, type: !107, isLocal: true, isDefinition: true, variable: void (i32, i32, i32*, i32*)** @vertex_transform_output_hook)
!258 = !{i32 2, !"Dwarf Version", i32 2}
!259 = !{i32 2, !"Debug Info Version", i32 700000003}
!260 = !{i32 1, !"PIC Level", i32 2}
!261 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!262 = !DIExpression()
!263 = !DILocation(line: 73, column: 34, scope: !7)
!264 = !DILocation(line: 73, column: 52, scope: !7)
!265 = !DILocation(line: 75, column: 3, scope: !7)
!266 = !DILocation(line: 75, column: 8, scope: !7)
!267 = !DILocation(line: 76, column: 3, scope: !7)
!268 = !DILocation(line: 76, column: 8, scope: !7)
!269 = !DILocation(line: 80, column: 7, scope: !7)
!270 = !DILocation(line: 124, column: 29, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 124, column: 5)
!272 = distinct !DILexicalBlock(scope: !98, file: !1, line: 124, column: 5)
!273 = !DILocation(line: 84, column: 10, scope: !274)
!274 = distinct !DILexicalBlock(scope: !98, file: !1, line: 84, column: 9)
!275 = !DILocation(line: 84, column: 9, scope: !98)
!276 = !DILocation(line: 88, column: 27, scope: !96)
!277 = !{!278, !278, i64 0}
!278 = !{!"omnipotent char", !279, i64 0}
!279 = !{!"Simple C/C++ TBAA"}
!280 = !DILocation(line: 88, column: 5, scope: !97)
!281 = !DILocation(line: 92, column: 4, scope: !282)
!282 = distinct !DILexicalBlock(scope: !95, file: !1, line: 91, column: 11)
!283 = !DILocation(line: 77, column: 9, scope: !7)
!284 = !DILocation(line: 92, column: 7, scope: !282)
!285 = !DILocation(line: 92, column: 2, scope: !282)
!286 = !DILocation(line: 94, column: 23, scope: !287)
!287 = distinct !DILexicalBlock(scope: !282, file: !1, line: 94, column: 16)
!288 = !DILocation(line: 95, column: 21, scope: !287)
!289 = !DILocation(line: 96, column: 14, scope: !287)
!290 = !DILocation(line: 99, column: 18, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !1, line: 99, column: 16)
!292 = !DILocation(line: 99, column: 16, scope: !287)
!293 = !DILocation(line: 103, column: 4, scope: !291)
!294 = !DILocation(line: 103, column: 7, scope: !291)
!295 = !DILocation(line: 88, column: 5, scope: !96)
!296 = !DILocation(line: 106, column: 8, scope: !98)
!297 = !DILocation(line: 79, column: 7, scope: !7)
!298 = !DILocation(line: 111, column: 9, scope: !299)
!299 = distinct !DILexicalBlock(scope: !98, file: !1, line: 111, column: 9)
!300 = !DILocation(line: 111, column: 44, scope: !299)
!301 = !DILocation(line: 111, column: 9, scope: !98)
!302 = !DILocation(line: 112, column: 12, scope: !299)
!303 = !{!304, !304, i64 0}
!304 = !{!"int", !278, i64 0}
!305 = !DILocation(line: 112, column: 9, scope: !299)
!306 = !DILocation(line: 112, column: 7, scope: !299)
!307 = !DILocation(line: 114, column: 18, scope: !299)
!308 = !DILocation(line: 117, column: 9, scope: !309)
!309 = distinct !DILexicalBlock(scope: !98, file: !1, line: 117, column: 9)
!310 = !DILocation(line: 117, column: 42, scope: !309)
!311 = !DILocation(line: 117, column: 9, scope: !98)
!312 = !DILocation(line: 119, column: 10, scope: !98)
!313 = !DILocation(line: 119, column: 7, scope: !98)
!314 = !DILocation(line: 78, column: 7, scope: !7)
!315 = !{!316, !317, i64 0}
!316 = !{!"gtp_command", !317, i64 0, !317, i64 8}
!317 = !{!"any pointer", !278, i64 0}
!318 = !DILocation(line: 124, column: 34, scope: !271)
!319 = !DILocation(line: 124, column: 5, scope: !272)
!320 = !DILocation(line: 125, column: 11, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !1, line: 125, column: 11)
!322 = distinct !DILexicalBlock(scope: !271, file: !1, line: 124, column: 48)
!323 = !DILocation(line: 125, column: 45, scope: !321)
!324 = !DILocation(line: 125, column: 11, scope: !322)
!325 = !DILocation(line: 126, column: 25, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !1, line: 125, column: 51)
!327 = !{!316, !317, i64 8}
!328 = !DILocation(line: 126, column: 11, scope: !326)
!329 = !DILocation(line: 130, column: 21, scope: !330)
!330 = distinct !DILexicalBlock(scope: !98, file: !1, line: 130, column: 9)
!331 = !DILocation(line: 130, column: 26, scope: !330)
!332 = !DILocation(line: 130, column: 9, scope: !98)
!333 = !DILocation(line: 131, column: 7, scope: !330)
!334 = !DILocation(line: 133, column: 9, scope: !98)
!335 = !DILocation(line: 297, column: 3, scope: !173, inlinedAt: !336)
!336 = distinct !DILocation(line: 134, column: 7, scope: !337)
!337 = distinct !DILexicalBlock(scope: !98, file: !1, line: 133, column: 9)
!338 = !DILocation(line: 136, column: 1, scope: !7)
!339 = !DILocation(line: 282, column: 25, scope: !169)
!340 = !DILocation(line: 284, column: 11, scope: !169)
!341 = !DILocation(line: 285, column: 3, scope: !169)
!342 = !DILocation(line: 286, column: 3, scope: !169)
!343 = !DILocation(line: 287, column: 12, scope: !169)
!344 = !{!317, !317, i64 0}
!345 = !DILocation(line: 287, column: 3, scope: !169)
!346 = !DILocation(line: 288, column: 3, scope: !169)
!347 = !DILocation(line: 260, column: 3, scope: !160, inlinedAt: !348)
!348 = distinct !DILocation(line: 289, column: 10, scope: !169)
!349 = !DILocation(line: 289, column: 3, scope: !169)
!350 = !DILocation(line: 297, column: 3, scope: !173)
!351 = !DILocation(line: 298, column: 1, scope: !173)
!352 = !DILocation(line: 140, column: 32, scope: !99)
!353 = !DILocation(line: 142, column: 17, scope: !99)
!354 = !DILocation(line: 143, column: 1, scope: !99)
!355 = !DILocation(line: 151, column: 50, scope: !104)
!356 = !DILocation(line: 151, column: 72, scope: !104)
!357 = !DILocation(line: 153, column: 31, scope: !104)
!358 = !DILocation(line: 154, column: 32, scope: !104)
!359 = !DILocation(line: 155, column: 1, scope: !104)
!360 = !DILocation(line: 164, column: 25, scope: !115)
!361 = !DILocation(line: 166, column: 11, scope: !115)
!362 = !DILocation(line: 167, column: 3, scope: !115)
!363 = !DILocation(line: 175, column: 10, scope: !134)
!364 = !DILocation(line: 187, column: 13, scope: !144)
!365 = !DILocation(line: 456, column: 22, scope: !225, inlinedAt: !366)
!366 = distinct !DILocation(line: 201, column: 9, scope: !149)
!367 = !DILocation(line: 169, column: 3, scope: !115)
!368 = !DILocation(line: 169, column: 10, scope: !139)
!369 = !DILocation(line: 169, column: 3, scope: !140)
!370 = !DILocation(line: 171, column: 16, scope: !136)
!371 = !DILocation(line: 171, column: 15, scope: !136)
!372 = !DILocation(line: 171, column: 7, scope: !136)
!373 = !DILocation(line: 175, column: 6, scope: !134)
!374 = !DILocation(line: 176, column: 10, scope: !134)
!375 = !DILocation(line: 176, column: 2, scope: !134)
!376 = !DILocation(line: 177, column: 2, scope: !134)
!377 = !DILocation(line: 181, column: 10, scope: !142)
!378 = !DILocation(line: 181, column: 6, scope: !142)
!379 = !DILocation(line: 182, column: 10, scope: !142)
!380 = !DILocation(line: 182, column: 2, scope: !142)
!381 = !DILocation(line: 183, column: 2, scope: !142)
!382 = !DILocation(line: 187, column: 9, scope: !144)
!383 = !DILocation(line: 188, column: 10, scope: !144)
!384 = !DILocation(line: 188, column: 2, scope: !144)
!385 = !DILocation(line: 189, column: 2, scope: !144)
!386 = !DILocation(line: 193, column: 12, scope: !147)
!387 = !DILocation(line: 193, column: 8, scope: !147)
!388 = !DILocation(line: 194, column: 11, scope: !147)
!389 = !DILocation(line: 194, column: 2, scope: !147)
!390 = !DILocation(line: 195, column: 2, scope: !147)
!391 = !DILocation(line: 199, column: 10, scope: !149)
!392 = !DILocation(line: 199, column: 6, scope: !149)
!393 = !DILocation(line: 200, column: 10, scope: !149)
!394 = !DILocation(line: 200, column: 6, scope: !149)
!395 = !DILocation(line: 201, column: 9, scope: !149)
!396 = !DILocation(line: 456, column: 29, scope: !225, inlinedAt: !366)
!397 = !DILocation(line: 458, column: 3, scope: !225, inlinedAt: !366)
!398 = !DILocation(line: 459, column: 1, scope: !225, inlinedAt: !366)
!399 = !DILocation(line: 202, column: 2, scope: !149)
!400 = !DILocation(line: 206, column: 14, scope: !152)
!401 = !DILocation(line: 206, column: 6, scope: !152)
!402 = !DILocation(line: 207, column: 12, scope: !403)
!403 = distinct !DILexicalBlock(scope: !152, file: !1, line: 207, column: 6)
!404 = !DILocation(line: 207, column: 6, scope: !152)
!405 = !DILocation(line: 208, column: 19, scope: !403)
!406 = !DILocation(line: 208, column: 4, scope: !403)
!407 = !DILocation(line: 209, column: 17, scope: !408)
!408 = distinct !DILexicalBlock(scope: !403, file: !1, line: 209, column: 11)
!409 = !DILocation(line: 210, column: 19, scope: !408)
!410 = !DILocation(line: 209, column: 11, scope: !403)
!411 = !DILocation(line: 210, column: 4, scope: !408)
!412 = !DILocation(line: 212, column: 4, scope: !408)
!413 = !DILocation(line: 216, column: 10, scope: !135)
!414 = !DILocation(line: 216, column: 2, scope: !135)
!415 = !DILocation(line: 217, column: 2, scope: !135)
!416 = !DILocation(line: 170, column: 9, scope: !137)
!417 = !DILocation(line: 221, column: 18, scope: !137)
!418 = !DILocation(line: 221, column: 7, scope: !137)
!419 = !DILocation(line: 169, column: 17, scope: !139)
!420 = !DILocation(line: 169, column: 3, scope: !139)
!421 = !DILocation(line: 223, column: 3, scope: !115)
!422 = !DILocation(line: 224, column: 1, scope: !115)
!423 = !DILocation(line: 456, column: 22, scope: !225)
!424 = !DILocation(line: 456, column: 29, scope: !225)
!425 = !DILocation(line: 458, column: 3, scope: !225)
!426 = !DILocation(line: 459, column: 1, scope: !225)
!427 = !DILocation(line: 229, column: 24, scope: !153)
!428 = !DILocation(line: 231, column: 11, scope: !153)
!429 = !DILocation(line: 232, column: 3, scope: !153)
!430 = !DILocation(line: 233, column: 12, scope: !153)
!431 = !DILocation(line: 233, column: 3, scope: !153)
!432 = !DILocation(line: 234, column: 3, scope: !153)
!433 = !DILocation(line: 235, column: 1, scope: !153)
!434 = !DILocation(line: 242, column: 24, scope: !157)
!435 = !DILocation(line: 244, column: 14, scope: !436)
!436 = distinct !DILexicalBlock(scope: !157, file: !1, line: 244, column: 7)
!437 = !DILocation(line: 244, column: 7, scope: !157)
!438 = !DILocation(line: 245, column: 5, scope: !436)
!439 = !DILocation(line: 247, column: 5, scope: !436)
!440 = !DILocation(line: 249, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !157, file: !1, line: 249, column: 7)
!442 = !DILocation(line: 249, column: 18, scope: !441)
!443 = !DILocation(line: 249, column: 7, scope: !157)
!444 = !DILocation(line: 250, column: 5, scope: !441)
!445 = !DILocation(line: 252, column: 5, scope: !441)
!446 = !DILocation(line: 253, column: 1, scope: !157)
!447 = !DILocation(line: 260, column: 3, scope: !160)
!448 = !DILocation(line: 261, column: 3, scope: !160)
!449 = !DILocation(line: 269, column: 25, scope: !163)
!450 = !DILocation(line: 271, column: 11, scope: !163)
!451 = !DILocation(line: 272, column: 3, scope: !163)
!452 = !DILocation(line: 273, column: 3, scope: !163)
!453 = !DILocation(line: 274, column: 12, scope: !163)
!454 = !DILocation(line: 274, column: 3, scope: !163)
!455 = !DILocation(line: 275, column: 3, scope: !163)
!456 = !DILocation(line: 260, column: 3, scope: !160, inlinedAt: !457)
!457 = distinct !DILocation(line: 276, column: 10, scope: !163)
!458 = !DILocation(line: 276, column: 3, scope: !163)
!459 = !DILocation(line: 306, column: 24, scope: !176)
!460 = !DILocation(line: 306, column: 32, scope: !176)
!461 = !DILocation(line: 308, column: 8, scope: !176)
!462 = !DILocation(line: 312, column: 3, scope: !176)
!463 = !{!"branch_weights", i32 4, i32 64}
!464 = !DILocation(line: 314, column: 26, scope: !465)
!465 = distinct !DILexicalBlock(scope: !176, file: !1, line: 314, column: 7)
!466 = !DILocation(line: 310, column: 7, scope: !176)
!467 = !DILocation(line: 314, column: 7, scope: !465)
!468 = !DILocation(line: 314, column: 44, scope: !465)
!469 = !DILocation(line: 314, column: 7, scope: !176)
!470 = !DILocation(line: 317, column: 25, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !1, line: 317, column: 3)
!472 = distinct !DILexicalBlock(scope: !176, file: !1, line: 317, column: 3)
!473 = !DILocation(line: 317, column: 19, scope: !471)
!474 = !DILocation(line: 317, column: 17, scope: !471)
!475 = !DILocation(line: 317, column: 3, scope: !472)
!476 = !DILocation(line: 318, column: 37, scope: !471)
!477 = !DILocation(line: 318, column: 31, scope: !471)
!478 = !DILocation(line: 292, column: 13, scope: !231, inlinedAt: !479)
!479 = distinct !DILocation(line: 318, column: 23, scope: !471)
!480 = !DILocation(line: 294, column: 17, scope: !231, inlinedAt: !479)
!481 = !DILocation(line: 318, column: 23, scope: !471)
!482 = !DILocation(line: 318, column: 21, scope: !471)
!483 = !DILocation(line: 320, column: 7, scope: !484)
!484 = distinct !DILexicalBlock(scope: !176, file: !1, line: 320, column: 7)
!485 = !DILocation(line: 320, column: 33, scope: !484)
!486 = !DILocation(line: 321, column: 7, scope: !484)
!487 = !DILocation(line: 321, column: 10, scope: !484)
!488 = !DILocation(line: 321, column: 40, scope: !484)
!489 = !DILocation(line: 320, column: 7, scope: !176)
!490 = !DILocation(line: 323, column: 12, scope: !491)
!491 = distinct !DILexicalBlock(scope: !484, file: !1, line: 323, column: 12)
!492 = !DILocation(line: 323, column: 38, scope: !491)
!493 = !DILocation(line: 324, column: 5, scope: !491)
!494 = !DILocation(line: 324, column: 8, scope: !491)
!495 = !DILocation(line: 324, column: 38, scope: !491)
!496 = !DILocation(line: 323, column: 12, scope: !484)
!497 = !DILocation(line: 322, column: 12, scope: !484)
!498 = !DILocation(line: 329, column: 10, scope: !176)
!499 = !DILocation(line: 329, column: 3, scope: !176)
!500 = !DILocation(line: 330, column: 1, scope: !176)
!501 = !DILocation(line: 338, column: 24, scope: !188)
!502 = !DILocation(line: 338, column: 32, scope: !188)
!503 = !DILocation(line: 338, column: 40, scope: !188)
!504 = !DILocation(line: 344, column: 3, scope: !188)
!505 = !DILocation(line: 340, column: 8, scope: !188)
!506 = !DILocation(line: 341, column: 7, scope: !188)
!507 = !DILocation(line: 342, column: 7, scope: !188)
!508 = !DILocation(line: 346, column: 7, scope: !509)
!509 = distinct !DILexicalBlock(scope: !188, file: !1, line: 346, column: 7)
!510 = !DILocation(line: 346, column: 47, scope: !509)
!511 = !DILocation(line: 346, column: 7, scope: !188)
!512 = !DILocation(line: 349, column: 21, scope: !513)
!513 = distinct !DILexicalBlock(scope: !188, file: !1, line: 349, column: 7)
!514 = !DILocation(line: 349, column: 15, scope: !513)
!515 = !DILocation(line: 292, column: 13, scope: !231, inlinedAt: !516)
!516 = distinct !DILocation(line: 349, column: 7, scope: !513)
!517 = !DILocation(line: 294, column: 17, scope: !231, inlinedAt: !516)
!518 = !DILocation(line: 349, column: 29, scope: !513)
!519 = !DILocation(line: 349, column: 7, scope: !188)
!520 = !DILocation(line: 351, column: 22, scope: !188)
!521 = !DILocation(line: 351, column: 16, scope: !188)
!522 = !DILocation(line: 292, column: 13, scope: !231, inlinedAt: !523)
!523 = distinct !DILocation(line: 351, column: 8, scope: !188)
!524 = !DILocation(line: 294, column: 17, scope: !231, inlinedAt: !523)
!525 = !DILocation(line: 351, column: 30, scope: !188)
!526 = !DILocation(line: 351, column: 6, scope: !188)
!527 = !DILocation(line: 352, column: 21, scope: !528)
!528 = distinct !DILexicalBlock(scope: !188, file: !1, line: 352, column: 7)
!529 = !DILocation(line: 352, column: 15, scope: !528)
!530 = !DILocation(line: 292, column: 13, scope: !231, inlinedAt: !531)
!531 = distinct !DILocation(line: 352, column: 7, scope: !528)
!532 = !DILocation(line: 294, column: 17, scope: !231, inlinedAt: !531)
!533 = !DILocation(line: 352, column: 29, scope: !528)
!534 = !DILocation(line: 352, column: 7, scope: !188)
!535 = !DILocation(line: 353, column: 5, scope: !528)
!536 = !DILocation(line: 355, column: 8, scope: !188)
!537 = !DILocation(line: 355, column: 24, scope: !188)
!538 = !DILocation(line: 355, column: 22, scope: !188)
!539 = !DILocation(line: 355, column: 6, scope: !188)
!540 = !DILocation(line: 357, column: 10, scope: !541)
!541 = distinct !DILexicalBlock(scope: !188, file: !1, line: 357, column: 7)
!542 = !DILocation(line: 357, column: 14, scope: !541)
!543 = !DILocation(line: 357, column: 23, scope: !541)
!544 = !DILocation(line: 357, column: 20, scope: !541)
!545 = !DILocation(line: 357, column: 37, scope: !541)
!546 = !DILocation(line: 357, column: 40, scope: !541)
!547 = !DILocation(line: 357, column: 43, scope: !541)
!548 = !DILocation(line: 357, column: 53, scope: !541)
!549 = !DILocation(line: 357, column: 47, scope: !541)
!550 = !DILocation(line: 360, column: 7, scope: !551)
!551 = distinct !DILexicalBlock(scope: !188, file: !1, line: 360, column: 7)
!552 = !DILocation(line: 360, column: 35, scope: !551)
!553 = !DILocation(line: 360, column: 7, scope: !188)
!554 = !DILocation(line: 361, column: 5, scope: !551)
!555 = !DILocation(line: 363, column: 10, scope: !188)
!556 = !DILocation(line: 363, column: 3, scope: !188)
!557 = !DILocation(line: 364, column: 1, scope: !188)
!558 = !DILocation(line: 371, column: 23, scope: !198)
!559 = !DILocation(line: 371, column: 31, scope: !198)
!560 = !DILocation(line: 371, column: 43, scope: !198)
!561 = !DILocation(line: 371, column: 51, scope: !198)
!562 = !DILocation(line: 376, column: 3, scope: !198)
!563 = !DILocation(line: 378, column: 8, scope: !198)
!564 = !DILocation(line: 373, column: 7, scope: !198)
!565 = !DILocation(line: 379, column: 10, scope: !566)
!566 = distinct !DILexicalBlock(scope: !198, file: !1, line: 379, column: 7)
!567 = !DILocation(line: 379, column: 7, scope: !198)
!568 = !DILocation(line: 382, column: 27, scope: !198)
!569 = !DILocation(line: 382, column: 8, scope: !198)
!570 = !DILocation(line: 373, column: 11, scope: !198)
!571 = !DILocation(line: 382, column: 6, scope: !198)
!572 = !DILocation(line: 383, column: 10, scope: !211)
!573 = !DILocation(line: 383, column: 7, scope: !198)
!574 = !DILocation(line: 384, column: 10, scope: !210)
!575 = !DILocation(line: 385, column: 33, scope: !576)
!576 = distinct !DILexicalBlock(scope: !210, file: !1, line: 385, column: 9)
!577 = !DILocation(line: 385, column: 9, scope: !576)
!578 = !DILocation(line: 385, column: 43, scope: !576)
!579 = !DILocation(line: 385, column: 9, scope: !210)
!580 = !DILocation(line: 387, column: 27, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 387, column: 5)
!582 = distinct !DILexicalBlock(scope: !210, file: !1, line: 387, column: 5)
!583 = !DILocation(line: 387, column: 21, scope: !581)
!584 = !DILocation(line: 387, column: 19, scope: !581)
!585 = !DILocation(line: 387, column: 5, scope: !582)
!586 = !DILocation(line: 388, column: 30, scope: !581)
!587 = !DILocation(line: 388, column: 24, scope: !581)
!588 = !DILocation(line: 292, column: 13, scope: !231, inlinedAt: !589)
!589 = distinct !DILocation(line: 388, column: 16, scope: !581)
!590 = !DILocation(line: 294, column: 17, scope: !231, inlinedAt: !589)
!591 = !DILocation(line: 388, column: 16, scope: !581)
!592 = !DILocation(line: 388, column: 14, scope: !581)
!593 = !DILocation(line: 389, column: 9, scope: !594)
!594 = distinct !DILexicalBlock(scope: !210, file: !1, line: 389, column: 9)
!595 = !DILocation(line: 389, column: 29, scope: !594)
!596 = !DILocation(line: 389, column: 9, scope: !210)
!597 = !DILocation(line: 391, column: 8, scope: !210)
!598 = !DILocation(line: 392, column: 8, scope: !210)
!599 = !DILocation(line: 395, column: 15, scope: !198)
!600 = !DILocation(line: 393, column: 3, scope: !210)
!601 = !DILocation(line: 395, column: 13, scope: !198)
!602 = !DILocation(line: 395, column: 3, scope: !198)
!603 = !DILocation(line: 396, column: 1, scope: !198)
!604 = !DILocation(line: 426, column: 24, scope: !215)
!605 = !DILocation(line: 426, column: 31, scope: !215)
!606 = !DILocation(line: 426, column: 44, scope: !215)
!607 = !DILocation(line: 431, column: 3, scope: !215)
!608 = !DILocation(line: 403, column: 16, scope: !237, inlinedAt: !609)
!609 = distinct !DILocation(line: 433, column: 3, scope: !215)
!610 = !DILocation(line: 403, column: 23, scope: !237, inlinedAt: !609)
!611 = !DILocation(line: 403, column: 36, scope: !237, inlinedAt: !609)
!612 = !DILocation(line: 406, column: 19, scope: !251, inlinedAt: !609)
!613 = !DILocation(line: 406, column: 3, scope: !252, inlinedAt: !609)
!614 = !DILocation(line: 433, column: 3, scope: !215)
!615 = !DILocation(line: 434, column: 17, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !1, line: 434, column: 3)
!617 = distinct !DILexicalBlock(scope: !215, file: !1, line: 434, column: 3)
!618 = !DILocation(line: 434, column: 3, scope: !617)
!619 = !DILocation(line: 408, column: 22, scope: !246, inlinedAt: !609)
!620 = !DILocation(line: 414, column: 8, scope: !245, inlinedAt: !609)
!621 = !DILocation(line: 407, column: 5, scope: !249, inlinedAt: !609)
!622 = !DILocation(line: 408, column: 11, scope: !246, inlinedAt: !609)
!623 = !DILocation(line: 408, column: 20, scope: !246, inlinedAt: !609)
!624 = !DILocation(line: 409, column: 4, scope: !246, inlinedAt: !609)
!625 = !DILocation(line: 415, column: 13, scope: !245, inlinedAt: !609)
!626 = !DILocation(line: 409, column: 17, scope: !246, inlinedAt: !609)
!627 = !DILocation(line: 409, column: 29, scope: !246, inlinedAt: !609)
!628 = !DILocation(line: 409, column: 32, scope: !246, inlinedAt: !609)
!629 = !DILocation(line: 409, column: 43, scope: !246, inlinedAt: !609)
!630 = !DILocation(line: 409, column: 41, scope: !246, inlinedAt: !609)
!631 = !DILocation(line: 408, column: 11, scope: !247, inlinedAt: !609)
!632 = !DILocation(line: 410, column: 6, scope: !245, inlinedAt: !609)
!633 = !DILocation(line: 412, column: 11, scope: !245, inlinedAt: !609)
!634 = !DILocation(line: 413, column: 11, scope: !245, inlinedAt: !609)
!635 = !DILocation(line: 415, column: 11, scope: !245, inlinedAt: !609)
!636 = !DILocation(line: 416, column: 11, scope: !245, inlinedAt: !609)
!637 = !DILocation(line: 417, column: 7, scope: !245, inlinedAt: !609)
!638 = !DILocation(line: 407, column: 19, scope: !248, inlinedAt: !609)
!639 = !DILocation(line: 435, column: 11, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !1, line: 435, column: 9)
!641 = distinct !DILexicalBlock(scope: !616, file: !1, line: 434, column: 27)
!642 = !DILocation(line: 435, column: 9, scope: !641)
!643 = !DILocation(line: 436, column: 7, scope: !640)
!644 = !DILocation(line: 437, column: 9, scope: !645)
!645 = distinct !DILexicalBlock(scope: !641, file: !1, line: 437, column: 9)
!646 = !DILocation(line: 437, column: 18, scope: !645)
!647 = !DILocation(line: 437, column: 24, scope: !645)
!648 = !DILocation(line: 437, column: 27, scope: !645)
!649 = !DILocation(line: 437, column: 36, scope: !645)
!650 = !DILocation(line: 437, column: 9, scope: !641)
!651 = !DILocation(line: 438, column: 7, scope: !645)
!652 = !DILocation(line: 439, column: 23, scope: !653)
!653 = distinct !DILexicalBlock(scope: !645, file: !1, line: 439, column: 14)
!654 = !DILocation(line: 439, column: 27, scope: !653)
!655 = !DILocation(line: 439, column: 42, scope: !653)
!656 = !DILocation(line: 439, column: 39, scope: !653)
!657 = !DILocation(line: 440, column: 7, scope: !653)
!658 = !DILocation(line: 440, column: 10, scope: !653)
!659 = !DILocation(line: 440, column: 19, scope: !653)
!660 = !DILocation(line: 440, column: 35, scope: !653)
!661 = !DILocation(line: 440, column: 23, scope: !653)
!662 = !DILocation(line: 441, column: 7, scope: !653)
!663 = !DILocation(line: 443, column: 11, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !1, line: 443, column: 11)
!665 = distinct !DILexicalBlock(scope: !653, file: !1, line: 442, column: 10)
!666 = !DILocation(line: 443, column: 40, scope: !664)
!667 = !DILocation(line: 443, column: 11, scope: !665)
!668 = !DILocation(line: 429, column: 7, scope: !215)
!669 = !DILocation(line: 429, column: 11, scope: !215)
!670 = !DILocation(line: 444, column: 2, scope: !664)
!671 = !DILocation(line: 449, column: 32, scope: !665)
!672 = !DILocation(line: 449, column: 48, scope: !665)
!673 = !DILocation(line: 449, column: 64, scope: !665)
!674 = !DILocation(line: 446, column: 5, scope: !675)
!675 = distinct !DILexicalBlock(scope: !664, file: !1, line: 445, column: 12)
!676 = !DILocation(line: 447, column: 5, scope: !675)
!677 = !DILocation(line: 449, column: 30, scope: !665)
!678 = !DILocation(line: 449, column: 41, scope: !665)
!679 = !DILocation(line: 449, column: 35, scope: !665)
!680 = !DILocation(line: 449, column: 62, scope: !665)
!681 = !DILocation(line: 449, column: 7, scope: !665)
!682 = !DILocation(line: 452, column: 1, scope: !215)
