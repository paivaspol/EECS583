; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str2 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Util_vsnprintf(i8* %str, i64 %count, i8* nocapture %fmt, %struct.__va_list_tag* nocapture %args) #0 {
entry:
  %iconvert.i.i = alloca [20 x i8], align 16
  %fconvert.i.i = alloca [20 x i8], align 16
  %currlen.i = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !42), !dbg !180
  call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !43), !dbg !180
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !44), !dbg !180
  call void @llvm.dbg.value(metadata !{%struct.__va_list_tag* %args}, i64 0, metadata !45), !dbg !180
  %cmp = icmp eq i8* %str, null, !dbg !181
  br i1 %cmp, label %if.end, label %if.then, !dbg !181

if.then:                                          ; preds = %entry
  store i8 0, i8* %str, align 1, !dbg !182, !tbaa !183
  br label %if.end, !dbg !182

if.end:                                           ; preds = %entry, %if.then
  %0 = bitcast i64* %currlen.i to i8*, !dbg !185
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !185
  call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !187) #2, !dbg !185
  call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !188) #2, !dbg !185
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !189) #2, !dbg !185
  call void @llvm.dbg.value(metadata !{%struct.__va_list_tag* %args}, i64 0, metadata !190) #2, !dbg !185
  call void @llvm.dbg.declare(metadata !{i64* %currlen.i}, metadata !78) #2, !dbg !191
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !192) #2, !dbg !193
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !194) #2, !dbg !195
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !196) #2, !dbg !195
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !197) #2, !dbg !195
  call void @llvm.dbg.value(metadata !198, i64 0, metadata !199) #2, !dbg !195
  call void @llvm.dbg.value(metadata !198, i64 0, metadata !78), !dbg !195
  store i64 0, i64* %currlen.i, align 8, !dbg !195, !tbaa !200
  call void @llvm.dbg.value(metadata !201, i64 0, metadata !202) #2, !dbg !203
  %incdec.ptr.i = getelementptr inbounds i8* %fmt, i64 1, !dbg !204
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !189) #2, !dbg !204
  %1 = load i8* %fmt, align 1, !dbg !204, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %1}, i64 0, metadata !205) #2, !dbg !204
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !206) #2, !dbg !207
  %gp_offset_p.i = getelementptr inbounds %struct.__va_list_tag* %args, i64 0, i32 0, !dbg !208
  %2 = getelementptr inbounds %struct.__va_list_tag* %args, i64 0, i32 3, !dbg !208
  %overflow_arg_area_p.i = getelementptr inbounds %struct.__va_list_tag* %args, i64 0, i32 2, !dbg !208
  %fp_offset_p.i = getelementptr inbounds %struct.__va_list_tag* %args, i64 0, i32 1, !dbg !210
  %3 = getelementptr inbounds [20 x i8]* %iconvert.i.i, i64 0, i64 0, !dbg !211
  %4 = getelementptr inbounds [20 x i8]* %fconvert.i.i, i64 0, i64 0, !dbg !211
  br label %while.body.i, !dbg !213

while.body.i:                                     ; preds = %sw.epilog481.i, %sw.bb94.i, %sw.bb92.i, %sw.bb90.i, %sw.bb88.i, %vaarg.end82.i, %if.else68.i, %if.then58.i, %if.then46.i, %sw.bb42.i, %vaarg.end.i, %if.else33.i, %if.then29.i, %sw.bb22.i, %sw.bb19.i, %sw.bb16.i, %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %if.end7.i, %while.cond.backedge.i, %if.end
  %format.addr.0663.i = phi i8* [ %incdec.ptr.i, %if.end ], [ %format.addr.0663.i, %while.cond.backedge.i ], [ %incdec.ptr482.i, %sw.epilog481.i ], [ %incdec.ptr67.i, %if.then58.i ], [ %incdec.ptr84.i, %vaarg.end82.i ], [ %incdec.ptr47.i, %if.then46.i ], [ %incdec.ptr32.i, %if.then29.i ], [ %incdec.ptr38.i, %vaarg.end.i ], [ %incdec.ptr24.i, %sw.bb22.i ], [ %incdec.ptr21.i, %sw.bb19.i ], [ %incdec.ptr18.i, %sw.bb16.i ], [ %incdec.ptr15.i, %sw.bb13.i ], [ %incdec.ptr12.i, %sw.bb11.i ], [ %incdec.ptr8.i, %if.end7.i ], [ %format.addr.0663.i, %sw.bb9.i ], [ %format.addr.0663.i, %if.else33.i ], [ %format.addr.0663.i, %sw.bb42.i ], [ %format.addr.0663.i, %if.else68.i ], [ %format.addr.0663.i, %sw.bb88.i ], [ %incdec.ptr95.i, %sw.bb94.i ], [ %incdec.ptr93.i, %sw.bb92.i ], [ %incdec.ptr91.i, %sw.bb90.i ]
  %ch.0662.i = phi i8 [ %1, %if.end ], [ %ch.0662.i, %while.cond.backedge.i ], [ %167, %sw.epilog481.i ], [ %23, %if.then58.i ], [ %28, %vaarg.end82.i ], [ %20, %if.then46.i ], [ %14, %if.then29.i ], [ %19, %vaarg.end.i ], [ %11, %sw.bb22.i ], [ %10, %sw.bb19.i ], [ %9, %sw.bb16.i ], [ %8, %sw.bb13.i ], [ %7, %sw.bb11.i ], [ %6, %if.end7.i ], [ %ch.0662.i, %sw.bb9.i ], [ %ch.0662.i, %if.else33.i ], [ %ch.0662.i, %sw.bb42.i ], [ %ch.0662.i, %if.else68.i ], [ %ch.0662.i, %sw.bb88.i ], [ %31, %sw.bb94.i ], [ %30, %sw.bb92.i ], [ %29, %sw.bb90.i ]
  %total.0661.i = phi i32 [ 0, %if.end ], [ %total.0661.i, %while.cond.backedge.i ], [ %total.2.i, %sw.epilog481.i ], [ %total.0661.i, %if.then58.i ], [ %total.0661.i, %vaarg.end82.i ], [ %total.0661.i, %if.then46.i ], [ %total.0661.i, %if.then29.i ], [ %total.0661.i, %vaarg.end.i ], [ %total.0661.i, %sw.bb22.i ], [ %total.0661.i, %sw.bb19.i ], [ %total.0661.i, %sw.bb16.i ], [ %total.0661.i, %sw.bb13.i ], [ %total.0661.i, %sw.bb11.i ], [ %total.1.i, %if.end7.i ], [ %total.0661.i, %sw.bb9.i ], [ %total.0661.i, %if.else33.i ], [ %total.0661.i, %sw.bb42.i ], [ %total.0661.i, %if.else68.i ], [ %total.0661.i, %sw.bb88.i ], [ %total.0661.i, %sw.bb94.i ], [ %total.0661.i, %sw.bb92.i ], [ %total.0661.i, %sw.bb90.i ]
  %cflags.0660.i = phi i32 [ 0, %if.end ], [ %cflags.0660.i, %while.cond.backedge.i ], [ 0, %sw.epilog481.i ], [ %cflags.0660.i, %if.then58.i ], [ %cflags.0660.i, %vaarg.end82.i ], [ %cflags.0660.i, %if.then46.i ], [ %cflags.0660.i, %if.then29.i ], [ %cflags.0660.i, %vaarg.end.i ], [ %cflags.0660.i, %sw.bb22.i ], [ %cflags.0660.i, %sw.bb19.i ], [ %cflags.0660.i, %sw.bb16.i ], [ %cflags.0660.i, %sw.bb13.i ], [ %cflags.0660.i, %sw.bb11.i ], [ %cflags.0660.i, %if.end7.i ], [ %cflags.0660.i, %sw.bb9.i ], [ %cflags.0660.i, %if.else33.i ], [ %cflags.0660.i, %sw.bb42.i ], [ %cflags.0660.i, %if.else68.i ], [ %cflags.0660.i, %sw.bb88.i ], [ 3, %sw.bb94.i ], [ 2, %sw.bb92.i ], [ 1, %sw.bb90.i ]
  %flags.0659.i = phi i32 [ 0, %if.end ], [ %flags.0659.i, %while.cond.backedge.i ], [ 0, %sw.epilog481.i ], [ %flags.0659.i, %if.then58.i ], [ %flags.0659.i, %vaarg.end82.i ], [ %flags.0659.i, %if.then46.i ], [ %flags.0659.i, %if.then29.i ], [ %flags.0659.i, %vaarg.end.i ], [ %or23.i, %sw.bb22.i ], [ %or20.i, %sw.bb19.i ], [ %or17.i, %sw.bb16.i ], [ %or14.i, %sw.bb13.i ], [ %or.i, %sw.bb11.i ], [ %flags.0659.i, %if.end7.i ], [ %flags.0659.i, %sw.bb9.i ], [ %flags.0659.i, %if.else33.i ], [ %flags.0659.i, %sw.bb42.i ], [ %flags.0659.i, %if.else68.i ], [ %flags.0659.i, %sw.bb88.i ], [ %flags.0659.i, %sw.bb94.i ], [ %flags.0659.i, %sw.bb92.i ], [ %flags.0659.i, %sw.bb90.i ]
  %state.0658.i = phi i32 [ 0, %if.end ], [ %.state.0.i, %while.cond.backedge.i ], [ 0, %sw.epilog481.i ], [ 4, %if.then58.i ], [ 5, %vaarg.end82.i ], [ 4, %if.then46.i ], [ 2, %if.then29.i ], [ 3, %vaarg.end.i ], [ 1, %sw.bb22.i ], [ 1, %sw.bb19.i ], [ 1, %sw.bb16.i ], [ 1, %sw.bb13.i ], [ 1, %sw.bb11.i ], [ %state.2.i, %if.end7.i ], [ 2, %sw.bb9.i ], [ 3, %if.else33.i ], [ 5, %sw.bb42.i ], [ 5, %if.else68.i ], [ 6, %sw.bb88.i ], [ 6, %sw.bb94.i ], [ 6, %sw.bb92.i ], [ 6, %sw.bb90.i ]
  %max.0657.i = phi i32 [ -1, %if.end ], [ %max.0657.i, %while.cond.backedge.i ], [ -1, %sw.epilog481.i ], [ %add66.i, %if.then58.i ], [ %27, %vaarg.end82.i ], [ %max.0657.i, %if.then46.i ], [ %max.0657.i, %if.then29.i ], [ %max.0657.i, %vaarg.end.i ], [ %max.0657.i, %sw.bb22.i ], [ %max.0657.i, %sw.bb19.i ], [ %max.0657.i, %sw.bb16.i ], [ %max.0657.i, %sw.bb13.i ], [ %max.0657.i, %sw.bb11.i ], [ %max.0657.i, %if.end7.i ], [ %max.0657.i, %sw.bb9.i ], [ %max.0657.i, %if.else33.i ], [ %max.0657.i, %sw.bb42.i ], [ %max.0657.i, %if.else68.i ], [ %max.0657.i, %sw.bb88.i ], [ %max.0657.i, %sw.bb94.i ], [ %max.0657.i, %sw.bb92.i ], [ %max.0657.i, %sw.bb90.i ]
  %min.0656.i = phi i32 [ 0, %if.end ], [ %min.0656.i, %while.cond.backedge.i ], [ 0, %sw.epilog481.i ], [ %min.0656.i, %if.then58.i ], [ %min.0656.i, %vaarg.end82.i ], [ %min.0656.i, %if.then46.i ], [ %add31.i, %if.then29.i ], [ %18, %vaarg.end.i ], [ %min.0656.i, %sw.bb22.i ], [ %min.0656.i, %sw.bb19.i ], [ %min.0656.i, %sw.bb16.i ], [ %min.0656.i, %sw.bb13.i ], [ %min.0656.i, %sw.bb11.i ], [ %min.0656.i, %if.end7.i ], [ %min.0656.i, %sw.bb9.i ], [ %min.0656.i, %if.else33.i ], [ %min.0656.i, %sw.bb42.i ], [ %min.0656.i, %if.else68.i ], [ %min.0656.i, %sw.bb88.i ], [ %min.0656.i, %sw.bb94.i ], [ %min.0656.i, %sw.bb92.i ], [ %min.0656.i, %sw.bb90.i ]
  %conv.i = sext i8 %ch.0662.i to i32, !dbg !214
  %cmp1.i = icmp eq i8 %ch.0662.i, 0, !dbg !214
  call void @llvm.dbg.value(metadata !215, i64 0, metadata !192) #2, !dbg !216
  %.state.0.i = select i1 %cmp1.i, i32 7, i32 %state.0658.i, !dbg !214
  switch i32 %.state.0.i, label %while.cond.backedge.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb9.i
    i32 2, label %sw.bb25.i
    i32 3, label %sw.bb42.i
    i32 4, label %sw.bb50.i
    i32 5, label %sw.bb88.i
    i32 6, label %sw.bb98.i
  ], !dbg !217

while.cond.backedge.i:                            ; preds = %while.body.i
  %cmp.i = icmp eq i32 %.state.0.i, 7, !dbg !213
  br i1 %cmp.i, label %while.end.i, label %while.body.i, !dbg !213

sw.bb.i:                                          ; preds = %while.body.i
  %cmp4.i = icmp eq i8 %ch.0662.i, 37, !dbg !218
  br i1 %cmp4.i, label %if.end7.i, label %if.else.i, !dbg !218

if.else.i:                                        ; preds = %sw.bb.i
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !219) #2, !dbg !221
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !221
  %5 = load i64* %currlen.i, align 8, !dbg !221, !tbaa !200
  %add.i.i = add i64 %5, 1, !dbg !221
  %cmp.i.i = icmp ult i64 %add.i.i, %count, !dbg !221
  br i1 %cmp.i.i, label %if.then.i.i, label %dopr_outch.exit.i, !dbg !221

if.then.i.i:                                      ; preds = %if.else.i
  call void @llvm.dbg.value(metadata !{i64 %add.i.i}, i64 0, metadata !219) #2, !dbg !222
  call void @llvm.dbg.value(metadata !{i64 %add.i.i}, i64 0, metadata !78), !dbg !222
  store i64 %add.i.i, i64* %currlen.i, align 8, !dbg !222, !tbaa !200
  %arrayidx.i.i = getelementptr inbounds i8* %str, i64 %5, !dbg !222
  store i8 %ch.0662.i, i8* %arrayidx.i.i, align 1, !dbg !222, !tbaa !183
  br label %dopr_outch.exit.i, !dbg !222

dopr_outch.exit.i:                                ; preds = %if.then.i.i, %if.else.i
  %add.i = add nsw i32 %total.0661.i, 1, !dbg !220
  call void @llvm.dbg.value(metadata !{i32 %add.i}, i64 0, metadata !206) #2, !dbg !220
  br label %if.end7.i

if.end7.i:                                        ; preds = %dopr_outch.exit.i, %sw.bb.i
  %state.2.i = phi i32 [ 0, %dopr_outch.exit.i ], [ 1, %sw.bb.i ]
  %total.1.i = phi i32 [ %add.i, %dopr_outch.exit.i ], [ %total.0661.i, %sw.bb.i ]
  %incdec.ptr8.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !223
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr8.i}, i64 0, metadata !189) #2, !dbg !223
  %6 = load i8* %format.addr.0663.i, align 1, !dbg !223, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %6}, i64 0, metadata !205) #2, !dbg !223
  br label %while.body.i, !dbg !224

sw.bb9.i:                                         ; preds = %while.body.i
  switch i32 %conv.i, label %while.body.i [
    i32 45, label %sw.bb11.i
    i32 43, label %sw.bb13.i
    i32 32, label %sw.bb16.i
    i32 35, label %sw.bb19.i
    i32 48, label %sw.bb22.i
  ], !dbg !225

sw.bb11.i:                                        ; preds = %sw.bb9.i
  %or.i = or i32 %flags.0659.i, 1, !dbg !226
  call void @llvm.dbg.value(metadata !{i32 %or.i}, i64 0, metadata !197) #2, !dbg !226
  %incdec.ptr12.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !228
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr12.i}, i64 0, metadata !189) #2, !dbg !228
  %7 = load i8* %format.addr.0663.i, align 1, !dbg !228, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %7}, i64 0, metadata !205) #2, !dbg !228
  br label %while.body.i, !dbg !229

sw.bb13.i:                                        ; preds = %sw.bb9.i
  %or14.i = or i32 %flags.0659.i, 2, !dbg !230
  call void @llvm.dbg.value(metadata !{i32 %or14.i}, i64 0, metadata !197) #2, !dbg !230
  %incdec.ptr15.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !231
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr15.i}, i64 0, metadata !189) #2, !dbg !231
  %8 = load i8* %format.addr.0663.i, align 1, !dbg !231, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %8}, i64 0, metadata !205) #2, !dbg !231
  br label %while.body.i, !dbg !232

sw.bb16.i:                                        ; preds = %sw.bb9.i
  %or17.i = or i32 %flags.0659.i, 4, !dbg !233
  call void @llvm.dbg.value(metadata !{i32 %or17.i}, i64 0, metadata !197) #2, !dbg !233
  %incdec.ptr18.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !234
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr18.i}, i64 0, metadata !189) #2, !dbg !234
  %9 = load i8* %format.addr.0663.i, align 1, !dbg !234, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %9}, i64 0, metadata !205) #2, !dbg !234
  br label %while.body.i, !dbg !235

sw.bb19.i:                                        ; preds = %sw.bb9.i
  %or20.i = or i32 %flags.0659.i, 8, !dbg !236
  call void @llvm.dbg.value(metadata !{i32 %or20.i}, i64 0, metadata !197) #2, !dbg !236
  %incdec.ptr21.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !237
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr21.i}, i64 0, metadata !189) #2, !dbg !237
  %10 = load i8* %format.addr.0663.i, align 1, !dbg !237, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %10}, i64 0, metadata !205) #2, !dbg !237
  br label %while.body.i, !dbg !238

sw.bb22.i:                                        ; preds = %sw.bb9.i
  %or23.i = or i32 %flags.0659.i, 16, !dbg !239
  call void @llvm.dbg.value(metadata !{i32 %or23.i}, i64 0, metadata !197) #2, !dbg !239
  %incdec.ptr24.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !240
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr24.i}, i64 0, metadata !189) #2, !dbg !240
  %11 = load i8* %format.addr.0663.i, align 1, !dbg !240, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %11}, i64 0, metadata !205) #2, !dbg !240
  br label %while.body.i, !dbg !241

sw.bb25.i:                                        ; preds = %while.body.i
  %idxprom.i = sext i8 %ch.0662.i to i64, !dbg !242
  %call27.i = call i16** @__ctype_b_loc() #4, !dbg !242
  %12 = load i16** %call27.i, align 8, !dbg !242, !tbaa !243
  %arrayidx.i = getelementptr inbounds i16* %12, i64 %idxprom.i, !dbg !242
  %13 = load i16* %arrayidx.i, align 2, !dbg !242, !tbaa !244
  %and.i = and i16 %13, 2048, !dbg !242
  %tobool.i = icmp eq i16 %and.i, 0, !dbg !242
  br i1 %tobool.i, label %if.else33.i, label %if.then29.i, !dbg !242

if.then29.i:                                      ; preds = %sw.bb25.i
  %mul.i = mul nsw i32 %min.0656.i, 10, !dbg !245
  %sub.i = add i32 %conv.i, -48, !dbg !245
  %add31.i = add i32 %sub.i, %mul.i, !dbg !245
  call void @llvm.dbg.value(metadata !{i32 %add31.i}, i64 0, metadata !194) #2, !dbg !245
  %incdec.ptr32.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !247
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr32.i}, i64 0, metadata !189) #2, !dbg !247
  %14 = load i8* %format.addr.0663.i, align 1, !dbg !247, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %14}, i64 0, metadata !205) #2, !dbg !247
  br label %while.body.i, !dbg !248

if.else33.i:                                      ; preds = %sw.bb25.i
  %cmp35.i = icmp eq i8 %ch.0662.i, 42, !dbg !249
  br i1 %cmp35.i, label %if.then37.i, label %while.body.i, !dbg !249

if.then37.i:                                      ; preds = %if.else33.i
  %gp_offset.i = load i32* %gp_offset_p.i, align 4, !dbg !208
  %fits_in_gp.i = icmp ult i32 %gp_offset.i, 41, !dbg !208
  br i1 %fits_in_gp.i, label %vaarg.in_reg.i, label %vaarg.in_mem.i, !dbg !208

vaarg.in_reg.i:                                   ; preds = %if.then37.i
  %reg_save_area.i = load i8** %2, align 8, !dbg !208
  %15 = sext i32 %gp_offset.i to i64, !dbg !208
  %16 = getelementptr i8* %reg_save_area.i, i64 %15, !dbg !208
  %17 = add i32 %gp_offset.i, 8, !dbg !208
  store i32 %17, i32* %gp_offset_p.i, align 4, !dbg !208
  br label %vaarg.end.i, !dbg !208

vaarg.in_mem.i:                                   ; preds = %if.then37.i
  %overflow_arg_area.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !208
  %overflow_arg_area.next.i = getelementptr i8* %overflow_arg_area.i, i64 8, !dbg !208
  store i8* %overflow_arg_area.next.i, i8** %overflow_arg_area_p.i, align 8, !dbg !208
  br label %vaarg.end.i, !dbg !208

vaarg.end.i:                                      ; preds = %vaarg.in_mem.i, %vaarg.in_reg.i
  %vaarg.addr.in.i = phi i8* [ %16, %vaarg.in_reg.i ], [ %overflow_arg_area.i, %vaarg.in_mem.i ]
  %vaarg.addr.i = bitcast i8* %vaarg.addr.in.i to i32*, !dbg !208
  %18 = load i32* %vaarg.addr.i, align 4, !dbg !208
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !194) #2, !dbg !208
  %incdec.ptr38.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !250
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr38.i}, i64 0, metadata !189) #2, !dbg !250
  %19 = load i8* %format.addr.0663.i, align 1, !dbg !250, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %19}, i64 0, metadata !205) #2, !dbg !250
  call void @llvm.dbg.value(metadata !251, i64 0, metadata !192) #2, !dbg !252
  br label %while.body.i, !dbg !253

sw.bb42.i:                                        ; preds = %while.body.i
  %cmp44.i = icmp eq i8 %ch.0662.i, 46, !dbg !254
  br i1 %cmp44.i, label %if.then46.i, label %while.body.i, !dbg !254

if.then46.i:                                      ; preds = %sw.bb42.i
  call void @llvm.dbg.value(metadata !255, i64 0, metadata !192) #2, !dbg !256
  %incdec.ptr47.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !258
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr47.i}, i64 0, metadata !189) #2, !dbg !258
  %20 = load i8* %format.addr.0663.i, align 1, !dbg !258, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %20}, i64 0, metadata !205) #2, !dbg !258
  br label %while.body.i, !dbg !259

sw.bb50.i:                                        ; preds = %while.body.i
  %idxprom52.i = sext i8 %ch.0662.i to i64, !dbg !260
  %call53.i = call i16** @__ctype_b_loc() #4, !dbg !260
  %21 = load i16** %call53.i, align 8, !dbg !260, !tbaa !243
  %arrayidx54.i = getelementptr inbounds i16* %21, i64 %idxprom52.i, !dbg !260
  %22 = load i16* %arrayidx54.i, align 2, !dbg !260, !tbaa !244
  %and56.i = and i16 %22, 2048, !dbg !260
  %tobool57.i = icmp eq i16 %and56.i, 0, !dbg !260
  br i1 %tobool57.i, label %if.else68.i, label %if.then58.i, !dbg !260

if.then58.i:                                      ; preds = %sw.bb50.i
  %cmp59.i = icmp slt i32 %max.0657.i, 0, !dbg !261
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !202) #2, !dbg !263
  %max.0.op.i = mul i32 %max.0657.i, 10, !dbg !264
  %max.0.op.op.i = add i32 %max.0.op.i, -48, !dbg !264
  %sub65.i = select i1 %cmp59.i, i32 -48, i32 %max.0.op.op.i, !dbg !264
  %add66.i = add i32 %sub65.i, %conv.i, !dbg !264
  call void @llvm.dbg.value(metadata !{i32 %add66.i}, i64 0, metadata !202) #2, !dbg !264
  %incdec.ptr67.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !265
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr67.i}, i64 0, metadata !189) #2, !dbg !265
  %23 = load i8* %format.addr.0663.i, align 1, !dbg !265, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %23}, i64 0, metadata !205) #2, !dbg !265
  br label %while.body.i, !dbg !266

if.else68.i:                                      ; preds = %sw.bb50.i
  %cmp70.i = icmp eq i8 %ch.0662.i, 42, !dbg !267
  br i1 %cmp70.i, label %if.then72.i, label %while.body.i, !dbg !267

if.then72.i:                                      ; preds = %if.else68.i
  %gp_offset74.i = load i32* %gp_offset_p.i, align 4, !dbg !268
  %fits_in_gp75.i = icmp ult i32 %gp_offset74.i, 41, !dbg !268
  br i1 %fits_in_gp75.i, label %vaarg.in_reg76.i, label %vaarg.in_mem78.i, !dbg !268

vaarg.in_reg76.i:                                 ; preds = %if.then72.i
  %reg_save_area77.i = load i8** %2, align 8, !dbg !268
  %24 = sext i32 %gp_offset74.i to i64, !dbg !268
  %25 = getelementptr i8* %reg_save_area77.i, i64 %24, !dbg !268
  %26 = add i32 %gp_offset74.i, 8, !dbg !268
  store i32 %26, i32* %gp_offset_p.i, align 4, !dbg !268
  br label %vaarg.end82.i, !dbg !268

vaarg.in_mem78.i:                                 ; preds = %if.then72.i
  %overflow_arg_area80.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !268
  %overflow_arg_area.next81.i = getelementptr i8* %overflow_arg_area80.i, i64 8, !dbg !268
  store i8* %overflow_arg_area.next81.i, i8** %overflow_arg_area_p.i, align 8, !dbg !268
  br label %vaarg.end82.i, !dbg !268

vaarg.end82.i:                                    ; preds = %vaarg.in_mem78.i, %vaarg.in_reg76.i
  %vaarg.addr83.in.i = phi i8* [ %25, %vaarg.in_reg76.i ], [ %overflow_arg_area80.i, %vaarg.in_mem78.i ]
  %vaarg.addr83.i = bitcast i8* %vaarg.addr83.in.i to i32*, !dbg !268
  %27 = load i32* %vaarg.addr83.i, align 4, !dbg !268
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !202) #2, !dbg !268
  %incdec.ptr84.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !270
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr84.i}, i64 0, metadata !189) #2, !dbg !270
  %28 = load i8* %format.addr.0663.i, align 1, !dbg !270, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %28}, i64 0, metadata !205) #2, !dbg !270
  call void @llvm.dbg.value(metadata !271, i64 0, metadata !192) #2, !dbg !272
  br label %while.body.i, !dbg !273

sw.bb88.i:                                        ; preds = %while.body.i
  switch i32 %conv.i, label %while.body.i [
    i32 104, label %sw.bb90.i
    i32 108, label %sw.bb92.i
    i32 76, label %sw.bb94.i
  ], !dbg !274

sw.bb90.i:                                        ; preds = %sw.bb88.i
  call void @llvm.dbg.value(metadata !275, i64 0, metadata !196) #2, !dbg !276
  %incdec.ptr91.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !278
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr91.i}, i64 0, metadata !189) #2, !dbg !278
  %29 = load i8* %format.addr.0663.i, align 1, !dbg !278, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %29}, i64 0, metadata !205) #2, !dbg !278
  br label %while.body.i, !dbg !279

sw.bb92.i:                                        ; preds = %sw.bb88.i
  call void @llvm.dbg.value(metadata !280, i64 0, metadata !196) #2, !dbg !281
  %incdec.ptr93.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !282
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr93.i}, i64 0, metadata !189) #2, !dbg !282
  %30 = load i8* %format.addr.0663.i, align 1, !dbg !282, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %30}, i64 0, metadata !205) #2, !dbg !282
  br label %while.body.i, !dbg !283

sw.bb94.i:                                        ; preds = %sw.bb88.i
  call void @llvm.dbg.value(metadata !251, i64 0, metadata !196) #2, !dbg !284
  %incdec.ptr95.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !285
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr95.i}, i64 0, metadata !189) #2, !dbg !285
  %31 = load i8* %format.addr.0663.i, align 1, !dbg !285, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %31}, i64 0, metadata !205) #2, !dbg !285
  br label %while.body.i, !dbg !286

