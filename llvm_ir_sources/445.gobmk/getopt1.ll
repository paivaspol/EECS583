; ModuleID = '../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gg_option = type { i8*, i32, i32*, i32 }

; Function Attrs: nounwind optsize uwtable
define i32 @gg_getopt_long(i32 %argc, i8** %argv, i8* %options, %struct.gg_option* %long_options, i32* %opt_index) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !26), !dbg !38
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !27), !dbg !39
  tail call void @llvm.dbg.value(metadata !{i8* %options}, i64 0, metadata !28), !dbg !40
  tail call void @llvm.dbg.value(metadata !{%struct.gg_option* %long_options}, i64 0, metadata !29), !dbg !41
  tail call void @llvm.dbg.value(metadata !{i32* %opt_index}, i64 0, metadata !30), !dbg !42
  %call = tail call i32 @getopt_internal(i32 %argc, i8** %argv, i8* %options, %struct.gg_option* %long_options, i32* %opt_index, i32 0) #3, !dbg !43
  ret i32 %call, !dbg !43
}

; Function Attrs: optsize
declare i32 @getopt_internal(i32, i8**, i8*, %struct.gg_option*, i32*, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @getopt_long_only(i32 %argc, i8** %argv, i8* %options, %struct.gg_option* %long_options, i32* %opt_index) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !33), !dbg !44
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !34), !dbg !45
  tail call void @llvm.dbg.value(metadata !{i8* %options}, i64 0, metadata !35), !dbg !46
  tail call void @llvm.dbg.value(metadata !{%struct.gg_option* %long_options}, i64 0, metadata !36), !dbg !47
  tail call void @llvm.dbg.value(metadata !{i32* %opt_index}, i64 0, metadata !37), !dbg !48
  %call = tail call i32 @getopt_internal(i32 %argc, i8** %argv, i8* %options, %struct.gg_option* %long_options, i32* %opt_index, i32 1) #3, !dbg !49
  ret i32 %call, !dbg !49
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt1.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt1.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !31}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gg_getopt_long", metadata !"gg_getopt_long", metadata !"", i32 65, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (i32, i8**, i8*, %struct.gg_option*, i32*)* @gg_getopt_long, null, null, metadata !25, i32 71} ; [ DW_TAG_subprogram ] [line 65] [def] [scope 71] [gg_getopt_long]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt1.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !9, metadata !13, metadata !15, metadata !23}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!10 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!12 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from gg_option]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"gg_option", i32 84, i64 256, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [gg_option] [line 84, size 256, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/gg-getopt.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !24}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"name", i32 87, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [name] [line 87, size 64, align 64, offset 0] [from ]
!21 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"has_arg", i32 93, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [has_arg] [line 93, size 32, align 32, offset 64] [from int]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"flag", i32 94, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [flag] [line 94, size 64, align 64, offset 128] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"val", i32 95, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [val] [line 95, size 32, align 32, offset 192] [from int]
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29, metadata !30}
!26 = metadata !{i32 786689, metadata !4, metadata !"argc", metadata !5, i32 16777282, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 66]
!27 = metadata !{i32 786689, metadata !4, metadata !"argv", metadata !5, i32 33554499, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 67]
!28 = metadata !{i32 786689, metadata !4, metadata !"options", metadata !5, i32 50331716, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [options] [line 68]
!29 = metadata !{i32 786689, metadata !4, metadata !"long_options", metadata !5, i32 67108933, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [long_options] [line 69]
!30 = metadata !{i32 786689, metadata !4, metadata !"opt_index", metadata !5, i32 83886150, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opt_index] [line 70]
!31 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"getopt_long_only", metadata !"getopt_long_only", metadata !"", i32 81, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (i32, i8**, i8*, %struct.gg_option*, i32*)* @getopt_long_only, null, null, metadata !32, i32 87} ; [ DW_TAG_subprogram ] [line 81] [def] [scope 87] [getopt_long_only]
!32 = metadata !{metadata !33, metadata !34, metadata !35, metadata !36, metadata !37}
!33 = metadata !{i32 786689, metadata !31, metadata !"argc", metadata !5, i32 16777298, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 82]
!34 = metadata !{i32 786689, metadata !31, metadata !"argv", metadata !5, i32 33554515, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 83]
!35 = metadata !{i32 786689, metadata !31, metadata !"options", metadata !5, i32 50331732, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [options] [line 84]
!36 = metadata !{i32 786689, metadata !31, metadata !"long_options", metadata !5, i32 67108949, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [long_options] [line 85]
!37 = metadata !{i32 786689, metadata !31, metadata !"opt_index", metadata !5, i32 83886166, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opt_index] [line 86]
!38 = metadata !{i32 66, i32 0, metadata !4, null}
!39 = metadata !{i32 67, i32 0, metadata !4, null}
!40 = metadata !{i32 68, i32 0, metadata !4, null}
!41 = metadata !{i32 69, i32 0, metadata !4, null}
!42 = metadata !{i32 70, i32 0, metadata !4, null}
!43 = metadata !{i32 72, i32 0, metadata !4, null}
!44 = metadata !{i32 82, i32 0, metadata !31, null}
!45 = metadata !{i32 83, i32 0, metadata !31, null}
!46 = metadata !{i32 84, i32 0, metadata !31, null}
!47 = metadata !{i32 85, i32 0, metadata !31, null}
!48 = metadata !{i32 86, i32 0, metadata !31, null}
!49 = metadata !{i32 88, i32 0, metadata !31, null}
