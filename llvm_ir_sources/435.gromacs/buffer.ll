; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/buffer.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"error: (%s) data: 0x%.8x, expected: 0x%.8x\0A\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @mask(i32 %i) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !10), !dbg !94
  %and = and i32 %i, 255, !dbg !95
  %add = shl i32 %i, 8, !dbg !95
  %and1 = add i32 %add, 256, !dbg !95
  %shl = and i32 %and1, 65280, !dbg !95
  %add2 = shl i32 %i, 16, !dbg !95
  %and3 = add i32 %add2, 131072, !dbg !95
  %shl4 = and i32 %and3, 16711680, !dbg !95
  %add6 = shl i32 %i, 24, !dbg !95
  %shl8 = add i32 %add6, 50331648, !dbg !95
  %or = or i32 %shl8, %and, !dbg !95
  %or5 = or i32 %or, %shl, !dbg !95
  %or9 = or i32 %or5, %shl4, !dbg !95
  ret i32 %or9, !dbg !95
}

; Function Attrs: nounwind optsize uwtable
define void @clear_buff(i32* nocapture %data, i32 %items) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %data}, i64 0, metadata !16), !dbg !96
  tail call void @llvm.dbg.value(metadata !{i32 %items}, i64 0, metadata !17), !dbg !96
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !18), !dbg !97
  %cmp3 = icmp sgt i32 %items, 0, !dbg !97
  br i1 %cmp3, label %for.body.lr.ph, label %for.end, !dbg !97

for.body.lr.ph:                                   ; preds = %entry
  %data5 = bitcast i32* %data to i8*
  %0 = add i32 %items, -1, !dbg !97
  %1 = zext i32 %0 to i64
  %2 = shl nuw nsw i64 %1, 2, !dbg !97
  %3 = add i64 %2, 4, !dbg !97
  call void @llvm.memset.p0i8.i64(i8* %data5, i8 0, i64 %3, i32 4, i1 false), !dbg !97
  br label %for.end, !dbg !97

for.end:                                          ; preds = %for.body.lr.ph, %entry
  ret void, !dbg !99
}

; Function Attrs: nounwind optsize uwtable
define void @fill_buff(i32* nocapture %data, i32 %items) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %data}, i64 0, metadata !21), !dbg !100
  tail call void @llvm.dbg.value(metadata !{i32 %items}, i64 0, metadata !22), !dbg !100
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !23), !dbg !101
  %cmp4 = icmp sgt i32 %items, 0, !dbg !101
  br i1 %cmp4, label %for.body, label %for.end, !dbg !101

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  tail call void @llvm.dbg.value(metadata !103, i64 0, metadata !104), !dbg !105
  %0 = trunc i64 %indvars.iv to i32, !dbg !106
  %and.i = and i32 %0, 255, !dbg !106
  %add.i = shl i32 %0, 8, !dbg !106
  %and1.i = add i32 %add.i, 256, !dbg !106
  %shl.i = and i32 %and1.i, 65280, !dbg !106
  %add2.i = shl i32 %0, 16, !dbg !106
  %and3.i = add i32 %add2.i, 131072, !dbg !106
  %shl4.i = and i32 %and3.i, 16711680, !dbg !106
  %add6.i = shl i32 %0, 24, !dbg !106
  %shl8.i = add i32 %add6.i, 50331648, !dbg !106
  %or.i = or i32 %shl8.i, %and.i, !dbg !106
  %or5.i = or i32 %or.i, %shl.i, !dbg !106
  %or9.i = or i32 %or5.i, %shl4.i, !dbg !106
  %arrayidx = getelementptr inbounds i32* %data, i64 %indvars.iv, !dbg !101
  store i32 %or9.i, i32* %arrayidx, align 4, !dbg !101, !tbaa !107
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !101
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !101
  %exitcond = icmp eq i32 %lftr.wideiv, %items, !dbg !101
  br i1 %exitcond, label %for.end, label %for.body, !dbg !101

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !110
}

; Function Attrs: nounwind optsize uwtable
define i32 @check_buff(%struct._IO_FILE* %fp, i8* %title, i32* nocapture %data, i32 %items, i32 %verbose) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !85), !dbg !111
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !86), !dbg !111
  tail call void @llvm.dbg.value(metadata !{i32* %data}, i64 0, metadata !87), !dbg !111
  tail call void @llvm.dbg.value(metadata !{i32 %items}, i64 0, metadata !88), !dbg !111
  tail call void @llvm.dbg.value(metadata !{i32 %verbose}, i64 0, metadata !89), !dbg !111
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !112
  %tobool = icmp eq i32 %verbose, 0, !dbg !113
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !90), !dbg !114
  %cmp48 = icmp sgt i32 %items, 0, !dbg !117
  br i1 %tobool, label %for.cond.preheader, label %for.cond4.preheader, !dbg !113

