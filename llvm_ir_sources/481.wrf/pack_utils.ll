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
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !16, metadata !113), !dbg !114
  tail call void @llvm.dbg.value(metadata i32* %ninbytes, i64 0, metadata !17, metadata !113), !dbg !115
  tail call void @llvm.dbg.value(metadata i8* %obuf, i64 0, metadata !18, metadata !113), !dbg !116
  tail call void @llvm.dbg.value(metadata i32* %cursor, i64 0, metadata !19, metadata !113), !dbg !117
  %1 = load i32* %cursor, align 4, !dbg !118, !tbaa !119
  %2 = add i32 %1, -1, !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !21, metadata !113), !dbg !124
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !20, metadata !113), !dbg !125
  %3 = load i32* %ninbytes, align 4, !dbg !126, !tbaa !119
  %4 = icmp sgt i32 %3, 0, !dbg !129
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !130

.lr.ph:                                           ; preds = %0
  %5 = sext i32 %2 to i64
  br label %6, !dbg !130

; <label>:6                                       ; preds = %.lr.ph, %6
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next4, %6 ]
  %indvars.iv = phi i64 [ %5, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %lcurs.02 = phi i32 [ %2, %.lr.ph ], [ %9, %6 ]
  %7 = getelementptr inbounds i8* %buf, i64 %indvars.iv3, !dbg !131
  %8 = load i8* %7, align 1, !dbg !131, !tbaa !133
  %9 = add nsw i32 %lcurs.02, 1, !dbg !134
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !21, metadata !113), !dbg !124
  %10 = getelementptr inbounds i8* %obuf, i64 %indvars.iv, !dbg !135
  store i8 %8, i8* %10, align 1, !dbg !136, !tbaa !133
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !130
  %11 = load i32* %ninbytes, align 4, !dbg !126, !tbaa !119
  %12 = sext i32 %11 to i64, !dbg !129
  %13 = icmp slt i64 %indvars.iv.next4, %12, !dbg !129
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !130
  br i1 %13, label %6, label %._crit_edge, !dbg !130

._crit_edge:                                      ; preds = %6, %0
  %lcurs.0.lcssa = phi i32 [ %2, %0 ], [ %9, %6 ]
  %14 = add nsw i32 %lcurs.0.lcssa, 1, !dbg !137
  store i32 %14, i32* %cursor, align 4, !dbg !138, !tbaa !119
  ret i32 undef, !dbg !139
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @int_gen_ti_header_c_(i8* %hdrbuf, i32* %hdrbufsize, i32* nocapture readnone %itypesize, i32* %typesize, i32* %DataHandle, i8* %Data, i32* %Count, i32* %code) #0 {
  tail call void @llvm.dbg.value(metadata i8* %hdrbuf, i64 0, metadata !26, metadata !113), !dbg !140
  tail call void @llvm.dbg.value(metadata i32* %hdrbufsize, i64 0, metadata !27, metadata !113), !dbg !141
  tail call void @llvm.dbg.value(metadata i32* %itypesize, i64 0, metadata !28, metadata !113), !dbg !142
  tail call void @llvm.dbg.value(metadata i32* %typesize, i64 0, metadata !29, metadata !113), !dbg !143
  tail call void @llvm.dbg.value(metadata i32* %DataHandle, i64 0, metadata !30, metadata !113), !dbg !144
  tail call void @llvm.dbg.value(metadata i8* %Data, i64 0, metadata !31, metadata !113), !dbg !145
  tail call void @llvm.dbg.value(metadata i32* %Count, i64 0, metadata !32, metadata !113), !dbg !146
  tail call void @llvm.dbg.value(metadata i32* %code, i64 0, metadata !33, metadata !113), !dbg !147
  tail call void @llvm.dbg.value(metadata i8* %hdrbuf, i64 0, metadata !35, metadata !113), !dbg !148
  %1 = getelementptr inbounds i8* %hdrbuf, i64 4, !dbg !149
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !35, metadata !113), !dbg !148
  %2 = bitcast i32* %code to i8*, !dbg !150
  %3 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false), !dbg !150
  %4 = tail call i8* @__memcpy_chk(i8* %1, i8* %2, i64 4, i64 %3) #5, !dbg !150
  %5 = getelementptr inbounds i8* %hdrbuf, i64 8, !dbg !151
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !35, metadata !113), !dbg !148
  %6 = bitcast i32* %DataHandle to i8*, !dbg !152
  %7 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %5, i1 false), !dbg !152
  %8 = tail call i8* @__memcpy_chk(i8* %5, i8* %6, i64 4, i64 %7) #5, !dbg !152
  %9 = getelementptr inbounds i8* %hdrbuf, i64 12, !dbg !153
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !35, metadata !113), !dbg !148
  %10 = bitcast i32* %typesize to i8*, !dbg !154
  %11 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %9, i1 false), !dbg !154
  %12 = tail call i8* @__memcpy_chk(i8* %9, i8* %10, i64 4, i64 %11) #5, !dbg !154
  %13 = getelementptr inbounds i8* %hdrbuf, i64 16, !dbg !155
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !35, metadata !113), !dbg !148
  %14 = bitcast i32* %Count to i8*, !dbg !156
  %15 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false), !dbg !156
  %16 = tail call i8* @__memcpy_chk(i8* %13, i8* %14, i64 4, i64 %15) #5, !dbg !156
  %17 = getelementptr inbounds i8* %hdrbuf, i64 20, !dbg !157
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !35, metadata !113), !dbg !148
  %18 = load i32* %Count, align 4, !dbg !158, !tbaa !119
  %19 = load i32* %typesize, align 4, !dbg !158, !tbaa !119
  %20 = mul nsw i32 %19, %18, !dbg !158
  %21 = sext i32 %20 to i64, !dbg !158
  %22 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %17, i1 false), !dbg !158
  %23 = tail call i8* @__memcpy_chk(i8* %17, i8* %Data, i64 %21, i64 %22) #5, !dbg !158
  %24 = load i32* %Count, align 4, !dbg !159, !tbaa !119
  %25 = load i32* %typesize, align 4, !dbg !160, !tbaa !119
  %26 = mul nsw i32 %25, %24, !dbg !161
  %.offs = add i32 %26, 20, !dbg !162
  store i32 %.offs, i32* %hdrbufsize, align 4, !dbg !163, !tbaa !119
  %27 = bitcast i32* %hdrbufsize to i8*, !dbg !164
  %28 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %hdrbuf, i1 false), !dbg !164
  %29 = tail call i8* @__memcpy_chk(i8* %hdrbuf, i8* %27, i64 4, i64 %28) #5, !dbg !164
  ret i32 0, !dbg !165
}

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @int_get_ti_header_c_(i8* %hdrbuf, i32* %hdrbufsize, i32* nocapture %n, i32* nocapture readnone %itypesize, i32* %typesize, i32* %DataHandle, i8* %Data, i32* %Count, i32* %code) #0 {
  tail call void @llvm.dbg.value(metadata i8* %hdrbuf, i64 0, metadata !40, metadata !113), !dbg !166
  tail call void @llvm.dbg.value(metadata i32* %hdrbufsize, i64 0, metadata !41, metadata !113), !dbg !167
  tail call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !42, metadata !113), !dbg !168
  tail call void @llvm.dbg.value(metadata i32* %itypesize, i64 0, metadata !43, metadata !113), !dbg !169
  tail call void @llvm.dbg.value(metadata i32* %typesize, i64 0, metadata !44, metadata !113), !dbg !170
  tail call void @llvm.dbg.value(metadata i32* %DataHandle, i64 0, metadata !45, metadata !113), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* %Data, i64 0, metadata !46, metadata !113), !dbg !172
  tail call void @llvm.dbg.value(metadata i32* %Count, i64 0, metadata !47, metadata !113), !dbg !173
  tail call void @llvm.dbg.value(metadata i32* %code, i64 0, metadata !48, metadata !113), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* %hdrbuf, i64 0, metadata !50, metadata !113), !dbg !175
  %1 = bitcast i32* %hdrbufsize to i8*, !dbg !176
  %2 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false), !dbg !176
  %3 = tail call i8* @__memcpy_chk(i8* %1, i8* %hdrbuf, i64 4, i64 %2) #5, !dbg !176
  %4 = getelementptr inbounds i8* %hdrbuf, i64 4, !dbg !177
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !50, metadata !113), !dbg !175
  %5 = bitcast i32* %code to i8*, !dbg !178
  %6 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %5, i1 false), !dbg !178
  %7 = tail call i8* @__memcpy_chk(i8* %5, i8* %4, i64 4, i64 %6) #5, !dbg !178
  %8 = getelementptr inbounds i8* %hdrbuf, i64 8, !dbg !179
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !50, metadata !113), !dbg !175
  %9 = bitcast i32* %DataHandle to i8*, !dbg !180
  %10 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %9, i1 false), !dbg !180
  %11 = tail call i8* @__memcpy_chk(i8* %9, i8* %8, i64 4, i64 %10) #5, !dbg !180
  %12 = getelementptr inbounds i8* %hdrbuf, i64 12, !dbg !181
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !50, metadata !113), !dbg !175
  %13 = bitcast i32* %typesize to i8*, !dbg !182
  %14 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false), !dbg !182
  %15 = tail call i8* @__memcpy_chk(i8* %13, i8* %12, i64 4, i64 %14) #5, !dbg !182
  %16 = getelementptr inbounds i8* %hdrbuf, i64 16, !dbg !183
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !50, metadata !113), !dbg !175
  %17 = bitcast i32* %Count to i8*, !dbg !184
  %18 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %17, i1 false), !dbg !184
  %19 = tail call i8* @__memcpy_chk(i8* %17, i8* %16, i64 4, i64 %18) #5, !dbg !184
  %20 = getelementptr inbounds i8* %hdrbuf, i64 20, !dbg !185
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !50, metadata !113), !dbg !175
  %21 = load i32* %Count, align 4, !dbg !186, !tbaa !119
  %22 = load i32* %typesize, align 4, !dbg !188, !tbaa !119
  %23 = mul nsw i32 %22, %21, !dbg !189
  %24 = icmp sgt i32 %23, 0, !dbg !190
  br i1 %24, label %25, label %34, !dbg !191

