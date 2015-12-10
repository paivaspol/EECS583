; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/481.wrf/src/pack_utils.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@frst = internal unnamed_addr global i1 false
@fld_cache = internal unnamed_addr global [2000 x i8*] zeroinitializer, align 16
@numflds = internal unnamed_addr global i32 0, align 4
@fld_name = internal global [2000 x [256 x i8]] zeroinitializer, align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fld_curs = internal unnamed_addr global [2000 x i32] zeroinitializer, align 16
@fld_bufsize = internal unnamed_addr global [2000 x i32] zeroinitializer, align 16
@fld = internal unnamed_addr global i32 0, align 4
@__stderrp = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [88 x i8] c"frame/pack_utils.c: field (%s) not found; was not set up with add_to_bufsize_for_field\0A\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"frame/pack_utils.c: %s would overwrite %d + %d  > %d [%d]\0A\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"retrieve: fld_curs[%d] (%d) > *insize (%d)\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @int_pack_data_(i8* nocapture readonly %buf, i32* nocapture readonly %ninbytes, i8* nocapture %obuf, i32* nocapture %cursor) #0 {
  %1 = load i32* %cursor, align 4, !tbaa !2
  %2 = add i32 %1, -1
  %3 = load i32* %ninbytes, align 4, !tbaa !2
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %5 = sext i32 %2 to i64
  br label %6

; <label>:6                                       ; preds = %.lr.ph, %6
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next4, %6 ]
  %indvars.iv = phi i64 [ %5, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %lcurs.02 = phi i32 [ %2, %.lr.ph ], [ %9, %6 ]
  %7 = getelementptr inbounds i8* %buf, i64 %indvars.iv3
  %8 = load i8* %7, align 1, !tbaa !6
  %9 = add nsw i32 %lcurs.02, 1
  %10 = getelementptr inbounds i8* %obuf, i64 %indvars.iv
  store i8 %8, i8* %10, align 1, !tbaa !6
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %11 = load i32* %ninbytes, align 4, !tbaa !2
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %indvars.iv.next4, %12
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %13, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %6, %0
  %lcurs.0.lcssa = phi i32 [ %2, %0 ], [ %9, %6 ]
  %14 = add nsw i32 %lcurs.0.lcssa, 1
  store i32 %14, i32* %cursor, align 4, !tbaa !2
  ret i32 undef
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @int_gen_ti_header_c_(i8* %hdrbuf, i32* %hdrbufsize, i32* nocapture readnone %itypesize, i32* %typesize, i32* %DataHandle, i8* %Data, i32* %Count, i32* %code) #0 {
  %1 = getelementptr inbounds i8* %hdrbuf, i64 4
  %2 = bitcast i32* %code to i8*
  %3 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false)
  %4 = tail call i8* @__memcpy_chk(i8* %1, i8* %2, i64 4, i64 %3) #5
  %5 = getelementptr inbounds i8* %hdrbuf, i64 8
  %6 = bitcast i32* %DataHandle to i8*
  %7 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %5, i1 false)
  %8 = tail call i8* @__memcpy_chk(i8* %5, i8* %6, i64 4, i64 %7) #5
  %9 = getelementptr inbounds i8* %hdrbuf, i64 12
  %10 = bitcast i32* %typesize to i8*
  %11 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %9, i1 false)
  %12 = tail call i8* @__memcpy_chk(i8* %9, i8* %10, i64 4, i64 %11) #5
  %13 = getelementptr inbounds i8* %hdrbuf, i64 16
  %14 = bitcast i32* %Count to i8*
  %15 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false)
  %16 = tail call i8* @__memcpy_chk(i8* %13, i8* %14, i64 4, i64 %15) #5
  %17 = getelementptr inbounds i8* %hdrbuf, i64 20
  %18 = load i32* %Count, align 4, !tbaa !2
  %19 = load i32* %typesize, align 4, !tbaa !2
  %20 = mul nsw i32 %19, %18
  %21 = sext i32 %20 to i64
  %22 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %17, i1 false)
  %23 = tail call i8* @__memcpy_chk(i8* %17, i8* %Data, i64 %21, i64 %22) #5
  %24 = load i32* %Count, align 4, !tbaa !2
  %25 = load i32* %typesize, align 4, !tbaa !2
  %26 = mul nsw i32 %25, %24
  %.offs = add i32 %26, 20
  store i32 %.offs, i32* %hdrbufsize, align 4, !tbaa !2
  %27 = bitcast i32* %hdrbufsize to i8*
  %28 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %hdrbuf, i1 false)
  %29 = tail call i8* @__memcpy_chk(i8* %hdrbuf, i8* %27, i64 4, i64 %28) #5
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @int_get_ti_header_c_(i8* %hdrbuf, i32* %hdrbufsize, i32* nocapture %n, i32* nocapture readnone %itypesize, i32* %typesize, i32* %DataHandle, i8* %Data, i32* %Count, i32* %code) #0 {
  %1 = bitcast i32* %hdrbufsize to i8*
  %2 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false)
  %3 = tail call i8* @__memcpy_chk(i8* %1, i8* %hdrbuf, i64 4, i64 %2) #5
  %4 = getelementptr inbounds i8* %hdrbuf, i64 4
  %5 = bitcast i32* %code to i8*
  %6 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %5, i1 false)
  %7 = tail call i8* @__memcpy_chk(i8* %5, i8* %4, i64 4, i64 %6) #5
  %8 = getelementptr inbounds i8* %hdrbuf, i64 8
  %9 = bitcast i32* %DataHandle to i8*
  %10 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %9, i1 false)
  %11 = tail call i8* @__memcpy_chk(i8* %9, i8* %8, i64 4, i64 %10) #5
  %12 = getelementptr inbounds i8* %hdrbuf, i64 12
  %13 = bitcast i32* %typesize to i8*
  %14 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false)
  %15 = tail call i8* @__memcpy_chk(i8* %13, i8* %12, i64 4, i64 %14) #5
  %16 = getelementptr inbounds i8* %hdrbuf, i64 16
  %17 = bitcast i32* %Count to i8*
  %18 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %17, i1 false)
  %19 = tail call i8* @__memcpy_chk(i8* %17, i8* %16, i64 4, i64 %18) #5
  %20 = getelementptr inbounds i8* %hdrbuf, i64 20
  %21 = load i32* %Count, align 4, !tbaa !2
  %22 = load i32* %typesize, align 4, !tbaa !2
  %23 = mul nsw i32 %22, %21
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %34

