; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/ffscanf.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str3 = private unnamed_addr constant [28 x i8] c"unknown ffscanf format '%c'\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @ffscanf(%struct._IO_FILE* nocapture %in, i8* %fmt, ...) #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca [4096 x i8], align 16
  %dval = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %in}, i64 0, metadata !83), !dbg !114
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !84), !dbg !114
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !85), !dbg !115
  %0 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0, !dbg !116
  call void @llvm.lifetime.start(i64 4096, i8* %0) #2, !dbg !116
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %buf}, metadata !99), !dbg !116
  call void @llvm.dbg.declare(metadata !{double* %dval}, metadata !105), !dbg !117
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !118
  call void @llvm.va_start(i8* %arraydecay1), !dbg !118
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !98), !dbg !119
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !121
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !121
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !121
  br label %for.cond, !dbg !119

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i8* [ %fmt, %entry ], [ %incdec.ptr69, %for.inc ]
  call void @llvm.dbg.value(metadata !{i8* %storemerge}, i64 0, metadata !98), !dbg !119
  call void @llvm.dbg.value(metadata !{i8* %storemerge}, i64 0, metadata !125), !dbg !127
  call void @llvm.dbg.value(metadata !{i8* %storemerge}, i64 0, metadata !98), !dbg !119
  call void @llvm.dbg.value(metadata !{i8* %storemerge}, i64 0, metadata !98), !dbg !128
  call void @llvm.dbg.value(metadata !{i8* %storemerge}, i64 0, metadata !98), !dbg !119
  %2 = load i8* %storemerge, align 1, !dbg !119, !tbaa !129
  switch i8 %2, label %if.else [
    i8 0, label %for.end70
    i8 37, label %if.then
  ], !dbg !119

if.then:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %storemerge, i64 1, !dbg !131
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !98), !dbg !131
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !125), !dbg !127
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !98), !dbg !119
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !98), !dbg !128
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !98), !dbg !119
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !132) #2, !dbg !133
  %3 = load i8* %incdec.ptr, align 1, !dbg !134, !tbaa !129
  %idxprom4.i = sext i8 %3 to i64, !dbg !134
  %call.i = call i16** @__ctype_b_loc() #6, !dbg !134
  %4 = load i16** %call.i, align 8, !dbg !134, !tbaa !135
  %arrayidx5.i = getelementptr inbounds i16* %4, i64 %idxprom4.i, !dbg !134
  %5 = load i16* %arrayidx5.i, align 2, !dbg !134, !tbaa !136
  %and6.i = and i16 %5, 2048, !dbg !134
  %tobool7.i = icmp eq i16 %and6.i, 0, !dbg !134
  br i1 %tobool7.i, label %for.end, label %while.body.i, !dbg !134

while.body.i:                                     ; preds = %if.then, %while.body.i
  %6 = phi i8 [ %8, %while.body.i ], [ %3, %if.then ], !dbg !134
  %7 = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %incdec.ptr, %if.then ]
  %fld.08.i = phi i32 [ %add.i, %while.body.i ], [ 0, %if.then ]
  %mul.i = mul nsw i32 %fld.08.i, 10, !dbg !134
  %incdec.ptr.i = getelementptr inbounds i8* %7, i64 1, !dbg !134
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !98), !dbg !134
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !125), !dbg !127
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !98), !dbg !119
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !98), !dbg !128
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !98), !dbg !119
  %conv2.i = sext i8 %6 to i32, !dbg !134
  %sub.i = add i32 %mul.i, -48, !dbg !134
  %add.i = add i32 %sub.i, %conv2.i, !dbg !134
  call void @llvm.dbg.value(metadata !{i32 %add.i}, i64 0, metadata !132) #2, !dbg !134
  %8 = load i8* %incdec.ptr.i, align 1, !dbg !134, !tbaa !129
  %idxprom.i = sext i8 %8 to i64, !dbg !134
  %arrayidx.i = getelementptr inbounds i16* %4, i64 %idxprom.i, !dbg !134
  %9 = load i16* %arrayidx.i, align 2, !dbg !134, !tbaa !136
  %and.i = and i16 %9, 2048, !dbg !134
  %tobool.i = icmp eq i16 %and.i, 0, !dbg !134
  br i1 %tobool.i, label %getfld.exit, label %while.body.i, !dbg !134

getfld.exit:                                      ; preds = %while.body.i
  call void @llvm.dbg.value(metadata !{i32 %fld.0.lcssa.i85}, i64 0, metadata !104), !dbg !126
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !103), !dbg !137
  %cmp481 = icmp sgt i32 %add.i, 0, !dbg !137
  br i1 %cmp481, label %for.body6, label %for.end, !dbg !137

