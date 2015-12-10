; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/trace_su3.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize readonly uwtable
define { double, double } @trace_su3(%struct.su3_matrix* nocapture %a) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.su3_matrix* %a}, i64 0, metadata !25), !dbg !28
  tail call void @llvm.dbg.declare(metadata !29, metadata !26), !dbg !30
  tail call void @llvm.dbg.declare(metadata !29, metadata !27), !dbg !30
  %real = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 0, i64 0, i32 0, !dbg !31
  %0 = load double* %real, align 8, !dbg !31, !tbaa !33
  %real5 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 1, i64 1, i32 0, !dbg !31
  %1 = load double* %real5, align 8, !dbg !31, !tbaa !33
  %add = fadd double %0, %1, !dbg !31
  %imag = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 0, i64 0, i32 1, !dbg !31
  %2 = load double* %imag, align 8, !dbg !31, !tbaa !33
  %imag13 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 1, i64 1, i32 1, !dbg !31
  %3 = load double* %imag13, align 8, !dbg !31, !tbaa !33
  %add14 = fadd double %2, %3, !dbg !31
  %real20 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 2, i64 2, i32 0, !dbg !36
  %4 = load double* %real20, align 8, !dbg !36, !tbaa !33
  %add21 = fadd double %add, %4, !dbg !36
  %imag27 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 2, i64 2, i32 1, !dbg !36
  %5 = load double* %imag27, align 8, !dbg !36, !tbaa !33
  %add28 = fadd double %add14, %5, !dbg !36
  %.fca.0.insert = insertvalue { double, double } undef, double %add21, 0, !dbg !38
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %add28, 1, !dbg !38
  ret { double, double } %.fca.1.insert, !dbg !38
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/trace_su3.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/trace_su3.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"trace_su3", metadata !"trace_su3", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, { double, double } (%struct.su3_matrix*)* @trace_su3, null, null, metadata !24, i32 11} ; [ DW_TAG_subprogram ] [line 11] [def] [trace_su3]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/trace_su3.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !15}
!8 = metadata !{i32 786454, metadata !1, null, metadata !"complex", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [complex] [line 76, size 0, align 0, offset 0] [from ]
!9 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 73, i64 128, i64 64, i32 0, i32 0, null, metadata !11, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 73, size 128, align 64, offset 0] [from ]
!10 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/complex.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !14}
!12 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"real", i32 74, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [real] [line 74, size 64, align 64, offset 0] [from double]
!13 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!14 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"imag", i32 75, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ] [imag] [line 75, size 64, align 64, offset 64] [from double]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from su3_matrix]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"su3_matrix", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [su3_matrix] [line 14, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 14, i64 1152, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 1152, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/su3.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"e", i32 14, i64 1152, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [e] [line 14, size 1152, align 64, offset 0] [from ]
!21 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !8, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from complex]
!22 = metadata !{metadata !23, metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!24 = metadata !{metadata !25, metadata !26, metadata !27}
!25 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777227, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 11]
!26 = metadata !{i32 786688, metadata !4, metadata !"t1", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t1] [line 12]
!27 = metadata !{i32 786688, metadata !4, metadata !"t2", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t2] [line 12]
!28 = metadata !{i32 11, i32 0, metadata !4, null}
!29 = metadata !{%struct.complex* undef}
!30 = metadata !{i32 12, i32 0, metadata !4, null}
!31 = metadata !{i32 13, i32 0, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/trace_su3.c]
!33 = metadata !{metadata !"double", metadata !34}
!34 = metadata !{metadata !"omnipotent char", metadata !35}
!35 = metadata !{metadata !"Simple C/C++ TBAA"}
!36 = metadata !{i32 14, i32 0, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/trace_su3.c]
!38 = metadata !{i32 15, i32 0, metadata !4, null}
