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
  %cmp = icmp eq i8* %str, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %str, align 1, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %0 = bitcast i64* %currlen.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %currlen.i, align 8, !tbaa !2
  %incdec.ptr.i = getelementptr inbounds i8* %fmt, i64 1
  %1 = load i8* %fmt, align 1, !tbaa !0
  %gp_offset_p.i = getelementptr inbounds %struct.__va_list_tag* %args, i64 0, i32 0
  %2 = getelementptr inbounds %struct.__va_list_tag* %args, i64 0, i32 3
  %overflow_arg_area_p.i = getelementptr inbounds %struct.__va_list_tag* %args, i64 0, i32 2
  %fp_offset_p.i = getelementptr inbounds %struct.__va_list_tag* %args, i64 0, i32 1
  %3 = getelementptr inbounds [20 x i8]* %iconvert.i.i, i64 0, i64 0
  %4 = getelementptr inbounds [20 x i8]* %fconvert.i.i, i64 0, i64 0
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog481.i, %sw.bb94.i, %sw.bb92.i, %sw.bb90.i, %sw.bb88.i, %vaarg.end82.i, %if.else68.i, %if.then58.i, %if.then46.i, %sw.bb42.i, %vaarg.end.i, %if.else33.i, %if.then29.i, %sw.bb22.i, %sw.bb19.i, %sw.bb16.i, %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %if.end7.i, %while.cond.backedge.i, %if.end
  %format.addr.0663.i = phi i8* [ %incdec.ptr.i, %if.end ], [ %format.addr.0663.i, %while.cond.backedge.i ], [ %incdec.ptr482.i, %sw.epilog481.i ], [ %incdec.ptr67.i, %if.then58.i ], [ %incdec.ptr84.i, %vaarg.end82.i ], [ %incdec.ptr47.i, %if.then46.i ], [ %incdec.ptr32.i, %if.then29.i ], [ %incdec.ptr38.i, %vaarg.end.i ], [ %incdec.ptr24.i, %sw.bb22.i ], [ %incdec.ptr21.i, %sw.bb19.i ], [ %incdec.ptr18.i, %sw.bb16.i ], [ %incdec.ptr15.i, %sw.bb13.i ], [ %incdec.ptr12.i, %sw.bb11.i ], [ %incdec.ptr8.i, %if.end7.i ], [ %format.addr.0663.i, %sw.bb9.i ], [ %format.addr.0663.i, %if.else33.i ], [ %format.addr.0663.i, %sw.bb42.i ], [ %format.addr.0663.i, %if.else68.i ], [ %format.addr.0663.i, %sw.bb88.i ], [ %incdec.ptr95.i, %sw.bb94.i ], [ %incdec.ptr93.i, %sw.bb92.i ], [ %incdec.ptr91.i, %sw.bb90.i ]
  %ch.0662.i = phi i8 [ %1, %if.end ], [ %ch.0662.i, %while.cond.backedge.i ], [ %167, %sw.epilog481.i ], [ %23, %if.then58.i ], [ %28, %vaarg.end82.i ], [ %20, %if.then46.i ], [ %14, %if.then29.i ], [ %19, %vaarg.end.i ], [ %11, %sw.bb22.i ], [ %10, %sw.bb19.i ], [ %9, %sw.bb16.i ], [ %8, %sw.bb13.i ], [ %7, %sw.bb11.i ], [ %6, %if.end7.i ], [ %ch.0662.i, %sw.bb9.i ], [ %ch.0662.i, %if.else33.i ], [ %ch.0662.i, %sw.bb42.i ], [ %ch.0662.i, %if.else68.i ], [ %ch.0662.i, %sw.bb88.i ], [ %31, %sw.bb94.i ], [ %30, %sw.bb92.i ], [ %29, %sw.bb90.i ]
  %total.0661.i = phi i32 [ 0, %if.end ], [ %total.0661.i, %while.cond.backedge.i ], [ %total.2.i, %sw.epilog481.i ], [ %total.0661.i, %if.then58.i ], [ %total.0661.i, %vaarg.end82.i ], [ %total.0661.i, %if.then46.i ], [ %total.0661.i, %if.then29.i ], [ %total.0661.i, %vaarg.end.i ], [ %total.0661.i, %sw.bb22.i ], [ %total.0661.i, %sw.bb19.i ], [ %total.0661.i, %sw.bb16.i ], [ %total.0661.i, %sw.bb13.i ], [ %total.0661.i, %sw.bb11.i ], [ %total.1.i, %if.end7.i ], [ %total.0661.i, %sw.bb9.i ], [ %total.0661.i, %if.else33.i ], [ %total.0661.i, %sw.bb42.i ], [ %total.0661.i, %if.else68.i ], [ %total.0661.i, %sw.bb88.i ], [ %total.0661.i, %sw.bb94.i ], [ %total.0661.i, %sw.bb92.i ], [ %total.0661.i, %sw.bb90.i ]
  %cflags.0660.i = phi i32 [ 0, %if.end ], [ %cflags.0660.i, %while.cond.backedge.i ], [ 0, %sw.epilog481.i ], [ %cflags.0660.i, %if.then58.i ], [ %cflags.0660.i, %vaarg.end82.i ], [ %cflags.0660.i, %if.then46.i ], [ %cflags.0660.i, %if.then29.i ], [ %cflags.0660.i, %vaarg.end.i ], [ %cflags.0660.i, %sw.bb22.i ], [ %cflags.0660.i, %sw.bb19.i ], [ %cflags.0660.i, %sw.bb16.i ], [ %cflags.0660.i, %sw.bb13.i ], [ %cflags.0660.i, %sw.bb11.i ], [ %cflags.0660.i, %if.end7.i ], [ %cflags.0660.i, %sw.bb9.i ], [ %cflags.0660.i, %if.else33.i ], [ %cflags.0660.i, %sw.bb42.i ], [ %cflags.0660.i, %if.else68.i ], [ %cflags.0660.i, %sw.bb88.i ], [ 3, %sw.bb94.i ], [ 2, %sw.bb92.i ], [ 1, %sw.bb90.i ]
  %flags.0659.i = phi i32 [ 0, %if.end ], [ %flags.0659.i, %while.cond.backedge.i ], [ 0, %sw.epilog481.i ], [ %flags.0659.i, %if.then58.i ], [ %flags.0659.i, %vaarg.end82.i ], [ %flags.0659.i, %if.then46.i ], [ %flags.0659.i, %if.then29.i ], [ %flags.0659.i, %vaarg.end.i ], [ %or23.i, %sw.bb22.i ], [ %or20.i, %sw.bb19.i ], [ %or17.i, %sw.bb16.i ], [ %or14.i, %sw.bb13.i ], [ %or.i, %sw.bb11.i ], [ %flags.0659.i, %if.end7.i ], [ %flags.0659.i, %sw.bb9.i ], [ %flags.0659.i, %if.else33.i ], [ %flags.0659.i, %sw.bb42.i ], [ %flags.0659.i, %if.else68.i ], [ %flags.0659.i, %sw.bb88.i ], [ %flags.0659.i, %sw.bb94.i ], [ %flags.0659.i, %sw.bb92.i ], [ %flags.0659.i, %sw.bb90.i ]
  %state.0658.i = phi i32 [ 0, %if.end ], [ %.state.0.i, %while.cond.backedge.i ], [ 0, %sw.epilog481.i ], [ 4, %if.then58.i ], [ 5, %vaarg.end82.i ], [ 4, %if.then46.i ], [ 2, %if.then29.i ], [ 3, %vaarg.end.i ], [ 1, %sw.bb22.i ], [ 1, %sw.bb19.i ], [ 1, %sw.bb16.i ], [ 1, %sw.bb13.i ], [ 1, %sw.bb11.i ], [ %state.2.i, %if.end7.i ], [ 2, %sw.bb9.i ], [ 3, %if.else33.i ], [ 5, %sw.bb42.i ], [ 5, %if.else68.i ], [ 6, %sw.bb88.i ], [ 6, %sw.bb94.i ], [ 6, %sw.bb92.i ], [ 6, %sw.bb90.i ]
  %max.0657.i = phi i32 [ -1, %if.end ], [ %max.0657.i, %while.cond.backedge.i ], [ -1, %sw.epilog481.i ], [ %add66.i, %if.then58.i ], [ %27, %vaarg.end82.i ], [ %max.0657.i, %if.then46.i ], [ %max.0657.i, %if.then29.i ], [ %max.0657.i, %vaarg.end.i ], [ %max.0657.i, %sw.bb22.i ], [ %max.0657.i, %sw.bb19.i ], [ %max.0657.i, %sw.bb16.i ], [ %max.0657.i, %sw.bb13.i ], [ %max.0657.i, %sw.bb11.i ], [ %max.0657.i, %if.end7.i ], [ %max.0657.i, %sw.bb9.i ], [ %max.0657.i, %if.else33.i ], [ %max.0657.i, %sw.bb42.i ], [ %max.0657.i, %if.else68.i ], [ %max.0657.i, %sw.bb88.i ], [ %max.0657.i, %sw.bb94.i ], [ %max.0657.i, %sw.bb92.i ], [ %max.0657.i, %sw.bb90.i ]
  %min.0656.i = phi i32 [ 0, %if.end ], [ %min.0656.i, %while.cond.backedge.i ], [ 0, %sw.epilog481.i ], [ %min.0656.i, %if.then58.i ], [ %min.0656.i, %vaarg.end82.i ], [ %min.0656.i, %if.then46.i ], [ %add31.i, %if.then29.i ], [ %18, %vaarg.end.i ], [ %min.0656.i, %sw.bb22.i ], [ %min.0656.i, %sw.bb19.i ], [ %min.0656.i, %sw.bb16.i ], [ %min.0656.i, %sw.bb13.i ], [ %min.0656.i, %sw.bb11.i ], [ %min.0656.i, %if.end7.i ], [ %min.0656.i, %sw.bb9.i ], [ %min.0656.i, %if.else33.i ], [ %min.0656.i, %sw.bb42.i ], [ %min.0656.i, %if.else68.i ], [ %min.0656.i, %sw.bb88.i ], [ %min.0656.i, %sw.bb94.i ], [ %min.0656.i, %sw.bb92.i ], [ %min.0656.i, %sw.bb90.i ]
  %conv.i = sext i8 %ch.0662.i to i32
  %cmp1.i = icmp eq i8 %ch.0662.i, 0
  %.state.0.i = select i1 %cmp1.i, i32 7, i32 %state.0658.i
  switch i32 %.state.0.i, label %while.cond.backedge.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb9.i
    i32 2, label %sw.bb25.i
    i32 3, label %sw.bb42.i
    i32 4, label %sw.bb50.i
    i32 5, label %sw.bb88.i
    i32 6, label %sw.bb98.i
  ]

while.cond.backedge.i:                            ; preds = %while.body.i
  %cmp.i = icmp eq i32 %.state.0.i, 7
  br i1 %cmp.i, label %while.end.i, label %while.body.i

sw.bb.i:                                          ; preds = %while.body.i
  %cmp4.i = icmp eq i8 %ch.0662.i, 37
  br i1 %cmp4.i, label %if.end7.i, label %if.else.i

if.else.i:                                        ; preds = %sw.bb.i
  %5 = load i64* %currlen.i, align 8, !tbaa !2
  %add.i.i = add i64 %5, 1
  %cmp.i.i = icmp ult i64 %add.i.i, %count
  br i1 %cmp.i.i, label %if.then.i.i, label %dopr_outch.exit.i

if.then.i.i:                                      ; preds = %if.else.i
  store i64 %add.i.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i.i = getelementptr inbounds i8* %str, i64 %5
  store i8 %ch.0662.i, i8* %arrayidx.i.i, align 1, !tbaa !0
  br label %dopr_outch.exit.i

dopr_outch.exit.i:                                ; preds = %if.then.i.i, %if.else.i
  %add.i = add nsw i32 %total.0661.i, 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %dopr_outch.exit.i, %sw.bb.i
  %state.2.i = phi i32 [ 0, %dopr_outch.exit.i ], [ 1, %sw.bb.i ]
  %total.1.i = phi i32 [ %add.i, %dopr_outch.exit.i ], [ %total.0661.i, %sw.bb.i ]
  %incdec.ptr8.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  %6 = load i8* %format.addr.0663.i, align 1, !tbaa !0
  br label %while.body.i

sw.bb9.i:                                         ; preds = %while.body.i
  switch i32 %conv.i, label %while.body.i [
    i32 45, label %sw.bb11.i
    i32 43, label %sw.bb13.i
    i32 32, label %sw.bb16.i
    i32 35, label %sw.bb19.i
    i32 48, label %sw.bb22.i
  ]

sw.bb11.i:                                        ; preds = %sw.bb9.i
  %or.i = or i32 %flags.0659.i, 1
  %incdec.ptr12.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  %7 = load i8* %format.addr.0663.i, align 1, !tbaa !0
  br label %while.body.i

sw.bb13.i:                                        ; preds = %sw.bb9.i
  %or14.i = or i32 %flags.0659.i, 2
  %incdec.ptr15.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  %8 = load i8* %format.addr.0663.i, align 1, !tbaa !0
  br label %while.body.i

sw.bb16.i:                                        ; preds = %sw.bb9.i
  %or17.i = or i32 %flags.0659.i, 4
  %incdec.ptr18.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  %9 = load i8* %format.addr.0663.i, align 1, !tbaa !0
  br label %while.body.i

sw.bb19.i:                                        ; preds = %sw.bb9.i
  %or20.i = or i32 %flags.0659.i, 8
  %incdec.ptr21.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  %10 = load i8* %format.addr.0663.i, align 1, !tbaa !0
  br label %while.body.i

sw.bb22.i:                                        ; preds = %sw.bb9.i
  %or23.i = or i32 %flags.0659.i, 16
  %incdec.ptr24.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  %11 = load i8* %format.addr.0663.i, align 1, !tbaa !0
  br label %while.body.i

sw.bb25.i:                                        ; preds = %while.body.i
  %idxprom.i = sext i8 %ch.0662.i to i64
  %call27.i = call i16** @__ctype_b_loc() #3
  %12 = load i16** %call27.i, align 8, !tbaa !3
  %arrayidx.i = getelementptr inbounds i16* %12, i64 %idxprom.i
  %13 = load i16* %arrayidx.i, align 2, !tbaa !4
  %and.i = and i16 %13, 2048
  %tobool.i = icmp eq i16 %and.i, 0
  br i1 %tobool.i, label %if.else33.i, label %if.then29.i

if.then29.i:                                      ; preds = %sw.bb25.i
  %mul.i = mul nsw i32 %min.0656.i, 10
  %sub.i = add i32 %conv.i, -48
  %add31.i = add i32 %sub.i, %mul.i
  %incdec.ptr32.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  %14 = load i8* %format.addr.0663.i, align 1, !tbaa !0
  br label %while.body.i

if.else33.i:                                      ; preds = %sw.bb25.i
  %cmp35.i = icmp eq i8 %ch.0662.i, 42
  br i1 %cmp35.i, label %if.then37.i, label %while.body.i