for.body6:                                        ; preds = %getfld.exit, %for.body6
  %i.082 = phi i32 [ %i.0.inc, %for.body6 ], [ 0, %getfld.exit ]
  %call7 = call i32 @fgetc(%struct._IO_FILE* %in) #7, !dbg !139
  %conv8 = trunc i32 %call7 to i8, !dbg !139
  %idxprom = sext i32 %i.082 to i64, !dbg !139
  %arrayidx = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %idxprom, !dbg !139
  store i8 %conv8, i8* %arrayidx, align 1, !dbg !139, !tbaa !129
  %sext.mask = and i32 %call7, 255, !dbg !141
  %not.cmp12 = icmp ne i32 %sext.mask, 10, !dbg !141
  %inc = zext i1 %not.cmp12 to i32, !dbg !141
  %i.0.inc = add nsw i32 %inc, %i.082, !dbg !141
  %cmp4 = icmp slt i32 %i.0.inc, %add.i, !dbg !137
  br i1 %cmp4, label %for.body6, label %for.end, !dbg !137

for.end:                                          ; preds = %if.then, %for.body6, %getfld.exit
  %fld.0.lcssa.i85 = phi i32 [ %add.i, %getfld.exit ], [ %add.i, %for.body6 ], [ 0, %if.then ]
  %incdec.ptr.i8084 = phi i8* [ %incdec.ptr.i, %getfld.exit ], [ %incdec.ptr.i, %for.body6 ], [ %incdec.ptr, %if.then ]
  %idxprom15 = sext i32 %fld.0.lcssa.i85 to i64, !dbg !142
  %arrayidx16 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %idxprom15, !dbg !142
  store i8 0, i8* %arrayidx16, align 1, !dbg !142, !tbaa !129
  %10 = load i8* %incdec.ptr.i8084, align 1, !dbg !128, !tbaa !129
  %conv17 = sext i8 %10 to i32, !dbg !128
  switch i32 %conv17, label %for.inc [
    i32 100, label %sw.bb
    i32 102, label %sw.bb21
    i32 70, label %sw.bb36
    i32 114, label %sw.bb51
  ], !dbg !128

sw.bb:                                            ; preds = %for.end
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !121
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !121
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !121

vaarg.in_reg:                                     ; preds = %sw.bb
  %reg_save_area = load i8** %1, align 16, !dbg !121
  %11 = sext i32 %gp_offset to i64, !dbg !121
  %12 = getelementptr i8* %reg_save_area, i64 %11, !dbg !121
  %13 = add i32 %gp_offset, 8, !dbg !121
  store i32 %13, i32* %gp_offset_p, align 16, !dbg !121
  br label %vaarg.end, !dbg !121

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !121
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !121
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !121
  br label %vaarg.end, !dbg !121

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %12, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32**, !dbg !121
  %14 = load i32** %vaarg.addr, align 8, !dbg !121
  %call20 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32* %14) #7, !dbg !121
  br label %for.inc, !dbg !143

sw.bb21:                                          ; preds = %for.end
  %gp_offset25 = load i32* %gp_offset_p, align 16, !dbg !144
  %fits_in_gp26 = icmp ult i32 %gp_offset25, 41, !dbg !144
  br i1 %fits_in_gp26, label %vaarg.in_reg27, label %vaarg.in_mem29, !dbg !144

vaarg.in_reg27:                                   ; preds = %sw.bb21
  %reg_save_area28 = load i8** %1, align 16, !dbg !144
  %15 = sext i32 %gp_offset25 to i64, !dbg !144
  %16 = getelementptr i8* %reg_save_area28, i64 %15, !dbg !144
  %17 = add i32 %gp_offset25, 8, !dbg !144
  store i32 %17, i32* %gp_offset_p, align 16, !dbg !144
  br label %vaarg.end33, !dbg !144

vaarg.in_mem29:                                   ; preds = %sw.bb21
  %overflow_arg_area31 = load i8** %overflow_arg_area_p, align 8, !dbg !144
  %overflow_arg_area.next32 = getelementptr i8* %overflow_arg_area31, i64 8, !dbg !144
  store i8* %overflow_arg_area.next32, i8** %overflow_arg_area_p, align 8, !dbg !144
  br label %vaarg.end33, !dbg !144

