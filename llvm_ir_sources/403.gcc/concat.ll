; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@libiberty_concat_ptr = common global i8* null, align 8

; Function Attrs: nounwind optsize uwtable
define i64 @concat_length(i8* %first, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %tobool3.i = icmp eq i8* %first, null
  br i1 %tobool3.i, label %vconcat_length.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry
  %gp_offset_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3
  %overflow_arg_area_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2
  %gp_offset.pre.i = load i32* %gp_offset_p.i, align 16
  br label %for.body.i

for.body.i:                                       ; preds = %vaarg.end.i, %for.body.lr.ph.i
  %gp_offset.i = phi i32 [ %gp_offset.pre.i, %for.body.lr.ph.i ], [ %gp_offset6.i, %vaarg.end.i ]
  %arg.05.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %4, %vaarg.end.i ]
  %length.04.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %vaarg.end.i ]
  %call.i = call i64 @strlen(i8* %arg.05.i) #5
  %add.i = add i64 %call.i, %length.04.i
  %fits_in_gp.i = icmp ult i32 %gp_offset.i, 41
  br i1 %fits_in_gp.i, label %vaarg.in_reg.i, label %vaarg.in_mem.i

vaarg.in_reg.i:                                   ; preds = %for.body.i
  %reg_save_area.i = load i8** %0, align 16
  %1 = sext i32 %gp_offset.i to i64
  %2 = getelementptr i8* %reg_save_area.i, i64 %1
  %3 = add i32 %gp_offset.i, 8
  store i32 %3, i32* %gp_offset_p.i, align 16
  br label %vaarg.end.i

vaarg.in_mem.i:                                   ; preds = %for.body.i
  %overflow_arg_area.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next.i = getelementptr i8* %overflow_arg_area.i, i64 8
  store i8* %overflow_arg_area.next.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end.i

vaarg.end.i:                                      ; preds = %vaarg.in_mem.i, %vaarg.in_reg.i
  %gp_offset6.i = phi i32 [ %3, %vaarg.in_reg.i ], [ %gp_offset.i, %vaarg.in_mem.i ]
  %vaarg.addr.in.i = phi i8* [ %2, %vaarg.in_reg.i ], [ %overflow_arg_area.i, %vaarg.in_mem.i ]
  %vaarg.addr.i = bitcast i8* %vaarg.addr.in.i to i8**
  %4 = load i8** %vaarg.addr.i, align 8
  %tobool.i = icmp eq i8* %4, null
  br i1 %tobool.i, label %vconcat_length.exit, label %for.body.i

vconcat_length.exit:                              ; preds = %vaarg.end.i, %entry
  %length.0.lcssa.i = phi i64 [ 0, %entry ], [ %add.i, %vaarg.end.i ]
  call void @llvm.va_end(i8* %arraydecay1)
  ret i64 %length.0.lcssa.i
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind optsize uwtable
define i8* @concat_copy(i8* %dst, i8* %first, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %tobool1.i = icmp eq i8* %first, null
  br i1 %tobool1.i, label %vconcat_copy.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry
  %gp_offset_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3
  %overflow_arg_area_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %vaarg.end.i, %for.body.lr.ph.i
  %end.03.i = phi i8* [ %dst, %for.body.lr.ph.i ], [ %add.ptr.i, %vaarg.end.i ]
  %arg.02.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %4, %vaarg.end.i ]
  %call.i = call i64 @strlen(i8* %arg.02.i) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %end.03.i, i8* %arg.02.i, i64 %call.i, i32 1, i1 false) #1
  %add.ptr.i = getelementptr inbounds i8* %end.03.i, i64 %call.i
  %gp_offset.i = load i32* %gp_offset_p.i, align 16
  %fits_in_gp.i = icmp ult i32 %gp_offset.i, 41
  br i1 %fits_in_gp.i, label %vaarg.in_reg.i, label %vaarg.in_mem.i

vaarg.in_reg.i:                                   ; preds = %for.body.i
  %reg_save_area.i = load i8** %0, align 16
  %1 = sext i32 %gp_offset.i to i64
  %2 = getelementptr i8* %reg_save_area.i, i64 %1
  %3 = add i32 %gp_offset.i, 8
  store i32 %3, i32* %gp_offset_p.i, align 16
  br label %vaarg.end.i