sw.bb98.i:                                        ; preds = %while.body.i
  switch i32 %conv.i, label %sw.epilog481.i [
    i32 100, label %sw.bb100.i
    i32 105, label %sw.bb100.i
    i32 111, label %sw.bb148.i
    i32 117, label %sw.bb197.i
    i32 88, label %sw.bb246.i
    i32 120, label %sw.bb248.i
    i32 102, label %sw.bb297.i
    i32 69, label %sw.bb326.i
    i32 101, label %sw.bb326.i
    i32 71, label %sw.bb356.i
    i32 103, label %sw.bb356.i
    i32 99, label %sw.bb384.i
    i32 115, label %sw.bb399.i
    i32 112, label %sw.bb413.i
    i32 110, label %sw.bb427.i
    i32 37, label %sw.bb475.i
    i32 119, label %sw.bb478.i
  ], !dbg !287

sw.bb100.i:                                       ; preds = %sw.bb98.i, %sw.bb98.i
  %cmp101.i = icmp eq i32 %cflags.0660.i, 1, !dbg !288
  br i1 %cmp101.i, label %if.then103.i, label %if.else116.i, !dbg !288

if.then103.i:                                     ; preds = %sw.bb100.i
  %gp_offset105.i = load i32* %gp_offset_p.i, align 4, !dbg !289
  %fits_in_gp106.i = icmp ult i32 %gp_offset105.i, 41, !dbg !289
  br i1 %fits_in_gp106.i, label %vaarg.in_reg107.i, label %vaarg.in_mem109.i, !dbg !289

vaarg.in_reg107.i:                                ; preds = %if.then103.i
  %reg_save_area108.i = load i8** %2, align 8, !dbg !289
  %32 = sext i32 %gp_offset105.i to i64, !dbg !289
  %33 = getelementptr i8* %reg_save_area108.i, i64 %32, !dbg !289
  %34 = add i32 %gp_offset105.i, 8, !dbg !289
  store i32 %34, i32* %gp_offset_p.i, align 4, !dbg !289
  br label %vaarg.end113.i, !dbg !289

vaarg.in_mem109.i:                                ; preds = %if.then103.i
  %overflow_arg_area111.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !289
  %overflow_arg_area.next112.i = getelementptr i8* %overflow_arg_area111.i, i64 8, !dbg !289
  store i8* %overflow_arg_area.next112.i, i8** %overflow_arg_area_p.i, align 8, !dbg !289
  br label %vaarg.end113.i, !dbg !289

vaarg.end113.i:                                   ; preds = %vaarg.in_mem109.i, %vaarg.in_reg107.i
  %vaarg.addr114.in.i = phi i8* [ %33, %vaarg.in_reg107.i ], [ %overflow_arg_area111.i, %vaarg.in_mem109.i ]
  %vaarg.addr114.i = bitcast i8* %vaarg.addr114.in.i to i32*, !dbg !289
  %35 = load i32* %vaarg.addr114.i, align 4, !dbg !289
  %conv115.i = sext i32 %35 to i64, !dbg !289
  call void @llvm.dbg.value(metadata !{i64 %conv115.i}, i64 0, metadata !290) #2, !dbg !289
  br label %if.end145.i, !dbg !289

if.else116.i:                                     ; preds = %sw.bb100.i
  %cmp117.i = icmp eq i32 %cflags.0660.i, 2, !dbg !291
  %gp_offset121.i = load i32* %gp_offset_p.i, align 4, !dbg !292
  %fits_in_gp122.i = icmp ult i32 %gp_offset121.i, 41, !dbg !292
  br i1 %cmp117.i, label %if.then119.i, label %if.else131.i, !dbg !291

if.then119.i:                                     ; preds = %if.else116.i
  br i1 %fits_in_gp122.i, label %vaarg.in_reg123.i, label %vaarg.in_mem125.i, !dbg !292

vaarg.in_reg123.i:                                ; preds = %if.then119.i
  %reg_save_area124.i = load i8** %2, align 8, !dbg !292
  %36 = sext i32 %gp_offset121.i to i64, !dbg !292
  %37 = getelementptr i8* %reg_save_area124.i, i64 %36, !dbg !292
  %38 = add i32 %gp_offset121.i, 8, !dbg !292
  store i32 %38, i32* %gp_offset_p.i, align 4, !dbg !292
  br label %vaarg.end129.i, !dbg !292

vaarg.in_mem125.i:                                ; preds = %if.then119.i
  %overflow_arg_area127.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !292
  %overflow_arg_area.next128.i = getelementptr i8* %overflow_arg_area127.i, i64 8, !dbg !292
  store i8* %overflow_arg_area.next128.i, i8** %overflow_arg_area_p.i, align 8, !dbg !292
  br label %vaarg.end129.i, !dbg !292

vaarg.end129.i:                                   ; preds = %vaarg.in_mem125.i, %vaarg.in_reg123.i
  %vaarg.addr130.in.i = phi i8* [ %37, %vaarg.in_reg123.i ], [ %overflow_arg_area127.i, %vaarg.in_mem125.i ]
  %vaarg.addr130.i = bitcast i8* %vaarg.addr130.in.i to i64*, !dbg !292
  %39 = load i64* %vaarg.addr130.i, align 8, !dbg !292
  call void @llvm.dbg.value(metadata !{i64 %39}, i64 0, metadata !290) #2, !dbg !292
  br label %if.end145.i, !dbg !292

if.else131.i:                                     ; preds = %if.else116.i
  br i1 %fits_in_gp122.i, label %vaarg.in_reg135.i, label %vaarg.in_mem137.i, !dbg !293

vaarg.in_reg135.i:                                ; preds = %if.else131.i
  %reg_save_area136.i = load i8** %2, align 8, !dbg !293
  %40 = sext i32 %gp_offset121.i to i64, !dbg !293
  %41 = getelementptr i8* %reg_save_area136.i, i64 %40, !dbg !293
  %42 = add i32 %gp_offset121.i, 8, !dbg !293
  store i32 %42, i32* %gp_offset_p.i, align 4, !dbg !293
  br label %vaarg.end141.i, !dbg !293

vaarg.in_mem137.i:                                ; preds = %if.else131.i
  %overflow_arg_area139.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !293
  %overflow_arg_area.next140.i = getelementptr i8* %overflow_arg_area139.i, i64 8, !dbg !293
  store i8* %overflow_arg_area.next140.i, i8** %overflow_arg_area_p.i, align 8, !dbg !293
  br label %vaarg.end141.i, !dbg !293

vaarg.end141.i:                                   ; preds = %vaarg.in_mem137.i, %vaarg.in_reg135.i
  %vaarg.addr142.in.i = phi i8* [ %41, %vaarg.in_reg135.i ], [ %overflow_arg_area139.i, %vaarg.in_mem137.i ]
  %vaarg.addr142.i = bitcast i8* %vaarg.addr142.in.i to i32*, !dbg !293
  %43 = load i32* %vaarg.addr142.i, align 4, !dbg !293
  %conv143.i = sext i32 %43 to i64, !dbg !293
  call void @llvm.dbg.value(metadata !{i64 %conv143.i}, i64 0, metadata !290) #2, !dbg !293
  br label %if.end145.i

if.end145.i:                                      ; preds = %vaarg.end141.i, %vaarg.end129.i, %vaarg.end113.i
  %value.0.i = phi i64 [ %conv115.i, %vaarg.end113.i ], [ %39, %vaarg.end129.i ], [ %conv143.i, %vaarg.end141.i ]
  %call146.i = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %value.0.i, i32 10, i32 %min.0656.i, i32 %max.0657.i, i32 %flags.0659.i) #5, !dbg !294
  %add147.i = add nsw i32 %call146.i, %total.0661.i, !dbg !294
  call void @llvm.dbg.value(metadata !{i32 %add147.i}, i64 0, metadata !206) #2, !dbg !294
  br label %sw.epilog481.i, !dbg !295

sw.bb148.i:                                       ; preds = %sw.bb98.i
  %or149.i = or i32 %flags.0659.i, 64, !dbg !296
  call void @llvm.dbg.value(metadata !{i32 %or149.i}, i64 0, metadata !197) #2, !dbg !296
  %cmp150.i = icmp eq i32 %cflags.0660.i, 1, !dbg !297
  br i1 %cmp150.i, label %if.then152.i, label %if.else165.i, !dbg !297

if.then152.i:                                     ; preds = %sw.bb148.i
  %gp_offset154.i = load i32* %gp_offset_p.i, align 4, !dbg !298
  %fits_in_gp155.i = icmp ult i32 %gp_offset154.i, 41, !dbg !298
  br i1 %fits_in_gp155.i, label %vaarg.in_reg156.i, label %vaarg.in_mem158.i, !dbg !298

vaarg.in_reg156.i:                                ; preds = %if.then152.i
  %reg_save_area157.i = load i8** %2, align 8, !dbg !298
  %44 = sext i32 %gp_offset154.i to i64, !dbg !298
  %45 = getelementptr i8* %reg_save_area157.i, i64 %44, !dbg !298
  %46 = add i32 %gp_offset154.i, 8, !dbg !298
  store i32 %46, i32* %gp_offset_p.i, align 4, !dbg !298
  br label %vaarg.end162.i, !dbg !298

vaarg.in_mem158.i:                                ; preds = %if.then152.i
  %overflow_arg_area160.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !298
  %overflow_arg_area.next161.i = getelementptr i8* %overflow_arg_area160.i, i64 8, !dbg !298
  store i8* %overflow_arg_area.next161.i, i8** %overflow_arg_area_p.i, align 8, !dbg !298
  br label %vaarg.end162.i, !dbg !298

vaarg.end162.i:                                   ; preds = %vaarg.in_mem158.i, %vaarg.in_reg156.i
  %vaarg.addr163.in.i = phi i8* [ %45, %vaarg.in_reg156.i ], [ %overflow_arg_area160.i, %vaarg.in_mem158.i ]
  %vaarg.addr163.i = bitcast i8* %vaarg.addr163.in.i to i32*, !dbg !298
  %47 = load i32* %vaarg.addr163.i, align 4, !dbg !298
  %conv164.i = zext i32 %47 to i64, !dbg !298
  call void @llvm.dbg.value(metadata !{i64 %conv164.i}, i64 0, metadata !290) #2, !dbg !298
  br label %if.end194.i, !dbg !298

if.else165.i:                                     ; preds = %sw.bb148.i
  %cmp166.i = icmp eq i32 %cflags.0660.i, 2, !dbg !299
  %gp_offset170.i = load i32* %gp_offset_p.i, align 4, !dbg !300
  %fits_in_gp171.i = icmp ult i32 %gp_offset170.i, 41, !dbg !300
  br i1 %cmp166.i, label %if.then168.i, label %if.else180.i, !dbg !299

if.then168.i:                                     ; preds = %if.else165.i
  br i1 %fits_in_gp171.i, label %vaarg.in_reg172.i, label %vaarg.in_mem174.i, !dbg !300

vaarg.in_reg172.i:                                ; preds = %if.then168.i
  %reg_save_area173.i = load i8** %2, align 8, !dbg !300
  %48 = sext i32 %gp_offset170.i to i64, !dbg !300
  %49 = getelementptr i8* %reg_save_area173.i, i64 %48, !dbg !300
  %50 = add i32 %gp_offset170.i, 8, !dbg !300
  store i32 %50, i32* %gp_offset_p.i, align 4, !dbg !300
  br label %vaarg.end178.i, !dbg !300

vaarg.in_mem174.i:                                ; preds = %if.then168.i
  %overflow_arg_area176.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !300
  %overflow_arg_area.next177.i = getelementptr i8* %overflow_arg_area176.i, i64 8, !dbg !300
  store i8* %overflow_arg_area.next177.i, i8** %overflow_arg_area_p.i, align 8, !dbg !300
  br label %vaarg.end178.i, !dbg !300

vaarg.end178.i:                                   ; preds = %vaarg.in_mem174.i, %vaarg.in_reg172.i
  %vaarg.addr179.in.i = phi i8* [ %49, %vaarg.in_reg172.i ], [ %overflow_arg_area176.i, %vaarg.in_mem174.i ]
  %vaarg.addr179.i = bitcast i8* %vaarg.addr179.in.i to i64*, !dbg !300
  %51 = load i64* %vaarg.addr179.i, align 8, !dbg !300
  call void @llvm.dbg.value(metadata !{i64 %51}, i64 0, metadata !290) #2, !dbg !300
  br label %if.end194.i, !dbg !300

if.else180.i:                                     ; preds = %if.else165.i
  br i1 %fits_in_gp171.i, label %vaarg.in_reg184.i, label %vaarg.in_mem186.i, !dbg !301

vaarg.in_reg184.i:                                ; preds = %if.else180.i
  %reg_save_area185.i = load i8** %2, align 8, !dbg !301
  %52 = sext i32 %gp_offset170.i to i64, !dbg !301
  %53 = getelementptr i8* %reg_save_area185.i, i64 %52, !dbg !301
  %54 = add i32 %gp_offset170.i, 8, !dbg !301
  store i32 %54, i32* %gp_offset_p.i, align 4, !dbg !301
  br label %vaarg.end190.i, !dbg !301

vaarg.in_mem186.i:                                ; preds = %if.else180.i
  %overflow_arg_area188.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !301
  %overflow_arg_area.next189.i = getelementptr i8* %overflow_arg_area188.i, i64 8, !dbg !301
  store i8* %overflow_arg_area.next189.i, i8** %overflow_arg_area_p.i, align 8, !dbg !301
  br label %vaarg.end190.i, !dbg !301

vaarg.end190.i:                                   ; preds = %vaarg.in_mem186.i, %vaarg.in_reg184.i
  %vaarg.addr191.in.i = phi i8* [ %53, %vaarg.in_reg184.i ], [ %overflow_arg_area188.i, %vaarg.in_mem186.i ]
  %vaarg.addr191.i = bitcast i8* %vaarg.addr191.in.i to i32*, !dbg !301
  %55 = load i32* %vaarg.addr191.i, align 4, !dbg !301
  %conv192.i = zext i32 %55 to i64, !dbg !301
  call void @llvm.dbg.value(metadata !{i64 %conv192.i}, i64 0, metadata !290) #2, !dbg !301
  br label %if.end194.i

if.end194.i:                                      ; preds = %vaarg.end190.i, %vaarg.end178.i, %vaarg.end162.i
  %value.1.i = phi i64 [ %conv164.i, %vaarg.end162.i ], [ %51, %vaarg.end178.i ], [ %conv192.i, %vaarg.end190.i ]
  %call195.i = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %value.1.i, i32 8, i32 %min.0656.i, i32 %max.0657.i, i32 %or149.i) #5, !dbg !302
  %add196.i = add nsw i32 %call195.i, %total.0661.i, !dbg !302
  call void @llvm.dbg.value(metadata !{i32 %add196.i}, i64 0, metadata !206) #2, !dbg !302
  br label %sw.epilog481.i, !dbg !303

sw.bb197.i:                                       ; preds = %sw.bb98.i
  %or198.i = or i32 %flags.0659.i, 64, !dbg !304
  call void @llvm.dbg.value(metadata !{i32 %or198.i}, i64 0, metadata !197) #2, !dbg !304
  %cmp199.i = icmp eq i32 %cflags.0660.i, 1, !dbg !305
  br i1 %cmp199.i, label %if.then201.i, label %if.else214.i, !dbg !305

if.then201.i:                                     ; preds = %sw.bb197.i
  %gp_offset203.i = load i32* %gp_offset_p.i, align 4, !dbg !306
  %fits_in_gp204.i = icmp ult i32 %gp_offset203.i, 41, !dbg !306
  br i1 %fits_in_gp204.i, label %vaarg.in_reg205.i, label %vaarg.in_mem207.i, !dbg !306

vaarg.in_reg205.i:                                ; preds = %if.then201.i
  %reg_save_area206.i = load i8** %2, align 8, !dbg !306
  %56 = sext i32 %gp_offset203.i to i64, !dbg !306
  %57 = getelementptr i8* %reg_save_area206.i, i64 %56, !dbg !306
  %58 = add i32 %gp_offset203.i, 8, !dbg !306
  store i32 %58, i32* %gp_offset_p.i, align 4, !dbg !306
  br label %vaarg.end211.i, !dbg !306

vaarg.in_mem207.i:                                ; preds = %if.then201.i
  %overflow_arg_area209.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !306
  %overflow_arg_area.next210.i = getelementptr i8* %overflow_arg_area209.i, i64 8, !dbg !306
  store i8* %overflow_arg_area.next210.i, i8** %overflow_arg_area_p.i, align 8, !dbg !306
  br label %vaarg.end211.i, !dbg !306

vaarg.end211.i:                                   ; preds = %vaarg.in_mem207.i, %vaarg.in_reg205.i
  %vaarg.addr212.in.i = phi i8* [ %57, %vaarg.in_reg205.i ], [ %overflow_arg_area209.i, %vaarg.in_mem207.i ]
  %vaarg.addr212.i = bitcast i8* %vaarg.addr212.in.i to i32*, !dbg !306
  %59 = load i32* %vaarg.addr212.i, align 4, !dbg !306
  %conv213.i = zext i32 %59 to i64, !dbg !306
  call void @llvm.dbg.value(metadata !{i64 %conv213.i}, i64 0, metadata !290) #2, !dbg !306
  br label %if.end243.i, !dbg !306

if.else214.i:                                     ; preds = %sw.bb197.i
  %cmp215.i = icmp eq i32 %cflags.0660.i, 2, !dbg !307
  %gp_offset219.i = load i32* %gp_offset_p.i, align 4, !dbg !308
  %fits_in_gp220.i = icmp ult i32 %gp_offset219.i, 41, !dbg !308
  br i1 %cmp215.i, label %if.then217.i, label %if.else229.i, !dbg !307

if.then217.i:                                     ; preds = %if.else214.i
  br i1 %fits_in_gp220.i, label %vaarg.in_reg221.i, label %vaarg.in_mem223.i, !dbg !308

vaarg.in_reg221.i:                                ; preds = %if.then217.i
  %reg_save_area222.i = load i8** %2, align 8, !dbg !308
  %60 = sext i32 %gp_offset219.i to i64, !dbg !308
  %61 = getelementptr i8* %reg_save_area222.i, i64 %60, !dbg !308
  %62 = add i32 %gp_offset219.i, 8, !dbg !308
  store i32 %62, i32* %gp_offset_p.i, align 4, !dbg !308
  br label %vaarg.end227.i, !dbg !308

vaarg.in_mem223.i:                                ; preds = %if.then217.i
  %overflow_arg_area225.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !308
  %overflow_arg_area.next226.i = getelementptr i8* %overflow_arg_area225.i, i64 8, !dbg !308
  store i8* %overflow_arg_area.next226.i, i8** %overflow_arg_area_p.i, align 8, !dbg !308
  br label %vaarg.end227.i, !dbg !308

vaarg.end227.i:                                   ; preds = %vaarg.in_mem223.i, %vaarg.in_reg221.i
  %vaarg.addr228.in.i = phi i8* [ %61, %vaarg.in_reg221.i ], [ %overflow_arg_area225.i, %vaarg.in_mem223.i ]
  %vaarg.addr228.i = bitcast i8* %vaarg.addr228.in.i to i64*, !dbg !308
  %63 = load i64* %vaarg.addr228.i, align 8, !dbg !308
  call void @llvm.dbg.value(metadata !{i64 %63}, i64 0, metadata !290) #2, !dbg !308
  br label %if.end243.i, !dbg !308

if.else229.i:                                     ; preds = %if.else214.i
  br i1 %fits_in_gp220.i, label %vaarg.in_reg233.i, label %vaarg.in_mem235.i, !dbg !309

vaarg.in_reg233.i:                                ; preds = %if.else229.i
  %reg_save_area234.i = load i8** %2, align 8, !dbg !309
  %64 = sext i32 %gp_offset219.i to i64, !dbg !309
  %65 = getelementptr i8* %reg_save_area234.i, i64 %64, !dbg !309
  %66 = add i32 %gp_offset219.i, 8, !dbg !309
  store i32 %66, i32* %gp_offset_p.i, align 4, !dbg !309
  br label %vaarg.end239.i, !dbg !309

vaarg.in_mem235.i:                                ; preds = %if.else229.i
  %overflow_arg_area237.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !309
  %overflow_arg_area.next238.i = getelementptr i8* %overflow_arg_area237.i, i64 8, !dbg !309
  store i8* %overflow_arg_area.next238.i, i8** %overflow_arg_area_p.i, align 8, !dbg !309
  br label %vaarg.end239.i, !dbg !309

vaarg.end239.i:                                   ; preds = %vaarg.in_mem235.i, %vaarg.in_reg233.i
  %vaarg.addr240.in.i = phi i8* [ %65, %vaarg.in_reg233.i ], [ %overflow_arg_area237.i, %vaarg.in_mem235.i ]
  %vaarg.addr240.i = bitcast i8* %vaarg.addr240.in.i to i32*, !dbg !309
  %67 = load i32* %vaarg.addr240.i, align 4, !dbg !309
  %conv241.i = zext i32 %67 to i64, !dbg !309
  call void @llvm.dbg.value(metadata !{i64 %conv241.i}, i64 0, metadata !290) #2, !dbg !309
  br label %if.end243.i

if.end243.i:                                      ; preds = %vaarg.end239.i, %vaarg.end227.i, %vaarg.end211.i
  %value.2.i = phi i64 [ %conv213.i, %vaarg.end211.i ], [ %63, %vaarg.end227.i ], [ %conv241.i, %vaarg.end239.i ]
  %call244.i = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %value.2.i, i32 10, i32 %min.0656.i, i32 %max.0657.i, i32 %or198.i) #5, !dbg !310
  %add245.i = add nsw i32 %call244.i, %total.0661.i, !dbg !310
  call void @llvm.dbg.value(metadata !{i32 %add245.i}, i64 0, metadata !206) #2, !dbg !310
  br label %sw.epilog481.i, !dbg !311

sw.bb246.i:                                       ; preds = %sw.bb98.i
  %or247.i = or i32 %flags.0659.i, 32, !dbg !312
  call void @llvm.dbg.value(metadata !{i32 %or247.i}, i64 0, metadata !197) #2, !dbg !312
  br label %sw.bb248.i, !dbg !312

sw.bb248.i:                                       ; preds = %sw.bb246.i, %sw.bb98.i
  %flags.1.i = phi i32 [ %flags.0659.i, %sw.bb98.i ], [ %or247.i, %sw.bb246.i ]
  %or249.i = or i32 %flags.1.i, 64, !dbg !313
  call void @llvm.dbg.value(metadata !{i32 %or249.i}, i64 0, metadata !197) #2, !dbg !313
  %cmp250.i = icmp eq i32 %cflags.0660.i, 1, !dbg !314
  br i1 %cmp250.i, label %if.then252.i, label %if.else265.i, !dbg !314

if.then252.i:                                     ; preds = %sw.bb248.i
  %gp_offset254.i = load i32* %gp_offset_p.i, align 4, !dbg !315
  %fits_in_gp255.i = icmp ult i32 %gp_offset254.i, 41, !dbg !315
  br i1 %fits_in_gp255.i, label %vaarg.in_reg256.i, label %vaarg.in_mem258.i, !dbg !315

vaarg.in_reg256.i:                                ; preds = %if.then252.i
  %reg_save_area257.i = load i8** %2, align 8, !dbg !315
  %68 = sext i32 %gp_offset254.i to i64, !dbg !315
  %69 = getelementptr i8* %reg_save_area257.i, i64 %68, !dbg !315
  %70 = add i32 %gp_offset254.i, 8, !dbg !315
  store i32 %70, i32* %gp_offset_p.i, align 4, !dbg !315
  br label %vaarg.end262.i, !dbg !315

vaarg.in_mem258.i:                                ; preds = %if.then252.i
  %overflow_arg_area260.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !315
  %overflow_arg_area.next261.i = getelementptr i8* %overflow_arg_area260.i, i64 8, !dbg !315
  store i8* %overflow_arg_area.next261.i, i8** %overflow_arg_area_p.i, align 8, !dbg !315
  br label %vaarg.end262.i, !dbg !315

vaarg.end262.i:                                   ; preds = %vaarg.in_mem258.i, %vaarg.in_reg256.i
  %vaarg.addr263.in.i = phi i8* [ %69, %vaarg.in_reg256.i ], [ %overflow_arg_area260.i, %vaarg.in_mem258.i ]
  %vaarg.addr263.i = bitcast i8* %vaarg.addr263.in.i to i32*, !dbg !315
  %71 = load i32* %vaarg.addr263.i, align 4, !dbg !315
  %conv264.i = zext i32 %71 to i64, !dbg !315
  call void @llvm.dbg.value(metadata !{i64 %conv264.i}, i64 0, metadata !290) #2, !dbg !315
  br label %if.end294.i, !dbg !315

if.else265.i:                                     ; preds = %sw.bb248.i
  %cmp266.i = icmp eq i32 %cflags.0660.i, 2, !dbg !316
  %gp_offset270.i = load i32* %gp_offset_p.i, align 4, !dbg !317
  %fits_in_gp271.i = icmp ult i32 %gp_offset270.i, 41, !dbg !317
  br i1 %cmp266.i, label %if.then268.i, label %if.else280.i, !dbg !316

if.then268.i:                                     ; preds = %if.else265.i
  br i1 %fits_in_gp271.i, label %vaarg.in_reg272.i, label %vaarg.in_mem274.i, !dbg !317

vaarg.in_reg272.i:                                ; preds = %if.then268.i
  %reg_save_area273.i = load i8** %2, align 8, !dbg !317
  %72 = sext i32 %gp_offset270.i to i64, !dbg !317
  %73 = getelementptr i8* %reg_save_area273.i, i64 %72, !dbg !317
  %74 = add i32 %gp_offset270.i, 8, !dbg !317
  store i32 %74, i32* %gp_offset_p.i, align 4, !dbg !317
  br label %vaarg.end278.i, !dbg !317

vaarg.in_mem274.i:                                ; preds = %if.then268.i
  %overflow_arg_area276.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !317
  %overflow_arg_area.next277.i = getelementptr i8* %overflow_arg_area276.i, i64 8, !dbg !317
  store i8* %overflow_arg_area.next277.i, i8** %overflow_arg_area_p.i, align 8, !dbg !317
  br label %vaarg.end278.i, !dbg !317

vaarg.end278.i:                                   ; preds = %vaarg.in_mem274.i, %vaarg.in_reg272.i
  %vaarg.addr279.in.i = phi i8* [ %73, %vaarg.in_reg272.i ], [ %overflow_arg_area276.i, %vaarg.in_mem274.i ]
  %vaarg.addr279.i = bitcast i8* %vaarg.addr279.in.i to i64*, !dbg !317
  %75 = load i64* %vaarg.addr279.i, align 8, !dbg !317
  call void @llvm.dbg.value(metadata !{i64 %75}, i64 0, metadata !290) #2, !dbg !317
  br label %if.end294.i, !dbg !317

if.else280.i:                                     ; preds = %if.else265.i
  br i1 %fits_in_gp271.i, label %vaarg.in_reg284.i, label %vaarg.in_mem286.i, !dbg !318

vaarg.in_reg284.i:                                ; preds = %if.else280.i
  %reg_save_area285.i = load i8** %2, align 8, !dbg !318
  %76 = sext i32 %gp_offset270.i to i64, !dbg !318
  %77 = getelementptr i8* %reg_save_area285.i, i64 %76, !dbg !318
  %78 = add i32 %gp_offset270.i, 8, !dbg !318
  store i32 %78, i32* %gp_offset_p.i, align 4, !dbg !318
  br label %vaarg.end290.i, !dbg !318

vaarg.in_mem286.i:                                ; preds = %if.else280.i
  %overflow_arg_area288.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !318
  %overflow_arg_area.next289.i = getelementptr i8* %overflow_arg_area288.i, i64 8, !dbg !318
  store i8* %overflow_arg_area.next289.i, i8** %overflow_arg_area_p.i, align 8, !dbg !318
  br label %vaarg.end290.i, !dbg !318