; <label>:25                                      ; preds = %0
  %26 = sext i32 %23 to i64, !dbg !192
  %27 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %Data, i1 false), !dbg !192
  %28 = tail call i8* @__memcpy_chk(i8* %Data, i8* %20, i64 %26, i64 %27) #5, !dbg !192
  %29 = load i32* %Count, align 4, !dbg !194, !tbaa !119
  %30 = load i32* %typesize, align 4, !dbg !195, !tbaa !119
  %31 = mul nsw i32 %30, %29, !dbg !196
  %32 = sext i32 %31 to i64, !dbg !197
  %.sum = add nsw i64 %32, 20, !dbg !197
  %33 = getelementptr inbounds i8* %hdrbuf, i64 %.sum, !dbg !197
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !50, metadata !113), !dbg !175
  br label %34, !dbg !198

; <label>:34                                      ; preds = %25, %0
  %p.0 = phi i8* [ %33, %25 ], [ %20, %0 ]
  %35 = ptrtoint i8* %p.0 to i64, !dbg !199
  %36 = ptrtoint i8* %hdrbuf to i64, !dbg !199
  %37 = sub i64 %35, %36, !dbg !199
  %38 = trunc i64 %37 to i32, !dbg !200
  store i32 %38, i32* %n, align 4, !dbg !201, !tbaa !119
  ret i32 0, !dbg !202
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @init_store_piece_of_field_() #0 {
  %.b = load i1* @frst, align 1
  br i1 %.b, label %1, label %.preheader, !dbg !203

.preheader:                                       ; preds = %0
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2000 x i8*]* @fld_cache to i8*), i8 0, i64 16000, i32 16, i1 false), !dbg !204
  store i1 true, i1* @frst, align 1
  br label %1, !dbg !210

; <label>:1                                       ; preds = %0, %.preheader
  store i32 0, i32* @numflds, align 4, !dbg !211, !tbaa !119
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !55, metadata !113), !dbg !212
  br label %2, !dbg !213

; <label>:2                                       ; preds = %10, %1
  %indvars.iv = phi i64 [ 0, %1 ], [ %indvars.iv.next, %10 ]
  %3 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %indvars.iv, i64 0, !dbg !215
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %3, i1 false), !dbg !215
  %5 = tail call i8* @__memcpy_chk(i8* %3, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i64 1, i64 %4), !dbg !215
  %6 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %indvars.iv, !dbg !218
  %7 = load i8** %6, align 8, !dbg !218, !tbaa !220
  %8 = icmp eq i8* %7, null, !dbg !222
  br i1 %8, label %10, label %9, !dbg !223

; <label>:9                                       ; preds = %2
  tail call void @free(i8* %7) #6, !dbg !224
  br label %10, !dbg !224

; <label>:10                                      ; preds = %2, %9
  store i8* null, i8** %6, align 8, !dbg !225, !tbaa !220
  %11 = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %indvars.iv, !dbg !226
  store i32 0, i32* %11, align 4, !dbg !227, !tbaa !119
  %12 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %indvars.iv, !dbg !228
  store i32 0, i32* %12, align 4, !dbg !229, !tbaa !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !213
  %exitcond = icmp eq i64 %indvars.iv.next, 2000, !dbg !213
  br i1 %exitcond, label %13, label %2, !dbg !213

; <label>:13                                      ; preds = %10
  ret i32 0, !dbg !230
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @init_retrieve_pieces_of_field_() #0 {
  store i32 0, i32* @fld, align 4, !dbg !231, !tbaa !119
  ret i32 0, !dbg !232
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @add_to_bufsize_for_field_c_(i32* nocapture readonly %varname, i32* nocapture readonly %chunksize) #0 {
  %vname = alloca [256 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32* %varname, i64 0, metadata !61, metadata !113), !dbg !233
  tail call void @llvm.dbg.value(metadata i32* %chunksize, i64 0, metadata !62, metadata !113), !dbg !234
  %1 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 0, !dbg !235
  call void @llvm.lifetime.start(i64 256, i8* %1) #3, !dbg !235
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %vname, metadata !66, metadata !113), !dbg !236
  %2 = load i32* %varname, align 4, !dbg !237, !tbaa !119
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !64, metadata !113), !dbg !238
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !63, metadata !113), !dbg !239
  %3 = icmp slt i32 %2, 1, !dbg !240
  br i1 %3, label %._crit_edge, label %.lr.ph4, !dbg !243

.lr.ph4:                                          ; preds = %0, %.lr.ph4
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %.lr.ph4 ], [ 1, %0 ]
  %4 = getelementptr inbounds i32* %varname, i64 %indvars.iv6, !dbg !244
  %5 = load i32* %4, align 4, !dbg !244, !tbaa !119
  %6 = trunc i32 %5 to i8, !dbg !244
  %7 = add nsw i64 %indvars.iv6, -1, !dbg !246
  %8 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %7, !dbg !247
  store i8 %6, i8* %8, align 1, !dbg !248, !tbaa !133
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !243
  %lftr.wideiv = trunc i64 %indvars.iv6 to i32, !dbg !243
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !243
  br i1 %exitcond, label %._crit_edge, label %.lr.ph4, !dbg !243

