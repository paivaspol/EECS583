; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/realtr.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize readonly uwtable
define double @realtrace_su3(%struct.su3_matrix* nocapture %a, %struct.su3_matrix* nocapture %b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.su3_matrix* %a}, i64 0, metadata !25), !dbg !31
  tail call void @llvm.dbg.value(metadata !{%struct.su3_matrix* %b}, i64 0, metadata !26), !dbg !31
  tail call void @llvm.dbg.value(metadata !32, i64 0, metadata !30), !dbg !33
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !27), !dbg !33
  br label %for.cond1.preheader, !dbg !33

for.cond1.preheader:                              ; preds = %for.inc25, %entry
  %indvars.iv45 = phi i64 [ 0, %entry ], [ %indvars.iv.next46, %for.inc25 ]
  %sum.044 = phi double [ 0.000000e+00, %entry ], [ %add24, %for.inc25 ]
  br label %for.body3, !dbg !35

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %sum.142 = phi double [ %sum.044, %for.cond1.preheader ], [ %add24, %for.body3 ]
  %real = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv45, i64 %indvars.iv, i32 0, !dbg !37
  %0 = load double* %real, align 8, !dbg !37, !tbaa !38
  %real11 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv45, i64 %indvars.iv, i32 0, !dbg !37
  %1 = load double* %real11, align 8, !dbg !37, !tbaa !38
  %mul = fmul double %0, %1, !dbg !37
  %imag = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv45, i64 %indvars.iv, i32 1, !dbg !37
  %2 = load double* %imag, align 8, !dbg !37, !tbaa !38
  %imag22 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv45, i64 %indvars.iv, i32 1, !dbg !37
  %3 = load double* %imag22, align 8, !dbg !37, !tbaa !38
  %mul23 = fmul double %2, %3, !dbg !37
  %add = fadd double %mul, %mul23, !dbg !37
  %add24 = fadd double %sum.142, %add, !dbg !37
  tail call void @llvm.dbg.value(metadata !{double %add24}, i64 0, metadata !30), !dbg !37
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !35
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !35
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !35
  br i1 %exitcond, label %for.inc25, label %for.body3, !dbg !35

for.inc25:                                        ; preds = %for.body3
  %indvars.iv.next46 = add i64 %indvars.iv45, 1, !dbg !33
  %lftr.wideiv47 = trunc i64 %indvars.iv.next46 to i32, !dbg !33
  %exitcond48 = icmp eq i32 %lftr.wideiv47, 3, !dbg !33
  br i1 %exitcond48, label %for.end27, label %for.cond1.preheader, !dbg !33

for.end27:                                        ; preds = %for.inc25
  ret double %add24, !dbg !41
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/realtr.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/realtr.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"realtrace_su3", metadata !"realtrace_su3", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct.su3_matrix*, %struct.su3_matrix*)* @realtrace_su3, null, null, metadata !24, i32 10} ; [ DW_TAG_subprogram ] [line 10] [def] [realtrace_su3]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/realtr.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from su3_matrix]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"su3_matrix", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [su3_matrix] [line 14, size 0, align 0, offset 0] [from ]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"", i32 14, i64 1152, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 1152, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/su3.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"e", i32 14, i64 1152, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [e] [line 14, size 1152, align 64, offset 0] [from ]
!15 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !16, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from complex]
!16 = metadata !{i32 786454, metadata !12, null, metadata !"complex", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [complex] [line 76, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 73, i64 128, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 73, size 128, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/complex.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !21}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"real", i32 74, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [real] [line 74, size 64, align 64, offset 0] [from double]
!21 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"imag", i32 75, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [imag] [line 75, size 64, align 64, offset 64] [from double]
!22 = metadata !{metadata !23, metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!24 = metadata !{metadata !25, metadata !26, metadata !27, metadata !29, metadata !30}
!25 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777226, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 10]
!26 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !5, i32 33554442, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 10]
!27 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 11, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 11]
!28 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!29 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 11, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 11]
!30 = metadata !{i32 786688, metadata !4, metadata !"sum", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 12]
!31 = metadata !{i32 10, i32 0, metadata !4, null}
!32 = metadata !{double 0.000000e+00}
!33 = metadata !{i32 13, i32 0, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/realtr.c]
!35 = metadata !{i32 13, i32 0, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !34, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/realtr.c]
!37 = metadata !{i32 14, i32 0, metadata !36, null}
!38 = metadata !{metadata !"double", metadata !39}
!39 = metadata !{metadata !"omnipotent char", metadata !40}
!40 = metadata !{metadata !"Simple C/C++ TBAA"}
!41 = metadata !{i32 15, i32 0, metadata !4, null}