if.then37.i:                                      ; preds = %if.else33.i
  %gp_offset.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp.i = icmp ult i32 %gp_offset.i, 41
  br i1 %fits_in_gp.i, label %vaarg.in_reg.i, label %vaarg.in_mem.i

vaarg.in_reg.i:                                   ; preds = %if.then37.i
  %reg_save_area.i = load i8** %2, align 8
  %15 = sext i32 %gp_offset.i to i64
  %16 = getelementptr i8* %reg_save_area.i, i64 %15
  %17 = add i32 %gp_offset.i, 8
  store i32 %17, i32* %gp_offset_p.i, align 4
  br label %vaarg.end.i

vaarg.in_mem.i:                                   ; preds = %if.then37.i
  %overflow_arg_area.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next.i = getelementptr i8* %overflow_arg_area.i, i64 8
  store i8* %overflow_arg_area.next.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end.i

vaarg.end.i:                                      ; preds = %vaarg.in_mem.i, %vaarg.in_reg.i
  %vaarg.addr.in.i = phi i8* [ %16, %vaarg.in_reg.i ], [ %overflow_arg_area.i, %vaarg.in_mem.i ]
  %vaarg.addr.i = bitcast i8* %vaarg.addr.in.i to i32*
  %18 = load i32* %vaarg.addr.i, align 4
  %incdec.ptr38.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  %19 = load i8* %format.addr.0663.i, align 1, !tbaa !0
  br label %while.body.i

sw.bb42.i:                                        ; preds = %while.body.i
  %cmp44.i = icmp eq i8 %ch.0662.i, 46
  br i1 %cmp44.i, label %if.then46.i, label %while.body.i

if.then46.i:                                      ; preds = %sw.bb42.i
  %incdec.ptr47.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  %20 = load i8* %format.addr.0663.i, align 1, !tbaa !0
  br label %while.body.i

sw.bb50.i:                                        ; preds = %while.body.i
  %idxprom52.i = sext i8 %ch.0662.i to i64
  %call53.i = call i16** @__ctype_b_loc() #3
  %21 = load i16** %call53.i, align 8, !tbaa !3
  %arrayidx54.i = getelementptr inbounds i16* %21, i64 %idxprom52.i
  %22 = load i16* %arrayidx54.i, align 2, !tbaa !4
  %and56.i = and i16 %22, 2048
  %tobool57.i = icmp eq i16 %and56.i, 0
  br i1 %tobool57.i, label %if.else68.i, label %if.then58.i

if.then58.i:                                      ; preds = %sw.bb50.i
  %cmp59.i = icmp slt i32 %max.0657.i, 0
  %max.0.op.i = mul i32 %max.0657.i, 10
  %max.0.op.op.i = add i32 %max.0.op.i, -48
  %sub65.i = select i1 %cmp59.i, i32 -48, i32 %max.0.op.op.i
  %add66.i = add i32 %sub65.i, %conv.i
  %incdec.ptr67.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  %23 = load i8* %format.addr.0663.i, align 1, !tbaa !0
  br label %while.body.i

if.else68.i:                                      ; preds = %sw.bb50.i
  %cmp70.i = icmp eq i8 %ch.0662.i, 42
  br i1 %cmp70.i, label %if.then72.i, label %while.body.i

if.then72.i:                                      ; preds = %if.else68.i
  %gp_offset74.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp75.i = icmp ult i32 %gp_offset74.i, 41
  br i1 %fits_in_gp75.i, label %vaarg.in_reg76.i, label %vaarg.in_mem78.i

vaarg.in_reg76.i:                                 ; preds = %if.then72.i
  %reg_save_area77.i = load i8** %2, align 8
  %24 = sext i32 %gp_offset74.i to i64
  %25 = getelementptr i8* %reg_save_area77.i, i64 %24
  %26 = add i32 %gp_offset74.i, 8
  store i32 %26, i32* %gp_offset_p.i, align 4
  br label %vaarg.end82.i

vaarg.in_mem78.i:                                 ; preds = %if.then72.i
  %overflow_arg_area80.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next81.i = getelementptr i8* %overflow_arg_area80.i, i64 8
  store i8* %overflow_arg_area.next81.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end82.i

vaarg.end82.i:                                    ; preds = %vaarg.in_mem78.i, %vaarg.in_reg76.i
  %vaarg.addr83.in.i = phi i8* [ %25, %vaarg.in_reg76.i ], [ %overflow_arg_area80.i, %vaarg.in_mem78.i ]
  %vaarg.addr83.i = bitcast i8* %vaarg.addr83.in.i to i32*
  %27 = load i32* %vaarg.addr83.i, align 4
  %incdec.ptr84.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  %28 = load i8* %format.addr.0663.i, align 1, !tbaa !0
  br label %while.body.i

sw.bb88.i:                                        ; preds = %while.body.i
  switch i32 %conv.i, label %while.body.i [
    i32 104, label %sw.bb90.i
    i32 108, label %sw.bb92.i
    i32 76, label %sw.bb94.i
  ]

sw.bb90.i:                                        ; preds = %sw.bb88.i
  %incdec.ptr91.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  %29 = load i8* %format.addr.0663.i, align 1, !tbaa !0
  br label %while.body.i

sw.bb92.i:                                        ; preds = %sw.bb88.i
  %incdec.ptr93.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  %30 = load i8* %format.addr.0663.i, align 1, !tbaa !0
  br label %while.body.i

sw.bb94.i:                                        ; preds = %sw.bb88.i
  %incdec.ptr95.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  %31 = load i8* %format.addr.0663.i, align 1, !tbaa !0
  br label %while.body.i

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
  ]

sw.bb100.i:                                       ; preds = %sw.bb98.i, %sw.bb98.i
  %cmp101.i = icmp eq i32 %cflags.0660.i, 1
  br i1 %cmp101.i, label %if.then103.i, label %if.else116.i

if.then103.i:                                     ; preds = %sw.bb100.i
  %gp_offset105.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp106.i = icmp ult i32 %gp_offset105.i, 41
  br i1 %fits_in_gp106.i, label %vaarg.in_reg107.i, label %vaarg.in_mem109.i

vaarg.in_reg107.i:                                ; preds = %if.then103.i
  %reg_save_area108.i = load i8** %2, align 8
  %32 = sext i32 %gp_offset105.i to i64
  %33 = getelementptr i8* %reg_save_area108.i, i64 %32
  %34 = add i32 %gp_offset105.i, 8
  store i32 %34, i32* %gp_offset_p.i, align 4
  br label %vaarg.end113.i

vaarg.in_mem109.i:                                ; preds = %if.then103.i
  %overflow_arg_area111.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next112.i = getelementptr i8* %overflow_arg_area111.i, i64 8
  store i8* %overflow_arg_area.next112.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end113.i

vaarg.end113.i:                                   ; preds = %vaarg.in_mem109.i, %vaarg.in_reg107.i
  %vaarg.addr114.in.i = phi i8* [ %33, %vaarg.in_reg107.i ], [ %overflow_arg_area111.i, %vaarg.in_mem109.i ]
  %vaarg.addr114.i = bitcast i8* %vaarg.addr114.in.i to i32*
  %35 = load i32* %vaarg.addr114.i, align 4
  %conv115.i = sext i32 %35 to i64
  br label %if.end145.i

if.else116.i:                                     ; preds = %sw.bb100.i
  %cmp117.i = icmp eq i32 %cflags.0660.i, 2
  %gp_offset121.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp122.i = icmp ult i32 %gp_offset121.i, 41
  br i1 %cmp117.i, label %if.then119.i, label %if.else131.i

if.then119.i:                                     ; preds = %if.else116.i
  br i1 %fits_in_gp122.i, label %vaarg.in_reg123.i, label %vaarg.in_mem125.i

vaarg.in_reg123.i:                                ; preds = %if.then119.i
  %reg_save_area124.i = load i8** %2, align 8
  %36 = sext i32 %gp_offset121.i to i64
  %37 = getelementptr i8* %reg_save_area124.i, i64 %36
  %38 = add i32 %gp_offset121.i, 8
  store i32 %38, i32* %gp_offset_p.i, align 4
  br label %vaarg.end129.i

vaarg.in_mem125.i:                                ; preds = %if.then119.i
  %overflow_arg_area127.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next128.i = getelementptr i8* %overflow_arg_area127.i, i64 8
  store i8* %overflow_arg_area.next128.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end129.i

vaarg.end129.i:                                   ; preds = %vaarg.in_mem125.i, %vaarg.in_reg123.i
  %vaarg.addr130.in.i = phi i8* [ %37, %vaarg.in_reg123.i ], [ %overflow_arg_area127.i, %vaarg.in_mem125.i ]
  %vaarg.addr130.i = bitcast i8* %vaarg.addr130.in.i to i64*
  %39 = load i64* %vaarg.addr130.i, align 8
  br label %if.end145.i

if.else131.i:                                     ; preds = %if.else116.i
  br i1 %fits_in_gp122.i, label %vaarg.in_reg135.i, label %vaarg.in_mem137.i

vaarg.in_reg135.i:                                ; preds = %if.else131.i
  %reg_save_area136.i = load i8** %2, align 8
  %40 = sext i32 %gp_offset121.i to i64
  %41 = getelementptr i8* %reg_save_area136.i, i64 %40
  %42 = add i32 %gp_offset121.i, 8
  store i32 %42, i32* %gp_offset_p.i, align 4
  br label %vaarg.end141.i

vaarg.in_mem137.i:                                ; preds = %if.else131.i
  %overflow_arg_area139.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next140.i = getelementptr i8* %overflow_arg_area139.i, i64 8
  store i8* %overflow_arg_area.next140.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end141.i

vaarg.end141.i:                                   ; preds = %vaarg.in_mem137.i, %vaarg.in_reg135.i
  %vaarg.addr142.in.i = phi i8* [ %41, %vaarg.in_reg135.i ], [ %overflow_arg_area139.i, %vaarg.in_mem137.i ]
  %vaarg.addr142.i = bitcast i8* %vaarg.addr142.in.i to i32*
  %43 = load i32* %vaarg.addr142.i, align 4
  %conv143.i = sext i32 %43 to i64
  br label %if.end145.i

if.end145.i:                                      ; preds = %vaarg.end141.i, %vaarg.end129.i, %vaarg.end113.i
  %value.0.i = phi i64 [ %conv115.i, %vaarg.end113.i ], [ %39, %vaarg.end129.i ], [ %conv143.i, %vaarg.end141.i ]
  %call146.i = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %value.0.i, i32 10, i32 %min.0656.i, i32 %max.0657.i, i32 %flags.0659.i) #4
  %add147.i = add nsw i32 %call146.i, %total.0661.i
  br label %sw.epilog481.i

sw.bb148.i:                                       ; preds = %sw.bb98.i
  %or149.i = or i32 %flags.0659.i, 64
  %cmp150.i = icmp eq i32 %cflags.0660.i, 1
  br i1 %cmp150.i, label %if.then152.i, label %if.else165.i

if.then152.i:                                     ; preds = %sw.bb148.i
  %gp_offset154.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp155.i = icmp ult i32 %gp_offset154.i, 41
  br i1 %fits_in_gp155.i, label %vaarg.in_reg156.i, label %vaarg.in_mem158.i

vaarg.in_reg156.i:                                ; preds = %if.then152.i
  %reg_save_area157.i = load i8** %2, align 8
  %44 = sext i32 %gp_offset154.i to i64
  %45 = getelementptr i8* %reg_save_area157.i, i64 %44
  %46 = add i32 %gp_offset154.i, 8
  store i32 %46, i32* %gp_offset_p.i, align 4
  br label %vaarg.end162.i

vaarg.in_mem158.i:                                ; preds = %if.then152.i
  %overflow_arg_area160.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next161.i = getelementptr i8* %overflow_arg_area160.i, i64 8
  store i8* %overflow_arg_area.next161.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end162.i

vaarg.end162.i:                                   ; preds = %vaarg.in_mem158.i, %vaarg.in_reg156.i
  %vaarg.addr163.in.i = phi i8* [ %45, %vaarg.in_reg156.i ], [ %overflow_arg_area160.i, %vaarg.in_mem158.i ]
  %vaarg.addr163.i = bitcast i8* %vaarg.addr163.in.i to i32*
  %47 = load i32* %vaarg.addr163.i, align 4
  %conv164.i = zext i32 %47 to i64
  br label %if.end194.i

if.else165.i:                                     ; preds = %sw.bb148.i
  %cmp166.i = icmp eq i32 %cflags.0660.i, 2
  %gp_offset170.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp171.i = icmp ult i32 %gp_offset170.i, 41
  br i1 %cmp166.i, label %if.then168.i, label %if.else180.i

if.then168.i:                                     ; preds = %if.else165.i
  br i1 %fits_in_gp171.i, label %vaarg.in_reg172.i, label %vaarg.in_mem174.i

vaarg.in_reg172.i:                                ; preds = %if.then168.i
  %reg_save_area173.i = load i8** %2, align 8
  %48 = sext i32 %gp_offset170.i to i64
  %49 = getelementptr i8* %reg_save_area173.i, i64 %48
  %50 = add i32 %gp_offset170.i, 8
  store i32 %50, i32* %gp_offset_p.i, align 4
  br label %vaarg.end178.i

vaarg.in_mem174.i:                                ; preds = %if.then168.i
  %overflow_arg_area176.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next177.i = getelementptr i8* %overflow_arg_area176.i, i64 8
  store i8* %overflow_arg_area.next177.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end178.i

vaarg.end178.i:                                   ; preds = %vaarg.in_mem174.i, %vaarg.in_reg172.i
  %vaarg.addr179.in.i = phi i8* [ %49, %vaarg.in_reg172.i ], [ %overflow_arg_area176.i, %vaarg.in_mem174.i ]
  %vaarg.addr179.i = bitcast i8* %vaarg.addr179.in.i to i64*
  %51 = load i64* %vaarg.addr179.i, align 8
  br label %if.end194.i

if.else180.i:                                     ; preds = %if.else165.i
  br i1 %fits_in_gp171.i, label %vaarg.in_reg184.i, label %vaarg.in_mem186.i

vaarg.in_reg184.i:                                ; preds = %if.else180.i
  %reg_save_area185.i = load i8** %2, align 8
  %52 = sext i32 %gp_offset170.i to i64
  %53 = getelementptr i8* %reg_save_area185.i, i64 %52
  %54 = add i32 %gp_offset170.i, 8
  store i32 %54, i32* %gp_offset_p.i, align 4
  br label %vaarg.end190.i

vaarg.in_mem186.i:                                ; preds = %if.else180.i
  %overflow_arg_area188.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next189.i = getelementptr i8* %overflow_arg_area188.i, i64 8
  store i8* %overflow_arg_area.next189.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end190.i

vaarg.end190.i:                                   ; preds = %vaarg.in_mem186.i, %vaarg.in_reg184.i
  %vaarg.addr191.in.i = phi i8* [ %53, %vaarg.in_reg184.i ], [ %overflow_arg_area188.i, %vaarg.in_mem186.i ]
  %vaarg.addr191.i = bitcast i8* %vaarg.addr191.in.i to i32*
  %55 = load i32* %vaarg.addr191.i, align 4
  %conv192.i = zext i32 %55 to i64
  br label %if.end194.i

