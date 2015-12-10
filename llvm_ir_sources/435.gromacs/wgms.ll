; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/wgms.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@n = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%8.3f\00", align 1
@.str2 = private unnamed_addr constant [17 x i8] c"%8.3f%8.3f%8.3f\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @write_gms(%struct._IO_FILE* nocapture %fp, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* %box) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !75), !dbg !96
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !76), !dbg !96
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !77), !dbg !96
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !78), !dbg !96
  store i32 0, i32* @n, align 4, !dbg !97, !tbaa !98
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !79), !dbg !101
  %cmp46 = icmp sgt i32 %natoms, 0, !dbg !101
  br i1 %cmp46, label %for.cond1.preheader, label %if.end17, !dbg !101

for.cond1.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc10 ], [ 0, %entry ]
  br label %for.body3, !dbg !103

for.body3:                                        ; preds = %for.inc, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx5 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv48, i64 %indvars.iv, !dbg !105
  %0 = load float* %arrayidx5, align 4, !dbg !105, !tbaa !107
  %conv = fpext float %0 to double, !dbg !105
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), double %conv) #4, !dbg !105
  %1 = load i32* @n, align 4, !dbg !108, !tbaa !98
  %inc = add nsw i32 %1, 1, !dbg !108
  store i32 %inc, i32* @n, align 4, !dbg !108, !tbaa !98
  %cmp6 = icmp eq i32 %inc, 10, !dbg !109
  br i1 %cmp6, label %if.then, label %for.inc, !dbg !109

if.then:                                          ; preds = %for.body3
  %fputc44 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !110
  store i32 0, i32* @n, align 4, !dbg !112, !tbaa !98
  br label %for.inc, !dbg !113

for.inc:                                          ; preds = %for.body3, %if.then
  %2 = phi i32 [ %inc, %for.body3 ], [ 0, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !103
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !103
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !103
  br i1 %exitcond, label %for.inc10, label %for.body3, !dbg !103

for.inc10:                                        ; preds = %for.inc
  %indvars.iv.next49 = add i64 %indvars.iv48, 1, !dbg !101
  %lftr.wideiv50 = trunc i64 %indvars.iv.next49 to i32, !dbg !101
  %exitcond51 = icmp eq i32 %lftr.wideiv50, %natoms, !dbg !101
  br i1 %exitcond51, label %for.end12, label %for.cond1.preheader, !dbg !101

for.end12:                                        ; preds = %for.inc10
  %cmp13 = icmp eq i32 %2, 0, !dbg !114
  br i1 %cmp13, label %if.end17, label %if.then15, !dbg !114

if.then15:                                        ; preds = %for.end12
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !115
  br label %if.end17, !dbg !115

if.end17:                                         ; preds = %entry, %for.end12, %if.then15
  %cmp18 = icmp eq [3 x float]* %box, null, !dbg !116
  br i1 %cmp18, label %if.end31, label %if.then20, !dbg !116

if.then20:                                        ; preds = %if.end17
  %arrayidx22 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !117
  %3 = load float* %arrayidx22, align 4, !dbg !117, !tbaa !107
  %conv23 = fpext float %3 to double, !dbg !117
  %arrayidx25 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !117
  %4 = load float* %arrayidx25, align 4, !dbg !117, !tbaa !107
  %conv26 = fpext float %4 to double, !dbg !117
  %arrayidx28 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !117
  %5 = load float* %arrayidx28, align 4, !dbg !117, !tbaa !107
  %conv29 = fpext float %5 to double, !dbg !117
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), double %conv23, double %conv26, double %conv29) #4, !dbg !117
  br label %if.end31, !dbg !117

if.end31:                                         ; preds = %if.end17, %if.then20
  ret void, !dbg !118
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @write_gms_ndx(%struct._IO_FILE* nocapture %fp, i32 %isize, i32* nocapture %index, [3 x float]* nocapture %x, [3 x float]* %box) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !87), !dbg !119
  tail call void @llvm.dbg.value(metadata !{i32 %isize}, i64 0, metadata !88), !dbg !119
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !89), !dbg !119
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !90), !dbg !119
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !91), !dbg !119
  store i32 0, i32* @n, align 4, !dbg !120, !tbaa !98
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !121
  %cmp48 = icmp sgt i32 %isize, 0, !dbg !121
  br i1 %cmp48, label %for.cond1.preheader, label %if.end19, !dbg !121

for.cond1.preheader:                              ; preds = %entry, %for.inc12
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc12 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv50, !dbg !123
  br label %for.body3, !dbg !126