vaarg.in_mem.i:                                   ; preds = %for.body.i
  %overflow_arg_area.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next.i = getelementptr i8* %overflow_arg_area.i, i64 8
  store i8* %overflow_arg_area.next.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end.i

vaarg.end.i:                                      ; preds = %vaarg.in_mem.i, %vaarg.in_reg.i
  %vaarg.addr.in.i = phi i8* [ %2, %vaarg.in_reg.i ], [ %overflow_arg_area.i, %vaarg.in_mem.i ]
  %vaarg.addr.i = bitcast i8* %vaarg.addr.in.i to i8**
  %4 = load i8** %vaarg.addr.i, align 8
  %tobool.i = icmp eq i8* %4, null
  br i1 %tobool.i, label %vconcat_copy.exit, label %for.body.i

vconcat_copy.exit:                                ; preds = %vaarg.end.i, %entry
  %end.0.lcssa.i = phi i8* [ %dst, %entry ], [ %add.ptr.i, %vaarg.end.i ]
  store i8 0, i8* %end.0.lcssa.i, align 1, !tbaa !0
  call void @llvm.va_end(i8* %arraydecay1)
  ret i8* %dst
}

; Function Attrs: nounwind optsize uwtable
define i8* @concat_copy2(i8* %first, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8** @libiberty_concat_ptr, align 8, !tbaa !2
  %tobool1.i = icmp eq i8* %first, null
  br i1 %tobool1.i, label %vconcat_copy.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry
  %gp_offset_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3
  %overflow_arg_area_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %vaarg.end.i, %for.body.lr.ph.i
  %end.03.i = phi i8* [ %0, %for.body.lr.ph.i ], [ %add.ptr.i, %vaarg.end.i ]
  %arg.02.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %5, %vaarg.end.i ]
  %call.i = call i64 @strlen(i8* %arg.02.i) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %end.03.i, i8* %arg.02.i, i64 %call.i, i32 1, i1 false) #1
  %add.ptr.i = getelementptr inbounds i8* %end.03.i, i64 %call.i
  %gp_offset.i = load i32* %gp_offset_p.i, align 16
  %fits_in_gp.i = icmp ult i32 %gp_offset.i, 41
  br i1 %fits_in_gp.i, label %vaarg.in_reg.i, label %vaarg.in_mem.i

vaarg.in_reg.i:                                   ; preds = %for.body.i
  %reg_save_area.i = load i8** %1, align 16
  %2 = sext i32 %gp_offset.i to i64
  %3 = getelementptr i8* %reg_save_area.i, i64 %2
  %4 = add i32 %gp_offset.i, 8
  store i32 %4, i32* %gp_offset_p.i, align 16
  br label %vaarg.end.i

vaarg.in_mem.i:                                   ; preds = %for.body.i
  %overflow_arg_area.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next.i = getelementptr i8* %overflow_arg_area.i, i64 8
  store i8* %overflow_arg_area.next.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end.i

vaarg.end.i:                                      ; preds = %vaarg.in_mem.i, %vaarg.in_reg.i
  %vaarg.addr.in.i = phi i8* [ %3, %vaarg.in_reg.i ], [ %overflow_arg_area.i, %vaarg.in_mem.i ]
  %vaarg.addr.i = bitcast i8* %vaarg.addr.in.i to i8**
  %5 = load i8** %vaarg.addr.i, align 8
  %tobool.i = icmp eq i8* %5, null
  br i1 %tobool.i, label %vconcat_copy.exit, label %for.body.i

vconcat_copy.exit:                                ; preds = %vaarg.end.i, %entry
  %end.0.lcssa.i = phi i8* [ %0, %entry ], [ %add.ptr.i, %vaarg.end.i ]
  store i8 0, i8* %end.0.lcssa.i, align 1, !tbaa !0
  call void @llvm.va_end(i8* %arraydecay1)
  %6 = load i8** @libiberty_concat_ptr, align 8, !tbaa !2
  ret i8* %6
}