vaarg.end290.i:                                   ; preds = %vaarg.in_mem286.i, %vaarg.in_reg284.i
  %vaarg.addr291.in.i = phi i8* [ %77, %vaarg.in_reg284.i ], [ %overflow_arg_area288.i, %vaarg.in_mem286.i ]
  %vaarg.addr291.i = bitcast i8* %vaarg.addr291.in.i to i32*, !dbg !318
  %79 = load i32* %vaarg.addr291.i, align 4, !dbg !318
  %conv292.i = zext i32 %79 to i64, !dbg !318
  call void @llvm.dbg.value(metadata !{i64 %conv292.i}, i64 0, metadata !290) #2, !dbg !318
  br label %if.end294.i

if.end294.i:                                      ; preds = %vaarg.end290.i, %vaarg.end278.i, %vaarg.end262.i
  %value.3.i = phi i64 [ %conv264.i, %vaarg.end262.i ], [ %75, %vaarg.end278.i ], [ %conv292.i, %vaarg.end290.i ]
  %call295.i = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %value.3.i, i32 16, i32 %min.0656.i, i32 %max.0657.i, i32 %or249.i) #5, !dbg !319
  %add296.i = add nsw i32 %call295.i, %total.0661.i, !dbg !319
  call void @llvm.dbg.value(metadata !{i32 %add296.i}, i64 0, metadata !206) #2, !dbg !319
  br label %sw.epilog481.i, !dbg !320

sw.bb297.i:                                       ; preds = %sw.bb98.i
  %cmp298.i = icmp eq i32 %cflags.0660.i, 3, !dbg !321
  %fp_offset.i = load i32* %fp_offset_p.i, align 4, !dbg !210
  %fits_in_fp.i = icmp ult i32 %fp_offset.i, 161, !dbg !210
  br i1 %cmp298.i, label %if.then300.i, label %if.else309.i, !dbg !321

if.then300.i:                                     ; preds = %sw.bb297.i
  br i1 %fits_in_fp.i, label %vaarg.in_reg301.i, label %vaarg.in_mem303.i, !dbg !210

vaarg.in_reg301.i:                                ; preds = %if.then300.i
  %reg_save_area302.i = load i8** %2, align 8, !dbg !210
  %80 = sext i32 %fp_offset.i to i64, !dbg !210
  %81 = getelementptr i8* %reg_save_area302.i, i64 %80, !dbg !210
  %82 = add i32 %fp_offset.i, 16, !dbg !210
  store i32 %82, i32* %fp_offset_p.i, align 4, !dbg !210
  br label %if.end321.i, !dbg !210

vaarg.in_mem303.i:                                ; preds = %if.then300.i
  %overflow_arg_area305.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !210
  %overflow_arg_area.next306.i = getelementptr i8* %overflow_arg_area305.i, i64 8, !dbg !210
  store i8* %overflow_arg_area.next306.i, i8** %overflow_arg_area_p.i, align 8, !dbg !210
  br label %if.end321.i, !dbg !210

if.else309.i:                                     ; preds = %sw.bb297.i
  br i1 %fits_in_fp.i, label %vaarg.in_reg313.i, label %vaarg.in_mem315.i, !dbg !322

vaarg.in_reg313.i:                                ; preds = %if.else309.i
  %reg_save_area314.i = load i8** %2, align 8, !dbg !322
  %83 = sext i32 %fp_offset.i to i64, !dbg !322
  %84 = getelementptr i8* %reg_save_area314.i, i64 %83, !dbg !322
  %85 = add i32 %fp_offset.i, 16, !dbg !322
  store i32 %85, i32* %fp_offset_p.i, align 4, !dbg !322
  br label %if.end321.i, !dbg !322

vaarg.in_mem315.i:                                ; preds = %if.else309.i
  %overflow_arg_area317.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !322
  %overflow_arg_area.next318.i = getelementptr i8* %overflow_arg_area317.i, i64 8, !dbg !322
  store i8* %overflow_arg_area.next318.i, i8** %overflow_arg_area_p.i, align 8, !dbg !322
  br label %if.end321.i, !dbg !322

if.end321.i:                                      ; preds = %vaarg.in_mem315.i, %vaarg.in_reg313.i, %vaarg.in_mem303.i, %vaarg.in_reg301.i
  %fvalue.0.in.in.i = phi i8* [ %81, %vaarg.in_reg301.i ], [ %overflow_arg_area305.i, %vaarg.in_mem303.i ], [ %84, %vaarg.in_reg313.i ], [ %overflow_arg_area317.i, %vaarg.in_mem315.i ]
  %fvalue.0.in.i = bitcast i8* %fvalue.0.in.in.i to double*, !dbg !210
  %fvalue.0.i = load double* %fvalue.0.in.i, align 8, !dbg !210
  call void @llvm.lifetime.start(i64 20, i8* %3) #2, !dbg !211
  call void @llvm.lifetime.start(i64 20, i8* %4) #2, !dbg !211
  call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !323) #2, !dbg !211
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !324) #2, !dbg !211
  call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !325) #2, !dbg !211
  call void @llvm.dbg.value(metadata !{double %fvalue.0.i}, i64 0, metadata !326) #2, !dbg !327
  call void @llvm.dbg.value(metadata !{i32 %min.0656.i}, i64 0, metadata !328) #2, !dbg !327
  call void @llvm.dbg.value(metadata !{i32 %max.0657.i}, i64 0, metadata !329) #2, !dbg !327
  call void @llvm.dbg.value(metadata !{i32 %flags.0659.i}, i64 0, metadata !330) #2, !dbg !327
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !331) #2, !dbg !332
  call void @llvm.dbg.declare(metadata !{[20 x i8]* %iconvert.i.i}, metadata !121) #2, !dbg !333
  call void @llvm.dbg.declare(metadata !{[20 x i8]* %fconvert.i.i}, metadata !125) #2, !dbg !334
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !335) #2, !dbg !336
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !337) #2, !dbg !338
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !339) #2, !dbg !340
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !341) #2, !dbg !342
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !343) #2, !dbg !344
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !345) #2, !dbg !346
  %cmp.i631.i = icmp slt i32 %max.0657.i, 0, !dbg !347
  call void @llvm.dbg.value(metadata !348, i64 0, metadata !329) #2, !dbg !349
  %.max.i.i = select i1 %cmp.i631.i, i32 6, i32 %max.0657.i, !dbg !347
  call void @llvm.dbg.value(metadata !{double %fvalue.0.i}, i64 0, metadata !350) #2, !dbg !352
  call void @llvm.dbg.value(metadata !{double %fvalue.0.i}, i64 0, metadata !353) #2, !dbg !354
  %cmp.i.i.i = fcmp olt double %fvalue.0.i, 0.000000e+00, !dbg !355
  br i1 %cmp.i.i.i, label %abs_val.exit.thread.i.i, label %if.else.i.i, !dbg !355

abs_val.exit.thread.i.i:                          ; preds = %if.end321.i
  %sub.i.i.i = fsub double -0.000000e+00, %fvalue.0.i, !dbg !356
  call void @llvm.dbg.value(metadata !{double %sub.i.i.i}, i64 0, metadata !353) #2, !dbg !356
  br label %if.end10.i.i, !dbg !357

if.else.i.i:                                      ; preds = %if.end321.i
  %and.i.i = and i32 %flags.0659.i, 2, !dbg !358
  %tobool.i.i = icmp eq i32 %and.i.i, 0, !dbg !358
  br i1 %tobool.i.i, label %if.else4.i.i, label %if.end10.i.i, !dbg !358

if.else4.i.i:                                     ; preds = %if.else.i.i
  call void @llvm.dbg.value(metadata !359, i64 0, metadata !331) #2, !dbg !360
  %and5.i.i = shl i32 %flags.0659.i, 3, !dbg !361
  %86 = and i32 %and5.i.i, 32, !dbg !361
  br label %if.end10.i.i, !dbg !361

if.end10.i.i:                                     ; preds = %if.else4.i.i, %if.else.i.i, %abs_val.exit.thread.i.i
  %result.0.i300.i.i = phi double [ %fvalue.0.i, %if.else.i.i ], [ %fvalue.0.i, %if.else4.i.i ], [ %sub.i.i.i, %abs_val.exit.thread.i.i ]
  %signvalue.0.i.i = phi i32 [ 43, %if.else.i.i ], [ %86, %if.else4.i.i ], [ 45, %abs_val.exit.thread.i.i ]
  %conv.i.i = fptosi double %result.0.i300.i.i to i64, !dbg !362
  call void @llvm.dbg.value(metadata !{i64 %conv.i.i}, i64 0, metadata !363) #2, !dbg !362
  %cmp11.i.i = icmp sgt i32 %.max.i.i, 9, !dbg !364
  call void @llvm.dbg.value(metadata !365, i64 0, metadata !329) #2, !dbg !366
  %..max.i.i = select i1 %cmp11.i.i, i32 9, i32 %.max.i.i, !dbg !364
  call void @llvm.dbg.value(metadata !{i32 %..max.i.i}, i64 0, metadata !367) #2, !dbg !369
  call void @llvm.dbg.value(metadata !370, i64 0, metadata !371) #2, !dbg !372
  %tobool2.i291.i.i = icmp eq i32 %..max.i.i, 0, !dbg !373
  br i1 %tobool2.i291.i.i, label %pow10.exit299.i.i, label %while.body.i297.i.i, !dbg !373

while.body.i297.i.i:                              ; preds = %if.end10.i.i, %while.body.i297.i.i
  %result.04.i292.i.i = phi double [ %mul.i294.i.i, %while.body.i297.i.i ], [ 1.000000e+00, %if.end10.i.i ]
  %exp.addr.03.i293.i.i = phi i32 [ %dec.i295.i.i, %while.body.i297.i.i ], [ %..max.i.i, %if.end10.i.i ]
  %mul.i294.i.i = fmul double %result.04.i292.i.i, 1.000000e+01, !dbg !374
  call void @llvm.dbg.value(metadata !{double %mul.i294.i.i}, i64 0, metadata !371) #2, !dbg !374
  %dec.i295.i.i = add nsw i32 %exp.addr.03.i293.i.i, -1, !dbg !376
  call void @llvm.dbg.value(metadata !{i32 %dec.i295.i.i}, i64 0, metadata !367) #2, !dbg !376
  %tobool.i296.i.i = icmp eq i32 %dec.i295.i.i, 0, !dbg !373
  br i1 %tobool.i296.i.i, label %pow10.exit299.i.i, label %while.body.i297.i.i, !dbg !373

pow10.exit299.i.i:                                ; preds = %while.body.i297.i.i, %if.end10.i.i
  %result.0.lcssa.i298.i.i = phi double [ 1.000000e+00, %if.end10.i.i ], [ %mul.i294.i.i, %while.body.i297.i.i ]
  %conv16.i.i = sitofp i64 %conv.i.i to double, !dbg !368
  %sub.i.i = fsub double %result.0.i300.i.i, %conv16.i.i, !dbg !368
  %mul.i.i = fmul double %sub.i.i, %result.0.lcssa.i298.i.i, !dbg !368
  call void @llvm.dbg.value(metadata !{double %mul.i.i}, i64 0, metadata !377) #2, !dbg !378
  %conv.i.i.i = fptosi double %mul.i.i to i64, !dbg !379
  call void @llvm.dbg.value(metadata !{i64 %conv.i.i.i}, i64 0, metadata !380) #2, !dbg !379
  %conv1.i.i.i = sitofp i64 %conv.i.i.i to double, !dbg !381
  %sub.i290.i.i = fsub double %mul.i.i, %conv1.i.i.i, !dbg !381
  call void @llvm.dbg.value(metadata !{double %sub.i290.i.i}, i64 0, metadata !377) #2, !dbg !381
  %not.cmp.i.i.i = fcmp oge double %sub.i290.i.i, 5.000000e-01, !dbg !382
  %inc.i.i.i = zext i1 %not.cmp.i.i.i to i64, !dbg !382
  %intpart.0.i.i.i = add nsw i64 %inc.i.i.i, %conv.i.i.i, !dbg !382
  call void @llvm.dbg.value(metadata !{i64 %intpart.0.i.i.i}, i64 0, metadata !383) #2, !dbg !368
  %conv18.i.i = sitofp i64 %intpart.0.i.i.i to double, !dbg !384
  call void @llvm.dbg.value(metadata !{i32 %..max.i.i}, i64 0, metadata !385) #2, !dbg !386
  call void @llvm.dbg.value(metadata !370, i64 0, metadata !387) #2, !dbg !388
  br i1 %tobool2.i291.i.i, label %pow10.exit289.i.i, label %while.body.i287.i.i, !dbg !389

while.body.i287.i.i:                              ; preds = %pow10.exit299.i.i, %while.body.i287.i.i
  %result.04.i282.i.i = phi double [ %mul.i284.i.i, %while.body.i287.i.i ], [ 1.000000e+00, %pow10.exit299.i.i ]
  %exp.addr.03.i283.i.i = phi i32 [ %dec.i285.i.i, %while.body.i287.i.i ], [ %..max.i.i, %pow10.exit299.i.i ]
  %mul.i284.i.i = fmul double %result.04.i282.i.i, 1.000000e+01, !dbg !390
  call void @llvm.dbg.value(metadata !{double %mul.i284.i.i}, i64 0, metadata !387) #2, !dbg !390
  %dec.i285.i.i = add nsw i32 %exp.addr.03.i283.i.i, -1, !dbg !391
  call void @llvm.dbg.value(metadata !{i32 %dec.i285.i.i}, i64 0, metadata !385) #2, !dbg !391
  %tobool.i286.i.i = icmp eq i32 %dec.i285.i.i, 0, !dbg !389
  br i1 %tobool.i286.i.i, label %pow10.exit289.i.i, label %while.body.i287.i.i, !dbg !389

pow10.exit289.i.i:                                ; preds = %while.body.i287.i.i, %pow10.exit299.i.i
  %result.0.lcssa.i288.i.i = phi double [ 1.000000e+00, %pow10.exit299.i.i ], [ %mul.i284.i.i, %while.body.i287.i.i ]
  %cmp20.i.i = fcmp ult double %conv18.i.i, %result.0.lcssa.i288.i.i, !dbg !384
  br i1 %cmp20.i.i, label %do.body.preheader.i.i, label %if.then22.i.i, !dbg !384

if.then22.i.i:                                    ; preds = %pow10.exit289.i.i
  %inc.i.i = add nsw i64 %conv.i.i, 1, !dbg !392
  call void @llvm.dbg.value(metadata !{i64 %inc.i.i}, i64 0, metadata !363) #2, !dbg !392
  call void @llvm.dbg.value(metadata !{i32 %..max.i.i}, i64 0, metadata !394) #2, !dbg !396
  call void @llvm.dbg.value(metadata !370, i64 0, metadata !397) #2, !dbg !398
  br i1 %tobool2.i291.i.i, label %pow10.exit.i.i, label %while.body.i.i.i, !dbg !399

while.body.i.i.i:                                 ; preds = %if.then22.i.i, %while.body.i.i.i
  %result.04.i.i.i = phi double [ %mul.i.i.i, %while.body.i.i.i ], [ 1.000000e+00, %if.then22.i.i ]
  %exp.addr.03.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i ], [ %..max.i.i, %if.then22.i.i ]
  %mul.i.i.i = fmul double %result.04.i.i.i, 1.000000e+01, !dbg !400
  call void @llvm.dbg.value(metadata !{double %mul.i.i.i}, i64 0, metadata !397) #2, !dbg !400
  %dec.i.i.i = add nsw i32 %exp.addr.03.i.i.i, -1, !dbg !401
  call void @llvm.dbg.value(metadata !{i32 %dec.i.i.i}, i64 0, metadata !394) #2, !dbg !401
  %tobool.i.i.i = icmp eq i32 %dec.i.i.i, 0, !dbg !399
  br i1 %tobool.i.i.i, label %pow10.exit.i.i, label %while.body.i.i.i, !dbg !399

pow10.exit.i.i:                                   ; preds = %while.body.i.i.i, %if.then22.i.i
  %result.0.lcssa.i.i.i = phi double [ 1.000000e+00, %if.then22.i.i ], [ %mul.i.i.i, %while.body.i.i.i ]
  %sub25.i.i = fsub double %conv18.i.i, %result.0.lcssa.i.i.i, !dbg !395
  %conv26.i.i = fptosi double %sub25.i.i to i64, !dbg !395
  call void @llvm.dbg.value(metadata !{i64 %conv26.i.i}, i64 0, metadata !383) #2, !dbg !395
  br label %do.body.preheader.i.i, !dbg !402

do.body.preheader.i.i:                            ; preds = %pow10.exit.i.i, %pow10.exit289.i.i
  %intpart.0.ph.i.i = phi i64 [ %conv.i.i, %pow10.exit289.i.i ], [ %inc.i.i, %pow10.exit.i.i ]
  %fracpart.0.ph.i.i = phi i64 [ %intpart.0.i.i.i, %pow10.exit289.i.i ], [ %conv26.i.i, %pow10.exit.i.i ]
  br label %do.body.i.i, !dbg !403

do.body.i.i:                                      ; preds = %land.rhs.i.i, %do.body.preheader.i.i
  %indvars.iv337.i.i = phi i64 [ 0, %do.body.preheader.i.i ], [ %indvars.iv.next338.i.i, %land.rhs.i.i ]
  %iplace.0.i.i = phi i32 [ 0, %do.body.preheader.i.i ], [ %inc29.i.i, %land.rhs.i.i ]
  %intpart.0.i.i = phi i64 [ %intpart.0.ph.i.i, %do.body.preheader.i.i ], [ %div.i.i, %land.rhs.i.i ]
  %rem.i.i = srem i64 %intpart.0.i.i, 10, !dbg !403
  %arrayidx.i632.i = getelementptr inbounds [17 x i8]* @.str2, i64 0, i64 %rem.i.i, !dbg !403
  %87 = load i8* %arrayidx.i632.i, align 1, !dbg !403, !tbaa !183
  %indvars.iv.next338.i.i = add i64 %indvars.iv337.i.i, 1
  %inc29.i.i = add nsw i32 %iplace.0.i.i, 1, !dbg !403
  call void @llvm.dbg.value(metadata !{i32 %inc29.i.i}, i64 0, metadata !335) #2, !dbg !403
  %arrayidx30.i.i = getelementptr inbounds [20 x i8]* %iconvert.i.i, i64 0, i64 %indvars.iv337.i.i, !dbg !403
  store i8 %87, i8* %arrayidx30.i.i, align 1, !dbg !403, !tbaa !183
  %intpart.0.off.i.i = add i64 %intpart.0.i.i, 9, !dbg !405
  %88 = icmp ugt i64 %intpart.0.off.i.i, 18, !dbg !405
  br i1 %88, label %land.rhs.i.i, label %do.end.i.i, !dbg !405

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %div.i.i = sdiv i64 %intpart.0.i.i, 10, !dbg !406
  %89 = trunc i64 %indvars.iv.next338.i.i to i32, !dbg !405
  %cmp32.i.i = icmp slt i32 %89, 20, !dbg !405
  br i1 %cmp32.i.i, label %do.body.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i, %do.body.i.i
  %cmp34.i.i = icmp eq i32 %inc29.i.i, 20, !dbg !407
  call void @llvm.dbg.value(metadata !{i32 %iplace.0.i.i}, i64 0, metadata !335) #2, !dbg !407
  %iplace.0.inc29.i.i = select i1 %cmp34.i.i, i32 %iplace.0.i.i, i32 %inc29.i.i, !dbg !407
  %idxprom38.i.i = sext i32 %iplace.0.inc29.i.i to i64, !dbg !408
  %arrayidx39.i.i = getelementptr inbounds [20 x i8]* %iconvert.i.i, i64 0, i64 %idxprom38.i.i, !dbg !408
  store i8 0, i8* %arrayidx39.i.i, align 1, !dbg !408, !tbaa !183
  br label %do.body40.i.i, !dbg !409

do.body40.i.i:                                    ; preds = %land.rhs51.i.i, %do.end.i.i
  %indvars.iv335.i.i = phi i64 [ %indvars.iv.next336.i.i, %land.rhs51.i.i ], [ 0, %do.end.i.i ]
  %fplace.0.i.i = phi i32 [ %inc45.i.i, %land.rhs51.i.i ], [ 0, %do.end.i.i ]
  %fracpart.1.i.i = phi i64 [ %div48.i.i, %land.rhs51.i.i ], [ %fracpart.0.ph.i.i, %do.end.i.i ]
  %rem41.i.i = srem i64 %fracpart.1.i.i, 10, !dbg !410
  %arrayidx44.i.i = getelementptr inbounds [17 x i8]* @.str2, i64 0, i64 %rem41.i.i, !dbg !410
  %90 = load i8* %arrayidx44.i.i, align 1, !dbg !410, !tbaa !183
  %indvars.iv.next336.i.i = add i64 %indvars.iv335.i.i, 1
  %inc45.i.i = add nsw i32 %fplace.0.i.i, 1, !dbg !410
  call void @llvm.dbg.value(metadata !{i32 %inc45.i.i}, i64 0, metadata !337) #2, !dbg !410
  %arrayidx47.i.i = getelementptr inbounds [20 x i8]* %fconvert.i.i, i64 0, i64 %indvars.iv335.i.i, !dbg !410
  store i8 %90, i8* %arrayidx47.i.i, align 1, !dbg !410, !tbaa !183
  %fracpart.1.off.i.i = add i64 %fracpart.1.i.i, 9, !dbg !412
  %91 = icmp ugt i64 %fracpart.1.off.i.i, 18, !dbg !412
  br i1 %91, label %land.rhs51.i.i, label %do.end55.i.i, !dbg !412

land.rhs51.i.i:                                   ; preds = %do.body40.i.i
  %div48.i.i = sdiv i64 %fracpart.1.i.i, 10, !dbg !413
  %92 = trunc i64 %indvars.iv.next336.i.i to i32, !dbg !412
  %cmp52.i.i = icmp slt i32 %92, 20, !dbg !412
  br i1 %cmp52.i.i, label %do.body40.i.i, label %do.end55.i.i

do.end55.i.i:                                     ; preds = %land.rhs51.i.i, %do.body40.i.i
  %cmp56.i.i = icmp eq i32 %inc45.i.i, 20, !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %fplace.0.i.i}, i64 0, metadata !337) #2, !dbg !414
  %fplace.0.inc45.i.i = select i1 %cmp56.i.i, i32 %fplace.0.i.i, i32 %inc45.i.i, !dbg !414
  %idxprom61.i.i = sext i32 %fplace.0.inc45.i.i to i64, !dbg !415
  %arrayidx62.i.i = getelementptr inbounds [20 x i8]* %fconvert.i.i, i64 0, i64 %idxprom61.i.i, !dbg !415
  store i8 0, i8* %arrayidx62.i.i, align 1, !dbg !415, !tbaa !183
  %tobool66.i.i = icmp ne i32 %signvalue.0.i.i, 0, !dbg !416
  %cond67.neg.i.i = sext i1 %tobool66.i.i to i32
  %sub63.i.i = add i32 %min.0656.i, -1, !dbg !416
  %sub64.i.i = sub i32 %sub63.i.i, %..max.i.i, !dbg !416
  %sub65.i.i = add i32 %sub64.i.i, %cond67.neg.i.i, !dbg !416
  %sub68.i.i = sub i32 %sub65.i.i, %iplace.0.inc29.i.i, !dbg !416
  call void @llvm.dbg.value(metadata !{i32 %sub68.i.i}, i64 0, metadata !339) #2, !dbg !416
  %sub69.i.i = sub nsw i32 %..max.i.i, %fplace.0.inc45.i.i, !dbg !417
  call void @llvm.dbg.value(metadata !{i32 %sub69.i.i}, i64 0, metadata !341) #2, !dbg !417
  %cmp70.i.i = icmp slt i32 %sub69.i.i, 0, !dbg !418
  %.sub69.i.i = select i1 %cmp70.i.i, i32 0, i32 %sub69.i.i, !dbg !418
  call void @llvm.dbg.value(metadata !{i32 %.sub69.i.i}, i64 0, metadata !341) #2, !dbg !419
  %cmp74.i.i = icmp slt i32 %sub68.i.i, 0, !dbg !420
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !339) #2, !dbg !421
  %padlen.0.i.i = select i1 %cmp74.i.i, i32 0, i32 %sub68.i.i, !dbg !420
  %and78.i.i = and i32 %flags.0659.i, 1, !dbg !422
  %tobool79.i.i = icmp eq i32 %and78.i.i, 0, !dbg !422
  %sub81.i.i = sub nsw i32 0, %padlen.0.i.i, !dbg !423
  call void @llvm.dbg.value(metadata !{i32 %sub81.i.i}, i64 0, metadata !339) #2, !dbg !423
  %padlen.0.sub81.i.i = select i1 %tobool79.i.i, i32 %padlen.0.i.i, i32 %sub81.i.i, !dbg !422
  %and83.i.i = and i32 %flags.0659.i, 16, !dbg !424
  %tobool84.i.i = icmp ne i32 %and83.i.i, 0, !dbg !424
  %cmp85.i.i = icmp sgt i32 %padlen.0.sub81.i.i, 0, !dbg !424
  %or.cond.i.i = and i1 %tobool84.i.i, %cmp85.i.i, !dbg !424
  br i1 %or.cond.i.i, label %if.then87.i.i, label %while.cond100.preheader.i.i, !dbg !424

while.cond100.preheader.i.i:                      ; preds = %do.end55.i.i
  br i1 %cmp85.i.i, label %while.body103.i.preheader.i, label %while.end107.i.i, !dbg !425

while.body103.i.preheader.i:                      ; preds = %while.cond100.preheader.i.i
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !426) #2, !dbg !429
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !429
  %.pre668.i = load i64* %currlen.i, align 8, !dbg !429, !tbaa !200
  br label %while.body103.i.i, !dbg !429

if.then87.i.i:                                    ; preds = %do.end55.i.i
  br i1 %tobool66.i.i, label %if.then89.i.i, label %while.cond.preheader.i.i, !dbg !430

if.then89.i.i:                                    ; preds = %if.then87.i.i
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !432) #2, !dbg !435
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !435
  %93 = load i64* %currlen.i, align 8, !dbg !435, !tbaa !200
  %add.i276.i.i = add i64 %93, 1, !dbg !435
  %cmp.i277.i.i = icmp ult i64 %add.i276.i.i, %count, !dbg !435
  br i1 %cmp.i277.i.i, label %if.then.i279.i.i, label %dopr_outch.exit280.i.i, !dbg !435

if.then.i279.i.i:                                 ; preds = %if.then89.i.i
  %conv90.i.i = trunc i32 %signvalue.0.i.i to i8, !dbg !433
  call void @llvm.dbg.value(metadata !{i64 %add.i276.i.i}, i64 0, metadata !432) #2, !dbg !436
  call void @llvm.dbg.value(metadata !{i64 %add.i276.i.i}, i64 0, metadata !78), !dbg !436
  store i64 %add.i276.i.i, i64* %currlen.i, align 8, !dbg !436, !tbaa !200
  %arrayidx.i278.i.i = getelementptr inbounds i8* %str, i64 %93, !dbg !436
  store i8 %conv90.i.i, i8* %arrayidx.i278.i.i, align 1, !dbg !436, !tbaa !183
  br label %dopr_outch.exit280.i.i, !dbg !436

dopr_outch.exit280.i.i:                           ; preds = %if.then.i279.i.i, %if.then89.i.i
  call void @llvm.dbg.value(metadata !275, i64 0, metadata !345) #2, !dbg !433
  %dec92.i.i = add nsw i32 %padlen.0.sub81.i.i, -1, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %dec92.i.i}, i64 0, metadata !339) #2, !dbg !437
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !331) #2, !dbg !438
  br label %while.cond.preheader.i.i, !dbg !439

while.cond.preheader.i.i:                         ; preds = %dopr_outch.exit280.i.i, %if.then87.i.i
  %padlen.2.ph.i.i = phi i32 [ %padlen.0.sub81.i.i, %if.then87.i.i ], [ %dec92.i.i, %dopr_outch.exit280.i.i ]
  %total.0.ph.i.i = phi i32 [ 0, %if.then87.i.i ], [ 1, %dopr_outch.exit280.i.i ]
  %cmp94324.i.i = icmp sgt i32 %padlen.2.ph.i.i, 0, !dbg !440
  br i1 %cmp94324.i.i, label %while.body.lr.ph.i.i, label %while.cond114.preheader.i.i, !dbg !440