if.end194.i:                                      ; preds = %vaarg.end190.i, %vaarg.end178.i, %vaarg.end162.i
  %value.1.i = phi i64 [ %conv164.i, %vaarg.end162.i ], [ %51, %vaarg.end178.i ], [ %conv192.i, %vaarg.end190.i ]
  %call195.i = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %value.1.i, i32 8, i32 %min.0656.i, i32 %max.0657.i, i32 %or149.i) #4
  %add196.i = add nsw i32 %call195.i, %total.0661.i
  br label %sw.epilog481.i

sw.bb197.i:                                       ; preds = %sw.bb98.i
  %or198.i = or i32 %flags.0659.i, 64
  %cmp199.i = icmp eq i32 %cflags.0660.i, 1
  br i1 %cmp199.i, label %if.then201.i, label %if.else214.i

if.then201.i:                                     ; preds = %sw.bb197.i
  %gp_offset203.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp204.i = icmp ult i32 %gp_offset203.i, 41
  br i1 %fits_in_gp204.i, label %vaarg.in_reg205.i, label %vaarg.in_mem207.i

vaarg.in_reg205.i:                                ; preds = %if.then201.i
  %reg_save_area206.i = load i8** %2, align 8
  %56 = sext i32 %gp_offset203.i to i64
  %57 = getelementptr i8* %reg_save_area206.i, i64 %56
  %58 = add i32 %gp_offset203.i, 8
  store i32 %58, i32* %gp_offset_p.i, align 4
  br label %vaarg.end211.i

vaarg.in_mem207.i:                                ; preds = %if.then201.i
  %overflow_arg_area209.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next210.i = getelementptr i8* %overflow_arg_area209.i, i64 8
  store i8* %overflow_arg_area.next210.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end211.i

vaarg.end211.i:                                   ; preds = %vaarg.in_mem207.i, %vaarg.in_reg205.i
  %vaarg.addr212.in.i = phi i8* [ %57, %vaarg.in_reg205.i ], [ %overflow_arg_area209.i, %vaarg.in_mem207.i ]
  %vaarg.addr212.i = bitcast i8* %vaarg.addr212.in.i to i32*
  %59 = load i32* %vaarg.addr212.i, align 4
  %conv213.i = zext i32 %59 to i64
  br label %if.end243.i

if.else214.i:                                     ; preds = %sw.bb197.i
  %cmp215.i = icmp eq i32 %cflags.0660.i, 2
  %gp_offset219.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp220.i = icmp ult i32 %gp_offset219.i, 41
  br i1 %cmp215.i, label %if.then217.i, label %if.else229.i

if.then217.i:                                     ; preds = %if.else214.i
  br i1 %fits_in_gp220.i, label %vaarg.in_reg221.i, label %vaarg.in_mem223.i

vaarg.in_reg221.i:                                ; preds = %if.then217.i
  %reg_save_area222.i = load i8** %2, align 8
  %60 = sext i32 %gp_offset219.i to i64
  %61 = getelementptr i8* %reg_save_area222.i, i64 %60
  %62 = add i32 %gp_offset219.i, 8
  store i32 %62, i32* %gp_offset_p.i, align 4
  br label %vaarg.end227.i

vaarg.in_mem223.i:                                ; preds = %if.then217.i
  %overflow_arg_area225.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next226.i = getelementptr i8* %overflow_arg_area225.i, i64 8
  store i8* %overflow_arg_area.next226.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end227.i

vaarg.end227.i:                                   ; preds = %vaarg.in_mem223.i, %vaarg.in_reg221.i
  %vaarg.addr228.in.i = phi i8* [ %61, %vaarg.in_reg221.i ], [ %overflow_arg_area225.i, %vaarg.in_mem223.i ]
  %vaarg.addr228.i = bitcast i8* %vaarg.addr228.in.i to i64*
  %63 = load i64* %vaarg.addr228.i, align 8
  br label %if.end243.i

if.else229.i:                                     ; preds = %if.else214.i
  br i1 %fits_in_gp220.i, label %vaarg.in_reg233.i, label %vaarg.in_mem235.i

vaarg.in_reg233.i:                                ; preds = %if.else229.i
  %reg_save_area234.i = load i8** %2, align 8
  %64 = sext i32 %gp_offset219.i to i64
  %65 = getelementptr i8* %reg_save_area234.i, i64 %64
  %66 = add i32 %gp_offset219.i, 8
  store i32 %66, i32* %gp_offset_p.i, align 4
  br label %vaarg.end239.i

vaarg.in_mem235.i:                                ; preds = %if.else229.i
  %overflow_arg_area237.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next238.i = getelementptr i8* %overflow_arg_area237.i, i64 8
  store i8* %overflow_arg_area.next238.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end239.i

vaarg.end239.i:                                   ; preds = %vaarg.in_mem235.i, %vaarg.in_reg233.i
  %vaarg.addr240.in.i = phi i8* [ %65, %vaarg.in_reg233.i ], [ %overflow_arg_area237.i, %vaarg.in_mem235.i ]
  %vaarg.addr240.i = bitcast i8* %vaarg.addr240.in.i to i32*
  %67 = load i32* %vaarg.addr240.i, align 4
  %conv241.i = zext i32 %67 to i64
  br label %if.end243.i

if.end243.i:                                      ; preds = %vaarg.end239.i, %vaarg.end227.i, %vaarg.end211.i
  %value.2.i = phi i64 [ %conv213.i, %vaarg.end211.i ], [ %63, %vaarg.end227.i ], [ %conv241.i, %vaarg.end239.i ]
  %call244.i = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %value.2.i, i32 10, i32 %min.0656.i, i32 %max.0657.i, i32 %or198.i) #4
  %add245.i = add nsw i32 %call244.i, %total.0661.i
  br label %sw.epilog481.i

sw.bb246.i:                                       ; preds = %sw.bb98.i
  %or247.i = or i32 %flags.0659.i, 32
  br label %sw.bb248.i

sw.bb248.i:                                       ; preds = %sw.bb246.i, %sw.bb98.i
  %flags.1.i = phi i32 [ %flags.0659.i, %sw.bb98.i ], [ %or247.i, %sw.bb246.i ]
  %or249.i = or i32 %flags.1.i, 64
  %cmp250.i = icmp eq i32 %cflags.0660.i, 1
  br i1 %cmp250.i, label %if.then252.i, label %if.else265.i

if.then252.i:                                     ; preds = %sw.bb248.i
  %gp_offset254.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp255.i = icmp ult i32 %gp_offset254.i, 41
  br i1 %fits_in_gp255.i, label %vaarg.in_reg256.i, label %vaarg.in_mem258.i

vaarg.in_reg256.i:                                ; preds = %if.then252.i
  %reg_save_area257.i = load i8** %2, align 8
  %68 = sext i32 %gp_offset254.i to i64
  %69 = getelementptr i8* %reg_save_area257.i, i64 %68
  %70 = add i32 %gp_offset254.i, 8
  store i32 %70, i32* %gp_offset_p.i, align 4
  br label %vaarg.end262.i

vaarg.in_mem258.i:                                ; preds = %if.then252.i
  %overflow_arg_area260.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next261.i = getelementptr i8* %overflow_arg_area260.i, i64 8
  store i8* %overflow_arg_area.next261.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end262.i

vaarg.end262.i:                                   ; preds = %vaarg.in_mem258.i, %vaarg.in_reg256.i
  %vaarg.addr263.in.i = phi i8* [ %69, %vaarg.in_reg256.i ], [ %overflow_arg_area260.i, %vaarg.in_mem258.i ]
  %vaarg.addr263.i = bitcast i8* %vaarg.addr263.in.i to i32*
  %71 = load i32* %vaarg.addr263.i, align 4
  %conv264.i = zext i32 %71 to i64
  br label %if.end294.i

if.else265.i:                                     ; preds = %sw.bb248.i
  %cmp266.i = icmp eq i32 %cflags.0660.i, 2
  %gp_offset270.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp271.i = icmp ult i32 %gp_offset270.i, 41
  br i1 %cmp266.i, label %if.then268.i, label %if.else280.i

if.then268.i:                                     ; preds = %if.else265.i
  br i1 %fits_in_gp271.i, label %vaarg.in_reg272.i, label %vaarg.in_mem274.i

vaarg.in_reg272.i:                                ; preds = %if.then268.i
  %reg_save_area273.i = load i8** %2, align 8
  %72 = sext i32 %gp_offset270.i to i64
  %73 = getelementptr i8* %reg_save_area273.i, i64 %72
  %74 = add i32 %gp_offset270.i, 8
  store i32 %74, i32* %gp_offset_p.i, align 4
  br label %vaarg.end278.i

vaarg.in_mem274.i:                                ; preds = %if.then268.i
  %overflow_arg_area276.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next277.i = getelementptr i8* %overflow_arg_area276.i, i64 8
  store i8* %overflow_arg_area.next277.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end278.i

vaarg.end278.i:                                   ; preds = %vaarg.in_mem274.i, %vaarg.in_reg272.i
  %vaarg.addr279.in.i = phi i8* [ %73, %vaarg.in_reg272.i ], [ %overflow_arg_area276.i, %vaarg.in_mem274.i ]
  %vaarg.addr279.i = bitcast i8* %vaarg.addr279.in.i to i64*
  %75 = load i64* %vaarg.addr279.i, align 8
  br label %if.end294.i

if.else280.i:                                     ; preds = %if.else265.i
  br i1 %fits_in_gp271.i, label %vaarg.in_reg284.i, label %vaarg.in_mem286.i

vaarg.in_reg284.i:                                ; preds = %if.else280.i
  %reg_save_area285.i = load i8** %2, align 8
  %76 = sext i32 %gp_offset270.i to i64
  %77 = getelementptr i8* %reg_save_area285.i, i64 %76
  %78 = add i32 %gp_offset270.i, 8
  store i32 %78, i32* %gp_offset_p.i, align 4
  br label %vaarg.end290.i

vaarg.in_mem286.i:                                ; preds = %if.else280.i
  %overflow_arg_area288.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next289.i = getelementptr i8* %overflow_arg_area288.i, i64 8
  store i8* %overflow_arg_area.next289.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end290.i

vaarg.end290.i:                                   ; preds = %vaarg.in_mem286.i, %vaarg.in_reg284.i
  %vaarg.addr291.in.i = phi i8* [ %77, %vaarg.in_reg284.i ], [ %overflow_arg_area288.i, %vaarg.in_mem286.i ]
  %vaarg.addr291.i = bitcast i8* %vaarg.addr291.in.i to i32*
  %79 = load i32* %vaarg.addr291.i, align 4
  %conv292.i = zext i32 %79 to i64
  br label %if.end294.i

if.end294.i:                                      ; preds = %vaarg.end290.i, %vaarg.end278.i, %vaarg.end262.i
  %value.3.i = phi i64 [ %conv264.i, %vaarg.end262.i ], [ %75, %vaarg.end278.i ], [ %conv292.i, %vaarg.end290.i ]
  %call295.i = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %value.3.i, i32 16, i32 %min.0656.i, i32 %max.0657.i, i32 %or249.i) #4
  %add296.i = add nsw i32 %call295.i, %total.0661.i
  br label %sw.epilog481.i

sw.bb297.i:                                       ; preds = %sw.bb98.i
  %cmp298.i = icmp eq i32 %cflags.0660.i, 3
  %fp_offset.i = load i32* %fp_offset_p.i, align 4
  %fits_in_fp.i = icmp ult i32 %fp_offset.i, 161
  br i1 %cmp298.i, label %if.then300.i, label %if.else309.i

if.then300.i:                                     ; preds = %sw.bb297.i
  br i1 %fits_in_fp.i, label %vaarg.in_reg301.i, label %vaarg.in_mem303.i

vaarg.in_reg301.i:                                ; preds = %if.then300.i
  %reg_save_area302.i = load i8** %2, align 8
  %80 = sext i32 %fp_offset.i to i64
  %81 = getelementptr i8* %reg_save_area302.i, i64 %80
  %82 = add i32 %fp_offset.i, 16
  store i32 %82, i32* %fp_offset_p.i, align 4
  br label %if.end321.i

vaarg.in_mem303.i:                                ; preds = %if.then300.i
  %overflow_arg_area305.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next306.i = getelementptr i8* %overflow_arg_area305.i, i64 8
  store i8* %overflow_arg_area.next306.i, i8** %overflow_arg_area_p.i, align 8
  br label %if.end321.i

if.else309.i:                                     ; preds = %sw.bb297.i
  br i1 %fits_in_fp.i, label %vaarg.in_reg313.i, label %vaarg.in_mem315.i

vaarg.in_reg313.i:                                ; preds = %if.else309.i
  %reg_save_area314.i = load i8** %2, align 8
  %83 = sext i32 %fp_offset.i to i64
  %84 = getelementptr i8* %reg_save_area314.i, i64 %83
  %85 = add i32 %fp_offset.i, 16
  store i32 %85, i32* %fp_offset_p.i, align 4
  br label %if.end321.i

vaarg.in_mem315.i:                                ; preds = %if.else309.i
  %overflow_arg_area317.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next318.i = getelementptr i8* %overflow_arg_area317.i, i64 8
  store i8* %overflow_arg_area.next318.i, i8** %overflow_arg_area_p.i, align 8
  br label %if.end321.i

if.end321.i:                                      ; preds = %vaarg.in_mem315.i, %vaarg.in_reg313.i, %vaarg.in_mem303.i, %vaarg.in_reg301.i
  %fvalue.0.in.in.i = phi i8* [ %81, %vaarg.in_reg301.i ], [ %overflow_arg_area305.i, %vaarg.in_mem303.i ], [ %84, %vaarg.in_reg313.i ], [ %overflow_arg_area317.i, %vaarg.in_mem315.i ]
  %fvalue.0.in.i = bitcast i8* %fvalue.0.in.in.i to double*
  %fvalue.0.i = load double* %fvalue.0.in.i, align 8
  call void @llvm.lifetime.start(i64 20, i8* %3) #1
  call void @llvm.lifetime.start(i64 20, i8* %4) #1
  %cmp.i631.i = icmp slt i32 %max.0657.i, 0
  %.max.i.i = select i1 %cmp.i631.i, i32 6, i32 %max.0657.i
  %cmp.i.i.i = fcmp olt double %fvalue.0.i, 0.000000e+00
  br i1 %cmp.i.i.i, label %abs_val.exit.thread.i.i, label %if.else.i.i

abs_val.exit.thread.i.i:                          ; preds = %if.end321.i
  %sub.i.i.i = fsub double -0.000000e+00, %fvalue.0.i
  br label %if.end10.i.i

