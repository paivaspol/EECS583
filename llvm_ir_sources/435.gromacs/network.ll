; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/network.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Routine %s called in %s, %d\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"gmx_tx\00", align 1
@.str2 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/network.c\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"gmx_tx_wait\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"gmx_txs\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"gmx_rx\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"gmx_rx_wait\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"gmx_rx_probe\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"gmx_rxs\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"gmx_setup\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"gmx_tx_rx\00", align 1
@.str11 = private unnamed_addr constant [15 x i8] c"gmx_tx_rx_real\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"gmx_wait\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"gmx_sync_ring\00", align 1
@.str14 = private unnamed_addr constant [28 x i8] c"def_stat: %s (from %s, %d)\0A\00", align 1
@.str15 = private unnamed_addr constant [10 x i8] c"gmx_abort\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"gmx_sumd\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"gmx_sumf\00", align 1
@.str18 = private unnamed_addr constant [9 x i8] c"gmx_sumi\00", align 1
@.str19 = private unnamed_addr constant [13 x i8] c"gmx_finalize\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !231), !dbg !232
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !231), !dbg !233
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !234
  %2 = load i32* %1, align 4, !dbg !236, !tbaa !237
  %3 = add nsw i32 %2, -1, !dbg !236
  store i32 %3, i32* %1, align 4, !dbg !236, !tbaa !237
  %4 = icmp sgt i32 %2, 0, !dbg !246
  br i1 %4, label %._crit_edge, label %5, !dbg !247

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !248
  br label %10, !dbg !247

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !249
  %7 = load i32* %6, align 4, !dbg !249, !tbaa !250
  %8 = icmp sle i32 %2, %7, !dbg !251
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !252
  %or.cond = or i1 %9, %8, !dbg !253
  br i1 %or.cond, label %15, label %10, !dbg !253

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !248
  %11 = trunc i32 %_c to i8, !dbg !254
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !255
  %13 = load i8** %12, align 8, !dbg !256, !tbaa !257
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !256
  store i8* %14, i8** %12, align 8, !dbg !256, !tbaa !257
  store i8 %11, i8* %13, align 1, !dbg !258, !tbaa !259
  br label %17, !dbg !260

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7, !dbg !261
  br label %17, !dbg !262

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !263
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !231), !dbg !264
  %1 = icmp sgt i32 %__signo, 32, !dbg !265
  br i1 %1, label %5, label %2, !dbg !266

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !267
  %4 = shl i32 1, %3, !dbg !268
  br label %5, !dbg !266

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !266
  ret i32 %6, !dbg !269
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_tx(i32 %nodeid, i8* nocapture readnone %buf, i32 %bufsize) #3 {
  tail call void @llvm.dbg.value(metadata i32 %nodeid, i64 0, metadata !85, metadata !231), !dbg !270
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !86, metadata !231), !dbg !271
  tail call void @llvm.dbg.value(metadata i32 %bufsize, i64 0, metadata !87, metadata !231), !dbg !272
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 59) #7, !dbg !273
  ret void, !dbg !274
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_tx_wait(i32 %nodeid) #3 {
  tail call void @llvm.dbg.value(metadata i32 %nodeid, i64 0, metadata !92, metadata !231), !dbg !275
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 88) #7, !dbg !276
  ret void, !dbg !277
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_txs(i32 %nodeid, i8* nocapture readnone %buf, i32 %bufsize) #3 {
  tail call void @llvm.dbg.value(metadata i32 %nodeid, i64 0, metadata !95, metadata !231), !dbg !278
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !96, metadata !231), !dbg !279
  tail call void @llvm.dbg.value(metadata i32 %bufsize, i64 0, metadata !97, metadata !231), !dbg !280
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 101) #7, !dbg !281
  ret void, !dbg !282
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_rx(i32 %nodeid, i8* nocapture readnone %buf, i32 %bufsize) #3 {
  tail call void @llvm.dbg.value(metadata i32 %nodeid, i64 0, metadata !100, metadata !231), !dbg !283
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !101, metadata !231), !dbg !284
  tail call void @llvm.dbg.value(metadata i32 %bufsize, i64 0, metadata !102, metadata !231), !dbg !285
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 118) #7, !dbg !286
  ret void, !dbg !287
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_rx_wait(i32 %nodeid) #3 {
  tail call void @llvm.dbg.value(metadata i32 %nodeid, i64 0, metadata !105, metadata !231), !dbg !288
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 135) #7, !dbg !289
  ret void, !dbg !290
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gmx_rx_probe(i32 %nodeid) #3 {
  tail call void @llvm.dbg.value(metadata i32 %nodeid, i64 0, metadata !108, metadata !231), !dbg !291
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 148) #7, !dbg !292
  ret i32 0, !dbg !293
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_rxs(i32 %nodeid, i8* nocapture readnone %buf, i32 %bufsize) #3 {
  tail call void @llvm.dbg.value(metadata i32 %nodeid, i64 0, metadata !111, metadata !231), !dbg !294
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !112, metadata !231), !dbg !295
  tail call void @llvm.dbg.value(metadata i32 %bufsize, i64 0, metadata !113, metadata !231), !dbg !296
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 164) #7, !dbg !297
  ret void, !dbg !298
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gmx_setup(i32* nocapture readnone %argc, i8** nocapture readnone %argv, i32* nocapture readnone %nnodes) #3 {
  tail call void @llvm.dbg.value(metadata i32* %argc, i64 0, metadata !120, metadata !231), !dbg !299
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !121, metadata !231), !dbg !300
  tail call void @llvm.dbg.value(metadata i32* %nnodes, i64 0, metadata !122, metadata !231), !dbg !301
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 182) #7, !dbg !302
  ret i32 0, !dbg !303
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @gmx_node_num() #4 {
  ret i32 1, !dbg !304
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @gmx_node_id() #4 {
  ret i32 0, !dbg !305
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @gmx_idle_send() #4 {
  ret i32 0, !dbg !306
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @gmx_idle_rec() #4 {
  ret i32 0, !dbg !307
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_left_right(i32 %nnodes, i32 %nodeid, i32* nocapture %left, i32* nocapture %right) #3 {
  tail call void @llvm.dbg.value(metadata i32 %nnodes, i64 0, metadata !133, metadata !231), !dbg !308
  tail call void @llvm.dbg.value(metadata i32 %nodeid, i64 0, metadata !134, metadata !231), !dbg !309
  tail call void @llvm.dbg.value(metadata i32* %left, i64 0, metadata !135, metadata !231), !dbg !310
  tail call void @llvm.dbg.value(metadata i32* %right, i64 0, metadata !136, metadata !231), !dbg !311
  %1 = add i32 %nnodes, -1, !dbg !312
  %2 = add i32 %1, %nodeid, !dbg !313
  %3 = srem i32 %2, %nnodes, !dbg !314
  store i32 %3, i32* %left, align 4, !dbg !315, !tbaa !316
  %4 = add nsw i32 %nodeid, 1, !dbg !317
  %5 = srem i32 %4, %nnodes, !dbg !318
  store i32 %5, i32* %right, align 4, !dbg !319, !tbaa !316
  ret void, !dbg !320
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_tx_rx(i32 %send_nodeid, i8* nocapture readnone %send_buf, i32 %send_bufsize, i32 %rec_nodeid, i8* nocapture readnone %rec_buf, i32 %rec_bufsize) #3 {
  tail call void @llvm.dbg.value(metadata i32 %send_nodeid, i64 0, metadata !141, metadata !231), !dbg !321
  tail call void @llvm.dbg.value(metadata i8* %send_buf, i64 0, metadata !142, metadata !231), !dbg !322
  tail call void @llvm.dbg.value(metadata i32 %send_bufsize, i64 0, metadata !143, metadata !231), !dbg !323
  tail call void @llvm.dbg.value(metadata i32 %rec_nodeid, i64 0, metadata !144, metadata !231), !dbg !324
  tail call void @llvm.dbg.value(metadata i8* %rec_buf, i64 0, metadata !145, metadata !231), !dbg !325
  tail call void @llvm.dbg.value(metadata i32 %rec_bufsize, i64 0, metadata !146, metadata !231), !dbg !326
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 242) #7, !dbg !327
  ret void, !dbg !328
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_tx_rx_real(i32 %send_nodeid, float* nocapture readnone %send_buf, i32 %send_bufsize, i32 %rec_nodeid, float* nocapture readnone %rec_buf, i32 %rec_bufsize) #3 {
  tail call void @llvm.dbg.value(metadata i32 %send_nodeid, i64 0, metadata !155, metadata !231), !dbg !329
  tail call void @llvm.dbg.value(metadata float* %send_buf, i64 0, metadata !156, metadata !231), !dbg !330
  tail call void @llvm.dbg.value(metadata i32 %send_bufsize, i64 0, metadata !157, metadata !231), !dbg !331
  tail call void @llvm.dbg.value(metadata i32 %rec_nodeid, i64 0, metadata !158, metadata !231), !dbg !332
  tail call void @llvm.dbg.value(metadata float* %rec_buf, i64 0, metadata !159, metadata !231), !dbg !333
  tail call void @llvm.dbg.value(metadata i32 %rec_bufsize, i64 0, metadata !160, metadata !231), !dbg !334
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 257) #7, !dbg !335
  ret void, !dbg !336
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_wait(i32 %left, i32 %right) #3 {
  tail call void @llvm.dbg.value(metadata i32 %left, i64 0, metadata !165, metadata !231), !dbg !337
  tail call void @llvm.dbg.value(metadata i32 %right, i64 0, metadata !166, metadata !231), !dbg !338
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 277) #7, !dbg !339
  ret void, !dbg !340
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_sync_ring(i32 %nodeid, i32 %nnodes, i32 %left, i32 %right) #3 {
  tail call void @llvm.dbg.value(metadata i32 %nodeid, i64 0, metadata !171, metadata !231), !dbg !341
  tail call void @llvm.dbg.value(metadata i32 %nnodes, i64 0, metadata !172, metadata !231), !dbg !342
  tail call void @llvm.dbg.value(metadata i32 %left, i64 0, metadata !173, metadata !231), !dbg !343
  tail call void @llvm.dbg.value(metadata i32 %right, i64 0, metadata !174, metadata !231), !dbg !344
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 287) #7, !dbg !345
  ret void, !dbg !346
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_stat(%struct.__sFILE* nocapture %fp, i8* %msg) #3 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !179, metadata !231), !dbg !347
  tail call void @llvm.dbg.value(metadata i8* %msg, i64 0, metadata !180, metadata !231), !dbg !348
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str14, i64 0, i64 0), i8* %msg, i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 307) #7, !dbg !349
  ret void, !dbg !350
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize readnone ssp uwtable
define void @gmx_reset_idle() #4 {
  ret void, !dbg !351
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_abort(i32 %nodeid, i32 %nnodes, i32 %errorno) #3 {
  tail call void @llvm.dbg.value(metadata i32 %nodeid, i64 0, metadata !188, metadata !231), !dbg !352
  tail call void @llvm.dbg.value(metadata i32 %nnodes, i64 0, metadata !189, metadata !231), !dbg !353
  tail call void @llvm.dbg.value(metadata i32 %errorno, i64 0, metadata !190, metadata !231), !dbg !354
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 318) #7, !dbg !355
  ret void, !dbg !356
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_sumd(i32 %nr, double* nocapture readnone %r, %struct.t_commrec* nocapture readnone %cr) #3 {
  tail call void @llvm.dbg.value(metadata i32 %nr, i64 0, metadata !208, metadata !231), !dbg !357
  tail call void @llvm.dbg.value(metadata double* %r, i64 0, metadata !209, metadata !231), !dbg !358
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !210, metadata !231), !dbg !359
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 327) #7, !dbg !360
  ret void, !dbg !361
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_sumf(i32 %nr, float* nocapture readnone %r, %struct.t_commrec* nocapture readnone %cr) #3 {
  tail call void @llvm.dbg.value(metadata i32 %nr, i64 0, metadata !216, metadata !231), !dbg !362
  tail call void @llvm.dbg.value(metadata float* %r, i64 0, metadata !217, metadata !231), !dbg !363
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !218, metadata !231), !dbg !364
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 374) #7, !dbg !365
  ret void, !dbg !366
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_sumi(i32 %nr, i32* nocapture readnone %r, %struct.t_commrec* nocapture readnone %cr) #3 {
  tail call void @llvm.dbg.value(metadata i32 %nr, i64 0, metadata !223, metadata !231), !dbg !367
  tail call void @llvm.dbg.value(metadata i32* %r, i64 0, metadata !224, metadata !231), !dbg !368
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !225, metadata !231), !dbg !369
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 405) #7, !dbg !370
  ret void, !dbg !371
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_finalize() #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 436) #7, !dbg !372
  ret void, !dbg !373
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!227, !228, !229}
!llvm.ident = !{!230}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/network.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !{!6, !75, !81, !88, !93, !98, !103, !106, !109, !114, !123, !126, !127, !128, !129, !137, !147, !161, !167, !175, !181, !184, !191, !211, !219, !226}
!6 = !DISubprogram(name: "__sputc", scope: !7, file: !7, line: 348, type: !8, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!7 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !7, line: 153, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !7, line: 122, size: 1216, align: 64, elements: !14)
!14 = !{!15, !18, !19, !20, !22, !23, !28, !29, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !13, file: !7, line: 123, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !13, file: !7, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !13, file: !7, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !7, line: 126, baseType: !21, size: 16, align: 16, offset: 128)
!21 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !13, file: !7, line: 127, baseType: !21, size: 16, align: 16, offset: 144)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !13, file: !7, line: 128, baseType: !24, size: 128, align: 64, offset: 192)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !7, line: 88, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !24, file: !7, line: 89, baseType: !16, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !24, file: !7, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !13, file: !7, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !13, file: !7, line: 132, baseType: !30, size: 64, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !13, file: !7, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!10, !30}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !13, file: !7, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!10, !30, !39, !10}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !13, file: !7, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !30, !44, !10}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !7, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !13, file: !7, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!10, !30, !54, !10}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !13, file: !7, line: 139, baseType: !24, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !13, file: !7, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !7, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !13, file: !7, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !13, file: !7, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !13, file: !7, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !13, file: !7, line: 148, baseType: !24, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !13, file: !7, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !7, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !6, file: !7, line: 348, type: !10)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !6, file: !7, line: 348, type: !11)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!10, !10}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !10)
!81 = !DISubprogram(name: "gmx_tx", scope: !1, file: !1, line: 56, type: !82, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*, i32)* @gmx_tx, variables: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !10, !30, !10}
!84 = !{!85, !86, !87}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nodeid", arg: 1, scope: !81, file: !1, line: 56, type: !10)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !81, file: !1, line: 56, type: !30)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsize", arg: 3, scope: !81, file: !1, line: 56, type: !10)
!88 = !DISubprogram(name: "gmx_tx_wait", scope: !1, file: !1, line: 85, type: !89, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @gmx_tx_wait, variables: !91)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !10}
!91 = !{!92}
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nodeid", arg: 1, scope: !88, file: !1, line: 85, type: !10)
!93 = !DISubprogram(name: "gmx_txs", scope: !1, file: !1, line: 98, type: !82, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*, i32)* @gmx_txs, variables: !94)
!94 = !{!95, !96, !97}
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nodeid", arg: 1, scope: !93, file: !1, line: 98, type: !10)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !93, file: !1, line: 98, type: !30)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsize", arg: 3, scope: !93, file: !1, line: 98, type: !10)
!98 = !DISubprogram(name: "gmx_rx", scope: !1, file: !1, line: 115, type: !82, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*, i32)* @gmx_rx, variables: !99)
!99 = !{!100, !101, !102}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nodeid", arg: 1, scope: !98, file: !1, line: 115, type: !10)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !98, file: !1, line: 115, type: !30)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsize", arg: 3, scope: !98, file: !1, line: 115, type: !10)
!103 = !DISubprogram(name: "gmx_rx_wait", scope: !1, file: !1, line: 132, type: !89, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @gmx_rx_wait, variables: !104)
!104 = !{!105}
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nodeid", arg: 1, scope: !103, file: !1, line: 132, type: !10)
!106 = !DISubprogram(name: "gmx_rx_probe", scope: !1, file: !1, line: 145, type: !77, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @gmx_rx_probe, variables: !107)
!107 = !{!108}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nodeid", arg: 1, scope: !106, file: !1, line: 145, type: !10)
!109 = !DISubprogram(name: "gmx_rxs", scope: !1, file: !1, line: 161, type: !82, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*, i32)* @gmx_rxs, variables: !110)
!110 = !{!111, !112, !113}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nodeid", arg: 1, scope: !109, file: !1, line: 161, type: !10)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !109, file: !1, line: 161, type: !30)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsize", arg: 3, scope: !109, file: !1, line: 161, type: !10)
!114 = !DISubprogram(name: "gmx_setup", scope: !1, file: !1, line: 179, type: !115, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i8**, i32*)* @gmx_setup, variables: !119)
!115 = !DISubroutineType(types: !116)
!116 = !{!10, !117, !118, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!119 = !{!120, !121, !122}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !114, file: !1, line: 179, type: !117)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !114, file: !1, line: 179, type: !118)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nnodes", arg: 3, scope: !114, file: !1, line: 179, type: !117)
!123 = !DISubprogram(name: "gmx_node_num", scope: !1, file: !1, line: 204, type: !124, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @gmx_node_num, variables: !2)
!124 = !DISubroutineType(types: !125)
!125 = !{!10}
!126 = !DISubprogram(name: "gmx_node_id", scope: !1, file: !1, line: 213, type: !124, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @gmx_node_id, variables: !2)
!127 = !DISubprogram(name: "gmx_idle_send", scope: !1, file: !1, line: 222, type: !124, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @gmx_idle_send, variables: !2)
!128 = !DISubprogram(name: "gmx_idle_rec", scope: !1, file: !1, line: 227, type: !124, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @gmx_idle_rec, variables: !2)
!129 = !DISubprogram(name: "gmx_left_right", scope: !1, file: !1, line: 232, type: !130, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32*, i32*)* @gmx_left_right, variables: !132)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !10, !10, !117, !117}
!132 = !{!133, !134, !135, !136}
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nnodes", arg: 1, scope: !129, file: !1, line: 232, type: !10)
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nodeid", arg: 2, scope: !129, file: !1, line: 232, type: !10)
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "left", arg: 3, scope: !129, file: !1, line: 232, type: !117)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "right", arg: 4, scope: !129, file: !1, line: 232, type: !117)
!137 = !DISubprogram(name: "gmx_tx_rx", scope: !1, file: !1, line: 238, type: !138, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*, i32, i32, i8*, i32)* @gmx_tx_rx, variables: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !10, !30, !10, !10, !30, !10}
!140 = !{!141, !142, !143, !144, !145, !146}
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "send_nodeid", arg: 1, scope: !137, file: !1, line: 238, type: !10)
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "send_buf", arg: 2, scope: !137, file: !1, line: 238, type: !30)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "send_bufsize", arg: 3, scope: !137, file: !1, line: 238, type: !10)
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rec_nodeid", arg: 4, scope: !137, file: !1, line: 239, type: !10)
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rec_buf", arg: 5, scope: !137, file: !1, line: 239, type: !30)
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rec_bufsize", arg: 6, scope: !137, file: !1, line: 239, type: !10)
!147 = !DISubprogram(name: "gmx_tx_rx_real", scope: !1, file: !1, line: 253, type: !148, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, float*, i32, i32, float*, i32)* @gmx_tx_rx_real, variables: !154)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !10, !150, !10, !10, !150, !10}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !152, line: 87, baseType: !153)
!152 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!153 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!154 = !{!155, !156, !157, !158, !159, !160}
!155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "send_nodeid", arg: 1, scope: !147, file: !1, line: 253, type: !10)
!156 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "send_buf", arg: 2, scope: !147, file: !1, line: 253, type: !150)
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "send_bufsize", arg: 3, scope: !147, file: !1, line: 253, type: !10)
!158 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rec_nodeid", arg: 4, scope: !147, file: !1, line: 254, type: !10)
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rec_buf", arg: 5, scope: !147, file: !1, line: 254, type: !150)
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rec_bufsize", arg: 6, scope: !147, file: !1, line: 254, type: !10)
!161 = !DISubprogram(name: "gmx_wait", scope: !1, file: !1, line: 274, type: !162, isLocal: false, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32)* @gmx_wait, variables: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !10, !10}
!164 = !{!165, !166}
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "left", arg: 1, scope: !161, file: !1, line: 274, type: !10)
!166 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "right", arg: 2, scope: !161, file: !1, line: 274, type: !10)
!167 = !DISubprogram(name: "gmx_sync_ring", scope: !1, file: !1, line: 284, type: !168, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32, i32)* @gmx_sync_ring, variables: !170)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !10, !10, !10, !10}
!170 = !{!171, !172, !173, !174}
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nodeid", arg: 1, scope: !167, file: !1, line: 284, type: !10)
!172 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nnodes", arg: 2, scope: !167, file: !1, line: 284, type: !10)
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "left", arg: 3, scope: !167, file: !1, line: 284, type: !10)
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "right", arg: 4, scope: !167, file: !1, line: 284, type: !10)
!175 = !DISubprogram(name: "gmx_stat", scope: !1, file: !1, line: 305, type: !176, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*)* @gmx_stat, variables: !178)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !11, !39}
!178 = !{!179, !180}
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !175, file: !1, line: 305, type: !11)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 2, scope: !175, file: !1, line: 305, type: !39)
!181 = !DISubprogram(name: "gmx_reset_idle", scope: !1, file: !1, line: 310, type: !182, isLocal: false, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @gmx_reset_idle, variables: !2)
!182 = !DISubroutineType(types: !183)
!183 = !{null}
!184 = !DISubprogram(name: "gmx_abort", scope: !1, file: !1, line: 315, type: !185, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32)* @gmx_abort, variables: !187)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !10, !10, !10}
!187 = !{!188, !189, !190}
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nodeid", arg: 1, scope: !184, file: !1, line: 315, type: !10)
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nnodes", arg: 2, scope: !184, file: !1, line: 315, type: !10)
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errorno", arg: 3, scope: !184, file: !1, line: 315, type: !10)
!191 = !DISubprogram(name: "gmx_sumd", scope: !1, file: !1, line: 324, type: !192, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, double*, %struct.t_commrec*)* @gmx_sumd, variables: !207)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !10, !194, !196}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_commrec", file: !198, line: 40, baseType: !199)
!198 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/commrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!199 = !DICompositeType(tag: DW_TAG_structure_type, file: !198, line: 36, size: 192, align: 32, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !199, file: !198, line: 37, baseType: !10, size: 32, align: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !199, file: !198, line: 37, baseType: !10, size: 32, align: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !199, file: !198, line: 38, baseType: !10, size: 32, align: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !199, file: !198, line: 38, baseType: !10, size: 32, align: 32, offset: 96)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "threadid", scope: !199, file: !198, line: 39, baseType: !10, size: 32, align: 32, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !199, file: !198, line: 39, baseType: !10, size: 32, align: 32, offset: 160)
!207 = !{!208, !209, !210}
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nr", arg: 1, scope: !191, file: !1, line: 324, type: !10)
!209 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 2, scope: !191, file: !1, line: 324, type: !194)
!210 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 3, scope: !191, file: !1, line: 324, type: !196)
!211 = !DISubprogram(name: "gmx_sumf", scope: !1, file: !1, line: 371, type: !212, isLocal: false, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, float*, %struct.t_commrec*)* @gmx_sumf, variables: !215)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !10, !214, !196}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!215 = !{!216, !217, !218}
!216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nr", arg: 1, scope: !211, file: !1, line: 371, type: !10)
!217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 2, scope: !211, file: !1, line: 371, type: !214)
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 3, scope: !211, file: !1, line: 371, type: !196)
!219 = !DISubprogram(name: "gmx_sumi", scope: !1, file: !1, line: 402, type: !220, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32*, %struct.t_commrec*)* @gmx_sumi, variables: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !10, !117, !196}
!222 = !{!223, !224, !225}
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nr", arg: 1, scope: !219, file: !1, line: 402, type: !10)
!224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 2, scope: !219, file: !1, line: 402, type: !117)
!225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 3, scope: !219, file: !1, line: 402, type: !196)
!226 = !DISubprogram(name: "gmx_finalize", scope: !1, file: !1, line: 433, type: !182, isLocal: false, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @gmx_finalize, variables: !2)
!227 = !{i32 2, !"Dwarf Version", i32 2}
!228 = !{i32 2, !"Debug Info Version", i32 700000003}
!229 = !{i32 1, !"PIC Level", i32 2}
!230 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!231 = !DIExpression()
!232 = !DILocation(line: 348, column: 40, scope: !6)
!233 = !DILocation(line: 348, column: 50, scope: !6)
!234 = !DILocation(line: 349, column: 12, scope: !235)
!235 = distinct !DILexicalBlock(scope: !6, file: !7, line: 349, column: 6)
!236 = !DILocation(line: 349, column: 6, scope: !235)
!237 = !{!238, !242, i64 12}
!238 = !{!"__sFILE", !239, i64 0, !242, i64 8, !242, i64 12, !243, i64 16, !243, i64 18, !244, i64 24, !242, i64 40, !239, i64 48, !239, i64 56, !239, i64 64, !239, i64 72, !239, i64 80, !244, i64 88, !239, i64 104, !242, i64 112, !240, i64 116, !240, i64 119, !244, i64 120, !242, i64 136, !245, i64 144}
!239 = !{!"any pointer", !240, i64 0}
!240 = !{!"omnipotent char", !241, i64 0}
!241 = !{!"Simple C/C++ TBAA"}
!242 = !{!"int", !240, i64 0}
!243 = !{!"short", !240, i64 0}
!244 = !{!"__sbuf", !239, i64 0, !242, i64 8}
!245 = !{!"long long", !240, i64 0}
!246 = !DILocation(line: 349, column: 15, scope: !235)
!247 = !DILocation(line: 349, column: 20, scope: !235)
!248 = !DILocation(line: 350, column: 10, scope: !235)
!249 = !DILocation(line: 349, column: 38, scope: !235)
!250 = !{!238, !242, i64 40}
!251 = !DILocation(line: 349, column: 31, scope: !235)
!252 = !DILocation(line: 349, column: 59, scope: !235)
!253 = !DILocation(line: 349, column: 47, scope: !235)
!254 = !DILocation(line: 350, column: 23, scope: !235)
!255 = !DILocation(line: 350, column: 16, scope: !235)
!256 = !DILocation(line: 350, column: 18, scope: !235)
!257 = !{!238, !239, i64 0}
!258 = !DILocation(line: 350, column: 21, scope: !235)
!259 = !{!240, !240, i64 0}
!260 = !DILocation(line: 350, column: 3, scope: !235)
!261 = !DILocation(line: 352, column: 11, scope: !235)
!262 = !DILocation(line: 352, column: 3, scope: !235)
!263 = !DILocation(line: 353, column: 1, scope: !6)
!264 = !DILocation(line: 114, column: 15, scope: !75)
!265 = !DILocation(line: 116, column: 20, scope: !75)
!266 = !DILocation(line: 116, column: 12, scope: !75)
!267 = !DILocation(line: 116, column: 57, scope: !75)
!268 = !DILocation(line: 116, column: 45, scope: !75)
!269 = !DILocation(line: 116, column: 5, scope: !75)
!270 = !DILocation(line: 56, column: 17, scope: !81)
!271 = !DILocation(line: 56, column: 30, scope: !81)
!272 = !DILocation(line: 56, column: 38, scope: !81)
!273 = !DILocation(line: 59, column: 3, scope: !81)
!274 = !DILocation(line: 83, column: 1, scope: !81)
!275 = !DILocation(line: 85, column: 22, scope: !88)
!276 = !DILocation(line: 88, column: 3, scope: !88)
!277 = !DILocation(line: 96, column: 1, scope: !88)
!278 = !DILocation(line: 98, column: 18, scope: !93)
!279 = !DILocation(line: 98, column: 31, scope: !93)
!280 = !DILocation(line: 98, column: 39, scope: !93)
!281 = !DILocation(line: 101, column: 3, scope: !93)
!282 = !DILocation(line: 113, column: 1, scope: !93)
!283 = !DILocation(line: 115, column: 17, scope: !98)
!284 = !DILocation(line: 115, column: 30, scope: !98)
!285 = !DILocation(line: 115, column: 38, scope: !98)
!286 = !DILocation(line: 118, column: 3, scope: !98)
!287 = !DILocation(line: 130, column: 1, scope: !98)
!288 = !DILocation(line: 132, column: 22, scope: !103)
!289 = !DILocation(line: 135, column: 3, scope: !103)
!290 = !DILocation(line: 143, column: 1, scope: !103)
!291 = !DILocation(line: 145, column: 22, scope: !106)
!292 = !DILocation(line: 148, column: 3, scope: !106)
!293 = !DILocation(line: 149, column: 3, scope: !106)
!294 = !DILocation(line: 161, column: 18, scope: !109)
!295 = !DILocation(line: 161, column: 31, scope: !109)
!296 = !DILocation(line: 161, column: 39, scope: !109)
!297 = !DILocation(line: 164, column: 3, scope: !109)
!298 = !DILocation(line: 177, column: 1, scope: !109)
!299 = !DILocation(line: 179, column: 20, scope: !114)
!300 = !DILocation(line: 179, column: 32, scope: !114)
!301 = !DILocation(line: 179, column: 42, scope: !114)
!302 = !DILocation(line: 182, column: 3, scope: !114)
!303 = !DILocation(line: 183, column: 3, scope: !114)
!304 = !DILocation(line: 207, column: 3, scope: !123)
!305 = !DILocation(line: 216, column: 3, scope: !126)
!306 = !DILocation(line: 224, column: 3, scope: !127)
!307 = !DILocation(line: 229, column: 3, scope: !128)
!308 = !DILocation(line: 232, column: 25, scope: !129)
!309 = !DILocation(line: 232, column: 36, scope: !129)
!310 = !DILocation(line: 232, column: 48, scope: !129)
!311 = !DILocation(line: 232, column: 58, scope: !129)
!312 = !DILocation(line: 234, column: 19, scope: !129)
!313 = !DILocation(line: 234, column: 26, scope: !129)
!314 = !DILocation(line: 234, column: 30, scope: !129)
!315 = !DILocation(line: 234, column: 10, scope: !129)
!316 = !{!242, !242, i64 0}
!317 = !DILocation(line: 235, column: 19, scope: !129)
!318 = !DILocation(line: 235, column: 23, scope: !129)
!319 = !DILocation(line: 235, column: 10, scope: !129)
!320 = !DILocation(line: 236, column: 1, scope: !129)
!321 = !DILocation(line: 238, column: 20, scope: !137)
!322 = !DILocation(line: 238, column: 38, scope: !137)
!323 = !DILocation(line: 238, column: 51, scope: !137)
!324 = !DILocation(line: 239, column: 8, scope: !137)
!325 = !DILocation(line: 239, column: 25, scope: !137)
!326 = !DILocation(line: 239, column: 37, scope: !137)
!327 = !DILocation(line: 242, column: 3, scope: !137)
!328 = !DILocation(line: 251, column: 1, scope: !137)
!329 = !DILocation(line: 253, column: 25, scope: !147)
!330 = !DILocation(line: 253, column: 43, scope: !147)
!331 = !DILocation(line: 253, column: 56, scope: !147)
!332 = !DILocation(line: 254, column: 13, scope: !147)
!333 = !DILocation(line: 254, column: 30, scope: !147)
!334 = !DILocation(line: 254, column: 42, scope: !147)
!335 = !DILocation(line: 257, column: 3, scope: !147)
!336 = !DILocation(line: 272, column: 1, scope: !147)
!337 = !DILocation(line: 274, column: 19, scope: !161)
!338 = !DILocation(line: 274, column: 28, scope: !161)
!339 = !DILocation(line: 277, column: 3, scope: !161)
!340 = !DILocation(line: 282, column: 1, scope: !161)
!341 = !DILocation(line: 284, column: 24, scope: !167)
!342 = !DILocation(line: 284, column: 35, scope: !167)
!343 = !DILocation(line: 284, column: 46, scope: !167)
!344 = !DILocation(line: 284, column: 55, scope: !167)
!345 = !DILocation(line: 287, column: 3, scope: !167)
!346 = !DILocation(line: 303, column: 1, scope: !167)
!347 = !DILocation(line: 305, column: 21, scope: !175)
!348 = !DILocation(line: 305, column: 30, scope: !175)
!349 = !DILocation(line: 307, column: 3, scope: !175)
!350 = !DILocation(line: 308, column: 1, scope: !175)
!351 = !DILocation(line: 313, column: 1, scope: !181)
!352 = !DILocation(line: 315, column: 20, scope: !184)
!353 = !DILocation(line: 315, column: 31, scope: !184)
!354 = !DILocation(line: 315, column: 42, scope: !184)
!355 = !DILocation(line: 318, column: 3, scope: !184)
!356 = !DILocation(line: 322, column: 1, scope: !184)
!357 = !DILocation(line: 324, column: 19, scope: !191)
!358 = !DILocation(line: 324, column: 29, scope: !191)
!359 = !DILocation(line: 324, column: 44, scope: !191)
!360 = !DILocation(line: 327, column: 3, scope: !191)
!361 = !DILocation(line: 369, column: 1, scope: !191)
!362 = !DILocation(line: 371, column: 19, scope: !211)
!363 = !DILocation(line: 371, column: 28, scope: !211)
!364 = !DILocation(line: 371, column: 43, scope: !211)
!365 = !DILocation(line: 374, column: 3, scope: !211)
!366 = !DILocation(line: 400, column: 1, scope: !211)
!367 = !DILocation(line: 402, column: 19, scope: !219)
!368 = !DILocation(line: 402, column: 26, scope: !219)
!369 = !DILocation(line: 402, column: 41, scope: !219)
!370 = !DILocation(line: 405, column: 3, scope: !219)
!371 = !DILocation(line: 431, column: 1, scope: !219)
!372 = !DILocation(line: 436, column: 3, scope: !226)
!373 = !DILocation(line: 440, column: 1, scope: !226)