._crit_edge:                                      ; preds = %.lr.ph4, %0
  %9 = sext i32 %2 to i64, !dbg !249
  %10 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %9, !dbg !249
  store i8 0, i8* %10, align 1, !dbg !250, !tbaa !133
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !65, metadata !113), !dbg !251
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !63, metadata !113), !dbg !239
  %11 = load i32* @numflds, align 4, !dbg !252, !tbaa !119
  %12 = icmp sgt i32 %11, 0, !dbg !255
  %13 = sext i32 %11 to i64, !dbg !256
  br i1 %12, label %.lr.ph, label %.thread, !dbg !256

.lr.ph:                                           ; preds = %._crit_edge, %17
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ 0, %._crit_edge ]
  %14 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %indvars.iv, i64 0, !dbg !257
  %15 = call i32 @strcmp(i8* %14, i8* %1) #5, !dbg !260
  %16 = icmp eq i32 %15, 0, !dbg !260
  br i1 %16, label %19, label %17, !dbg !261

; <label>:17                                      ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !256
  %18 = icmp slt i64 %indvars.iv.next, %13, !dbg !255
  br i1 %18, label %.lr.ph, label %.thread, !dbg !256

; <label>:19                                      ; preds = %.lr.ph
  %20 = trunc i64 %indvars.iv to i32, !dbg !262
  %21 = icmp eq i32 %20, -1, !dbg !262
  br i1 %21, label %.thread, label %28, !dbg !264

.thread:                                          ; preds = %17, %._crit_edge, %19
  %22 = add nsw i32 %11, 1, !dbg !265
  store i32 %22, i32* @numflds, align 4, !dbg !265, !tbaa !119
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !65, metadata !113), !dbg !251
  %23 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %13, i64 0, !dbg !267
  %24 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %23, i1 false), !dbg !267
  %25 = call i8* @__strcpy_chk(i8* %23, i8* %1, i64 %24) #5, !dbg !267
  %26 = load i32* %chunksize, align 4, !dbg !268, !tbaa !119
  %27 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %13, !dbg !269
  store i32 %26, i32* %27, align 4, !dbg !270, !tbaa !119
  br label %34, !dbg !271

; <label>:28                                      ; preds = %19
  %29 = load i32* %chunksize, align 4, !dbg !272, !tbaa !119
  %sext = shl i64 %indvars.iv, 32, !dbg !274
  %30 = ashr exact i64 %sext, 32, !dbg !274
  %31 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %30, !dbg !274
  %32 = load i32* %31, align 4, !dbg !275, !tbaa !119
  %33 = add nsw i32 %32, %29, !dbg !275
  store i32 %33, i32* %31, align 4, !dbg !275, !tbaa !119
  br label %34

; <label>:34                                      ; preds = %28, %.thread
  %found.1 = phi i32 [ %11, %.thread ], [ %20, %28 ]
  %35 = sext i32 %found.1 to i64, !dbg !276
  %36 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %35, !dbg !276
  %37 = load i8** %36, align 8, !dbg !276, !tbaa !220
  %38 = icmp eq i8* %37, null, !dbg !278
  br i1 %38, label %40, label %39, !dbg !279

; <label>:39                                      ; preds = %34
  call void @free(i8* %37) #6, !dbg !280
  br label %40, !dbg !282

; <label>:40                                      ; preds = %34, %39
  store i8* null, i8** %36, align 8, !dbg !283, !tbaa !220
  call void @llvm.lifetime.end(i64 256, i8* %1) #3, !dbg !284
  ret i32 undef, !dbg !284
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
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !74, metadata !113), !dbg !285
  tail call void @llvm.dbg.value(metadata i32* %varname, i64 0, metadata !75, metadata !113), !dbg !286
  tail call void @llvm.dbg.value(metadata i32* %chunksize, i64 0, metadata !76, metadata !113), !dbg !287
  tail call void @llvm.dbg.value(metadata i32* %retval, i64 0, metadata !77, metadata !113), !dbg !288
  %1 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 0, !dbg !289
  call void @llvm.lifetime.start(i64 256, i8* %1) #3, !dbg !289
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %vname, metadata !81, metadata !113), !dbg !290
  %2 = load i32* %varname, align 4, !dbg !291, !tbaa !119
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !79, metadata !113), !dbg !292
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !78, metadata !113), !dbg !293
  %3 = icmp slt i32 %2, 1, !dbg !294
  br i1 %3, label %._crit_edge, label %.lr.ph4, !dbg !297

.lr.ph4:                                          ; preds = %0, %.lr.ph4
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %.lr.ph4 ], [ 1, %0 ]
  %4 = getelementptr inbounds i32* %varname, i64 %indvars.iv6, !dbg !298
  %5 = load i32* %4, align 4, !dbg !298, !tbaa !119
  %6 = trunc i32 %5 to i8, !dbg !298
  %7 = add nsw i64 %indvars.iv6, -1, !dbg !300
  %8 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %7, !dbg !301
  store i8 %6, i8* %8, align 1, !dbg !302, !tbaa !133
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !297
  %lftr.wideiv = trunc i64 %indvars.iv6 to i32, !dbg !297
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !297
  br i1 %exitcond, label %._crit_edge, label %.lr.ph4, !dbg !297

._crit_edge:                                      ; preds = %.lr.ph4, %0
  %9 = sext i32 %2 to i64, !dbg !303
  %10 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %9, !dbg !303
  store i8 0, i8* %10, align 1, !dbg !304, !tbaa !133
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !80, metadata !113), !dbg !305
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !78, metadata !113), !dbg !293
  %11 = load i32* @numflds, align 4, !dbg !306, !tbaa !119
  %12 = icmp sgt i32 %11, 0, !dbg !309
  br i1 %12, label %.lr.ph, label %.thread, !dbg !310

.lr.ph:                                           ; preds = %._crit_edge
  %13 = sext i32 %11 to i64, !dbg !310
  br label %14, !dbg !310

; <label>:14                                      ; preds = %.lr.ph, %18
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %18 ]
  %15 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %indvars.iv, i64 0, !dbg !311
  %16 = call i32 @strcmp(i8* %15, i8* %1) #5, !dbg !314
  %17 = icmp eq i32 %16, 0, !dbg !314
  br i1 %17, label %20, label %18, !dbg !315

; <label>:18                                      ; preds = %14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !310
  %19 = icmp slt i64 %indvars.iv.next, %13, !dbg !309
  br i1 %19, label %14, label %.thread, !dbg !310

; <label>:20                                      ; preds = %14
  %21 = trunc i64 %indvars.iv to i32, !dbg !316
  %22 = icmp eq i32 %21, -1, !dbg !316
  br i1 %22, label %.thread, label %25, !dbg !318

.thread:                                          ; preds = %18, %._crit_edge, %20
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !319, !tbaa !220
  %24 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([88 x i8]* @.str1, i64 0, i64 0), i8* %1) #5, !dbg !321
  store i32 1, i32* %retval, align 4, !dbg !322, !tbaa !119
  br label %55, !dbg !323

; <label>:25                                      ; preds = %20
  %sext = shl i64 %indvars.iv, 32, !dbg !324
  %26 = ashr exact i64 %sext, 32, !dbg !324
  %27 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %26, !dbg !324
  %28 = load i8** %27, align 8, !dbg !324, !tbaa !220
  %29 = icmp eq i8* %28, null, !dbg !326
  br i1 %29, label %30, label %._crit_edge8, !dbg !327