vaarg.end33:                                      ; preds = %vaarg.in_mem29, %vaarg.in_reg27
  %vaarg.addr34.in = phi i8* [ %16, %vaarg.in_reg27 ], [ %overflow_arg_area31, %vaarg.in_mem29 ]
  %vaarg.addr34 = bitcast i8* %vaarg.addr34.in to float**, !dbg !144
  %18 = load float** %vaarg.addr34, align 8, !dbg !144
  %call35 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), float* %18) #7, !dbg !144
  br label %for.inc, !dbg !145

sw.bb36:                                          ; preds = %for.end
  %gp_offset40 = load i32* %gp_offset_p, align 16, !dbg !146
  %fits_in_gp41 = icmp ult i32 %gp_offset40, 41, !dbg !146
  br i1 %fits_in_gp41, label %vaarg.in_reg42, label %vaarg.in_mem44, !dbg !146

vaarg.in_reg42:                                   ; preds = %sw.bb36
  %reg_save_area43 = load i8** %1, align 16, !dbg !146
  %19 = sext i32 %gp_offset40 to i64, !dbg !146
  %20 = getelementptr i8* %reg_save_area43, i64 %19, !dbg !146
  %21 = add i32 %gp_offset40, 8, !dbg !146
  store i32 %21, i32* %gp_offset_p, align 16, !dbg !146
  br label %vaarg.end48, !dbg !146

vaarg.in_mem44:                                   ; preds = %sw.bb36
  %overflow_arg_area46 = load i8** %overflow_arg_area_p, align 8, !dbg !146
  %overflow_arg_area.next47 = getelementptr i8* %overflow_arg_area46, i64 8, !dbg !146
  store i8* %overflow_arg_area.next47, i8** %overflow_arg_area_p, align 8, !dbg !146
  br label %vaarg.end48, !dbg !146

vaarg.end48:                                      ; preds = %vaarg.in_mem44, %vaarg.in_reg42
  %vaarg.addr49.in = phi i8* [ %20, %vaarg.in_reg42 ], [ %overflow_arg_area46, %vaarg.in_mem44 ]
  %vaarg.addr49 = bitcast i8* %vaarg.addr49.in to double**, !dbg !146
  %22 = load double** %vaarg.addr49, align 8, !dbg !146
  %call50 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double* %22) #7, !dbg !146
  br label %for.inc, !dbg !147

sw.bb51:                                          ; preds = %for.end
  %call53 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double* %dval) #7, !dbg !148
  call void @llvm.dbg.value(metadata !{double* %dval}, i64 0, metadata !105), !dbg !149
  %23 = load double* %dval, align 8, !dbg !149, !tbaa !150
  %conv54 = fptrunc double %23 to float, !dbg !149
  %gp_offset57 = load i32* %gp_offset_p, align 16, !dbg !149
  %fits_in_gp58 = icmp ult i32 %gp_offset57, 41, !dbg !149
  br i1 %fits_in_gp58, label %vaarg.in_reg59, label %vaarg.in_mem61, !dbg !149

vaarg.in_reg59:                                   ; preds = %sw.bb51
  %reg_save_area60 = load i8** %1, align 16, !dbg !149
  %24 = sext i32 %gp_offset57 to i64, !dbg !149
  %25 = getelementptr i8* %reg_save_area60, i64 %24, !dbg !149
  %26 = add i32 %gp_offset57, 8, !dbg !149
  store i32 %26, i32* %gp_offset_p, align 16, !dbg !149
  br label %vaarg.end65, !dbg !149

vaarg.in_mem61:                                   ; preds = %sw.bb51
  %overflow_arg_area63 = load i8** %overflow_arg_area_p, align 8, !dbg !149
  %overflow_arg_area.next64 = getelementptr i8* %overflow_arg_area63, i64 8, !dbg !149
  store i8* %overflow_arg_area.next64, i8** %overflow_arg_area_p, align 8, !dbg !149
  br label %vaarg.end65, !dbg !149

vaarg.end65:                                      ; preds = %vaarg.in_mem61, %vaarg.in_reg59
  %vaarg.addr66.in = phi i8* [ %25, %vaarg.in_reg59 ], [ %overflow_arg_area63, %vaarg.in_mem61 ]
  %vaarg.addr66 = bitcast i8* %vaarg.addr66.in to float**, !dbg !149
  %27 = load float** %vaarg.addr66, align 8, !dbg !149
  store float %conv54, float* %27, align 4, !dbg !149, !tbaa !151
  br label %for.inc, !dbg !152

