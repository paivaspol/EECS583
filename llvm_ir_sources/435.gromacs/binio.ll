; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/binio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [57 x i8] c"writing %s (%dx%d, len=%d, pos=%d) from file %s, line %d\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"reading %s (%dx%d, len=%d, pos=%d) from file %s, line %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @_blockwrite(%struct._IO_FILE* nocapture %fp, i32 %nelem, i32 %size, i8* nocapture %data, i8* %what, i8* %file, i32 %line) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !67), !dbg !85
  tail call void @llvm.dbg.value(metadata !{i32 %nelem}, i64 0, metadata !68), !dbg !85
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !69), !dbg !85
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !70), !dbg !85
  tail call void @llvm.dbg.value(metadata !{i8* %what}, i64 0, metadata !71), !dbg !85
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !72), !dbg !85
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !73), !dbg !86
  %conv = sext i32 %size to i64, !dbg !87
  %conv1 = sext i32 %nelem to i64, !dbg !87
  %call = tail call i64 @fwrite(i8* %data, i64 %conv, i64 %conv1, %struct._IO_FILE* %fp) #5, !dbg !87
  %conv2 = trunc i64 %call to i32, !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !74), !dbg !87
  %cmp = icmp eq i32 %conv2, %nelem, !dbg !87
  br i1 %cmp, label %if.end, label %if.then, !dbg !87

if.then:                                          ; preds = %entry
  %call4 = tail call i32* @__errno_location() #6, !dbg !88
  %0 = load i32* %call4, align 4, !dbg !88, !tbaa !89
  %call5 = tail call i64 @ftell(%struct._IO_FILE* %fp) #5, !dbg !92
  tail call void (i32, i8*, ...)* @fatal_error(i32 %0, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i8* %what, i32 %nelem, i32 %size, i32 %conv2, i64 %call5, i8* %file, i32 %line) #5, !dbg !92
  br label %if.end, !dbg !92

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !93
}

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @_blockread(%struct._IO_FILE* nocapture %fp, i32 %nelem, i32 %size, i8* nocapture %data, i8* %what, i8* %file, i32 %line) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !77), !dbg !94
  tail call void @llvm.dbg.value(metadata !{i32 %nelem}, i64 0, metadata !78), !dbg !94
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !79), !dbg !94
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !80), !dbg !94
  tail call void @llvm.dbg.value(metadata !{i8* %what}, i64 0, metadata !81), !dbg !94
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !82), !dbg !94
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !83), !dbg !95
  %conv = sext i32 %size to i64, !dbg !96
  %conv1 = sext i32 %nelem to i64, !dbg !96
  %call = tail call i64 @fread(i8* %data, i64 %conv, i64 %conv1, %struct._IO_FILE* %fp) #5, !dbg !96
  %conv2 = trunc i64 %call to i32, !dbg !96
  tail call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !84), !dbg !96
  %cmp = icmp eq i32 %conv2, %nelem, !dbg !96
  br i1 %cmp, label %if.end, label %if.then, !dbg !96

if.then:                                          ; preds = %entry
  %call4 = tail call i32* @__errno_location() #6, !dbg !97
  %0 = load i32* %call4, align 4, !dbg !97, !tbaa !89
  %call5 = tail call i64 @ftell(%struct._IO_FILE* %fp) #5, !dbg !98
  tail call void (i32, i8*, ...)* @fatal_error(i32 %0, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i8* %what, i32 %nelem, i32 %size, i32 %conv2, i64 %call5, i8* %file, i32 %line) #5, !dbg !98
  br label %if.end, !dbg !98

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !99
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/binio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/binio.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !75}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_blockwrite", metadata !"_blockwrite", metadata !"", i32 40, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, i8*, i8*, i8*, i32)* @_blockwrite, null, null, metadata !66, i32 42} ; [ DW_TAG_subprogram ] [line 40] [def] [scope 42] [_blockwrite]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/binio.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !51, metadata !16, metadata !16, metadata !14}
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
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74}
!67 = metadata !{i32 786689, metadata !4, metadata !"fp", metadata !5, i32 16777256, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 40]
!68 = metadata !{i32 786689, metadata !4, metadata !"nelem", metadata !5, i32 33554472, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelem] [line 40]
!69 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 50331688, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 40]
!70 = metadata !{i32 786689, metadata !4, metadata !"data", metadata !5, i32 67108904, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 40]
!71 = metadata !{i32 786689, metadata !4, metadata !"what", metadata !5, i32 83886120, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 40]
!72 = metadata !{i32 786689, metadata !4, metadata !"file", metadata !5, i32 100663336, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 40]
!73 = metadata !{i32 786689, metadata !4, metadata !"line", metadata !5, i32 117440553, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 41]
!74 = metadata !{i32 786688, metadata !4, metadata !"len", metadata !5, i32 43, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 43]
!75 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_blockread", metadata !"_blockread", metadata !"", i32 55, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, i8*, i8*, i8*, i32)* @_blockread, null, null, metadata !76, i32 57} ; [ DW_TAG_subprogram ] [line 55] [def] [scope 57] [_blockread]
!76 = metadata !{metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84}
!77 = metadata !{i32 786689, metadata !75, metadata !"fp", metadata !5, i32 16777271, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 55]
!78 = metadata !{i32 786689, metadata !75, metadata !"nelem", metadata !5, i32 33554487, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelem] [line 55]
!79 = metadata !{i32 786689, metadata !75, metadata !"size", metadata !5, i32 50331703, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 55]
!80 = metadata !{i32 786689, metadata !75, metadata !"data", metadata !5, i32 67108919, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 55]
!81 = metadata !{i32 786689, metadata !75, metadata !"what", metadata !5, i32 83886135, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 55]
!82 = metadata !{i32 786689, metadata !75, metadata !"file", metadata !5, i32 100663351, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 55]
!83 = metadata !{i32 786689, metadata !75, metadata !"line", metadata !5, i32 117440568, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 56]
!84 = metadata !{i32 786688, metadata !75, metadata !"len", metadata !5, i32 58, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 58]
!85 = metadata !{i32 40, i32 0, metadata !4, null}
!86 = metadata !{i32 41, i32 0, metadata !4, null}
!87 = metadata !{i32 50, i32 0, metadata !4, null}
!88 = metadata !{i32 51, i32 0, metadata !4, null}
!89 = metadata !{metadata !"int", metadata !90}
!90 = metadata !{metadata !"omnipotent char", metadata !91}
!91 = metadata !{metadata !"Simple C/C++ TBAA"}
!92 = metadata !{i32 52, i32 0, metadata !4, null}
!93 = metadata !{i32 53, i32 0, metadata !4, null}
!94 = metadata !{i32 55, i32 0, metadata !75, null}
!95 = metadata !{i32 56, i32 0, metadata !75, null}
!96 = metadata !{i32 65, i32 0, metadata !75, null}
!97 = metadata !{i32 66, i32 0, metadata !75, null}
!98 = metadata !{i32 67, i32 0, metadata !75, null}
!99 = metadata !{i32 68, i32 0, metadata !75, null}