for.cond4.preheader:                              ; preds = %entry
  br i1 %cmp48, label %for.body6.lr.ph, label %if.end21, !dbg !114

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %tobool12 = icmp eq %struct._IO_FILE* %fp, null, !dbg !119
  br label %for.body6, !dbg !114

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp48, label %for.body, label %if.end21, !dbg !117

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %errs.049 = phi i32 [ %errs.0.inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %data, i64 %indvars.iv, !dbg !122
  %0 = load i32* %arrayidx, align 4, !dbg !122, !tbaa !107
  tail call void @llvm.dbg.value(metadata !103, i64 0, metadata !124), !dbg !125
  %1 = trunc i64 %indvars.iv to i32, !dbg !126
  %and.i = and i32 %1, 255, !dbg !126
  %add.i = shl i32 %1, 8, !dbg !126
  %and1.i = add i32 %add.i, 256, !dbg !126
  %shl.i = and i32 %and1.i, 65280, !dbg !126
  %add2.i = shl i32 %1, 16, !dbg !126
  %and3.i = add i32 %add2.i, 131072, !dbg !126
  %shl4.i = and i32 %and3.i, 16711680, !dbg !126
  %add6.i = shl i32 %1, 24, !dbg !126
  %shl8.i = add i32 %add6.i, 50331648, !dbg !126
  %or.i = or i32 %shl8.i, %and.i, !dbg !126
  %or5.i = or i32 %or.i, %shl.i, !dbg !126
  %or9.i = or i32 %or5.i, %shl4.i, !dbg !126
  %not.cmp1 = icmp ne i32 %0, %or9.i, !dbg !122
  %inc = zext i1 %not.cmp1 to i32, !dbg !122
  %errs.0.inc = add nsw i32 %inc, %errs.049, !dbg !122
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !117
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !117
  %exitcond = icmp eq i32 %lftr.wideiv, %items, !dbg !117
  br i1 %exitcond, label %if.end21, label %for.body, !dbg !117

for.body6:                                        ; preds = %for.inc18, %for.body6.lr.ph
  %indvars.iv56 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next57, %for.inc18 ]
  %errs.253 = phi i32 [ 0, %for.body6.lr.ph ], [ %errs.3, %for.inc18 ]
  %arrayidx8 = getelementptr inbounds i32* %data, i64 %indvars.iv56, !dbg !127
  %2 = load i32* %arrayidx8, align 4, !dbg !127, !tbaa !107
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !92), !dbg !127
  tail call void @llvm.dbg.value(metadata !103, i64 0, metadata !128), !dbg !130
  %3 = trunc i64 %indvars.iv56 to i32, !dbg !131
  %and.i36 = and i32 %3, 255, !dbg !131
  %add.i37 = shl i32 %3, 8, !dbg !131
  %and1.i38 = add i32 %add.i37, 256, !dbg !131
  %shl.i39 = and i32 %and1.i38, 65280, !dbg !131
  %add2.i40 = shl i32 %3, 16, !dbg !131
  %and3.i41 = add i32 %add2.i40, 131072, !dbg !131
  %shl4.i42 = and i32 %and3.i41, 16711680, !dbg !131
  %add6.i43 = shl i32 %3, 24, !dbg !131
  %shl8.i44 = add i32 %add6.i43, 50331648, !dbg !131
  %or.i45 = or i32 %shl8.i44, %and.i36, !dbg !131
  %or5.i46 = or i32 %or.i45, %shl.i39, !dbg !131
  %or9.i47 = or i32 %or5.i46, %shl4.i42, !dbg !131
  tail call void @llvm.dbg.value(metadata !{i32 %or9.i47}, i64 0, metadata !93), !dbg !129
  %cmp10 = icmp eq i32 %2, %or9.i47, !dbg !132
  br i1 %cmp10, label %for.inc18, label %if.then11, !dbg !132

if.then11:                                        ; preds = %for.body6
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !119

if.then13:                                        ; preds = %if.then11
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), i8* %title, i32 %2, i32 %or9.i47) #5, !dbg !133
  br label %if.end15, !dbg !133

