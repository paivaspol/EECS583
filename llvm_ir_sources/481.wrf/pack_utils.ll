; ModuleID = '../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@frst = internal unnamed_addr global i1 false
@fld_cache = internal unnamed_addr global [2000 x i8*] zeroinitializer, align 16
@numflds = internal unnamed_addr global i32 0, align 4
@fld_name = internal global [2000 x [256 x i8]] zeroinitializer, align 16
@fld_curs = internal unnamed_addr global [2000 x i32] zeroinitializer, align 16
@fld_bufsize = internal unnamed_addr global [2000 x i32] zeroinitializer, align 16
@fld = internal unnamed_addr global i32 0, align 4
@stderr = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [88 x i8] c"frame/pack_utils.c: field (%s) not found; was not set up with add_to_bufsize_for_field\0A\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"frame/pack_utils.c: %s would overwrite %d + %d  > %d [%d]\0A\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"retrieve: fld_curs[%d] (%d) > *insize (%d)\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @int_pack_data_(i8* nocapture %buf, i32* nocapture %ninbytes, i8* nocapture %obuf, i32* nocapture %cursor) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !13), !dbg !108
  tail call void @llvm.dbg.value(metadata !{i32* %ninbytes}, i64 0, metadata !14), !dbg !108
  tail call void @llvm.dbg.value(metadata !{i8* %obuf}, i64 0, metadata !15), !dbg !108
  tail call void @llvm.dbg.value(metadata !{i32* %cursor}, i64 0, metadata !16), !dbg !108
  %0 = load i32* %cursor, align 4, !dbg !109, !tbaa !110
  %sub = add i32 %0, -1, !dbg !109
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !18), !dbg !109
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !17), !dbg !113
  %1 = load i32* %ninbytes, align 4, !dbg !113, !tbaa !110
  %cmp8 = icmp sgt i32 %1, 0, !dbg !113
  br i1 %cmp8, label %for.body.lr.ph, label %for.end, !dbg !113

for.body.lr.ph:                                   ; preds = %entry
  %2 = sext i32 %sub to i64
  br label %for.body, !dbg !113

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv12 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next13, %for.body ], !dbg !113
  %indvars.iv = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %lcurs.010 = phi i32 [ %sub, %for.body.lr.ph ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds i8* %buf, i64 %indvars.iv12, !dbg !115
  %3 = load i8* %arrayidx, align 1, !dbg !115, !tbaa !111
  %inc = add nsw i32 %lcurs.010, 1, !dbg !115
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !18), !dbg !115
  %arrayidx2 = getelementptr inbounds i8* %obuf, i64 %indvars.iv, !dbg !115
  store i8 %3, i8* %arrayidx2, align 1, !dbg !115, !tbaa !111
  %indvars.iv.next13 = add i64 %indvars.iv12, 1, !dbg !113
  %4 = load i32* %ninbytes, align 4, !dbg !113, !tbaa !110
  %5 = trunc i64 %indvars.iv.next13 to i32, !dbg !113
  %cmp = icmp slt i32 %5, %4, !dbg !113
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !113
  br i1 %cmp, label %for.body, label %for.end, !dbg !113

for.end:                                          ; preds = %for.body, %entry
  %lcurs.0.lcssa = phi i32 [ %sub, %entry ], [ %inc, %for.body ]
  %add = add nsw i32 %lcurs.0.lcssa, 1, !dbg !117
  store i32 %add, i32* %cursor, align 4, !dbg !117, !tbaa !110
  ret i32 undef, !dbg !118
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define i32 @int_gen_ti_header_c_(i8* nocapture %hdrbuf, i32* nocapture %hdrbufsize, i32* nocapture %itypesize, i32* nocapture %typesize, i32* nocapture %DataHandle, i8* nocapture %Data, i32* nocapture %Count, i32* nocapture %code) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %hdrbuf}, i64 0, metadata !25), !dbg !119
  tail call void @llvm.dbg.value(metadata !{i32* %hdrbufsize}, i64 0, metadata !26), !dbg !119
  tail call void @llvm.dbg.value(metadata !{i32* %itypesize}, i64 0, metadata !27), !dbg !120
  tail call void @llvm.dbg.value(metadata !{i32* %typesize}, i64 0, metadata !28), !dbg !120
  tail call void @llvm.dbg.value(metadata !{i32* %DataHandle}, i64 0, metadata !29), !dbg !121
  tail call void @llvm.dbg.value(metadata !{i8* %Data}, i64 0, metadata !30), !dbg !121
  tail call void @llvm.dbg.value(metadata !{i32* %Count}, i64 0, metadata !31), !dbg !122
  tail call void @llvm.dbg.value(metadata !{i32* %code}, i64 0, metadata !32), !dbg !122
  tail call void @llvm.dbg.value(metadata !{i8* %hdrbuf}, i64 0, metadata !34), !dbg !123
  %add.ptr = getelementptr inbounds i8* %hdrbuf, i64 4, !dbg !124
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !34), !dbg !124
  %0 = bitcast i8* %add.ptr to i32*, !dbg !125
  %1 = load i32* %code, align 1, !dbg !125
  store i32 %1, i32* %0, align 1, !dbg !125
  %add.ptr1 = getelementptr inbounds i8* %hdrbuf, i64 8, !dbg !125
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr1}, i64 0, metadata !34), !dbg !125
  %2 = bitcast i8* %add.ptr1 to i32*, !dbg !126
  %3 = load i32* %DataHandle, align 1, !dbg !126
  store i32 %3, i32* %2, align 1, !dbg !126
  %add.ptr2 = getelementptr inbounds i8* %hdrbuf, i64 12, !dbg !126
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr2}, i64 0, metadata !34), !dbg !126
  %4 = bitcast i8* %add.ptr2 to i32*, !dbg !127
  %5 = load i32* %typesize, align 1, !dbg !127
  store i32 %5, i32* %4, align 1, !dbg !127
  %add.ptr3 = getelementptr inbounds i8* %hdrbuf, i64 16, !dbg !127
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr3}, i64 0, metadata !34), !dbg !127
  %6 = bitcast i8* %add.ptr3 to i32*, !dbg !128
  %7 = load i32* %Count, align 1, !dbg !128
  store i32 %7, i32* %6, align 1, !dbg !128
  %add.ptr4 = getelementptr inbounds i8* %hdrbuf, i64 20, !dbg !128
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr4}, i64 0, metadata !34), !dbg !128
  %8 = load i32* %Count, align 4, !dbg !129, !tbaa !110
  %9 = load i32* %typesize, align 4, !dbg !129, !tbaa !110
  %mul = mul nsw i32 %9, %8, !dbg !129
  %conv = sext i32 %mul to i64, !dbg !129
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr4, i8* %Data, i64 %conv, i32 1, i1 false), !dbg !129
  %10 = load i32* %Count, align 4, !dbg !129, !tbaa !110
  %11 = load i32* %typesize, align 4, !dbg !129, !tbaa !110
  %mul5 = mul nsw i32 %11, %10, !dbg !129
  %add.ptr6.offs = add i32 %mul5, 20, !dbg !130
  store i32 %add.ptr6.offs, i32* %hdrbufsize, align 4, !dbg !130, !tbaa !110
  %12 = bitcast i8* %hdrbuf to i32*, !dbg !131
  store i32 %add.ptr6.offs, i32* %12, align 1, !dbg !131
  ret i32 0, !dbg !132
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define i32 @int_get_ti_header_c_(i8* %hdrbuf, i32* nocapture %hdrbufsize, i32* nocapture %n, i32* nocapture %itypesize, i32* nocapture %typesize, i32* nocapture %DataHandle, i8* nocapture %Data, i32* nocapture %Count, i32* nocapture %code) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %hdrbuf}, i64 0, metadata !39), !dbg !133
  tail call void @llvm.dbg.value(metadata !{i32* %hdrbufsize}, i64 0, metadata !40), !dbg !133
  tail call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !41), !dbg !133
  tail call void @llvm.dbg.value(metadata !{i32* %itypesize}, i64 0, metadata !42), !dbg !134
  tail call void @llvm.dbg.value(metadata !{i32* %typesize}, i64 0, metadata !43), !dbg !134
  tail call void @llvm.dbg.value(metadata !{i32* %DataHandle}, i64 0, metadata !44), !dbg !135
  tail call void @llvm.dbg.value(metadata !{i8* %Data}, i64 0, metadata !45), !dbg !135
  tail call void @llvm.dbg.value(metadata !{i32* %Count}, i64 0, metadata !46), !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32* %code}, i64 0, metadata !47), !dbg !136
  tail call void @llvm.dbg.value(metadata !{i8* %hdrbuf}, i64 0, metadata !49), !dbg !137
  %0 = bitcast i8* %hdrbuf to i32*, !dbg !138
  %1 = load i32* %0, align 1, !dbg !138
  store i32 %1, i32* %hdrbufsize, align 1, !dbg !138
  %add.ptr = getelementptr inbounds i8* %hdrbuf, i64 4, !dbg !138
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !49), !dbg !138
  %2 = bitcast i8* %add.ptr to i32*, !dbg !139
  %3 = load i32* %2, align 1, !dbg !139
  store i32 %3, i32* %code, align 1, !dbg !139
  %add.ptr1 = getelementptr inbounds i8* %hdrbuf, i64 8, !dbg !139
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr1}, i64 0, metadata !49), !dbg !139
  %4 = bitcast i8* %add.ptr1 to i32*, !dbg !140
  %5 = load i32* %4, align 1, !dbg !140
  store i32 %5, i32* %DataHandle, align 1, !dbg !140
  %add.ptr2 = getelementptr inbounds i8* %hdrbuf, i64 12, !dbg !140
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr2}, i64 0, metadata !49), !dbg !140
  %6 = bitcast i8* %add.ptr2 to i32*, !dbg !141
  %7 = load i32* %6, align 1, !dbg !141
  store i32 %7, i32* %typesize, align 1, !dbg !141
  %add.ptr3 = getelementptr inbounds i8* %hdrbuf, i64 16, !dbg !141
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr3}, i64 0, metadata !49), !dbg !141
  %8 = bitcast i8* %add.ptr3 to i32*, !dbg !142
  %9 = load i32* %8, align 1, !dbg !142
  store i32 %9, i32* %Count, align 1, !dbg !142
  %add.ptr4 = getelementptr inbounds i8* %hdrbuf, i64 20, !dbg !142
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr4}, i64 0, metadata !49), !dbg !142
  %10 = load i32* %typesize, align 4, !dbg !143, !tbaa !110
  %mul = mul nsw i32 %10, %9, !dbg !143
  %cmp = icmp sgt i32 %mul, 0, !dbg !143
  br i1 %cmp, label %if.then, label %if.end, !dbg !143