while.body.lr.ph.i.i:                             ; preds = %while.cond.preheader.i.i
  %94 = add i32 %total.0.ph.i.i, %padlen.2.ph.i.i, !dbg !440
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !441) #2, !dbg !444
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !444
  %.pre.i = load i64* %currlen.i, align 8, !dbg !444, !tbaa !200
  br label %while.body.i.i, !dbg !440

while.body.i.i:                                   ; preds = %dopr_outch.exit275.i.i, %while.body.lr.ph.i.i
  %95 = phi i64 [ %.pre.i, %while.body.lr.ph.i.i ], [ %96, %dopr_outch.exit275.i.i ], !dbg !444
  %total.0326.i.i = phi i32 [ %total.0.ph.i.i, %while.body.lr.ph.i.i ], [ %add97.i.i, %dopr_outch.exit275.i.i ]
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !441) #2, !dbg !444
  %add.i271.i.i = add i64 %95, 1, !dbg !444
  %cmp.i272.i.i = icmp ult i64 %add.i271.i.i, %count, !dbg !444
  br i1 %cmp.i272.i.i, label %if.then.i274.i.i, label %dopr_outch.exit275.i.i, !dbg !444

if.then.i274.i.i:                                 ; preds = %while.body.i.i
  call void @llvm.dbg.value(metadata !{i64 %add.i271.i.i}, i64 0, metadata !441) #2, !dbg !445
  call void @llvm.dbg.value(metadata !{i64 %add.i271.i.i}, i64 0, metadata !78), !dbg !445
  store i64 %add.i271.i.i, i64* %currlen.i, align 8, !dbg !445, !tbaa !200
  %arrayidx.i273.i.i = getelementptr inbounds i8* %str, i64 %95, !dbg !445
  store i8 48, i8* %arrayidx.i273.i.i, align 1, !dbg !445, !tbaa !183
  br label %dopr_outch.exit275.i.i, !dbg !445

dopr_outch.exit275.i.i:                           ; preds = %if.then.i274.i.i, %while.body.i.i
  %96 = phi i64 [ %add.i271.i.i, %if.then.i274.i.i ], [ %95, %while.body.i.i ]
  %add97.i.i = add nsw i32 %total.0326.i.i, 1, !dbg !442
  call void @llvm.dbg.value(metadata !{i32 %94}, i64 0, metadata !345) #2, !dbg !442
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !339) #2, !dbg !446
  %exitcond334.i.i = icmp eq i32 %add97.i.i, %94, !dbg !440
  br i1 %exitcond334.i.i, label %while.cond114.preheader.i.i, label %while.body.i.i, !dbg !440

while.body103.i.i:                                ; preds = %dopr_outch.exit270.i.i, %while.body103.i.preheader.i
  %97 = phi i64 [ %98, %dopr_outch.exit270.i.i ], [ %.pre668.i, %while.body103.i.preheader.i ], !dbg !429
  %total.1321.i.i = phi i32 [ %phitmp.i, %dopr_outch.exit270.i.i ], [ 1, %while.body103.i.preheader.i ]
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !426) #2, !dbg !429
  %add.i266.i.i = add i64 %97, 1, !dbg !429
  %cmp.i267.i.i = icmp ult i64 %add.i266.i.i, %count, !dbg !429
  br i1 %cmp.i267.i.i, label %if.then.i269.i.i, label %dopr_outch.exit270.i.i, !dbg !429

if.then.i269.i.i:                                 ; preds = %while.body103.i.i
  call void @llvm.dbg.value(metadata !{i64 %add.i266.i.i}, i64 0, metadata !426) #2, !dbg !447
  call void @llvm.dbg.value(metadata !{i64 %add.i266.i.i}, i64 0, metadata !78), !dbg !447
  store i64 %add.i266.i.i, i64* %currlen.i, align 8, !dbg !447, !tbaa !200
  %arrayidx.i268.i.i = getelementptr inbounds i8* %str, i64 %97, !dbg !447
  store i8 32, i8* %arrayidx.i268.i.i, align 1, !dbg !447, !tbaa !183
  br label %dopr_outch.exit270.i.i, !dbg !447

dopr_outch.exit270.i.i:                           ; preds = %if.then.i269.i.i, %while.body103.i.i
  %98 = phi i64 [ %add.i266.i.i, %if.then.i269.i.i ], [ %97, %while.body103.i.i ]
  call void @llvm.dbg.value(metadata !{i32 %padlen.0.sub81.i.i}, i64 0, metadata !345) #2, !dbg !427
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !339) #2, !dbg !448
  %exitcond333.i.i = icmp eq i32 %total.1321.i.i, %padlen.0.sub81.i.i, !dbg !425
  %phitmp.i = add i32 %total.1321.i.i, 1, !dbg !425
  br i1 %exitcond333.i.i, label %while.end107.i.i, label %while.body103.i.i, !dbg !425

while.end107.i.i:                                 ; preds = %dopr_outch.exit270.i.i, %while.cond100.preheader.i.i
  %total.1.lcssa.i.i = phi i32 [ 0, %while.cond100.preheader.i.i ], [ %padlen.0.sub81.i.i, %dopr_outch.exit270.i.i ]
  %padlen.3.lcssa.i.i = phi i32 [ %padlen.0.sub81.i.i, %while.cond100.preheader.i.i ], [ 0, %dopr_outch.exit270.i.i ]
  %tobool108.i.i = icmp eq i32 %signvalue.0.i.i, 0, !dbg !449
  br i1 %tobool108.i.i, label %while.cond114.preheader.i.i, label %if.then109.i.i, !dbg !449

if.then109.i.i:                                   ; preds = %while.end107.i.i
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !450) #2, !dbg !452
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !452
  %99 = load i64* %currlen.i, align 8, !dbg !452, !tbaa !200
  %add.i261.i.i = add i64 %99, 1, !dbg !452
  %cmp.i262.i.i = icmp ult i64 %add.i261.i.i, %count, !dbg !452
  br i1 %cmp.i262.i.i, label %if.then.i264.i.i, label %dopr_outch.exit265.i.i, !dbg !452

if.then.i264.i.i:                                 ; preds = %if.then109.i.i
  %conv110.i.i = trunc i32 %signvalue.0.i.i to i8, !dbg !451
  call void @llvm.dbg.value(metadata !{i64 %add.i261.i.i}, i64 0, metadata !450) #2, !dbg !453
  call void @llvm.dbg.value(metadata !{i64 %add.i261.i.i}, i64 0, metadata !78), !dbg !453
  store i64 %add.i261.i.i, i64* %currlen.i, align 8, !dbg !453, !tbaa !200
  %arrayidx.i263.i.i = getelementptr inbounds i8* %str, i64 %99, !dbg !453
  store i8 %conv110.i.i, i8* %arrayidx.i263.i.i, align 1, !dbg !453, !tbaa !183
  br label %dopr_outch.exit265.i.i, !dbg !453

dopr_outch.exit265.i.i:                           ; preds = %if.then.i264.i.i, %if.then109.i.i
  %add112.i.i = add nsw i32 %total.1.lcssa.i.i, 1, !dbg !451
  call void @llvm.dbg.value(metadata !{i32 %add112.i.i}, i64 0, metadata !345) #2, !dbg !451
  br label %while.cond114.preheader.i.i, !dbg !451

while.cond114.preheader.i.i:                      ; preds = %dopr_outch.exit275.i.i, %dopr_outch.exit265.i.i, %while.end107.i.i, %while.cond.preheader.i.i
  %padlen.3.lcssa342.i.i = phi i32 [ %padlen.3.lcssa.i.i, %while.end107.i.i ], [ %padlen.3.lcssa.i.i, %dopr_outch.exit265.i.i ], [ %padlen.2.ph.i.i, %while.cond.preheader.i.i ], [ 0, %dopr_outch.exit275.i.i ]
  %total.2.ph.i.i = phi i32 [ %total.1.lcssa.i.i, %while.end107.i.i ], [ %add112.i.i, %dopr_outch.exit265.i.i ], [ %total.0.ph.i.i, %while.cond.preheader.i.i ], [ %94, %dopr_outch.exit275.i.i ]
  %cmp115315.i.i = icmp sgt i32 %iplace.0.inc29.i.i, 0, !dbg !454
  br i1 %cmp115315.i.i, label %while.body117.i.preheader.i, label %while.end123.i.i, !dbg !454

while.body117.i.preheader.i:                      ; preds = %while.cond114.preheader.i.i
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !455) #2, !dbg !457
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !457
  %.pre667.i = load i64* %currlen.i, align 8, !dbg !457, !tbaa !200
  br label %while.body117.i.i, !dbg !454

while.body117.i.i:                                ; preds = %dopr_outch.exit260.i.i, %while.body117.i.preheader.i
  %100 = phi i64 [ %.pre667.i, %while.body117.i.preheader.i ], [ %102, %dopr_outch.exit260.i.i ], !dbg !454
  %indvars.iv331.i.i = phi i64 [ %idxprom38.i.i, %while.body117.i.preheader.i ], [ %indvars.iv.next332.i.i, %dopr_outch.exit260.i.i ]
  %indvars.iv.next332.i.i = add i64 %indvars.iv331.i.i, -1, !dbg !454
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !455) #2, !dbg !457
  %add.i256.i.i = add i64 %100, 1, !dbg !457
  %cmp.i257.i.i = icmp ult i64 %add.i256.i.i, %count, !dbg !457
  br i1 %cmp.i257.i.i, label %if.then.i259.i.i, label %dopr_outch.exit260.i.i, !dbg !457

if.then.i259.i.i:                                 ; preds = %while.body117.i.i
  %arrayidx120.i.i = getelementptr inbounds [20 x i8]* %iconvert.i.i, i64 0, i64 %indvars.iv.next332.i.i, !dbg !456
  %101 = load i8* %arrayidx120.i.i, align 1, !dbg !456, !tbaa !183
  call void @llvm.dbg.value(metadata !{i64 %add.i256.i.i}, i64 0, metadata !455) #2, !dbg !458
  call void @llvm.dbg.value(metadata !{i64 %add.i256.i.i}, i64 0, metadata !78), !dbg !458
  store i64 %add.i256.i.i, i64* %currlen.i, align 8, !dbg !458, !tbaa !200
  %arrayidx.i258.i.i = getelementptr inbounds i8* %str, i64 %100, !dbg !458
  store i8 %101, i8* %arrayidx.i258.i.i, align 1, !dbg !458, !tbaa !183
  br label %dopr_outch.exit260.i.i, !dbg !458

dopr_outch.exit260.i.i:                           ; preds = %if.then.i259.i.i, %while.body117.i.i
  %102 = phi i64 [ %add.i256.i.i, %if.then.i259.i.i ], [ %100, %while.body117.i.i ]
  %103 = trunc i64 %indvars.iv.next332.i.i to i32, !dbg !454
  %cmp115.i.i = icmp sgt i32 %103, 0, !dbg !454
  br i1 %cmp115.i.i, label %while.body117.i.i, label %while.cond114.while.end123_crit_edge.i.i, !dbg !454

while.cond114.while.end123_crit_edge.i.i:         ; preds = %dopr_outch.exit260.i.i
  %104 = add i32 %total.2.ph.i.i, %iplace.0.inc29.i.i, !dbg !454
  br label %while.end123.i.i, !dbg !454

while.end123.i.i:                                 ; preds = %while.cond114.while.end123_crit_edge.i.i, %while.cond114.preheader.i.i
  %total.2.lcssa.i.i = phi i32 [ %104, %while.cond114.while.end123_crit_edge.i.i ], [ %total.2.ph.i.i, %while.cond114.preheader.i.i ]
  %cmp124.i.i = icmp sgt i32 %..max.i.i, 0, !dbg !459
  br i1 %cmp124.i.i, label %if.then126.i.i, label %while.cond140.preheader.i.i, !dbg !459

while.cond140.preheader.loopexit.i.loopexit.i:    ; preds = %while.cond129.backedge.i.i
  %105 = add i32 %total.2.lcssa.i.i, %fplace.0.inc45.i.i, !dbg !460
  br label %while.cond140.preheader.loopexit.i.i

while.cond140.preheader.loopexit.i.i:             ; preds = %while.cond129.preheader.i.i, %while.cond140.preheader.loopexit.i.loopexit.i
  %total.3.lcssa.in.i.i = phi i32 [ %total.2.lcssa.i.i, %while.cond129.preheader.i.i ], [ %105, %while.cond140.preheader.loopexit.i.loopexit.i ]
  %total.3.lcssa.i.i = add i32 %total.3.lcssa.in.i.i, 1, !dbg !460
  br label %while.cond140.preheader.i.i

while.cond140.preheader.i.i:                      ; preds = %while.cond140.preheader.loopexit.i.i, %while.end123.i.i
  %total.4.ph.i.i = phi i32 [ %total.2.lcssa.i.i, %while.end123.i.i ], [ %total.3.lcssa.i.i, %while.cond140.preheader.loopexit.i.i ]
  %cmp141306.i.i = icmp sgt i32 %.sub69.i.i, 0, !dbg !462
  br i1 %cmp141306.i.i, label %while.body143.lr.ph.i.i, label %while.cond148.preheader.i.i, !dbg !462

while.body143.lr.ph.i.i:                          ; preds = %while.cond140.preheader.i.i
  %106 = xor i32 %fplace.0.inc45.i.i, -1, !dbg !462
  %107 = xor i32 %.max.i.i, -1, !dbg !462
  %108 = icmp sgt i32 %107, -10
  %smax.i.i = select i1 %108, i32 %107, i32 -10
  %109 = sub i32 %106, %smax.i.i, !dbg !462
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !463) #2, !dbg !466
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !466
  %.pre664.i = load i64* %currlen.i, align 8, !dbg !466, !tbaa !200
  br label %while.body143.i.i, !dbg !462

if.then126.i.i:                                   ; preds = %while.end123.i.i
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !467) #2, !dbg !469
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !469
  %110 = load i64* %currlen.i, align 8, !dbg !469, !tbaa !200
  %add.i251.i.i = add i64 %110, 1, !dbg !469
  %cmp.i252.i.i = icmp ult i64 %add.i251.i.i, %count, !dbg !469
  br i1 %cmp.i252.i.i, label %if.then.i254.i.i, label %while.cond129.preheader.i.i, !dbg !469

if.then.i254.i.i:                                 ; preds = %if.then126.i.i
  call void @llvm.dbg.value(metadata !{i64 %add.i251.i.i}, i64 0, metadata !467) #2, !dbg !470
  call void @llvm.dbg.value(metadata !{i64 %add.i251.i.i}, i64 0, metadata !78), !dbg !470
  store i64 %add.i251.i.i, i64* %currlen.i, align 8, !dbg !470, !tbaa !200
  %arrayidx.i253.i.i = getelementptr inbounds i8* %str, i64 %110, !dbg !470
  store i8 46, i8* %arrayidx.i253.i.i, align 1, !dbg !470, !tbaa !183
  br label %while.cond129.preheader.i.i, !dbg !470

while.cond129.preheader.i.i:                      ; preds = %if.then.i254.i.i, %if.then126.i.i
  %111 = phi i64 [ %add.i251.i.i, %if.then.i254.i.i ], [ %110, %if.then126.i.i ]
  %cmp130311.i.i = icmp sgt i32 %fplace.0.inc45.i.i, 0, !dbg !460
  br i1 %cmp130311.i.i, label %while.body132.i.i, label %while.cond140.preheader.loopexit.i.i, !dbg !460

while.body132.i.i:                                ; preds = %while.cond129.preheader.i.i, %while.cond129.backedge.i.i
  %112 = phi i64 [ %113, %while.cond129.backedge.i.i ], [ %111, %while.cond129.preheader.i.i ], !dbg !460
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %while.cond129.backedge.i.i ], [ %idxprom61.i.i, %while.cond129.preheader.i.i ]
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -1, !dbg !460
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !471) #2, !dbg !473
  %add.i246.i.i = add i64 %112, 1, !dbg !473
  %cmp.i247.i.i = icmp ult i64 %add.i246.i.i, %count, !dbg !473
  br i1 %cmp.i247.i.i, label %if.then.i249.i.i, label %while.cond129.backedge.i.i, !dbg !473

while.cond129.backedge.i.i:                       ; preds = %if.then.i249.i.i, %while.body132.i.i
  %113 = phi i64 [ %add.i246.i.i, %if.then.i249.i.i ], [ %112, %while.body132.i.i ]
  %114 = trunc i64 %indvars.iv.next.i.i to i32, !dbg !460
  %cmp130.i.i = icmp sgt i32 %114, 0, !dbg !460
  br i1 %cmp130.i.i, label %while.body132.i.i, label %while.cond140.preheader.loopexit.i.loopexit.i, !dbg !460

if.then.i249.i.i:                                 ; preds = %while.body132.i.i
  %arrayidx135.i.i = getelementptr inbounds [20 x i8]* %fconvert.i.i, i64 0, i64 %indvars.iv.next.i.i, !dbg !472
  %115 = load i8* %arrayidx135.i.i, align 1, !dbg !472, !tbaa !183
  call void @llvm.dbg.value(metadata !{i64 %add.i246.i.i}, i64 0, metadata !471) #2, !dbg !474
  call void @llvm.dbg.value(metadata !{i64 %add.i246.i.i}, i64 0, metadata !78), !dbg !474
  store i64 %add.i246.i.i, i64* %currlen.i, align 8, !dbg !474, !tbaa !200
  %arrayidx.i248.i.i = getelementptr inbounds i8* %str, i64 %112, !dbg !474
  store i8 %115, i8* %arrayidx.i248.i.i, align 1, !dbg !474, !tbaa !183
  br label %while.cond129.backedge.i.i, !dbg !474

while.cond140.while.cond148.preheader_crit_edge.i.i: ; preds = %dopr_outch.exit245.i.i
  %116 = icmp sgt i32 %109, 0
  %smax329.i.i = select i1 %116, i32 %109, i32 0
  %117 = add i32 %total.4.ph.i.i, %smax329.i.i, !dbg !462
  br label %while.cond148.preheader.i.i, !dbg !462

while.cond148.preheader.i.i:                      ; preds = %while.cond140.while.cond148.preheader_crit_edge.i.i, %while.cond140.preheader.i.i
  %total.4.lcssa.i.i = phi i32 [ %117, %while.cond140.while.cond148.preheader_crit_edge.i.i ], [ %total.4.ph.i.i, %while.cond140.preheader.i.i ]
  %cmp149303.i.i = icmp slt i32 %padlen.3.lcssa342.i.i, 0, !dbg !475
  br i1 %cmp149303.i.i, label %while.body151.i.preheader.i, label %fmtfp.exit.i, !dbg !475

while.body151.i.preheader.i:                      ; preds = %while.cond148.preheader.i.i
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !476) #2, !dbg !479
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !479
  %.pre666.i = load i64* %currlen.i, align 8, !dbg !479, !tbaa !200
  br label %while.body151.i.i, !dbg !479

while.body143.i.i:                                ; preds = %dopr_outch.exit245.i.i, %while.body143.lr.ph.i.i
  %118 = phi i64 [ %.pre664.i, %while.body143.lr.ph.i.i ], [ %119, %dopr_outch.exit245.i.i ], !dbg !466
  %zpadlen.0307.i.i = phi i32 [ %.sub69.i.i, %while.body143.lr.ph.i.i ], [ %dec146.i.i, %dopr_outch.exit245.i.i ]
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !463) #2, !dbg !466
  %add.i241.i.i = add i64 %118, 1, !dbg !466
  %cmp.i242.i.i = icmp ult i64 %add.i241.i.i, %count, !dbg !466
  br i1 %cmp.i242.i.i, label %if.then.i244.i.i, label %dopr_outch.exit245.i.i, !dbg !466

if.then.i244.i.i:                                 ; preds = %while.body143.i.i
  call void @llvm.dbg.value(metadata !{i64 %add.i241.i.i}, i64 0, metadata !463) #2, !dbg !480
  call void @llvm.dbg.value(metadata !{i64 %add.i241.i.i}, i64 0, metadata !78), !dbg !480
  store i64 %add.i241.i.i, i64* %currlen.i, align 8, !dbg !480, !tbaa !200
  %arrayidx.i243.i.i = getelementptr inbounds i8* %str, i64 %118, !dbg !480
  store i8 48, i8* %arrayidx.i243.i.i, align 1, !dbg !480, !tbaa !183
  br label %dopr_outch.exit245.i.i, !dbg !480

dopr_outch.exit245.i.i:                           ; preds = %if.then.i244.i.i, %while.body143.i.i
  %119 = phi i64 [ %add.i241.i.i, %if.then.i244.i.i ], [ %118, %while.body143.i.i ]
  %dec146.i.i = add nsw i32 %zpadlen.0307.i.i, -1, !dbg !481
  call void @llvm.dbg.value(metadata !{i32 %dec146.i.i}, i64 0, metadata !341) #2, !dbg !481
  %cmp141.i.i = icmp sgt i32 %dec146.i.i, 0, !dbg !462
  br i1 %cmp141.i.i, label %while.body143.i.i, label %while.cond140.while.cond148.preheader_crit_edge.i.i, !dbg !462

while.body151.i.i:                                ; preds = %dopr_outch.exit.i.i, %while.body151.i.preheader.i
  %120 = phi i64 [ %.pre666.i, %while.body151.i.preheader.i ], [ %121, %dopr_outch.exit.i.i ], !dbg !479
  %padlen.4304.i.i = phi i32 [ %padlen.3.lcssa342.i.i, %while.body151.i.preheader.i ], [ %inc154.i.i, %dopr_outch.exit.i.i ]
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !476) #2, !dbg !479
  %add.i.i.i = add i64 %120, 1, !dbg !479
  %cmp.i239.i.i = icmp ult i64 %add.i.i.i, %count, !dbg !479
  br i1 %cmp.i239.i.i, label %if.then.i240.i.i, label %dopr_outch.exit.i.i, !dbg !479

if.then.i240.i.i:                                 ; preds = %while.body151.i.i
  call void @llvm.dbg.value(metadata !{i64 %add.i.i.i}, i64 0, metadata !476) #2, !dbg !482
  call void @llvm.dbg.value(metadata !{i64 %add.i.i.i}, i64 0, metadata !78), !dbg !482
  store i64 %add.i.i.i, i64* %currlen.i, align 8, !dbg !482, !tbaa !200
  %arrayidx.i.i.i = getelementptr inbounds i8* %str, i64 %120, !dbg !482
  store i8 32, i8* %arrayidx.i.i.i, align 1, !dbg !482, !tbaa !183
  br label %dopr_outch.exit.i.i, !dbg !482

dopr_outch.exit.i.i:                              ; preds = %if.then.i240.i.i, %while.body151.i.i
  %121 = phi i64 [ %add.i.i.i, %if.then.i240.i.i ], [ %120, %while.body151.i.i ]
  %inc154.i.i = add nsw i32 %padlen.4304.i.i, 1, !dbg !483
  call void @llvm.dbg.value(metadata !{i32 %inc154.i.i}, i64 0, metadata !339) #2, !dbg !483
  %exitcond.i.i = icmp eq i32 %inc154.i.i, 0, !dbg !475
  br i1 %exitcond.i.i, label %while.cond148.while.end155_crit_edge.i.i, label %while.body151.i.i, !dbg !475

while.cond148.while.end155_crit_edge.i.i:         ; preds = %dopr_outch.exit.i.i
  %122 = sub i32 %total.4.lcssa.i.i, %padlen.3.lcssa342.i.i, !dbg !475
  br label %fmtfp.exit.i, !dbg !475

fmtfp.exit.i:                                     ; preds = %while.cond148.while.end155_crit_edge.i.i, %while.cond148.preheader.i.i
  %total.5.lcssa.i.i = phi i32 [ %122, %while.cond148.while.end155_crit_edge.i.i ], [ %total.4.lcssa.i.i, %while.cond148.preheader.i.i ]
  call void @llvm.lifetime.end(i64 20, i8* %3) #2, !dbg !484
  call void @llvm.lifetime.end(i64 20, i8* %4) #2, !dbg !484
  %add323.i = add nsw i32 %total.5.lcssa.i.i, %total.0661.i, !dbg !212
  call void @llvm.dbg.value(metadata !{i32 %add323.i}, i64 0, metadata !206) #2, !dbg !212
  br label %sw.epilog481.i, !dbg !485

sw.bb326.i:                                       ; preds = %sw.bb98.i, %sw.bb98.i
  %cmp327.i = icmp eq i32 %cflags.0660.i, 3, !dbg !486
  %fp_offset331.i = load i32* %fp_offset_p.i, align 4, !dbg !487
  %fits_in_fp332.i = icmp ult i32 %fp_offset331.i, 161, !dbg !487
  br i1 %cmp327.i, label %if.then329.i, label %if.else341.i, !dbg !486

if.then329.i:                                     ; preds = %sw.bb326.i
  br i1 %fits_in_fp332.i, label %vaarg.in_reg333.i, label %vaarg.in_mem335.i, !dbg !487

vaarg.in_reg333.i:                                ; preds = %if.then329.i
  %123 = add i32 %fp_offset331.i, 16, !dbg !487
  store i32 %123, i32* %fp_offset_p.i, align 4, !dbg !487
  br label %sw.epilog481.i, !dbg !487

vaarg.in_mem335.i:                                ; preds = %if.then329.i
  %overflow_arg_area337.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !487
  %overflow_arg_area.next338.i = getelementptr i8* %overflow_arg_area337.i, i64 8, !dbg !487
  store i8* %overflow_arg_area.next338.i, i8** %overflow_arg_area_p.i, align 8, !dbg !487
  br label %sw.epilog481.i, !dbg !487

if.else341.i:                                     ; preds = %sw.bb326.i
  br i1 %fits_in_fp332.i, label %vaarg.in_reg345.i, label %vaarg.in_mem347.i, !dbg !488

vaarg.in_reg345.i:                                ; preds = %if.else341.i
  %124 = add i32 %fp_offset331.i, 16, !dbg !488
  store i32 %124, i32* %fp_offset_p.i, align 4, !dbg !488
  br label %sw.epilog481.i, !dbg !488

vaarg.in_mem347.i:                                ; preds = %if.else341.i
  %overflow_arg_area349.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !488
  %overflow_arg_area.next350.i = getelementptr i8* %overflow_arg_area349.i, i64 8, !dbg !488
  store i8* %overflow_arg_area.next350.i, i8** %overflow_arg_area_p.i, align 8, !dbg !488
  br label %sw.epilog481.i, !dbg !488

sw.bb356.i:                                       ; preds = %sw.bb98.i, %sw.bb98.i
  %cmp357.i = icmp eq i32 %cflags.0660.i, 3, !dbg !489
  %fp_offset361.i = load i32* %fp_offset_p.i, align 4, !dbg !490
  %fits_in_fp362.i = icmp ult i32 %fp_offset361.i, 161, !dbg !490
  br i1 %cmp357.i, label %if.then359.i, label %if.else371.i, !dbg !489

if.then359.i:                                     ; preds = %sw.bb356.i
  br i1 %fits_in_fp362.i, label %vaarg.in_reg363.i, label %vaarg.in_mem365.i, !dbg !490

vaarg.in_reg363.i:                                ; preds = %if.then359.i
  %125 = add i32 %fp_offset361.i, 16, !dbg !490
  store i32 %125, i32* %fp_offset_p.i, align 4, !dbg !490
  br label %sw.epilog481.i, !dbg !490

vaarg.in_mem365.i:                                ; preds = %if.then359.i
  %overflow_arg_area367.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !490
  %overflow_arg_area.next368.i = getelementptr i8* %overflow_arg_area367.i, i64 8, !dbg !490
  store i8* %overflow_arg_area.next368.i, i8** %overflow_arg_area_p.i, align 8, !dbg !490
  br label %sw.epilog481.i, !dbg !490

if.else371.i:                                     ; preds = %sw.bb356.i
  br i1 %fits_in_fp362.i, label %vaarg.in_reg375.i, label %vaarg.in_mem377.i, !dbg !491

vaarg.in_reg375.i:                                ; preds = %if.else371.i
  %126 = add i32 %fp_offset361.i, 16, !dbg !491
  store i32 %126, i32* %fp_offset_p.i, align 4, !dbg !491
  br label %sw.epilog481.i, !dbg !491

