; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@libiberty_concat_ptr = common global i8* null, align 8

; Function Attrs: nounwind optsize uwtable
define i64 @concat_length(i8* %first, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %first}, i64 0, metadata !13), !dbg !88
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %args}, metadata !15), !dbg !89
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !89
  call void @llvm.va_start(i8* %arraydecay1), !dbg !89
  call void @llvm.dbg.value(metadata !{i8* %first}, i64 0, metadata !90) #2, !dbg !93
  call void @llvm.dbg.value(metadata !94, i64 0, metadata !95) #2, !dbg !96
  call void @llvm.dbg.value(metadata !{i8* %first}, i64 0, metadata !97) #2, !dbg !98
  %tobool3.i = icmp eq i8* %first, null, !dbg !98
  br i1 %tobool3.i, label %vconcat_length.exit, label %for.body.lr.ph.i, !dbg !98

for.body.lr.ph.i:                                 ; preds = %entry
  %gp_offset_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !dbg !98
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !dbg !98
  %overflow_arg_area_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !dbg !98
  %gp_offset.pre.i = load i32* %gp_offset_p.i, align 16, !dbg !98
  br label %for.body.i, !dbg !98

for.body.i:                                       ; preds = %vaarg.end.i, %for.body.lr.ph.i
  %gp_offset.i = phi i32 [ %gp_offset.pre.i, %for.body.lr.ph.i ], [ %gp_offset6.i, %vaarg.end.i ], !dbg !100
  %arg.05.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %4, %vaarg.end.i ]
  %length.04.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %vaarg.end.i ]
  %call.i = call i64 @strlen(i8* %arg.05.i) #6, !dbg !100
  %add.i = add i64 %call.i, %length.04.i, !dbg !100
  call void @llvm.dbg.value(metadata !{i64 %add.i}, i64 0, metadata !95) #2, !dbg !100
  %fits_in_gp.i = icmp ult i32 %gp_offset.i, 41, !dbg !98
  br i1 %fits_in_gp.i, label %vaarg.in_reg.i, label %vaarg.in_mem.i, !dbg !98

vaarg.in_reg.i:                                   ; preds = %for.body.i
  %reg_save_area.i = load i8** %0, align 16, !dbg !98
  %1 = sext i32 %gp_offset.i to i64, !dbg !98
  %2 = getelementptr i8* %reg_save_area.i, i64 %1, !dbg !98
  %3 = add i32 %gp_offset.i, 8, !dbg !98
  store i32 %3, i32* %gp_offset_p.i, align 16, !dbg !98
  br label %vaarg.end.i, !dbg !98

vaarg.in_mem.i:                                   ; preds = %for.body.i
  %overflow_arg_area.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !98
  %overflow_arg_area.next.i = getelementptr i8* %overflow_arg_area.i, i64 8, !dbg !98
  store i8* %overflow_arg_area.next.i, i8** %overflow_arg_area_p.i, align 8, !dbg !98
  br label %vaarg.end.i, !dbg !98

vaarg.end.i:                                      ; preds = %vaarg.in_mem.i, %vaarg.in_reg.i
  %gp_offset6.i = phi i32 [ %3, %vaarg.in_reg.i ], [ %gp_offset.i, %vaarg.in_mem.i ]
  %vaarg.addr.in.i = phi i8* [ %2, %vaarg.in_reg.i ], [ %overflow_arg_area.i, %vaarg.in_mem.i ]
  %vaarg.addr.i = bitcast i8* %vaarg.addr.in.i to i8**, !dbg !98
  %4 = load i8** %vaarg.addr.i, align 8, !dbg !98
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !97) #2, !dbg !98
  %tobool.i = icmp eq i8* %4, null, !dbg !98
  br i1 %tobool.i, label %vconcat_length.exit, label %for.body.i, !dbg !98

vconcat_length.exit:                              ; preds = %vaarg.end.i, %entry
  %length.0.lcssa.i = phi i64 [ 0, %entry ], [ %add.i, %vaarg.end.i ]
  call void @llvm.dbg.value(metadata !{i64 %length.0.lcssa.i}, i64 0, metadata !14), !dbg !91
  call void @llvm.va_end(i8* %arraydecay1), !dbg !101
  ret i64 %length.0.lcssa.i, !dbg !102
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind optsize uwtable
define i8* @concat_copy(i8* %dst, i8* %first, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !36), !dbg !103
  call void @llvm.dbg.value(metadata !{i8* %first}, i64 0, metadata !37), !dbg !103
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %args}, metadata !39), !dbg !104
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !104
  call void @llvm.va_start(i8* %arraydecay1), !dbg !104
  %tobool1.i = icmp eq i8* %first, null, !dbg !105
  br i1 %tobool1.i, label %vconcat_copy.exit, label %for.body.lr.ph.i, !dbg !105

for.body.lr.ph.i:                                 ; preds = %entry
  %gp_offset_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !dbg !105
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !dbg !105
  %overflow_arg_area_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !dbg !105
  br label %for.body.i, !dbg !105

for.body.i:                                       ; preds = %vaarg.end.i, %for.body.lr.ph.i
  %end.03.i = phi i8* [ %dst, %for.body.lr.ph.i ], [ %add.ptr.i, %vaarg.end.i ]
  %arg.02.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %4, %vaarg.end.i ]
  %call.i = call i64 @strlen(i8* %arg.02.i) #6, !dbg !108
  call void @llvm.dbg.value(metadata !{i64 %call.i}, i64 0, metadata !109) #2, !dbg !108
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %end.03.i, i8* %arg.02.i, i64 %call.i, i32 1, i1 false) #2, !dbg !110
  %add.ptr.i = getelementptr inbounds i8* %end.03.i, i64 %call.i, !dbg !111
  call void @llvm.dbg.value(metadata !{i8* %add.ptr.i}, i64 0, metadata !112) #2, !dbg !111
  %gp_offset.i = load i32* %gp_offset_p.i, align 16, !dbg !105
  %fits_in_gp.i = icmp ult i32 %gp_offset.i, 41, !dbg !105
  br i1 %fits_in_gp.i, label %vaarg.in_reg.i, label %vaarg.in_mem.i, !dbg !105

