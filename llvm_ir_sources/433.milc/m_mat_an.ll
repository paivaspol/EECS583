; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/m_mat_an.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize uwtable
define void @mult_su3_an(%struct.su3_matrix* nocapture %a, %struct.su3_matrix* nocapture %b, %struct.su3_matrix* nocapture %c) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.su3_matrix* %a}, i64 0, metadata !25), !dbg !34
  tail call void @llvm.dbg.value(metadata !{%struct.su3_matrix* %b}, i64 0, metadata !26), !dbg !34
  tail call void @llvm.dbg.value(metadata !{%struct.su3_matrix* %c}, i64 0, metadata !27), !dbg !34
  tail call void @llvm.dbg.declare(metadata !35, metadata !32), !dbg !36
  tail call void @llvm.dbg.declare(metadata !35, metadata !33), !dbg !36
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !28), !dbg !37
  br label %for.cond1.preheader, !dbg !37

for.cond1.preheader:                              ; preds = %for.inc71, %entry
  %indvars.iv111 = phi i64 [ 0, %entry ], [ %indvars.iv.next112, %for.inc71 ]
  br label %for.cond4.preheader, !dbg !39

for.cond4.preheader:                              ; preds = %for.end, %for.cond1.preheader
  %indvars.iv107 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next108, %for.end ]
  br label %for.body6, !dbg !41

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %x.sroa.0.0104 = phi double [ 0.000000e+00, %for.cond4.preheader ], [ %add59, %for.body6 ]
  %x.sroa.1.0103 = phi double [ 0.000000e+00, %for.cond4.preheader ], [ %add62, %for.body6 ]
  %real9 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv111, i32 0, !dbg !44
  %0 = load double* %real9, align 8, !dbg !44, !tbaa !47
  %real15 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv107, i32 0, !dbg !44
  %1 = load double* %real15, align 8, !dbg !44, !tbaa !47
  %mul = fmul double %0, %1, !dbg !44
  %imag21 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv111, i32 1, !dbg !44
  %2 = load double* %imag21, align 8, !dbg !44, !tbaa !47
  %imag27 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv107, i32 1, !dbg !44
  %3 = load double* %imag27, align 8, !dbg !44, !tbaa !47
  %mul28 = fmul double %2, %3, !dbg !44
  %add = fadd double %mul, %mul28, !dbg !44
  %mul42 = fmul double %0, %3, !dbg !44
  %mul55 = fmul double %1, %2, !dbg !44
  %sub = fsub double %mul42, %mul55, !dbg !44
  %add59 = fadd double %x.sroa.0.0104, %add, !dbg !50
  %add62 = fadd double %x.sroa.1.0103, %sub, !dbg !50
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !41
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !41
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !41
  br i1 %exitcond, label %for.end, label %for.body6, !dbg !41

for.end:                                          ; preds = %for.body6
  %x.sroa.0.0.idx = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv111, i64 %indvars.iv107, i32 0, !dbg !52
  store double %add59, double* %x.sroa.0.0.idx, align 8, !dbg !52
  %x.sroa.1.8.idx74 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv111, i64 %indvars.iv107, i32 1, !dbg !52
  store double %add62, double* %x.sroa.1.8.idx74, align 8, !dbg !52
  %indvars.iv.next108 = add i64 %indvars.iv107, 1, !dbg !39
  %lftr.wideiv109 = trunc i64 %indvars.iv.next108 to i32, !dbg !39
  %exitcond110 = icmp eq i32 %lftr.wideiv109, 3, !dbg !39
  br i1 %exitcond110, label %for.inc71, label %for.cond4.preheader, !dbg !39

for.inc71:                                        ; preds = %for.end
  %indvars.iv.next112 = add i64 %indvars.iv111, 1, !dbg !37
  %lftr.wideiv113 = trunc i64 %indvars.iv.next112 to i32, !dbg !37
  %exitcond114 = icmp eq i32 %lftr.wideiv113, 3, !dbg !37
  br i1 %exitcond114, label %for.end73, label %for.cond1.preheader, !dbg !37

for.end73:                                        ; preds = %for.inc71
  ret void, !dbg !53
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_mat_an.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/m_mat_an.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mult_su3_an", metadata !"mult_su3_an", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*)* @mult_su3_an, null, null, metadata !24, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [mult_su3_an]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_mat_an.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !8}
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
!24 = metadata !{metadata !25, metadata !26, metadata !27, metadata !28, metadata !30, metadata !31, metadata !32, metadata !33}
!25 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 12]
!26 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !5, i32 33554444, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 12]
!27 = metadata !{i32 786689, metadata !4, metadata !"c", metadata !5, i32 50331660, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 12]
!28 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 13, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 13]
!29 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!30 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 13, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 13]
!31 = metadata !{i32 786688, metadata !4, metadata !"k", metadata !5, i32 13, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 13]
!32 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 14, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!33 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 14, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 14]
!34 = metadata !{i32 12, i32 0, metadata !4, null}
!35 = metadata !{%struct.complex* undef}
!36 = metadata !{i32 14, i32 0, metadata !4, null}
!37 = metadata !{i32 15, i32 0, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !4, i32 15, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_mat_an.c]
!39 = metadata !{i32 15, i32 0, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !38, i32 15, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_mat_an.c]
!41 = metadata !{i32 17, i32 0, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !43, i32 17, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_mat_an.c]
!43 = metadata !{i32 786443, metadata !1, metadata !40, i32 15, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_mat_an.c]
!44 = metadata !{i32 18, i32 0, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 18, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_mat_an.c]
!46 = metadata !{i32 786443, metadata !1, metadata !42, i32 17, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_mat_an.c]
!47 = metadata !{metadata !"double", metadata !48}
!48 = metadata !{metadata !"omnipotent char", metadata !49}
!49 = metadata !{metadata !"Simple C/C++ TBAA"}
!50 = metadata !{i32 19, i32 0, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !46, i32 19, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_mat_an.c]
!52 = metadata !{i32 21, i32 0, metadata !43, null}
!53 = metadata !{i32 23, i32 0, metadata !4, null}