if.then:                                          ; preds = %entry
  %conv = sext i32 %mul to i64, !dbg !144
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %Data, i8* %add.ptr4, i64 %conv, i32 1, i1 false), !dbg !144
  %11 = load i32* %Count, align 4, !dbg !144, !tbaa !110
  %12 = load i32* %typesize, align 4, !dbg !144, !tbaa !110
  %mul6 = mul nsw i32 %12, %11, !dbg !144
  %idx.ext = sext i32 %mul6 to i64, !dbg !144
  %add.ptr4.sum = add i64 %idx.ext, 20, !dbg !144
  %add.ptr7 = getelementptr inbounds i8* %hdrbuf, i64 %add.ptr4.sum, !dbg !144
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr7}, i64 0, metadata !49), !dbg !144
  br label %if.end, !dbg !146

if.end:                                           ; preds = %if.then, %entry
  %p.0 = phi i8* [ %add.ptr7, %if.then ], [ %add.ptr4, %entry ]
  %sub.ptr.lhs.cast = ptrtoint i8* %p.0 to i64, !dbg !147
  %sub.ptr.rhs.cast = ptrtoint i8* %hdrbuf to i64, !dbg !147
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !147
  %conv8 = trunc i64 %sub.ptr.sub to i32, !dbg !147
  store i32 %conv8, i32* %n, align 4, !dbg !147, !tbaa !110
  ret i32 0, !dbg !148
}

; Function Attrs: nounwind optsize uwtable
define i32 @init_store_piece_of_field_() #0 {
entry:
  %.b = load i1* @frst, align 1
  br i1 %.b, label %if.end, label %for.cond.preheader, !dbg !149

for.cond.preheader:                               ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2000 x i8*]* @fld_cache to i8*), i8 0, i64 16000, i32 16, i1 false), !dbg !150
  store i1 true, i1* @frst, align 1
  br label %if.end, !dbg !154

if.end:                                           ; preds = %entry, %for.cond.preheader
  store i32 0, i32* @numflds, align 4, !dbg !155, !tbaa !110
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !54), !dbg !156
  br label %for.body3, !dbg !156

for.body3:                                        ; preds = %if.end12, %if.end
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %if.end12 ]
  %arraydecay = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %indvars.iv, i64 0, !dbg !158
  store i8 0, i8* %arraydecay, align 16, !dbg !158
  %arrayidx7 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %indvars.iv, !dbg !160
  %0 = load i8** %arrayidx7, align 8, !dbg !160, !tbaa !161
  %cmp8 = icmp eq i8* %0, null, !dbg !160
  br i1 %cmp8, label %if.end12, label %if.then9, !dbg !160

if.then9:                                         ; preds = %for.body3
  tail call void @free(i8* %0) #5, !dbg !160
  br label %if.end12, !dbg !160

if.end12:                                         ; preds = %for.body3, %if.then9
  store i8* null, i8** %arrayidx7, align 8, !dbg !162, !tbaa !161
  %arrayidx16 = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %indvars.iv, !dbg !163
  store i32 0, i32* %arrayidx16, align 4, !dbg !163, !tbaa !110
  %arrayidx18 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %indvars.iv, !dbg !164
  store i32 0, i32* %arrayidx18, align 4, !dbg !164, !tbaa !110
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !156
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !156
  %exitcond = icmp eq i32 %lftr.wideiv, 2000, !dbg !156
  br i1 %exitcond, label %for.end21, label %for.body3, !dbg !156