if.else:                                          ; preds = %for.cond
  %conv = sext i8 %2 to i32, !dbg !153
  %add = add nsw i32 %conv, 1, !dbg !154
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str3, i64 0, i64 0), i32 %add) #7, !dbg !154
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.end, %vaarg.end65, %vaarg.end48, %vaarg.end33, %vaarg.end
  %incdec.ptr.i79 = phi i8* [ %storemerge, %if.else ], [ %incdec.ptr.i8084, %for.end ], [ %incdec.ptr.i8084, %vaarg.end65 ], [ %incdec.ptr.i8084, %vaarg.end48 ], [ %incdec.ptr.i8084, %vaarg.end33 ], [ %incdec.ptr.i8084, %vaarg.end ]
  %incdec.ptr69 = getelementptr inbounds i8* %incdec.ptr.i79, i64 1, !dbg !119
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr69}, i64 0, metadata !98), !dbg !119
  br label %for.cond, !dbg !119

for.end70:                                        ; preds = %for.cond
  call void @llvm.va_end(i8* %arraydecay1), !dbg !155
  call void @llvm.lifetime.end(i64 4096, i8* %0) #2, !dbg !156
  ret void, !dbg !156
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ffscanf.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/ffscanf.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!19 = metadata !{metadata !20, metadata !107}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"ffscanf", metadata !"ffscanf", metadata !"", i32 48, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, ...)* @ffscanf, null, null, metadata !82, i32 49} ; [ DW_TAG_subprogram ] [line 48] [def] [scope 49] [ffscanf]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ffscanf.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !24, metadata !32}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!25 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!27 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !31, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !52, metadata !53, metadata !54, metadata !55, metadata !58, metadata !60, metadata !62, metadata !66, metadata !68, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !77, metadata !78}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!33 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!34 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!36 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!37 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!38 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!39 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!40 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!41 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!42 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!43 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!44 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !45} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!46 = metadata !{i32 786451, metadata !27, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !47, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!47 = metadata !{metadata !48, metadata !49, metadata !51}
!48 = metadata !{i32 786445, metadata !27, metadata !46, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786445, metadata !27, metadata !46, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !50} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!51 = metadata !{i32 786445, metadata !27, metadata !46, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!52 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !50} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!53 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!54 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !30} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!55 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !56} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!56 = metadata !{i32 786454, metadata !27, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!57 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!58 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !59} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!59 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!60 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !61} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!61 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!62 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !63} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !33, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!66 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !67} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!68 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !69} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!69 = metadata !{i32 786454, metadata !27, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!70 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!71 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!72 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!73 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!74 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !75} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!75 = metadata !{i32 786454, metadata !27, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!76 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!77 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!78 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !79} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!79 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !33, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !98, metadata !99, metadata !103, metadata !104, metadata !105}
!83 = metadata !{i32 786689, metadata !20, metadata !"in", metadata !21, i32 16777264, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 48]
!84 = metadata !{i32 786689, metadata !20, metadata !"fmt", metadata !21, i32 33554480, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 48]
!85 = metadata !{i32 786688, metadata !20, metadata !"ap", metadata !21, i32 50, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 50]
!86 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!87 = metadata !{i32 786454, metadata !1, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!88 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 50, size 0, align 0, offset 0] [from ]
!89 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !90, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!90 = metadata !{i32 786454, metadata !1, null, metadata !"__va_list_tag", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [__va_list_tag] [line 50, size 0, align 0, offset 0] [from __va_list_tag]
!91 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list_tag", i32 50, i64 192, i64 64, i32 0, i32 0, null, metadata !92, i32 0, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 50, size 192, align 64, offset 0] [from ]
!92 = metadata !{metadata !93, metadata !95, metadata !96, metadata !97}
!93 = metadata !{i32 786445, metadata !1, metadata !91, metadata !"gp_offset", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !94} ; [ DW_TAG_member ] [gp_offset] [line 50, size 32, align 32, offset 0] [from unsigned int]
!94 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!95 = metadata !{i32 786445, metadata !1, metadata !91, metadata !"fp_offset", i32 50, i64 32, i64 32, i64 32, i32 0, metadata !94} ; [ DW_TAG_member ] [fp_offset] [line 50, size 32, align 32, offset 32] [from unsigned int]
!96 = metadata !{i32 786445, metadata !1, metadata !91, metadata !"overflow_arg_area", i32 50, i64 64, i64 64, i64 64, i32 0, metadata !67} ; [ DW_TAG_member ] [overflow_arg_area] [line 50, size 64, align 64, offset 64] [from ]
!97 = metadata !{i32 786445, metadata !1, metadata !91, metadata !"reg_save_area", i32 50, i64 64, i64 64, i64 128, i32 0, metadata !67} ; [ DW_TAG_member ] [reg_save_area] [line 50, size 64, align 64, offset 128] [from ]
!98 = metadata !{i32 786688, metadata !20, metadata !"p", metadata !21, i32 51, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 51]
!99 = metadata !{i32 786688, metadata !20, metadata !"buf", metadata !21, i32 52, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 52]
!100 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !33, metadata !101, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!101 = metadata !{metadata !102}
!102 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!103 = metadata !{i32 786688, metadata !20, metadata !"i", metadata !21, i32 53, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 53]
!104 = metadata !{i32 786688, metadata !20, metadata !"fld", metadata !21, i32 53, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fld] [line 53]
!105 = metadata !{i32 786688, metadata !20, metadata !"dval", metadata !21, i32 54, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dval] [line 54]
!106 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!107 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"getfld", metadata !"getfld", metadata !"", i32 39, metadata !108, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !111, i32 40} ; [ DW_TAG_subprogram ] [line 39] [local] [def] [scope 40] [getfld]
!108 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{metadata !30, metadata !110}
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!111 = metadata !{metadata !112, metadata !113}
!112 = metadata !{i32 786689, metadata !107, metadata !"p", metadata !21, i32 16777255, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 39]
!113 = metadata !{i32 786688, metadata !107, metadata !"fld", metadata !21, i32 41, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fld] [line 41]
!114 = metadata !{i32 48, i32 0, metadata !20, null}
!115 = metadata !{i32 50, i32 0, metadata !20, null}
!116 = metadata !{i32 52, i32 0, metadata !20, null}
!117 = metadata !{i32 54, i32 0, metadata !20, null}
!118 = metadata !{i32 56, i32 0, metadata !20, null}
!119 = metadata !{i32 57, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !20, i32 57, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ffscanf.c]
!121 = metadata !{i32 68, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !123, i32 66, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ffscanf.c]
!123 = metadata !{i32 786443, metadata !1, metadata !124, i32 58, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ffscanf.c]
!124 = metadata !{i32 786443, metadata !1, metadata !120, i32 57, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ffscanf.c]
!125 = metadata !{i32 786689, metadata !107, metadata !"p", metadata !21, i32 16777255, metadata !110, i32 0, metadata !126} ; [ DW_TAG_arg_variable ] [p] [line 39]
!126 = metadata !{i32 60, i32 0, metadata !123, null}
!127 = metadata !{i32 39, i32 0, metadata !107, metadata !126}
!128 = metadata !{i32 66, i32 0, metadata !123, null}
!129 = metadata !{metadata !"omnipotent char", metadata !130}
!130 = metadata !{metadata !"Simple C/C++ TBAA"}
!131 = metadata !{i32 59, i32 0, metadata !123, null}
!132 = metadata !{i32 786688, metadata !107, metadata !"fld", metadata !21, i32 41, metadata !30, i32 0, metadata !126} ; [ DW_TAG_auto_variable ] [fld] [line 41]
!133 = metadata !{i32 43, i32 0, metadata !107, metadata !126}
!134 = metadata !{i32 44, i32 0, metadata !107, metadata !126}
!135 = metadata !{metadata !"any pointer", metadata !129}
!136 = metadata !{metadata !"short", metadata !129}
!137 = metadata !{i32 61, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !123, i32 61, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ffscanf.c]
!139 = metadata !{i32 62, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !138, i32 61, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ffscanf.c]
!141 = metadata !{i32 63, i32 0, metadata !140, null}
!142 = metadata !{i32 65, i32 0, metadata !123, null}
!143 = metadata !{i32 69, i32 0, metadata !122, null}
!144 = metadata !{i32 71, i32 0, metadata !122, null}
!145 = metadata !{i32 72, i32 0, metadata !122, null}
!146 = metadata !{i32 74, i32 0, metadata !122, null}
!147 = metadata !{i32 75, i32 0, metadata !122, null}
!148 = metadata !{i32 77, i32 0, metadata !122, null}
!149 = metadata !{i32 78, i32 0, metadata !122, null}
!150 = metadata !{metadata !"double", metadata !129}
!151 = metadata !{metadata !"float", metadata !129}
!152 = metadata !{i32 79, i32 0, metadata !122, null}
!153 = metadata !{i32 58, i32 0, metadata !124, null} ; [ DW_TAG_imported_module ]
!154 = metadata !{i32 85, i32 0, metadata !124, null}
!155 = metadata !{i32 87, i32 0, metadata !20, null}
!156 = metadata !{i32 88, i32 0, metadata !20, null}