._crit_edge8:                                     ; preds = %25
  %.phi.trans.insert = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %26
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !328, !tbaa !119
  %.pre9 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %26, !dbg !330
  br label %36, !dbg !327

; <label>:30                                      ; preds = %25
  %31 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %26, !dbg !331
  %32 = load i32* %31, align 4, !dbg !331, !tbaa !119
  %33 = sext i32 %32 to i64, !dbg !331
  %34 = tail call i8* @malloc(i64 %33) #5, !dbg !333
  store i8* %34, i8** %27, align 8, !dbg !334, !tbaa !220
  %35 = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %26, !dbg !335
  store i32 0, i32* %35, align 4, !dbg !336, !tbaa !119
  br label %36, !dbg !337

; <label>:36                                      ; preds = %._crit_edge8, %30
  %.pre-phi10 = phi i32* [ %.pre9, %._crit_edge8 ], [ %31, %30 ], !dbg !330
  %.pre-phi = phi i32* [ %.phi.trans.insert, %._crit_edge8 ], [ %35, %30 ], !dbg !328
  %37 = phi i8* [ %28, %._crit_edge8 ], [ %34, %30 ]
  %38 = phi i32 [ %.pre, %._crit_edge8 ], [ 0, %30 ]
  %39 = load i32* %chunksize, align 4, !dbg !338, !tbaa !119
  %40 = add nsw i32 %39, %38, !dbg !339
  %41 = load i32* %.pre-phi10, align 4, !dbg !330, !tbaa !119
  %42 = icmp sgt i32 %40, %41, !dbg !340
  br i1 %42, label %43, label %46, !dbg !341

; <label>:43                                      ; preds = %36
  %44 = load %struct.__sFILE** @__stderrp, align 8, !dbg !342, !tbaa !220
  %45 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %44, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* %1, i32 %38, i32 %39, i32 %41, i32 %21) #5, !dbg !344
  store i32 1, i32* %retval, align 4, !dbg !345, !tbaa !119
  br label %55, !dbg !346

; <label>:46                                      ; preds = %36
  %47 = sext i32 %38 to i64, !dbg !347
  %48 = getelementptr inbounds i8* %37, i64 %47, !dbg !347
  %49 = sext i32 %39 to i64, !dbg !347
  %50 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %48, i1 false), !dbg !347
  %51 = tail call i8* @__memcpy_chk(i8* %48, i8* %buf, i64 %49, i64 %50) #5, !dbg !347
  %52 = load i32* %chunksize, align 4, !dbg !348, !tbaa !119
  %53 = load i32* %.pre-phi, align 4, !dbg !349, !tbaa !119
  %54 = add nsw i32 %53, %52, !dbg !349
  store i32 %54, i32* %.pre-phi, align 4, !dbg !349, !tbaa !119
  store i32 0, i32* %retval, align 4, !dbg !350, !tbaa !119
  br label %55, !dbg !351

; <label>:55                                      ; preds = %46, %43, %.thread
  call void @llvm.lifetime.end(i64 256, i8* %1) #3, !dbg !352
  ret i32 0, !dbg !352
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @retrieve_pieces_of_field_c_(i8* nocapture %buf, i32* nocapture %varname, i32* nocapture readonly %insize, i32* nocapture %outsize, i32* nocapture %retval) #0 {
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !86, metadata !113), !dbg !353
  tail call void @llvm.dbg.value(metadata i32* %varname, i64 0, metadata !87, metadata !113), !dbg !354
  tail call void @llvm.dbg.value(metadata i32* %insize, i64 0, metadata !88, metadata !113), !dbg !355
  tail call void @llvm.dbg.value(metadata i32* %outsize, i64 0, metadata !89, metadata !113), !dbg !356
  tail call void @llvm.dbg.value(metadata i32* %retval, i64 0, metadata !90, metadata !113), !dbg !357
  %1 = load i32* @fld, align 4, !dbg !358, !tbaa !119
  %2 = load i32* @numflds, align 4, !dbg !360, !tbaa !119
  %3 = icmp slt i32 %1, %2, !dbg !361
  br i1 %3, label %4, label %57, !dbg !362

; <label>:4                                       ; preds = %0
  %5 = sext i32 %1 to i64, !dbg !363
  %6 = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %5, !dbg !363
  %7 = load i32* %6, align 4, !dbg !363, !tbaa !119
  %8 = load i32* %insize, align 4, !dbg !366, !tbaa !119
  %9 = icmp sgt i32 %7, %8, !dbg !367
  br i1 %9, label %10, label %13, !dbg !368

; <label>:10                                      ; preds = %4
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !369, !tbaa !220
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), i32 %1, i32 %7, i32 %8) #5, !dbg !371
  %.pre = load i32* @fld, align 4, !dbg !372, !tbaa !119
  %.phi.trans.insert = sext i32 %.pre to i64
  %.phi.trans.insert7 = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %.phi.trans.insert
  %.pre8 = load i32* %.phi.trans.insert7, align 4, !dbg !373, !tbaa !119
  %.pre9 = load i32* %insize, align 4, !dbg !374, !tbaa !119
  br label %13, !dbg !375

; <label>:13                                      ; preds = %10, %4
  %14 = phi i32 [ %.pre9, %10 ], [ %8, %4 ]
  %15 = phi i32 [ %.pre8, %10 ], [ %7, %4 ]
  %16 = icmp sgt i32 %15, %14, !dbg !376
  %. = select i1 %16, i32 %14, i32 %15, !dbg !377
  store i32 %., i32* %outsize, align 4, !dbg !378, !tbaa !119
  %17 = load i32* @fld, align 4, !dbg !379, !tbaa !119
  %18 = sext i32 %17 to i64, !dbg !380
  %19 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %18, i64 0, !dbg !380
  %20 = tail call i64 @strlen(i8* %19) #5, !dbg !381
  %21 = trunc i64 %20 to i32, !dbg !382
  store i32 %21, i32* %varname, align 4, !dbg !383, !tbaa !119
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !91, metadata !113), !dbg !384
  %22 = icmp slt i32 %21, 1, !dbg !385
  br i1 %22, label %.preheader, label %.lr.ph4, !dbg !388

.preheader:                                       ; preds = %.lr.ph4, %13
  %23 = load i32* %outsize, align 4, !dbg !389, !tbaa !119
  %24 = icmp sgt i32 %23, 0, !dbg !392
  br i1 %24, label %.lr.ph, label %._crit_edge, !dbg !393

