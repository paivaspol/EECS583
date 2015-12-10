; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/GRID_restricted.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, double, double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@gridrest_ = common global %struct.anon zeroinitializer, align 8

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !3, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/GRID_restricted.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/GRID_restricted.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786484, i32 0, null, metadata !"gridrest_", metadata !"gridrest_", metadata !"", metadata !5, i32 37, metadata !6, i32 0, i32 1, %struct.anon* @gridrest_, null} ; [ DW_TAG_variable ] [gridrest_] [line 37] [def]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/GRID_restricted.c]
!6 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 13, i64 1216, i64 64, i32 0, i32 0, null, metadata !7, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 13, size 1216, align 64, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !24, metadata !25, metadata !26, metadata !27, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33}
!8 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"dx", i32 15, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [dx] [line 15, size 64, align 64, offset 0] [from double]
!9 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"dxyz", i32 16, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [dxyz] [line 16, size 64, align 64, offset 64] [from double]
!11 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"dy", i32 17, i64 64, i64 64, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [dy] [line 17, size 64, align 64, offset 128] [from double]
!12 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"dz", i32 18, i64 64, i64 64, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [dz] [line 18, size 64, align 64, offset 192] [from double]
!13 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"xmax", i32 19, i64 64, i64 64, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [xmax] [line 19, size 64, align 64, offset 256] [from double]
!14 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"xmin", i32 20, i64 64, i64 64, i64 320, i32 0, metadata !9} ; [ DW_TAG_member ] [xmin] [line 20, size 64, align 64, offset 320] [from double]
!15 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"xyzmax", i32 21, i64 64, i64 64, i64 384, i32 0, metadata !9} ; [ DW_TAG_member ] [xyzmax] [line 21, size 64, align 64, offset 384] [from double]
!16 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"xyzmin", i32 22, i64 64, i64 64, i64 448, i32 0, metadata !9} ; [ DW_TAG_member ] [xyzmin] [line 22, size 64, align 64, offset 448] [from double]
!17 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"ymax", i32 23, i64 64, i64 64, i64 512, i32 0, metadata !9} ; [ DW_TAG_member ] [ymax] [line 23, size 64, align 64, offset 512] [from double]
!18 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"ymin", i32 24, i64 64, i64 64, i64 576, i32 0, metadata !9} ; [ DW_TAG_member ] [ymin] [line 24, size 64, align 64, offset 576] [from double]
!19 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"zmax", i32 25, i64 64, i64 64, i64 640, i32 0, metadata !9} ; [ DW_TAG_member ] [zmax] [line 25, size 64, align 64, offset 640] [from double]
!20 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"zmin", i32 26, i64 64, i64 64, i64 704, i32 0, metadata !9} ; [ DW_TAG_member ] [zmin] [line 26, size 64, align 64, offset 704] [from double]
!21 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"bitant_plane", i32 27, i64 64, i64 64, i64 768, i32 0, metadata !22} ; [ DW_TAG_member ] [bitant_plane] [line 27, size 64, align 64, offset 768] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!23 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!24 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"domain", i32 28, i64 64, i64 64, i64 832, i32 0, metadata !22} ; [ DW_TAG_member ] [domain] [line 28, size 64, align 64, offset 832] [from ]
!25 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"quadrant_direction", i32 29, i64 64, i64 64, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [quadrant_direction] [line 29, size 64, align 64, offset 896] [from ]
!26 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"type", i32 30, i64 64, i64 64, i64 960, i32 0, metadata !22} ; [ DW_TAG_member ] [type] [line 30, size 64, align 64, offset 960] [from ]
!27 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"symmetry_xmax", i32 31, i64 32, i64 32, i64 1024, i32 0, metadata !28} ; [ DW_TAG_member ] [symmetry_xmax] [line 31, size 32, align 32, offset 1024] [from int]
!28 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!29 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"symmetry_xmin", i32 32, i64 32, i64 32, i64 1056, i32 0, metadata !28} ; [ DW_TAG_member ] [symmetry_xmin] [line 32, size 32, align 32, offset 1056] [from int]
!30 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"symmetry_ymax", i32 33, i64 32, i64 32, i64 1088, i32 0, metadata !28} ; [ DW_TAG_member ] [symmetry_ymax] [line 33, size 32, align 32, offset 1088] [from int]
!31 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"symmetry_ymin", i32 34, i64 32, i64 32, i64 1120, i32 0, metadata !28} ; [ DW_TAG_member ] [symmetry_ymin] [line 34, size 32, align 32, offset 1120] [from int]
!32 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"symmetry_zmax", i32 35, i64 32, i64 32, i64 1152, i32 0, metadata !28} ; [ DW_TAG_member ] [symmetry_zmax] [line 35, size 32, align 32, offset 1152] [from int]
!33 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"symmetry_zmin", i32 36, i64 32, i64 32, i64 1184, i32 0, metadata !28} ; [ DW_TAG_member ] [symmetry_zmin] [line 36, size 32, align 32, offset 1184] [from int]