vaarg.in_reg.i:                                   ; preds = %for.body.i
  %reg_save_area.i = load i8** %0, align 16, !dbg !105
  %1 = sext i32 %gp_offset.i to i64, !dbg !105
  %2 = getelementptr i8* %reg_save_area.i, i64 %1, !dbg !105
  %3 = add i32 %gp_offset.i, 8, !dbg !105
  store i32 %3, i32* %gp_offset_p.i, align 16, !dbg !105
  br label %vaarg.end.i, !dbg !105

vaarg.in_mem.i:                                   ; preds = %for.body.i
  %overflow_arg_area.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !105
  %overflow_arg_area.next.i = getelementptr i8* %overflow_arg_area.i, i64 8, !dbg !105
  store i8* %overflow_arg_area.next.i, i8** %overflow_arg_area_p.i, align 8, !dbg !105
  br label %vaarg.end.i, !dbg !105

vaarg.end.i:                                      ; preds = %vaarg.in_mem.i, %vaarg.in_reg.i
  %vaarg.addr.in.i = phi i8* [ %2, %vaarg.in_reg.i ], [ %overflow_arg_area.i, %vaarg.in_mem.i ]
  %vaarg.addr.i = bitcast i8* %vaarg.addr.in.i to i8**, !dbg !105
  %4 = load i8** %vaarg.addr.i, align 8, !dbg !105
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !113) #2, !dbg !105
  %tobool.i = icmp eq i8* %4, null, !dbg !105
  br i1 %tobool.i, label %vconcat_copy.exit, label %for.body.i, !dbg !105

vconcat_copy.exit:                                ; preds = %vaarg.end.i, %entry
  %end.0.lcssa.i = phi i8* [ %dst, %entry ], [ %add.ptr.i, %vaarg.end.i ]
  store i8 0, i8* %end.0.lcssa.i, align 1, !dbg !114, !tbaa !115
  call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !38), !dbg !117
  call void @llvm.va_end(i8* %arraydecay1), !dbg !118
  ret i8* %dst, !dbg !119
}

; Function Attrs: nounwind optsize uwtable
define i8* @concat_copy2(i8* %first, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %first}, i64 0, metadata !45), !dbg !120
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %args}, metadata !46), !dbg !121
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !121
  call void @llvm.va_start(i8* %arraydecay1), !dbg !121
  %0 = load i8** @libiberty_concat_ptr, align 8, !dbg !122, !tbaa !124
  %tobool1.i = icmp eq i8* %first, null, !dbg !125
  br i1 %tobool1.i, label %vconcat_copy.exit, label %for.body.lr.ph.i, !dbg !125

for.body.lr.ph.i:                                 ; preds = %entry
  %gp_offset_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !dbg !125
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !dbg !125
  %overflow_arg_area_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !dbg !125
  br label %for.body.i, !dbg !125

for.body.i:                                       ; preds = %vaarg.end.i, %for.body.lr.ph.i
  %end.03.i = phi i8* [ %0, %for.body.lr.ph.i ], [ %add.ptr.i, %vaarg.end.i ]
  %arg.02.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %5, %vaarg.end.i ]
  %call.i = call i64 @strlen(i8* %arg.02.i) #6, !dbg !126
  call void @llvm.dbg.value(metadata !{i64 %call.i}, i64 0, metadata !127) #2, !dbg !126
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %end.03.i, i8* %arg.02.i, i64 %call.i, i32 1, i1 false) #2, !dbg !128
  %add.ptr.i = getelementptr inbounds i8* %end.03.i, i64 %call.i, !dbg !129
  call void @llvm.dbg.value(metadata !{i8* %add.ptr.i}, i64 0, metadata !130) #2, !dbg !129
  %gp_offset.i = load i32* %gp_offset_p.i, align 16, !dbg !125
  %fits_in_gp.i = icmp ult i32 %gp_offset.i, 41, !dbg !125
  br i1 %fits_in_gp.i, label %vaarg.in_reg.i, label %vaarg.in_mem.i, !dbg !125

vaarg.in_reg.i:                                   ; preds = %for.body.i
  %reg_save_area.i = load i8** %1, align 16, !dbg !125
  %2 = sext i32 %gp_offset.i to i64, !dbg !125
  %3 = getelementptr i8* %reg_save_area.i, i64 %2, !dbg !125
  %4 = add i32 %gp_offset.i, 8, !dbg !125
  store i32 %4, i32* %gp_offset_p.i, align 16, !dbg !125
  br label %vaarg.end.i, !dbg !125

vaarg.in_mem.i:                                   ; preds = %for.body.i
  %overflow_arg_area.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !125
  %overflow_arg_area.next.i = getelementptr i8* %overflow_arg_area.i, i64 8, !dbg !125
  store i8* %overflow_arg_area.next.i, i8** %overflow_arg_area_p.i, align 8, !dbg !125
  br label %vaarg.end.i, !dbg !125

vaarg.end.i:                                      ; preds = %vaarg.in_mem.i, %vaarg.in_reg.i
  %vaarg.addr.in.i = phi i8* [ %3, %vaarg.in_reg.i ], [ %overflow_arg_area.i, %vaarg.in_mem.i ]
  %vaarg.addr.i = bitcast i8* %vaarg.addr.in.i to i8**, !dbg !125
  %5 = load i8** %vaarg.addr.i, align 8, !dbg !125
  call void @llvm.dbg.value(metadata !{i8* %5}, i64 0, metadata !131) #2, !dbg !125
  %tobool.i = icmp eq i8* %5, null, !dbg !125
  br i1 %tobool.i, label %vconcat_copy.exit, label %for.body.i, !dbg !125

vconcat_copy.exit:                                ; preds = %vaarg.end.i, %entry
  %end.0.lcssa.i = phi i8* [ %0, %entry ], [ %add.ptr.i, %vaarg.end.i ]
  store i8 0, i8* %end.0.lcssa.i, align 1, !dbg !132, !tbaa !115
  call void @llvm.va_end(i8* %arraydecay1), !dbg !133
  %6 = load i8** @libiberty_concat_ptr, align 8, !dbg !134, !tbaa !124
  ret i8* %6, !dbg !134
}