.lr.ph4:                                          ; preds = %13, %.lr.ph4
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %.lr.ph4 ], [ 1, %13 ]
  %25 = add nsw i64 %indvars.iv5, -1, !dbg !394
  %26 = load i32* @fld, align 4, !dbg !395, !tbaa !119
  %27 = sext i32 %26 to i64, !dbg !396
  %28 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %27, i64 %25, !dbg !396
  %29 = load i8* %28, align 1, !dbg !396, !tbaa !133
  %30 = sext i8 %29 to i32, !dbg !396
  %31 = getelementptr inbounds i32* %varname, i64 %indvars.iv5, !dbg !397
  store i32 %30, i32* %31, align 4, !dbg !398, !tbaa !119
  %indvars.iv.next6 = add nuw i64 %indvars.iv5, 1, !dbg !388
  %32 = load i32* %varname, align 4, !dbg !399, !tbaa !119
  %33 = sext i32 %32 to i64, !dbg !385
  %34 = icmp slt i64 %indvars.iv5, %33, !dbg !385
  br i1 %34, label %.lr.ph4, label %.preheader, !dbg !388

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %35 = load i32* @fld, align 4, !dbg !400, !tbaa !119
  %36 = sext i32 %35 to i64, !dbg !401
  %37 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %36, !dbg !401
  %38 = load i8** %37, align 8, !dbg !401, !tbaa !220
  %39 = getelementptr inbounds i8* %38, i64 %indvars.iv, !dbg !401
  %40 = load i8* %39, align 1, !dbg !401, !tbaa !133
  %41 = getelementptr inbounds i8* %buf, i64 %indvars.iv, !dbg !402
  store i8 %40, i8* %41, align 1, !dbg !403, !tbaa !133
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !393
  %42 = load i32* %outsize, align 4, !dbg !389, !tbaa !119
  %43 = sext i32 %42 to i64, !dbg !392
  %44 = icmp slt i64 %indvars.iv.next, %43, !dbg !392
  br i1 %44, label %.lr.ph, label %._crit_edge, !dbg !393

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %45 = load i32* @fld, align 4, !dbg !404, !tbaa !119
  %46 = sext i32 %45 to i64, !dbg !406
  %47 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %46, !dbg !406
  %48 = load i8** %47, align 8, !dbg !406, !tbaa !220
  %49 = icmp eq i8* %48, null, !dbg !407
  br i1 %49, label %51, label %50, !dbg !408

; <label>:50                                      ; preds = %._crit_edge
  tail call void @free(i8* %48) #6, !dbg !409
  %.pre10 = load i32* @fld, align 4, !dbg !410, !tbaa !119
  br label %51, !dbg !409

; <label>:51                                      ; preds = %._crit_edge, %50
  %52 = phi i32 [ %45, %._crit_edge ], [ %.pre10, %50 ]
  %53 = sext i32 %52 to i64, !dbg !411
  %54 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %53, !dbg !411
  store i8* null, i8** %54, align 8, !dbg !412, !tbaa !220
  %55 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %53, !dbg !413
  store i32 0, i32* %55, align 4, !dbg !414, !tbaa !119
  %56 = add nsw i32 %52, 1, !dbg !415
  store i32 %56, i32* @fld, align 4, !dbg !415, !tbaa !119
  br label %58, !dbg !416

; <label>:57                                      ; preds = %0
  store i32 0, i32* @numflds, align 4, !dbg !417, !tbaa !119
  br label %58

