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
  %0 = load i32* %cursor, align 4, !tbaa !0
  %sub = add i32 %0, -1
  %1 = load i32* %ninbytes, align 4, !tbaa !0
  %cmp8 = icmp sgt i32 %1, 0
  br i1 %cmp8, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = sext i32 %sub to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv12 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next13, %for.body ]
  %indvars.iv = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %lcurs.010 = phi i32 [ %sub, %for.body.lr.ph ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds i8* %buf, i64 %indvars.iv12
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %inc = add nsw i32 %lcurs.010, 1
  %arrayidx2 = getelementptr inbounds i8* %obuf, i64 %indvars.iv
  store i8 %3, i8* %arrayidx2, align 1, !tbaa !1
  %indvars.iv.next13 = add i64 %indvars.iv12, 1
  %4 = load i32* %ninbytes, align 4, !tbaa !0
  %5 = trunc i64 %indvars.iv.next13 to i32
  %cmp = icmp slt i32 %5, %4
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %lcurs.0.lcssa = phi i32 [ %sub, %entry ], [ %inc, %for.body ]
  %add = add nsw i32 %lcurs.0.lcssa, 1
  store i32 %add, i32* %cursor, align 4, !tbaa !0
  ret i32 undef
}

; Function Attrs: nounwind optsize uwtable
define i32 @int_gen_ti_header_c_(i8* nocapture %hdrbuf, i32* nocapture %hdrbufsize, i32* nocapture %itypesize, i32* nocapture %typesize, i32* nocapture %DataHandle, i8* nocapture %Data, i32* nocapture %Count, i32* nocapture %code) #0 {
entry:
  %add.ptr = getelementptr inbounds i8* %hdrbuf, i64 4
  %0 = bitcast i8* %add.ptr to i32*
  %1 = load i32* %code, align 1
  store i32 %1, i32* %0, align 1
  %add.ptr1 = getelementptr inbounds i8* %hdrbuf, i64 8
  %2 = bitcast i8* %add.ptr1 to i32*
  %3 = load i32* %DataHandle, align 1
  store i32 %3, i32* %2, align 1
  %add.ptr2 = getelementptr inbounds i8* %hdrbuf, i64 12
  %4 = bitcast i8* %add.ptr2 to i32*
  %5 = load i32* %typesize, align 1
  store i32 %5, i32* %4, align 1
  %add.ptr3 = getelementptr inbounds i8* %hdrbuf, i64 16
  %6 = bitcast i8* %add.ptr3 to i32*
  %7 = load i32* %Count, align 1
  store i32 %7, i32* %6, align 1
  %add.ptr4 = getelementptr inbounds i8* %hdrbuf, i64 20
  %8 = load i32* %Count, align 4, !tbaa !0
  %9 = load i32* %typesize, align 4, !tbaa !0
  %mul = mul nsw i32 %9, %8
  %conv = sext i32 %mul to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr4, i8* %Data, i64 %conv, i32 1, i1 false)
  %10 = load i32* %Count, align 4, !tbaa !0
  %11 = load i32* %typesize, align 4, !tbaa !0
  %mul5 = mul nsw i32 %11, %10
  %add.ptr6.offs = add i32 %mul5, 20
  store i32 %add.ptr6.offs, i32* %hdrbufsize, align 4, !tbaa !0
  %12 = bitcast i8* %hdrbuf to i32*
  store i32 %add.ptr6.offs, i32* %12, align 1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define i32 @int_get_ti_header_c_(i8* %hdrbuf, i32* nocapture %hdrbufsize, i32* nocapture %n, i32* nocapture %itypesize, i32* nocapture %typesize, i32* nocapture %DataHandle, i8* nocapture %Data, i32* nocapture %Count, i32* nocapture %code) #0 {
