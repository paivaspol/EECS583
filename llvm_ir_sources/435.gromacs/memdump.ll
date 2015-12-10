; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/memdump.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"memdump of %s:\0A\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"%.8X :\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c" %.2X\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c" | %s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @mem_dump(%struct._IO_FILE* %log, i8* %title, i8* nocapture %mem, i32 %len) #0 {
entry:
  %s = alloca [17 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !67), !dbg !94
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !68), !dbg !94
  call void @llvm.dbg.value(metadata !{i8* %mem}, i64 0, metadata !69), !dbg !94
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !70), !dbg !94
  call void @llvm.dbg.declare(metadata !{[17 x i8]* %s}, metadata !73), !dbg !95
  call void @llvm.dbg.value(metadata !{i8* %mem}, i64 0, metadata !77), !dbg !96
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !72), !dbg !97
  %arrayidx = getelementptr inbounds [17 x i8]* %s, i64 0, i64 0, !dbg !98
  store i8 0, i8* %arrayidx, align 16, !dbg !98, !tbaa !99
  %tobool = icmp eq i32 %len, 0, !dbg !101
  %tobool1 = icmp eq %struct._IO_FILE* %log, null, !dbg !101
  %or.cond = or i1 %tobool, %tobool1, !dbg !101
  br i1 %or.cond, label %for.cond.preheader, label %if.then, !dbg !101

if.then:                                          ; preds = %entry
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i8* %title) #4, !dbg !102
  br label %for.cond.preheader, !dbg !102

for.cond.preheader:                               ; preds = %entry, %if.then
  %cmp41 = icmp sgt i32 %len, 0, !dbg !103
  br i1 %cmp41, label %for.body, label %for.end, !dbg !103

for.body:                                         ; preds = %for.cond.preheader, %if.end14
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end14 ], [ 0, %for.cond.preheader ]
  %index.042 = phi i32 [ %inc, %if.end14 ], [ 0, %for.cond.preheader ]
  %arrayidx2 = getelementptr inbounds i8* %mem, i64 %indvars.iv, !dbg !105
  %0 = load i8* %arrayidx2, align 1, !dbg !105, !tbaa !99
  call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !80), !dbg !105
  %1 = and i32 %index.042, -17, !dbg !107
  %2 = icmp eq i32 %1, 0, !dbg !107
  br i1 %2, label %if.then5, label %if.end10, !dbg !107

if.then5:                                         ; preds = %for.body
  call fastcc void @print_chars(%struct._IO_FILE* %log, i8* %arrayidx, i32 %index.042) #5, !dbg !108
  br i1 %tobool1, label %if.end14, label %if.end10.thread39, !dbg !110

if.end10.thread39:                                ; preds = %if.then5
  %3 = trunc i64 %indvars.iv to i32, !dbg !111
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32 %3) #4, !dbg !111
  br label %if.then12, !dbg !112

if.end10:                                         ; preds = %for.body
  br i1 %tobool1, label %if.end14, label %if.then12, !dbg !112

if.then12:                                        ; preds = %if.end10.thread39, %if.end10
  %index.140 = phi i32 [ 0, %if.end10.thread39 ], [ %index.042, %if.end10 ]
  %conv = zext i8 %0 to i32, !dbg !113
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i32 %conv) #4, !dbg !113
  br label %if.end14, !dbg !113

if.end14:                                         ; preds = %if.then5, %if.end10, %if.then12
  %index.138 = phi i32 [ %index.042, %if.end10 ], [ %index.140, %if.then12 ], [ 0, %if.then5 ]
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !114), !dbg !116
  %b.off.i = add i8 %0, -32, !dbg !117
  %4 = icmp ugt i8 %b.off.i, 94, !dbg !117
  %retval.0.i = select i1 %4, i8 46, i8 %0, !dbg !117
  %inc = add nsw i32 %index.138, 1, !dbg !115
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !72), !dbg !115
  %idxprom16 = sext i32 %index.138 to i64, !dbg !115
  %arrayidx17 = getelementptr inbounds [17 x i8]* %s, i64 0, i64 %idxprom16, !dbg !115
  store i8 %retval.0.i, i8* %arrayidx17, align 1, !dbg !115, !tbaa !99
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !103
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !103
  %exitcond = icmp eq i32 %lftr.wideiv, %len, !dbg !103
  br i1 %exitcond, label %for.end, label %for.body, !dbg !103

