; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/su3_adjoint.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize uwtable
define void @su3_adjoint(%struct.su3_matrix* nocapture %a, %struct.su3_matrix* nocapture %b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.su3_matrix* %a}, i64 0, metadata !25), !dbg !30
  tail call void @llvm.dbg.value(metadata !{%struct.su3_matrix* %b}, i64 0, metadata !26), !dbg !30
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !27), !dbg !31
  br label %for.cond1.preheader, !dbg !31

for.cond1.preheader:                              ; preds = %for.inc23, %entry
  %indvars.iv39 = phi i64 [ 0, %entry ], [ %indvars.iv.next40, %for.inc23 ]
  br label %for.body3, !dbg !33

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %real = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv39, i32 0, !dbg !35
  %0 = load double* %real, align 8, !dbg !35, !tbaa !38
  %real11 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv39, i64 %indvars.iv, i32 0, !dbg !35
  store double %0, double* %real11, align 8, !dbg !35, !tbaa !38
  %imag = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv39, i32 1, !dbg !35
  %1 = load double* %imag, align 8, !dbg !35, !tbaa !38
  %sub = fsub double -0.000000e+00, %1, !dbg !35
  %imag22 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv39, i64 %indvars.iv, i32 1, !dbg !35
  store double %sub, double* %imag22, align 8, !dbg !35, !tbaa !38
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !33
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !33
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !33
  br i1 %exitcond, label %for.inc23, label %for.body3, !dbg !33

for.inc23:                                        ; preds = %for.body3
  %indvars.iv.next40 = add i64 %indvars.iv39, 1, !dbg !31
  %lftr.wideiv41 = trunc i64 %indvars.iv.next40 to i32, !dbg !31
  %exitcond42 = icmp eq i32 %lftr.wideiv41, 3, !dbg !31
  br i1 %exitcond42, label %for.end25, label %for.cond1.preheader, !dbg !31

for.end25:                                        ; preds = %for.inc23
  ret void, !dbg !41
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_adjoint.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/su3_adjoint.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"su3_adjoint", metadata !"su3_adjoint", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.su3_matrix*, %struct.su3_matrix*)* @su3_adjoint, null, null, metadata !24, i32 11} ; [ DW_TAG_subprogram ] [line 11] [def] [su3_adjoint]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_adjoint.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8}
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
!24 = metadata !{metadata !25, metadata !26, metadata !27, metadata !29}
!25 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777227, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 11]
!26 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !5, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 11]
!27 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 12, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 12]
!28 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!29 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 12, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 12]
!30 = metadata !{i32 11, i32 0, metadata !4, null}
!31 = metadata !{i32 13, i32 0, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_adjoint.c]
!33 = metadata !{i32 13, i32 0, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !32, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_adjoint.c]
!35 = metadata !{i32 14, i32 0, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !37, i32 14, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_adjoint.c]
!37 = metadata !{i32 786443, metadata !1, metadata !34, i32 13, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_adjoint.c]
!38 = metadata !{metadata !"double", metadata !39}
!39 = metadata !{metadata !"omnipotent char", metadata !40}
!40 = metadata !{metadata !"Simple C/C++ TBAA"}
!41 = metadata !{i32 16, i32 0, metadata !4, null}