; <label>:58                                      ; preds = %57, %51
  %storemerge = phi i32 [ -1, %57 ], [ 0, %51 ]
  store i32 %storemerge, i32* %retval, align 4, !dbg !419, !tbaa !119
  ret i32 0, !dbg !420
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!109, !110, !111}
!llvm.ident = !{!112}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !95, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/481.wrf/src/pack_utils.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!8 = !{!9, !22, !36, !51, !56, !57, !70, !82}
!9 = !DISubprogram(name: "int_pack_data_", scope: !1, file: !1, line: 42, type: !10, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32*, i8*, i32*)* @int_pack_data_, variables: !15)
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !12, !14, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!15 = !{!16, !17, !18, !19, !20, !21}
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !9, file: !1, line: 42, type: !12)
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninbytes", arg: 2, scope: !9, file: !1, line: 42, type: !14)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obuf", arg: 3, scope: !9, file: !1, line: 42, type: !12)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cursor", arg: 4, scope: !9, file: !1, line: 42, type: !14)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !9, file: !1, line: 44, type: !4)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcurs", scope: !9, file: !1, line: 44, type: !4)
!22 = !DISubprogram(name: "int_gen_ti_header_c_", scope: !1, file: !1, line: 54, type: !23, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32*, i32*, i32*, i32*, i8*, i32*, i32*)* @int_gen_ti_header_c_, variables: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{!4, !6, !14, !14, !14, !14, !6, !14, !14}
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hdrbuf", arg: 1, scope: !22, file: !1, line: 54, type: !6)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hdrbufsize", arg: 2, scope: !22, file: !1, line: 54, type: !14)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "itypesize", arg: 3, scope: !22, file: !1, line: 55, type: !14)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "typesize", arg: 4, scope: !22, file: !1, line: 55, type: !14)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DataHandle", arg: 5, scope: !22, file: !1, line: 56, type: !14)
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Data", arg: 6, scope: !22, file: !1, line: 56, type: !6)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Count", arg: 7, scope: !22, file: !1, line: 57, type: !14)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code", arg: 8, scope: !22, file: !1, line: 57, type: !14)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !22, file: !1, line: 59, type: !4)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !22, file: !1, line: 60, type: !6)
!36 = !DISubprogram(name: "int_get_ti_header_c_", scope: !1, file: !1, line: 84, type: !37, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*)* @int_get_ti_header_c_, variables: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{!4, !6, !14, !14, !14, !14, !14, !6, !14, !14}
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hdrbuf", arg: 1, scope: !36, file: !1, line: 84, type: !6)
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hdrbufsize", arg: 2, scope: !36, file: !1, line: 84, type: !14)
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !36, file: !1, line: 84, type: !14)
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "itypesize", arg: 4, scope: !36, file: !1, line: 85, type: !14)
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "typesize", arg: 5, scope: !36, file: !1, line: 85, type: !14)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DataHandle", arg: 6, scope: !36, file: !1, line: 86, type: !14)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Data", arg: 7, scope: !36, file: !1, line: 86, type: !6)
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Count", arg: 8, scope: !36, file: !1, line: 87, type: !14)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code", arg: 9, scope: !36, file: !1, line: 87, type: !14)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !36, file: !1, line: 89, type: !4)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !36, file: !1, line: 90, type: !6)
!51 = !DISubprogram(name: "init_store_piece_of_field_", scope: !1, file: !1, line: 124, type: !52, isLocal: false, isDefinition: true, scopeLine: 125, isOptimized: true, function: i32 ()* @init_store_piece_of_field_, variables: !54)
!52 = !DISubroutineType(types: !53)
!53 = !{!4}
!54 = !{!55}
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !51, file: !1, line: 126, type: !4)
!56 = !DISubprogram(name: "init_retrieve_pieces_of_field_", scope: !1, file: !1, line: 144, type: !52, isLocal: false, isDefinition: true, scopeLine: 145, isOptimized: true, function: i32 ()* @init_retrieve_pieces_of_field_, variables: !2)
!57 = !DISubprogram(name: "add_to_bufsize_for_field_c_", scope: !1, file: !1, line: 151, type: !58, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i32*)* @add_to_bufsize_for_field_c_, variables: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{!4, !14, !14}
!60 = !{!61, !62, !63, !64, !65, !66}
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "varname", arg: 1, scope: !57, file: !1, line: 151, type: !14)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chunksize", arg: 2, scope: !57, file: !1, line: 151, type: !14)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !57, file: !1, line: 153, type: !4)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !57, file: !1, line: 153, type: !4)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "found", scope: !57, file: !1, line: 154, type: !4)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vname", scope: !57, file: !1, line: 155, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 256)
!70 = !DISubprogram(name: "store_piece_of_field_c_", scope: !1, file: !1, line: 177, type: !71, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32*, i32*, i32*)* @store_piece_of_field_c_, variables: !73)
!71 = !DISubroutineType(types: !72)
!72 = !{!4, !6, !14, !14, !14}
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !70, file: !1, line: 177, type: !6)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "varname", arg: 2, scope: !70, file: !1, line: 177, type: !14)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chunksize", arg: 3, scope: !70, file: !1, line: 177, type: !14)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "retval", arg: 4, scope: !70, file: !1, line: 177, type: !14)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !70, file: !1, line: 179, type: !4)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !70, file: !1, line: 179, type: !4)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "found", scope: !70, file: !1, line: 180, type: !4)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vname", scope: !70, file: !1, line: 181, type: !67)
!82 = !DISubprogram(name: "retrieve_pieces_of_field_c_", scope: !1, file: !1, line: 218, type: !83, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32*, i32*, i32*, i32*)* @retrieve_pieces_of_field_c_, variables: !85)
!83 = !DISubroutineType(types: !84)
!84 = !{!4, !6, !14, !14, !14, !14}
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94}
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !82, file: !1, line: 218, type: !6)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "varname", arg: 2, scope: !82, file: !1, line: 218, type: !14)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "insize", arg: 3, scope: !82, file: !1, line: 218, type: !14)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outsize", arg: 4, scope: !82, file: !1, line: 218, type: !14)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "retval", arg: 5, scope: !82, file: !1, line: 218, type: !14)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !82, file: !1, line: 220, type: !4)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !82, file: !1, line: 220, type: !4)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "found", scope: !82, file: !1, line: 221, type: !4)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vname", scope: !82, file: !1, line: 222, type: !67)
!95 = !{!96, !100, !103, !105, !106, !107, !108}
!96 = !DIGlobalVariable(name: "fld_name", scope: !0, file: !1, line: 116, type: !97, isLocal: true, isDefinition: true, variable: [2000 x [256 x i8]]* @fld_name)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 4096000, align: 8, elements: !98)
!98 = !{!99, !69}
!99 = !DISubrange(count: 2000)
!100 = !DIGlobalVariable(name: "fld_cache", scope: !0, file: !1, line: 117, type: !101, isLocal: true, isDefinition: true, variable: [2000 x i8*]* @fld_cache)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128000, align: 64, elements: !102)
!102 = !{!99}
!103 = !DIGlobalVariable(name: "fld_curs", scope: !0, file: !1, line: 118, type: !104, isLocal: true, isDefinition: true, variable: [2000 x i32]* @fld_curs)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64000, align: 32, elements: !102)
!105 = !DIGlobalVariable(name: "fld_bufsize", scope: !0, file: !1, line: 119, type: !104, isLocal: true, isDefinition: true, variable: [2000 x i32]* @fld_bufsize)
!106 = !DIGlobalVariable(name: "frst", scope: !0, file: !1, line: 122, type: !4, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariable(name: "numflds", scope: !0, file: !1, line: 121, type: !4, isLocal: true, isDefinition: true, variable: i32* @numflds)
!108 = !DIGlobalVariable(name: "fld", scope: !0, file: !1, line: 120, type: !4, isLocal: true, isDefinition: true, variable: i32* @fld)
!109 = !{i32 2, !"Dwarf Version", i32 2}
!110 = !{i32 2, !"Debug Info Version", i32 700000003}
!111 = !{i32 1, !"PIC Level", i32 2}
!112 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!113 = !DIExpression()
!114 = !DILocation(line: 42, column: 32, scope: !9)
!115 = !DILocation(line: 42, column: 43, scope: !9)
!116 = !DILocation(line: 42, column: 69, scope: !9)
!117 = !DILocation(line: 42, column: 80, scope: !9)
!118 = !DILocation(line: 45, column: 11, scope: !9)
!119 = !{!120, !120, i64 0}
!120 = !{!"int", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C/C++ TBAA"}
!123 = !DILocation(line: 45, column: 19, scope: !9)
!124 = !DILocation(line: 44, column: 10, scope: !9)
!125 = !DILocation(line: 44, column: 7, scope: !9)
!126 = !DILocation(line: 46, column: 21, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !1, line: 46, column: 3)
!128 = distinct !DILexicalBlock(scope: !9, file: !1, line: 46, column: 3)
!129 = !DILocation(line: 46, column: 19, scope: !127)
!130 = !DILocation(line: 46, column: 3, scope: !128)
!131 = !DILocation(line: 48, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !1, line: 47, column: 3)
!133 = !{!121, !121, i64 0}
!134 = !DILocation(line: 48, column: 15, scope: !132)
!135 = !DILocation(line: 48, column: 5, scope: !132)
!136 = !DILocation(line: 48, column: 19, scope: !132)
!137 = !DILocation(line: 50, column: 18, scope: !9)
!138 = !DILocation(line: 50, column: 11, scope: !9)
!139 = !DILocation(line: 51, column: 1, scope: !9)
!140 = !DILocation(line: 54, column: 30, scope: !22)
!141 = !DILocation(line: 54, column: 44, scope: !22)
!142 = !DILocation(line: 55, column: 27, scope: !22)
!143 = !DILocation(line: 55, column: 44, scope: !22)
!144 = !DILocation(line: 56, column: 27, scope: !22)
!145 = !DILocation(line: 56, column: 46, scope: !22)
!146 = !DILocation(line: 57, column: 27, scope: !22)
!147 = !DILocation(line: 57, column: 40, scope: !22)
!148 = !DILocation(line: 60, column: 10, scope: !22)
!149 = !DILocation(line: 62, column: 5, scope: !22)
!150 = !DILocation(line: 72, column: 3, scope: !22)
!151 = !DILocation(line: 72, column: 38, scope: !22)
!152 = !DILocation(line: 73, column: 3, scope: !22)
!153 = !DILocation(line: 73, column: 44, scope: !22)
!154 = !DILocation(line: 74, column: 3, scope: !22)
!155 = !DILocation(line: 74, column: 42, scope: !22)
!156 = !DILocation(line: 75, column: 3, scope: !22)
!157 = !DILocation(line: 75, column: 39, scope: !22)
!158 = !DILocation(line: 76, column: 3, scope: !22)
!159 = !DILocation(line: 76, column: 48, scope: !22)
!160 = !DILocation(line: 76, column: 57, scope: !22)
!161 = !DILocation(line: 76, column: 55, scope: !22)
!162 = !DILocation(line: 77, column: 26, scope: !22)
!163 = !DILocation(line: 77, column: 15, scope: !22)
!164 = !DILocation(line: 78, column: 3, scope: !22)
!165 = !DILocation(line: 80, column: 3, scope: !22)
!166 = !DILocation(line: 84, column: 30, scope: !36)
!167 = !DILocation(line: 84, column: 44, scope: !36)
!168 = !DILocation(line: 84, column: 62, scope: !36)
!169 = !DILocation(line: 85, column: 27, scope: !36)
!170 = !DILocation(line: 85, column: 44, scope: !36)
!171 = !DILocation(line: 86, column: 27, scope: !36)
!172 = !DILocation(line: 86, column: 46, scope: !36)
!173 = !DILocation(line: 87, column: 27, scope: !36)
!174 = !DILocation(line: 87, column: 40, scope: !36)
!175 = !DILocation(line: 90, column: 10, scope: !36)
!176 = !DILocation(line: 102, column: 3, scope: !36)
!177 = !DILocation(line: 102, column: 48, scope: !36)
!178 = !DILocation(line: 103, column: 3, scope: !36)
!179 = !DILocation(line: 103, column: 48, scope: !36)
!180 = !DILocation(line: 104, column: 3, scope: !36)
!181 = !DILocation(line: 104, column: 48, scope: !36)
!182 = !DILocation(line: 105, column: 3, scope: !36)
!183 = !DILocation(line: 105, column: 48, scope: !36)
!184 = !DILocation(line: 106, column: 3, scope: !36)
!185 = !DILocation(line: 106, column: 48, scope: !36)
!186 = !DILocation(line: 107, column: 8, scope: !187)
!187 = distinct !DILexicalBlock(scope: !36, file: !1, line: 107, column: 8)
!188 = !DILocation(line: 107, column: 17, scope: !187)
!189 = !DILocation(line: 107, column: 15, scope: !187)
!190 = !DILocation(line: 107, column: 27, scope: !187)
!191 = !DILocation(line: 107, column: 8, scope: !36)
!192 = !DILocation(line: 108, column: 5, scope: !193)
!193 = distinct !DILexicalBlock(scope: !187, file: !1, line: 107, column: 33)
!194 = !DILocation(line: 108, column: 51, scope: !193)
!195 = !DILocation(line: 108, column: 60, scope: !193)
!196 = !DILocation(line: 108, column: 58, scope: !193)
!197 = !DILocation(line: 108, column: 48, scope: !193)
!198 = !DILocation(line: 109, column: 3, scope: !193)
!199 = !DILocation(line: 111, column: 17, scope: !36)
!200 = !DILocation(line: 111, column: 8, scope: !36)
!201 = !DILocation(line: 111, column: 6, scope: !36)
!202 = !DILocation(line: 112, column: 3, scope: !36)
!203 = !DILocation(line: 127, column: 8, scope: !51)
!204 = !DILocation(line: 129, column: 20, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 128, column: 40)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 128, column: 5)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 128, column: 5)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 127, column: 15)
!209 = distinct !DILexicalBlock(scope: !51, file: !1, line: 127, column: 8)
!210 = !DILocation(line: 132, column: 3, scope: !208)
!211 = !DILocation(line: 133, column: 11, scope: !51)
!212 = !DILocation(line: 126, column: 7, scope: !51)
!213 = !DILocation(line: 134, column: 3, scope: !214)
!214 = distinct !DILexicalBlock(scope: !51, file: !1, line: 134, column: 3)
!215 = !DILocation(line: 135, column: 5, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !1, line: 134, column: 38)
!217 = distinct !DILexicalBlock(scope: !214, file: !1, line: 134, column: 3)
!218 = !DILocation(line: 136, column: 10, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !1, line: 136, column: 10)
!220 = !{!221, !221, i64 0}
!221 = !{!"any pointer", !121, i64 0}
!222 = !DILocation(line: 136, column: 23, scope: !219)
!223 = !DILocation(line: 136, column: 10, scope: !216)
!224 = !DILocation(line: 136, column: 33, scope: !219)
!225 = !DILocation(line: 137, column: 18, scope: !216)
!226 = !DILocation(line: 138, column: 5, scope: !216)
!227 = !DILocation(line: 138, column: 17, scope: !216)
!228 = !DILocation(line: 139, column: 5, scope: !216)
!229 = !DILocation(line: 139, column: 20, scope: !216)
!230 = !DILocation(line: 141, column: 3, scope: !51)
!231 = !DILocation(line: 146, column: 7, scope: !56)
!232 = !DILocation(line: 147, column: 3, scope: !56)
!233 = !DILocation(line: 151, column: 34, scope: !57)
!234 = !DILocation(line: 151, column: 51, scope: !57)
!235 = !DILocation(line: 155, column: 3, scope: !57)
!236 = !DILocation(line: 155, column: 8, scope: !57)
!237 = !DILocation(line: 157, column: 7, scope: !57)
!238 = !DILocation(line: 153, column: 10, scope: !57)
!239 = !DILocation(line: 153, column: 7, scope: !57)
!240 = !DILocation(line: 158, column: 18, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 158, column: 3)
!242 = distinct !DILexicalBlock(scope: !57, file: !1, line: 158, column: 3)
!243 = !DILocation(line: 158, column: 3, scope: !242)
!244 = !DILocation(line: 158, column: 46, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !1, line: 158, column: 31)
!246 = !DILocation(line: 158, column: 40, scope: !245)
!247 = !DILocation(line: 158, column: 33, scope: !245)
!248 = !DILocation(line: 158, column: 44, scope: !245)
!249 = !DILocation(line: 159, column: 3, scope: !57)
!250 = !DILocation(line: 159, column: 12, scope: !57)
!251 = !DILocation(line: 154, column: 7, scope: !57)
!252 = !DILocation(line: 162, column: 21, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !1, line: 162, column: 3)
!254 = distinct !DILexicalBlock(scope: !57, file: !1, line: 162, column: 3)
!255 = !DILocation(line: 162, column: 19, scope: !253)
!256 = !DILocation(line: 162, column: 3, scope: !254)
!257 = !DILocation(line: 162, column: 53, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !1, line: 162, column: 44)
!259 = distinct !DILexicalBlock(scope: !253, file: !1, line: 162, column: 37)
!260 = !DILocation(line: 162, column: 45, scope: !258)
!261 = !DILocation(line: 162, column: 44, scope: !259)
!262 = !DILocation(line: 163, column: 14, scope: !263)
!263 = distinct !DILexicalBlock(scope: !57, file: !1, line: 163, column: 8)
!264 = !DILocation(line: 163, column: 8, scope: !57)
!265 = !DILocation(line: 164, column: 20, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !1, line: 163, column: 22)
!267 = !DILocation(line: 165, column: 5, scope: !266)
!268 = !DILocation(line: 166, column: 26, scope: !266)
!269 = !DILocation(line: 166, column: 5, scope: !266)
!270 = !DILocation(line: 166, column: 24, scope: !266)
!271 = !DILocation(line: 167, column: 3, scope: !266)
!272 = !DILocation(line: 170, column: 27, scope: !273)
!273 = distinct !DILexicalBlock(scope: !263, file: !1, line: 169, column: 3)
!274 = !DILocation(line: 170, column: 5, scope: !273)
!275 = !DILocation(line: 170, column: 24, scope: !273)
!276 = !DILocation(line: 172, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !57, file: !1, line: 172, column: 8)
!278 = !DILocation(line: 172, column: 25, scope: !277)
!279 = !DILocation(line: 172, column: 8, scope: !57)
!280 = !DILocation(line: 172, column: 37, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !1, line: 172, column: 35)
!282 = !DILocation(line: 172, column: 64, scope: !281)
!283 = !DILocation(line: 173, column: 20, scope: !57)
!284 = !DILocation(line: 174, column: 1, scope: !57)
!285 = !DILocation(line: 177, column: 33, scope: !70)
!286 = !DILocation(line: 177, column: 43, scope: !70)
!287 = !DILocation(line: 177, column: 60, scope: !70)
!288 = !DILocation(line: 177, column: 76, scope: !70)
!289 = !DILocation(line: 181, column: 3, scope: !70)
!290 = !DILocation(line: 181, column: 8, scope: !70)
!291 = !DILocation(line: 183, column: 7, scope: !70)
!292 = !DILocation(line: 179, column: 10, scope: !70)
!293 = !DILocation(line: 179, column: 7, scope: !70)
!294 = !DILocation(line: 184, column: 18, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 184, column: 3)
!296 = distinct !DILexicalBlock(scope: !70, file: !1, line: 184, column: 3)
!297 = !DILocation(line: 184, column: 3, scope: !296)
!298 = !DILocation(line: 184, column: 46, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !1, line: 184, column: 31)
!300 = !DILocation(line: 184, column: 40, scope: !299)
!301 = !DILocation(line: 184, column: 33, scope: !299)
!302 = !DILocation(line: 184, column: 44, scope: !299)
!303 = !DILocation(line: 185, column: 3, scope: !70)
!304 = !DILocation(line: 185, column: 12, scope: !70)
!305 = !DILocation(line: 180, column: 7, scope: !70)
!306 = !DILocation(line: 188, column: 21, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 188, column: 3)
!308 = distinct !DILexicalBlock(scope: !70, file: !1, line: 188, column: 3)
!309 = !DILocation(line: 188, column: 19, scope: !307)
!310 = !DILocation(line: 188, column: 3, scope: !308)
!311 = !DILocation(line: 188, column: 53, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !1, line: 188, column: 44)
!313 = distinct !DILexicalBlock(scope: !307, file: !1, line: 188, column: 37)
!314 = !DILocation(line: 188, column: 45, scope: !312)
!315 = !DILocation(line: 188, column: 44, scope: !313)
!316 = !DILocation(line: 189, column: 14, scope: !317)
!317 = distinct !DILexicalBlock(scope: !70, file: !1, line: 189, column: 8)
!318 = !DILocation(line: 189, column: 8, scope: !70)
!319 = !DILocation(line: 190, column: 13, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !1, line: 189, column: 22)
!321 = !DILocation(line: 190, column: 5, scope: !320)
!322 = !DILocation(line: 191, column: 13, scope: !320)
!323 = !DILocation(line: 192, column: 5, scope: !320)
!324 = !DILocation(line: 195, column: 8, scope: !325)
!325 = distinct !DILexicalBlock(scope: !70, file: !1, line: 195, column: 8)
!326 = !DILocation(line: 195, column: 25, scope: !325)
!327 = !DILocation(line: 195, column: 8, scope: !70)
!328 = !DILocation(line: 200, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !70, file: !1, line: 200, column: 8)
!330 = !DILocation(line: 200, column: 39, scope: !329)
!331 = !DILocation(line: 196, column: 42, scope: !332)
!332 = distinct !DILexicalBlock(scope: !325, file: !1, line: 195, column: 35)
!333 = !DILocation(line: 196, column: 34, scope: !332)
!334 = !DILocation(line: 196, column: 23, scope: !332)
!335 = !DILocation(line: 197, column: 6, scope: !332)
!336 = !DILocation(line: 197, column: 22, scope: !332)
!337 = !DILocation(line: 198, column: 3, scope: !332)
!338 = !DILocation(line: 200, column: 26, scope: !329)
!339 = !DILocation(line: 200, column: 24, scope: !329)
!340 = !DILocation(line: 200, column: 37, scope: !329)
!341 = !DILocation(line: 200, column: 8, scope: !70)
!342 = !DILocation(line: 201, column: 13, scope: !343)
!343 = distinct !DILexicalBlock(scope: !329, file: !1, line: 200, column: 60)
!344 = !DILocation(line: 201, column: 5, scope: !343)
!345 = !DILocation(line: 203, column: 13, scope: !343)
!346 = !DILocation(line: 204, column: 5, scope: !343)
!347 = !DILocation(line: 210, column: 3, scope: !70)
!348 = !DILocation(line: 212, column: 22, scope: !70)
!349 = !DILocation(line: 212, column: 19, scope: !70)
!350 = !DILocation(line: 213, column: 11, scope: !70)
!351 = !DILocation(line: 214, column: 3, scope: !70)
!352 = !DILocation(line: 215, column: 1, scope: !70)
!353 = !DILocation(line: 218, column: 37, scope: !82)
!354 = !DILocation(line: 218, column: 47, scope: !82)
!355 = !DILocation(line: 218, column: 64, scope: !82)
!356 = !DILocation(line: 218, column: 78, scope: !82)
!357 = !DILocation(line: 218, column: 92, scope: !82)
!358 = !DILocation(line: 224, column: 8, scope: !359)
!359 = distinct !DILexicalBlock(scope: !82, file: !1, line: 224, column: 8)
!360 = !DILocation(line: 224, column: 14, scope: !359)
!361 = !DILocation(line: 224, column: 12, scope: !359)
!362 = !DILocation(line: 224, column: 8, scope: !82)
!363 = !DILocation(line: 225, column: 10, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !1, line: 225, column: 10)
!365 = distinct !DILexicalBlock(scope: !359, file: !1, line: 224, column: 24)
!366 = !DILocation(line: 225, column: 26, scope: !364)
!367 = !DILocation(line: 225, column: 24, scope: !364)
!368 = !DILocation(line: 225, column: 10, scope: !365)
!369 = !DILocation(line: 226, column: 15, scope: !370)
!370 = distinct !DILexicalBlock(scope: !364, file: !1, line: 225, column: 36)
!371 = !DILocation(line: 226, column: 7, scope: !370)
!372 = !DILocation(line: 228, column: 27, scope: !365)
!373 = !DILocation(line: 228, column: 18, scope: !365)
!374 = !DILocation(line: 228, column: 35, scope: !365)
!375 = !DILocation(line: 227, column: 5, scope: !370)
!376 = !DILocation(line: 228, column: 32, scope: !365)
!377 = !DILocation(line: 228, column: 16, scope: !365)
!378 = !DILocation(line: 228, column: 14, scope: !365)
!379 = !DILocation(line: 229, column: 41, scope: !365)
!380 = !DILocation(line: 229, column: 32, scope: !365)
!381 = !DILocation(line: 229, column: 24, scope: !365)
!382 = !DILocation(line: 229, column: 18, scope: !365)
!383 = !DILocation(line: 229, column: 16, scope: !365)
!384 = !DILocation(line: 220, column: 7, scope: !82)
!385 = !DILocation(line: 230, column: 21, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 230, column: 5)
!387 = distinct !DILexicalBlock(scope: !365, file: !1, line: 230, column: 5)
!388 = !DILocation(line: 230, column: 5, scope: !387)
!389 = !DILocation(line: 231, column: 23, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !1, line: 231, column: 5)
!391 = distinct !DILexicalBlock(scope: !365, file: !1, line: 231, column: 5)
!392 = !DILocation(line: 231, column: 21, scope: !390)
!393 = !DILocation(line: 231, column: 5, scope: !391)
!394 = !DILocation(line: 230, column: 71, scope: !386)
!395 = !DILocation(line: 230, column: 65, scope: !386)
!396 = !DILocation(line: 230, column: 56, scope: !386)
!397 = !DILocation(line: 230, column: 43, scope: !386)
!398 = !DILocation(line: 230, column: 54, scope: !386)
!399 = !DILocation(line: 230, column: 24, scope: !386)
!400 = !DILocation(line: 231, column: 60, scope: !390)
!401 = !DILocation(line: 231, column: 50, scope: !390)
!402 = !DILocation(line: 231, column: 41, scope: !390)
!403 = !DILocation(line: 231, column: 48, scope: !390)
!404 = !DILocation(line: 232, column: 20, scope: !405)
!405 = distinct !DILexicalBlock(scope: !365, file: !1, line: 232, column: 10)
!406 = !DILocation(line: 232, column: 10, scope: !405)
!407 = !DILocation(line: 232, column: 25, scope: !405)
!408 = !DILocation(line: 232, column: 10, scope: !365)
!409 = !DILocation(line: 232, column: 35, scope: !405)
!410 = !DILocation(line: 233, column: 15, scope: !365)
!411 = !DILocation(line: 233, column: 5, scope: !365)
!412 = !DILocation(line: 233, column: 20, scope: !365)
!413 = !DILocation(line: 234, column: 5, scope: !365)
!414 = !DILocation(line: 234, column: 22, scope: !365)
!415 = !DILocation(line: 235, column: 8, scope: !365)
!416 = !DILocation(line: 237, column: 3, scope: !365)
!417 = !DILocation(line: 239, column: 13, scope: !418)
!418 = distinct !DILexicalBlock(scope: !359, file: !1, line: 238, column: 8)
!419 = !DILocation(line: 236, column: 13, scope: !365)
!420 = !DILocation(line: 243, column: 1, scope: !82)