for.body3:                                        ; preds = %for.inc, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %0 = load i32* %arrayidx, align 4, !dbg !123, !tbaa !98
  %idxprom5 = sext i32 %0 to i64, !dbg !123
  %arrayidx7 = getelementptr inbounds [3 x float]* %x, i64 %idxprom5, i64 %indvars.iv, !dbg !123
  %1 = load float* %arrayidx7, align 4, !dbg !123, !tbaa !107
  %conv = fpext float %1 to double, !dbg !123
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), double %conv) #4, !dbg !123
  %2 = load i32* @n, align 4, !dbg !127, !tbaa !98
  %inc = add nsw i32 %2, 1, !dbg !127
  store i32 %inc, i32* @n, align 4, !dbg !127, !tbaa !98
  %cmp8 = icmp eq i32 %inc, 10, !dbg !128
  br i1 %cmp8, label %if.then, label %for.inc, !dbg !128

if.then:                                          ; preds = %for.body3
  %fputc46 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !129
  store i32 0, i32* @n, align 4, !dbg !131, !tbaa !98
  br label %for.inc, !dbg !132

for.inc:                                          ; preds = %for.body3, %if.then
  %3 = phi i32 [ %inc, %for.body3 ], [ 0, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !126
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !126
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !126
  br i1 %exitcond, label %for.inc12, label %for.body3, !dbg !126

for.inc12:                                        ; preds = %for.inc
  %indvars.iv.next51 = add i64 %indvars.iv50, 1, !dbg !121
  %lftr.wideiv52 = trunc i64 %indvars.iv.next51 to i32, !dbg !121
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %isize, !dbg !121
  br i1 %exitcond53, label %for.end14, label %for.cond1.preheader, !dbg !121

for.end14:                                        ; preds = %for.inc12
  %cmp15 = icmp eq i32 %3, 0, !dbg !133
  br i1 %cmp15, label %if.end19, label %if.then17, !dbg !133

if.then17:                                        ; preds = %for.end14
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !134
  br label %if.end19, !dbg !134

if.end19:                                         ; preds = %entry, %for.end14, %if.then17
  %cmp20 = icmp eq [3 x float]* %box, null, !dbg !135
  br i1 %cmp20, label %if.end33, label %if.then22, !dbg !135

if.then22:                                        ; preds = %if.end19
  %arrayidx24 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !136
  %4 = load float* %arrayidx24, align 4, !dbg !136, !tbaa !107
  %conv25 = fpext float %4 to double, !dbg !136
  %arrayidx27 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !136
  %5 = load float* %arrayidx27, align 4, !dbg !136, !tbaa !107
  %conv28 = fpext float %5 to double, !dbg !136
  %arrayidx30 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !136
  %6 = load float* %arrayidx30, align 4, !dbg !136, !tbaa !107
  %conv31 = fpext float %6 to double, !dbg !136
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), double %conv25, double %conv28, double %conv31) #4, !dbg !136
  br label %if.end33, !dbg !136