for.end21:                                        ; preds = %if.end12
  ret i32 0, !dbg !165
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @init_retrieve_pieces_of_field_() #0 {
entry:
  store i32 0, i32* @fld, align 4, !dbg !166, !tbaa !110
  ret i32 0, !dbg !167
}

; Function Attrs: nounwind optsize uwtable
define i32 @add_to_bufsize_for_field_c_(i32* nocapture %varname, i32* nocapture %chunksize) #0 {
entry:
  %vname = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32* %varname}, i64 0, metadata !60), !dbg !168
  call void @llvm.dbg.value(metadata !{i32* %chunksize}, i64 0, metadata !61), !dbg !168
  %0 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 0, !dbg !169
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !169
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %vname}, metadata !65), !dbg !169
  %1 = load i32* %varname, align 4, !dbg !170, !tbaa !110
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !63), !dbg !170
  call void @llvm.dbg.value(metadata !171, i64 0, metadata !62), !dbg !172
  %cmp59 = icmp slt i32 %1, 1, !dbg !172
  br i1 %cmp59, label %for.end, label %for.body.lr.ph, !dbg !172

for.body.lr.ph:                                   ; preds = %entry
  %2 = add i32 %1, 1, !dbg !172
  br label %for.body, !dbg !172

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.body ], [ 1, %for.body.lr.ph ]
  %arrayidx1 = getelementptr inbounds i32* %varname, i64 %indvars.iv62, !dbg !174
  %3 = load i32* %arrayidx1, align 4, !dbg !174, !tbaa !110
  %conv = trunc i32 %3 to i8, !dbg !174
  %4 = add nsw i64 %indvars.iv62, -1, !dbg !174
  %arrayidx3 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %4, !dbg !174
  store i8 %conv, i8* %arrayidx3, align 1, !dbg !174, !tbaa !111
  %indvars.iv.next63 = add i64 %indvars.iv62, 1, !dbg !172
  %lftr.wideiv = trunc i64 %indvars.iv.next63 to i32, !dbg !172
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !172
  br i1 %exitcond, label %for.end, label %for.body, !dbg !172

for.end:                                          ; preds = %for.body, %entry
  %idxprom4 = sext i32 %1 to i64, !dbg !176
  %arrayidx5 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %idxprom4, !dbg !176
  store i8 0, i8* %arrayidx5, align 1, !dbg !176, !tbaa !111
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !64), !dbg !178
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !62), !dbg !179
  %5 = load i32* @numflds, align 4, !dbg !179, !tbaa !110
  %cmp757 = icmp sgt i32 %5, 0, !dbg !179
  br i1 %cmp757, label %for.body9, label %if.then18, !dbg !179

for.cond6:                                        ; preds = %for.body9
  %inc14 = add nsw i32 %i.158, 1, !dbg !179
  %6 = trunc i64 %indvars.iv.next to i32, !dbg !179
  %cmp7 = icmp slt i32 %6, %5, !dbg !179
  br i1 %cmp7, label %for.body9, label %if.then18, !dbg !179

for.body9:                                        ; preds = %for.end, %for.cond6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond6 ], [ 0, %for.end ]
  %i.158 = phi i32 [ %inc14, %for.cond6 ], [ 0, %for.end ]
  %arraydecay = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %indvars.iv, i64 0, !dbg !181
  %call = call i32 @strcmp(i8* %arraydecay, i8* %0) #6, !dbg !181
  %tobool = icmp eq i32 %call, 0, !dbg !181
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !179
  call void @llvm.dbg.value(metadata !{i32 %inc14}, i64 0, metadata !62), !dbg !179
  br i1 %tobool, label %for.end15, label %for.cond6, !dbg !181

for.end15:                                        ; preds = %for.body9
  %cmp16 = icmp eq i32 %i.158, -1, !dbg !183
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !183

if.then18:                                        ; preds = %for.end, %for.cond6, %for.end15
  %inc19 = add nsw i32 %5, 1, !dbg !184
  store i32 %inc19, i32* @numflds, align 4, !dbg !184, !tbaa !110
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !64), !dbg !184
  %idxprom20 = sext i32 %5 to i64, !dbg !186
  %arraydecay22 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %idxprom20, i64 0, !dbg !186
  %call24 = call i8* @strcpy(i8* %arraydecay22, i8* %0) #5, !dbg !186
  %7 = load i32* %chunksize, align 4, !dbg !187, !tbaa !110
  %arrayidx26 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %idxprom20, !dbg !187
  store i32 %7, i32* %arrayidx26, align 4, !dbg !187, !tbaa !110
  br label %if.end29, !dbg !188

if.else:                                          ; preds = %for.end15
  %8 = load i32* %chunksize, align 4, !dbg !189, !tbaa !110
  %idxprom27 = sext i32 %i.158 to i64, !dbg !189
  %arrayidx28 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %idxprom27, !dbg !189
  %9 = load i32* %arrayidx28, align 4, !dbg !189, !tbaa !110
  %add = add nsw i32 %9, %8, !dbg !189
  store i32 %add, i32* %arrayidx28, align 4, !dbg !189, !tbaa !110
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then18
  %found.1 = phi i32 [ %5, %if.then18 ], [ %i.158, %if.else ]
  %idxprom30 = sext i32 %found.1 to i64, !dbg !191
  %arrayidx31 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %idxprom30, !dbg !191
  %10 = load i8** %arrayidx31, align 8, !dbg !191, !tbaa !161
  %cmp32 = icmp eq i8* %10, null, !dbg !191
  br i1 %cmp32, label %if.end37, label %if.then34, !dbg !191

if.then34:                                        ; preds = %if.end29
  call void @free(i8* %10) #5, !dbg !192
  br label %if.end37, !dbg !192

if.end37:                                         ; preds = %if.end29, %if.then34
  store i8* null, i8** %arrayidx31, align 8, !dbg !194, !tbaa !161
  call void @llvm.lifetime.end(i64 256, i8* %0) #2, !dbg !195
  ret i32 undef, !dbg !195
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @store_piece_of_field_c_(i8* nocapture %buf, i32* nocapture %varname, i32* nocapture %chunksize, i32* nocapture %retval1) #0 {
entry:
  %vname = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !73), !dbg !196
  call void @llvm.dbg.value(metadata !{i32* %varname}, i64 0, metadata !74), !dbg !196
  call void @llvm.dbg.value(metadata !{i32* %chunksize}, i64 0, metadata !75), !dbg !196
  call void @llvm.dbg.value(metadata !{i32* %retval1}, i64 0, metadata !76), !dbg !196
  %0 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 0, !dbg !197
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !197
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %vname}, metadata !80), !dbg !197
  %1 = load i32* %varname, align 4, !dbg !198, !tbaa !110
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !78), !dbg !198
  call void @llvm.dbg.value(metadata !171, i64 0, metadata !77), !dbg !199
  %cmp88 = icmp slt i32 %1, 1, !dbg !199
  br i1 %cmp88, label %for.end, label %for.body.lr.ph, !dbg !199

