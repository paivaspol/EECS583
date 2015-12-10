; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IOBASIC_private.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@iobasicpriv_ = common global %struct.anon zeroinitializer, align 8

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !3, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IOBASIC_private.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IOBASIC_private.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786484, i32 0, null, metadata !"iobasicpriv_", metadata !"iobasicpriv_", metadata !"", metadata !5, i32 24, metadata !6, i32 0, i32 1, %struct.anon* @iobasicpriv_, null} ; [ DW_TAG_variable ] [iobasicpriv_] [line 24] [def]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IOBASIC_private.c]
!6 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 13, i64 512, i64 64, i32 0, i32 0, null, metadata !7, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 13, size 512, align 64, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !19}
!8 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"outInfo_reductions", i32 15, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [outInfo_reductions] [line 15, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"outInfo_vars", i32 16, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [outInfo_vars] [line 16, size 64, align 64, offset 64] [from ]
!12 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"outScalar_reductions", i32 17, i64 64, i64 64, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [outScalar_reductions] [line 17, size 64, align 64, offset 128] [from ]
!13 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"outScalar_style", i32 18, i64 64, i64 64, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [outScalar_style] [line 18, size 64, align 64, offset 192] [from ]
!14 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"outScalar_vars", i32 19, i64 64, i64 64, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [outScalar_vars] [line 19, size 64, align 64, offset 256] [from ]
!15 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"out_format", i32 20, i64 64, i64 64, i64 320, i32 0, metadata !9} ; [ DW_TAG_member ] [out_format] [line 20, size 64, align 64, offset 320] [from ]
!16 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"outdirScalar", i32 21, i64 64, i64 64, i64 384, i32 0, metadata !9} ; [ DW_TAG_member ] [outdirScalar] [line 21, size 64, align 64, offset 384] [from ]
!17 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"outInfo_every", i32 22, i64 32, i64 32, i64 448, i32 0, metadata !18} ; [ DW_TAG_member ] [outInfo_every] [line 22, size 32, align 32, offset 448] [from int]
!18 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!19 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"outScalar_every", i32 23, i64 32, i64 32, i64 480, i32 0, metadata !18} ; [ DW_TAG_member ] [outScalar_every] [line 23, size 32, align 32, offset 480] [from int]