; <label>:25                                      ; preds = %0
  %26 = sext i32 %23 to i64
  %27 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %Data, i1 false)
  %28 = tail call i8* @__memcpy_chk(i8* %Data, i8* %20, i64 %26, i64 %27) #5
  %29 = load i32* %Count, align 4, !tbaa !2
  %30 = load i32* %typesize, align 4, !tbaa !2
  %31 = mul nsw i32 %30, %29
  %32 = sext i32 %31 to i64
  %.sum = add nsw i64 %32, 20
  %33 = getelementptr inbounds i8* %hdrbuf, i64 %.sum
  br label %34

; <label>:34                                      ; preds = %25, %0
  %p.0 = phi i8* [ %33, %25 ], [ %20, %0 ]
  %35 = ptrtoint i8* %p.0 to i64
  %36 = ptrtoint i8* %hdrbuf to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %n, align 4, !tbaa !2
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @init_store_piece_of_field_() #0 {
  %.b = load i1* @frst, align 1
  br i1 %.b, label %1, label %.preheader

.preheader:                                       ; preds = %0
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2000 x i8*]* @fld_cache to i8*), i8 0, i64 16000, i32 16, i1 false)
  store i1 true, i1* @frst, align 1
  br label %1

; <label>:1                                       ; preds = %0, %.preheader
  store i32 0, i32* @numflds, align 4, !tbaa !2
  br label %2

; <label>:2                                       ; preds = %10, %1
  %indvars.iv = phi i64 [ 0, %1 ], [ %indvars.iv.next, %10 ]
  %3 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %indvars.iv, i64 0
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %3, i1 false)
  %5 = tail call i8* @__memcpy_chk(i8* %3, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i64 1, i64 %4)
  %6 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %indvars.iv
  %7 = load i8** %6, align 8, !tbaa !7
  %8 = icmp eq i8* %7, null
  br i1 %8, label %10, label %9

