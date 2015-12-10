; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/asprintf.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind optsize uwtable
define i32 @asprintf(i8** %buf, i8* %fmt, ...) #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8** %buf}, i64 0, metadata !15), !dbg !34
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !16), !dbg !34
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !18), !dbg !35
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !35
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !35
  call void @llvm.va_start(i8* %arraydecay1), !dbg !35
  %call = call i32 @vasprintf(i8** %buf, i8* %fmt, %struct.__va_list_tag* %arraydecay) #4, !dbg !36
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !17), !dbg !36
  call void @llvm.va_end(i8* %arraydecay1), !dbg !38
  ret i32 %call, !dbg !39
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: optsize
declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/asprintf.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/403.gcc/src/asprintf.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"asprintf", metadata !"asprintf", metadata !"", i32 48, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i8*, ...)* @asprintf, null, null, metadata !14, i32 49} ; [ DW_TAG_subprogram ] [line 48] [def] [scope 49] [asprintf]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/asprintf.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !12}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!11 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!13 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!14 = metadata !{metadata !15, metadata !16, metadata !17, metadata !18}
!15 = metadata !{i32 786689, metadata !4, metadata !"buf", metadata !5, i32 16777264, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 48]
!16 = metadata !{i32 786689, metadata !4, metadata !"fmt", metadata !5, i32 33554480, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 48]
!17 = metadata !{i32 786688, metadata !4, metadata !"status", metadata !5, i32 50, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 50]
!18 = metadata !{i32 786688, metadata !19, metadata !"ap", metadata !5, i32 51, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 51]
!19 = metadata !{i32 786443, metadata !1, metadata !4, i32 51, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/asprintf.c]
!20 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [va_list] [line 30, size 0, align 0, offset 0] [from __builtin_va_list]
!21 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 51, size 0, align 0, offset 0] [from ]
!22 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !23, metadata !32, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!23 = metadata !{i32 786454, metadata !1, null, metadata !"__va_list_tag", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [__va_list_tag] [line 51, size 0, align 0, offset 0] [from __va_list_tag]
!24 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list_tag", i32 51, i64 192, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 51, size 192, align 64, offset 0] [from ]
!25 = metadata !{metadata !26, metadata !28, metadata !29, metadata !31}
!26 = metadata !{i32 786445, metadata !1, metadata !24, metadata !"gp_offset", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [gp_offset] [line 51, size 32, align 32, offset 0] [from unsigned int]
!27 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!28 = metadata !{i32 786445, metadata !1, metadata !24, metadata !"fp_offset", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [fp_offset] [line 51, size 32, align 32, offset 32] [from unsigned int]
!29 = metadata !{i32 786445, metadata !1, metadata !24, metadata !"overflow_arg_area", i32 51, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [overflow_arg_area] [line 51, size 64, align 64, offset 64] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786445, metadata !1, metadata !24, metadata !"reg_save_area", i32 51, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [reg_save_area] [line 51, size 64, align 64, offset 128] [from ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!34 = metadata !{i32 48, i32 0, metadata !4, null}
!35 = metadata !{i32 51, i32 0, metadata !19, null}
!36 = metadata !{i32 54, i32 0, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !19, i32 51, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/asprintf.c]
!38 = metadata !{i32 55, i32 0, metadata !19, null}
!39 = metadata !{i32 56, i32 0, metadata !4, null}