; Function Attrs: nounwind optsize uwtable
define noalias i8* @concat(i8* %first, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %args6 = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %tobool3.i = icmp eq i8* %first, null
  br i1 %tobool3.i, label %vconcat_length.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry
  %gp_offset_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3
  %overflow_arg_area_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2
  %gp_offset.pre.i = load i32* %gp_offset_p.i, align 16
  br label %for.body.i

for.body.i:                                       ; preds = %vaarg.end.i, %for.body.lr.ph.i
  %gp_offset.i = phi i32 [ %gp_offset.pre.i, %for.body.lr.ph.i ], [ %gp_offset6.i, %vaarg.end.i ]
  %arg.05.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %4, %vaarg.end.i ]
  %length.04.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %vaarg.end.i ]
  %call.i = call i64 @strlen(i8* %arg.05.i) #5
  %add.i = add i64 %call.i, %length.04.i
  %fits_in_gp.i = icmp ult i32 %gp_offset.i, 41
  br i1 %fits_in_gp.i, label %vaarg.in_reg.i, label %vaarg.in_mem.i

vaarg.in_reg.i:                                   ; preds = %for.body.i
  %reg_save_area.i = load i8** %0, align 16
  %1 = sext i32 %gp_offset.i to i64
  %2 = getelementptr i8* %reg_save_area.i, i64 %1
  %3 = add i32 %gp_offset.i, 8
  store i32 %3, i32* %gp_offset_p.i, align 16
  br label %vaarg.end.i

vaarg.in_mem.i:                                   ; preds = %for.body.i
  %overflow_arg_area.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next.i = getelementptr i8* %overflow_arg_area.i, i64 8
  store i8* %overflow_arg_area.next.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end.i

vaarg.end.i:                                      ; preds = %vaarg.in_mem.i, %vaarg.in_reg.i
  %gp_offset6.i = phi i32 [ %3, %vaarg.in_reg.i ], [ %gp_offset.i, %vaarg.in_mem.i ]
  %vaarg.addr.in.i = phi i8* [ %2, %vaarg.in_reg.i ], [ %overflow_arg_area.i, %vaarg.in_mem.i ]
  %vaarg.addr.i = bitcast i8* %vaarg.addr.in.i to i8**
  %4 = load i8** %vaarg.addr.i, align 8
  %tobool.i = icmp eq i8* %4, null
  br i1 %tobool.i, label %vconcat_length.exit.loopexit, label %for.body.i

vconcat_length.exit.loopexit:                     ; preds = %vaarg.end.i
  %phitmp = add i64 %add.i, 1
  br label %vconcat_length.exit

vconcat_length.exit:                              ; preds = %vconcat_length.exit.loopexit, %entry
  %length.0.lcssa.i = phi i64 [ 1, %entry ], [ %phitmp, %vconcat_length.exit.loopexit ]
  %call3 = call noalias i8* @xmalloc(i64 %length.0.lcssa.i) #6
  call void @llvm.va_end(i8* %arraydecay1)
  %arraydecay78 = bitcast [1 x %struct.__va_list_tag]* %args6 to i8*
  call void @llvm.va_start(i8* %arraydecay78)
  br i1 %tobool3.i, label %vconcat_copy.exit, label %for.body.lr.ph.i17

for.body.lr.ph.i17:                               ; preds = %vconcat_length.exit
  %gp_offset_p.i15 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args6, i64 0, i64 0, i32 0
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args6, i64 0, i64 0, i32 3
  %overflow_arg_area_p.i16 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args6, i64 0, i64 0, i32 2
  br label %for.body.i21

for.body.i21:                                     ; preds = %vaarg.end.i30, %for.body.lr.ph.i17
  %end.03.i = phi i8* [ %call3, %for.body.lr.ph.i17 ], [ %add.ptr.i, %vaarg.end.i30 ]
  %arg.02.i = phi i8* [ %first, %for.body.lr.ph.i17 ], [ %9, %vaarg.end.i30 ]
  %call.i18 = call i64 @strlen(i8* %arg.02.i) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %end.03.i, i8* %arg.02.i, i64 %call.i18, i32 1, i1 false) #1
  %add.ptr.i = getelementptr inbounds i8* %end.03.i, i64 %call.i18
  %gp_offset.i19 = load i32* %gp_offset_p.i15, align 16
  %fits_in_gp.i20 = icmp ult i32 %gp_offset.i19, 41
  br i1 %fits_in_gp.i20, label %vaarg.in_reg.i23, label %vaarg.in_mem.i26