vaarg.in_mem377.i:                                ; preds = %if.else371.i
  %overflow_arg_area379.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !491
  %overflow_arg_area.next380.i = getelementptr i8* %overflow_arg_area379.i, i64 8, !dbg !491
  store i8* %overflow_arg_area.next380.i, i8** %overflow_arg_area_p.i, align 8, !dbg !491
  br label %sw.epilog481.i, !dbg !491

sw.bb384.i:                                       ; preds = %sw.bb98.i
  %gp_offset386.i = load i32* %gp_offset_p.i, align 4, !dbg !492
  %fits_in_gp387.i = icmp ult i32 %gp_offset386.i, 41, !dbg !492
  br i1 %fits_in_gp387.i, label %vaarg.in_reg388.i, label %vaarg.in_mem390.i, !dbg !492

vaarg.in_reg388.i:                                ; preds = %sw.bb384.i
  %reg_save_area389.i = load i8** %2, align 8, !dbg !492
  %127 = sext i32 %gp_offset386.i to i64, !dbg !492
  %128 = getelementptr i8* %reg_save_area389.i, i64 %127, !dbg !492
  %129 = add i32 %gp_offset386.i, 8, !dbg !492
  store i32 %129, i32* %gp_offset_p.i, align 4, !dbg !492
  br label %vaarg.end394.i, !dbg !492

vaarg.in_mem390.i:                                ; preds = %sw.bb384.i
  %overflow_arg_area392.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !492
  %overflow_arg_area.next393.i = getelementptr i8* %overflow_arg_area392.i, i64 8, !dbg !492
  store i8* %overflow_arg_area.next393.i, i8** %overflow_arg_area_p.i, align 8, !dbg !492
  br label %vaarg.end394.i, !dbg !492

vaarg.end394.i:                                   ; preds = %vaarg.in_mem390.i, %vaarg.in_reg388.i
  %vaarg.addr395.in.i = phi i8* [ %128, %vaarg.in_reg388.i ], [ %overflow_arg_area392.i, %vaarg.in_mem390.i ]
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !493) #2, !dbg !494
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !494
  %130 = load i64* %currlen.i, align 8, !dbg !494, !tbaa !200
  %add.i651.i = add i64 %130, 1, !dbg !494
  %cmp.i652.i = icmp ult i64 %add.i651.i, %count, !dbg !494
  br i1 %cmp.i652.i, label %if.then.i654.i, label %dopr_outch.exit655.i, !dbg !494

if.then.i654.i:                                   ; preds = %vaarg.end394.i
  %vaarg.addr395.i = bitcast i8* %vaarg.addr395.in.i to i32*, !dbg !492
  %131 = load i32* %vaarg.addr395.i, align 4, !dbg !492
  %conv396.i = trunc i32 %131 to i8, !dbg !492
  call void @llvm.dbg.value(metadata !{i64 %add.i651.i}, i64 0, metadata !493) #2, !dbg !495
  call void @llvm.dbg.value(metadata !{i64 %add.i651.i}, i64 0, metadata !78), !dbg !495
  store i64 %add.i651.i, i64* %currlen.i, align 8, !dbg !495, !tbaa !200
  %arrayidx.i653.i = getelementptr inbounds i8* %str, i64 %130, !dbg !495
  store i8 %conv396.i, i8* %arrayidx.i653.i, align 1, !dbg !495, !tbaa !183
  br label %dopr_outch.exit655.i, !dbg !495

dopr_outch.exit655.i:                             ; preds = %if.then.i654.i, %vaarg.end394.i
  %add398.i = add nsw i32 %total.0661.i, 1, !dbg !492
  call void @llvm.dbg.value(metadata !{i32 %add398.i}, i64 0, metadata !206) #2, !dbg !492
  br label %sw.epilog481.i, !dbg !496

sw.bb399.i:                                       ; preds = %sw.bb98.i
  %gp_offset401.i = load i32* %gp_offset_p.i, align 4, !dbg !497
  %fits_in_gp402.i = icmp ult i32 %gp_offset401.i, 41, !dbg !497
  br i1 %fits_in_gp402.i, label %vaarg.in_reg403.i, label %vaarg.in_mem405.i, !dbg !497

vaarg.in_reg403.i:                                ; preds = %sw.bb399.i
  %reg_save_area404.i = load i8** %2, align 8, !dbg !497
  %132 = sext i32 %gp_offset401.i to i64, !dbg !497
  %133 = getelementptr i8* %reg_save_area404.i, i64 %132, !dbg !497
  %134 = add i32 %gp_offset401.i, 8, !dbg !497
  store i32 %134, i32* %gp_offset_p.i, align 4, !dbg !497
  br label %vaarg.end409.i, !dbg !497

vaarg.in_mem405.i:                                ; preds = %sw.bb399.i
  %overflow_arg_area407.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !497
  %overflow_arg_area.next408.i = getelementptr i8* %overflow_arg_area407.i, i64 8, !dbg !497
  store i8* %overflow_arg_area.next408.i, i8** %overflow_arg_area_p.i, align 8, !dbg !497
  br label %vaarg.end409.i, !dbg !497

vaarg.end409.i:                                   ; preds = %vaarg.in_mem405.i, %vaarg.in_reg403.i
  %vaarg.addr410.in.i = phi i8* [ %133, %vaarg.in_reg403.i ], [ %overflow_arg_area407.i, %vaarg.in_mem405.i ]
  %vaarg.addr410.i = bitcast i8* %vaarg.addr410.in.i to i8**, !dbg !497
  %135 = load i8** %vaarg.addr410.i, align 8, !dbg !497
  call void @llvm.dbg.value(metadata !{i8* %135}, i64 0, metadata !498) #2, !dbg !497
  call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !499) #2, !dbg !501
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !502) #2, !dbg !501
  call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !503) #2, !dbg !501
  call void @llvm.dbg.value(metadata !{i8* %135}, i64 0, metadata !504) #2, !dbg !505
  call void @llvm.dbg.value(metadata !{i32 %flags.0659.i}, i64 0, metadata !506) #2, !dbg !505
  call void @llvm.dbg.value(metadata !{i32 %min.0656.i}, i64 0, metadata !507) #2, !dbg !505
  call void @llvm.dbg.value(metadata !{i32 %max.0657.i}, i64 0, metadata !508) #2, !dbg !505
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !509) #2, !dbg !510
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !511) #2, !dbg !512
  %cmp.i633.i = icmp eq i8* %135, null, !dbg !513
  call void @llvm.dbg.value(metadata !514, i64 0, metadata !504) #2, !dbg !515
  %.value.i.i = select i1 %cmp.i633.i, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* %135, !dbg !513
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !517) #2, !dbg !518
  br label %for.cond.i.i, !dbg !518

for.cond.i.i:                                     ; preds = %for.cond.i.i, %vaarg.end409.i
  %indvars.iv.i634.i = phi i64 [ %indvars.iv.next.i637.i, %for.cond.i.i ], [ 0, %vaarg.end409.i ]
  %strln.0.i.i = phi i32 [ %inc.i638.i, %for.cond.i.i ], [ 0, %vaarg.end409.i ]
  %arrayidx.i635.i = getelementptr inbounds i8* %.value.i.i, i64 %indvars.iv.i634.i, !dbg !518
  %136 = load i8* %arrayidx.i635.i, align 1, !dbg !518, !tbaa !183
  %tobool.i636.i = icmp eq i8 %136, 0, !dbg !518
  %indvars.iv.next.i637.i = add i64 %indvars.iv.i634.i, 1, !dbg !518
  %inc.i638.i = add nsw i32 %strln.0.i.i, 1, !dbg !518
  call void @llvm.dbg.value(metadata !{i32 %inc.i638.i}, i64 0, metadata !517) #2, !dbg !518
  br i1 %tobool.i636.i, label %for.end.i.i, label %for.cond.i.i, !dbg !518

for.end.i.i:                                      ; preds = %for.cond.i.i
  %cmp1.i.i = icmp sgt i32 %max.0657.i, -1, !dbg !520
  %cmp2.i.i = icmp sgt i32 %strln.0.i.i, %max.0657.i, !dbg !520
  %or.cond.i639.i = and i1 %cmp1.i.i, %cmp2.i.i, !dbg !520
  call void @llvm.dbg.value(metadata !{i32 %max.0657.i}, i64 0, metadata !517) #2, !dbg !521
  %strln.1.i.i = select i1 %or.cond.i639.i, i32 %max.0657.i, i32 %strln.0.i.i, !dbg !520
  %sub.i640.i = sub nsw i32 %min.0656.i, %strln.1.i.i, !dbg !522
  call void @llvm.dbg.value(metadata !{i32 %sub.i640.i}, i64 0, metadata !523) #2, !dbg !522
  %cmp5.i.i = icmp slt i32 %sub.i640.i, 0, !dbg !524
  %.sub.i.i = select i1 %cmp5.i.i, i32 0, i32 %sub.i640.i, !dbg !524
  call void @llvm.dbg.value(metadata !{i32 %.sub.i.i}, i64 0, metadata !523) #2, !dbg !525
  %and.i641.i = and i32 %flags.0659.i, 1, !dbg !526
  %tobool8.i.i = icmp eq i32 %and.i641.i, 0, !dbg !526
  %sub10.i.i = sub nsw i32 0, %.sub.i.i, !dbg !527
  call void @llvm.dbg.value(metadata !{i32 %sub10.i.i}, i64 0, metadata !523) #2, !dbg !527
  %.sub.sub10.i.i = select i1 %tobool8.i.i, i32 %.sub.i.i, i32 %sub10.i.i, !dbg !526
  %cmp1276.i.i = icmp sgt i32 %.sub.sub10.i.i, 0, !dbg !528
  br i1 %cmp1276.i.i, label %while.body.i644.preheader.i, label %while.cond13.preheader.i.i, !dbg !528

while.body.i644.preheader.i:                      ; preds = %for.end.i.i
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !529) #2, !dbg !532
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !532
  %.pre665.i = load i64* %currlen.i, align 8, !dbg !532, !tbaa !200
  br label %while.body.i644.i, !dbg !532

while.cond13.preheader.i.i:                       ; preds = %dopr_outch.exit.i646.i, %for.end.i.i
  %total.0.lcssa.i.i = phi i32 [ 0, %for.end.i.i ], [ %.sub.sub10.i.i, %dopr_outch.exit.i646.i ]
  %padlen.0.lcssa.i.i = phi i32 [ %.sub.sub10.i.i, %for.end.i.i ], [ 0, %dopr_outch.exit.i646.i ]
  %137 = load i8* %.value.i.i, align 1, !dbg !533, !tbaa !183
  %tobool1471.i.i = icmp eq i8 %137, 0, !dbg !533
  br i1 %tobool1471.i.i, label %while.cond24.preheader.i.i, label %land.rhs.lr.ph.i.i, !dbg !533

land.rhs.lr.ph.i.i:                               ; preds = %while.cond13.preheader.i.i
  %cmp15.i.i = icmp slt i32 %max.0657.i, 0, !dbg !533
  br label %land.rhs.i647.i, !dbg !533

while.body.i644.i:                                ; preds = %dopr_outch.exit.i646.i, %while.body.i644.preheader.i
  %138 = phi i64 [ %139, %dopr_outch.exit.i646.i ], [ %.pre665.i, %while.body.i644.preheader.i ], !dbg !532
  %total.078.i.i = phi i32 [ %phitmp.i.i, %dopr_outch.exit.i646.i ], [ 1, %while.body.i644.preheader.i ]
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !529) #2, !dbg !532
  %add.i.i642.i = add i64 %138, 1, !dbg !532
  %cmp.i.i643.i = icmp ult i64 %add.i.i642.i, %count, !dbg !532
  br i1 %cmp.i.i643.i, label %if.then.i.i.i, label %dopr_outch.exit.i646.i, !dbg !532

if.then.i.i.i:                                    ; preds = %while.body.i644.i
  call void @llvm.dbg.value(metadata !{i64 %add.i.i642.i}, i64 0, metadata !529) #2, !dbg !534
  call void @llvm.dbg.value(metadata !{i64 %add.i.i642.i}, i64 0, metadata !78), !dbg !534
  store i64 %add.i.i642.i, i64* %currlen.i, align 8, !dbg !534, !tbaa !200
  %arrayidx.i.i645.i = getelementptr inbounds i8* %str, i64 %138, !dbg !534
  store i8 32, i8* %arrayidx.i.i645.i, align 1, !dbg !534, !tbaa !183
  br label %dopr_outch.exit.i646.i, !dbg !534

dopr_outch.exit.i646.i:                           ; preds = %if.then.i.i.i, %while.body.i644.i
  %139 = phi i64 [ %add.i.i642.i, %if.then.i.i.i ], [ %138, %while.body.i644.i ]
  call void @llvm.dbg.value(metadata !{i32 %.sub.sub10.i.i}, i64 0, metadata !511) #2, !dbg !530
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !523) #2, !dbg !535
  %exitcond82.i.i = icmp eq i32 %total.078.i.i, %.sub.sub10.i.i, !dbg !528
  %phitmp.i.i = add i32 %total.078.i.i, 1, !dbg !528
  br i1 %exitcond82.i.i, label %while.cond13.preheader.i.i, label %while.body.i644.i, !dbg !528

land.rhs.i647.i:                                  ; preds = %dopr_outch.exit67.i.i, %land.rhs.lr.ph.i.i
  %140 = phi i8 [ %137, %land.rhs.lr.ph.i.i ], [ %142, %dopr_outch.exit67.i.i ]
  %total.174.i.i = phi i32 [ %total.0.lcssa.i.i, %land.rhs.lr.ph.i.i ], [ %add21.i.i, %dopr_outch.exit67.i.i ]
  %cnt.073.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %inc22.i.i, %dopr_outch.exit67.i.i ]
  %value.addr.172.i.i = phi i8* [ %.value.i.i, %land.rhs.lr.ph.i.i ], [ %incdec.ptr.i.i, %dopr_outch.exit67.i.i ]
  %cmp17.i.i = icmp slt i32 %cnt.073.i.i, %max.0657.i, !dbg !533
  %or.cond57.i.i = or i1 %cmp15.i.i, %cmp17.i.i, !dbg !533
  br i1 %or.cond57.i.i, label %while.body19.i.i, label %while.cond24.preheader.i.i, !dbg !533

while.cond24.preheader.i.i:                       ; preds = %dopr_outch.exit67.i.i, %land.rhs.i647.i, %while.cond13.preheader.i.i
  %total.1.lcssa.i648.i = phi i32 [ %total.0.lcssa.i.i, %while.cond13.preheader.i.i ], [ %add21.i.i, %dopr_outch.exit67.i.i ], [ %total.174.i.i, %land.rhs.i647.i ]
  %cmp2568.i.i = icmp slt i32 %padlen.0.lcssa.i.i, 0, !dbg !536
  br i1 %cmp2568.i.i, label %while.body27.i.preheader.i, label %fmtstr.exit.i, !dbg !536

while.body27.i.preheader.i:                       ; preds = %while.cond24.preheader.i.i
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !537) #2, !dbg !540
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !540
  %.pre669.i = load i64* %currlen.i, align 8, !dbg !540, !tbaa !200
  br label %while.body27.i.i, !dbg !540

while.body19.i.i:                                 ; preds = %land.rhs.i647.i
  %incdec.ptr.i.i = getelementptr inbounds i8* %value.addr.172.i.i, i64 1, !dbg !541
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i.i}, i64 0, metadata !504) #2, !dbg !541
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !543) #2, !dbg !544
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !544
  %141 = load i64* %currlen.i, align 8, !dbg !544, !tbaa !200
  %add.i63.i.i = add i64 %141, 1, !dbg !544
  %cmp.i64.i.i = icmp ult i64 %add.i63.i.i, %count, !dbg !544
  br i1 %cmp.i64.i.i, label %if.then.i66.i.i, label %dopr_outch.exit67.i.i, !dbg !544

if.then.i66.i.i:                                  ; preds = %while.body19.i.i
  call void @llvm.dbg.value(metadata !{i64 %add.i63.i.i}, i64 0, metadata !543) #2, !dbg !545
  call void @llvm.dbg.value(metadata !{i64 %add.i63.i.i}, i64 0, metadata !78), !dbg !545
  store i64 %add.i63.i.i, i64* %currlen.i, align 8, !dbg !545, !tbaa !200
  %arrayidx.i65.i.i = getelementptr inbounds i8* %str, i64 %141, !dbg !545
  store i8 %140, i8* %arrayidx.i65.i.i, align 1, !dbg !545, !tbaa !183
  br label %dopr_outch.exit67.i.i, !dbg !545

dopr_outch.exit67.i.i:                            ; preds = %if.then.i66.i.i, %while.body19.i.i
  %add21.i.i = add nsw i32 %total.174.i.i, 1, !dbg !541
  call void @llvm.dbg.value(metadata !{i32 %add21.i.i}, i64 0, metadata !511) #2, !dbg !541
  %inc22.i.i = add nsw i32 %cnt.073.i.i, 1, !dbg !546
  call void @llvm.dbg.value(metadata !{i32 %inc22.i.i}, i64 0, metadata !509) #2, !dbg !546
  %142 = load i8* %incdec.ptr.i.i, align 1, !dbg !533, !tbaa !183
  %tobool14.i.i = icmp eq i8 %142, 0, !dbg !533
  br i1 %tobool14.i.i, label %while.cond24.preheader.i.i, label %land.rhs.i647.i, !dbg !533

while.body27.i.i:                                 ; preds = %dopr_outch.exit62.i.i, %while.body27.i.preheader.i
  %143 = phi i64 [ %.pre669.i, %while.body27.i.preheader.i ], [ %144, %dopr_outch.exit62.i.i ], !dbg !540
  %padlen.169.i.i = phi i32 [ %padlen.0.lcssa.i.i, %while.body27.i.preheader.i ], [ %inc30.i.i, %dopr_outch.exit62.i.i ]
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !537) #2, !dbg !540
  %add.i58.i.i = add i64 %143, 1, !dbg !540
  %cmp.i59.i.i = icmp ult i64 %add.i58.i.i, %count, !dbg !540
  br i1 %cmp.i59.i.i, label %if.then.i61.i.i, label %dopr_outch.exit62.i.i, !dbg !540

if.then.i61.i.i:                                  ; preds = %while.body27.i.i
  call void @llvm.dbg.value(metadata !{i64 %add.i58.i.i}, i64 0, metadata !537) #2, !dbg !547
  call void @llvm.dbg.value(metadata !{i64 %add.i58.i.i}, i64 0, metadata !78), !dbg !547
  store i64 %add.i58.i.i, i64* %currlen.i, align 8, !dbg !547, !tbaa !200
  %arrayidx.i60.i.i = getelementptr inbounds i8* %str, i64 %143, !dbg !547
  store i8 32, i8* %arrayidx.i60.i.i, align 1, !dbg !547, !tbaa !183
  br label %dopr_outch.exit62.i.i, !dbg !547

dopr_outch.exit62.i.i:                            ; preds = %if.then.i61.i.i, %while.body27.i.i
  %144 = phi i64 [ %add.i58.i.i, %if.then.i61.i.i ], [ %143, %while.body27.i.i ]
  %inc30.i.i = add nsw i32 %padlen.169.i.i, 1, !dbg !548
  call void @llvm.dbg.value(metadata !{i32 %inc30.i.i}, i64 0, metadata !523) #2, !dbg !548
  %exitcond.i649.i = icmp eq i32 %inc30.i.i, 0, !dbg !536
  br i1 %exitcond.i649.i, label %while.cond24.while.end31_crit_edge.i.i, label %while.body27.i.i, !dbg !536

while.cond24.while.end31_crit_edge.i.i:           ; preds = %dopr_outch.exit62.i.i
  %145 = sub i32 %total.1.lcssa.i648.i, %padlen.0.lcssa.i.i, !dbg !536
  br label %fmtstr.exit.i, !dbg !536

fmtstr.exit.i:                                    ; preds = %while.cond24.while.end31_crit_edge.i.i, %while.cond24.preheader.i.i
  %total.2.lcssa.i650.i = phi i32 [ %145, %while.cond24.while.end31_crit_edge.i.i ], [ %total.1.lcssa.i648.i, %while.cond24.preheader.i.i ]
  %add412.i = add nsw i32 %total.2.lcssa.i650.i, %total.0661.i, !dbg !500
  call void @llvm.dbg.value(metadata !{i32 %add412.i}, i64 0, metadata !206) #2, !dbg !500
  br label %sw.epilog481.i, !dbg !549

sw.bb413.i:                                       ; preds = %sw.bb98.i
  %gp_offset415.i = load i32* %gp_offset_p.i, align 4, !dbg !550
  %fits_in_gp416.i = icmp ult i32 %gp_offset415.i, 41, !dbg !550
  br i1 %fits_in_gp416.i, label %vaarg.in_reg417.i, label %vaarg.in_mem419.i, !dbg !550

vaarg.in_reg417.i:                                ; preds = %sw.bb413.i
  %reg_save_area418.i = load i8** %2, align 8, !dbg !550
  %146 = sext i32 %gp_offset415.i to i64, !dbg !550
  %147 = getelementptr i8* %reg_save_area418.i, i64 %146, !dbg !550
  %148 = add i32 %gp_offset415.i, 8, !dbg !550
  store i32 %148, i32* %gp_offset_p.i, align 4, !dbg !550
  br label %vaarg.end423.i, !dbg !550

vaarg.in_mem419.i:                                ; preds = %sw.bb413.i
  %overflow_arg_area421.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !550
  %overflow_arg_area.next422.i = getelementptr i8* %overflow_arg_area421.i, i64 8, !dbg !550
  store i8* %overflow_arg_area.next422.i, i8** %overflow_arg_area_p.i, align 8, !dbg !550
  br label %vaarg.end423.i, !dbg !550

vaarg.end423.i:                                   ; preds = %vaarg.in_mem419.i, %vaarg.in_reg417.i
  %vaarg.addr424.in.i = phi i8* [ %147, %vaarg.in_reg417.i ], [ %overflow_arg_area421.i, %vaarg.in_mem419.i ]
  %vaarg.addr424.i = bitcast i8* %vaarg.addr424.in.i to i8**, !dbg !550
  %149 = load i8** %vaarg.addr424.i, align 8, !dbg !550
  call void @llvm.dbg.value(metadata !{i8* %149}, i64 0, metadata !498) #2, !dbg !550
  %150 = ptrtoint i8* %149 to i64, !dbg !551
  %call425.i = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %150, i32 16, i32 %min.0656.i, i32 %max.0657.i, i32 %flags.0659.i) #5, !dbg !551
  %add426.i = add nsw i32 %call425.i, %total.0661.i, !dbg !551
  call void @llvm.dbg.value(metadata !{i32 %add426.i}, i64 0, metadata !206) #2, !dbg !551
  br label %sw.epilog481.i, !dbg !552

sw.bb427.i:                                       ; preds = %sw.bb98.i
  %cmp428.i = icmp eq i32 %cflags.0660.i, 1, !dbg !553
  br i1 %cmp428.i, label %if.then430.i, label %if.else443.i, !dbg !553

if.then430.i:                                     ; preds = %sw.bb427.i
  %gp_offset432.i = load i32* %gp_offset_p.i, align 4, !dbg !554
  %fits_in_gp433.i = icmp ult i32 %gp_offset432.i, 41, !dbg !554
  br i1 %fits_in_gp433.i, label %vaarg.in_reg434.i, label %vaarg.in_mem436.i, !dbg !554

vaarg.in_reg434.i:                                ; preds = %if.then430.i
  %reg_save_area435.i = load i8** %2, align 8, !dbg !554
  %151 = sext i32 %gp_offset432.i to i64, !dbg !554
  %152 = getelementptr i8* %reg_save_area435.i, i64 %151, !dbg !554
  %153 = add i32 %gp_offset432.i, 8, !dbg !554
  store i32 %153, i32* %gp_offset_p.i, align 4, !dbg !554
  br label %vaarg.end440.i, !dbg !554

vaarg.in_mem436.i:                                ; preds = %if.then430.i
  %overflow_arg_area438.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !554
  %overflow_arg_area.next439.i = getelementptr i8* %overflow_arg_area438.i, i64 8, !dbg !554
  store i8* %overflow_arg_area.next439.i, i8** %overflow_arg_area_p.i, align 8, !dbg !554
  br label %vaarg.end440.i, !dbg !554

vaarg.end440.i:                                   ; preds = %vaarg.in_mem436.i, %vaarg.in_reg434.i
  %vaarg.addr441.in.i = phi i8* [ %152, %vaarg.in_reg434.i ], [ %overflow_arg_area438.i, %vaarg.in_mem436.i ]
  %vaarg.addr441.i = bitcast i8* %vaarg.addr441.in.i to i16**, !dbg !554
  %154 = load i16** %vaarg.addr441.i, align 8, !dbg !554
  call void @llvm.dbg.value(metadata !{i16* %154}, i64 0, metadata !555) #2, !dbg !554
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !199) #2, !dbg !556
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !556
  %155 = load i64* %currlen.i, align 8, !dbg !556, !tbaa !200
  %conv442.i = trunc i64 %155 to i16, !dbg !556
  store i16 %conv442.i, i16* %154, align 2, !dbg !556, !tbaa !244
  br label %sw.epilog481.i, !dbg !557

if.else443.i:                                     ; preds = %sw.bb427.i
  %cmp444.i = icmp eq i32 %cflags.0660.i, 2, !dbg !558
  %gp_offset449.i = load i32* %gp_offset_p.i, align 4, !dbg !559
  %fits_in_gp450.i = icmp ult i32 %gp_offset449.i, 41, !dbg !559
  br i1 %cmp444.i, label %if.then446.i, label %if.else459.i, !dbg !558

if.then446.i:                                     ; preds = %if.else443.i
  br i1 %fits_in_gp450.i, label %vaarg.in_reg451.i, label %vaarg.in_mem453.i, !dbg !559

vaarg.in_reg451.i:                                ; preds = %if.then446.i
  %reg_save_area452.i = load i8** %2, align 8, !dbg !559
  %156 = sext i32 %gp_offset449.i to i64, !dbg !559
  %157 = getelementptr i8* %reg_save_area452.i, i64 %156, !dbg !559
  %158 = add i32 %gp_offset449.i, 8, !dbg !559
  store i32 %158, i32* %gp_offset_p.i, align 4, !dbg !559
  br label %vaarg.end457.i, !dbg !559

vaarg.in_mem453.i:                                ; preds = %if.then446.i
  %overflow_arg_area455.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !559
  %overflow_arg_area.next456.i = getelementptr i8* %overflow_arg_area455.i, i64 8, !dbg !559
  store i8* %overflow_arg_area.next456.i, i8** %overflow_arg_area_p.i, align 8, !dbg !559
  br label %vaarg.end457.i, !dbg !559

vaarg.end457.i:                                   ; preds = %vaarg.in_mem453.i, %vaarg.in_reg451.i
  %vaarg.addr458.in.i = phi i8* [ %157, %vaarg.in_reg451.i ], [ %overflow_arg_area455.i, %vaarg.in_mem453.i ]
  %vaarg.addr458.i = bitcast i8* %vaarg.addr458.in.i to i64**, !dbg !559
  %159 = load i64** %vaarg.addr458.i, align 8, !dbg !559
  call void @llvm.dbg.value(metadata !{i64* %159}, i64 0, metadata !560) #2, !dbg !559
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !199) #2, !dbg !561
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !561
  %160 = load i64* %currlen.i, align 8, !dbg !561, !tbaa !200
  store i64 %160, i64* %159, align 8, !dbg !561, !tbaa !200
  br label %sw.epilog481.i, !dbg !562

if.else459.i:                                     ; preds = %if.else443.i
  br i1 %fits_in_gp450.i, label %vaarg.in_reg464.i, label %vaarg.in_mem466.i, !dbg !563

vaarg.in_reg464.i:                                ; preds = %if.else459.i
  %reg_save_area465.i = load i8** %2, align 8, !dbg !563
  %161 = sext i32 %gp_offset449.i to i64, !dbg !563
  %162 = getelementptr i8* %reg_save_area465.i, i64 %161, !dbg !563
  %163 = add i32 %gp_offset449.i, 8, !dbg !563
  store i32 %163, i32* %gp_offset_p.i, align 4, !dbg !563
  br label %vaarg.end470.i, !dbg !563