if.end33:                                         ; preds = %if.end19, %if.then22
  ret void, !dbg !137
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !94, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wgms.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/wgms.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !81}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"write_gms", metadata !"write_gms", metadata !"", i32 39, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, [3 x float]*, [3 x float]*)* @write_gms, null, null, metadata !74, i32 40} ; [ DW_TAG_subprogram ] [line 39] [def] [scope 40] [write_gms]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wgms.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !66, metadata !73}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!11 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !36, metadata !37, metadata !38, metadata !39, metadata !42, metadata !44, metadata !46, metadata !50, metadata !52, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !61, metadata !62}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!17 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!25 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!28 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !29} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!30 = metadata !{i32 786451, metadata !11, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!31 = metadata !{metadata !32, metadata !33, metadata !35}
!32 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!33 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!35 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!36 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !34} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!37 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!38 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!39 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !40} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!40 = metadata !{i32 786454, metadata !11, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!41 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!42 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !43} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!43 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !45} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!45 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!46 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !47} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!47 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !17, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!50 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !51} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !53} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!53 = metadata !{i32 786454, metadata !11, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!54 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!55 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!56 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!57 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!58 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !59} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!59 = metadata !{i32 786454, metadata !11, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!60 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!61 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!62 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !63} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !17, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!67 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!68 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !69, metadata !71, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!69 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!70 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80}
!75 = metadata !{i32 786689, metadata !4, metadata !"fp", metadata !5, i32 16777255, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 39]
!76 = metadata !{i32 786689, metadata !4, metadata !"natoms", metadata !5, i32 33554471, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 39]
!77 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 50331687, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 39]
!78 = metadata !{i32 786689, metadata !4, metadata !"box", metadata !5, i32 67108903, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 39]
!79 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 41, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 41]
!80 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 41, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 41]
!81 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"write_gms_ndx", metadata !"write_gms_ndx", metadata !"", i32 59, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32*, [3 x float]*, [3 x float]*)* @write_gms_ndx, null, null, metadata !86, i32 60} ; [ DW_TAG_subprogram ] [line 59] [def] [scope 60] [write_gms_ndx]
!82 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{null, metadata !8, metadata !14, metadata !84, metadata !66, metadata !73}
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!85 = metadata !{i32 786454, metadata !1, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93}
!87 = metadata !{i32 786689, metadata !81, metadata !"fp", metadata !5, i32 16777275, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 59]
!88 = metadata !{i32 786689, metadata !81, metadata !"isize", metadata !5, i32 33554491, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [isize] [line 59]
!89 = metadata !{i32 786689, metadata !81, metadata !"index", metadata !5, i32 50331707, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 59]
!90 = metadata !{i32 786689, metadata !81, metadata !"x", metadata !5, i32 67108923, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 59]
!91 = metadata !{i32 786689, metadata !81, metadata !"box", metadata !5, i32 83886139, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 59]
!92 = metadata !{i32 786688, metadata !81, metadata !"i", metadata !5, i32 61, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 61]
!93 = metadata !{i32 786688, metadata !81, metadata !"j", metadata !5, i32 61, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 61]
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786484, i32 0, null, metadata !"n", metadata !"n", metadata !"", metadata !5, i32 36, metadata !14, i32 1, i32 1, i32* @n, null} ; [ DW_TAG_variable ] [n] [line 36] [local] [def]
!96 = metadata !{i32 39, i32 0, metadata !4, null}
!97 = metadata !{i32 43, i32 0, metadata !4, null}
!98 = metadata !{metadata !"int", metadata !99}
!99 = metadata !{metadata !"omnipotent char", metadata !100}
!100 = metadata !{metadata !"Simple C/C++ TBAA"}
!101 = metadata !{i32 44, i32 0, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !4, i32 44, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wgms.c]
!103 = metadata !{i32 45, i32 0, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !102, i32 45, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wgms.c]
!105 = metadata !{i32 46, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !104, i32 45, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wgms.c]
!107 = metadata !{metadata !"float", metadata !99}
!108 = metadata !{i32 47, i32 0, metadata !106, null}
!109 = metadata !{i32 48, i32 0, metadata !106, null}
!110 = metadata !{i32 49, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !106, i32 48, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wgms.c]
!112 = metadata !{i32 50, i32 0, metadata !111, null}
!113 = metadata !{i32 51, i32 0, metadata !111, null}
!114 = metadata !{i32 53, i32 0, metadata !4, null}
!115 = metadata !{i32 54, i32 0, metadata !4, null}
!116 = metadata !{i32 55, i32 0, metadata !4, null}
!117 = metadata !{i32 56, i32 0, metadata !4, null}
!118 = metadata !{i32 57, i32 0, metadata !4, null}
!119 = metadata !{i32 59, i32 0, metadata !81, null}
!120 = metadata !{i32 63, i32 0, metadata !81, null}
!121 = metadata !{i32 64, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !81, i32 64, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wgms.c]
!123 = metadata !{i32 66, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !125, i32 65, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wgms.c]
!125 = metadata !{i32 786443, metadata !1, metadata !122, i32 65, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wgms.c]
!126 = metadata !{i32 65, i32 0, metadata !125, null}
!127 = metadata !{i32 67, i32 0, metadata !124, null}
!128 = metadata !{i32 68, i32 0, metadata !124, null}
!129 = metadata !{i32 69, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !124, i32 68, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/wgms.c]
!131 = metadata !{i32 70, i32 0, metadata !130, null}
!132 = metadata !{i32 71, i32 0, metadata !130, null}
!133 = metadata !{i32 73, i32 0, metadata !81, null}
!134 = metadata !{i32 74, i32 0, metadata !81, null}
!135 = metadata !{i32 75, i32 0, metadata !81, null}
!136 = metadata !{i32 76, i32 0, metadata !81, null}
!137 = metadata !{i32 77, i32 0, metadata !81, null}