entry:
  %0 = bitcast i8* %hdrbuf to i32*
  %1 = load i32* %0, align 1
  store i32 %1, i32* %hdrbufsize, align 1
  %add.ptr = getelementptr inbounds i8* %hdrbuf, i64 4
  %2 = bitcast i8* %add.ptr to i32*
  %3 = load i32* %2, align 1
  store i32 %3, i32* %code, align 1
  %add.ptr1 = getelementptr inbounds i8* %hdrbuf, i64 8
  %4 = bitcast i8* %add.ptr1 to i32*
  %5 = load i32* %4, align 1
  store i32 %5, i32* %DataHandle, align 1
  %add.ptr2 = getelementptr inbounds i8* %hdrbuf, i64 12
  %6 = bitcast i8* %add.ptr2 to i32*
  %7 = load i32* %6, align 1
  store i32 %7, i32* %typesize, align 1
  %add.ptr3 = getelementptr inbounds i8* %hdrbuf, i64 16
  %8 = bitcast i8* %add.ptr3 to i32*
  %9 = load i32* %8, align 1
  store i32 %9, i32* %Count, align 1
  %add.ptr4 = getelementptr inbounds i8* %hdrbuf, i64 20
  %10 = load i32* %typesize, align 4, !tbaa !0
  %mul = mul nsw i32 %10, %9
  %cmp = icmp sgt i32 %mul, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i32 %mul to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %Data, i8* %add.ptr4, i64 %conv, i32 1, i1 false)
  %11 = load i32* %Count, align 4, !tbaa !0
  %12 = load i32* %typesize, align 4, !tbaa !0
  %mul6 = mul nsw i32 %12, %11
  %idx.ext = sext i32 %mul6 to i64
  %add.ptr4.sum = add i64 %idx.ext, 20
  %add.ptr7 = getelementptr inbounds i8* %hdrbuf, i64 %add.ptr4.sum
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %p.0 = phi i8* [ %add.ptr7, %if.then ], [ %add.ptr4, %entry ]
  %sub.ptr.lhs.cast = ptrtoint i8* %p.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %hdrbuf to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv8 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv8, i32* %n, align 4, !tbaa !0
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @init_store_piece_of_field_() #0 {
entry:
  %.b = load i1* @frst, align 1
  br i1 %.b, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2000 x i8*]* @fld_cache to i8*), i8 0, i64 16000, i32 16, i1 false)
  store i1 true, i1* @frst, align 1
  br label %if.end

if.end:                                           ; preds = %entry, %for.cond.preheader
  store i32 0, i32* @numflds, align 4, !tbaa !0
  br label %for.body3

for.body3:                                        ; preds = %if.end12, %if.end
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %if.end12 ]
  %arraydecay = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %indvars.iv, i64 0
  store i8 0, i8* %arraydecay, align 16
  %arrayidx7 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %indvars.iv
  %0 = load i8** %arrayidx7, align 8, !tbaa !3
  %cmp8 = icmp eq i8* %0, null
  br i1 %cmp8, label %if.end12, label %if.then9

if.then9:                                         ; preds = %for.body3
  tail call void @free(i8* %0) #4
  br label %if.end12

if.end12:                                         ; preds = %for.body3, %if.then9
  store i8* null, i8** %arrayidx7, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %indvars.iv
  store i32 0, i32* %arrayidx16, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %indvars.iv
  store i32 0, i32* %arrayidx18, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2000
  br i1 %exitcond, label %for.end21, label %for.body3

for.end21:                                        ; preds = %if.end12
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @init_retrieve_pieces_of_field_() #0 {
entry:
  store i32 0, i32* @fld, align 4, !tbaa !0
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @add_to_bufsize_for_field_c_(i32* nocapture %varname, i32* nocapture %chunksize) #0 {
entry:
  %vname = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %1 = load i32* %varname, align 4, !tbaa !0
  %cmp59 = icmp slt i32 %1, 1
  br i1 %cmp59, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %2 = add i32 %1, 1
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.body ], [ 1, %for.body.lr.ph ]
  %arrayidx1 = getelementptr inbounds i32* %varname, i64 %indvars.iv62
  %3 = load i32* %arrayidx1, align 4, !tbaa !0
  %conv = trunc i32 %3 to i8
  %4 = add nsw i64 %indvars.iv62, -1
  %arrayidx3 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %4
  store i8 %conv, i8* %arrayidx3, align 1, !tbaa !1
  %indvars.iv.next63 = add i64 %indvars.iv62, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next63 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %idxprom4 = sext i32 %1 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %idxprom4
  store i8 0, i8* %arrayidx5, align 1, !tbaa !1
  %5 = load i32* @numflds, align 4, !tbaa !0
  %cmp757 = icmp sgt i32 %5, 0
  br i1 %cmp757, label %for.body9, label %if.then18