vaarg.in_mem466.i:                                ; preds = %if.else459.i
  %overflow_arg_area468.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !563
  %overflow_arg_area.next469.i = getelementptr i8* %overflow_arg_area468.i, i64 8, !dbg !563
  store i8* %overflow_arg_area.next469.i, i8** %overflow_arg_area_p.i, align 8, !dbg !563
  br label %vaarg.end470.i, !dbg !563

vaarg.end470.i:                                   ; preds = %vaarg.in_mem466.i, %vaarg.in_reg464.i
  %vaarg.addr471.in.i = phi i8* [ %162, %vaarg.in_reg464.i ], [ %overflow_arg_area468.i, %vaarg.in_mem466.i ]
  %vaarg.addr471.i = bitcast i8* %vaarg.addr471.in.i to i32**, !dbg !563
  %164 = load i32** %vaarg.addr471.i, align 8, !dbg !563
  call void @llvm.dbg.value(metadata !{i32* %164}, i64 0, metadata !564) #2, !dbg !563
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !199) #2, !dbg !565
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !565
  %165 = load i64* %currlen.i, align 8, !dbg !565, !tbaa !200
  %conv472.i = trunc i64 %165 to i32, !dbg !565
  store i32 %conv472.i, i32* %164, align 4, !dbg !565, !tbaa !566
  br label %sw.epilog481.i

sw.bb475.i:                                       ; preds = %sw.bb98.i
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !567) #2, !dbg !569
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !569
  %166 = load i64* %currlen.i, align 8, !dbg !569, !tbaa !200
  %add.i626.i = add i64 %166, 1, !dbg !569
  %cmp.i627.i = icmp ult i64 %add.i626.i, %count, !dbg !569
  br i1 %cmp.i627.i, label %if.then.i629.i, label %dopr_outch.exit630.i, !dbg !569

if.then.i629.i:                                   ; preds = %sw.bb475.i
  call void @llvm.dbg.value(metadata !{i64 %add.i626.i}, i64 0, metadata !567) #2, !dbg !570
  call void @llvm.dbg.value(metadata !{i64 %add.i626.i}, i64 0, metadata !78), !dbg !570
  store i64 %add.i626.i, i64* %currlen.i, align 8, !dbg !570, !tbaa !200
  %arrayidx.i628.i = getelementptr inbounds i8* %str, i64 %166, !dbg !570
  store i8 %ch.0662.i, i8* %arrayidx.i628.i, align 1, !dbg !570, !tbaa !183
  br label %dopr_outch.exit630.i, !dbg !570

dopr_outch.exit630.i:                             ; preds = %if.then.i629.i, %sw.bb475.i
  %add477.i = add nsw i32 %total.0661.i, 1, !dbg !568
  call void @llvm.dbg.value(metadata !{i32 %add477.i}, i64 0, metadata !206) #2, !dbg !568
  br label %sw.epilog481.i, !dbg !571

sw.bb478.i:                                       ; preds = %sw.bb98.i
  %incdec.ptr479.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1, !dbg !572
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr479.i}, i64 0, metadata !189) #2, !dbg !572
  br label %sw.epilog481.i, !dbg !573

sw.epilog481.i:                                   ; preds = %sw.bb478.i, %dopr_outch.exit630.i, %vaarg.end470.i, %vaarg.end457.i, %vaarg.end440.i, %vaarg.end423.i, %fmtstr.exit.i, %dopr_outch.exit655.i, %vaarg.in_mem377.i, %vaarg.in_reg375.i, %vaarg.in_mem365.i, %vaarg.in_reg363.i, %vaarg.in_mem347.i, %vaarg.in_reg345.i, %vaarg.in_mem335.i, %vaarg.in_reg333.i, %fmtfp.exit.i, %if.end294.i, %if.end243.i, %if.end194.i, %if.end145.i, %sw.bb98.i
  %total.2.i = phi i32 [ %total.0661.i, %sw.bb98.i ], [ %total.0661.i, %sw.bb478.i ], [ %add477.i, %dopr_outch.exit630.i ], [ %total.0661.i, %vaarg.end440.i ], [ %total.0661.i, %vaarg.end457.i ], [ %total.0661.i, %vaarg.end470.i ], [ %add426.i, %vaarg.end423.i ], [ %add412.i, %fmtstr.exit.i ], [ %add398.i, %dopr_outch.exit655.i ], [ %add323.i, %fmtfp.exit.i ], [ %add296.i, %if.end294.i ], [ %add245.i, %if.end243.i ], [ %add196.i, %if.end194.i ], [ %add147.i, %if.end145.i ], [ %total.0661.i, %vaarg.in_mem335.i ], [ %total.0661.i, %vaarg.in_reg333.i ], [ %total.0661.i, %vaarg.in_mem347.i ], [ %total.0661.i, %vaarg.in_reg345.i ], [ %total.0661.i, %vaarg.in_mem365.i ], [ %total.0661.i, %vaarg.in_reg363.i ], [ %total.0661.i, %vaarg.in_mem377.i ], [ %total.0661.i, %vaarg.in_reg375.i ]
  %format.addr.2.i = phi i8* [ %format.addr.0663.i, %sw.bb98.i ], [ %incdec.ptr479.i, %sw.bb478.i ], [ %format.addr.0663.i, %dopr_outch.exit630.i ], [ %format.addr.0663.i, %vaarg.end440.i ], [ %format.addr.0663.i, %vaarg.end457.i ], [ %format.addr.0663.i, %vaarg.end470.i ], [ %format.addr.0663.i, %vaarg.end423.i ], [ %format.addr.0663.i, %fmtstr.exit.i ], [ %format.addr.0663.i, %dopr_outch.exit655.i ], [ %format.addr.0663.i, %fmtfp.exit.i ], [ %format.addr.0663.i, %if.end294.i ], [ %format.addr.0663.i, %if.end243.i ], [ %format.addr.0663.i, %if.end194.i ], [ %format.addr.0663.i, %if.end145.i ], [ %format.addr.0663.i, %vaarg.in_mem335.i ], [ %format.addr.0663.i, %vaarg.in_reg333.i ], [ %format.addr.0663.i, %vaarg.in_mem347.i ], [ %format.addr.0663.i, %vaarg.in_reg345.i ], [ %format.addr.0663.i, %vaarg.in_mem365.i ], [ %format.addr.0663.i, %vaarg.in_reg363.i ], [ %format.addr.0663.i, %vaarg.in_mem377.i ], [ %format.addr.0663.i, %vaarg.in_reg375.i ]
  %incdec.ptr482.i = getelementptr inbounds i8* %format.addr.2.i, i64 1, !dbg !574
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr482.i}, i64 0, metadata !189) #2, !dbg !574
  %167 = load i8* %format.addr.2.i, align 1, !dbg !574, !tbaa !183
  call void @llvm.dbg.value(metadata !{i8 %167}, i64 0, metadata !205) #2, !dbg !574
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !192) #2, !dbg !575
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !194) #2, !dbg !576
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !196) #2, !dbg !576
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !197) #2, !dbg !576
  call void @llvm.dbg.value(metadata !201, i64 0, metadata !202) #2, !dbg !577
  br label %while.body.i, !dbg !578

while.end.i:                                      ; preds = %while.cond.backedge.i
  br i1 %cmp, label %dopr.exit, label %if.then487.i, !dbg !579

if.then487.i:                                     ; preds = %while.end.i
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !199) #2, !dbg !580
  call void @llvm.dbg.value(metadata !{i64* %currlen.i}, i64 0, metadata !78), !dbg !580
  %168 = load i64* %currlen.i, align 8, !dbg !580, !tbaa !200
  %sub488.i = add i64 %count, -1, !dbg !580
  %cmp489.i = icmp ult i64 %168, %sub488.i, !dbg !580
  br i1 %cmp489.i, label %if.then491.i, label %if.else493.i, !dbg !580

if.then491.i:                                     ; preds = %if.then487.i
  %arrayidx492.i = getelementptr inbounds i8* %str, i64 %168, !dbg !582
  store i8 0, i8* %arrayidx492.i, align 1, !dbg !582, !tbaa !183
  br label %dopr.exit, !dbg !582

if.else493.i:                                     ; preds = %if.then487.i
  %arrayidx495.i = getelementptr inbounds i8* %str, i64 %sub488.i, !dbg !583
  store i8 0, i8* %arrayidx495.i, align 1, !dbg !583, !tbaa !183
  br label %dopr.exit

dopr.exit:                                        ; preds = %while.end.i, %if.then491.i, %if.else493.i
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !584
  ret i32 %total.0661.i, !dbg !186
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Util_snprintf(i8* %str, i64 %count, i8* nocapture %fmt, ...) #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !50), !dbg !585
  call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !51), !dbg !585
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !52), !dbg !585
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !53), !dbg !586
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !587
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !587
  call void @llvm.va_start(i8* %arraydecay1), !dbg !587
  %call = call i32 @Util_vsnprintf(i8* %str, i64 %count, i8* %fmt, %struct.__va_list_tag* %arraydecay) #6, !dbg !588
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !59), !dbg !588
  call void @llvm.va_end(i8* %arraydecay1), !dbg !589
  ret i32 %call, !dbg !590
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @fmtint(i8* nocapture %buffer, i64* nocapture %currlen, i64 %maxlen, i64 %value, i32 %base, i32 %min, i32 %max, i32 %flags) #0 {
entry:
  %convert = alloca [20 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %buffer}, i64 0, metadata !156), !dbg !591
  call void @llvm.dbg.value(metadata !{i64* %currlen}, i64 0, metadata !157), !dbg !591
  call void @llvm.dbg.value(metadata !{i64 %maxlen}, i64 0, metadata !158), !dbg !591
  call void @llvm.dbg.value(metadata !{i64 %value}, i64 0, metadata !159), !dbg !592
  call void @llvm.dbg.value(metadata !{i32 %base}, i64 0, metadata !160), !dbg !592
  call void @llvm.dbg.value(metadata !{i32 %min}, i64 0, metadata !161), !dbg !592
  call void @llvm.dbg.value(metadata !{i32 %max}, i64 0, metadata !162), !dbg !592
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !163), !dbg !592
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !164), !dbg !593
  call void @llvm.dbg.declare(metadata !{[20 x i8]* %convert}, metadata !166), !dbg !594
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !167), !dbg !595
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !168), !dbg !596
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !169), !dbg !597
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !170), !dbg !598
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !171), !dbg !599
  %cmp = icmp slt i32 %max, 0, !dbg !600
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !162), !dbg !601
  %.max = select i1 %cmp, i32 0, i32 %max, !dbg !600
  call void @llvm.dbg.value(metadata !{i64 %value}, i64 0, metadata !165), !dbg !602
  %and = and i32 %flags, 64, !dbg !603
  %tobool = icmp eq i32 %and, 0, !dbg !603
  br i1 %tobool, label %if.then1, label %if.end14, !dbg !603

if.then1:                                         ; preds = %entry
  %cmp2 = icmp slt i64 %value, 0, !dbg !604
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !604

if.then3:                                         ; preds = %if.then1
  call void @llvm.dbg.value(metadata !606, i64 0, metadata !164), !dbg !607
  %sub = sub nsw i64 0, %value, !dbg !609
  call void @llvm.dbg.value(metadata !{i64 %sub}, i64 0, metadata !165), !dbg !609
  br label %if.end14, !dbg !610

if.else:                                          ; preds = %if.then1
  %and4 = and i32 %flags, 2, !dbg !611
  %tobool5 = icmp eq i32 %and4, 0, !dbg !611
  br i1 %tobool5, label %if.else7, label %if.end14, !dbg !611

if.else7:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata !359, i64 0, metadata !164), !dbg !612
  %and8 = shl i32 %flags, 3, !dbg !613
  %0 = and i32 %and8, 32, !dbg !613
  br label %if.end14, !dbg !613

if.end14:                                         ; preds = %if.else7, %if.else, %entry, %if.then3
  %signvalue.0 = phi i32 [ 0, %entry ], [ 45, %if.then3 ], [ 43, %if.else ], [ %0, %if.else7 ]
  %uvalue.0 = phi i64 [ %value, %entry ], [ %sub, %if.then3 ], [ %value, %if.else ], [ %value, %if.else7 ]
  %and15 = and i32 %flags, 32, !dbg !614
  call void @llvm.dbg.value(metadata !275, i64 0, metadata !170), !dbg !614
  %conv = zext i32 %base to i64, !dbg !615
  %tobool19 = icmp ne i32 %and15, 0, !dbg !615
  %cond = select i1 %tobool19, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), !dbg !615
  br label %do.body, !dbg !614

do.body:                                          ; preds = %if.end14, %do.body
  %indvars.iv190 = phi i64 [ 0, %if.end14 ], [ %indvars.iv.next191, %do.body ]
  %uvalue.1 = phi i64 [ %uvalue.0, %if.end14 ], [ %div, %do.body ]
  %place.0 = phi i32 [ 0, %if.end14 ], [ %inc, %do.body ]
  %rem = urem i64 %uvalue.1, %conv, !dbg !615
  %arrayidx = getelementptr inbounds i8* %cond, i64 %rem, !dbg !615
  %1 = load i8* %arrayidx, align 1, !dbg !615, !tbaa !183
  %indvars.iv.next191 = add i64 %indvars.iv190, 1, !dbg !617
  %inc = add nsw i32 %place.0, 1, !dbg !615
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !167), !dbg !615
  %arrayidx20 = getelementptr inbounds [20 x i8]* %convert, i64 0, i64 %indvars.iv190, !dbg !615
  store i8 %1, i8* %arrayidx20, align 1, !dbg !615, !tbaa !183
  %div = udiv i64 %uvalue.1, %conv, !dbg !618
  call void @llvm.dbg.value(metadata !{i64 %div}, i64 0, metadata !165), !dbg !618
  %tobool22 = icmp ne i64 %div, 0, !dbg !617
  %2 = trunc i64 %indvars.iv.next191 to i32, !dbg !617
  %cmp23 = icmp slt i32 %2, 20, !dbg !617
  %or.cond = and i1 %tobool22, %cmp23, !dbg !617
  br i1 %or.cond, label %do.body, label %do.end, !dbg !617

do.end:                                           ; preds = %do.body
  %cmp25 = icmp eq i32 %inc, 20, !dbg !619
  call void @llvm.dbg.value(metadata !{i32 %place.0}, i64 0, metadata !167), !dbg !619
  %place.0.inc = select i1 %cmp25, i32 %place.0, i32 %inc, !dbg !619
  %idxprom29 = sext i32 %place.0.inc to i64, !dbg !620
  %arrayidx30 = getelementptr inbounds [20 x i8]* %convert, i64 0, i64 %idxprom29, !dbg !620
  store i8 0, i8* %arrayidx30, align 1, !dbg !620, !tbaa !183
  %sub31 = sub nsw i32 %.max, %place.0.inc, !dbg !621
  call void @llvm.dbg.value(metadata !{i32 %sub31}, i64 0, metadata !169), !dbg !621
  %cmp32 = icmp sge i32 %.max, %place.0.inc, !dbg !622
  %cond34 = select i1 %cmp32, i32 %.max, i32 %place.0.inc, !dbg !622
  %sub35 = sub nsw i32 %min, %cond34, !dbg !622
  %tobool36 = icmp ne i32 %signvalue.0, 0, !dbg !622
  %cond37.neg = sext i1 %tobool36 to i32
  %sub38 = add i32 %sub35, %cond37.neg, !dbg !622
  call void @llvm.dbg.value(metadata !{i32 %sub38}, i64 0, metadata !168), !dbg !622
  %cmp39 = icmp slt i32 %sub31, 0, !dbg !623
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !169), !dbg !623
  %zpadlen.0 = select i1 %cmp39, i32 0, i32 %sub31, !dbg !623
  %cmp43 = icmp slt i32 %sub38, 0, !dbg !624
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !168), !dbg !624
  %.sub38 = select i1 %cmp43, i32 0, i32 %sub38, !dbg !624
  %and47 = and i32 %flags, 16, !dbg !625
  %tobool48 = icmp eq i32 %and47, 0, !dbg !625
  br i1 %tobool48, label %if.end56, label %if.then49, !dbg !625

if.then49:                                        ; preds = %do.end
  %cmp50 = icmp sge i32 %zpadlen.0, %.sub38, !dbg !626
  %cond55 = select i1 %cmp50, i32 %zpadlen.0, i32 %.sub38, !dbg !626
  call void @llvm.dbg.value(metadata !{i32 %cond55}, i64 0, metadata !169), !dbg !626
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !168), !dbg !628
  br label %if.end56, !dbg !629

if.end56:                                         ; preds = %do.end, %if.then49
  %spadlen.1 = phi i32 [ 0, %if.then49 ], [ %.sub38, %do.end ]
  %zpadlen.1 = phi i32 [ %cond55, %if.then49 ], [ %zpadlen.0, %do.end ]
  %and57 = and i32 %flags, 1, !dbg !630
  %tobool58 = icmp eq i32 %and57, 0, !dbg !630
  %sub60 = sub nsw i32 0, %spadlen.1, !dbg !631
  call void @llvm.dbg.value(metadata !{i32 %sub60}, i64 0, metadata !168), !dbg !631
  %spadlen.1.sub60 = select i1 %tobool58, i32 %spadlen.1, i32 %sub60, !dbg !630
  %cmp62183 = icmp sgt i32 %spadlen.1.sub60, 0, !dbg !632
  br i1 %cmp62183, label %while.body, label %while.end, !dbg !632

while.body:                                       ; preds = %if.end56, %dopr_outch.exit.while.body_crit_edge
  %total.0185 = phi i32 [ %phitmp, %dopr_outch.exit.while.body_crit_edge ], [ 1, %if.end56 ]
  %3 = load i64* %currlen, align 8, !dbg !633, !tbaa !200
  %add.i = add i64 %3, 1, !dbg !633
  %cmp.i = icmp ult i64 %add.i, %maxlen, !dbg !633
  br i1 %cmp.i, label %if.then.i, label %dopr_outch.exit, !dbg !633

if.then.i:                                        ; preds = %while.body
  store i64 %add.i, i64* %currlen, align 8, !dbg !636, !tbaa !200
  %arrayidx.i = getelementptr inbounds i8* %buffer, i64 %3, !dbg !636
  store i8 32, i8* %arrayidx.i, align 1, !dbg !636, !tbaa !183
  br label %dopr_outch.exit, !dbg !636

dopr_outch.exit:                                  ; preds = %while.body, %if.then.i
  call void @llvm.dbg.value(metadata !{i32 %spadlen.1.sub60}, i64 0, metadata !171), !dbg !634
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !168), !dbg !637
  %exitcond189 = icmp eq i32 %total.0185, %spadlen.1.sub60, !dbg !632
  br i1 %exitcond189, label %while.end, label %dopr_outch.exit.while.body_crit_edge, !dbg !632

dopr_outch.exit.while.body_crit_edge:             ; preds = %dopr_outch.exit
  %phitmp = add i32 %total.0185, 1, !dbg !632
  br label %while.body, !dbg !632

while.end:                                        ; preds = %dopr_outch.exit, %if.end56
  %total.0.lcssa = phi i32 [ 0, %if.end56 ], [ %spadlen.1.sub60, %dopr_outch.exit ]
  %spadlen.2.lcssa = phi i32 [ %spadlen.1.sub60, %if.end56 ], [ 0, %dopr_outch.exit ]
  br i1 %tobool36, label %if.then66, label %if.end70, !dbg !638

if.then66:                                        ; preds = %while.end
  %4 = load i64* %currlen, align 8, !dbg !639, !tbaa !200
  %add.i171 = add i64 %4, 1, !dbg !639
  %cmp.i172 = icmp ult i64 %add.i171, %maxlen, !dbg !639
  br i1 %cmp.i172, label %if.then.i174, label %dopr_outch.exit175, !dbg !639

if.then.i174:                                     ; preds = %if.then66
  %conv67 = trunc i32 %signvalue.0 to i8, !dbg !640
  store i64 %add.i171, i64* %currlen, align 8, !dbg !641, !tbaa !200
  %arrayidx.i173 = getelementptr inbounds i8* %buffer, i64 %4, !dbg !641
  store i8 %conv67, i8* %arrayidx.i173, align 1, !dbg !641, !tbaa !183
  br label %dopr_outch.exit175, !dbg !641

dopr_outch.exit175:                               ; preds = %if.then66, %if.then.i174
  %add69 = add nsw i32 %total.0.lcssa, 1, !dbg !640
  call void @llvm.dbg.value(metadata !{i32 %add69}, i64 0, metadata !171), !dbg !640
  br label %if.end70, !dbg !640

if.end70:                                         ; preds = %dopr_outch.exit175, %while.end
  %total.1 = phi i32 [ %add69, %dopr_outch.exit175 ], [ %total.0.lcssa, %while.end ]
  %cmp71 = icmp sgt i32 %zpadlen.1, 0, !dbg !642
  br i1 %cmp71, label %while.body77.preheader, label %while.cond83.preheader, !dbg !642

while.body77.preheader:                           ; preds = %if.end70
  %5 = add i32 %zpadlen.1, %total.1, !dbg !643
  br label %while.body77, !dbg !643

while.body77:                                     ; preds = %dopr_outch.exit170, %while.body77.preheader
  %total.2 = phi i32 [ %total.1, %while.body77.preheader ], [ %add79, %dopr_outch.exit170 ]
  %6 = load i64* %currlen, align 8, !dbg !643, !tbaa !200
  %add.i166 = add i64 %6, 1, !dbg !643
  %cmp.i167 = icmp ult i64 %add.i166, %maxlen, !dbg !643
  br i1 %cmp.i167, label %if.then.i169, label %dopr_outch.exit170, !dbg !643

if.then.i169:                                     ; preds = %while.body77
  store i64 %add.i166, i64* %currlen, align 8, !dbg !647, !tbaa !200
  %arrayidx.i168 = getelementptr inbounds i8* %buffer, i64 %6, !dbg !647
  store i8 48, i8* %arrayidx.i168, align 1, !dbg !647, !tbaa !183
  br label %dopr_outch.exit170, !dbg !647

dopr_outch.exit170:                               ; preds = %while.body77, %if.then.i169
  %add79 = add nsw i32 %total.2, 1, !dbg !644
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !171), !dbg !644
  %exitcond188 = icmp eq i32 %add79, %5, !dbg !648
  br i1 %exitcond188, label %while.cond83.preheader, label %while.body77, !dbg !648

while.cond83.preheader:                           ; preds = %dopr_outch.exit170, %if.end70
  %total.3.ph = phi i32 [ %total.1, %if.end70 ], [ %5, %dopr_outch.exit170 ]
  %cmp84179 = icmp sgt i32 %place.0.inc, 0, !dbg !649
  br i1 %cmp84179, label %while.body86, label %while.cond93.preheader, !dbg !649

while.cond83.while.cond93.preheader_crit_edge:    ; preds = %dopr_outch.exit165
  %7 = add i32 %place.0.inc, %total.3.ph, !dbg !649
  br label %while.cond93.preheader, !dbg !649

while.cond93.preheader:                           ; preds = %while.cond83.while.cond93.preheader_crit_edge, %while.cond83.preheader
  %total.3.lcssa = phi i32 [ %7, %while.cond83.while.cond93.preheader_crit_edge ], [ %total.3.ph, %while.cond83.preheader ]
  %cmp94176 = icmp slt i32 %spadlen.2.lcssa, 0, !dbg !650
  br i1 %cmp94176, label %while.body96, label %while.end100, !dbg !650

while.body86:                                     ; preds = %dopr_outch.exit165, %while.cond83.preheader
  %indvars.iv = phi i64 [ %idxprom29, %while.cond83.preheader ], [ %indvars.iv.next, %dopr_outch.exit165 ]
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !649
  %8 = load i64* %currlen, align 8, !dbg !651, !tbaa !200
  %add.i161 = add i64 %8, 1, !dbg !651
  %cmp.i162 = icmp ult i64 %add.i161, %maxlen, !dbg !651
  br i1 %cmp.i162, label %if.then.i164, label %dopr_outch.exit165, !dbg !651

if.then.i164:                                     ; preds = %while.body86
  %arrayidx89 = getelementptr inbounds [20 x i8]* %convert, i64 0, i64 %indvars.iv.next, !dbg !652
  %9 = load i8* %arrayidx89, align 1, !dbg !652, !tbaa !183
  store i64 %add.i161, i64* %currlen, align 8, !dbg !653, !tbaa !200
  %arrayidx.i163 = getelementptr inbounds i8* %buffer, i64 %8, !dbg !653
  store i8 %9, i8* %arrayidx.i163, align 1, !dbg !653, !tbaa !183
  br label %dopr_outch.exit165, !dbg !653

dopr_outch.exit165:                               ; preds = %while.body86, %if.then.i164
  call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !171), !dbg !652
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !649
  %cmp84 = icmp sgt i32 %10, 0, !dbg !649
  br i1 %cmp84, label %while.body86, label %while.cond83.while.cond93.preheader_crit_edge, !dbg !649

while.body96:                                     ; preds = %dopr_outch.exit160, %while.cond93.preheader
  %spadlen.3177 = phi i32 [ %spadlen.2.lcssa, %while.cond93.preheader ], [ %inc99, %dopr_outch.exit160 ]
  %11 = load i64* %currlen, align 8, !dbg !654, !tbaa !200
  %add.i156 = add i64 %11, 1, !dbg !654
  %cmp.i157 = icmp ult i64 %add.i156, %maxlen, !dbg !654
  br i1 %cmp.i157, label %if.then.i159, label %dopr_outch.exit160, !dbg !654

if.then.i159:                                     ; preds = %while.body96
  store i64 %add.i156, i64* %currlen, align 8, !dbg !657, !tbaa !200
  %arrayidx.i158 = getelementptr inbounds i8* %buffer, i64 %11, !dbg !657
  store i8 32, i8* %arrayidx.i158, align 1, !dbg !657, !tbaa !183
  br label %dopr_outch.exit160, !dbg !657

dopr_outch.exit160:                               ; preds = %while.body96, %if.then.i159
  call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !171), !dbg !655
  %inc99 = add nsw i32 %spadlen.3177, 1, !dbg !658
  call void @llvm.dbg.value(metadata !{i32 %inc99}, i64 0, metadata !168), !dbg !658
  %exitcond = icmp eq i32 %inc99, 0, !dbg !650
  br i1 %exitcond, label %while.cond93.while.end100_crit_edge, label %while.body96, !dbg !650

while.cond93.while.end100_crit_edge:              ; preds = %dopr_outch.exit160
  %12 = sub i32 %total.3.lcssa, %spadlen.2.lcssa, !dbg !650
  br label %while.end100, !dbg !650