if.else.i.i:                                      ; preds = %if.end321.i
  %and.i.i = and i32 %flags.0659.i, 2
  %tobool.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i, label %if.else4.i.i, label %if.end10.i.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  %and5.i.i = shl i32 %flags.0659.i, 3
  %86 = and i32 %and5.i.i, 32
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else4.i.i, %if.else.i.i, %abs_val.exit.thread.i.i
  %result.0.i300.i.i = phi double [ %fvalue.0.i, %if.else.i.i ], [ %fvalue.0.i, %if.else4.i.i ], [ %sub.i.i.i, %abs_val.exit.thread.i.i ]
  %signvalue.0.i.i = phi i32 [ 43, %if.else.i.i ], [ %86, %if.else4.i.i ], [ 45, %abs_val.exit.thread.i.i ]
  %conv.i.i = fptosi double %result.0.i300.i.i to i64
  %cmp11.i.i = icmp sgt i32 %.max.i.i, 9
  %..max.i.i = select i1 %cmp11.i.i, i32 9, i32 %.max.i.i
  %tobool2.i291.i.i = icmp eq i32 %..max.i.i, 0
  br i1 %tobool2.i291.i.i, label %pow10.exit299.i.i, label %while.body.i297.i.i

while.body.i297.i.i:                              ; preds = %if.end10.i.i, %while.body.i297.i.i
  %result.04.i292.i.i = phi double [ %mul.i294.i.i, %while.body.i297.i.i ], [ 1.000000e+00, %if.end10.i.i ]
  %exp.addr.03.i293.i.i = phi i32 [ %dec.i295.i.i, %while.body.i297.i.i ], [ %..max.i.i, %if.end10.i.i ]
  %mul.i294.i.i = fmul double %result.04.i292.i.i, 1.000000e+01
  %dec.i295.i.i = add nsw i32 %exp.addr.03.i293.i.i, -1
  %tobool.i296.i.i = icmp eq i32 %dec.i295.i.i, 0
  br i1 %tobool.i296.i.i, label %pow10.exit299.i.i, label %while.body.i297.i.i

pow10.exit299.i.i:                                ; preds = %while.body.i297.i.i, %if.end10.i.i
  %result.0.lcssa.i298.i.i = phi double [ 1.000000e+00, %if.end10.i.i ], [ %mul.i294.i.i, %while.body.i297.i.i ]
  %conv16.i.i = sitofp i64 %conv.i.i to double
  %sub.i.i = fsub double %result.0.i300.i.i, %conv16.i.i
  %mul.i.i = fmul double %sub.i.i, %result.0.lcssa.i298.i.i
  %conv.i.i.i = fptosi double %mul.i.i to i64
  %conv1.i.i.i = sitofp i64 %conv.i.i.i to double
  %sub.i290.i.i = fsub double %mul.i.i, %conv1.i.i.i
  %not.cmp.i.i.i = fcmp oge double %sub.i290.i.i, 5.000000e-01
  %inc.i.i.i = zext i1 %not.cmp.i.i.i to i64
  %intpart.0.i.i.i = add nsw i64 %inc.i.i.i, %conv.i.i.i
  %conv18.i.i = sitofp i64 %intpart.0.i.i.i to double
  br i1 %tobool2.i291.i.i, label %pow10.exit289.i.i, label %while.body.i287.i.i

while.body.i287.i.i:                              ; preds = %pow10.exit299.i.i, %while.body.i287.i.i
  %result.04.i282.i.i = phi double [ %mul.i284.i.i, %while.body.i287.i.i ], [ 1.000000e+00, %pow10.exit299.i.i ]
  %exp.addr.03.i283.i.i = phi i32 [ %dec.i285.i.i, %while.body.i287.i.i ], [ %..max.i.i, %pow10.exit299.i.i ]
  %mul.i284.i.i = fmul double %result.04.i282.i.i, 1.000000e+01
  %dec.i285.i.i = add nsw i32 %exp.addr.03.i283.i.i, -1
  %tobool.i286.i.i = icmp eq i32 %dec.i285.i.i, 0
  br i1 %tobool.i286.i.i, label %pow10.exit289.i.i, label %while.body.i287.i.i

pow10.exit289.i.i:                                ; preds = %while.body.i287.i.i, %pow10.exit299.i.i
  %result.0.lcssa.i288.i.i = phi double [ 1.000000e+00, %pow10.exit299.i.i ], [ %mul.i284.i.i, %while.body.i287.i.i ]
  %cmp20.i.i = fcmp ult double %conv18.i.i, %result.0.lcssa.i288.i.i
  br i1 %cmp20.i.i, label %do.body.preheader.i.i, label %if.then22.i.i

if.then22.i.i:                                    ; preds = %pow10.exit289.i.i
  %inc.i.i = add nsw i64 %conv.i.i, 1
  br i1 %tobool2.i291.i.i, label %pow10.exit.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.then22.i.i, %while.body.i.i.i
  %result.04.i.i.i = phi double [ %mul.i.i.i, %while.body.i.i.i ], [ 1.000000e+00, %if.then22.i.i ]
  %exp.addr.03.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i ], [ %..max.i.i, %if.then22.i.i ]
  %mul.i.i.i = fmul double %result.04.i.i.i, 1.000000e+01
  %dec.i.i.i = add nsw i32 %exp.addr.03.i.i.i, -1
  %tobool.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.i.i.i, label %pow10.exit.i.i, label %while.body.i.i.i

pow10.exit.i.i:                                   ; preds = %while.body.i.i.i, %if.then22.i.i
  %result.0.lcssa.i.i.i = phi double [ 1.000000e+00, %if.then22.i.i ], [ %mul.i.i.i, %while.body.i.i.i ]
  %sub25.i.i = fsub double %conv18.i.i, %result.0.lcssa.i.i.i
  %conv26.i.i = fptosi double %sub25.i.i to i64
  br label %do.body.preheader.i.i

do.body.preheader.i.i:                            ; preds = %pow10.exit.i.i, %pow10.exit289.i.i
  %intpart.0.ph.i.i = phi i64 [ %conv.i.i, %pow10.exit289.i.i ], [ %inc.i.i, %pow10.exit.i.i ]
  %fracpart.0.ph.i.i = phi i64 [ %intpart.0.i.i.i, %pow10.exit289.i.i ], [ %conv26.i.i, %pow10.exit.i.i ]
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.rhs.i.i, %do.body.preheader.i.i
  %indvars.iv337.i.i = phi i64 [ 0, %do.body.preheader.i.i ], [ %indvars.iv.next338.i.i, %land.rhs.i.i ]
  %iplace.0.i.i = phi i32 [ 0, %do.body.preheader.i.i ], [ %inc29.i.i, %land.rhs.i.i ]
  %intpart.0.i.i = phi i64 [ %intpart.0.ph.i.i, %do.body.preheader.i.i ], [ %div.i.i, %land.rhs.i.i ]
  %rem.i.i = srem i64 %intpart.0.i.i, 10
  %arrayidx.i632.i = getelementptr inbounds [17 x i8]* @.str2, i64 0, i64 %rem.i.i
  %87 = load i8* %arrayidx.i632.i, align 1, !tbaa !0
  %indvars.iv.next338.i.i = add i64 %indvars.iv337.i.i, 1
  %inc29.i.i = add nsw i32 %iplace.0.i.i, 1
  %arrayidx30.i.i = getelementptr inbounds [20 x i8]* %iconvert.i.i, i64 0, i64 %indvars.iv337.i.i
  store i8 %87, i8* %arrayidx30.i.i, align 1, !tbaa !0
  %intpart.0.off.i.i = add i64 %intpart.0.i.i, 9
  %88 = icmp ugt i64 %intpart.0.off.i.i, 18
  br i1 %88, label %land.rhs.i.i, label %do.end.i.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %div.i.i = sdiv i64 %intpart.0.i.i, 10
  %89 = trunc i64 %indvars.iv.next338.i.i to i32
  %cmp32.i.i = icmp slt i32 %89, 20
  br i1 %cmp32.i.i, label %do.body.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i, %do.body.i.i
  %cmp34.i.i = icmp eq i32 %inc29.i.i, 20
  %iplace.0.inc29.i.i = select i1 %cmp34.i.i, i32 %iplace.0.i.i, i32 %inc29.i.i
  %idxprom38.i.i = sext i32 %iplace.0.inc29.i.i to i64
  %arrayidx39.i.i = getelementptr inbounds [20 x i8]* %iconvert.i.i, i64 0, i64 %idxprom38.i.i
  store i8 0, i8* %arrayidx39.i.i, align 1, !tbaa !0
  br label %do.body40.i.i

do.body40.i.i:                                    ; preds = %land.rhs51.i.i, %do.end.i.i
  %indvars.iv335.i.i = phi i64 [ %indvars.iv.next336.i.i, %land.rhs51.i.i ], [ 0, %do.end.i.i ]
  %fplace.0.i.i = phi i32 [ %inc45.i.i, %land.rhs51.i.i ], [ 0, %do.end.i.i ]
  %fracpart.1.i.i = phi i64 [ %div48.i.i, %land.rhs51.i.i ], [ %fracpart.0.ph.i.i, %do.end.i.i ]
  %rem41.i.i = srem i64 %fracpart.1.i.i, 10
  %arrayidx44.i.i = getelementptr inbounds [17 x i8]* @.str2, i64 0, i64 %rem41.i.i
  %90 = load i8* %arrayidx44.i.i, align 1, !tbaa !0
  %indvars.iv.next336.i.i = add i64 %indvars.iv335.i.i, 1
  %inc45.i.i = add nsw i32 %fplace.0.i.i, 1
  %arrayidx47.i.i = getelementptr inbounds [20 x i8]* %fconvert.i.i, i64 0, i64 %indvars.iv335.i.i
  store i8 %90, i8* %arrayidx47.i.i, align 1, !tbaa !0
  %fracpart.1.off.i.i = add i64 %fracpart.1.i.i, 9
  %91 = icmp ugt i64 %fracpart.1.off.i.i, 18
  br i1 %91, label %land.rhs51.i.i, label %do.end55.i.i

land.rhs51.i.i:                                   ; preds = %do.body40.i.i
  %div48.i.i = sdiv i64 %fracpart.1.i.i, 10
  %92 = trunc i64 %indvars.iv.next336.i.i to i32
  %cmp52.i.i = icmp slt i32 %92, 20
  br i1 %cmp52.i.i, label %do.body40.i.i, label %do.end55.i.i

do.end55.i.i:                                     ; preds = %land.rhs51.i.i, %do.body40.i.i
  %cmp56.i.i = icmp eq i32 %inc45.i.i, 20
  %fplace.0.inc45.i.i = select i1 %cmp56.i.i, i32 %fplace.0.i.i, i32 %inc45.i.i
  %idxprom61.i.i = sext i32 %fplace.0.inc45.i.i to i64
  %arrayidx62.i.i = getelementptr inbounds [20 x i8]* %fconvert.i.i, i64 0, i64 %idxprom61.i.i
  store i8 0, i8* %arrayidx62.i.i, align 1, !tbaa !0
  %tobool66.i.i = icmp ne i32 %signvalue.0.i.i, 0
  %cond67.neg.i.i = sext i1 %tobool66.i.i to i32
  %sub63.i.i = add i32 %min.0656.i, -1
  %sub64.i.i = sub i32 %sub63.i.i, %..max.i.i
  %sub65.i.i = add i32 %sub64.i.i, %cond67.neg.i.i
  %sub68.i.i = sub i32 %sub65.i.i, %iplace.0.inc29.i.i
  %sub69.i.i = sub nsw i32 %..max.i.i, %fplace.0.inc45.i.i
  %cmp70.i.i = icmp slt i32 %sub69.i.i, 0
  %.sub69.i.i = select i1 %cmp70.i.i, i32 0, i32 %sub69.i.i
  %cmp74.i.i = icmp slt i32 %sub68.i.i, 0
  %padlen.0.i.i = select i1 %cmp74.i.i, i32 0, i32 %sub68.i.i
  %and78.i.i = and i32 %flags.0659.i, 1
  %tobool79.i.i = icmp eq i32 %and78.i.i, 0
  %sub81.i.i = sub nsw i32 0, %padlen.0.i.i
  %padlen.0.sub81.i.i = select i1 %tobool79.i.i, i32 %padlen.0.i.i, i32 %sub81.i.i
  %and83.i.i = and i32 %flags.0659.i, 16
  %tobool84.i.i = icmp ne i32 %and83.i.i, 0
  %cmp85.i.i = icmp sgt i32 %padlen.0.sub81.i.i, 0
  %or.cond.i.i = and i1 %tobool84.i.i, %cmp85.i.i
  br i1 %or.cond.i.i, label %if.then87.i.i, label %while.cond100.preheader.i.i

while.cond100.preheader.i.i:                      ; preds = %do.end55.i.i
  br i1 %cmp85.i.i, label %while.body103.i.preheader.i, label %while.end107.i.i

while.body103.i.preheader.i:                      ; preds = %while.cond100.preheader.i.i
  %.pre668.i = load i64* %currlen.i, align 8, !tbaa !2
  br label %while.body103.i.i

if.then87.i.i:                                    ; preds = %do.end55.i.i
  br i1 %tobool66.i.i, label %if.then89.i.i, label %while.cond.preheader.i.i

if.then89.i.i:                                    ; preds = %if.then87.i.i
  %93 = load i64* %currlen.i, align 8, !tbaa !2
  %add.i276.i.i = add i64 %93, 1
  %cmp.i277.i.i = icmp ult i64 %add.i276.i.i, %count
  br i1 %cmp.i277.i.i, label %if.then.i279.i.i, label %dopr_outch.exit280.i.i

if.then.i279.i.i:                                 ; preds = %if.then89.i.i
  %conv90.i.i = trunc i32 %signvalue.0.i.i to i8
  store i64 %add.i276.i.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i278.i.i = getelementptr inbounds i8* %str, i64 %93
  store i8 %conv90.i.i, i8* %arrayidx.i278.i.i, align 1, !tbaa !0
  br label %dopr_outch.exit280.i.i

dopr_outch.exit280.i.i:                           ; preds = %if.then.i279.i.i, %if.then89.i.i
  %dec92.i.i = add nsw i32 %padlen.0.sub81.i.i, -1
  br label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %dopr_outch.exit280.i.i, %if.then87.i.i
  %padlen.2.ph.i.i = phi i32 [ %padlen.0.sub81.i.i, %if.then87.i.i ], [ %dec92.i.i, %dopr_outch.exit280.i.i ]
  %total.0.ph.i.i = phi i32 [ 0, %if.then87.i.i ], [ 1, %dopr_outch.exit280.i.i ]
  %cmp94324.i.i = icmp sgt i32 %padlen.2.ph.i.i, 0
  br i1 %cmp94324.i.i, label %while.body.lr.ph.i.i, label %while.cond114.preheader.i.i

while.body.lr.ph.i.i:                             ; preds = %while.cond.preheader.i.i
  %94 = add i32 %total.0.ph.i.i, %padlen.2.ph.i.i
  %.pre.i = load i64* %currlen.i, align 8, !tbaa !2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %dopr_outch.exit275.i.i, %while.body.lr.ph.i.i
  %95 = phi i64 [ %.pre.i, %while.body.lr.ph.i.i ], [ %96, %dopr_outch.exit275.i.i ]
  %total.0326.i.i = phi i32 [ %total.0.ph.i.i, %while.body.lr.ph.i.i ], [ %add97.i.i, %dopr_outch.exit275.i.i ]
  %add.i271.i.i = add i64 %95, 1
  %cmp.i272.i.i = icmp ult i64 %add.i271.i.i, %count
  br i1 %cmp.i272.i.i, label %if.then.i274.i.i, label %dopr_outch.exit275.i.i

