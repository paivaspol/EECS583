; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/book.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }

@dummy = external global %struct.move_s

; Function Attrs: nounwind optsize readnone uwtable
define i32 @init_book() #0 {
entry:
  ret i32 1, !dbg !27
}

; Function Attrs: nounwind optsize uwtable
define void @choose_book_move(%struct.move_s* noalias nocapture sret %agg.result) #1 {
entry:
  %0 = bitcast %struct.move_s* %agg.result to i8*, !dbg !28
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !28, !tbaa.struct !29
  ret void, !dbg !28
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !8, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/book.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/book.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 14, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !15}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"init_book", metadata !"init_book", metadata !"", i32 16, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @init_book, null, null, metadata !8, i32 16} ; [ DW_TAG_subprogram ] [line 16] [def] [init_book]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/book.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"choose_book_move", metadata !"choose_book_move", metadata !"", i32 22, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.move_s*)* @choose_book_move, null, null, metadata !8, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [choose_book_move]
!16 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786454, metadata !1, null, metadata !"move_s", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [move_s] [line 102, size 0, align 0, offset 0] [from ]
!19 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 95, i64 192, i64 32, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 95, size 192, align 32, offset 0] [from ]
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26}
!21 = metadata !{i32 786445, metadata !4, metadata !19, metadata !"from", i32 96, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [from] [line 96, size 32, align 32, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !4, metadata !19, metadata !"target", i32 97, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [target] [line 97, size 32, align 32, offset 32] [from int]
!23 = metadata !{i32 786445, metadata !4, metadata !19, metadata !"captured", i32 98, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [captured] [line 98, size 32, align 32, offset 64] [from int]
!24 = metadata !{i32 786445, metadata !4, metadata !19, metadata !"promoted", i32 99, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [promoted] [line 99, size 32, align 32, offset 96] [from int]
!25 = metadata !{i32 786445, metadata !4, metadata !19, metadata !"castled", i32 100, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [castled] [line 100, size 32, align 32, offset 128] [from int]
!26 = metadata !{i32 786445, metadata !4, metadata !19, metadata !"ep", i32 101, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [ep] [line 101, size 32, align 32, offset 160] [from int]
!27 = metadata !{i32 18, i32 0, metadata !10, null}
!28 = metadata !{i32 24, i32 0, metadata !15, null}
!29 = metadata !{i64 0, i64 4, metadata !30, i64 4, i64 4, metadata !30, i64 8, i64 4, metadata !30, i64 12, i64 4, metadata !30, i64 16, i64 4, metadata !30, i64 20, i64 4, metadata !30}
!30 = metadata !{metadata !"int", metadata !31}
!31 = metadata !{metadata !"omnipotent char", metadata !32}
!32 = metadata !{metadata !"Simple C/C++ TBAA"}