for.cond6:                                        ; preds = %for.body9
  %inc14 = add nsw i32 %i.158, 1
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp7 = icmp slt i32 %6, %5
  br i1 %cmp7, label %for.body9, label %if.then18

for.body9:                                        ; preds = %for.end, %for.cond6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond6 ], [ 0, %for.end ]
  %i.158 = phi i32 [ %inc14, %for.cond6 ], [ 0, %for.end ]
  %arraydecay = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %indvars.iv, i64 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* %0) #5
  %tobool = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %tobool, label %for.end15, label %for.cond6

for.end15:                                        ; preds = %for.body9
  %cmp16 = icmp eq i32 %i.158, -1
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.end, %for.cond6, %for.end15
  %inc19 = add nsw i32 %5, 1
  store i32 %inc19, i32* @numflds, align 4, !tbaa !0
  %idxprom20 = sext i32 %5 to i64
  %arraydecay22 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %idxprom20, i64 0
  %call24 = call i8* @strcpy(i8* %arraydecay22, i8* %0) #4
  %7 = load i32* %chunksize, align 4, !tbaa !0
  %arrayidx26 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %idxprom20
  store i32 %7, i32* %arrayidx26, align 4, !tbaa !0
  br label %if.end29

if.else:                                          ; preds = %for.end15
  %8 = load i32* %chunksize, align 4, !tbaa !0
  %idxprom27 = sext i32 %i.158 to i64
  %arrayidx28 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %idxprom27
  %9 = load i32* %arrayidx28, align 4, !tbaa !0
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %arrayidx28, align 4, !tbaa !0
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then18
  %found.1 = phi i32 [ %5, %if.then18 ], [ %i.158, %if.else ]
  %idxprom30 = sext i32 %found.1 to i64
  %arrayidx31 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %idxprom30
  %10 = load i8** %arrayidx31, align 8, !tbaa !3
  %cmp32 = icmp eq i8* %10, null
  br i1 %cmp32, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.end29
  call void @free(i8* %10) #4
  br label %if.end37

if.end37:                                         ; preds = %if.end29, %if.then34
  store i8* null, i8** %arrayidx31, align 8, !tbaa !3
  call void @llvm.lifetime.end(i64 256, i8* %0) #1
  ret i32 undef
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @store_piece_of_field_c_(i8* nocapture %buf, i32* nocapture %varname, i32* nocapture %chunksize, i32* nocapture %retval1) #0 {
entry:
  %vname = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %1 = load i32* %varname, align 4, !tbaa !0
  %cmp88 = icmp slt i32 %1, 1
  br i1 %cmp88, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %2 = add i32 %1, 1
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.body ], [ 1, %for.body.lr.ph ]
  %arrayidx2 = getelementptr inbounds i32* %varname, i64 %indvars.iv91
  %3 = load i32* %arrayidx2, align 4, !tbaa !0
  %conv = trunc i32 %3 to i8
  %4 = add nsw i64 %indvars.iv91, -1
  %arrayidx4 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %4
  store i8 %conv, i8* %arrayidx4, align 1, !tbaa !1
  %indvars.iv.next92 = add i64 %indvars.iv91, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next92 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %idxprom5 = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8]* %vname, i64 0, i64 %idxprom5
  store i8 0, i8* %arrayidx6, align 1, !tbaa !1
  %5 = load i32* @numflds, align 4, !tbaa !0
  %cmp886 = icmp sgt i32 %5, 0
  br i1 %cmp886, label %for.body10, label %if.then19

for.cond7:                                        ; preds = %for.body10
  %inc15 = add nsw i32 %i.187, 1
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp8 = icmp slt i32 %6, %5
  br i1 %cmp8, label %for.body10, label %if.then19

for.body10:                                       ; preds = %for.end, %for.cond7
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond7 ], [ 0, %for.end ]
  %i.187 = phi i32 [ %inc15, %for.cond7 ], [ 0, %for.end ]
  %arraydecay = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %indvars.iv, i64 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* %0) #5
  %tobool = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %tobool, label %for.end16, label %for.cond7

for.end16:                                        ; preds = %for.body10
  %cmp17 = icmp eq i32 %i.187, -1
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %for.end, %for.cond7, %for.end16
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([88 x i8]* @.str1, i64 0, i64 0), i8* %0) #4
  store i32 1, i32* %retval1, align 4, !tbaa !0
  br label %cleanup