; Function Attrs: nounwind optsize uwtable
define noalias i8* @concat(i8* %first, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %args6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %first}, i64 0, metadata !50), !dbg !135
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %args}, metadata !52), !dbg !136
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !136
  call void @llvm.va_start(i8* %arraydecay1), !dbg !136
  call void @llvm.dbg.value(metadata !{i8* %first}, i64 0, metadata !137) #2, !dbg !140
  call void @llvm.dbg.value(metadata !94, i64 0, metadata !141) #2, !dbg !142
  call void @llvm.dbg.value(metadata !{i8* %first}, i64 0, metadata !143) #2, !dbg !144
  %tobool3.i = icmp eq i8* %first, null, !dbg !144
  br i1 %tobool3.i, label %vconcat_length.exit, label %for.body.lr.ph.i, !dbg !144

for.body.lr.ph.i:                                 ; preds = %entry
  %gp_offset_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !dbg !144
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !dbg !144
  %overflow_arg_area_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !dbg !144
  %gp_offset.pre.i = load i32* %gp_offset_p.i, align 16, !dbg !144
  br label %for.body.i, !dbg !144

for.body.i:                                       ; preds = %vaarg.end.i, %for.body.lr.ph.i
  %gp_offset.i = phi i32 [ %gp_offset.pre.i, %for.body.lr.ph.i ], [ %gp_offset6.i, %vaarg.end.i ], !dbg !145
  %arg.05.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %4, %vaarg.end.i ]
  %length.04.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %vaarg.end.i ]
  %call.i = call i64 @strlen(i8* %arg.05.i) #6, !dbg !145
  %add.i = add i64 %call.i, %length.04.i, !dbg !145
  call void @llvm.dbg.value(metadata !{i64 %add.i}, i64 0, metadata !141) #2, !dbg !145
  %fits_in_gp.i = icmp ult i32 %gp_offset.i, 41, !dbg !144
  br i1 %fits_in_gp.i, label %vaarg.in_reg.i, label %vaarg.in_mem.i, !dbg !144

vaarg.in_reg.i:                                   ; preds = %for.body.i
  %reg_save_area.i = load i8** %0, align 16, !dbg !144
  %1 = sext i32 %gp_offset.i to i64, !dbg !144
  %2 = getelementptr i8* %reg_save_area.i, i64 %1, !dbg !144
  %3 = add i32 %gp_offset.i, 8, !dbg !144
  store i32 %3, i32* %gp_offset_p.i, align 16, !dbg !144
  br label %vaarg.end.i, !dbg !144

vaarg.in_mem.i:                                   ; preds = %for.body.i
  %overflow_arg_area.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !144
  %overflow_arg_area.next.i = getelementptr i8* %overflow_arg_area.i, i64 8, !dbg !144
  store i8* %overflow_arg_area.next.i, i8** %overflow_arg_area_p.i, align 8, !dbg !144
  br label %vaarg.end.i, !dbg !144

vaarg.end.i:                                      ; preds = %vaarg.in_mem.i, %vaarg.in_reg.i
  %gp_offset6.i = phi i32 [ %3, %vaarg.in_reg.i ], [ %gp_offset.i, %vaarg.in_mem.i ]
  %vaarg.addr.in.i = phi i8* [ %2, %vaarg.in_reg.i ], [ %overflow_arg_area.i, %vaarg.in_mem.i ]
  %vaarg.addr.i = bitcast i8* %vaarg.addr.in.i to i8**, !dbg !144
  %4 = load i8** %vaarg.addr.i, align 8, !dbg !144
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !143) #2, !dbg !144
  %tobool.i = icmp eq i8* %4, null, !dbg !144
  br i1 %tobool.i, label %vconcat_length.exit.loopexit, label %for.body.i, !dbg !144

vconcat_length.exit.loopexit:                     ; preds = %vaarg.end.i
  %phitmp = add i64 %add.i, 1
  br label %vconcat_length.exit

vconcat_length.exit:                              ; preds = %vconcat_length.exit.loopexit, %entry
  %length.0.lcssa.i = phi i64 [ 1, %entry ], [ %phitmp, %vconcat_length.exit.loopexit ]
  %call3 = call noalias i8* @xmalloc(i64 %length.0.lcssa.i) #7, !dbg !138
  call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !51), !dbg !138
  call void @llvm.va_end(i8* %arraydecay1), !dbg !146
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %args6}, metadata !54), !dbg !147
  %arraydecay78 = bitcast [1 x %struct.__va_list_tag]* %args6 to i8*, !dbg !147
  call void @llvm.va_start(i8* %arraydecay78), !dbg !147
  br i1 %tobool3.i, label %vconcat_copy.exit, label %for.body.lr.ph.i17, !dbg !148

for.body.lr.ph.i17:                               ; preds = %vconcat_length.exit
  %gp_offset_p.i15 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args6, i64 0, i64 0, i32 0, !dbg !148
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args6, i64 0, i64 0, i32 3, !dbg !148
  %overflow_arg_area_p.i16 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args6, i64 0, i64 0, i32 2, !dbg !148
  br label %for.body.i21, !dbg !148

for.body.i21:                                     ; preds = %vaarg.end.i30, %for.body.lr.ph.i17
  %end.03.i = phi i8* [ %call3, %for.body.lr.ph.i17 ], [ %add.ptr.i, %vaarg.end.i30 ]
  %arg.02.i = phi i8* [ %first, %for.body.lr.ph.i17 ], [ %9, %vaarg.end.i30 ]
  %call.i18 = call i64 @strlen(i8* %arg.02.i) #6, !dbg !151
  call void @llvm.dbg.value(metadata !{i64 %call.i18}, i64 0, metadata !152) #2, !dbg !151
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %end.03.i, i8* %arg.02.i, i64 %call.i18, i32 1, i1 false) #2, !dbg !153
  %add.ptr.i = getelementptr inbounds i8* %end.03.i, i64 %call.i18, !dbg !154
  call void @llvm.dbg.value(metadata !{i8* %add.ptr.i}, i64 0, metadata !155) #2, !dbg !154
  %gp_offset.i19 = load i32* %gp_offset_p.i15, align 16, !dbg !148
  %fits_in_gp.i20 = icmp ult i32 %gp_offset.i19, 41, !dbg !148
  br i1 %fits_in_gp.i20, label %vaarg.in_reg.i23, label %vaarg.in_mem.i26, !dbg !148