; <label>:9                                       ; preds = %2
  tail call void @free(i8* %7) #6
  br label %10

; <label>:10                                      ; preds = %2, %9
  store i8* null, i8** %6, align 8, !tbaa !7
  %11 = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %indvars.iv
  store i32 0, i32* %11, align 4, !tbaa !2
  %12 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %indvars.iv
  store i32 0, i32* %12, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond, label %13, label %2

; <label>:13                                      ; preds = %10
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @init_retrieve_pieces_of_field_() #0 {
  store i32 0, i32* @fld, align 4, !tbaa !2
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @add_to_bufsize_for_field_c_(i32* nocapture readonly %varname, i32* nocapture readonly %chunksize) #0 {
  %vname = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #3
  %2 = load i32* %varname, align 4, !tbaa !2
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %0, %.lr.ph4
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %.lr.ph4 ], [ 1, %0 ]
  %4 = getelementptr inbounds i32* %varname, i64 %indvars.iv6
  %5 = load i32* %4, align 4, !tbaa !2
  %6 = trunc i32 %5 to i8
  %7 = add nsw i64 %indvars.iv6, -1
  %8 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %7
  store i8 %6, i8* %8, align 1, !tbaa !6
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %lftr.wideiv = trunc i64 %indvars.iv6 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %._crit_edge, label %.lr.ph4

._crit_edge:                                      ; preds = %.lr.ph4, %0
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %9
  store i8 0, i8* %10, align 1, !tbaa !6
  %11 = load i32* @numflds, align 4, !tbaa !2
  %12 = icmp sgt i32 %11, 0
  %13 = sext i32 %11 to i64
  br i1 %12, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %._crit_edge, %17
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ 0, %._crit_edge ]
  %14 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %indvars.iv, i64 0
  %15 = call i32 @strcmp(i8* %14, i8* %1) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

; <label>:17                                      ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %18 = icmp slt i64 %indvars.iv.next, %13
  br i1 %18, label %.lr.ph, label %.thread

; <label>:19                                      ; preds = %.lr.ph
  %20 = trunc i64 %indvars.iv to i32
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %.thread, label %28

.thread:                                          ; preds = %17, %._crit_edge, %19
  %22 = add nsw i32 %11, 1
  store i32 %22, i32* @numflds, align 4, !tbaa !2
  %23 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %13, i64 0
  %24 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %23, i1 false)
  %25 = call i8* @__strcpy_chk(i8* %23, i8* %1, i64 %24) #5
  %26 = load i32* %chunksize, align 4, !tbaa !2
  %27 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %13
  store i32 %26, i32* %27, align 4, !tbaa !2
  br label %34

; <label>:28                                      ; preds = %19
  %29 = load i32* %chunksize, align 4, !tbaa !2
  %sext = shl i64 %indvars.iv, 32
  %30 = ashr exact i64 %sext, 32
  %31 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %30
  %32 = load i32* %31, align 4, !tbaa !2
  %33 = add nsw i32 %32, %29
  store i32 %33, i32* %31, align 4, !tbaa !2
  br label %34

; <label>:34                                      ; preds = %28, %.thread
  %found.1 = phi i32 [ %11, %.thread ], [ %20, %28 ]
  %35 = sext i32 %found.1 to i64
  %36 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %35
  %37 = load i8** %36, align 8, !tbaa !7
  %38 = icmp eq i8* %37, null
  br i1 %38, label %40, label %39

; <label>:39                                      ; preds = %34
  call void @free(i8* %37) #6
  br label %40

; <label>:40                                      ; preds = %34, %39
  store i8* null, i8** %36, align 8, !tbaa !7
  call void @llvm.lifetime.end(i64 256, i8* %1) #3
  ret i32 undef
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @store_piece_of_field_c_(i8* %buf, i32* nocapture readonly %varname, i32* nocapture readonly %chunksize, i32* nocapture %retval) #0 {
  %vname = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #3
  %2 = load i32* %varname, align 4, !tbaa !2
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %0, %.lr.ph4
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %.lr.ph4 ], [ 1, %0 ]
  %4 = getelementptr inbounds i32* %varname, i64 %indvars.iv6
  %5 = load i32* %4, align 4, !tbaa !2
  %6 = trunc i32 %5 to i8
  %7 = add nsw i64 %indvars.iv6, -1
  %8 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %7
  store i8 %6, i8* %8, align 1, !tbaa !6
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %lftr.wideiv = trunc i64 %indvars.iv6 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %._crit_edge, label %.lr.ph4

