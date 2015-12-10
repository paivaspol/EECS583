; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/rcfile.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@TTSize = common global i32 0, align 4
@ECacheSize = common global i32 0, align 4
@PBSize = common global i32 0, align 4
@cfg_devscale = common global i32 0, align 4
@cfg_scalefac = common global float 0.000000e+00, align 4
@cfg_razordrop = common global i32 0, align 4
@cfg_cutdrop = common global i32 0, align 4
@cfg_futprune = common global i32 0, align 4
@cfg_smarteval = common global i32 0, align 4
@cfg_attackeval = common global i32 0, align 4
@cfg_onerep = common global i32 0, align 4
@cfg_recap = common global i32 0, align 4
@havercfile = common global i32 0, align 4
@setcode = external global [30 x i8]
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@rcfile = common global %struct._IO_FILE* null, align 8
@line = common global [256 x i8] zeroinitializer, align 16
@cfg_booklearn = common global i32 0, align 4
@cfg_ksafety = common global [15 x [9 x i32]] zeroinitializer, align 16
@cfg_tropism = common global [5 x [7 x i32]] zeroinitializer, align 16

; Function Attrs: nounwind optsize uwtable
define void @read_rcfile() #0 {
entry:
  store i32 3000000, i32* @TTSize, align 4, !dbg !100, !tbaa !101
  store i32 1000000, i32* @ECacheSize, align 4, !dbg !104, !tbaa !101
  store i32 200000, i32* @PBSize, align 4, !dbg !105, !tbaa !101
  store i32 1, i32* @cfg_devscale, align 4, !dbg !106, !tbaa !101
  store float 1.000000e+00, float* @cfg_scalefac, align 4, !dbg !107, !tbaa !108
  store i32 1, i32* @cfg_razordrop, align 4, !dbg !109, !tbaa !101
  store i32 0, i32* @cfg_cutdrop, align 4, !dbg !110, !tbaa !101
  store i32 1, i32* @cfg_futprune, align 4, !dbg !111, !tbaa !101
  store i32 1, i32* @cfg_smarteval, align 4, !dbg !112, !tbaa !101
  store i32 0, i32* @cfg_attackeval, align 4, !dbg !113, !tbaa !101
  store i32 1, i32* @cfg_onerep, align 4, !dbg !114, !tbaa !101
  store i32 0, i32* @cfg_recap, align 4, !dbg !115, !tbaa !101
  store i32 0, i32* @havercfile, align 4, !dbg !116, !tbaa !101
  tail call void @llvm.dbg.value(metadata !117, i64 0, metadata !9), !dbg !118
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([30 x i8]* @setcode, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 110) #4, !dbg !119
  tail call void @initialize_eval() #4, !dbg !120
  tail call void @alloc_hash() #4, !dbg !121
  tail call void @alloc_ecache() #4, !dbg !122
  ret void, !dbg !123
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @initialize_eval() #2

; Function Attrs: optsize
declare void @alloc_hash() #2

