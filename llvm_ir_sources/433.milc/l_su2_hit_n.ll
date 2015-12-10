; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/l_su2_hit_n.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su2_matrix = type { [2 x [2 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

; Function Attrs: nounwind optsize uwtable
define void @left_su2_hit_n(%struct.su2_matrix* %u, i32 %p, i32 %q, %struct.su3_matrix* %link) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.su2_matrix* %u}, i64 0, metadata !34), !dbg !39
  tail call void @llvm.dbg.value(metadata !{i32 %p}, i64 0, metadata !35), !dbg !39
  tail call void @llvm.dbg.value(metadata !{i32 %q}, i64 0, metadata !36), !dbg !39
  tail call void @llvm.dbg.value(metadata !{%struct.su3_matrix* %link}, i64 0, metadata !37), !dbg !39
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !38), !dbg !40
  %idxprom1 = sext i32 %p to i64, !dbg !42
  %idxprom4 = sext i32 %q to i64, !dbg !42
  br label %for.body, !dbg !40

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx2 = getelementptr inbounds %struct.su3_matrix* %link, i64 0, i32 0, i64 %idxprom1, i64 %indvars.iv, !dbg !42
  %arrayidx7 = getelementptr inbounds %struct.su3_matrix* %link, i64 0, i32 0, i64 %idxprom4, i64 %indvars.iv, !dbg !42
  tail call void @mult_su2_mat_vec_elem_n(%struct.su2_matrix* %u, %struct.complex* %arrayidx2, %struct.complex* %arrayidx7) #3, !dbg !42
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !40
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !40
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !40
  br i1 %exitcond, label %for.end, label %for.body, !dbg !40

for.end:                                          ; preds = %for.body
  ret void, !dbg !43
}

; Function Attrs: optsize
declare void @mult_su2_mat_vec_elem_n(%struct.su2_matrix*, %struct.complex*, %struct.complex*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/l_su2_hit_n.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/l_su2_hit_n.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"left_su2_hit_n", metadata !"left_su2_hit_n", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.su2_matrix*, i32, i32, %struct.su3_matrix*)* @left_su2_hit_n, null, null, metadata !33, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [left_su2_hit_n]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/l_su2_hit_n.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !24, metadata !24, metadata !25}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from su2_matrix]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"su2_matrix", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [su2_matrix] [line 20, size 0, align 0, offset 0] [from ]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 20, i64 512, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 20, size 512, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/su3.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"e", i32 20, i64 512, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [e] [line 20, size 512, align 64, offset 0] [from ]
!14 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !15, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from complex]
!15 = metadata !{i32 786454, metadata !11, null, metadata !"complex", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [complex] [line 76, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 73, i64 128, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 73, size 128, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/complex.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"real", i32 74, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [real] [line 74, size 64, align 64, offset 0] [from double]
!20 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"imag", i32 75, i64 64, i64 64, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [imag] [line 75, size 64, align 64, offset 64] [from double]
!22 = metadata !{metadata !23, metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from su3_matrix]
!26 = metadata !{i32 786454, metadata !1, null, metadata !"su3_matrix", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [su3_matrix] [line 14, size 0, align 0, offset 0] [from ]
!27 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 14, i64 1152, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 1152, align 64, offset 0] [from ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786445, metadata !11, metadata !27, metadata !"e", i32 14, i64 1152, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [e] [line 14, size 1152, align 64, offset 0] [from ]
!30 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !15, metadata !31, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from complex]
!31 = metadata !{metadata !32, metadata !32}
!32 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38}
!34 = metadata !{i32 786689, metadata !4, metadata !"u", metadata !5, i32 16777226, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [u] [line 10]
!35 = metadata !{i32 786689, metadata !4, metadata !"p", metadata !5, i32 33554442, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 10]
!36 = metadata !{i32 786689, metadata !4, metadata !"q", metadata !5, i32 50331658, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [q] [line 10]
!37 = metadata !{i32 786689, metadata !4, metadata !"link", metadata !5, i32 67108874, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [link] [line 10]
!38 = metadata !{i32 786688, metadata !4, metadata !"m", metadata !5, i32 17, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 17]
!39 = metadata !{i32 10, i32 0, metadata !4, null}
!40 = metadata !{i32 19, i32 0, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/l_su2_hit_n.c]
!42 = metadata !{i32 20, i32 0, metadata !41, null}
!43 = metadata !{i32 22, i32 0, metadata !4, null}