if.then.i274.i.i:                                 ; preds = %while.body.i.i
  store i64 %add.i271.i.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i273.i.i = getelementptr inbounds i8* %str, i64 %95
  store i8 48, i8* %arrayidx.i273.i.i, align 1, !tbaa !0
  br label %dopr_outch.exit275.i.i

dopr_outch.exit275.i.i:                           ; preds = %if.then.i274.i.i, %while.body.i.i
  %96 = phi i64 [ %add.i271.i.i, %if.then.i274.i.i ], [ %95, %while.body.i.i ]
  %add97.i.i = add nsw i32 %total.0326.i.i, 1
  %exitcond334.i.i = icmp eq i32 %add97.i.i, %94
  br i1 %exitcond334.i.i, label %while.cond114.preheader.i.i, label %while.body.i.i

while.body103.i.i:                                ; preds = %dopr_outch.exit270.i.i, %while.body103.i.preheader.i
  %97 = phi i64 [ %98, %dopr_outch.exit270.i.i ], [ %.pre668.i, %while.body103.i.preheader.i ]
  %total.1321.i.i = phi i32 [ %phitmp.i, %dopr_outch.exit270.i.i ], [ 1, %while.body103.i.preheader.i ]
  %add.i266.i.i = add i64 %97, 1
  %cmp.i267.i.i = icmp ult i64 %add.i266.i.i, %count
  br i1 %cmp.i267.i.i, label %if.then.i269.i.i, label %dopr_outch.exit270.i.i

if.then.i269.i.i:                                 ; preds = %while.body103.i.i
  store i64 %add.i266.i.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i268.i.i = getelementptr inbounds i8* %str, i64 %97
  store i8 32, i8* %arrayidx.i268.i.i, align 1, !tbaa !0
  br label %dopr_outch.exit270.i.i

dopr_outch.exit270.i.i:                           ; preds = %if.then.i269.i.i, %while.body103.i.i
  %98 = phi i64 [ %add.i266.i.i, %if.then.i269.i.i ], [ %97, %while.body103.i.i ]
  %exitcond333.i.i = icmp eq i32 %total.1321.i.i, %padlen.0.sub81.i.i
  %phitmp.i = add i32 %total.1321.i.i, 1
  br i1 %exitcond333.i.i, label %while.end107.i.i, label %while.body103.i.i

while.end107.i.i:                                 ; preds = %dopr_outch.exit270.i.i, %while.cond100.preheader.i.i
  %total.1.lcssa.i.i = phi i32 [ 0, %while.cond100.preheader.i.i ], [ %padlen.0.sub81.i.i, %dopr_outch.exit270.i.i ]
  %padlen.3.lcssa.i.i = phi i32 [ %padlen.0.sub81.i.i, %while.cond100.preheader.i.i ], [ 0, %dopr_outch.exit270.i.i ]
  %tobool108.i.i = icmp eq i32 %signvalue.0.i.i, 0
  br i1 %tobool108.i.i, label %while.cond114.preheader.i.i, label %if.then109.i.i

if.then109.i.i:                                   ; preds = %while.end107.i.i
  %99 = load i64* %currlen.i, align 8, !tbaa !2
  %add.i261.i.i = add i64 %99, 1
  %cmp.i262.i.i = icmp ult i64 %add.i261.i.i, %count
  br i1 %cmp.i262.i.i, label %if.then.i264.i.i, label %dopr_outch.exit265.i.i

if.then.i264.i.i:                                 ; preds = %if.then109.i.i
  %conv110.i.i = trunc i32 %signvalue.0.i.i to i8
  store i64 %add.i261.i.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i263.i.i = getelementptr inbounds i8* %str, i64 %99
  store i8 %conv110.i.i, i8* %arrayidx.i263.i.i, align 1, !tbaa !0
  br label %dopr_outch.exit265.i.i

dopr_outch.exit265.i.i:                           ; preds = %if.then.i264.i.i, %if.then109.i.i
  %add112.i.i = add nsw i32 %total.1.lcssa.i.i, 1
  br label %while.cond114.preheader.i.i

while.cond114.preheader.i.i:                      ; preds = %dopr_outch.exit275.i.i, %dopr_outch.exit265.i.i, %while.end107.i.i, %while.cond.preheader.i.i
  %padlen.3.lcssa342.i.i = phi i32 [ %padlen.3.lcssa.i.i, %while.end107.i.i ], [ %padlen.3.lcssa.i.i, %dopr_outch.exit265.i.i ], [ %padlen.2.ph.i.i, %while.cond.preheader.i.i ], [ 0, %dopr_outch.exit275.i.i ]
  %total.2.ph.i.i = phi i32 [ %total.1.lcssa.i.i, %while.end107.i.i ], [ %add112.i.i, %dopr_outch.exit265.i.i ], [ %total.0.ph.i.i, %while.cond.preheader.i.i ], [ %94, %dopr_outch.exit275.i.i ]
  %cmp115315.i.i = icmp sgt i32 %iplace.0.inc29.i.i, 0
  br i1 %cmp115315.i.i, label %while.body117.i.preheader.i, label %while.end123.i.i

while.body117.i.preheader.i:                      ; preds = %while.cond114.preheader.i.i
  %.pre667.i = load i64* %currlen.i, align 8, !tbaa !2
  br label %while.body117.i.i

while.body117.i.i:                                ; preds = %dopr_outch.exit260.i.i, %while.body117.i.preheader.i
  %100 = phi i64 [ %.pre667.i, %while.body117.i.preheader.i ], [ %102, %dopr_outch.exit260.i.i ]
  %indvars.iv331.i.i = phi i64 [ %idxprom38.i.i, %while.body117.i.preheader.i ], [ %indvars.iv.next332.i.i, %dopr_outch.exit260.i.i ]
  %indvars.iv.next332.i.i = add i64 %indvars.iv331.i.i, -1
  %add.i256.i.i = add i64 %100, 1
  %cmp.i257.i.i = icmp ult i64 %add.i256.i.i, %count
  br i1 %cmp.i257.i.i, label %if.then.i259.i.i, label %dopr_outch.exit260.i.i

if.then.i259.i.i:                                 ; preds = %while.body117.i.i
  %arrayidx120.i.i = getelementptr inbounds [20 x i8]* %iconvert.i.i, i64 0, i64 %indvars.iv.next332.i.i
  %101 = load i8* %arrayidx120.i.i, align 1, !tbaa !0
  store i64 %add.i256.i.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i258.i.i = getelementptr inbounds i8* %str, i64 %100
  store i8 %101, i8* %arrayidx.i258.i.i, align 1, !tbaa !0
  br label %dopr_outch.exit260.i.i

dopr_outch.exit260.i.i:                           ; preds = %if.then.i259.i.i, %while.body117.i.i
  %102 = phi i64 [ %add.i256.i.i, %if.then.i259.i.i ], [ %100, %while.body117.i.i ]
  %103 = trunc i64 %indvars.iv.next332.i.i to i32
  %cmp115.i.i = icmp sgt i32 %103, 0
  br i1 %cmp115.i.i, label %while.body117.i.i, label %while.cond114.while.end123_crit_edge.i.i

while.cond114.while.end123_crit_edge.i.i:         ; preds = %dopr_outch.exit260.i.i
  %104 = add i32 %total.2.ph.i.i, %iplace.0.inc29.i.i
  br label %while.end123.i.i

while.end123.i.i:                                 ; preds = %while.cond114.while.end123_crit_edge.i.i, %while.cond114.preheader.i.i
  %total.2.lcssa.i.i = phi i32 [ %104, %while.cond114.while.end123_crit_edge.i.i ], [ %total.2.ph.i.i, %while.cond114.preheader.i.i ]
  %cmp124.i.i = icmp sgt i32 %..max.i.i, 0
  br i1 %cmp124.i.i, label %if.then126.i.i, label %while.cond140.preheader.i.i

while.cond140.preheader.loopexit.i.loopexit.i:    ; preds = %while.cond129.backedge.i.i
  %105 = add i32 %total.2.lcssa.i.i, %fplace.0.inc45.i.i
  br label %while.cond140.preheader.loopexit.i.i

while.cond140.preheader.loopexit.i.i:             ; preds = %while.cond129.preheader.i.i, %while.cond140.preheader.loopexit.i.loopexit.i
  %total.3.lcssa.in.i.i = phi i32 [ %total.2.lcssa.i.i, %while.cond129.preheader.i.i ], [ %105, %while.cond140.preheader.loopexit.i.loopexit.i ]
  %total.3.lcssa.i.i = add i32 %total.3.lcssa.in.i.i, 1
  br label %while.cond140.preheader.i.i

while.cond140.preheader.i.i:                      ; preds = %while.cond140.preheader.loopexit.i.i, %while.end123.i.i
  %total.4.ph.i.i = phi i32 [ %total.2.lcssa.i.i, %while.end123.i.i ], [ %total.3.lcssa.i.i, %while.cond140.preheader.loopexit.i.i ]
  %cmp141306.i.i = icmp sgt i32 %.sub69.i.i, 0
  br i1 %cmp141306.i.i, label %while.body143.lr.ph.i.i, label %while.cond148.preheader.i.i

while.body143.lr.ph.i.i:                          ; preds = %while.cond140.preheader.i.i
  %106 = xor i32 %fplace.0.inc45.i.i, -1
  %107 = xor i32 %.max.i.i, -1
  %108 = icmp sgt i32 %107, -10
  %smax.i.i = select i1 %108, i32 %107, i32 -10
  %109 = sub i32 %106, %smax.i.i
  %.pre664.i = load i64* %currlen.i, align 8, !tbaa !2
  br label %while.body143.i.i

if.then126.i.i:                                   ; preds = %while.end123.i.i
  %110 = load i64* %currlen.i, align 8, !tbaa !2
  %add.i251.i.i = add i64 %110, 1
  %cmp.i252.i.i = icmp ult i64 %add.i251.i.i, %count
  br i1 %cmp.i252.i.i, label %if.then.i254.i.i, label %while.cond129.preheader.i.i

if.then.i254.i.i:                                 ; preds = %if.then126.i.i
  store i64 %add.i251.i.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i253.i.i = getelementptr inbounds i8* %str, i64 %110
  store i8 46, i8* %arrayidx.i253.i.i, align 1, !tbaa !0
  br label %while.cond129.preheader.i.i

while.cond129.preheader.i.i:                      ; preds = %if.then.i254.i.i, %if.then126.i.i
  %111 = phi i64 [ %add.i251.i.i, %if.then.i254.i.i ], [ %110, %if.then126.i.i ]
  %cmp130311.i.i = icmp sgt i32 %fplace.0.inc45.i.i, 0
  br i1 %cmp130311.i.i, label %while.body132.i.i, label %while.cond140.preheader.loopexit.i.i

while.body132.i.i:                                ; preds = %while.cond129.preheader.i.i, %while.cond129.backedge.i.i
  %112 = phi i64 [ %113, %while.cond129.backedge.i.i ], [ %111, %while.cond129.preheader.i.i ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %while.cond129.backedge.i.i ], [ %idxprom61.i.i, %while.cond129.preheader.i.i ]
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -1
  %add.i246.i.i = add i64 %112, 1
  %cmp.i247.i.i = icmp ult i64 %add.i246.i.i, %count
  br i1 %cmp.i247.i.i, label %if.then.i249.i.i, label %while.cond129.backedge.i.i

while.cond129.backedge.i.i:                       ; preds = %if.then.i249.i.i, %while.body132.i.i
  %113 = phi i64 [ %add.i246.i.i, %if.then.i249.i.i ], [ %112, %while.body132.i.i ]
  %114 = trunc i64 %indvars.iv.next.i.i to i32
  %cmp130.i.i = icmp sgt i32 %114, 0
  br i1 %cmp130.i.i, label %while.body132.i.i, label %while.cond140.preheader.loopexit.i.loopexit.i

if.then.i249.i.i:                                 ; preds = %while.body132.i.i
  %arrayidx135.i.i = getelementptr inbounds [20 x i8]* %fconvert.i.i, i64 0, i64 %indvars.iv.next.i.i
  %115 = load i8* %arrayidx135.i.i, align 1, !tbaa !0
  store i64 %add.i246.i.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i248.i.i = getelementptr inbounds i8* %str, i64 %112
  store i8 %115, i8* %arrayidx.i248.i.i, align 1, !tbaa !0
  br label %while.cond129.backedge.i.i

while.cond140.while.cond148.preheader_crit_edge.i.i: ; preds = %dopr_outch.exit245.i.i
  %116 = icmp sgt i32 %109, 0
  %smax329.i.i = select i1 %116, i32 %109, i32 0
  %117 = add i32 %total.4.ph.i.i, %smax329.i.i
  br label %while.cond148.preheader.i.i

while.cond148.preheader.i.i:                      ; preds = %while.cond140.while.cond148.preheader_crit_edge.i.i, %while.cond140.preheader.i.i
  %total.4.lcssa.i.i = phi i32 [ %117, %while.cond140.while.cond148.preheader_crit_edge.i.i ], [ %total.4.ph.i.i, %while.cond140.preheader.i.i ]
  %cmp149303.i.i = icmp slt i32 %padlen.3.lcssa342.i.i, 0
  br i1 %cmp149303.i.i, label %while.body151.i.preheader.i, label %fmtfp.exit.i

while.body151.i.preheader.i:                      ; preds = %while.cond148.preheader.i.i
  %.pre666.i = load i64* %currlen.i, align 8, !tbaa !2
  br label %while.body151.i.i

while.body143.i.i:                                ; preds = %dopr_outch.exit245.i.i, %while.body143.lr.ph.i.i
  %118 = phi i64 [ %.pre664.i, %while.body143.lr.ph.i.i ], [ %119, %dopr_outch.exit245.i.i ]
  %zpadlen.0307.i.i = phi i32 [ %.sub69.i.i, %while.body143.lr.ph.i.i ], [ %dec146.i.i, %dopr_outch.exit245.i.i ]
  %add.i241.i.i = add i64 %118, 1
  %cmp.i242.i.i = icmp ult i64 %add.i241.i.i, %count
  br i1 %cmp.i242.i.i, label %if.then.i244.i.i, label %dopr_outch.exit245.i.i

if.then.i244.i.i:                                 ; preds = %while.body143.i.i
  store i64 %add.i241.i.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i243.i.i = getelementptr inbounds i8* %str, i64 %118
  store i8 48, i8* %arrayidx.i243.i.i, align 1, !tbaa !0
  br label %dopr_outch.exit245.i.i

dopr_outch.exit245.i.i:                           ; preds = %if.then.i244.i.i, %while.body143.i.i
  %119 = phi i64 [ %add.i241.i.i, %if.then.i244.i.i ], [ %118, %while.body143.i.i ]
  %dec146.i.i = add nsw i32 %zpadlen.0307.i.i, -1
  %cmp141.i.i = icmp sgt i32 %dec146.i.i, 0
  br i1 %cmp141.i.i, label %while.body143.i.i, label %while.cond140.while.cond148.preheader_crit_edge.i.i