._crit_edge:                                      ; preds = %.lr.ph4, %0
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %9
  store i8 0, i8* %10, align 1, !tbaa !6
  %11 = load i32* @numflds, align 4, !tbaa !2
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %._crit_edge
  %13 = sext i32 %11 to i64
  br label %14

; <label>:14                                      ; preds = %.lr.ph, %18
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %18 ]
  %15 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %indvars.iv, i64 0
  %16 = call i32 @strcmp(i8* %15, i8* %1) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

; <label>:18                                      ; preds = %14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %19 = icmp slt i64 %indvars.iv.next, %13
  br i1 %19, label %14, label %.thread

; <label>:20                                      ; preds = %14
  %21 = trunc i64 %indvars.iv to i32
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %.thread, label %25

.thread:                                          ; preds = %18, %._crit_edge, %20
  %23 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %24 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([88 x i8]* @.str1, i64 0, i64 0), i8* %1) #5
  store i32 1, i32* %retval, align 4, !tbaa !2
  br label %55

; <label>:25                                      ; preds = %20
  %sext = shl i64 %indvars.iv, 32
  %26 = ashr exact i64 %sext, 32
  %27 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %26
  %28 = load i8** %27, align 8, !tbaa !7
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %._crit_edge8

._crit_edge8:                                     ; preds = %25
  %.phi.trans.insert = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %26
  %.pre = load i32* %.phi.trans.insert, align 4, !tbaa !2
  %.pre9 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %26
  br label %36

; <label>:30                                      ; preds = %25
  %31 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %26
  %32 = load i32* %31, align 4, !tbaa !2
  %33 = sext i32 %32 to i64
  %34 = tail call i8* @malloc(i64 %33) #5
  store i8* %34, i8** %27, align 8, !tbaa !7
  %35 = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %26
  store i32 0, i32* %35, align 4, !tbaa !2
  br label %36

; <label>:36                                      ; preds = %._crit_edge8, %30
  %.pre-phi10 = phi i32* [ %.pre9, %._crit_edge8 ], [ %31, %30 ]
  %.pre-phi = phi i32* [ %.phi.trans.insert, %._crit_edge8 ], [ %35, %30 ]
  %37 = phi i8* [ %28, %._crit_edge8 ], [ %34, %30 ]
  %38 = phi i32 [ %.pre, %._crit_edge8 ], [ 0, %30 ]
  %39 = load i32* %chunksize, align 4, !tbaa !2
  %40 = add nsw i32 %39, %38
  %41 = load i32* %.pre-phi10, align 4, !tbaa !2
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %46

; <label>:43                                      ; preds = %36
  %44 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %45 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %44, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* %1, i32 %38, i32 %39, i32 %41, i32 %21) #5
  store i32 1, i32* %retval, align 4, !tbaa !2
  br label %55

; <label>:46                                      ; preds = %36
  %47 = sext i32 %38 to i64
  %48 = getelementptr inbounds i8* %37, i64 %47
  %49 = sext i32 %39 to i64
  %50 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %48, i1 false)
  %51 = tail call i8* @__memcpy_chk(i8* %48, i8* %buf, i64 %49, i64 %50) #5
  %52 = load i32* %chunksize, align 4, !tbaa !2
  %53 = load i32* %.pre-phi, align 4, !tbaa !2
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %.pre-phi, align 4, !tbaa !2
  store i32 0, i32* %retval, align 4, !tbaa !2
  br label %55

; <label>:55                                      ; preds = %46, %43, %.thread
  call void @llvm.lifetime.end(i64 256, i8* %1) #3
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @retrieve_pieces_of_field_c_(i8* nocapture %buf, i32* nocapture %varname, i32* nocapture readonly %insize, i32* nocapture %outsize, i32* nocapture %retval) #0 {
  %1 = load i32* @fld, align 4, !tbaa !2
  %2 = load i32* @numflds, align 4, !tbaa !2
  %3 = icmp slt i32 %1, %2
  br i1 %3, label %4, label %57