vaarg.in_reg.i23:                                 ; preds = %for.body.i21
  %reg_save_area.i22 = load i8** %5, align 16, !dbg !148
  %6 = sext i32 %gp_offset.i19 to i64, !dbg !148
  %7 = getelementptr i8* %reg_save_area.i22, i64 %6, !dbg !148
  %8 = add i32 %gp_offset.i19, 8, !dbg !148
  store i32 %8, i32* %gp_offset_p.i15, align 16, !dbg !148
  br label %vaarg.end.i30, !dbg !148

vaarg.in_mem.i26:                                 ; preds = %for.body.i21
  %overflow_arg_area.i24 = load i8** %overflow_arg_area_p.i16, align 8, !dbg !148
  %overflow_arg_area.next.i25 = getelementptr i8* %overflow_arg_area.i24, i64 8, !dbg !148
  store i8* %overflow_arg_area.next.i25, i8** %overflow_arg_area_p.i16, align 8, !dbg !148
  br label %vaarg.end.i30, !dbg !148

vaarg.end.i30:                                    ; preds = %vaarg.in_mem.i26, %vaarg.in_reg.i23
  %vaarg.addr.in.i27 = phi i8* [ %7, %vaarg.in_reg.i23 ], [ %overflow_arg_area.i24, %vaarg.in_mem.i26 ]
  %vaarg.addr.i28 = bitcast i8* %vaarg.addr.in.i27 to i8**, !dbg !148
  %9 = load i8** %vaarg.addr.i28, align 8, !dbg !148
  call void @llvm.dbg.value(metadata !{i8* %9}, i64 0, metadata !156) #2, !dbg !148
  %tobool.i29 = icmp eq i8* %9, null, !dbg !148
  br i1 %tobool.i29, label %vconcat_copy.exit, label %for.body.i21, !dbg !148

vconcat_copy.exit:                                ; preds = %vaarg.end.i30, %vconcat_length.exit
  %end.0.lcssa.i = phi i8* [ %call3, %vconcat_length.exit ], [ %add.ptr.i, %vaarg.end.i30 ]
  store i8 0, i8* %end.0.lcssa.i, align 1, !dbg !157, !tbaa !115
  call void @llvm.va_end(i8* %arraydecay78), !dbg !158
  ret i8* %call3, !dbg !159
}

; Function Attrs: optsize
declare noalias i8* @xmalloc(i64) #3

; Function Attrs: nounwind optsize uwtable
define noalias i8* @reconcat(i8* %optr, i8* %first, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %args6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %optr}, i64 0, metadata !58), !dbg !160
  call void @llvm.dbg.value(metadata !{i8* %first}, i64 0, metadata !59), !dbg !160
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %args}, metadata !61), !dbg !161
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !161
  call void @llvm.va_start(i8* %arraydecay1), !dbg !161
  call void @llvm.dbg.value(metadata !{i8* %first}, i64 0, metadata !162) #2, !dbg !165
  call void @llvm.dbg.value(metadata !94, i64 0, metadata !166) #2, !dbg !167
  call void @llvm.dbg.value(metadata !{i8* %first}, i64 0, metadata !168) #2, !dbg !169
  %tobool3.i = icmp eq i8* %first, null, !dbg !169
  br i1 %tobool3.i, label %vconcat_length.exit, label %for.body.lr.ph.i, !dbg !169

for.body.lr.ph.i:                                 ; preds = %entry
  %gp_offset_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !dbg !169
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !dbg !169
  %overflow_arg_area_p.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !dbg !169
  %gp_offset.pre.i = load i32* %gp_offset_p.i, align 16, !dbg !169
  br label %for.body.i, !dbg !169

for.body.i:                                       ; preds = %vaarg.end.i, %for.body.lr.ph.i
  %gp_offset.i = phi i32 [ %gp_offset.pre.i, %for.body.lr.ph.i ], [ %gp_offset6.i, %vaarg.end.i ], !dbg !170
  %arg.05.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %4, %vaarg.end.i ]
  %length.04.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %vaarg.end.i ]
  %call.i = call i64 @strlen(i8* %arg.05.i) #6, !dbg !170
  %add.i = add i64 %call.i, %length.04.i, !dbg !170
  call void @llvm.dbg.value(metadata !{i64 %add.i}, i64 0, metadata !166) #2, !dbg !170
  %fits_in_gp.i = icmp ult i32 %gp_offset.i, 41, !dbg !169
  br i1 %fits_in_gp.i, label %vaarg.in_reg.i, label %vaarg.in_mem.i, !dbg !169

vaarg.in_reg.i:                                   ; preds = %for.body.i
  %reg_save_area.i = load i8** %0, align 16, !dbg !169
  %1 = sext i32 %gp_offset.i to i64, !dbg !169
  %2 = getelementptr i8* %reg_save_area.i, i64 %1, !dbg !169
  %3 = add i32 %gp_offset.i, 8, !dbg !169
  store i32 %3, i32* %gp_offset_p.i, align 16, !dbg !169
  br label %vaarg.end.i, !dbg !169

vaarg.in_mem.i:                                   ; preds = %for.body.i
  %overflow_arg_area.i = load i8** %overflow_arg_area_p.i, align 8, !dbg !169
  %overflow_arg_area.next.i = getelementptr i8* %overflow_arg_area.i, i64 8, !dbg !169
  store i8* %overflow_arg_area.next.i, i8** %overflow_arg_area_p.i, align 8, !dbg !169
  br label %vaarg.end.i, !dbg !169