; Function Attrs: optsize
declare void @alloc_ecache() #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !11, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/rcfile.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/rcfile.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"read_rcfile", metadata !"read_rcfile", metadata !"", i32 35, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @read_rcfile, null, null, metadata !8, i32 36} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 36] [read_rcfile]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/rcfile.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 786688, metadata !4, metadata !"setc", metadata !5, i32 37, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [setc] [line 37]
!10 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!11 = metadata !{metadata !12, metadata !71, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !86, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!12 = metadata !{i32 786484, i32 0, null, metadata !"rcfile", metadata !"rcfile", metadata !"", metadata !5, i32 14, metadata !13, i32 0, i32 1, %struct._IO_FILE** @rcfile, null} ; [ DW_TAG_variable ] [rcfile] [line 14] [def]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!14 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!15 = metadata !{i32 786451, metadata !16, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !17, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!16 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!17 = metadata !{metadata !18, metadata !20, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !41, metadata !42, metadata !43, metadata !44, metadata !47, metadata !49, metadata !51, metadata !55, metadata !57, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !66, metadata !67}
!18 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!19 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!20 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!22 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!23 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!24 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!25 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!26 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!27 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!28 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!29 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!30 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!31 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!32 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !21} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!33 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !34} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!35 = metadata !{i32 786451, metadata !16, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !36, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!36 = metadata !{metadata !37, metadata !38, metadata !40}
!37 = metadata !{i32 786445, metadata !16, metadata !35, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!38 = metadata !{i32 786445, metadata !16, metadata !35, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!40 = metadata !{i32 786445, metadata !16, metadata !35, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!41 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !39} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!42 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !19} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!43 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !19} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!44 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !45} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!45 = metadata !{i32 786454, metadata !16, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!46 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!47 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !48} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!48 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!49 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !50} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!50 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!51 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !52} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!52 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !22, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!55 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !56} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!57 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !58} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!58 = metadata !{i32 786454, metadata !16, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!59 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !56} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!60 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !56} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!61 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !56} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!62 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !56} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!63 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !64} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!64 = metadata !{i32 786454, metadata !16, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!65 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!66 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !19} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!67 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !68} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!68 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !22, metadata !69, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!71 = metadata !{i32 786484, i32 0, null, metadata !"line", metadata !"line", metadata !"", metadata !5, i32 15, metadata !72, i32 0, i32 1, [256 x i8]* @line, null} ; [ DW_TAG_variable ] [line] [line 15] [def]
!72 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !22, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!75 = metadata !{i32 786484, i32 0, null, metadata !"TTSize", metadata !"TTSize", metadata !"", metadata !5, i32 17, metadata !19, i32 0, i32 1, i32* @TTSize, null} ; [ DW_TAG_variable ] [TTSize] [line 17] [def]
!76 = metadata !{i32 786484, i32 0, null, metadata !"ECacheSize", metadata !"ECacheSize", metadata !"", metadata !5, i32 18, metadata !19, i32 0, i32 1, i32* @ECacheSize, null} ; [ DW_TAG_variable ] [ECacheSize] [line 18] [def]
!77 = metadata !{i32 786484, i32 0, null, metadata !"PBSize", metadata !"PBSize", metadata !"", metadata !5, i32 19, metadata !19, i32 0, i32 1, i32* @PBSize, null} ; [ DW_TAG_variable ] [PBSize] [line 19] [def]
!78 = metadata !{i32 786484, i32 0, null, metadata !"cfg_booklearn", metadata !"cfg_booklearn", metadata !"", metadata !5, i32 21, metadata !19, i32 0, i32 1, i32* @cfg_booklearn, null} ; [ DW_TAG_variable ] [cfg_booklearn] [line 21] [def]
!79 = metadata !{i32 786484, i32 0, null, metadata !"cfg_razordrop", metadata !"cfg_razordrop", metadata !"", metadata !5, i32 22, metadata !19, i32 0, i32 1, i32* @cfg_razordrop, null} ; [ DW_TAG_variable ] [cfg_razordrop] [line 22] [def]
!80 = metadata !{i32 786484, i32 0, null, metadata !"cfg_cutdrop", metadata !"cfg_cutdrop", metadata !"", metadata !5, i32 23, metadata !19, i32 0, i32 1, i32* @cfg_cutdrop, null} ; [ DW_TAG_variable ] [cfg_cutdrop] [line 23] [def]
!81 = metadata !{i32 786484, i32 0, null, metadata !"cfg_ksafety", metadata !"cfg_ksafety", metadata !"", metadata !5, i32 24, metadata !82, i32 0, i32 1, [15 x [9 x i32]]* @cfg_ksafety, null} ; [ DW_TAG_variable ] [cfg_ksafety] [line 24] [def]
!82 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4320, i64 32, i32 0, i32 0, metadata !19, metadata !83, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4320, align 32, offset 0] [from int]
!83 = metadata !{metadata !84, metadata !85}
!84 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ] [0, 14]
!85 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ] [0, 8]
!86 = metadata !{i32 786484, i32 0, null, metadata !"cfg_tropism", metadata !"cfg_tropism", metadata !"", metadata !5, i32 25, metadata !87, i32 0, i32 1, [5 x [7 x i32]]* @cfg_tropism, null} ; [ DW_TAG_variable ] [cfg_tropism] [line 25] [def]
!87 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1120, i64 32, i32 0, i32 0, metadata !19, metadata !88, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1120, align 32, offset 0] [from int]
!88 = metadata !{metadata !89, metadata !90}
!89 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ] [0, 4]
!90 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ] [0, 6]
!91 = metadata !{i32 786484, i32 0, null, metadata !"havercfile", metadata !"havercfile", metadata !"", metadata !5, i32 26, metadata !19, i32 0, i32 1, i32* @havercfile, null} ; [ DW_TAG_variable ] [havercfile] [line 26] [def]
!92 = metadata !{i32 786484, i32 0, null, metadata !"cfg_futprune", metadata !"cfg_futprune", metadata !"", metadata !5, i32 27, metadata !19, i32 0, i32 1, i32* @cfg_futprune, null} ; [ DW_TAG_variable ] [cfg_futprune] [line 27] [def]
!93 = metadata !{i32 786484, i32 0, null, metadata !"cfg_devscale", metadata !"cfg_devscale", metadata !"", metadata !5, i32 28, metadata !19, i32 0, i32 1, i32* @cfg_devscale, null} ; [ DW_TAG_variable ] [cfg_devscale] [line 28] [def]
!94 = metadata !{i32 786484, i32 0, null, metadata !"cfg_onerep", metadata !"cfg_onerep", metadata !"", metadata !5, i32 29, metadata !19, i32 0, i32 1, i32* @cfg_onerep, null} ; [ DW_TAG_variable ] [cfg_onerep] [line 29] [def]
!95 = metadata !{i32 786484, i32 0, null, metadata !"cfg_recap", metadata !"cfg_recap", metadata !"", metadata !5, i32 30, metadata !19, i32 0, i32 1, i32* @cfg_recap, null} ; [ DW_TAG_variable ] [cfg_recap] [line 30] [def]
!96 = metadata !{i32 786484, i32 0, null, metadata !"cfg_smarteval", metadata !"cfg_smarteval", metadata !"", metadata !5, i32 31, metadata !19, i32 0, i32 1, i32* @cfg_smarteval, null} ; [ DW_TAG_variable ] [cfg_smarteval] [line 31] [def]
!97 = metadata !{i32 786484, i32 0, null, metadata !"cfg_attackeval", metadata !"cfg_attackeval", metadata !"", metadata !5, i32 32, metadata !19, i32 0, i32 1, i32* @cfg_attackeval, null} ; [ DW_TAG_variable ] [cfg_attackeval] [line 32] [def]
!98 = metadata !{i32 786484, i32 0, null, metadata !"cfg_scalefac", metadata !"cfg_scalefac", metadata !"", metadata !5, i32 33, metadata !99, i32 0, i32 1, float* @cfg_scalefac, null} ; [ DW_TAG_variable ] [cfg_scalefac] [line 33] [def]
!99 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!100 = metadata !{i32 39, i32 0, metadata !4, null}
!101 = metadata !{metadata !"int", metadata !102}
!102 = metadata !{metadata !"omnipotent char", metadata !103}
!103 = metadata !{metadata !"Simple C/C++ TBAA"}
!104 = metadata !{i32 40, i32 0, metadata !4, null}
!105 = metadata !{i32 41, i32 0, metadata !4, null}
!106 = metadata !{i32 43, i32 0, metadata !4, null}
!107 = metadata !{i32 44, i32 0, metadata !4, null}
!108 = metadata !{metadata !"float", metadata !102}
!109 = metadata !{i32 45, i32 0, metadata !4, null}
!110 = metadata !{i32 46, i32 0, metadata !4, null}
!111 = metadata !{i32 47, i32 0, metadata !4, null}
!112 = metadata !{i32 48, i32 0, metadata !4, null}
!113 = metadata !{i32 49, i32 0, metadata !4, null}
!114 = metadata !{i32 50, i32 0, metadata !4, null}
!115 = metadata !{i32 51, i32 0, metadata !4, null}
!116 = metadata !{i32 53, i32 0, metadata !4, null}
!117 = metadata !{i32 110}
!118 = metadata !{i32 55, i32 0, metadata !4, null}
!119 = metadata !{i32 65, i32 0, metadata !4, null}
!120 = metadata !{i32 67, i32 0, metadata !4, null}
!121 = metadata !{i32 68, i32 0, metadata !4, null}
!122 = metadata !{i32 69, i32 0, metadata !4, null}
!123 = metadata !{i32 71, i32 0, metadata !4, null}