for.body.lr.ph:                                   ; preds = %entry
  %2 = add i32 %1, 1, !dbg !199
  br label %for.body, !dbg !199

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.body ], [ 1, %for.body.lr.ph ]
  %arrayidx2 = getelementptr inbounds i32* %varname, i64 %indvars.iv91, !dbg !201
  %3 = load i32* %arrayidx2, align 4, !dbg !201, !tbaa !110
  %conv = trunc i32 %3 to i8, !dbg !201
  %4 = add nsw i64 %indvars.iv91, -1, !dbg !201
  %arrayidx4 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %4, !dbg !201
  store i8 %conv, i8* %arrayidx4, align 1, !dbg !201, !tbaa !111
  %indvars.iv.next92 = add i64 %indvars.iv91, 1, !dbg !199
  %lftr.wideiv = trunc i64 %indvars.iv.next92 to i32, !dbg !199
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !199
  br i1 %exitcond, label %for.end, label %for.body, !dbg !199

for.end:                                          ; preds = %for.body, %entry
  %idxprom5 = sext i32 %1 to i64, !dbg !203
  %arrayidx6 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %idxprom5, !dbg !203
  store i8 0, i8* %arrayidx6, align 1, !dbg !203, !tbaa !111
  call void @llvm.dbg.value(metadata !177, i64 0, metadata !79), !dbg !204
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !77), !dbg !205
  %5 = load i32* @numflds, align 4, !dbg !205, !tbaa !110
  %cmp886 = icmp sgt i32 %5, 0, !dbg !205
  br i1 %cmp886, label %for.body10, label %if.then19, !dbg !205

for.cond7:                                        ; preds = %for.body10
  %inc15 = add nsw i32 %i.187, 1, !dbg !205
  %6 = trunc i64 %indvars.iv.next to i32, !dbg !205
  %cmp8 = icmp slt i32 %6, %5, !dbg !205
  br i1 %cmp8, label %for.body10, label %if.then19, !dbg !205

for.body10:                                       ; preds = %for.end, %for.cond7
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond7 ], [ 0, %for.end ]
  %i.187 = phi i32 [ %inc15, %for.cond7 ], [ 0, %for.end ]
  %arraydecay = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %indvars.iv, i64 0, !dbg !207
  %call = call i32 @strcmp(i8* %arraydecay, i8* %0) #6, !dbg !207
  %tobool = icmp eq i32 %call, 0, !dbg !207
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !205
  call void @llvm.dbg.value(metadata !{i32 %inc15}, i64 0, metadata !77), !dbg !205
  br i1 %tobool, label %for.end16, label %for.cond7, !dbg !207

for.end16:                                        ; preds = %for.body10
  %cmp17 = icmp eq i32 %i.187, -1, !dbg !209
  br i1 %cmp17, label %if.then19, label %if.end22, !dbg !209

if.then19:                                        ; preds = %for.end, %for.cond7, %for.end16
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !210, !tbaa !161
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([88 x i8]* @.str1, i64 0, i64 0), i8* %0) #5, !dbg !210
  store i32 1, i32* %retval1, align 4, !dbg !212, !tbaa !110
  br label %cleanup, !dbg !213

if.end22:                                         ; preds = %for.end16
  %idxprom23 = sext i32 %i.187 to i64, !dbg !214
  %arrayidx24 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %idxprom23, !dbg !214
  %8 = load i8** %arrayidx24, align 8, !dbg !214, !tbaa !161
  %cmp25 = icmp eq i8* %8, null, !dbg !214
  br i1 %cmp25, label %if.then27, label %if.end22.if.end36_crit_edge, !dbg !214

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  %arrayidx38.pre = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %idxprom23, !dbg !215
  %arrayidx40.pre = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %idxprom23, !dbg !215
  br label %if.end36, !dbg !214

if.then27:                                        ; preds = %if.end22
  %arrayidx29 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %idxprom23, !dbg !216
  %9 = load i32* %arrayidx29, align 4, !dbg !216, !tbaa !110
  %conv30 = sext i32 %9 to i64, !dbg !216
  %call31 = call noalias i8* @malloc(i64 %conv30) #5, !dbg !216
  store i8* %call31, i8** %arrayidx24, align 8, !dbg !216, !tbaa !161
  %arrayidx35 = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %idxprom23, !dbg !218
  store i32 0, i32* %arrayidx35, align 4, !dbg !218, !tbaa !110
  br label %if.end36, !dbg !219

if.end36:                                         ; preds = %if.end22.if.end36_crit_edge, %if.then27
  %arrayidx40.pre-phi = phi i32* [ %arrayidx40.pre, %if.end22.if.end36_crit_edge ], [ %arrayidx29, %if.then27 ], !dbg !215
  %arrayidx38.pre-phi = phi i32* [ %arrayidx38.pre, %if.end22.if.end36_crit_edge ], [ %arrayidx35, %if.then27 ], !dbg !215
  %10 = phi i8* [ %8, %if.end22.if.end36_crit_edge ], [ %call31, %if.then27 ]
  %11 = load i32* %arrayidx38.pre-phi, align 4, !dbg !215, !tbaa !110
  %12 = load i32* %chunksize, align 4, !dbg !215, !tbaa !110
  %add = add nsw i32 %12, %11, !dbg !215
  %13 = load i32* %arrayidx40.pre-phi, align 4, !dbg !215, !tbaa !110
  %cmp41 = icmp sgt i32 %add, %13, !dbg !215
  br i1 %cmp41, label %if.then43, label %if.end50, !dbg !215

if.then43:                                        ; preds = %if.end36
  %14 = load %struct._IO_FILE** @stderr, align 8, !dbg !220, !tbaa !161
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* %0, i32 %11, i32 %12, i32 %13, i32 %i.187) #5, !dbg !220
  store i32 1, i32* %retval1, align 4, !dbg !222, !tbaa !110
  br label %cleanup, !dbg !223

if.end50:                                         ; preds = %if.end36
  %idx.ext = sext i32 %11 to i64, !dbg !224
  %add.ptr = getelementptr inbounds i8* %10, i64 %idx.ext, !dbg !224
  %conv55 = sext i32 %12 to i64, !dbg !224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %buf, i64 %conv55, i32 1, i1 false), !dbg !224
  %15 = load i32* %chunksize, align 4, !dbg !225, !tbaa !110
  %16 = load i32* %arrayidx38.pre-phi, align 4, !dbg !225, !tbaa !110
  %add58 = add nsw i32 %16, %15, !dbg !225
  store i32 %add58, i32* %arrayidx38.pre-phi, align 4, !dbg !225, !tbaa !110
  store i32 0, i32* %retval1, align 4, !dbg !226, !tbaa !110
  br label %cleanup, !dbg !227