for.end:                                          ; preds = %if.end14, %for.cond.preheader
  %index.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end14 ]
  call fastcc void @print_chars(%struct._IO_FILE* %log, i8* %arrayidx, i32 %index.0.lcssa) #5, !dbg !118
  %call20 = call i32 @fflush(%struct._IO_FILE* %log) #4, !dbg !119
  ret void, !dbg !120
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @print_chars(%struct._IO_FILE* %fp, i8* %s, i32 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !90), !dbg !121
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !91), !dbg !121
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !92), !dbg !121
  %tobool = icmp eq i32 %len, 0, !dbg !122
  br i1 %tobool, label %if.end7, label %if.then, !dbg !122

if.then:                                          ; preds = %entry
  %tobool1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !123
  br i1 %tobool1, label %if.end7.critedge, label %for.cond.preheader, !dbg !123

for.cond.preheader:                               ; preds = %if.then
  %cmp15 = icmp slt i32 %len, 16, !dbg !125
  br i1 %cmp15, label %for.body, label %if.then4, !dbg !125

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.016 = phi i32 [ %inc, %for.body ], [ %len, %for.cond.preheader ]
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp), !dbg !127
  %inc = add nsw i32 %i.016, 1, !dbg !125
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !93), !dbg !125
  %exitcond = icmp eq i32 %inc, 16, !dbg !125
  br i1 %exitcond, label %if.then4, label %for.body, !dbg !125

if.then4:                                         ; preds = %for.cond.preheader, %for.body
  %idxprom = sext i32 %len to i64, !dbg !128
  %arrayidx = getelementptr inbounds i8* %s, i64 %idxprom, !dbg !128
  store i8 0, i8* %arrayidx, align 1, !dbg !128, !tbaa !99
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* %s) #4, !dbg !129
  br label %if.end7, !dbg !129

if.end7.critedge:                                 ; preds = %if.then
  %idxprom.c = sext i32 %len to i64, !dbg !128
  %arrayidx.c = getelementptr inbounds i8* %s, i64 %idxprom.c, !dbg !128
  store i8 0, i8* %arrayidx.c, align 1, !dbg !128, !tbaa !99
  br label %if.end7