if.end22:                                         ; preds = %for.end16
  %idxprom23 = sext i32 %i.187 to i64
  %arrayidx24 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %idxprom23
  %8 = load i8** %arrayidx24, align 8, !tbaa !3
  %cmp25 = icmp eq i8* %8, null
  br i1 %cmp25, label %if.then27, label %if.end22.if.end36_crit_edge

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  %arrayidx38.pre = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %idxprom23
  %arrayidx40.pre = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %idxprom23
  br label %if.end36

if.then27:                                        ; preds = %if.end22
  %arrayidx29 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %idxprom23
  %9 = load i32* %arrayidx29, align 4, !tbaa !0
  %conv30 = sext i32 %9 to i64
  %call31 = call noalias i8* @malloc(i64 %conv30) #4
  store i8* %call31, i8** %arrayidx24, align 8, !tbaa !3
  %arrayidx35 = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %idxprom23
  store i32 0, i32* %arrayidx35, align 4, !tbaa !0
  br label %if.end36

if.end36:                                         ; preds = %if.end22.if.end36_crit_edge, %if.then27
  %arrayidx40.pre-phi = phi i32* [ %arrayidx40.pre, %if.end22.if.end36_crit_edge ], [ %arrayidx29, %if.then27 ]
  %arrayidx38.pre-phi = phi i32* [ %arrayidx38.pre, %if.end22.if.end36_crit_edge ], [ %arrayidx35, %if.then27 ]
  %10 = phi i8* [ %8, %if.end22.if.end36_crit_edge ], [ %call31, %if.then27 ]
  %11 = load i32* %arrayidx38.pre-phi, align 4, !tbaa !0
  %12 = load i32* %chunksize, align 4, !tbaa !0
  %add = add nsw i32 %12, %11
  %13 = load i32* %arrayidx40.pre-phi, align 4, !tbaa !0
  %cmp41 = icmp sgt i32 %add, %13
  br i1 %cmp41, label %if.then43, label %if.end50

if.then43:                                        ; preds = %if.end36
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* %0, i32 %11, i32 %12, i32 %13, i32 %i.187) #4
  store i32 1, i32* %retval1, align 4, !tbaa !0
  br label %cleanup

if.end50:                                         ; preds = %if.end36
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8* %10, i64 %idx.ext
  %conv55 = sext i32 %12 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %buf, i64 %conv55, i32 1, i1 false)
  %15 = load i32* %chunksize, align 4, !tbaa !0
  %16 = load i32* %arrayidx38.pre-phi, align 4, !tbaa !0
  %add58 = add nsw i32 %16, %15
  store i32 %add58, i32* %arrayidx38.pre-phi, align 4, !tbaa !0
  store i32 0, i32* %retval1, align 4, !tbaa !0
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then43, %if.then19
  call void @llvm.lifetime.end(i64 256, i8* %0) #1
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize uwtable
define i32 @retrieve_pieces_of_field_c_(i8* nocapture %buf, i32* nocapture %varname, i32* nocapture %insize, i32* nocapture %outsize, i32* nocapture %retval1) #0 {
entry:
  %0 = load i32* @fld, align 4, !tbaa !0
  %1 = load i32* @numflds, align 4, !tbaa !0
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %idxprom
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %3 = load i32* %insize, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %2, %3
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), i32 %0, i32 %2, i32 %3) #4
  %.pre = load i32* @fld, align 4, !tbaa !0
  %idxprom6.phi.trans.insert = sext i32 %.pre to i64
  %arrayidx7.phi.trans.insert = getelementptr inbounds [2000 x i32]* @fld_curs, i64 0, i64 %idxprom6.phi.trans.insert
  %.pre74 = load i32* %arrayidx7.phi.trans.insert, align 4, !tbaa !0
  %.pre75 = load i32* %insize, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %5 = phi i32 [ %.pre75, %if.then3 ], [ %3, %if.then ]
  %6 = phi i32 [ %.pre74, %if.then3 ], [ %2, %if.then ]
  %cmp8 = icmp sgt i32 %6, %5
  %. = select i1 %cmp8, i32 %5, i32 %6
  store i32 %., i32* %outsize, align 4, !tbaa !0
  %7 = load i32* @fld, align 4, !tbaa !0
  %idxprom11 = sext i32 %7 to i64
  %arraydecay = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %idxprom11, i64 0
  %call13 = tail call i64 @strlen(i8* %arraydecay) #5
  %conv = trunc i64 %call13 to i32
  store i32 %conv, i32* %varname, align 4, !tbaa !0
  %cmp1669 = icmp slt i32 %conv, 1
  br i1 %cmp1669, label %for.cond25.preheader, label %for.body