cleanup:                                          ; preds = %if.end50, %if.then43, %if.then19
  call void @llvm.lifetime.end(i64 256, i8* %0) #2, !dbg !227
  ret i32 0, !dbg !228
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize uwtable
define i32 @retrieve_pieces_of_field_c_(i8* nocapture %buf, i32* nocapture %varname, i32* nocapture %insize, i32* nocapture %outsize, i32* nocapture %retval1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !85), !dbg !229
  tail call void @llvm.dbg.value(metadata !{i32* %varname}, i64 0, metadata !86), !dbg !229
  tail call void @llvm.dbg.value(metadata !{i32* %insize}, i64 0, metadata !87), !dbg !229
  tail call void @llvm.dbg.value(metadata !{i32* %outsize}, i64 0, metadata !88), !dbg !229
  tail call void @llvm.dbg.value(metadata !{i32* %retval1}, i64 0, metadata !89), !dbg !229
  %0 = load i32* @fld, align 4, !dbg !230, !tbaa !110
  %1 = load i32* @numflds, align 4, !dbg !230, !tbaa !110
  %cmp = icmp slt i32 %0, %1, !dbg !230
  br i1 %cmp, label %if.then, label %if.else, !dbg !230

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %0 to i64, !dbg !231
  %arrayidx = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %idxprom, !dbg !231
  %2 = load i32* %arrayidx, align 4, !dbg !231, !tbaa !110
  %3 = load i32* %insize, align 4, !dbg !231, !tbaa !110
  %cmp2 = icmp sgt i32 %2, %3, !dbg !231
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !231

if.then3:                                         ; preds = %if.then
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !233, !tbaa !161
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), i32 %0, i32 %2, i32 %3) #5, !dbg !233
  %.pre = load i32* @fld, align 4, !dbg !235, !tbaa !110
  %idxprom6.phi.trans.insert = sext i32 %.pre to i64
  %arrayidx7.phi.trans.insert = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %idxprom6.phi.trans.insert
  %.pre74 = load i32* %arrayidx7.phi.trans.insert, align 4, !dbg !235, !tbaa !110
  %.pre75 = load i32* %insize, align 4, !dbg !235, !tbaa !110
  br label %if.end, !dbg !236

if.end:                                           ; preds = %if.then3, %if.then
  %5 = phi i32 [ %.pre75, %if.then3 ], [ %3, %if.then ]
  %6 = phi i32 [ %.pre74, %if.then3 ], [ %2, %if.then ]
  %cmp8 = icmp sgt i32 %6, %5, !dbg !235
  %. = select i1 %cmp8, i32 %5, i32 %6, !dbg !235
  store i32 %., i32* %outsize, align 4, !dbg !235, !tbaa !110
  %7 = load i32* @fld, align 4, !dbg !237, !tbaa !110
  %idxprom11 = sext i32 %7 to i64, !dbg !237
  %arraydecay = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %idxprom11, i64 0, !dbg !237
  %call13 = tail call i64 @strlen(i8* %arraydecay) #6, !dbg !237
  %conv = trunc i64 %call13 to i32, !dbg !237
  store i32 %conv, i32* %varname, align 4, !dbg !237, !tbaa !110
  tail call void @llvm.dbg.value(metadata !171, i64 0, metadata !90), !dbg !238
  %cmp1669 = icmp slt i32 %conv, 1, !dbg !238
  br i1 %cmp1669, label %for.cond25.preheader, label %for.body, !dbg !238

for.cond25.preheader:                             ; preds = %for.body, %if.end
  %8 = load i32* %outsize, align 4, !dbg !240, !tbaa !110
  %cmp2667 = icmp sgt i32 %8, 0, !dbg !240
  br i1 %cmp2667, label %for.body28, label %for.end37, !dbg !240

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.body ], [ 1, %if.end ]
  %9 = add nsw i64 %indvars.iv71, -1, !dbg !238
  %10 = load i32* @fld, align 4, !dbg !238, !tbaa !110
  %idxprom19 = sext i32 %10 to i64, !dbg !238
  %arrayidx21 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %idxprom19, i64 %9, !dbg !238
  %11 = load i8* %arrayidx21, align 1, !dbg !238, !tbaa !111
  %conv22 = sext i8 %11 to i32, !dbg !238
  %arrayidx24 = getelementptr inbounds i32* %varname, i64 %indvars.iv71, !dbg !238
  store i32 %conv22, i32* %arrayidx24, align 4, !dbg !238, !tbaa !110
  %indvars.iv.next72 = add i64 %indvars.iv71, 1, !dbg !238
  %12 = load i32* %varname, align 4, !dbg !238, !tbaa !110
  %13 = trunc i64 %indvars.iv71 to i32, !dbg !238
  %cmp16 = icmp slt i32 %13, %12, !dbg !238
  br i1 %cmp16, label %for.body, label %for.cond25.preheader, !dbg !238

for.body28:                                       ; preds = %for.cond25.preheader, %for.body28
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body28 ], [ 0, %for.cond25.preheader ]
  %14 = load i32* @fld, align 4, !dbg !240, !tbaa !110
  %idxprom30 = sext i32 %14 to i64, !dbg !240
  %arrayidx31 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %idxprom30, !dbg !240
  %15 = load i8** %arrayidx31, align 8, !dbg !240, !tbaa !161
  %arrayidx32 = getelementptr inbounds i8* %15, i64 %indvars.iv, !dbg !240
  %16 = load i8* %arrayidx32, align 1, !dbg !240, !tbaa !111
  %arrayidx34 = getelementptr inbounds i8* %buf, i64 %indvars.iv, !dbg !240
  store i8 %16, i8* %arrayidx34, align 1, !dbg !240, !tbaa !111
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !240
  %17 = load i32* %outsize, align 4, !dbg !240, !tbaa !110
  %18 = trunc i64 %indvars.iv.next to i32, !dbg !240
  %cmp26 = icmp slt i32 %18, %17, !dbg !240
  br i1 %cmp26, label %for.body28, label %for.end37, !dbg !240

for.end37:                                        ; preds = %for.body28, %for.cond25.preheader
  %19 = load i32* @fld, align 4, !dbg !242, !tbaa !110
  %idxprom38 = sext i32 %19 to i64, !dbg !242
  %arrayidx39 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %idxprom38, !dbg !242
  %20 = load i8** %arrayidx39, align 8, !dbg !242, !tbaa !161
  %cmp40 = icmp eq i8* %20, null, !dbg !242
  br i1 %cmp40, label %if.end45, label %if.then42, !dbg !242

if.then42:                                        ; preds = %for.end37
  tail call void @free(i8* %20) #5, !dbg !242
  %.pre76 = load i32* @fld, align 4, !dbg !243, !tbaa !110
  br label %if.end45, !dbg !242

if.end45:                                         ; preds = %for.end37, %if.then42
  %21 = phi i32 [ %19, %for.end37 ], [ %.pre76, %if.then42 ]
  %idxprom46 = sext i32 %21 to i64, !dbg !243
  %arrayidx47 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %idxprom46, !dbg !243
  store i8* null, i8** %arrayidx47, align 8, !dbg !243, !tbaa !161
  %arrayidx49 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %idxprom46, !dbg !244
  store i32 0, i32* %arrayidx49, align 4, !dbg !244, !tbaa !110
  %inc50 = add nsw i32 %21, 1, !dbg !245
  store i32 %inc50, i32* @fld, align 4, !dbg !245, !tbaa !110
  br label %if.end51, !dbg !246