while.body151.i.i:                                ; preds = %dopr_outch.exit.i.i, %while.body151.i.preheader.i
  %120 = phi i64 [ %.pre666.i, %while.body151.i.preheader.i ], [ %121, %dopr_outch.exit.i.i ]
  %padlen.4304.i.i = phi i32 [ %padlen.3.lcssa342.i.i, %while.body151.i.preheader.i ], [ %inc154.i.i, %dopr_outch.exit.i.i ]
  %add.i.i.i = add i64 %120, 1
  %cmp.i239.i.i = icmp ult i64 %add.i.i.i, %count
  br i1 %cmp.i239.i.i, label %if.then.i240.i.i, label %dopr_outch.exit.i.i

if.then.i240.i.i:                                 ; preds = %while.body151.i.i
  store i64 %add.i.i.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i.i.i = getelementptr inbounds i8* %str, i64 %120
  store i8 32, i8* %arrayidx.i.i.i, align 1, !tbaa !0
  br label %dopr_outch.exit.i.i

dopr_outch.exit.i.i:                              ; preds = %if.then.i240.i.i, %while.body151.i.i
  %121 = phi i64 [ %add.i.i.i, %if.then.i240.i.i ], [ %120, %while.body151.i.i ]
  %inc154.i.i = add nsw i32 %padlen.4304.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc154.i.i, 0
  br i1 %exitcond.i.i, label %while.cond148.while.end155_crit_edge.i.i, label %while.body151.i.i

while.cond148.while.end155_crit_edge.i.i:         ; preds = %dopr_outch.exit.i.i
  %122 = sub i32 %total.4.lcssa.i.i, %padlen.3.lcssa342.i.i
  br label %fmtfp.exit.i

fmtfp.exit.i:                                     ; preds = %while.cond148.while.end155_crit_edge.i.i, %while.cond148.preheader.i.i
  %total.5.lcssa.i.i = phi i32 [ %122, %while.cond148.while.end155_crit_edge.i.i ], [ %total.4.lcssa.i.i, %while.cond148.preheader.i.i ]
  call void @llvm.lifetime.end(i64 20, i8* %3) #1
  call void @llvm.lifetime.end(i64 20, i8* %4) #1
  %add323.i = add nsw i32 %total.5.lcssa.i.i, %total.0661.i
  br label %sw.epilog481.i

sw.bb326.i:                                       ; preds = %sw.bb98.i, %sw.bb98.i
  %cmp327.i = icmp eq i32 %cflags.0660.i, 3
  %fp_offset331.i = load i32* %fp_offset_p.i, align 4
  %fits_in_fp332.i = icmp ult i32 %fp_offset331.i, 161
  br i1 %cmp327.i, label %if.then329.i, label %if.else341.i

if.then329.i:                                     ; preds = %sw.bb326.i
  br i1 %fits_in_fp332.i, label %vaarg.in_reg333.i, label %vaarg.in_mem335.i

vaarg.in_reg333.i:                                ; preds = %if.then329.i
  %123 = add i32 %fp_offset331.i, 16
  store i32 %123, i32* %fp_offset_p.i, align 4
  br label %sw.epilog481.i

vaarg.in_mem335.i:                                ; preds = %if.then329.i
  %overflow_arg_area337.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next338.i = getelementptr i8* %overflow_arg_area337.i, i64 8
  store i8* %overflow_arg_area.next338.i, i8** %overflow_arg_area_p.i, align 8
  br label %sw.epilog481.i

if.else341.i:                                     ; preds = %sw.bb326.i
  br i1 %fits_in_fp332.i, label %vaarg.in_reg345.i, label %vaarg.in_mem347.i

vaarg.in_reg345.i:                                ; preds = %if.else341.i
  %124 = add i32 %fp_offset331.i, 16
  store i32 %124, i32* %fp_offset_p.i, align 4
  br label %sw.epilog481.i

vaarg.in_mem347.i:                                ; preds = %if.else341.i
  %overflow_arg_area349.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next350.i = getelementptr i8* %overflow_arg_area349.i, i64 8
  store i8* %overflow_arg_area.next350.i, i8** %overflow_arg_area_p.i, align 8
  br label %sw.epilog481.i

sw.bb356.i:                                       ; preds = %sw.bb98.i, %sw.bb98.i
  %cmp357.i = icmp eq i32 %cflags.0660.i, 3
  %fp_offset361.i = load i32* %fp_offset_p.i, align 4
  %fits_in_fp362.i = icmp ult i32 %fp_offset361.i, 161
  br i1 %cmp357.i, label %if.then359.i, label %if.else371.i

if.then359.i:                                     ; preds = %sw.bb356.i
  br i1 %fits_in_fp362.i, label %vaarg.in_reg363.i, label %vaarg.in_mem365.i

vaarg.in_reg363.i:                                ; preds = %if.then359.i
  %125 = add i32 %fp_offset361.i, 16
  store i32 %125, i32* %fp_offset_p.i, align 4
  br label %sw.epilog481.i

vaarg.in_mem365.i:                                ; preds = %if.then359.i
  %overflow_arg_area367.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next368.i = getelementptr i8* %overflow_arg_area367.i, i64 8
  store i8* %overflow_arg_area.next368.i, i8** %overflow_arg_area_p.i, align 8
  br label %sw.epilog481.i

if.else371.i:                                     ; preds = %sw.bb356.i
  br i1 %fits_in_fp362.i, label %vaarg.in_reg375.i, label %vaarg.in_mem377.i

vaarg.in_reg375.i:                                ; preds = %if.else371.i
  %126 = add i32 %fp_offset361.i, 16
  store i32 %126, i32* %fp_offset_p.i, align 4
  br label %sw.epilog481.i

vaarg.in_mem377.i:                                ; preds = %if.else371.i
  %overflow_arg_area379.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next380.i = getelementptr i8* %overflow_arg_area379.i, i64 8
  store i8* %overflow_arg_area.next380.i, i8** %overflow_arg_area_p.i, align 8
  br label %sw.epilog481.i

sw.bb384.i:                                       ; preds = %sw.bb98.i
  %gp_offset386.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp387.i = icmp ult i32 %gp_offset386.i, 41
  br i1 %fits_in_gp387.i, label %vaarg.in_reg388.i, label %vaarg.in_mem390.i

vaarg.in_reg388.i:                                ; preds = %sw.bb384.i
  %reg_save_area389.i = load i8** %2, align 8
  %127 = sext i32 %gp_offset386.i to i64
  %128 = getelementptr i8* %reg_save_area389.i, i64 %127
  %129 = add i32 %gp_offset386.i, 8
  store i32 %129, i32* %gp_offset_p.i, align 4
  br label %vaarg.end394.i

vaarg.in_mem390.i:                                ; preds = %sw.bb384.i
  %overflow_arg_area392.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next393.i = getelementptr i8* %overflow_arg_area392.i, i64 8
  store i8* %overflow_arg_area.next393.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end394.i

vaarg.end394.i:                                   ; preds = %vaarg.in_mem390.i, %vaarg.in_reg388.i
  %vaarg.addr395.in.i = phi i8* [ %128, %vaarg.in_reg388.i ], [ %overflow_arg_area392.i, %vaarg.in_mem390.i ]
  %130 = load i64* %currlen.i, align 8, !tbaa !2
  %add.i651.i = add i64 %130, 1
  %cmp.i652.i = icmp ult i64 %add.i651.i, %count
  br i1 %cmp.i652.i, label %if.then.i654.i, label %dopr_outch.exit655.i

if.then.i654.i:                                   ; preds = %vaarg.end394.i
  %vaarg.addr395.i = bitcast i8* %vaarg.addr395.in.i to i32*
  %131 = load i32* %vaarg.addr395.i, align 4
  %conv396.i = trunc i32 %131 to i8
  store i64 %add.i651.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i653.i = getelementptr inbounds i8* %str, i64 %130
  store i8 %conv396.i, i8* %arrayidx.i653.i, align 1, !tbaa !0
  br label %dopr_outch.exit655.i

dopr_outch.exit655.i:                             ; preds = %if.then.i654.i, %vaarg.end394.i
  %add398.i = add nsw i32 %total.0661.i, 1
  br label %sw.epilog481.i

sw.bb399.i:                                       ; preds = %sw.bb98.i
  %gp_offset401.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp402.i = icmp ult i32 %gp_offset401.i, 41
  br i1 %fits_in_gp402.i, label %vaarg.in_reg403.i, label %vaarg.in_mem405.i

vaarg.in_reg403.i:                                ; preds = %sw.bb399.i
  %reg_save_area404.i = load i8** %2, align 8
  %132 = sext i32 %gp_offset401.i to i64
  %133 = getelementptr i8* %reg_save_area404.i, i64 %132
  %134 = add i32 %gp_offset401.i, 8
  store i32 %134, i32* %gp_offset_p.i, align 4
  br label %vaarg.end409.i

vaarg.in_mem405.i:                                ; preds = %sw.bb399.i
  %overflow_arg_area407.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next408.i = getelementptr i8* %overflow_arg_area407.i, i64 8
  store i8* %overflow_arg_area.next408.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end409.i

vaarg.end409.i:                                   ; preds = %vaarg.in_mem405.i, %vaarg.in_reg403.i
  %vaarg.addr410.in.i = phi i8* [ %133, %vaarg.in_reg403.i ], [ %overflow_arg_area407.i, %vaarg.in_mem405.i ]
  %vaarg.addr410.i = bitcast i8* %vaarg.addr410.in.i to i8**
  %135 = load i8** %vaarg.addr410.i, align 8
  %cmp.i633.i = icmp eq i8* %135, null
  %.value.i.i = select i1 %cmp.i633.i, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* %135
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i, %vaarg.end409.i
  %indvars.iv.i634.i = phi i64 [ %indvars.iv.next.i637.i, %for.cond.i.i ], [ 0, %vaarg.end409.i ]
  %strln.0.i.i = phi i32 [ %inc.i638.i, %for.cond.i.i ], [ 0, %vaarg.end409.i ]
  %arrayidx.i635.i = getelementptr inbounds i8* %.value.i.i, i64 %indvars.iv.i634.i
  %136 = load i8* %arrayidx.i635.i, align 1, !tbaa !0
  %tobool.i636.i = icmp eq i8 %136, 0
  %indvars.iv.next.i637.i = add i64 %indvars.iv.i634.i, 1
  %inc.i638.i = add nsw i32 %strln.0.i.i, 1
  br i1 %tobool.i636.i, label %for.end.i.i, label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %cmp1.i.i = icmp sgt i32 %max.0657.i, -1
  %cmp2.i.i = icmp sgt i32 %strln.0.i.i, %max.0657.i
  %or.cond.i639.i = and i1 %cmp1.i.i, %cmp2.i.i
  %strln.1.i.i = select i1 %or.cond.i639.i, i32 %max.0657.i, i32 %strln.0.i.i
  %sub.i640.i = sub nsw i32 %min.0656.i, %strln.1.i.i
  %cmp5.i.i = icmp slt i32 %sub.i640.i, 0
  %.sub.i.i = select i1 %cmp5.i.i, i32 0, i32 %sub.i640.i
  %and.i641.i = and i32 %flags.0659.i, 1
  %tobool8.i.i = icmp eq i32 %and.i641.i, 0
  %sub10.i.i = sub nsw i32 0, %.sub.i.i
  %.sub.sub10.i.i = select i1 %tobool8.i.i, i32 %.sub.i.i, i32 %sub10.i.i
  %cmp1276.i.i = icmp sgt i32 %.sub.sub10.i.i, 0
  br i1 %cmp1276.i.i, label %while.body.i644.preheader.i, label %while.cond13.preheader.i.i

while.body.i644.preheader.i:                      ; preds = %for.end.i.i
  %.pre665.i = load i64* %currlen.i, align 8, !tbaa !2
  br label %while.body.i644.i

while.cond13.preheader.i.i:                       ; preds = %dopr_outch.exit.i646.i, %for.end.i.i
  %total.0.lcssa.i.i = phi i32 [ 0, %for.end.i.i ], [ %.sub.sub10.i.i, %dopr_outch.exit.i646.i ]
  %padlen.0.lcssa.i.i = phi i32 [ %.sub.sub10.i.i, %for.end.i.i ], [ 0, %dopr_outch.exit.i646.i ]
  %137 = load i8* %.value.i.i, align 1, !tbaa !0
  %tobool1471.i.i = icmp eq i8 %137, 0
  br i1 %tobool1471.i.i, label %while.cond24.preheader.i.i, label %land.rhs.lr.ph.i.i

land.rhs.lr.ph.i.i:                               ; preds = %while.cond13.preheader.i.i
  %cmp15.i.i = icmp slt i32 %max.0657.i, 0
  br label %land.rhs.i647.i

while.body.i644.i:                                ; preds = %dopr_outch.exit.i646.i, %while.body.i644.preheader.i
  %138 = phi i64 [ %139, %dopr_outch.exit.i646.i ], [ %.pre665.i, %while.body.i644.preheader.i ]
  %total.078.i.i = phi i32 [ %phitmp.i.i, %dopr_outch.exit.i646.i ], [ 1, %while.body.i644.preheader.i ]
  %add.i.i642.i = add i64 %138, 1
  %cmp.i.i643.i = icmp ult i64 %add.i.i642.i, %count
  br i1 %cmp.i.i643.i, label %if.then.i.i.i, label %dopr_outch.exit.i646.i

if.then.i.i.i:                                    ; preds = %while.body.i644.i
  store i64 %add.i.i642.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i.i645.i = getelementptr inbounds i8* %str, i64 %138
  store i8 32, i8* %arrayidx.i.i645.i, align 1, !tbaa !0
  br label %dopr_outch.exit.i646.i

dopr_outch.exit.i646.i:                           ; preds = %if.then.i.i.i, %while.body.i644.i
  %139 = phi i64 [ %add.i.i642.i, %if.then.i.i.i ], [ %138, %while.body.i644.i ]
  %exitcond82.i.i = icmp eq i32 %total.078.i.i, %.sub.sub10.i.i
  %phitmp.i.i = add i32 %total.078.i.i, 1
  br i1 %exitcond82.i.i, label %while.cond13.preheader.i.i, label %while.body.i644.i

land.rhs.i647.i:                                  ; preds = %dopr_outch.exit67.i.i, %land.rhs.lr.ph.i.i
  %140 = phi i8 [ %137, %land.rhs.lr.ph.i.i ], [ %142, %dopr_outch.exit67.i.i ]
  %total.174.i.i = phi i32 [ %total.0.lcssa.i.i, %land.rhs.lr.ph.i.i ], [ %add21.i.i, %dopr_outch.exit67.i.i ]
  %cnt.073.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %inc22.i.i, %dopr_outch.exit67.i.i ]
  %value.addr.172.i.i = phi i8* [ %.value.i.i, %land.rhs.lr.ph.i.i ], [ %incdec.ptr.i.i, %dopr_outch.exit67.i.i ]
  %cmp17.i.i = icmp slt i32 %cnt.073.i.i, %max.0657.i
  %or.cond57.i.i = or i1 %cmp15.i.i, %cmp17.i.i
  br i1 %or.cond57.i.i, label %while.body19.i.i, label %while.cond24.preheader.i.i

