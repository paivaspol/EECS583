; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/m_amv_4dir.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind optsize uwtable
define void @mult_adj_su3_mat_vec_4dir(%struct.su3_matrix* %mat, %struct.su3_vector* %src, %struct.su3_vector* %dest) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.su3_matrix* %mat}, i64 0, metadata !32), !dbg !35
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %src}, i64 0, metadata !33), !dbg !35
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %dest}, i64 0, metadata !34), !dbg !36
  tail call void @mult_adj_su3_mat_vec(%struct.su3_matrix* %mat, %struct.su3_vector* %src, %struct.su3_vector* %dest) #3, !dbg !37
  %add.ptr2 = getelementptr inbounds %struct.su3_matrix* %mat, i64 1, !dbg !38
  %add.ptr3 = getelementptr inbounds %struct.su3_vector* %dest, i64 1, !dbg !38
  tail call void @mult_adj_su3_mat_vec(%struct.su3_matrix* %add.ptr2, %struct.su3_vector* %src, %struct.su3_vector* %add.ptr3) #3, !dbg !38
  %add.ptr4 = getelementptr inbounds %struct.su3_matrix* %mat, i64 2, !dbg !39
  %add.ptr5 = getelementptr inbounds %struct.su3_vector* %dest, i64 2, !dbg !39
  tail call void @mult_adj_su3_mat_vec(%struct.su3_matrix* %add.ptr4, %struct.su3_vector* %src, %struct.su3_vector* %add.ptr5) #3, !dbg !39
  %add.ptr6 = getelementptr inbounds %struct.su3_matrix* %mat, i64 3, !dbg !40
  %add.ptr7 = getelementptr inbounds %struct.su3_vector* %dest, i64 3, !dbg !40
  tail call void @mult_adj_su3_mat_vec(%struct.su3_matrix* %add.ptr6, %struct.su3_vector* %src, %struct.su3_vector* %add.ptr7) #3, !dbg !40
  ret void, !dbg !41
}

; Function Attrs: optsize
declare void @mult_adj_su3_mat_vec(%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_amv_4dir.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/m_amv_4dir.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mult_adj_su3_mat_vec_4dir", metadata !"mult_adj_su3_mat_vec_4dir", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*)* @mult_adj_su3_mat_vec_4dir, null, null, metadata !31, i32 15} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 15] [mult_adj_su3_mat_vec_4dir]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_amv_4dir.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !24, metadata !24}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from su3_matrix]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"su3_matrix", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [su3_matrix] [line 14, size 0, align 0, offset 0] [from ]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 14, i64 1152, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 1152, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/su3.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"e", i32 14, i64 1152, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [e] [line 14, size 1152, align 64, offset 0] [from ]
!14 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !15, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from complex]
!15 = metadata !{i32 786454, metadata !11, null, metadata !"complex", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [complex] [line 76, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 73, i64 128, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 73, size 128, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/complex.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"real", i32 74, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [real] [line 74, size 64, align 64, offset 0] [from double]
!20 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"imag", i32 75, i64 64, i64 64, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [imag] [line 75, size 64, align 64, offset 64] [from double]
!22 = metadata !{metadata !23, metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from su3_vector]
!25 = metadata !{i32 786454, metadata !1, null, metadata !"su3_vector", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [su3_vector] [line 15, size 0, align 0, offset 0] [from ]
!26 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 15, i64 384, i64 64, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 15, size 384, align 64, offset 0] [from ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"c", i32 15, i64 384, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [c] [line 15, size 384, align 64, offset 0] [from ]
!29 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !15, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from complex]
!30 = metadata !{metadata !23}
!31 = metadata !{metadata !32, metadata !33, metadata !34}
!32 = metadata !{i32 786689, metadata !4, metadata !"mat", metadata !5, i32 16777230, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mat] [line 14]
!33 = metadata !{i32 786689, metadata !4, metadata !"src", metadata !5, i32 33554446, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 14]
!34 = metadata !{i32 786689, metadata !4, metadata !"dest", metadata !5, i32 50331663, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 15]
!35 = metadata !{i32 14, i32 0, metadata !4, null}
!36 = metadata !{i32 15, i32 0, metadata !4, null}
!37 = metadata !{i32 16, i32 0, metadata !4, null}
!38 = metadata !{i32 17, i32 0, metadata !4, null}
!39 = metadata !{i32 18, i32 0, metadata !4, null}
!40 = metadata !{i32 19, i32 0, metadata !4, null}
!41 = metadata !{i32 20, i32 0, metadata !4, null}