if.end7:                                          ; preds = %if.end7.critedge, %entry, %if.then4
  ret void, !dbg !130
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/memdump.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/memdump.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !81, metadata !86}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mem_dump", metadata !"mem_dump", metadata !"", i32 61, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, i8*, i32)* @mem_dump, null, null, metadata !66, i32 62} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 62] [mem_dump]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/memdump.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !16, metadata !51, metadata !14}
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
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !77, metadata !80}
!67 = metadata !{i32 786689, metadata !4, metadata !"log", metadata !5, i32 16777277, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 61]
!68 = metadata !{i32 786689, metadata !4, metadata !"title", metadata !5, i32 33554493, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 61]
!69 = metadata !{i32 786689, metadata !4, metadata !"mem", metadata !5, i32 50331709, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mem] [line 61]
!70 = metadata !{i32 786689, metadata !4, metadata !"len", metadata !5, i32 67108925, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 61]
!71 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 63]
!72 = metadata !{i32 786688, metadata !4, metadata !"index", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 63]
!73 = metadata !{i32 786688, metadata !4, metadata !"s", metadata !5, i32 64, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 64]
!74 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 136, i64 8, i32 0, i32 0, metadata !17, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 136, align 8, offset 0] [from char]
!75 = metadata !{metadata !76}
!76 = metadata !{i32 786465, i64 0, i64 17}       ; [ DW_TAG_subrange_type ] [0, 16]
!77 = metadata !{i32 786688, metadata !4, metadata !"p", metadata !5, i32 65, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 65]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!79 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!80 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 65, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 65]
!81 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ascii", metadata !"ascii", metadata !"", i32 56, metadata !82, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !84, i32 57} ; [ DW_TAG_subprogram ] [line 56] [local] [def] [scope 57] [ascii]
!82 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{metadata !17, metadata !79}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786689, metadata !81, metadata !"b", metadata !5, i32 16777272, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 56]
!86 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"print_chars", metadata !"print_chars", metadata !"", i32 40, metadata !87, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, i32)* @print_chars, null, null, metadata !89, i32 41} ; [ DW_TAG_subprogram ] [line 40] [local] [def] [scope 41] [print_chars]
!87 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!88 = metadata !{null, metadata !8, metadata !16, metadata !14}
!89 = metadata !{metadata !90, metadata !91, metadata !92, metadata !93}
!90 = metadata !{i32 786689, metadata !86, metadata !"fp", metadata !5, i32 16777256, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 40]
!91 = metadata !{i32 786689, metadata !86, metadata !"s", metadata !5, i32 33554472, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 40]
!92 = metadata !{i32 786689, metadata !86, metadata !"len", metadata !5, i32 50331688, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 40]
!93 = metadata !{i32 786688, metadata !86, metadata !"i", metadata !5, i32 42, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 42]
!94 = metadata !{i32 61, i32 0, metadata !4, null}
!95 = metadata !{i32 64, i32 0, metadata !4, null}
!96 = metadata !{i32 67, i32 0, metadata !4, null}
!97 = metadata !{i32 68, i32 0, metadata !4, null}
!98 = metadata !{i32 69, i32 0, metadata !4, null}
!99 = metadata !{metadata !"omnipotent char", metadata !100}
!100 = metadata !{metadata !"Simple C/C++ TBAA"}
!101 = metadata !{i32 70, i32 0, metadata !4, null}
!102 = metadata !{i32 71, i32 0, metadata !4, null}
!103 = metadata !{i32 72, i32 0, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !4, i32 72, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/memdump.c]
!105 = metadata !{i32 74, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !104, i32 73, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/memdump.c]
!107 = metadata !{i32 75, i32 0, metadata !106, null}
!108 = metadata !{i32 77, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !106, i32 76, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/memdump.c]
!110 = metadata !{i32 78, i32 0, metadata !109, null}
!111 = metadata !{i32 79, i32 0, metadata !109, null}
!112 = metadata !{i32 82, i32 0, metadata !106, null}
!113 = metadata !{i32 83, i32 0, metadata !106, null}
!114 = metadata !{i32 786689, metadata !81, metadata !"b", metadata !5, i32 16777272, metadata !79, i32 0, metadata !115} ; [ DW_TAG_arg_variable ] [b] [line 56]
!115 = metadata !{i32 84, i32 0, metadata !106, null}
!116 = metadata !{i32 56, i32 0, metadata !81, metadata !115}
!117 = metadata !{i32 58, i32 0, metadata !81, metadata !115} ; [ DW_TAG_imported_module ]
!118 = metadata !{i32 86, i32 0, metadata !4, null}
!119 = metadata !{i32 87, i32 0, metadata !4, null}
!120 = metadata !{i32 88, i32 0, metadata !4, null}
!121 = metadata !{i32 40, i32 0, metadata !86, null}
!122 = metadata !{i32 44, i32 0, metadata !86, null}
!123 = metadata !{i32 46, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !86, i32 45, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/memdump.c]
!125 = metadata !{i32 47, i32 0, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !124, i32 47, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/memdump.c]
!127 = metadata !{i32 48, i32 0, metadata !126, null}
!128 = metadata !{i32 49, i32 0, metadata !124, null}
!129 = metadata !{i32 52, i32 0, metadata !124, null}
!130 = metadata !{i32 54, i32 0, metadata !86, null}