vaarg.in_reg.i23:                                 ; preds = %for.body.i21
  %reg_save_area.i22 = load i8** %5, align 16
  %6 = sext i32 %gp_offset.i19 to i64
  %7 = getelementptr i8* %reg_save_area.i22, i64 %6
  %8 = add i32 %gp_offset.i19, 8
  store i32 %8, i32* %gp_offset_p.i15, align 16
  br label %vaarg.end.i30

vaarg.in_mem.i26:                                 ; preds = %for.body.i21
  %overflow_arg_area.i24 = load i8** %overflow_arg_area_p.i16, align 8
  %overflow_arg_area.next.i25 = getelementptr i8* %overflow_arg_area.i24, i64 8
  store i8* %overflow_arg_area.next.i25, i8** %overflow_arg_area_p.i16, align 8
  br label %vaarg.end.i30

vaarg.end.i30:                                    ; preds = %vaarg.in_mem.i26, %vaarg.in_reg.i23
  %vaarg.addr.in.i27 = phi i8* [ %7, %vaarg.in_reg.i23 ], [ %overflow_arg_area.i24, %vaarg.in_mem.i26 ]
  %vaarg.addr.i28 = bitcast i8* %vaarg.addr.in.i27 to i8**
  %9 = load i8** %vaarg.addr.i28, align 8
  %tobool.i29 = icmp eq i8* %9, null
  br i1 %tobool.i29, label %vconcat_copy.exit, label %for.body.i21

vconcat_copy.exit:                                ; preds = %vaarg.end.i30, %vconcat_length.exit
  %end.0.lcssa.i = phi i8* [ %call3, %vconcat_length.exit ], [ %add.ptr.i, %vaarg.end.i30 ]
  store i8 0, i8* %end.0.lcssa.i, align 1, !tbaa !0
  call void @llvm.va_end(i8* %arraydecay78)
  ret i8* %call3
}

; Function Attrs: optsize
declare noalias i8* @xmalloc(i64) #2

; Function Attrs: nounwind optsize uwtable
define noalias i8* @reconcat(i8* %optr, i8* %first, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %args6 = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %tobool3.i = icmp eq i8* %first, null
  br i1 %tobool3.i, label %vconcat_length.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry
  %gp_offset_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3
  %overflow_arg_area_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2
  %gp_offset.pre.i = load i32* %gp_offset_p.i, align 16
  br label %for.body.i

for.body.i:                                       ; preds = %vaarg.end.i, %for.body.lr.ph.i
  %gp_offset.i = phi i32 [ %gp_offset.pre.i, %for.body.lr.ph.i ], [ %gp_offset6.i, %vaarg.end.i ]
  %arg.05.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %4, %vaarg.end.i ]
  %length.04.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %vaarg.end.i ]
  %call.i = call i64 @strlen(i8* %arg.05.i) #5
  %add.i = add i64 %call.i, %length.04.i
  %fits_in_gp.i = icmp ult i32 %gp_offset.i, 41
  br i1 %fits_in_gp.i, label %vaarg.in_reg.i, label %vaarg.in_mem.i

vaarg.in_reg.i:                                   ; preds = %for.body.i
  %reg_save_area.i = load i8** %0, align 16
  %1 = sext i32 %gp_offset.i to i64
  %2 = getelementptr i8* %reg_save_area.i, i64 %1
  %3 = add i32 %gp_offset.i, 8
  store i32 %3, i32* %gp_offset_p.i, align 16
  br label %vaarg.end.i

vaarg.in_mem.i:                                   ; preds = %for.body.i
  %overflow_arg_area.i = load i8** %overflow_arg_area_p.i, align 8
  %overflow_arg_area.next.i = getelementptr i8* %overflow_arg_area.i, i64 8
  store i8* %overflow_arg_area.next.i, i8** %overflow_arg_area_p.i, align 8
  br label %vaarg.end.i

vaarg.end.i:                                      ; preds = %vaarg.in_mem.i, %vaarg.in_reg.i
  %gp_offset6.i = phi i32 [ %3, %vaarg.in_reg.i ], [ %gp_offset.i, %vaarg.in_mem.i ]
  %vaarg.addr.in.i = phi i8* [ %2, %vaarg.in_reg.i ], [ %overflow_arg_area.i, %vaarg.in_mem.i ]
  %vaarg.addr.i = bitcast i8* %vaarg.addr.in.i to i8**
  %4 = load i8** %vaarg.addr.i, align 8
  %tobool.i = icmp eq i8* %4, null
  br i1 %tobool.i, label %vconcat_length.exit.loopexit, label %for.body.i