while.cond24.preheader.i.i:                       ; preds = %dopr_outch.exit67.i.i, %land.rhs.i647.i, %while.cond13.preheader.i.i
  %total.1.lcssa.i648.i = phi i32 [ %total.0.lcssa.i.i, %while.cond13.preheader.i.i ], [ %add21.i.i, %dopr_outch.exit67.i.i ], [ %total.174.i.i, %land.rhs.i647.i ]
  %cmp2568.i.i = icmp slt i32 %padlen.0.lcssa.i.i, 0
  br i1 %cmp2568.i.i, label %while.body27.i.preheader.i, label %fmtstr.exit.i

while.body27.i.preheader.i:                       ; preds = %while.cond24.preheader.i.i
  %.pre669.i = load i64* %currlen.i, align 8, !tbaa !2
  br label %while.body27.i.i

while.body19.i.i:                                 ; preds = %land.rhs.i647.i
  %incdec.ptr.i.i = getelementptr inbounds i8* %value.addr.172.i.i, i64 1
  %141 = load i64* %currlen.i, align 8, !tbaa !2
  %add.i63.i.i = add i64 %141, 1
  %cmp.i64.i.i = icmp ult i64 %add.i63.i.i, %count
  br i1 %cmp.i64.i.i, label %if.then.i66.i.i, label %dopr_outch.exit67.i.i

if.then.i66.i.i:                                  ; preds = %while.body19.i.i
  store i64 %add.i63.i.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i65.i.i = getelementptr inbounds i8* %str, i64 %141
  store i8 %140, i8* %arrayidx.i65.i.i, align 1, !tbaa !0
  br label %dopr_outch.exit67.i.i

dopr_outch.exit67.i.i:                            ; preds = %if.then.i66.i.i, %while.body19.i.i
  %add21.i.i = add nsw i32 %total.174.i.i, 1
  %inc22.i.i = add nsw i32 %cnt.073.i.i, 1
  %142 = load i8* %incdec.ptr.i.i, align 1, !tbaa !0
  %tobool14.i.i = icmp eq i8 %142, 0
  br i1 %tobool14.i.i, label %while.cond24.preheader.i.i, label %land.rhs.i647.i

while.body27.i.i:                                 ; preds = %dopr_outch.exit62.i.i, %while.body27.i.preheader.i
  %143 = phi i64 [ %.pre669.i, %while.body27.i.preheader.i ], [ %144, %dopr_outch.exit62.i.i ]
  %padlen.169.i.i = phi i32 [ %padlen.0.lcssa.i.i, %while.body27.i.preheader.i ], [ %inc30.i.i, %dopr_outch.exit62.i.i ]
  %add.i58.i.i = add i64 %143, 1
  %cmp.i59.i.i = icmp ult i64 %add.i58.i.i, %count
  br i1 %cmp.i59.i.i, label %if.then.i61.i.i, label %dopr_outch.exit62.i.i

if.then.i61.i.i:                                  ; preds = %while.body27.i.i
  store i64 %add.i58.i.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i60.i.i = getelementptr inbounds i8* %str, i64 %143
  store i8 32, i8* %arrayidx.i60.i.i, align 1, !tbaa !0
  br label %dopr_outch.exit62.i.i

dopr_outch.exit62.i.i:                            ; preds = %if.then.i61.i.i, %while.body27.i.i
  %144 = phi i64 [ %add.i58.i.i, %if.then.i61.i.i ], [ %143, %while.body27.i.i ]
  %inc30.i.i = add nsw i32 %padlen.169.i.i, 1
  %exitcond.i649.i = icmp eq i32 %inc30.i.i, 0
  br i1 %exitcond.i649.i, label %while.cond24.while.end31_crit_edge.i.i, label %while.body27.i.i

while.cond24.while.end31_crit_edge.i.i:           ; preds = %dopr_outch.exit62.i.i
  %145 = sub i32 %total.1.lcssa.i648.i, %padlen.0.lcssa.i.i
  br label %fmtstr.exit.i

fmtstr.exit.i:                                    ; preds = %while.cond24.while.end31_crit_edge.i.i, %while.cond24.preheader.i.i
  %total.2.lcssa.i650.i = phi i32 [ %145, %while.cond24.while.end31_crit_edge.i.i ], [ %total.1.lcssa.i648.i, %while.cond24.preheader.i.i ]
  %add412.i = add nsw i32 %total.2.lcssa.i650.i, %total.0661.i
  br label %sw.epilog481.i

sw.bb413.i:                                       ; preds = %sw.bb98.i
  %gp_offset415.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp416.i = icmp ult i32 %gp_offset415.i, 41
  br i1 %fits_in_gp416.i, label %vaarg.in_reg417.i, label %vaarg.in_mem419.i

vaarg.in_reg417.i:                                ; preds = %sw.bb413.i
  %reg_save_area418.i = load i8** %2, align 8
  %146 = sext i32 %gp_offset415.i to i64
  %147 = getelementptr i8* %reg_save_area418.i, i64 %146
  %148 = add i32 %gp_offset415.i, 8
  store i32 %148, i32* %gp_offset_p.i, align 4
  br label %vaarg.end423.i

vaarg.in_mem419.i:                                ; preds = %sw.bb413.i
  %overflow_arg_area421.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next422.i = getelementptr i8* %overflow_arg_area421.i, i64 8
  store i8* %overflow_arg_area.next422.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end423.i

vaarg.end423.i:                                   ; preds = %vaarg.in_mem419.i, %vaarg.in_reg417.i
  %vaarg.addr424.in.i = phi i8* [ %147, %vaarg.in_reg417.i ], [ %overflow_arg_area421.i, %vaarg.in_mem419.i ]
  %vaarg.addr424.i = bitcast i8* %vaarg.addr424.in.i to i8**
  %149 = load i8** %vaarg.addr424.i, align 8
  %150 = ptrtoint i8* %149 to i64
  %call425.i = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %150, i32 16, i32 %min.0656.i, i32 %max.0657.i, i32 %flags.0659.i) #4
  %add426.i = add nsw i32 %call425.i, %total.0661.i
  br label %sw.epilog481.i

sw.bb427.i:                                       ; preds = %sw.bb98.i
  %cmp428.i = icmp eq i32 %cflags.0660.i, 1
  br i1 %cmp428.i, label %if.then430.i, label %if.else443.i

if.then430.i:                                     ; preds = %sw.bb427.i
  %gp_offset432.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp433.i = icmp ult i32 %gp_offset432.i, 41
  br i1 %fits_in_gp433.i, label %vaarg.in_reg434.i, label %vaarg.in_mem436.i

vaarg.in_reg434.i:                                ; preds = %if.then430.i
  %reg_save_area435.i = load i8** %2, align 8
  %151 = sext i32 %gp_offset432.i to i64
  %152 = getelementptr i8* %reg_save_area435.i, i64 %151
  %153 = add i32 %gp_offset432.i, 8
  store i32 %153, i32* %gp_offset_p.i, align 4
  br label %vaarg.end440.i

vaarg.in_mem436.i:                                ; preds = %if.then430.i
  %overflow_arg_area438.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next439.i = getelementptr i8* %overflow_arg_area438.i, i64 8
  store i8* %overflow_arg_area.next439.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end440.i

vaarg.end440.i:                                   ; preds = %vaarg.in_mem436.i, %vaarg.in_reg434.i
  %vaarg.addr441.in.i = phi i8* [ %152, %vaarg.in_reg434.i ], [ %overflow_arg_area438.i, %vaarg.in_mem436.i ]
  %vaarg.addr441.i = bitcast i8* %vaarg.addr441.in.i to i16**
  %154 = load i16** %vaarg.addr441.i, align 8
  %155 = load i64* %currlen.i, align 8, !tbaa !2
  %conv442.i = trunc i64 %155 to i16
  store i16 %conv442.i, i16* %154, align 2, !tbaa !4
  br label %sw.epilog481.i

if.else443.i:                                     ; preds = %sw.bb427.i
  %cmp444.i = icmp eq i32 %cflags.0660.i, 2
  %gp_offset449.i = load i32* %gp_offset_p.i, align 4
  %fits_in_gp450.i = icmp ult i32 %gp_offset449.i, 41
  br i1 %cmp444.i, label %if.then446.i, label %if.else459.i

if.then446.i:                                     ; preds = %if.else443.i
  br i1 %fits_in_gp450.i, label %vaarg.in_reg451.i, label %vaarg.in_mem453.i

vaarg.in_reg451.i:                                ; preds = %if.then446.i
  %reg_save_area452.i = load i8** %2, align 8
  %156 = sext i32 %gp_offset449.i to i64
  %157 = getelementptr i8* %reg_save_area452.i, i64 %156
  %158 = add i32 %gp_offset449.i, 8
  store i32 %158, i32* %gp_offset_p.i, align 4
  br label %vaarg.end457.i

vaarg.in_mem453.i:                                ; preds = %if.then446.i
  %overflow_arg_area455.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next456.i = getelementptr i8* %overflow_arg_area455.i, i64 8
  store i8* %overflow_arg_area.next456.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end457.i

vaarg.end457.i:                                   ; preds = %vaarg.in_mem453.i, %vaarg.in_reg451.i
  %vaarg.addr458.in.i = phi i8* [ %157, %vaarg.in_reg451.i ], [ %overflow_arg_area455.i, %vaarg.in_mem453.i ]
  %vaarg.addr458.i = bitcast i8* %vaarg.addr458.in.i to i64**
  %159 = load i64** %vaarg.addr458.i, align 8
  %160 = load i64* %currlen.i, align 8, !tbaa !2
  store i64 %160, i64* %159, align 8, !tbaa !2
  br label %sw.epilog481.i

if.else459.i:                                     ; preds = %if.else443.i
  br i1 %fits_in_gp450.i, label %vaarg.in_reg464.i, label %vaarg.in_mem466.i

vaarg.in_reg464.i:                                ; preds = %if.else459.i
  %reg_save_area465.i = load i8** %2, align 8
  %161 = sext i32 %gp_offset449.i to i64
  %162 = getelementptr i8* %reg_save_area465.i, i64 %161
  %163 = add i32 %gp_offset449.i, 8
  store i32 %163, i32* %gp_offset_p.i, align 4
  br label %vaarg.end470.i

vaarg.in_mem466.i:                                ; preds = %if.else459.i
  %overflow_arg_area468.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next469.i = getelementptr i8* %overflow_arg_area468.i, i64 8
  store i8* %overflow_arg_area.next469.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end470.i

vaarg.end470.i:                                   ; preds = %vaarg.in_mem466.i, %vaarg.in_reg464.i
  %vaarg.addr471.in.i = phi i8* [ %162, %vaarg.in_reg464.i ], [ %overflow_arg_area468.i, %vaarg.in_mem466.i ]
  %vaarg.addr471.i = bitcast i8* %vaarg.addr471.in.i to i32**
  %164 = load i32** %vaarg.addr471.i, align 8
  %165 = load i64* %currlen.i, align 8, !tbaa !2
  %conv472.i = trunc i64 %165 to i32
  store i32 %conv472.i, i32* %164, align 4, !tbaa !5
  br label %sw.epilog481.i

sw.bb475.i:                                       ; preds = %sw.bb98.i
  %166 = load i64* %currlen.i, align 8, !tbaa !2
  %add.i626.i = add i64 %166, 1
  %cmp.i627.i = icmp ult i64 %add.i626.i, %count
  br i1 %cmp.i627.i, label %if.then.i629.i, label %dopr_outch.exit630.i

if.then.i629.i:                                   ; preds = %sw.bb475.i
  store i64 %add.i626.i, i64* %currlen.i, align 8, !tbaa !2
  %arrayidx.i628.i = getelementptr inbounds i8* %str, i64 %166
  store i8 %ch.0662.i, i8* %arrayidx.i628.i, align 1, !tbaa !0
  br label %dopr_outch.exit630.i

dopr_outch.exit630.i:                             ; preds = %if.then.i629.i, %sw.bb475.i
  %add477.i = add nsw i32 %total.0661.i, 1
  br label %sw.epilog481.i

sw.bb478.i:                                       ; preds = %sw.bb98.i
  %incdec.ptr479.i = getelementptr inbounds i8* %format.addr.0663.i, i64 1
  br label %sw.epilog481.i

sw.epilog481.i:                                   ; preds = %sw.bb478.i, %dopr_outch.exit630.i, %vaarg.end470.i, %vaarg.end457.i, %vaarg.end440.i, %vaarg.end423.i, %fmtstr.exit.i, %dopr_outch.exit655.i, %vaarg.in_mem377.i, %vaarg.in_reg375.i, %vaarg.in_mem365.i, %vaarg.in_reg363.i, %vaarg.in_mem347.i, %vaarg.in_reg345.i, %vaarg.in_mem335.i, %vaarg.in_reg333.i, %fmtfp.exit.i, %if.end294.i, %if.end243.i, %if.end194.i, %if.end145.i, %sw.bb98.i
  %total.2.i = phi i32 [ %total.0661.i, %sw.bb98.i ], [ %total.0661.i, %sw.bb478.i ], [ %add477.i, %dopr_outch.exit630.i ], [ %total.0661.i, %vaarg.end440.i ], [ %total.0661.i, %vaarg.end457.i ], [ %total.0661.i, %vaarg.end470.i ], [ %add426.i, %vaarg.end423.i ], [ %add412.i, %fmtstr.exit.i ], [ %add398.i, %dopr_outch.exit655.i ], [ %add323.i, %fmtfp.exit.i ], [ %add296.i, %if.end294.i ], [ %add245.i, %if.end243.i ], [ %add196.i, %if.end194.i ], [ %add147.i, %if.end145.i ], [ %total.0661.i, %vaarg.in_mem335.i ], [ %total.0661.i, %vaarg.in_reg333.i ], [ %total.0661.i, %vaarg.in_mem347.i ], [ %total.0661.i, %vaarg.in_reg345.i ], [ %total.0661.i, %vaarg.in_mem365.i ], [ %total.0661.i, %vaarg.in_reg363.i ], [ %total.0661.i, %vaarg.in_mem377.i ], [ %total.0661.i, %vaarg.in_reg375.i ]
  %format.addr.2.i = phi i8* [ %format.addr.0663.i, %sw.bb98.i ], [ %incdec.ptr479.i, %sw.bb478.i ], [ %format.addr.0663.i, %dopr_outch.exit630.i ], [ %format.addr.0663.i, %vaarg.end440.i ], [ %format.addr.0663.i, %vaarg.end457.i ], [ %format.addr.0663.i, %vaarg.end470.i ], [ %format.addr.0663.i, %vaarg.end423.i ], [ %format.addr.0663.i, %fmtstr.exit.i ], [ %format.addr.0663.i, %dopr_outch.exit655.i ], [ %format.addr.0663.i, %fmtfp.exit.i ], [ %format.addr.0663.i, %if.end294.i ], [ %format.addr.0663.i, %if.end243.i ], [ %format.addr.0663.i, %if.end194.i ], [ %format.addr.0663.i, %if.end145.i ], [ %format.addr.0663.i, %vaarg.in_mem335.i ], [ %format.addr.0663.i, %vaarg.in_reg333.i ], [ %format.addr.0663.i, %vaarg.in_mem347.i ], [ %format.addr.0663.i, %vaarg.in_reg345.i ], [ %format.addr.0663.i, %vaarg.in_mem365.i ], [ %format.addr.0663.i, %vaarg.in_reg363.i ], [ %format.addr.0663.i, %vaarg.in_mem377.i ], [ %format.addr.0663.i, %vaarg.in_reg375.i ]
  %incdec.ptr482.i = getelementptr inbounds i8* %format.addr.2.i, i64 1
  %167 = load i8* %format.addr.2.i, align 1, !tbaa !0
  br label %while.body.i