; <label>:4                                       ; preds = %0
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %5
  %7 = load i32* %6, align 4, !tbaa !2
  %8 = load i32* %insize, align 4, !tbaa !2
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %4
  %11 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !7
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), i32 %1, i32 %7, i32 %8) #5
  %.pre = load i32* @fld, align 4, !tbaa !2
  %.phi.trans.insert = sext i32 %.pre to i64
  %.phi.trans.insert7 = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %.phi.trans.insert
  %.pre8 = load i32* %.phi.trans.insert7, align 4, !tbaa !2
  %.pre9 = load i32* %insize, align 4, !tbaa !2
  br label %13

; <label>:13                                      ; preds = %10, %4
  %14 = phi i32 [ %.pre9, %10 ], [ %8, %4 ]
  %15 = phi i32 [ %.pre8, %10 ], [ %7, %4 ]
  %16 = icmp sgt i32 %15, %14
  %. = select i1 %16, i32 %14, i32 %15
  store i32 %., i32* %outsize, align 4, !tbaa !2
  %17 = load i32* @fld, align 4, !tbaa !2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %18, i64 0
  %20 = tail call i64 @strlen(i8* %19) #5
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %varname, align 4, !tbaa !2
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %.preheader, label %.lr.ph4

.preheader:                                       ; preds = %.lr.ph4, %13
  %23 = load i32* %outsize, align 4, !tbaa !2
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %.lr.ph, label %._crit_edge

.lr.ph4:                                          ; preds = %13, %.lr.ph4
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %.lr.ph4 ], [ 1, %13 ]
  %25 = add nsw i64 %indvars.iv5, -1
  %26 = load i32* @fld, align 4, !tbaa !2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %27, i64 %25
  %29 = load i8* %28, align 1, !tbaa !6
  %30 = sext i8 %29 to i32
  %31 = getelementptr inbounds i32* %varname, i64 %indvars.iv5
  store i32 %30, i32* %31, align 4, !tbaa !2
  %indvars.iv.next6 = add nuw i64 %indvars.iv5, 1
  %32 = load i32* %varname, align 4, !tbaa !2
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %indvars.iv5, %33
  br i1 %34, label %.lr.ph4, label %.preheader

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %35 = load i32* @fld, align 4, !tbaa !2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %36
  %38 = load i8** %37, align 8, !tbaa !7
  %39 = getelementptr inbounds i8* %38, i64 %indvars.iv
  %40 = load i8* %39, align 1, !tbaa !6
  %41 = getelementptr inbounds i8* %buf, i64 %indvars.iv
  store i8 %40, i8* %41, align 1, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %42 = load i32* %outsize, align 4, !tbaa !2
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %indvars.iv.next, %43
  br i1 %44, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %45 = load i32* @fld, align 4, !tbaa !2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %46
  %48 = load i8** %47, align 8, !tbaa !7
  %49 = icmp eq i8* %48, null
  br i1 %49, label %51, label %50

; <label>:50                                      ; preds = %._crit_edge
  tail call void @free(i8* %48) #6
  %.pre10 = load i32* @fld, align 4, !tbaa !2
  br label %51

; <label>:51                                      ; preds = %._crit_edge, %50
  %52 = phi i32 [ %45, %._crit_edge ], [ %.pre10, %50 ]
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %53
  store i8* null, i8** %54, align 8, !tbaa !7
  %55 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %53
  store i32 0, i32* %55, align 4, !tbaa !2
  %56 = add nsw i32 %52, 1
  store i32 %56, i32* @fld, align 4, !tbaa !2
  br label %58

; <label>:57                                      ; preds = %0
  store i32 0, i32* @numflds, align 4, !tbaa !2
  br label %58

; <label>:58                                      ; preds = %57, %51
  %storemerge = phi i32 [ -1, %57 ], [ 0, %51 ]
  store i32 %storemerge, i32* %retval, align 4, !tbaa !2
  ret i32 0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !4, i64 0}