vaarg.end.i:                                      ; preds = %vaarg.in_mem.i, %vaarg.in_reg.i
  %gp_offset6.i = phi i32 [ %3, %vaarg.in_reg.i ], [ %gp_offset.i, %vaarg.in_mem.i ]
  %vaarg.addr.in.i = phi i8* [ %2, %vaarg.in_reg.i ], [ %overflow_arg_area.i, %vaarg.in_mem.i ]
  %vaarg.addr.i = bitcast i8* %vaarg.addr.in.i to i8**, !dbg !169
  %4 = load i8** %vaarg.addr.i, align 8, !dbg !169
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !168) #2, !dbg !169
  %tobool.i = icmp eq i8* %4, null, !dbg !169
  br i1 %tobool.i, label %vconcat_length.exit.loopexit, label %for.body.i, !dbg !169

vconcat_length.exit.loopexit:                     ; preds = %vaarg.end.i
  %phitmp = add i64 %add.i, 1
  br label %vconcat_length.exit

vconcat_length.exit:                              ; preds = %vconcat_length.exit.loopexit, %entry
  %length.0.lcssa.i = phi i64 [ 1, %entry ], [ %phitmp, %vconcat_length.exit.loopexit ]
  %call3 = call noalias i8* @xmalloc(i64 %length.0.lcssa.i) #7, !dbg !163
  call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !60), !dbg !163
  call void @llvm.va_end(i8* %arraydecay1), !dbg !171
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %args6}, metadata !63), !dbg !172
  %arraydecay78 = bitcast [1 x %struct.__va_list_tag]* %args6 to i8*, !dbg !172
  call void @llvm.va_start(i8* %arraydecay78), !dbg !172
  br i1 %tobool3.i, label %vconcat_copy.exit, label %for.body.lr.ph.i18, !dbg !173

for.body.lr.ph.i18:                               ; preds = %vconcat_length.exit
  %gp_offset_p.i16 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args6, i64 0, i64 0, i32 0, !dbg !173
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args6, i64 0, i64 0, i32 3, !dbg !173
  %overflow_arg_area_p.i17 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args6, i64 0, i64 0, i32 2, !dbg !173
  br label %for.body.i22, !dbg !173

for.body.i22:                                     ; preds = %vaarg.end.i31, %for.body.lr.ph.i18
  %end.03.i = phi i8* [ %call3, %for.body.lr.ph.i18 ], [ %add.ptr.i, %vaarg.end.i31 ]
  %arg.02.i = phi i8* [ %first, %for.body.lr.ph.i18 ], [ %9, %vaarg.end.i31 ]
  %call.i19 = call i64 @strlen(i8* %arg.02.i) #6, !dbg !176
  call void @llvm.dbg.value(metadata !{i64 %call.i19}, i64 0, metadata !177) #2, !dbg !176
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %end.03.i, i8* %arg.02.i, i64 %call.i19, i32 1, i1 false) #2, !dbg !178
  %add.ptr.i = getelementptr inbounds i8* %end.03.i, i64 %call.i19, !dbg !179
  call void @llvm.dbg.value(metadata !{i8* %add.ptr.i}, i64 0, metadata !180) #2, !dbg !179
  %gp_offset.i20 = load i32* %gp_offset_p.i16, align 16, !dbg !173
  %fits_in_gp.i21 = icmp ult i32 %gp_offset.i20, 41, !dbg !173
  br i1 %fits_in_gp.i21, label %vaarg.in_reg.i24, label %vaarg.in_mem.i27, !dbg !173

vaarg.in_reg.i24:                                 ; preds = %for.body.i22
  %reg_save_area.i23 = load i8** %5, align 16, !dbg !173
  %6 = sext i32 %gp_offset.i20 to i64, !dbg !173
  %7 = getelementptr i8* %reg_save_area.i23, i64 %6, !dbg !173
  %8 = add i32 %gp_offset.i20, 8, !dbg !173
  store i32 %8, i32* %gp_offset_p.i16, align 16, !dbg !173
  br label %vaarg.end.i31, !dbg !173

vaarg.in_mem.i27:                                 ; preds = %for.body.i22
  %overflow_arg_area.i25 = load i8** %overflow_arg_area_p.i17, align 8, !dbg !173
  %overflow_arg_area.next.i26 = getelementptr i8* %overflow_arg_area.i25, i64 8, !dbg !173
  store i8* %overflow_arg_area.next.i26, i8** %overflow_arg_area_p.i17, align 8, !dbg !173
  br label %vaarg.end.i31, !dbg !173

vaarg.end.i31:                                    ; preds = %vaarg.in_mem.i27, %vaarg.in_reg.i24
  %vaarg.addr.in.i28 = phi i8* [ %7, %vaarg.in_reg.i24 ], [ %overflow_arg_area.i25, %vaarg.in_mem.i27 ]
  %vaarg.addr.i29 = bitcast i8* %vaarg.addr.in.i28 to i8**, !dbg !173
  %9 = load i8** %vaarg.addr.i29, align 8, !dbg !173
  call void @llvm.dbg.value(metadata !{i8* %9}, i64 0, metadata !181) #2, !dbg !173
  %tobool.i30 = icmp eq i8* %9, null, !dbg !173
  br i1 %tobool.i30, label %vconcat_copy.exit, label %for.body.i22, !dbg !173

vconcat_copy.exit:                                ; preds = %vaarg.end.i31, %vconcat_length.exit
  %end.0.lcssa.i = phi i8* [ %call3, %vconcat_length.exit ], [ %add.ptr.i, %vaarg.end.i31 ]
  store i8 0, i8* %end.0.lcssa.i, align 1, !dbg !182, !tbaa !115
  %tobool = icmp eq i8* %optr, null, !dbg !183
  br i1 %tobool, label %if.end, label %if.then, !dbg !183

if.then:                                          ; preds = %vconcat_copy.exit
  call void @free(i8* %optr) #7, !dbg !184
  br label %if.end, !dbg !184