if.else:                                          ; preds = %entry
  store i32 0, i32* @numflds, align 4, !dbg !247, !tbaa !110
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.end45
  %storemerge = phi i32 [ -1, %if.else ], [ 0, %if.end45 ]
  store i32 %storemerge, i32* %retval1, align 4, !dbg !249, !tbaa !110
  ret i32 0, !dbg !250
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !94, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !19, metadata !35, metadata !50, metadata !55, metadata !56, metadata !69, metadata !81}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"int_pack_data_", metadata !"int_pack_data_", metadata !"", i32 42, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i8*, i32*)* @int_pack_data_, null, null, metadata !12, i32 43} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 43] [int_pack_data_]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !11, metadata !9, metadata !11}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!10 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!12 = metadata !{metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18}
!13 = metadata !{i32 786689, metadata !4, metadata !"buf", metadata !5, i32 16777258, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 42]
!14 = metadata !{i32 786689, metadata !4, metadata !"ninbytes", metadata !5, i32 33554474, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninbytes] [line 42]
!15 = metadata !{i32 786689, metadata !4, metadata !"obuf", metadata !5, i32 50331690, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [obuf] [line 42]
!16 = metadata !{i32 786689, metadata !4, metadata !"cursor", metadata !5, i32 67108906, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cursor] [line 42]
!17 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 44]
!18 = metadata !{i32 786688, metadata !4, metadata !"lcurs", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lcurs] [line 44]
!19 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"int_gen_ti_header_c_", metadata !"int_gen_ti_header_c_", metadata !"", i32 54, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i32*, i32*, i32*, i8*, i32*, i32*)* @int_gen_ti_header_c_, null, null, metadata !24, i32 58} ; [ DW_TAG_subprogram ] [line 54] [def] [scope 58] [int_gen_ti_header_c_]
!20 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{metadata !8, metadata !22, metadata !11, metadata !11, metadata !11, metadata !11, metadata !22, metadata !11, metadata !11}
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!23 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!24 = metadata !{metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!25 = metadata !{i32 786689, metadata !19, metadata !"hdrbuf", metadata !5, i32 16777270, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdrbuf] [line 54]
!26 = metadata !{i32 786689, metadata !19, metadata !"hdrbufsize", metadata !5, i32 33554486, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdrbufsize] [line 54]
!27 = metadata !{i32 786689, metadata !19, metadata !"itypesize", metadata !5, i32 50331703, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [itypesize] [line 55]
!28 = metadata !{i32 786689, metadata !19, metadata !"typesize", metadata !5, i32 67108919, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [typesize] [line 55]
!29 = metadata !{i32 786689, metadata !19, metadata !"DataHandle", metadata !5, i32 83886136, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DataHandle] [line 56]
!30 = metadata !{i32 786689, metadata !19, metadata !"Data", metadata !5, i32 100663352, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Data] [line 56]
!31 = metadata !{i32 786689, metadata !19, metadata !"Count", metadata !5, i32 117440569, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Count] [line 57]
!32 = metadata !{i32 786689, metadata !19, metadata !"code", metadata !5, i32 134217785, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [code] [line 57]
!33 = metadata !{i32 786688, metadata !19, metadata !"i", metadata !5, i32 59, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 59]
!34 = metadata !{i32 786688, metadata !19, metadata !"p", metadata !5, i32 60, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 60]
!35 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"int_get_ti_header_c_", metadata !"int_get_ti_header_c_", metadata !"", i32 84, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*)* @int_get_ti_header_c_, null, null, metadata !38, i32 88} ; [ DW_TAG_subprogram ] [line 84] [def] [scope 88] [int_get_ti_header_c_]
!36 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{metadata !8, metadata !22, metadata !11, metadata !11, metadata !11, metadata !11, metadata !11, metadata !22, metadata !11, metadata !11}
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49}
!39 = metadata !{i32 786689, metadata !35, metadata !"hdrbuf", metadata !5, i32 16777300, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdrbuf] [line 84]
!40 = metadata !{i32 786689, metadata !35, metadata !"hdrbufsize", metadata !5, i32 33554516, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdrbufsize] [line 84]
!41 = metadata !{i32 786689, metadata !35, metadata !"n", metadata !5, i32 50331732, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 84]
!42 = metadata !{i32 786689, metadata !35, metadata !"itypesize", metadata !5, i32 67108949, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [itypesize] [line 85]
!43 = metadata !{i32 786689, metadata !35, metadata !"typesize", metadata !5, i32 83886165, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [typesize] [line 85]
!44 = metadata !{i32 786689, metadata !35, metadata !"DataHandle", metadata !5, i32 100663382, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DataHandle] [line 86]
!45 = metadata !{i32 786689, metadata !35, metadata !"Data", metadata !5, i32 117440598, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Data] [line 86]
!46 = metadata !{i32 786689, metadata !35, metadata !"Count", metadata !5, i32 134217815, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Count] [line 87]
!47 = metadata !{i32 786689, metadata !35, metadata !"code", metadata !5, i32 150995031, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [code] [line 87]
!48 = metadata !{i32 786688, metadata !35, metadata !"i", metadata !5, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 89]
!49 = metadata !{i32 786688, metadata !35, metadata !"p", metadata !5, i32 90, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 90]
!50 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"init_store_piece_of_field_", metadata !"init_store_piece_of_field_", metadata !"", i32 124, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @init_store_piece_of_field_, null, null, metadata !53, i32 125} ; [ DW_TAG_subprogram ] [line 124] [def] [scope 125] [init_store_piece_of_field_]
!51 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{metadata !8}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786688, metadata !50, metadata !"i", metadata !5, i32 126, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 126]
!55 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"init_retrieve_pieces_of_field_", metadata !"init_retrieve_pieces_of_field_", metadata !"", i32 144, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @init_retrieve_pieces_of_field_, null, null, metadata !2, i32 145} ; [ DW_TAG_subprogram ] [line 144] [def] [scope 145] [init_retrieve_pieces_of_field_]
!56 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"add_to_bufsize_for_field_c_", metadata !"add_to_bufsize_for_field_c_", metadata !"", i32 151, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32*)* @add_to_bufsize_for_field_c_, null, null, metadata !59, i32 152} ; [ DW_TAG_subprogram ] [line 151] [def] [scope 152] [add_to_bufsize_for_field_c_]
!57 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{metadata !8, metadata !11, metadata !11}
!59 = metadata !{metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65}
!60 = metadata !{i32 786689, metadata !56, metadata !"varname", metadata !5, i32 16777367, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [varname] [line 151]
!61 = metadata !{i32 786689, metadata !56, metadata !"chunksize", metadata !5, i32 33554583, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chunksize] [line 151]
!62 = metadata !{i32 786688, metadata !56, metadata !"i", metadata !5, i32 153, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 153]
!63 = metadata !{i32 786688, metadata !56, metadata !"n", metadata !5, i32 153, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 153]
!64 = metadata !{i32 786688, metadata !56, metadata !"found", metadata !5, i32 154, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [found] [line 154]
!65 = metadata !{i32 786688, metadata !56, metadata !"vname", metadata !5, i32 155, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vname] [line 155]
!66 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !23, metadata !67, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!67 = metadata !{metadata !68}
!68 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!69 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"store_piece_of_field_c_", metadata !"store_piece_of_field_c_", metadata !"", i32 177, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i32*, i32*)* @store_piece_of_field_c_, null, null, metadata !72, i32 178} ; [ DW_TAG_subprogram ] [line 177] [def] [scope 178] [store_piece_of_field_c_]
!70 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!71 = metadata !{metadata !8, metadata !22, metadata !11, metadata !11, metadata !11}
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80}
!73 = metadata !{i32 786689, metadata !69, metadata !"buf", metadata !5, i32 16777393, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 177]
!74 = metadata !{i32 786689, metadata !69, metadata !"varname", metadata !5, i32 33554609, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [varname] [line 177]
!75 = metadata !{i32 786689, metadata !69, metadata !"chunksize", metadata !5, i32 50331825, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chunksize] [line 177]
!76 = metadata !{i32 786689, metadata !69, metadata !"retval", metadata !5, i32 67109041, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [retval] [line 177]
!77 = metadata !{i32 786688, metadata !69, metadata !"i", metadata !5, i32 179, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 179]
!78 = metadata !{i32 786688, metadata !69, metadata !"n", metadata !5, i32 179, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 179]
!79 = metadata !{i32 786688, metadata !69, metadata !"found", metadata !5, i32 180, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [found] [line 180]
!80 = metadata !{i32 786688, metadata !69, metadata !"vname", metadata !5, i32 181, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vname] [line 181]
!81 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"retrieve_pieces_of_field_c_", metadata !"retrieve_pieces_of_field_c_", metadata !"", i32 218, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i32*, i32*, i32*)* @retrieve_pieces_of_field_c_, null, null, metadata !84, i32 219} ; [ DW_TAG_subprogram ] [line 218] [def] [scope 219] [retrieve_pieces_of_field_c_]
!82 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{metadata !8, metadata !22, metadata !11, metadata !11, metadata !11, metadata !11}
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93}
!85 = metadata !{i32 786689, metadata !81, metadata !"buf", metadata !5, i32 16777434, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 218]
!86 = metadata !{i32 786689, metadata !81, metadata !"varname", metadata !5, i32 33554650, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [varname] [line 218]
!87 = metadata !{i32 786689, metadata !81, metadata !"insize", metadata !5, i32 50331866, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [insize] [line 218]
!88 = metadata !{i32 786689, metadata !81, metadata !"outsize", metadata !5, i32 67109082, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outsize] [line 218]
!89 = metadata !{i32 786689, metadata !81, metadata !"retval", metadata !5, i32 83886298, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [retval] [line 218]
!90 = metadata !{i32 786688, metadata !81, metadata !"i", metadata !5, i32 220, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 220]
!91 = metadata !{i32 786688, metadata !81, metadata !"n", metadata !5, i32 220, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 220]
!92 = metadata !{i32 786688, metadata !81, metadata !"found", metadata !5, i32 221, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [found] [line 221]
!93 = metadata !{i32 786688, metadata !81, metadata !"vname", metadata !5, i32 222, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vname] [line 222]
!94 = metadata !{metadata !95, metadata !99, metadata !102, metadata !104, metadata !105, metadata !106, metadata !107}
!95 = metadata !{i32 786484, i32 0, null, metadata !"fld_name", metadata !"fld_name", metadata !"", metadata !5, i32 116, metadata !96, i32 1, i32 1, [2000 x [256 x i8]]* @fld_name, null} ; [ DW_TAG_variable ] [fld_name] [line 116] [local] [def]
!96 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4096000, i64 8, i32 0, i32 0, metadata !23, metadata !97, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4096000, align 8, offset 0] [from char]
!97 = metadata !{metadata !98, metadata !68}
!98 = metadata !{i32 786465, i64 0, i64 2000}     ; [ DW_TAG_subrange_type ] [0, 1999]
!99 = metadata !{i32 786484, i32 0, null, metadata !"fld_cache", metadata !"fld_cache", metadata !"", metadata !5, i32 117, metadata !100, i32 1, i32 1, [2000 x i8*]* @fld_cache, null} ; [ DW_TAG_variable ] [fld_cache] [line 117] [local] [def]
!100 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128000, i64 64, i32 0, i32 0, metadata !22, metadata !101, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128000, align 64, offset 0] [from ]
!101 = metadata !{metadata !98}
!102 = metadata !{i32 786484, i32 0, null, metadata !"fld_curs", metadata !"fld_curs", metadata !"", metadata !5, i32 118, metadata !103, i32 1, i32 1, [2000 x i32]* @fld_curs, null} ; [ DW_TAG_variable ] [fld_curs] [line 118] [local] [def]
!103 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64000, i64 32, i32 0, i32 0, metadata !8, metadata !101, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64000, align 32, offset 0] [from int]
!104 = metadata !{i32 786484, i32 0, null, metadata !"fld_bufsize", metadata !"fld_bufsize", metadata !"", metadata !5, i32 119, metadata !103, i32 1, i32 1, [2000 x i32]* @fld_bufsize, null} ; [ DW_TAG_variable ] [fld_bufsize] [line 119] [local] [def]
!105 = metadata !{i32 786484, i32 0, null, metadata !"fld", metadata !"fld", metadata !"", metadata !5, i32 120, metadata !8, i32 1, i32 1, i32* @fld, null} ; [ DW_TAG_variable ] [fld] [line 120] [local] [def]
!106 = metadata !{i32 786484, i32 0, null, metadata !"numflds", metadata !"numflds", metadata !"", metadata !5, i32 121, metadata !8, i32 1, i32 1, i32* @numflds, null} ; [ DW_TAG_variable ] [numflds] [line 121] [local] [def]
!107 = metadata !{i32 786484, i32 0, null, metadata !"frst", metadata !"frst", metadata !"", metadata !5, i32 122, metadata !8, i32 1, i32 1, null, null}
!108 = metadata !{i32 42, i32 0, metadata !4, null}
!109 = metadata !{i32 45, i32 0, metadata !4, null}
!110 = metadata !{metadata !"int", metadata !111}
!111 = metadata !{metadata !"omnipotent char", metadata !112}
!112 = metadata !{metadata !"Simple C/C++ TBAA"}
!113 = metadata !{i32 46, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!115 = metadata !{i32 48, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !114, i32 47, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!117 = metadata !{i32 50, i32 0, metadata !4, null}
!118 = metadata !{i32 51, i32 0, metadata !4, null}
!119 = metadata !{i32 54, i32 0, metadata !19, null}
!120 = metadata !{i32 55, i32 0, metadata !19, null}
!121 = metadata !{i32 56, i32 0, metadata !19, null}
!122 = metadata !{i32 57, i32 0, metadata !19, null}
!123 = metadata !{i32 61, i32 0, metadata !19, null}
!124 = metadata !{i32 62, i32 0, metadata !19, null}
!125 = metadata !{i32 72, i32 0, metadata !19, null}
!126 = metadata !{i32 73, i32 0, metadata !19, null}
!127 = metadata !{i32 74, i32 0, metadata !19, null}
!128 = metadata !{i32 75, i32 0, metadata !19, null}
!129 = metadata !{i32 76, i32 0, metadata !19, null}
!130 = metadata !{i32 77, i32 0, metadata !19, null}
!131 = metadata !{i32 78, i32 0, metadata !19, null}
!132 = metadata !{i32 80, i32 0, metadata !19, null}
!133 = metadata !{i32 84, i32 0, metadata !35, null}
!134 = metadata !{i32 85, i32 0, metadata !35, null}
!135 = metadata !{i32 86, i32 0, metadata !35, null}
!136 = metadata !{i32 87, i32 0, metadata !35, null}
!137 = metadata !{i32 91, i32 0, metadata !35, null}
!138 = metadata !{i32 102, i32 0, metadata !35, null}
!139 = metadata !{i32 103, i32 0, metadata !35, null}
!140 = metadata !{i32 104, i32 0, metadata !35, null}
!141 = metadata !{i32 105, i32 0, metadata !35, null}
!142 = metadata !{i32 106, i32 0, metadata !35, null}
!143 = metadata !{i32 107, i32 0, metadata !35, null}
!144 = metadata !{i32 108, i32 0, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !35, i32 107, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!146 = metadata !{i32 109, i32 0, metadata !145, null}
!147 = metadata !{i32 111, i32 0, metadata !35, null}
!148 = metadata !{i32 112, i32 0, metadata !35, null}
!149 = metadata !{i32 127, i32 0, metadata !50, null}
!150 = metadata !{i32 129, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !152, i32 128, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!152 = metadata !{i32 786443, metadata !1, metadata !153, i32 128, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!153 = metadata !{i32 786443, metadata !1, metadata !50, i32 127, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!154 = metadata !{i32 132, i32 0, metadata !153, null}
!155 = metadata !{i32 133, i32 0, metadata !50, null}
!156 = metadata !{i32 134, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !50, i32 134, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!158 = metadata !{i32 135, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !157, i32 134, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!160 = metadata !{i32 136, i32 0, metadata !159, null}
!161 = metadata !{metadata !"any pointer", metadata !111}
!162 = metadata !{i32 137, i32 0, metadata !159, null}
!163 = metadata !{i32 138, i32 0, metadata !159, null}
!164 = metadata !{i32 139, i32 0, metadata !159, null}
!165 = metadata !{i32 141, i32 0, metadata !50, null}
!166 = metadata !{i32 146, i32 0, metadata !55, null}
!167 = metadata !{i32 147, i32 0, metadata !55, null}
!168 = metadata !{i32 151, i32 0, metadata !56, null}
!169 = metadata !{i32 155, i32 0, metadata !56, null}
!170 = metadata !{i32 157, i32 0, metadata !56, null}
!171 = metadata !{i32 1}
!172 = metadata !{i32 158, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !56, i32 158, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!174 = metadata !{i32 158, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !173, i32 158, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!176 = metadata !{i32 159, i32 0, metadata !56, null}
!177 = metadata !{i32 -1}
!178 = metadata !{i32 161, i32 0, metadata !56, null}
!179 = metadata !{i32 162, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !56, i32 162, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!181 = metadata !{i32 162, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !180, i32 162, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!183 = metadata !{i32 163, i32 0, metadata !56, null}
!184 = metadata !{i32 164, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !56, i32 163, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!186 = metadata !{i32 165, i32 0, metadata !185, null}
!187 = metadata !{i32 166, i32 0, metadata !185, null}
!188 = metadata !{i32 167, i32 0, metadata !185, null}
!189 = metadata !{i32 170, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !56, i32 169, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!191 = metadata !{i32 172, i32 0, metadata !56, null}
!192 = metadata !{i32 172, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !56, i32 172, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!194 = metadata !{i32 173, i32 0, metadata !56, null}
!195 = metadata !{i32 174, i32 0, metadata !56, null}
!196 = metadata !{i32 177, i32 0, metadata !69, null}
!197 = metadata !{i32 181, i32 0, metadata !69, null}
!198 = metadata !{i32 183, i32 0, metadata !69, null}
!199 = metadata !{i32 184, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !69, i32 184, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!201 = metadata !{i32 184, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !200, i32 184, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!203 = metadata !{i32 185, i32 0, metadata !69, null}
!204 = metadata !{i32 187, i32 0, metadata !69, null}
!205 = metadata !{i32 188, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !69, i32 188, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!207 = metadata !{i32 188, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !206, i32 188, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!209 = metadata !{i32 189, i32 0, metadata !69, null}
!210 = metadata !{i32 190, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !69, i32 189, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!212 = metadata !{i32 191, i32 0, metadata !211, null}
!213 = metadata !{i32 192, i32 0, metadata !211, null}
!214 = metadata !{i32 195, i32 0, metadata !69, null}
!215 = metadata !{i32 200, i32 0, metadata !69, null}
!216 = metadata !{i32 196, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !69, i32 195, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!218 = metadata !{i32 197, i32 0, metadata !217, null}
!219 = metadata !{i32 198, i32 0, metadata !217, null}
!220 = metadata !{i32 201, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !69, i32 200, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!222 = metadata !{i32 203, i32 0, metadata !221, null}
!223 = metadata !{i32 204, i32 0, metadata !221, null}
!224 = metadata !{i32 210, i32 0, metadata !69, null}
!225 = metadata !{i32 212, i32 0, metadata !69, null}
!226 = metadata !{i32 213, i32 0, metadata !69, null}
!227 = metadata !{i32 214, i32 0, metadata !69, null}
!228 = metadata !{i32 215, i32 0, metadata !69, null}
!229 = metadata !{i32 218, i32 0, metadata !81, null}
!230 = metadata !{i32 224, i32 0, metadata !81, null}
!231 = metadata !{i32 225, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !81, i32 224, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!233 = metadata !{i32 226, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !232, i32 225, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!235 = metadata !{i32 228, i32 0, metadata !232, null}
!236 = metadata !{i32 227, i32 0, metadata !234, null}
!237 = metadata !{i32 229, i32 0, metadata !232, null}
!238 = metadata !{i32 230, i32 0, metadata !239, null}
!239 = metadata !{i32 786443, metadata !1, metadata !232, i32 230, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!240 = metadata !{i32 231, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !232, i32 231, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!242 = metadata !{i32 232, i32 0, metadata !232, null}
!243 = metadata !{i32 233, i32 0, metadata !232, null}
!244 = metadata !{i32 234, i32 0, metadata !232, null}
!245 = metadata !{i32 235, i32 0, metadata !232, null}
!246 = metadata !{i32 237, i32 0, metadata !232, null}
!247 = metadata !{i32 239, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !81, i32 238, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/pack_utils.c]
!249 = metadata !{i32 236, i32 0, metadata !232, null}
!250 = metadata !{i32 243, i32 0, metadata !81, null}