while.end100:                                     ; preds = %while.cond93.while.end100_crit_edge, %while.cond93.preheader
  %total.4.lcssa = phi i32 [ %12, %while.cond93.while.end100_crit_edge ], [ %total.3.lcssa, %while.cond93.preheader ]
  ret i32 %total.4.lcssa, !dbg !659
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !46, metadata !60, metadata !92, metadata !108, metadata !134, metadata !140, metadata !146, metadata !152, metadata !172}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"Util_vsnprintf", metadata !"Util_vsnprintf", metadata !"", i32 742, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i64, i8*, %struct.__va_list_tag*)* @Util_vsnprintf, null, null, metadata !41, i32 743} ; [ DW_TAG_subprogram ] [line 742] [def] [scope 743] [Util_vsnprintf]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !25, metadata !27, metadata !29, metadata !31}
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!26 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!27 = metadata !{i32 786454, metadata !1, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!28 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!30 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __va_list_tag]
!32 = metadata !{i32 786454, metadata !1, null, metadata !"__va_list_tag", i32 743, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [__va_list_tag] [line 743, size 0, align 0, offset 0] [from __va_list_tag]
!33 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list_tag", i32 743, i64 192, i64 64, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 743, size 192, align 64, offset 0] [from ]
!34 = metadata !{metadata !35, metadata !37, metadata !38, metadata !40}
!35 = metadata !{i32 786445, metadata !1, metadata !33, metadata !"gp_offset", i32 743, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [gp_offset] [line 743, size 32, align 32, offset 0] [from unsigned int]
!36 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!37 = metadata !{i32 786445, metadata !1, metadata !33, metadata !"fp_offset", i32 743, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [fp_offset] [line 743, size 32, align 32, offset 32] [from unsigned int]
!38 = metadata !{i32 786445, metadata !1, metadata !33, metadata !"overflow_arg_area", i32 743, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [overflow_arg_area] [line 743, size 64, align 64, offset 64] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786445, metadata !1, metadata !33, metadata !"reg_save_area", i32 743, i64 64, i64 64, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [reg_save_area] [line 743, size 64, align 64, offset 128] [from ]
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !45}
!42 = metadata !{i32 786689, metadata !20, metadata !"str", metadata !21, i32 16777958, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 742]
!43 = metadata !{i32 786689, metadata !20, metadata !"count", metadata !21, i32 33555174, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 742]
!44 = metadata !{i32 786689, metadata !20, metadata !"fmt", metadata !21, i32 50332390, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 742]
!45 = metadata !{i32 786689, metadata !20, metadata !"args", metadata !21, i32 67109606, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [args] [line 742]
!46 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"Util_snprintf", metadata !"Util_snprintf", metadata !"", i32 753, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i64, i8*, ...)* @Util_snprintf, null, null, metadata !49, i32 757} ; [ DW_TAG_subprogram ] [line 753] [def] [scope 757] [Util_snprintf]
!47 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{metadata !24, metadata !25, metadata !27, metadata !29}
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53, metadata !59}
!50 = metadata !{i32 786689, metadata !46, metadata !"str", metadata !21, i32 16777969, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 753]
!51 = metadata !{i32 786689, metadata !46, metadata !"count", metadata !21, i32 33555185, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 753]
!52 = metadata !{i32 786689, metadata !46, metadata !"fmt", metadata !21, i32 50332401, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 753]
!53 = metadata !{i32 786688, metadata !46, metadata !"ap", metadata !21, i32 763, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 763]
!54 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [va_list] [line 30, size 0, align 0, offset 0] [from __builtin_va_list]
!55 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 763, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 763, size 0, align 0, offset 0] [from ]
!56 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !32, metadata !57, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!59 = metadata !{i32 786688, metadata !46, metadata !"total", metadata !21, i32 764, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total] [line 764]
!60 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"dopr", metadata !"dopr", metadata !"", i32 165, metadata !22, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !61, i32 166} ; [ DW_TAG_subprogram ] [line 165] [local] [def] [scope 166] [dopr]
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !69, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !86, metadata !89}
!62 = metadata !{i32 786689, metadata !60, metadata !"buffer", metadata !21, i32 16777381, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 165]
!63 = metadata !{i32 786689, metadata !60, metadata !"maxlen", metadata !21, i32 33554597, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxlen] [line 165]
!64 = metadata !{i32 786689, metadata !60, metadata !"format", metadata !21, i32 50331813, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 165]
!65 = metadata !{i32 786689, metadata !60, metadata !"args", metadata !21, i32 67109029, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [args] [line 165]
!66 = metadata !{i32 786688, metadata !60, metadata !"ch", metadata !21, i32 167, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 167]
!67 = metadata !{i32 786688, metadata !60, metadata !"value", metadata !21, i32 168, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 168]
!68 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!69 = metadata !{i32 786688, metadata !60, metadata !"fvalue", metadata !21, i32 169, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fvalue] [line 169]
!70 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!71 = metadata !{i32 786688, metadata !60, metadata !"strvalue", metadata !21, i32 170, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [strvalue] [line 170]
!72 = metadata !{i32 786688, metadata !60, metadata !"min", metadata !21, i32 171, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min] [line 171]
!73 = metadata !{i32 786688, metadata !60, metadata !"max", metadata !21, i32 172, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max] [line 172]
!74 = metadata !{i32 786688, metadata !60, metadata !"state", metadata !21, i32 173, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [state] [line 173]
!75 = metadata !{i32 786688, metadata !60, metadata !"flags", metadata !21, i32 174, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flags] [line 174]
!76 = metadata !{i32 786688, metadata !60, metadata !"cflags", metadata !21, i32 175, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cflags] [line 175]
!77 = metadata !{i32 786688, metadata !60, metadata !"total", metadata !21, i32 176, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total] [line 176]
!78 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!79 = metadata !{i32 786688, metadata !80, metadata !"num", metadata !21, i32 373, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 373]
!80 = metadata !{i32 786443, metadata !1, metadata !81, i32 372, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!81 = metadata !{i32 786443, metadata !1, metadata !82, i32 291, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!82 = metadata !{i32 786443, metadata !1, metadata !83, i32 191, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!83 = metadata !{i32 786443, metadata !1, metadata !60, i32 186, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!85 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!86 = metadata !{i32 786688, metadata !87, metadata !"num", metadata !21, i32 379, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 379]
!87 = metadata !{i32 786443, metadata !1, metadata !81, i32 378, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!89 = metadata !{i32 786688, metadata !90, metadata !"num", metadata !21, i32 385, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 385]
!90 = metadata !{i32 786443, metadata !1, metadata !81, i32 384, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!92 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"fmtstr", metadata !"fmtstr", metadata !"", i32 423, metadata !93, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !96, i32 425} ; [ DW_TAG_subprogram ] [line 423] [local] [def] [scope 425] [fmtstr]
!93 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{metadata !24, metadata !25, metadata !95, metadata !27, metadata !25, metadata !24, metadata !24, metadata !24}
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from size_t]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107}
!97 = metadata !{i32 786689, metadata !92, metadata !"buffer", metadata !21, i32 16777639, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 423]
!98 = metadata !{i32 786689, metadata !92, metadata !"currlen", metadata !21, i32 33554855, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currlen] [line 423]
!99 = metadata !{i32 786689, metadata !92, metadata !"maxlen", metadata !21, i32 50332071, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxlen] [line 423]
!100 = metadata !{i32 786689, metadata !92, metadata !"value", metadata !21, i32 67109288, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 424]
!101 = metadata !{i32 786689, metadata !92, metadata !"flags", metadata !21, i32 83886504, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 424]
!102 = metadata !{i32 786689, metadata !92, metadata !"min", metadata !21, i32 100663720, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min] [line 424]
!103 = metadata !{i32 786689, metadata !92, metadata !"max", metadata !21, i32 117440936, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max] [line 424]
!104 = metadata !{i32 786688, metadata !92, metadata !"padlen", metadata !21, i32 426, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padlen] [line 426]
!105 = metadata !{i32 786688, metadata !92, metadata !"strln", metadata !21, i32 426, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [strln] [line 426]
!106 = metadata !{i32 786688, metadata !92, metadata !"cnt", metadata !21, i32 427, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cnt] [line 427]
!107 = metadata !{i32 786688, metadata !92, metadata !"total", metadata !21, i32 428, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total] [line 428]
!108 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"fmtfp", metadata !"fmtfp", metadata !"", i32 592, metadata !109, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !111, i32 594} ; [ DW_TAG_subprogram ] [line 592] [local] [def] [scope 594] [fmtfp]
!109 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!110 = metadata !{metadata !24, metadata !25, metadata !95, metadata !27, metadata !70, metadata !24, metadata !24, metadata !24}
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133}
!112 = metadata !{i32 786689, metadata !108, metadata !"buffer", metadata !21, i32 16777808, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 592]
!113 = metadata !{i32 786689, metadata !108, metadata !"currlen", metadata !21, i32 33555024, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currlen] [line 592]
!114 = metadata !{i32 786689, metadata !108, metadata !"maxlen", metadata !21, i32 50332240, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxlen] [line 592]
!115 = metadata !{i32 786689, metadata !108, metadata !"fvalue", metadata !21, i32 67109457, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fvalue] [line 593]
!116 = metadata !{i32 786689, metadata !108, metadata !"min", metadata !21, i32 83886673, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min] [line 593]
!117 = metadata !{i32 786689, metadata !108, metadata !"max", metadata !21, i32 100663889, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max] [line 593]
!118 = metadata !{i32 786689, metadata !108, metadata !"flags", metadata !21, i32 117441105, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 593]
!119 = metadata !{i32 786688, metadata !108, metadata !"signvalue", metadata !21, i32 595, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [signvalue] [line 595]
!120 = metadata !{i32 786688, metadata !108, metadata !"ufvalue", metadata !21, i32 596, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ufvalue] [line 596]
!121 = metadata !{i32 786688, metadata !108, metadata !"iconvert", metadata !21, i32 597, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iconvert] [line 597]
!122 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !26, metadata !123, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!123 = metadata !{metadata !124}
!124 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!125 = metadata !{i32 786688, metadata !108, metadata !"fconvert", metadata !21, i32 598, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fconvert] [line 598]
!126 = metadata !{i32 786688, metadata !108, metadata !"iplace", metadata !21, i32 599, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iplace] [line 599]
!127 = metadata !{i32 786688, metadata !108, metadata !"fplace", metadata !21, i32 600, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fplace] [line 600]
!128 = metadata !{i32 786688, metadata !108, metadata !"padlen", metadata !21, i32 601, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padlen] [line 601]
!129 = metadata !{i32 786688, metadata !108, metadata !"zpadlen", metadata !21, i32 602, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zpadlen] [line 602]
!130 = metadata !{i32 786688, metadata !108, metadata !"caps", metadata !21, i32 603, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [caps] [line 603]
!131 = metadata !{i32 786688, metadata !108, metadata !"total", metadata !21, i32 604, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total] [line 604]
!132 = metadata !{i32 786688, metadata !108, metadata !"intpart", metadata !21, i32 605, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [intpart] [line 605]
!133 = metadata !{i32 786688, metadata !108, metadata !"fracpart", metadata !21, i32 606, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fracpart] [line 606]
!134 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"pow10", metadata !"pow10", metadata !"", i32 567, metadata !135, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !137, i32 568} ; [ DW_TAG_subprogram ] [line 567] [local] [def] [scope 568] [pow10]
!135 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!136 = metadata !{metadata !70, metadata !24}
!137 = metadata !{metadata !138, metadata !139}
!138 = metadata !{i32 786689, metadata !134, metadata !"exp", metadata !21, i32 16777783, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [exp] [line 567]
!139 = metadata !{i32 786688, metadata !134, metadata !"result", metadata !21, i32 569, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 569]
!140 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"round", metadata !"round", metadata !"", i32 580, metadata !141, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !143, i32 581} ; [ DW_TAG_subprogram ] [line 580] [local] [def] [scope 581] [round]
!141 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!142 = metadata !{metadata !68, metadata !70}
!143 = metadata !{metadata !144, metadata !145}
!144 = metadata !{i32 786689, metadata !140, metadata !"value", metadata !21, i32 16777796, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 580]
!145 = metadata !{i32 786688, metadata !140, metadata !"intpart", metadata !21, i32 582, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [intpart] [line 582]
!146 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"abs_val", metadata !"abs_val", metadata !"", i32 557, metadata !147, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !149, i32 558} ; [ DW_TAG_subprogram ] [line 557] [local] [def] [scope 558] [abs_val]
!147 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{metadata !70, metadata !70}
!149 = metadata !{metadata !150, metadata !151}
!150 = metadata !{i32 786689, metadata !146, metadata !"value", metadata !21, i32 16777773, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 557]
!151 = metadata !{i32 786688, metadata !146, metadata !"result", metadata !21, i32 559, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 559]
!152 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"fmtint", metadata !"fmtint", metadata !"", i32 464, metadata !153, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i64*, i64, i64, i32, i32, i32, i32)* @fmtint, null, null, metadata !155, i32 466} ; [ DW_TAG_subprogram ] [line 464] [local] [def] [scope 466] [fmtint]
!153 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!154 = metadata !{metadata !24, metadata !25, metadata !95, metadata !27, metadata !68, metadata !24, metadata !24, metadata !24, metadata !24}
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171}
!156 = metadata !{i32 786689, metadata !152, metadata !"buffer", metadata !21, i32 16777680, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 464]
!157 = metadata !{i32 786689, metadata !152, metadata !"currlen", metadata !21, i32 33554896, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currlen] [line 464]
!158 = metadata !{i32 786689, metadata !152, metadata !"maxlen", metadata !21, i32 50332112, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxlen] [line 464]
!159 = metadata !{i32 786689, metadata !152, metadata !"value", metadata !21, i32 67109329, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 465]
!160 = metadata !{i32 786689, metadata !152, metadata !"base", metadata !21, i32 83886545, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 465]
!161 = metadata !{i32 786689, metadata !152, metadata !"min", metadata !21, i32 100663761, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min] [line 465]
!162 = metadata !{i32 786689, metadata !152, metadata !"max", metadata !21, i32 117440977, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max] [line 465]
!163 = metadata !{i32 786689, metadata !152, metadata !"flags", metadata !21, i32 134218193, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 465]
!164 = metadata !{i32 786688, metadata !152, metadata !"signvalue", metadata !21, i32 467, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [signvalue] [line 467]
!165 = metadata !{i32 786688, metadata !152, metadata !"uvalue", metadata !21, i32 468, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uvalue] [line 468]
!166 = metadata !{i32 786688, metadata !152, metadata !"convert", metadata !21, i32 469, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [convert] [line 469]
!167 = metadata !{i32 786688, metadata !152, metadata !"place", metadata !21, i32 470, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [place] [line 470]
!168 = metadata !{i32 786688, metadata !152, metadata !"spadlen", metadata !21, i32 471, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [spadlen] [line 471]
!169 = metadata !{i32 786688, metadata !152, metadata !"zpadlen", metadata !21, i32 472, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zpadlen] [line 472]
!170 = metadata !{i32 786688, metadata !152, metadata !"caps", metadata !21, i32 473, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [caps] [line 473]
!171 = metadata !{i32 786688, metadata !152, metadata !"total", metadata !21, i32 474, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total] [line 474]
!172 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"dopr_outch", metadata !"dopr_outch", metadata !"", i32 734, metadata !173, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !175, i32 735} ; [ DW_TAG_subprogram ] [line 734] [local] [def] [scope 735] [dopr_outch]
!173 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!174 = metadata !{metadata !24, metadata !25, metadata !95, metadata !27, metadata !26}
!175 = metadata !{metadata !176, metadata !177, metadata !178, metadata !179}
!176 = metadata !{i32 786689, metadata !172, metadata !"buffer", metadata !21, i32 16777950, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 734]
!177 = metadata !{i32 786689, metadata !172, metadata !"currlen", metadata !21, i32 33555166, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currlen] [line 734]
!178 = metadata !{i32 786689, metadata !172, metadata !"maxlen", metadata !21, i32 50332382, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxlen] [line 734]
!179 = metadata !{i32 786689, metadata !172, metadata !"c", metadata !21, i32 67109598, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 734]
!180 = metadata !{i32 742, i32 0, metadata !20, null}
!181 = metadata !{i32 744, i32 0, metadata !20, null}
!182 = metadata !{i32 745, i32 0, metadata !20, null}
!183 = metadata !{metadata !"omnipotent char", metadata !184}
!184 = metadata !{metadata !"Simple C/C++ TBAA"}
!185 = metadata !{i32 165, i32 0, metadata !60, metadata !186}
!186 = metadata !{i32 746, i32 0, metadata !20, null}
!187 = metadata !{i32 786689, metadata !60, metadata !"buffer", metadata !21, i32 16777381, metadata !25, i32 0, metadata !186} ; [ DW_TAG_arg_variable ] [buffer] [line 165]
!188 = metadata !{i32 786689, metadata !60, metadata !"maxlen", metadata !21, i32 33554597, metadata !27, i32 0, metadata !186} ; [ DW_TAG_arg_variable ] [maxlen] [line 165]
!189 = metadata !{i32 786689, metadata !60, metadata !"format", metadata !21, i32 50331813, metadata !29, i32 0, metadata !186} ; [ DW_TAG_arg_variable ] [format] [line 165]
!190 = metadata !{i32 786689, metadata !60, metadata !"args", metadata !21, i32 67109029, metadata !31, i32 0, metadata !186} ; [ DW_TAG_arg_variable ] [args] [line 165]
!191 = metadata !{i32 177, i32 0, metadata !60, metadata !186}
!192 = metadata !{i32 786688, metadata !60, metadata !"state", metadata !21, i32 173, metadata !24, i32 0, metadata !186} ; [ DW_TAG_auto_variable ] [state] [line 173]
!193 = metadata !{i32 179, i32 0, metadata !60, metadata !186}
!194 = metadata !{i32 786688, metadata !60, metadata !"min", metadata !21, i32 171, metadata !24, i32 0, metadata !186} ; [ DW_TAG_auto_variable ] [min] [line 171]
!195 = metadata !{i32 180, i32 0, metadata !60, metadata !186}
!196 = metadata !{i32 786688, metadata !60, metadata !"cflags", metadata !21, i32 175, metadata !24, i32 0, metadata !186} ; [ DW_TAG_auto_variable ] [cflags] [line 175]
!197 = metadata !{i32 786688, metadata !60, metadata !"flags", metadata !21, i32 174, metadata !24, i32 0, metadata !186} ; [ DW_TAG_auto_variable ] [flags] [line 174]
!198 = metadata !{i64 0}
!199 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !186} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!200 = metadata !{metadata !"long", metadata !183}
!201 = metadata !{i32 -1}
!202 = metadata !{i32 786688, metadata !60, metadata !"max", metadata !21, i32 172, metadata !24, i32 0, metadata !186} ; [ DW_TAG_auto_variable ] [max] [line 172]
!203 = metadata !{i32 181, i32 0, metadata !60, metadata !186}
!204 = metadata !{i32 182, i32 0, metadata !60, metadata !186}
!205 = metadata !{i32 786688, metadata !60, metadata !"ch", metadata !21, i32 167, metadata !26, i32 0, metadata !186} ; [ DW_TAG_auto_variable ] [ch] [line 167]
!206 = metadata !{i32 786688, metadata !60, metadata !"total", metadata !21, i32 176, metadata !24, i32 0, metadata !186} ; [ DW_TAG_auto_variable ] [total] [line 176]
!207 = metadata !{i32 183, i32 0, metadata !60, metadata !186}
!208 = metadata !{i32 235, i32 0, metadata !209, metadata !186}
!209 = metadata !{i32 786443, metadata !1, metadata !82, i32 234, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!210 = metadata !{i32 336, i32 0, metadata !81, metadata !186}
!211 = metadata !{i32 592, i32 0, metadata !108, metadata !212}
!212 = metadata !{i32 340, i32 0, metadata !81, metadata !186}
!213 = metadata !{i32 185, i32 0, metadata !60, metadata !186}
!214 = metadata !{i32 187, i32 0, metadata !83, metadata !186}
!215 = metadata !{i32 7}
!216 = metadata !{i32 188, i32 0, metadata !83, metadata !186}
!217 = metadata !{i32 190, i32 0, metadata !83, metadata !186}
!218 = metadata !{i32 193, i32 0, metadata !82, metadata !186}
!219 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !220} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!220 = metadata !{i32 196, i32 0, metadata !82, metadata !186}
!221 = metadata !{i32 736, i32 0, metadata !172, metadata !220}
!222 = metadata !{i32 737, i32 0, metadata !172, metadata !220}
!223 = metadata !{i32 197, i32 0, metadata !82, metadata !186}
!224 = metadata !{i32 198, i32 0, metadata !82, metadata !186}
!225 = metadata !{i32 200, i32 0, metadata !82, metadata !186}
!226 = metadata !{i32 203, i32 0, metadata !227, metadata !186}
!227 = metadata !{i32 786443, metadata !1, metadata !82, i32 201, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!228 = metadata !{i32 204, i32 0, metadata !227, metadata !186}
!229 = metadata !{i32 205, i32 0, metadata !227, metadata !186}
!230 = metadata !{i32 207, i32 0, metadata !227, metadata !186}
!231 = metadata !{i32 208, i32 0, metadata !227, metadata !186}
!232 = metadata !{i32 209, i32 0, metadata !227, metadata !186}
!233 = metadata !{i32 211, i32 0, metadata !227, metadata !186}
!234 = metadata !{i32 212, i32 0, metadata !227, metadata !186}
!235 = metadata !{i32 213, i32 0, metadata !227, metadata !186}
!236 = metadata !{i32 215, i32 0, metadata !227, metadata !186}
!237 = metadata !{i32 216, i32 0, metadata !227, metadata !186}
!238 = metadata !{i32 217, i32 0, metadata !227, metadata !186}
!239 = metadata !{i32 219, i32 0, metadata !227, metadata !186}
!240 = metadata !{i32 220, i32 0, metadata !227, metadata !186}
!241 = metadata !{i32 221, i32 0, metadata !227, metadata !186}
!242 = metadata !{i32 228, i32 0, metadata !82, metadata !186}
!243 = metadata !{metadata !"any pointer", metadata !183}
!244 = metadata !{metadata !"short", metadata !183}
!245 = metadata !{i32 230, i32 0, metadata !246, metadata !186}
!246 = metadata !{i32 786443, metadata !1, metadata !82, i32 229, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!247 = metadata !{i32 231, i32 0, metadata !246, metadata !186}
!248 = metadata !{i32 232, i32 0, metadata !246, metadata !186}
!249 = metadata !{i32 233, i32 0, metadata !82, metadata !186}
!250 = metadata !{i32 236, i32 0, metadata !209, metadata !186}
!251 = metadata !{i32 3}
!252 = metadata !{i32 237, i32 0, metadata !209, metadata !186}
!253 = metadata !{i32 238, i32 0, metadata !209, metadata !186}
!254 = metadata !{i32 243, i32 0, metadata !82, metadata !186}
!255 = metadata !{i32 4}
!256 = metadata !{i32 245, i32 0, metadata !257, metadata !186}
!257 = metadata !{i32 786443, metadata !1, metadata !82, i32 244, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!258 = metadata !{i32 246, i32 0, metadata !257, metadata !186}
!259 = metadata !{i32 247, i32 0, metadata !257, metadata !186}
!260 = metadata !{i32 252, i32 0, metadata !82, metadata !186}
!261 = metadata !{i32 254, i32 0, metadata !262, metadata !186}
!262 = metadata !{i32 786443, metadata !1, metadata !82, i32 253, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!263 = metadata !{i32 255, i32 0, metadata !262, metadata !186}
!264 = metadata !{i32 256, i32 0, metadata !262, metadata !186}
!265 = metadata !{i32 257, i32 0, metadata !262, metadata !186}
!266 = metadata !{i32 258, i32 0, metadata !262, metadata !186}
!267 = metadata !{i32 259, i32 0, metadata !82, metadata !186}
!268 = metadata !{i32 261, i32 0, metadata !269, metadata !186}
!269 = metadata !{i32 786443, metadata !1, metadata !82, i32 260, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!270 = metadata !{i32 262, i32 0, metadata !269, metadata !186}
!271 = metadata !{i32 5}
!272 = metadata !{i32 263, i32 0, metadata !269, metadata !186}
!273 = metadata !{i32 264, i32 0, metadata !269, metadata !186}
!274 = metadata !{i32 270, i32 0, metadata !82, metadata !186}
!275 = metadata !{i32 1}
!276 = metadata !{i32 273, i32 0, metadata !277, metadata !186}
!277 = metadata !{i32 786443, metadata !1, metadata !82, i32 271, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!278 = metadata !{i32 274, i32 0, metadata !277, metadata !186}
!279 = metadata !{i32 275, i32 0, metadata !277, metadata !186}
!280 = metadata !{i32 2}
!281 = metadata !{i32 277, i32 0, metadata !277, metadata !186}
!282 = metadata !{i32 278, i32 0, metadata !277, metadata !186}
!283 = metadata !{i32 279, i32 0, metadata !277, metadata !186}
!284 = metadata !{i32 281, i32 0, metadata !277, metadata !186}
!285 = metadata !{i32 282, i32 0, metadata !277, metadata !186}
!286 = metadata !{i32 283, i32 0, metadata !277, metadata !186}
!287 = metadata !{i32 290, i32 0, metadata !82, metadata !186}
!288 = metadata !{i32 294, i32 0, metadata !81, metadata !186}
!289 = metadata !{i32 295, i32 0, metadata !81, metadata !186}
!290 = metadata !{i32 786688, metadata !60, metadata !"value", metadata !21, i32 168, metadata !68, i32 0, metadata !186} ; [ DW_TAG_auto_variable ] [value] [line 168]
!291 = metadata !{i32 296, i32 0, metadata !81, metadata !186}
!292 = metadata !{i32 297, i32 0, metadata !81, metadata !186}
!293 = metadata !{i32 299, i32 0, metadata !81, metadata !186}
!294 = metadata !{i32 300, i32 0, metadata !81, metadata !186}
!295 = metadata !{i32 301, i32 0, metadata !81, metadata !186}
!296 = metadata !{i32 303, i32 0, metadata !81, metadata !186}
!297 = metadata !{i32 304, i32 0, metadata !81, metadata !186}
!298 = metadata !{i32 305, i32 0, metadata !81, metadata !186}
!299 = metadata !{i32 306, i32 0, metadata !81, metadata !186}
!300 = metadata !{i32 307, i32 0, metadata !81, metadata !186}
!301 = metadata !{i32 309, i32 0, metadata !81, metadata !186}
!302 = metadata !{i32 310, i32 0, metadata !81, metadata !186}
!303 = metadata !{i32 311, i32 0, metadata !81, metadata !186}
!304 = metadata !{i32 313, i32 0, metadata !81, metadata !186}
!305 = metadata !{i32 314, i32 0, metadata !81, metadata !186}
!306 = metadata !{i32 315, i32 0, metadata !81, metadata !186}
!307 = metadata !{i32 316, i32 0, metadata !81, metadata !186}
!308 = metadata !{i32 317, i32 0, metadata !81, metadata !186}
!309 = metadata !{i32 319, i32 0, metadata !81, metadata !186}
!310 = metadata !{i32 320, i32 0, metadata !81, metadata !186}
!311 = metadata !{i32 321, i32 0, metadata !81, metadata !186}
!312 = metadata !{i32 323, i32 0, metadata !81, metadata !186}
!313 = metadata !{i32 325, i32 0, metadata !81, metadata !186}
!314 = metadata !{i32 326, i32 0, metadata !81, metadata !186}
!315 = metadata !{i32 327, i32 0, metadata !81, metadata !186}
!316 = metadata !{i32 328, i32 0, metadata !81, metadata !186}
!317 = metadata !{i32 329, i32 0, metadata !81, metadata !186}
!318 = metadata !{i32 331, i32 0, metadata !81, metadata !186}
!319 = metadata !{i32 332, i32 0, metadata !81, metadata !186}
!320 = metadata !{i32 333, i32 0, metadata !81, metadata !186}
!321 = metadata !{i32 335, i32 0, metadata !81, metadata !186}
!322 = metadata !{i32 338, i32 0, metadata !81, metadata !186}
!323 = metadata !{i32 786689, metadata !108, metadata !"buffer", metadata !21, i32 16777808, metadata !25, i32 0, metadata !212} ; [ DW_TAG_arg_variable ] [buffer] [line 592]
!324 = metadata !{i32 786689, metadata !108, metadata !"currlen", metadata !21, i32 33555024, metadata !95, i32 0, metadata !212} ; [ DW_TAG_arg_variable ] [currlen] [line 592]
!325 = metadata !{i32 786689, metadata !108, metadata !"maxlen", metadata !21, i32 50332240, metadata !27, i32 0, metadata !212} ; [ DW_TAG_arg_variable ] [maxlen] [line 592]
!326 = metadata !{i32 786689, metadata !108, metadata !"fvalue", metadata !21, i32 67109457, metadata !70, i32 0, metadata !212} ; [ DW_TAG_arg_variable ] [fvalue] [line 593]
!327 = metadata !{i32 593, i32 0, metadata !108, metadata !212}
!328 = metadata !{i32 786689, metadata !108, metadata !"min", metadata !21, i32 83886673, metadata !24, i32 0, metadata !212} ; [ DW_TAG_arg_variable ] [min] [line 593]
!329 = metadata !{i32 786689, metadata !108, metadata !"max", metadata !21, i32 100663889, metadata !24, i32 0, metadata !212} ; [ DW_TAG_arg_variable ] [max] [line 593]
!330 = metadata !{i32 786689, metadata !108, metadata !"flags", metadata !21, i32 117441105, metadata !24, i32 0, metadata !212} ; [ DW_TAG_arg_variable ] [flags] [line 593]
!331 = metadata !{i32 786688, metadata !108, metadata !"signvalue", metadata !21, i32 595, metadata !24, i32 0, metadata !212} ; [ DW_TAG_auto_variable ] [signvalue] [line 595]
!332 = metadata !{i32 595, i32 0, metadata !108, metadata !212}
!333 = metadata !{i32 597, i32 0, metadata !108, metadata !212}
!334 = metadata !{i32 598, i32 0, metadata !108, metadata !212}
!335 = metadata !{i32 786688, metadata !108, metadata !"iplace", metadata !21, i32 599, metadata !24, i32 0, metadata !212} ; [ DW_TAG_auto_variable ] [iplace] [line 599]
!336 = metadata !{i32 599, i32 0, metadata !108, metadata !212}
!337 = metadata !{i32 786688, metadata !108, metadata !"fplace", metadata !21, i32 600, metadata !24, i32 0, metadata !212} ; [ DW_TAG_auto_variable ] [fplace] [line 600]
!338 = metadata !{i32 600, i32 0, metadata !108, metadata !212}
!339 = metadata !{i32 786688, metadata !108, metadata !"padlen", metadata !21, i32 601, metadata !24, i32 0, metadata !212} ; [ DW_TAG_auto_variable ] [padlen] [line 601]
!340 = metadata !{i32 601, i32 0, metadata !108, metadata !212}
!341 = metadata !{i32 786688, metadata !108, metadata !"zpadlen", metadata !21, i32 602, metadata !24, i32 0, metadata !212} ; [ DW_TAG_auto_variable ] [zpadlen] [line 602]
!342 = metadata !{i32 602, i32 0, metadata !108, metadata !212}
!343 = metadata !{i32 786688, metadata !108, metadata !"caps", metadata !21, i32 603, metadata !24, i32 0, metadata !212} ; [ DW_TAG_auto_variable ] [caps] [line 603]
!344 = metadata !{i32 603, i32 0, metadata !108, metadata !212}
!345 = metadata !{i32 786688, metadata !108, metadata !"total", metadata !21, i32 604, metadata !24, i32 0, metadata !212} ; [ DW_TAG_auto_variable ] [total] [line 604]
!346 = metadata !{i32 604, i32 0, metadata !108, metadata !212}
!347 = metadata !{i32 612, i32 0, metadata !108, metadata !212}
!348 = metadata !{i32 6}
!349 = metadata !{i32 613, i32 0, metadata !108, metadata !212}
!350 = metadata !{i32 786689, metadata !146, metadata !"value", metadata !21, i32 16777773, metadata !70, i32 0, metadata !351} ; [ DW_TAG_arg_variable ] [value] [line 557]
!351 = metadata !{i32 615, i32 0, metadata !108, metadata !212}
!352 = metadata !{i32 557, i32 0, metadata !146, metadata !351}
!353 = metadata !{i32 786688, metadata !146, metadata !"result", metadata !21, i32 559, metadata !70, i32 0, metadata !351} ; [ DW_TAG_auto_variable ] [result] [line 559]
!354 = metadata !{i32 559, i32 0, metadata !146, metadata !351}
!355 = metadata !{i32 561, i32 0, metadata !146, metadata !351}
!356 = metadata !{i32 562, i32 0, metadata !146, metadata !351}
!357 = metadata !{i32 617, i32 0, metadata !108, metadata !212}
!358 = metadata !{i32 620, i32 0, metadata !108, metadata !212}
!359 = metadata !{i32 32}
!360 = metadata !{i32 624, i32 0, metadata !108, metadata !212}
!361 = metadata !{i32 623, i32 0, metadata !108, metadata !212}
!362 = metadata !{i32 630, i32 0, metadata !108, metadata !212}
!363 = metadata !{i32 786688, metadata !108, metadata !"intpart", metadata !21, i32 605, metadata !68, i32 0, metadata !212} ; [ DW_TAG_auto_variable ] [intpart] [line 605]
!364 = metadata !{i32 636, i32 0, metadata !108, metadata !212}
!365 = metadata !{i32 9}
!366 = metadata !{i32 637, i32 0, metadata !108, metadata !212}
!367 = metadata !{i32 786689, metadata !134, metadata !"exp", metadata !21, i32 16777783, metadata !24, i32 0, metadata !368} ; [ DW_TAG_arg_variable ] [exp] [line 567]
!368 = metadata !{i32 642, i32 0, metadata !108, metadata !212}
!369 = metadata !{i32 567, i32 0, metadata !134, metadata !368}
!370 = metadata !{double 1.000000e+00}
!371 = metadata !{i32 786688, metadata !134, metadata !"result", metadata !21, i32 569, metadata !70, i32 0, metadata !368} ; [ DW_TAG_auto_variable ] [result] [line 569]
!372 = metadata !{i32 569, i32 0, metadata !134, metadata !368}
!373 = metadata !{i32 571, i32 0, metadata !134, metadata !368}
!374 = metadata !{i32 573, i32 0, metadata !375, metadata !368}
!375 = metadata !{i32 786443, metadata !1, metadata !134, i32 572, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!376 = metadata !{i32 574, i32 0, metadata !375, metadata !368}
!377 = metadata !{i32 786689, metadata !140, metadata !"value", metadata !21, i32 16777796, metadata !70, i32 0, metadata !368} ; [ DW_TAG_arg_variable ] [value] [line 580]
!378 = metadata !{i32 580, i32 0, metadata !140, metadata !368}
!379 = metadata !{i32 584, i32 0, metadata !140, metadata !368}
!380 = metadata !{i32 786688, metadata !140, metadata !"intpart", metadata !21, i32 582, metadata !68, i32 0, metadata !368} ; [ DW_TAG_auto_variable ] [intpart] [line 582]
!381 = metadata !{i32 585, i32 0, metadata !140, metadata !368}
!382 = metadata !{i32 586, i32 0, metadata !140, metadata !368}
!383 = metadata !{i32 786688, metadata !108, metadata !"fracpart", metadata !21, i32 606, metadata !68, i32 0, metadata !212} ; [ DW_TAG_auto_variable ] [fracpart] [line 606]
!384 = metadata !{i32 644, i32 0, metadata !108, metadata !212}
!385 = metadata !{i32 786689, metadata !134, metadata !"exp", metadata !21, i32 16777783, metadata !24, i32 0, metadata !384} ; [ DW_TAG_arg_variable ] [exp] [line 567]
!386 = metadata !{i32 567, i32 0, metadata !134, metadata !384}
!387 = metadata !{i32 786688, metadata !134, metadata !"result", metadata !21, i32 569, metadata !70, i32 0, metadata !384} ; [ DW_TAG_auto_variable ] [result] [line 569]
!388 = metadata !{i32 569, i32 0, metadata !134, metadata !384}
!389 = metadata !{i32 571, i32 0, metadata !134, metadata !384}
!390 = metadata !{i32 573, i32 0, metadata !375, metadata !384}
!391 = metadata !{i32 574, i32 0, metadata !375, metadata !384}
!392 = metadata !{i32 646, i32 0, metadata !393, metadata !212}
!393 = metadata !{i32 786443, metadata !1, metadata !108, i32 645, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!394 = metadata !{i32 786689, metadata !134, metadata !"exp", metadata !21, i32 16777783, metadata !24, i32 0, metadata !395} ; [ DW_TAG_arg_variable ] [exp] [line 567]
!395 = metadata !{i32 647, i32 0, metadata !393, metadata !212}
!396 = metadata !{i32 567, i32 0, metadata !134, metadata !395}
!397 = metadata !{i32 786688, metadata !134, metadata !"result", metadata !21, i32 569, metadata !70, i32 0, metadata !395} ; [ DW_TAG_auto_variable ] [result] [line 569]
!398 = metadata !{i32 569, i32 0, metadata !134, metadata !395}
!399 = metadata !{i32 571, i32 0, metadata !134, metadata !395}
!400 = metadata !{i32 573, i32 0, metadata !375, metadata !395}
!401 = metadata !{i32 574, i32 0, metadata !375, metadata !395}
!402 = metadata !{i32 648, i32 0, metadata !393, metadata !212}
!403 = metadata !{i32 656, i32 0, metadata !404, metadata !212}
!404 = metadata !{i32 786443, metadata !1, metadata !108, i32 655, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!405 = metadata !{i32 659, i32 0, metadata !404, metadata !212}
!406 = metadata !{i32 658, i32 0, metadata !404, metadata !212}
!407 = metadata !{i32 660, i32 0, metadata !108, metadata !212}
!408 = metadata !{i32 661, i32 0, metadata !108, metadata !212}
!409 = metadata !{i32 664, i32 0, metadata !108, metadata !212}
!410 = metadata !{i32 665, i32 0, metadata !411, metadata !212}
!411 = metadata !{i32 786443, metadata !1, metadata !108, i32 664, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!412 = metadata !{i32 668, i32 0, metadata !411, metadata !212}
!413 = metadata !{i32 667, i32 0, metadata !411, metadata !212}
!414 = metadata !{i32 669, i32 0, metadata !108, metadata !212}
!415 = metadata !{i32 670, i32 0, metadata !108, metadata !212}
!416 = metadata !{i32 673, i32 0, metadata !108, metadata !212}
!417 = metadata !{i32 674, i32 0, metadata !108, metadata !212}
!418 = metadata !{i32 675, i32 0, metadata !108, metadata !212}
!419 = metadata !{i32 676, i32 0, metadata !108, metadata !212}
!420 = metadata !{i32 677, i32 0, metadata !108, metadata !212}
!421 = metadata !{i32 678, i32 0, metadata !108, metadata !212}
!422 = metadata !{i32 679, i32 0, metadata !108, metadata !212}
!423 = metadata !{i32 680, i32 0, metadata !108, metadata !212}
!424 = metadata !{i32 682, i32 0, metadata !108, metadata !212}
!425 = metadata !{i32 696, i32 0, metadata !108, metadata !212}
!426 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !427} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!427 = metadata !{i32 698, i32 0, metadata !428, metadata !212}
!428 = metadata !{i32 786443, metadata !1, metadata !108, i32 697, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!429 = metadata !{i32 736, i32 0, metadata !172, metadata !427}
!430 = metadata !{i32 684, i32 0, metadata !431, metadata !212}
!431 = metadata !{i32 786443, metadata !1, metadata !108, i32 683, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!432 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !433} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!433 = metadata !{i32 686, i32 0, metadata !434, metadata !212}
!434 = metadata !{i32 786443, metadata !1, metadata !431, i32 685, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!435 = metadata !{i32 736, i32 0, metadata !172, metadata !433}
!436 = metadata !{i32 737, i32 0, metadata !172, metadata !433}
!437 = metadata !{i32 687, i32 0, metadata !434, metadata !212}
!438 = metadata !{i32 688, i32 0, metadata !434, metadata !212}
!439 = metadata !{i32 689, i32 0, metadata !434, metadata !212}
!440 = metadata !{i32 690, i32 0, metadata !431, metadata !212}
!441 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !442} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!442 = metadata !{i32 692, i32 0, metadata !443, metadata !212}
!443 = metadata !{i32 786443, metadata !1, metadata !431, i32 691, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!444 = metadata !{i32 736, i32 0, metadata !172, metadata !442}
!445 = metadata !{i32 737, i32 0, metadata !172, metadata !442}
!446 = metadata !{i32 693, i32 0, metadata !443, metadata !212}
!447 = metadata !{i32 737, i32 0, metadata !172, metadata !427}
!448 = metadata !{i32 699, i32 0, metadata !428, metadata !212}
!449 = metadata !{i32 701, i32 0, metadata !108, metadata !212}
!450 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !451} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!451 = metadata !{i32 702, i32 0, metadata !108, metadata !212}
!452 = metadata !{i32 736, i32 0, metadata !172, metadata !451}
!453 = metadata !{i32 737, i32 0, metadata !172, metadata !451}
!454 = metadata !{i32 704, i32 0, metadata !108, metadata !212}
!455 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !456} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!456 = metadata !{i32 705, i32 0, metadata !108, metadata !212}
!457 = metadata !{i32 736, i32 0, metadata !172, metadata !456}
!458 = metadata !{i32 737, i32 0, metadata !172, metadata !456}
!459 = metadata !{i32 711, i32 0, metadata !108, metadata !212}
!460 = metadata !{i32 715, i32 0, metadata !461, metadata !212}
!461 = metadata !{i32 786443, metadata !1, metadata !108, i32 712, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!462 = metadata !{i32 719, i32 0, metadata !108, metadata !212}
!463 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !464} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!464 = metadata !{i32 721, i32 0, metadata !465, metadata !212}
!465 = metadata !{i32 786443, metadata !1, metadata !108, i32 720, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!466 = metadata !{i32 736, i32 0, metadata !172, metadata !464}
!467 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !468} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!468 = metadata !{i32 713, i32 0, metadata !461, metadata !212}
!469 = metadata !{i32 736, i32 0, metadata !172, metadata !468}
!470 = metadata !{i32 737, i32 0, metadata !172, metadata !468}
!471 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !472} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!472 = metadata !{i32 716, i32 0, metadata !461, metadata !212}
!473 = metadata !{i32 736, i32 0, metadata !172, metadata !472}
!474 = metadata !{i32 737, i32 0, metadata !172, metadata !472}
!475 = metadata !{i32 725, i32 0, metadata !108, metadata !212}
!476 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !477} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!477 = metadata !{i32 727, i32 0, metadata !478, metadata !212}
!478 = metadata !{i32 786443, metadata !1, metadata !108, i32 726, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!479 = metadata !{i32 736, i32 0, metadata !172, metadata !477}
!480 = metadata !{i32 737, i32 0, metadata !172, metadata !464}
!481 = metadata !{i32 722, i32 0, metadata !465, metadata !212}
!482 = metadata !{i32 737, i32 0, metadata !172, metadata !477}
!483 = metadata !{i32 728, i32 0, metadata !478, metadata !212}
!484 = metadata !{i32 731, i32 0, metadata !108, metadata !212}
!485 = metadata !{i32 341, i32 0, metadata !81, metadata !186}
!486 = metadata !{i32 345, i32 0, metadata !81, metadata !186}
!487 = metadata !{i32 346, i32 0, metadata !81, metadata !186}
!488 = metadata !{i32 348, i32 0, metadata !81, metadata !186}
!489 = metadata !{i32 353, i32 0, metadata !81, metadata !186}
!490 = metadata !{i32 354, i32 0, metadata !81, metadata !186}
!491 = metadata !{i32 356, i32 0, metadata !81, metadata !186}
!492 = metadata !{i32 359, i32 0, metadata !81, metadata !186}
!493 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !492} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!494 = metadata !{i32 736, i32 0, metadata !172, metadata !492}
!495 = metadata !{i32 737, i32 0, metadata !172, metadata !492}
!496 = metadata !{i32 360, i32 0, metadata !81, metadata !186}
!497 = metadata !{i32 362, i32 0, metadata !81, metadata !186}
!498 = metadata !{i32 786688, metadata !60, metadata !"strvalue", metadata !21, i32 170, metadata !25, i32 0, metadata !186} ; [ DW_TAG_auto_variable ] [strvalue] [line 170]
!499 = metadata !{i32 786689, metadata !92, metadata !"buffer", metadata !21, i32 16777639, metadata !25, i32 0, metadata !500} ; [ DW_TAG_arg_variable ] [buffer] [line 423]
!500 = metadata !{i32 363, i32 0, metadata !81, metadata !186}
!501 = metadata !{i32 423, i32 0, metadata !92, metadata !500}
!502 = metadata !{i32 786689, metadata !92, metadata !"currlen", metadata !21, i32 33554855, metadata !95, i32 0, metadata !500} ; [ DW_TAG_arg_variable ] [currlen] [line 423]
!503 = metadata !{i32 786689, metadata !92, metadata !"maxlen", metadata !21, i32 50332071, metadata !27, i32 0, metadata !500} ; [ DW_TAG_arg_variable ] [maxlen] [line 423]
!504 = metadata !{i32 786689, metadata !92, metadata !"value", metadata !21, i32 67109288, metadata !25, i32 0, metadata !500} ; [ DW_TAG_arg_variable ] [value] [line 424]
!505 = metadata !{i32 424, i32 0, metadata !92, metadata !500}
!506 = metadata !{i32 786689, metadata !92, metadata !"flags", metadata !21, i32 83886504, metadata !24, i32 0, metadata !500} ; [ DW_TAG_arg_variable ] [flags] [line 424]
!507 = metadata !{i32 786689, metadata !92, metadata !"min", metadata !21, i32 100663720, metadata !24, i32 0, metadata !500} ; [ DW_TAG_arg_variable ] [min] [line 424]
!508 = metadata !{i32 786689, metadata !92, metadata !"max", metadata !21, i32 117440936, metadata !24, i32 0, metadata !500} ; [ DW_TAG_arg_variable ] [max] [line 424]
!509 = metadata !{i32 786688, metadata !92, metadata !"cnt", metadata !21, i32 427, metadata !24, i32 0, metadata !500} ; [ DW_TAG_auto_variable ] [cnt] [line 427]
!510 = metadata !{i32 427, i32 0, metadata !92, metadata !500}
!511 = metadata !{i32 786688, metadata !92, metadata !"total", metadata !21, i32 428, metadata !24, i32 0, metadata !500} ; [ DW_TAG_auto_variable ] [total] [line 428]
!512 = metadata !{i32 428, i32 0, metadata !92, metadata !500}
!513 = metadata !{i32 430, i32 0, metadata !92, metadata !500}
!514 = metadata !{null}
!515 = metadata !{i32 432, i32 0, metadata !516, metadata !500}
!516 = metadata !{i32 786443, metadata !1, metadata !92, i32 431, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!517 = metadata !{i32 786688, metadata !92, metadata !"strln", metadata !21, i32 426, metadata !24, i32 0, metadata !500} ; [ DW_TAG_auto_variable ] [strln] [line 426]
!518 = metadata !{i32 435, i32 0, metadata !519, metadata !500}
!519 = metadata !{i32 786443, metadata !1, metadata !92, i32 435, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!520 = metadata !{i32 436, i32 0, metadata !92, metadata !500}
!521 = metadata !{i32 437, i32 0, metadata !92, metadata !500}
!522 = metadata !{i32 438, i32 0, metadata !92, metadata !500}
!523 = metadata !{i32 786688, metadata !92, metadata !"padlen", metadata !21, i32 426, metadata !24, i32 0, metadata !500} ; [ DW_TAG_auto_variable ] [padlen] [line 426]
!524 = metadata !{i32 439, i32 0, metadata !92, metadata !500}
!525 = metadata !{i32 440, i32 0, metadata !92, metadata !500}
!526 = metadata !{i32 441, i32 0, metadata !92, metadata !500}
!527 = metadata !{i32 442, i32 0, metadata !92, metadata !500}
!528 = metadata !{i32 444, i32 0, metadata !92, metadata !500}
!529 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !530} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!530 = metadata !{i32 446, i32 0, metadata !531, metadata !500}
!531 = metadata !{i32 786443, metadata !1, metadata !92, i32 445, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!532 = metadata !{i32 736, i32 0, metadata !172, metadata !530}
!533 = metadata !{i32 449, i32 0, metadata !92, metadata !500}
!534 = metadata !{i32 737, i32 0, metadata !172, metadata !530}
!535 = metadata !{i32 447, i32 0, metadata !531, metadata !500}
!536 = metadata !{i32 454, i32 0, metadata !92, metadata !500}
!537 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !538} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!538 = metadata !{i32 456, i32 0, metadata !539, metadata !500}
!539 = metadata !{i32 786443, metadata !1, metadata !92, i32 455, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!540 = metadata !{i32 736, i32 0, metadata !172, metadata !538}
!541 = metadata !{i32 451, i32 0, metadata !542, metadata !500}
!542 = metadata !{i32 786443, metadata !1, metadata !92, i32 450, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!543 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !541} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!544 = metadata !{i32 736, i32 0, metadata !172, metadata !541}
!545 = metadata !{i32 737, i32 0, metadata !172, metadata !541}
!546 = metadata !{i32 452, i32 0, metadata !542, metadata !500}
!547 = metadata !{i32 737, i32 0, metadata !172, metadata !538}
!548 = metadata !{i32 457, i32 0, metadata !539, metadata !500}
!549 = metadata !{i32 364, i32 0, metadata !81, metadata !186}
!550 = metadata !{i32 366, i32 0, metadata !81, metadata !186}
!551 = metadata !{i32 367, i32 0, metadata !81, metadata !186}
!552 = metadata !{i32 369, i32 0, metadata !81, metadata !186}
!553 = metadata !{i32 371, i32 0, metadata !81, metadata !186}
!554 = metadata !{i32 374, i32 0, metadata !80, metadata !186}
!555 = metadata !{i32 786688, metadata !80, metadata !"num", metadata !21, i32 373, metadata !84, i32 0, metadata !186} ; [ DW_TAG_auto_variable ] [num] [line 373]
!556 = metadata !{i32 375, i32 0, metadata !80, metadata !186}
!557 = metadata !{i32 376, i32 0, metadata !80, metadata !186}
!558 = metadata !{i32 377, i32 0, metadata !81, metadata !186}
!559 = metadata !{i32 380, i32 0, metadata !87, metadata !186}
!560 = metadata !{i32 786688, metadata !87, metadata !"num", metadata !21, i32 379, metadata !88, i32 0, metadata !186} ; [ DW_TAG_auto_variable ] [num] [line 379]
!561 = metadata !{i32 381, i32 0, metadata !87, metadata !186}
!562 = metadata !{i32 382, i32 0, metadata !87, metadata !186}
!563 = metadata !{i32 386, i32 0, metadata !90, metadata !186}
!564 = metadata !{i32 786688, metadata !90, metadata !"num", metadata !21, i32 385, metadata !91, i32 0, metadata !186} ; [ DW_TAG_auto_variable ] [num] [line 385]
!565 = metadata !{i32 387, i32 0, metadata !90, metadata !186}
!566 = metadata !{metadata !"int", metadata !183}
!567 = metadata !{i32 786688, metadata !60, metadata !"currlen", metadata !21, i32 177, metadata !27, i32 0, metadata !568} ; [ DW_TAG_auto_variable ] [currlen] [line 177]
!568 = metadata !{i32 391, i32 0, metadata !81, metadata !186}
!569 = metadata !{i32 736, i32 0, metadata !172, metadata !568}
!570 = metadata !{i32 737, i32 0, metadata !172, metadata !568}
!571 = metadata !{i32 392, i32 0, metadata !81, metadata !186}
!572 = metadata !{i32 395, i32 0, metadata !81, metadata !186}
!573 = metadata !{i32 396, i32 0, metadata !81, metadata !186}
!574 = metadata !{i32 401, i32 0, metadata !82, metadata !186}
!575 = metadata !{i32 402, i32 0, metadata !82, metadata !186}
!576 = metadata !{i32 403, i32 0, metadata !82, metadata !186}
!577 = metadata !{i32 404, i32 0, metadata !82, metadata !186}
!578 = metadata !{i32 405, i32 0, metadata !82, metadata !186}
!579 = metadata !{i32 413, i32 0, metadata !60, metadata !186}
!580 = metadata !{i32 415, i32 0, metadata !581, metadata !186}
!581 = metadata !{i32 786443, metadata !1, metadata !60, i32 414, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!582 = metadata !{i32 416, i32 0, metadata !581, metadata !186}
!583 = metadata !{i32 418, i32 0, metadata !581, metadata !186}
!584 = metadata !{i32 420, i32 0, metadata !60, metadata !186}
!585 = metadata !{i32 753, i32 0, metadata !46, null}
!586 = metadata !{i32 763, i32 0, metadata !46, null}
!587 = metadata !{i32 766, i32 0, metadata !46, null}
!588 = metadata !{i32 770, i32 0, metadata !46, null}
!589 = metadata !{i32 771, i32 0, metadata !46, null}
!590 = metadata !{i32 772, i32 0, metadata !46, null}
!591 = metadata !{i32 464, i32 0, metadata !152, null}
!592 = metadata !{i32 465, i32 0, metadata !152, null}
!593 = metadata !{i32 467, i32 0, metadata !152, null}
!594 = metadata !{i32 469, i32 0, metadata !152, null}
!595 = metadata !{i32 470, i32 0, metadata !152, null}
!596 = metadata !{i32 471, i32 0, metadata !152, null}
!597 = metadata !{i32 472, i32 0, metadata !152, null}
!598 = metadata !{i32 473, i32 0, metadata !152, null}
!599 = metadata !{i32 474, i32 0, metadata !152, null}
!600 = metadata !{i32 476, i32 0, metadata !152, null}
!601 = metadata !{i32 477, i32 0, metadata !152, null}
!602 = metadata !{i32 479, i32 0, metadata !152, null}
!603 = metadata !{i32 481, i32 0, metadata !152, null}
!604 = metadata !{i32 483, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !152, i32 482, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!606 = metadata !{i32 45}
!607 = metadata !{i32 484, i32 0, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !605, i32 483, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!609 = metadata !{i32 485, i32 0, metadata !608, null}
!610 = metadata !{i32 486, i32 0, metadata !608, null}
!611 = metadata !{i32 488, i32 0, metadata !605, null}
!612 = metadata !{i32 492, i32 0, metadata !605, null}
!613 = metadata !{i32 491, i32 0, metadata !605, null}
!614 = metadata !{i32 495, i32 0, metadata !152, null}
!615 = metadata !{i32 498, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !152, i32 497, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!617 = metadata !{i32 502, i32 0, metadata !616, null}
!618 = metadata !{i32 501, i32 0, metadata !616, null}
!619 = metadata !{i32 503, i32 0, metadata !152, null}
!620 = metadata !{i32 504, i32 0, metadata !152, null}
!621 = metadata !{i32 506, i32 0, metadata !152, null}
!622 = metadata !{i32 507, i32 0, metadata !152, null}
!623 = metadata !{i32 508, i32 0, metadata !152, null}
!624 = metadata !{i32 509, i32 0, metadata !152, null}
!625 = metadata !{i32 510, i32 0, metadata !152, null}
!626 = metadata !{i32 512, i32 0, metadata !627, null}
!627 = metadata !{i32 786443, metadata !1, metadata !152, i32 511, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!628 = metadata !{i32 513, i32 0, metadata !627, null}
!629 = metadata !{i32 514, i32 0, metadata !627, null}
!630 = metadata !{i32 515, i32 0, metadata !152, null}
!631 = metadata !{i32 516, i32 0, metadata !152, null}
!632 = metadata !{i32 524, i32 0, metadata !152, null}
!633 = metadata !{i32 736, i32 0, metadata !172, metadata !634}
!634 = metadata !{i32 526, i32 0, metadata !635, null}
!635 = metadata !{i32 786443, metadata !1, metadata !152, i32 525, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!636 = metadata !{i32 737, i32 0, metadata !172, metadata !634}
!637 = metadata !{i32 527, i32 0, metadata !635, null}
!638 = metadata !{i32 531, i32 0, metadata !152, null}
!639 = metadata !{i32 736, i32 0, metadata !172, metadata !640}
!640 = metadata !{i32 532, i32 0, metadata !152, null}
!641 = metadata !{i32 737, i32 0, metadata !172, metadata !640}
!642 = metadata !{i32 535, i32 0, metadata !152, null}
!643 = metadata !{i32 736, i32 0, metadata !172, metadata !644}
!644 = metadata !{i32 539, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !646, i32 538, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!646 = metadata !{i32 786443, metadata !1, metadata !152, i32 536, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!647 = metadata !{i32 737, i32 0, metadata !172, metadata !644}
!648 = metadata !{i32 537, i32 0, metadata !646, null}
!649 = metadata !{i32 545, i32 0, metadata !152, null}
!650 = metadata !{i32 549, i32 0, metadata !152, null}
!651 = metadata !{i32 736, i32 0, metadata !172, metadata !652}
!652 = metadata !{i32 546, i32 0, metadata !152, null}
!653 = metadata !{i32 737, i32 0, metadata !172, metadata !652}
!654 = metadata !{i32 736, i32 0, metadata !172, metadata !655}
!655 = metadata !{i32 550, i32 0, metadata !656, null}
!656 = metadata !{i32 786443, metadata !1, metadata !152, i32 549, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c]
!657 = metadata !{i32 737, i32 0, metadata !172, metadata !655}
!658 = metadata !{i32 551, i32 0, metadata !656, null}
!659 = metadata !{i32 554, i32 0, metadata !152, null}