if.end:                                           ; preds = %vconcat_copy.exit, %if.then
  call void @llvm.va_end(i8* %arraydecay78), !dbg !185
  ret i8* %call3, !dbg !186
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !86, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !31, metadata !41, metadata !48, metadata !56, metadata !65, metadata !78}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"concat_length", metadata !"concat_length", metadata !"", i32 109, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i8*, ...)* @concat_length, null, null, metadata !12, i32 110} ; [ DW_TAG_subprogram ] [line 109] [def] [scope 110] [concat_length]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!10 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!11 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!12 = metadata !{metadata !13, metadata !14, metadata !15}
!13 = metadata !{i32 786689, metadata !4, metadata !"first", metadata !5, i32 16777325, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first] [line 109]
!14 = metadata !{i32 786688, metadata !4, metadata !"length", metadata !5, i32 111, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 111]
!15 = metadata !{i32 786688, metadata !16, metadata !"args", metadata !5, i32 113, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 113]
!16 = metadata !{i32 786443, metadata !1, metadata !4, i32 113, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [va_list] [line 30, size 0, align 0, offset 0] [from __builtin_va_list]
!18 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 113, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 113, size 0, align 0, offset 0] [from ]
!19 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !20, metadata !29, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!20 = metadata !{i32 786454, metadata !1, null, metadata !"__va_list_tag", i32 113, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [__va_list_tag] [line 113, size 0, align 0, offset 0] [from __va_list_tag]
!21 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list_tag", i32 113, i64 192, i64 64, i32 0, i32 0, null, metadata !22, i32 0, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 113, size 192, align 64, offset 0] [from ]
!22 = metadata !{metadata !23, metadata !25, metadata !26, metadata !28}
!23 = metadata !{i32 786445, metadata !1, metadata !21, metadata !"gp_offset", i32 113, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [gp_offset] [line 113, size 32, align 32, offset 0] [from unsigned int]
!24 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!25 = metadata !{i32 786445, metadata !1, metadata !21, metadata !"fp_offset", i32 113, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [fp_offset] [line 113, size 32, align 32, offset 32] [from unsigned int]
!26 = metadata !{i32 786445, metadata !1, metadata !21, metadata !"overflow_arg_area", i32 113, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [overflow_arg_area] [line 113, size 64, align 64, offset 64] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!28 = metadata !{i32 786445, metadata !1, metadata !21, metadata !"reg_save_area", i32 113, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [reg_save_area] [line 113, size 64, align 64, offset 128] [from ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!31 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"concat_copy", metadata !"concat_copy", metadata !"", i32 124, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, ...)* @concat_copy, null, null, metadata !35, i32 125} ; [ DW_TAG_subprogram ] [line 124] [def] [scope 125] [concat_copy]
!32 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{metadata !34, metadata !34, metadata !9}
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!35 = metadata !{metadata !36, metadata !37, metadata !38, metadata !39}
!36 = metadata !{i32 786689, metadata !31, metadata !"dst", metadata !5, i32 16777340, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 124]
!37 = metadata !{i32 786689, metadata !31, metadata !"first", metadata !5, i32 33554556, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first] [line 124]
!38 = metadata !{i32 786688, metadata !31, metadata !"save_dst", metadata !5, i32 126, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [save_dst] [line 126]
!39 = metadata !{i32 786688, metadata !40, metadata !"args", metadata !5, i32 128, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 128]
!40 = metadata !{i32 786443, metadata !1, metadata !31, i32 128, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!41 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"concat_copy2", metadata !"concat_copy2", metadata !"", i32 143, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, ...)* @concat_copy2, null, null, metadata !44, i32 144} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 144] [concat_copy2]
!42 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{metadata !34, metadata !9}
!44 = metadata !{metadata !45, metadata !46}
!45 = metadata !{i32 786689, metadata !41, metadata !"first", metadata !5, i32 16777359, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first] [line 143]
!46 = metadata !{i32 786688, metadata !47, metadata !"args", metadata !5, i32 145, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 145]
!47 = metadata !{i32 786443, metadata !1, metadata !41, i32 145, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!48 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"concat", metadata !"concat", metadata !"", i32 154, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, ...)* @concat, null, null, metadata !49, i32 155} ; [ DW_TAG_subprogram ] [line 154] [def] [scope 155] [concat]
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !54}
!50 = metadata !{i32 786689, metadata !48, metadata !"first", metadata !5, i32 16777370, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first] [line 154]
!51 = metadata !{i32 786688, metadata !48, metadata !"newstr", metadata !5, i32 156, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newstr] [line 156]
!52 = metadata !{i32 786688, metadata !53, metadata !"args", metadata !5, i32 159, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 159]
!53 = metadata !{i32 786443, metadata !1, metadata !48, i32 159, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!54 = metadata !{i32 786688, metadata !55, metadata !"args", metadata !5, i32 165, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 165]
!55 = metadata !{i32 786443, metadata !1, metadata !48, i32 165, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!56 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"reconcat", metadata !"reconcat", metadata !"", i32 191, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, ...)* @reconcat, null, null, metadata !57, i32 192} ; [ DW_TAG_subprogram ] [line 191] [def] [scope 192] [reconcat]
!57 = metadata !{metadata !58, metadata !59, metadata !60, metadata !61, metadata !63}
!58 = metadata !{i32 786689, metadata !56, metadata !"optr", metadata !5, i32 16777407, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [optr] [line 191]
!59 = metadata !{i32 786689, metadata !56, metadata !"first", metadata !5, i32 33554623, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first] [line 191]
!60 = metadata !{i32 786688, metadata !56, metadata !"newstr", metadata !5, i32 193, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newstr] [line 193]
!61 = metadata !{i32 786688, metadata !62, metadata !"args", metadata !5, i32 196, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 196]
!62 = metadata !{i32 786443, metadata !1, metadata !56, i32 196, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!63 = metadata !{i32 786688, metadata !64, metadata !"args", metadata !5, i32 203, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 203]
!64 = metadata !{i32 786443, metadata !1, metadata !56, i32 203, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!65 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"vconcat_copy", metadata !"vconcat_copy", metadata !"", i32 87, metadata !66, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !69, i32 91} ; [ DW_TAG_subprogram ] [line 87] [local] [def] [scope 91] [vconcat_copy]
!66 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{metadata !34, metadata !34, metadata !9, metadata !68}
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __va_list_tag]
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!70 = metadata !{i32 786689, metadata !65, metadata !"dst", metadata !5, i32 16777304, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 88]
!71 = metadata !{i32 786689, metadata !65, metadata !"first", metadata !5, i32 33554521, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first] [line 89]
!72 = metadata !{i32 786689, metadata !65, metadata !"args", metadata !5, i32 50331738, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [args] [line 90]
!73 = metadata !{i32 786688, metadata !65, metadata !"end", metadata !5, i32 92, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 92]
!74 = metadata !{i32 786688, metadata !65, metadata !"arg", metadata !5, i32 93, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 93]
!75 = metadata !{i32 786688, metadata !76, metadata !"length", metadata !5, i32 97, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 97]
!76 = metadata !{i32 786443, metadata !1, metadata !77, i32 96, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!77 = metadata !{i32 786443, metadata !1, metadata !65, i32 95, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!78 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"vconcat_length", metadata !"vconcat_length", metadata !"", i32 72, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !81, i32 75} ; [ DW_TAG_subprogram ] [line 72] [local] [def] [scope 75] [vconcat_length]
!79 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{metadata !8, metadata !9, metadata !68}
!81 = metadata !{metadata !82, metadata !83, metadata !84, metadata !85}
!82 = metadata !{i32 786689, metadata !78, metadata !"first", metadata !5, i32 16777289, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first] [line 73]
!83 = metadata !{i32 786689, metadata !78, metadata !"args", metadata !5, i32 33554506, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [args] [line 74]
!84 = metadata !{i32 786688, metadata !78, metadata !"length", metadata !5, i32 76, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 76]
!85 = metadata !{i32 786688, metadata !78, metadata !"arg", metadata !5, i32 77, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 77]
!86 = metadata !{metadata !87}
!87 = metadata !{i32 786484, i32 0, null, metadata !"libiberty_concat_ptr", metadata !"libiberty_concat_ptr", metadata !"", metadata !5, i32 138, metadata !34, i32 0, i32 1, i8** @libiberty_concat_ptr, null} ; [ DW_TAG_variable ] [libiberty_concat_ptr] [line 138] [def]
!88 = metadata !{i32 109, i32 0, metadata !4, null}
!89 = metadata !{i32 113, i32 0, metadata !16, null}
!90 = metadata !{i32 786689, metadata !78, metadata !"first", metadata !5, i32 16777289, metadata !9, i32 0, metadata !91} ; [ DW_TAG_arg_variable ] [first] [line 73]
!91 = metadata !{i32 115, i32 12, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !16, i32 113, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!93 = metadata !{i32 73, i32 0, metadata !78, metadata !91}
!94 = metadata !{i64 0}
!95 = metadata !{i32 786688, metadata !78, metadata !"length", metadata !5, i32 76, metadata !8, i32 0, metadata !91} ; [ DW_TAG_auto_variable ] [length] [line 76]
!96 = metadata !{i32 76, i32 0, metadata !78, metadata !91}
!97 = metadata !{i32 786688, metadata !78, metadata !"arg", metadata !5, i32 77, metadata !9, i32 0, metadata !91} ; [ DW_TAG_auto_variable ] [arg] [line 77]
!98 = metadata !{i32 79, i32 0, metadata !99, metadata !91}
!99 = metadata !{i32 786443, metadata !1, metadata !78, i32 79, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!100 = metadata !{i32 80, i32 0, metadata !99, metadata !91}
!101 = metadata !{i32 116, i32 0, metadata !16, null}
!102 = metadata !{i32 118, i32 0, metadata !4, null}
!103 = metadata !{i32 124, i32 0, metadata !31, null}
!104 = metadata !{i32 128, i32 0, metadata !40, null}
!105 = metadata !{i32 95, i32 0, metadata !77, metadata !106}
!106 = metadata !{i32 131, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !40, i32 128, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!108 = metadata !{i32 97, i32 0, metadata !76, metadata !106}
!109 = metadata !{i32 786688, metadata !76, metadata !"length", metadata !5, i32 97, metadata !8, i32 0, metadata !106} ; [ DW_TAG_auto_variable ] [length] [line 97]
!110 = metadata !{i32 98, i32 0, metadata !76, metadata !106}
!111 = metadata !{i32 99, i32 0, metadata !76, metadata !106}
!112 = metadata !{i32 786688, metadata !65, metadata !"end", metadata !5, i32 92, metadata !34, i32 0, metadata !106} ; [ DW_TAG_auto_variable ] [end] [line 92]
!113 = metadata !{i32 786688, metadata !65, metadata !"arg", metadata !5, i32 93, metadata !9, i32 0, metadata !106} ; [ DW_TAG_auto_variable ] [arg] [line 93]
!114 = metadata !{i32 101, i32 0, metadata !65, metadata !106}
!115 = metadata !{metadata !"omnipotent char", metadata !116}
!116 = metadata !{metadata !"Simple C/C++ TBAA"}
!117 = metadata !{i32 132, i32 0, metadata !107, null}
!118 = metadata !{i32 133, i32 0, metadata !40, null}
!119 = metadata !{i32 135, i32 0, metadata !31, null}
!120 = metadata !{i32 143, i32 0, metadata !41, null}
!121 = metadata !{i32 145, i32 0, metadata !47, null}
!122 = metadata !{i32 147, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !47, i32 145, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!124 = metadata !{metadata !"any pointer", metadata !115}
!125 = metadata !{i32 95, i32 0, metadata !77, metadata !122}
!126 = metadata !{i32 97, i32 0, metadata !76, metadata !122}
!127 = metadata !{i32 786688, metadata !76, metadata !"length", metadata !5, i32 97, metadata !8, i32 0, metadata !122} ; [ DW_TAG_auto_variable ] [length] [line 97]
!128 = metadata !{i32 98, i32 0, metadata !76, metadata !122}
!129 = metadata !{i32 99, i32 0, metadata !76, metadata !122}
!130 = metadata !{i32 786688, metadata !65, metadata !"end", metadata !5, i32 92, metadata !34, i32 0, metadata !122} ; [ DW_TAG_auto_variable ] [end] [line 92]
!131 = metadata !{i32 786688, metadata !65, metadata !"arg", metadata !5, i32 93, metadata !9, i32 0, metadata !122} ; [ DW_TAG_auto_variable ] [arg] [line 93]
!132 = metadata !{i32 101, i32 0, metadata !65, metadata !122}
!133 = metadata !{i32 148, i32 0, metadata !47, null}
!134 = metadata !{i32 150, i32 0, metadata !41, null}
!135 = metadata !{i32 154, i32 0, metadata !48, null}
!136 = metadata !{i32 159, i32 0, metadata !53, null}
!137 = metadata !{i32 786689, metadata !78, metadata !"first", metadata !5, i32 16777289, metadata !9, i32 0, metadata !138} ; [ DW_TAG_arg_variable ] [first] [line 73]
!138 = metadata !{i32 161, i32 30, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !53, i32 159, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!140 = metadata !{i32 73, i32 0, metadata !78, metadata !138}
!141 = metadata !{i32 786688, metadata !78, metadata !"length", metadata !5, i32 76, metadata !8, i32 0, metadata !138} ; [ DW_TAG_auto_variable ] [length] [line 76]
!142 = metadata !{i32 76, i32 0, metadata !78, metadata !138}
!143 = metadata !{i32 786688, metadata !78, metadata !"arg", metadata !5, i32 77, metadata !9, i32 0, metadata !138} ; [ DW_TAG_auto_variable ] [arg] [line 77]
!144 = metadata !{i32 79, i32 0, metadata !99, metadata !138}
!145 = metadata !{i32 80, i32 0, metadata !99, metadata !138}
!146 = metadata !{i32 162, i32 0, metadata !53, null}
!147 = metadata !{i32 165, i32 0, metadata !55, null}
!148 = metadata !{i32 95, i32 0, metadata !77, metadata !149}
!149 = metadata !{i32 167, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !55, i32 165, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!151 = metadata !{i32 97, i32 0, metadata !76, metadata !149}
!152 = metadata !{i32 786688, metadata !76, metadata !"length", metadata !5, i32 97, metadata !8, i32 0, metadata !149} ; [ DW_TAG_auto_variable ] [length] [line 97]
!153 = metadata !{i32 98, i32 0, metadata !76, metadata !149}
!154 = metadata !{i32 99, i32 0, metadata !76, metadata !149}
!155 = metadata !{i32 786688, metadata !65, metadata !"end", metadata !5, i32 92, metadata !34, i32 0, metadata !149} ; [ DW_TAG_auto_variable ] [end] [line 92]
!156 = metadata !{i32 786688, metadata !65, metadata !"arg", metadata !5, i32 93, metadata !9, i32 0, metadata !149} ; [ DW_TAG_auto_variable ] [arg] [line 93]
!157 = metadata !{i32 101, i32 0, metadata !65, metadata !149}
!158 = metadata !{i32 168, i32 0, metadata !55, null}
!159 = metadata !{i32 170, i32 0, metadata !48, null}
!160 = metadata !{i32 191, i32 0, metadata !56, null}
!161 = metadata !{i32 196, i32 0, metadata !62, null}
!162 = metadata !{i32 786689, metadata !78, metadata !"first", metadata !5, i32 16777289, metadata !9, i32 0, metadata !163} ; [ DW_TAG_arg_variable ] [first] [line 73]
!163 = metadata !{i32 199, i32 30, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !62, i32 196, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!165 = metadata !{i32 73, i32 0, metadata !78, metadata !163}
!166 = metadata !{i32 786688, metadata !78, metadata !"length", metadata !5, i32 76, metadata !8, i32 0, metadata !163} ; [ DW_TAG_auto_variable ] [length] [line 76]
!167 = metadata !{i32 76, i32 0, metadata !78, metadata !163}
!168 = metadata !{i32 786688, metadata !78, metadata !"arg", metadata !5, i32 77, metadata !9, i32 0, metadata !163} ; [ DW_TAG_auto_variable ] [arg] [line 77]
!169 = metadata !{i32 79, i32 0, metadata !99, metadata !163}
!170 = metadata !{i32 80, i32 0, metadata !99, metadata !163}
!171 = metadata !{i32 200, i32 0, metadata !62, null}
!172 = metadata !{i32 203, i32 0, metadata !64, null}
!173 = metadata !{i32 95, i32 0, metadata !77, metadata !174}
!174 = metadata !{i32 206, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !64, i32 203, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/concat.c]
!176 = metadata !{i32 97, i32 0, metadata !76, metadata !174}
!177 = metadata !{i32 786688, metadata !76, metadata !"length", metadata !5, i32 97, metadata !8, i32 0, metadata !174} ; [ DW_TAG_auto_variable ] [length] [line 97]
!178 = metadata !{i32 98, i32 0, metadata !76, metadata !174}
!179 = metadata !{i32 99, i32 0, metadata !76, metadata !174}
!180 = metadata !{i32 786688, metadata !65, metadata !"end", metadata !5, i32 92, metadata !34, i32 0, metadata !174} ; [ DW_TAG_auto_variable ] [end] [line 92]
!181 = metadata !{i32 786688, metadata !65, metadata !"arg", metadata !5, i32 93, metadata !9, i32 0, metadata !174} ; [ DW_TAG_auto_variable ] [arg] [line 93]
!182 = metadata !{i32 101, i32 0, metadata !65, metadata !174}
!183 = metadata !{i32 207, i32 0, metadata !175, null}
!184 = metadata !{i32 208, i32 0, metadata !175, null}
!185 = metadata !{i32 209, i32 0, metadata !64, null}
!186 = metadata !{i32 211, i32 0, metadata !56, null}