for.cond25.preheader:                             ; preds = %for.body, %if.end
  %8 = load i32* %outsize, align 4, !tbaa !0
  %cmp2667 = icmp sgt i32 %8, 0
  br i1 %cmp2667, label %for.body28, label %for.end37

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.body ], [ 1, %if.end ]
  %9 = add nsw i64 %indvars.iv71, -1
  %10 = load i32* @fld, align 4, !tbaa !0
  %idxprom19 = sext i32 %10 to i64
  %arrayidx21 = getelementptr inbounds [2000 x [256 x i8]]* @fld_name, i64 0, i64 %idxprom19, i64 %9
  %11 = load i8* %arrayidx21, align 1, !tbaa !1
  %conv22 = sext i8 %11 to i32
  %arrayidx24 = getelementptr inbounds i32* %varname, i64 %indvars.iv71
  store i32 %conv22, i32* %arrayidx24, align 4, !tbaa !0
  %indvars.iv.next72 = add i64 %indvars.iv71, 1
  %12 = load i32* %varname, align 4, !tbaa !0
  %13 = trunc i64 %indvars.iv71 to i32
  %cmp16 = icmp slt i32 %13, %12
  br i1 %cmp16, label %for.body, label %for.cond25.preheader

for.body28:                                       ; preds = %for.cond25.preheader, %for.body28
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body28 ], [ 0, %for.cond25.preheader ]
  %14 = load i32* @fld, align 4, !tbaa !0
  %idxprom30 = sext i32 %14 to i64
  %arrayidx31 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %idxprom30
  %15 = load i8** %arrayidx31, align 8, !tbaa !3
  %arrayidx32 = getelementptr inbounds i8* %15, i64 %indvars.iv
  %16 = load i8* %arrayidx32, align 1, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8* %buf, i64 %indvars.iv
  store i8 %16, i8* %arrayidx34, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %17 = load i32* %outsize, align 4, !tbaa !0
  %18 = trunc i64 %indvars.iv.next to i32
  %cmp26 = icmp slt i32 %18, %17
  br i1 %cmp26, label %for.body28, label %for.end37

for.end37:                                        ; preds = %for.body28, %for.cond25.preheader
  %19 = load i32* @fld, align 4, !tbaa !0
  %idxprom38 = sext i32 %19 to i64
  %arrayidx39 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %idxprom38
  %20 = load i8** %arrayidx39, align 8, !tbaa !3
  %cmp40 = icmp eq i8* %20, null
  br i1 %cmp40, label %if.end45, label %if.then42

if.then42:                                        ; preds = %for.end37
  tail call void @free(i8* %20) #4
  %.pre76 = load i32* @fld, align 4, !tbaa !0
  br label %if.end45

if.end45:                                         ; preds = %for.end37, %if.then42
  %21 = phi i32 [ %19, %for.end37 ], [ %.pre76, %if.then42 ]
  %idxprom46 = sext i32 %21 to i64
  %arrayidx47 = getelementptr inbounds [2000 x i8*]* @fld_cache, i64 0, i64 %idxprom46
  store i8* null, i8** %arrayidx47, align 8, !tbaa !3
  %arrayidx49 = getelementptr inbounds [2000 x i32]* @fld_bufsize, i64 0, i64 %idxprom46
  store i32 0, i32* %arrayidx49, align 4, !tbaa !0
  %inc50 = add nsw i32 %21, 1
  store i32 %inc50, i32* @fld, align 4, !tbaa !0
  br label %if.end51

if.else:                                          ; preds = %entry
  store i32 0, i32* @numflds, align 4, !tbaa !0
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.end45
  %storemerge = phi i32 [ -1, %if.else ], [ 0, %if.end45 ]
  store i32 %storemerge, i32* %retval1, align 4, !tbaa !0
  ret i32 0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readonly }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