vconcat_length.exit.loopexit:                     ; preds = %vaarg.end.i
  %phitmp = add i64 %add.i, 1
  br label %vconcat_length.exit

vconcat_length.exit:                              ; preds = %vconcat_length.exit.loopexit, %entry
  %length.0.lcssa.i = phi i64 [ 1, %entry ], [ %phitmp, %vconcat_length.exit.loopexit ]
  %call3 = call noalias i8* @xmalloc(i64 %length.0.lcssa.i) #6
  call void @llvm.va_end(i8* %arraydecay1)
  %arraydecay78 = bitcast [1 x %struct.__va_list_tag]* %args6 to i8*
  call void @llvm.va_start(i8* %arraydecay78)
  br i1 %tobool3.i, label %vconcat_copy.exit, label %for.body.lr.ph.i18

for.body.lr.ph.i18:                               ; preds = %vconcat_length.exit
  %gp_offset_p.i16 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args6, i64 0, i64 0, i32 0
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args6, i64 0, i64 0, i32 3
  %overflow_arg_area_p.i17 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args6, i64 0, i64 0, i32 2
  br label %for.body.i22

for.body.i22:                                     ; preds = %vaarg.end.i31, %for.body.lr.ph.i18
  %end.03.i = phi i8* [ %call3, %for.body.lr.ph.i18 ], [ %add.ptr.i, %vaarg.end.i31 ]
  %arg.02.i = phi i8* [ %first, %for.body.lr.ph.i18 ], [ %9, %vaarg.end.i31 ]
  %call.i19 = call i64 @strlen(i8* %arg.02.i) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %end.03.i, i8* %arg.02.i, i64 %call.i19, i32 1, i1 false) #1
  %add.ptr.i = getelementptr inbounds i8* %end.03.i, i64 %call.i19
  %gp_offset.i20 = load i32* %gp_offset_p.i16, align 16
  %fits_in_gp.i21 = icmp ult i32 %gp_offset.i20, 41
  br i1 %fits_in_gp.i21, label %vaarg.in_reg.i24, label %vaarg.in_mem.i27

vaarg.in_reg.i24:                                 ; preds = %for.body.i22
  %reg_save_area.i23 = load i8** %5, align 16
  %6 = sext i32 %gp_offset.i20 to i64
  %7 = getelementptr i8* %reg_save_area.i23, i64 %6
  %8 = add i32 %gp_offset.i20, 8
  store i32 %8, i32* %gp_offset_p.i16, align 16
  br label %vaarg.end.i31

vaarg.in_mem.i27:                                 ; preds = %for.body.i22
  %overflow_arg_area.i25 = load i8** %overflow_arg_area_p.i17, align 8
  %overflow_arg_area.next.i26 = getelementptr i8* %overflow_arg_area.i25, i64 8
  store i8* %overflow_arg_area.next.i26, i8** %overflow_arg_area_p.i17, align 8
  br label %vaarg.end.i31

vaarg.end.i31:                                    ; preds = %vaarg.in_mem.i27, %vaarg.in_reg.i24
  %vaarg.addr.in.i28 = phi i8* [ %7, %vaarg.in_reg.i24 ], [ %overflow_arg_area.i25, %vaarg.in_mem.i27 ]
  %vaarg.addr.i29 = bitcast i8* %vaarg.addr.in.i28 to i8**
  %9 = load i8** %vaarg.addr.i29, align 8
  %tobool.i30 = icmp eq i8* %9, null
  br i1 %tobool.i30, label %vconcat_copy.exit, label %for.body.i22

vconcat_copy.exit:                                ; preds = %vaarg.end.i31, %vconcat_length.exit
  %end.0.lcssa.i = phi i8* [ %call3, %vconcat_length.exit ], [ %add.ptr.i, %vaarg.end.i31 ]
  store i8 0, i8* %end.0.lcssa.i, align 1, !tbaa !0
  %tobool = icmp eq i8* %optr, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %vconcat_copy.exit
  call void @free(i8* %optr) #6
  br label %if.end

if.end:                                           ; preds = %vconcat_copy.exit, %if.then
  call void @llvm.va_end(i8* %arraydecay78)
  ret i8* %call3
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"any pointer", metadata !0}