if.end15:                                         ; preds = %if.then11, %if.then13
  %inc16 = add nsw i32 %errs.253, 1, !dbg !134
  tail call void @llvm.dbg.value(metadata !{i32 %inc16}, i64 0, metadata !91), !dbg !134
  br label %for.inc18, !dbg !135

for.inc18:                                        ; preds = %for.body6, %if.end15
  %errs.3 = phi i32 [ %inc16, %if.end15 ], [ %errs.253, %for.body6 ]
  %indvars.iv.next57 = add i64 %indvars.iv56, 1, !dbg !114
  %lftr.wideiv58 = trunc i64 %indvars.iv.next57 to i32, !dbg !114
  %exitcond59 = icmp eq i32 %lftr.wideiv58, %items, !dbg !114
  br i1 %exitcond59, label %if.end21, label %for.body6, !dbg !114

if.end21:                                         ; preds = %for.cond4.preheader, %for.inc18, %for.cond.preheader, %for.body
  %errs.4 = phi i32 [ 0, %for.cond.preheader ], [ %errs.0.inc, %for.body ], [ 0, %for.cond4.preheader ], [ %errs.3, %for.inc18 ]
  ret i32 %errs.4, !dbg !136
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/buffer.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/buffer.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !19, metadata !24}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mask", metadata !"mask", metadata !"", i32 37, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @mask, null, null, metadata !9, i32 38} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 38] [mask]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/buffer.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786689, metadata !4, metadata !"i", metadata !5, i32 16777253, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 37]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"clear_buff", metadata !"clear_buff", metadata !"", i32 54, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32)* @clear_buff, null, null, metadata !15, i32 55} ; [ DW_TAG_subprogram ] [line 54] [def] [scope 55] [clear_buff]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null, metadata !14, metadata !8}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!15 = metadata !{metadata !16, metadata !17, metadata !18}
!16 = metadata !{i32 786689, metadata !11, metadata !"data", metadata !5, i32 16777270, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 54]
!17 = metadata !{i32 786689, metadata !11, metadata !"items", metadata !5, i32 33554486, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [items] [line 54]
!18 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 56, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 56]
!19 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fill_buff", metadata !"fill_buff", metadata !"", i32 63, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32)* @fill_buff, null, null, metadata !20, i32 64} ; [ DW_TAG_subprogram ] [line 63] [def] [scope 64] [fill_buff]
!20 = metadata !{metadata !21, metadata !22, metadata !23}
!21 = metadata !{i32 786689, metadata !19, metadata !"data", metadata !5, i32 16777279, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 63]
!22 = metadata !{i32 786689, metadata !19, metadata !"items", metadata !5, i32 33554495, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [items] [line 63]
!23 = metadata !{i32 786688, metadata !19, metadata !"i", metadata !5, i32 65, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 65]
!24 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"check_buff", metadata !"check_buff", metadata !"", i32 71, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i8*, i32*, i32, i32)* @check_buff, null, null, metadata !84, i32 72} ; [ DW_TAG_subprogram ] [line 71] [def] [scope 72] [check_buff]
!25 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{metadata !8, metadata !27, metadata !34, metadata !14, metadata !8, metadata !8}
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!28 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!30 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !33, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !54, metadata !55, metadata !56, metadata !57, metadata !60, metadata !62, metadata !64, metadata !68, metadata !70, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !79, metadata !80}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!35 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!36 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!37 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!38 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!39 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!40 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!41 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!42 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!43 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!44 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!45 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !34} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!46 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !47} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!48 = metadata !{i32 786451, metadata !30, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !51, metadata !53}
!50 = metadata !{i32 786445, metadata !30, metadata !48, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!51 = metadata !{i32 786445, metadata !30, metadata !48, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!53 = metadata !{i32 786445, metadata !30, metadata !48, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!54 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !52} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!55 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!56 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!57 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !58} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!58 = metadata !{i32 786454, metadata !30, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!59 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!60 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !61} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!61 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!62 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !63} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!63 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!64 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !65} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!65 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !35, metadata !66, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!68 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !69} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!69 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!70 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !71} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!71 = metadata !{i32 786454, metadata !30, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!72 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !69} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!73 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !69} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!74 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !69} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!75 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !69} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!76 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !77} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!77 = metadata !{i32 786454, metadata !30, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!78 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!79 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!80 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !81} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!81 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !35, metadata !82, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93}
!85 = metadata !{i32 786689, metadata !24, metadata !"fp", metadata !5, i32 16777287, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 71]
!86 = metadata !{i32 786689, metadata !24, metadata !"title", metadata !5, i32 33554503, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 71]
!87 = metadata !{i32 786689, metadata !24, metadata !"data", metadata !5, i32 50331719, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 71]
!88 = metadata !{i32 786689, metadata !24, metadata !"items", metadata !5, i32 67108935, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [items] [line 71]
!89 = metadata !{i32 786689, metadata !24, metadata !"verbose", metadata !5, i32 83886151, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [verbose] [line 71]
!90 = metadata !{i32 786688, metadata !24, metadata !"i", metadata !5, i32 73, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 73]
!91 = metadata !{i32 786688, metadata !24, metadata !"errs", metadata !5, i32 73, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errs] [line 73]
!92 = metadata !{i32 786688, metadata !24, metadata !"check", metadata !5, i32 73, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [check] [line 73]
!93 = metadata !{i32 786688, metadata !24, metadata !"comp", metadata !5, i32 73, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [comp] [line 73]
!94 = metadata !{i32 37, i32 0, metadata !4, null}
!95 = metadata !{i32 42, i32 0, metadata !4, null}
!96 = metadata !{i32 54, i32 0, metadata !11, null}
!97 = metadata !{i32 58, i32 0, metadata !98, null} ; [ DW_TAG_imported_module ]
!98 = metadata !{i32 786443, metadata !1, metadata !11, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/buffer.c]
!99 = metadata !{i32 59, i32 0, metadata !11, null}
!100 = metadata !{i32 63, i32 0, metadata !19, null}
!101 = metadata !{i32 67, i32 0, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !19, i32 67, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/buffer.c]
!103 = metadata !{i32 undef}
!104 = metadata !{i32 786689, metadata !4, metadata !"i", metadata !5, i32 16777253, metadata !8, i32 0, metadata !101} ; [ DW_TAG_arg_variable ] [i] [line 37]
!105 = metadata !{i32 37, i32 0, metadata !4, metadata !101}
!106 = metadata !{i32 42, i32 0, metadata !4, metadata !101}
!107 = metadata !{metadata !"int", metadata !108}
!108 = metadata !{metadata !"omnipotent char", metadata !109}
!109 = metadata !{metadata !"Simple C/C++ TBAA"}
!110 = metadata !{i32 69, i32 0, metadata !19, null}
!111 = metadata !{i32 71, i32 0, metadata !24, null}
!112 = metadata !{i32 75, i32 0, metadata !24, null}
!113 = metadata !{i32 76, i32 0, metadata !24, null}
!114 = metadata !{i32 80, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !116, i32 80, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/buffer.c]
!116 = metadata !{i32 786443, metadata !1, metadata !24, i32 79, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/buffer.c]
!117 = metadata !{i32 77, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !24, i32 77, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/buffer.c]
!119 = metadata !{i32 87, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !121, i32 86, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/buffer.c]
!121 = metadata !{i32 786443, metadata !1, metadata !115, i32 81, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/buffer.c]
!122 = metadata !{i32 77, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !118, i32 77, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/buffer.c]
!124 = metadata !{i32 786689, metadata !4, metadata !"i", metadata !5, i32 16777253, metadata !8, i32 0, metadata !122} ; [ DW_TAG_arg_variable ] [i] [line 37]
!125 = metadata !{i32 37, i32 0, metadata !4, metadata !122}
!126 = metadata !{i32 42, i32 0, metadata !4, metadata !122}
!127 = metadata !{i32 82, i32 0, metadata !121, null}
!128 = metadata !{i32 786689, metadata !4, metadata !"i", metadata !5, i32 16777253, metadata !8, i32 0, metadata !129} ; [ DW_TAG_arg_variable ] [i] [line 37]
!129 = metadata !{i32 84, i32 0, metadata !121, null}
!130 = metadata !{i32 37, i32 0, metadata !4, metadata !129}
!131 = metadata !{i32 42, i32 0, metadata !4, metadata !129}
!132 = metadata !{i32 85, i32 0, metadata !121, null}
!133 = metadata !{i32 88, i32 0, metadata !120, null}
!134 = metadata !{i32 90, i32 0, metadata !120, null}
!135 = metadata !{i32 91, i32 0, metadata !120, null}
!136 = metadata !{i32 94, i32 0, metadata !24, null}