while.end.i:                                      ; preds = %while.cond.backedge.i
  br i1 %cmp, label %dopr.exit, label %if.then487.i

if.then487.i:                                     ; preds = %while.end.i
  %168 = load i64* %currlen.i, align 8, !tbaa !2
  %sub488.i = add i64 %count, -1
  %cmp489.i = icmp ult i64 %168, %sub488.i
  br i1 %cmp489.i, label %if.then491.i, label %if.else493.i

if.then491.i:                                     ; preds = %if.then487.i
  %arrayidx492.i = getelementptr inbounds i8* %str, i64 %168
  store i8 0, i8* %arrayidx492.i, align 1, !tbaa !0
  br label %dopr.exit

if.else493.i:                                     ; preds = %if.then487.i
  %arrayidx495.i = getelementptr inbounds i8* %str, i64 %sub488.i
  store i8 0, i8* %arrayidx495.i, align 1, !tbaa !0
  br label %dopr.exit

dopr.exit:                                        ; preds = %while.end.i, %if.then491.i, %if.else493.i
  call void @llvm.lifetime.end(i64 8, i8* %0) #1
  ret i32 %total.0661.i
}

; Function Attrs: nounwind optsize uwtable
define i32 @Util_snprintf(i8* %str, i64 %count, i8* nocapture %fmt, ...) #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %call = call i32 @Util_vsnprintf(i8* %str, i64 %count, i8* %fmt, %struct.__va_list_tag* %arraydecay) #5
  call void @llvm.va_end(i8* %arraydecay1)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @fmtint(i8* nocapture %buffer, i64* nocapture %currlen, i64 %maxlen, i64 %value, i32 %base, i32 %min, i32 %max, i32 %flags) #0 {
entry:
  %convert = alloca [20 x i8], align 16
  %cmp = icmp slt i32 %max, 0
  %.max = select i1 %cmp, i32 0, i32 %max
  %and = and i32 %flags, 64
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.end14

if.then1:                                         ; preds = %entry
  %cmp2 = icmp slt i64 %value, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then1
  %sub = sub nsw i64 0, %value
  br label %if.end14

if.else:                                          ; preds = %if.then1
  %and4 = and i32 %flags, 2
  %tobool5 = icmp eq i32 %and4, 0
  br i1 %tobool5, label %if.else7, label %if.end14

if.else7:                                         ; preds = %if.else
  %and8 = shl i32 %flags, 3
  %0 = and i32 %and8, 32
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.else, %entry, %if.then3
  %signvalue.0 = phi i32 [ 0, %entry ], [ 45, %if.then3 ], [ 43, %if.else ], [ %0, %if.else7 ]
  %uvalue.0 = phi i64 [ %value, %entry ], [ %sub, %if.then3 ], [ %value, %if.else ], [ %value, %if.else7 ]
  %and15 = and i32 %flags, 32
  %conv = zext i32 %base to i64
  %tobool19 = icmp ne i32 %and15, 0
  %cond = select i1 %tobool19, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0)
  br label %do.body

do.body:                                          ; preds = %if.end14, %do.body
  %indvars.iv190 = phi i64 [ 0, %if.end14 ], [ %indvars.iv.next191, %do.body ]
  %uvalue.1 = phi i64 [ %uvalue.0, %if.end14 ], [ %div, %do.body ]
  %place.0 = phi i32 [ 0, %if.end14 ], [ %inc, %do.body ]
  %rem = urem i64 %uvalue.1, %conv
  %arrayidx = getelementptr inbounds i8* %cond, i64 %rem
  %1 = load i8* %arrayidx, align 1, !tbaa !0
  %indvars.iv.next191 = add i64 %indvars.iv190, 1
  %inc = add nsw i32 %place.0, 1
  %arrayidx20 = getelementptr inbounds [20 x i8]* %convert, i64 0, i64 %indvars.iv190
  store i8 %1, i8* %arrayidx20, align 1, !tbaa !0
  %div = udiv i64 %uvalue.1, %conv
  %tobool22 = icmp ne i64 %div, 0
  %2 = trunc i64 %indvars.iv.next191 to i32
  %cmp23 = icmp slt i32 %2, 20
  %or.cond = and i1 %tobool22, %cmp23
  br i1 %or.cond, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %cmp25 = icmp eq i32 %inc, 20
  %place.0.inc = select i1 %cmp25, i32 %place.0, i32 %inc
  %idxprom29 = sext i32 %place.0.inc to i64
  %arrayidx30 = getelementptr inbounds [20 x i8]* %convert, i64 0, i64 %idxprom29
  store i8 0, i8* %arrayidx30, align 1, !tbaa !0
  %sub31 = sub nsw i32 %.max, %place.0.inc
  %cmp32 = icmp sge i32 %.max, %place.0.inc
  %cond34 = select i1 %cmp32, i32 %.max, i32 %place.0.inc
  %sub35 = sub nsw i32 %min, %cond34
  %tobool36 = icmp ne i32 %signvalue.0, 0
  %cond37.neg = sext i1 %tobool36 to i32
  %sub38 = add i32 %sub35, %cond37.neg
  %cmp39 = icmp slt i32 %sub31, 0
  %zpadlen.0 = select i1 %cmp39, i32 0, i32 %sub31
  %cmp43 = icmp slt i32 %sub38, 0
  %.sub38 = select i1 %cmp43, i32 0, i32 %sub38
  %and47 = and i32 %flags, 16
  %tobool48 = icmp eq i32 %and47, 0
  br i1 %tobool48, label %if.end56, label %if.then49

if.then49:                                        ; preds = %do.end
  %cmp50 = icmp sge i32 %zpadlen.0, %.sub38
  %cond55 = select i1 %cmp50, i32 %zpadlen.0, i32 %.sub38
  br label %if.end56

if.end56:                                         ; preds = %do.end, %if.then49
  %spadlen.1 = phi i32 [ 0, %if.then49 ], [ %.sub38, %do.end ]
  %zpadlen.1 = phi i32 [ %cond55, %if.then49 ], [ %zpadlen.0, %do.end ]
  %and57 = and i32 %flags, 1
  %tobool58 = icmp eq i32 %and57, 0
  %sub60 = sub nsw i32 0, %spadlen.1
  %spadlen.1.sub60 = select i1 %tobool58, i32 %spadlen.1, i32 %sub60
  %cmp62183 = icmp sgt i32 %spadlen.1.sub60, 0
  br i1 %cmp62183, label %while.body, label %while.end

while.body:                                       ; preds = %if.end56, %dopr_outch.exit.while.body_crit_edge
  %total.0185 = phi i32 [ %phitmp, %dopr_outch.exit.while.body_crit_edge ], [ 1, %if.end56 ]
  %3 = load i64* %currlen, align 8, !tbaa !2
  %add.i = add i64 %3, 1
  %cmp.i = icmp ult i64 %add.i, %maxlen
  br i1 %cmp.i, label %if.then.i, label %dopr_outch.exit

if.then.i:                                        ; preds = %while.body
  store i64 %add.i, i64* %currlen, align 8, !tbaa !2
  %arrayidx.i = getelementptr inbounds i8* %buffer, i64 %3
  store i8 32, i8* %arrayidx.i, align 1, !tbaa !0
  br label %dopr_outch.exit

dopr_outch.exit:                                  ; preds = %while.body, %if.then.i
  %exitcond189 = icmp eq i32 %total.0185, %spadlen.1.sub60
  br i1 %exitcond189, label %while.end, label %dopr_outch.exit.while.body_crit_edge

dopr_outch.exit.while.body_crit_edge:             ; preds = %dopr_outch.exit
  %phitmp = add i32 %total.0185, 1
  br label %while.body

while.end:                                        ; preds = %dopr_outch.exit, %if.end56
  %total.0.lcssa = phi i32 [ 0, %if.end56 ], [ %spadlen.1.sub60, %dopr_outch.exit ]
  %spadlen.2.lcssa = phi i32 [ %spadlen.1.sub60, %if.end56 ], [ 0, %dopr_outch.exit ]
  br i1 %tobool36, label %if.then66, label %if.end70

if.then66:                                        ; preds = %while.end
  %4 = load i64* %currlen, align 8, !tbaa !2
  %add.i171 = add i64 %4, 1
  %cmp.i172 = icmp ult i64 %add.i171, %maxlen
  br i1 %cmp.i172, label %if.then.i174, label %dopr_outch.exit175

if.then.i174:                                     ; preds = %if.then66
  %conv67 = trunc i32 %signvalue.0 to i8
  store i64 %add.i171, i64* %currlen, align 8, !tbaa !2
  %arrayidx.i173 = getelementptr inbounds i8* %buffer, i64 %4
  store i8 %conv67, i8* %arrayidx.i173, align 1, !tbaa !0
  br label %dopr_outch.exit175

dopr_outch.exit175:                               ; preds = %if.then66, %if.then.i174
  %add69 = add nsw i32 %total.0.lcssa, 1
  br label %if.end70

if.end70:                                         ; preds = %dopr_outch.exit175, %while.end
  %total.1 = phi i32 [ %add69, %dopr_outch.exit175 ], [ %total.0.lcssa, %while.end ]
  %cmp71 = icmp sgt i32 %zpadlen.1, 0
  br i1 %cmp71, label %while.body77.preheader, label %while.cond83.preheader

while.body77.preheader:                           ; preds = %if.end70
  %5 = add i32 %zpadlen.1, %total.1
  br label %while.body77

while.body77:                                     ; preds = %dopr_outch.exit170, %while.body77.preheader
  %total.2 = phi i32 [ %total.1, %while.body77.preheader ], [ %add79, %dopr_outch.exit170 ]
  %6 = load i64* %currlen, align 8, !tbaa !2
  %add.i166 = add i64 %6, 1
  %cmp.i167 = icmp ult i64 %add.i166, %maxlen
  br i1 %cmp.i167, label %if.then.i169, label %dopr_outch.exit170

if.then.i169:                                     ; preds = %while.body77
  store i64 %add.i166, i64* %currlen, align 8, !tbaa !2
  %arrayidx.i168 = getelementptr inbounds i8* %buffer, i64 %6
  store i8 48, i8* %arrayidx.i168, align 1, !tbaa !0
  br label %dopr_outch.exit170

dopr_outch.exit170:                               ; preds = %while.body77, %if.then.i169
  %add79 = add nsw i32 %total.2, 1
  %exitcond188 = icmp eq i32 %add79, %5
  br i1 %exitcond188, label %while.cond83.preheader, label %while.body77

while.cond83.preheader:                           ; preds = %dopr_outch.exit170, %if.end70
  %total.3.ph = phi i32 [ %total.1, %if.end70 ], [ %5, %dopr_outch.exit170 ]
  %cmp84179 = icmp sgt i32 %place.0.inc, 0
  br i1 %cmp84179, label %while.body86, label %while.cond93.preheader

while.cond83.while.cond93.preheader_crit_edge:    ; preds = %dopr_outch.exit165
  %7 = add i32 %place.0.inc, %total.3.ph
  br label %while.cond93.preheader

while.cond93.preheader:                           ; preds = %while.cond83.while.cond93.preheader_crit_edge, %while.cond83.preheader
  %total.3.lcssa = phi i32 [ %7, %while.cond83.while.cond93.preheader_crit_edge ], [ %total.3.ph, %while.cond83.preheader ]
  %cmp94176 = icmp slt i32 %spadlen.2.lcssa, 0
  br i1 %cmp94176, label %while.body96, label %while.end100

while.body86:                                     ; preds = %dopr_outch.exit165, %while.cond83.preheader
  %indvars.iv = phi i64 [ %idxprom29, %while.cond83.preheader ], [ %indvars.iv.next, %dopr_outch.exit165 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %8 = load i64* %currlen, align 8, !tbaa !2
  %add.i161 = add i64 %8, 1
  %cmp.i162 = icmp ult i64 %add.i161, %maxlen
  br i1 %cmp.i162, label %if.then.i164, label %dopr_outch.exit165

if.then.i164:                                     ; preds = %while.body86
  %arrayidx89 = getelementptr inbounds [20 x i8]* %convert, i64 0, i64 %indvars.iv.next
  %9 = load i8* %arrayidx89, align 1, !tbaa !0
  store i64 %add.i161, i64* %currlen, align 8, !tbaa !2
  %arrayidx.i163 = getelementptr inbounds i8* %buffer, i64 %8
  store i8 %9, i8* %arrayidx.i163, align 1, !tbaa !0
  br label %dopr_outch.exit165

dopr_outch.exit165:                               ; preds = %while.body86, %if.then.i164
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp84 = icmp sgt i32 %10, 0
  br i1 %cmp84, label %while.body86, label %while.cond83.while.cond93.preheader_crit_edge

while.body96:                                     ; preds = %dopr_outch.exit160, %while.cond93.preheader
  %spadlen.3177 = phi i32 [ %spadlen.2.lcssa, %while.cond93.preheader ], [ %inc99, %dopr_outch.exit160 ]
  %11 = load i64* %currlen, align 8, !tbaa !2
  %add.i156 = add i64 %11, 1
  %cmp.i157 = icmp ult i64 %add.i156, %maxlen
  br i1 %cmp.i157, label %if.then.i159, label %dopr_outch.exit160

if.then.i159:                                     ; preds = %while.body96
  store i64 %add.i156, i64* %currlen, align 8, !tbaa !2
  %arrayidx.i158 = getelementptr inbounds i8* %buffer, i64 %11
  store i8 32, i8* %arrayidx.i158, align 1, !tbaa !0
  br label %dopr_outch.exit160

dopr_outch.exit160:                               ; preds = %while.body96, %if.then.i159
  %inc99 = add nsw i32 %spadlen.3177, 1
  %exitcond = icmp eq i32 %inc99, 0
  br i1 %exitcond, label %while.cond93.while.end100_crit_edge, label %while.body96

while.cond93.while.end100_crit_edge:              ; preds = %dopr_outch.exit160
  %12 = sub i32 %total.3.lcssa, %spadlen.2.lcssa
  br label %while.end100

while.end100:                                     ; preds = %while.cond93.while.end100_crit_edge, %while.cond93.preheader
  %total.4.lcssa = phi i32 [ %12, %while.cond93.while.end100_crit_edge ], [ %total.3.lcssa, %while.cond93.preheader ]
  ret i32 %total.4.lcssa
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"long", metadata !0}
!3 = metadata !{metadata !"any pointer", metadata !0}
!4 = metadata !{metadata !"short", metadata !0}
!5 = metadata !{metadata !"int", metadata !0}