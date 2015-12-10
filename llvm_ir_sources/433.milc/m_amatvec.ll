; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/m_amatvec.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind optsize uwtable
define void @mult_adj_su3_mat_vec(%struct.su3_matrix* nocapture %a, %struct.su3_vector* nocapture %b, %struct.su3_vector* nocapture %c) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.su3_matrix* %a}, i64 0, metadata !32), !dbg !41
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %b}, i64 0, metadata !33), !dbg !41
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %c}, i64 0, metadata !34), !dbg !41
  tail call void @llvm.dbg.declare(metadata !42, metadata !38), !dbg !43
  tail call void @llvm.dbg.declare(metadata !42, metadata !39), !dbg !43
  tail call void @llvm.dbg.declare(metadata !42, metadata !40), !dbg !43
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !35), !dbg !44
  br label %for.cond1.preheader, !dbg !44

for.cond1.preheader:                              ; preds = %for.end, %entry
  %indvars.iv74 = phi i64 [ 0, %entry ], [ %indvars.iv.next75, %for.end ]
  br label %for.body3, !dbg !46

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %x.sroa.1.071 = phi double [ 0.000000e+00, %for.cond1.preheader ], [ %add46, %for.body3 ]
  %x.sroa.0.070 = phi double [ 0.000000e+00, %for.cond1.preheader ], [ %add43, %for.body3 ]
  %real6 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv74, i32 0, !dbg !49
  %0 = load double* %real6, align 8, !dbg !49, !tbaa !52
  %imag13 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv74, i32 1, !dbg !49
  %1 = load double* %imag13, align 8, !dbg !49, !tbaa !52
  %sub = fsub double -0.000000e+00, %1, !dbg !49
  %real19 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !55
  %2 = load double* %real19, align 8, !dbg !55, !tbaa !52
  %mul = fmul double %0, %2, !dbg !55
  %imag24 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !55
  %3 = load double* %imag24, align 8, !dbg !55, !tbaa !52
  %mul25 = fmul double %3, %sub, !dbg !55
  %sub26 = fsub double %mul, %mul25, !dbg !55
  %mul33 = fmul double %0, %3, !dbg !55
  %mul39 = fmul double %2, %sub, !dbg !55
  %add = fadd double %mul39, %mul33, !dbg !55
  %add43 = fadd double %x.sroa.0.070, %sub26, !dbg !57
  %add46 = fadd double %x.sroa.1.071, %add, !dbg !57
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !46
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !46
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !46
  br i1 %exitcond, label %for.end, label %for.body3, !dbg !46

for.end:                                          ; preds = %for.body3
  %x.sroa.0.0.idx = getelementptr inbounds %struct.su3_vector* %c, i64 0, i32 0, i64 %indvars.iv74, i32 0, !dbg !59
  store double %add43, double* %x.sroa.0.0.idx, align 8, !dbg !59
  %x.sroa.1.8.idx55 = getelementptr inbounds %struct.su3_vector* %c, i64 0, i32 0, i64 %indvars.iv74, i32 1, !dbg !59
  store double %add46, double* %x.sroa.1.8.idx55, align 8, !dbg !59
  %indvars.iv.next75 = add i64 %indvars.iv74, 1, !dbg !44
  %lftr.wideiv76 = trunc i64 %indvars.iv.next75 to i32, !dbg !44
  %exitcond77 = icmp eq i32 %lftr.wideiv76, 3, !dbg !44
  br i1 %exitcond77, label %for.end52, label %for.cond1.preheader, !dbg !44

for.end52:                                        ; preds = %for.end
  ret void, !dbg !60
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_amatvec.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/m_amatvec.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mult_adj_su3_mat_vec", metadata !"mult_adj_su3_mat_vec", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*)* @mult_adj_su3_mat_vec, null, null, metadata !31, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [mult_adj_su3_mat_vec]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_amatvec.c]
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
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35, metadata !37, metadata !38, metadata !39, metadata !40}
!32 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 12]
!33 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !5, i32 33554444, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 12]
!34 = metadata !{i32 786689, metadata !4, metadata !"c", metadata !5, i32 50331660, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 12]
!35 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 13, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 13]
!36 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!37 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 13, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 13]
!38 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 14, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!39 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 14, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 14]
!40 = metadata !{i32 786688, metadata !4, metadata !"z", metadata !5, i32 14, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 14]
!41 = metadata !{i32 12, i32 0, metadata !4, null}
!42 = metadata !{%struct.complex* undef}
!43 = metadata !{i32 14, i32 0, metadata !4, null}
!44 = metadata !{i32 15, i32 0, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !4, i32 15, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_amatvec.c]
!46 = metadata !{i32 17, i32 0, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !48, i32 17, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_amatvec.c]
!48 = metadata !{i32 786443, metadata !1, metadata !45, i32 15, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_amatvec.c]
!49 = metadata !{i32 18, i32 0, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !51, i32 18, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_amatvec.c]
!51 = metadata !{i32 786443, metadata !1, metadata !47, i32 17, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_amatvec.c]
!52 = metadata !{metadata !"double", metadata !53}
!53 = metadata !{metadata !"omnipotent char", metadata !54}
!54 = metadata !{metadata !"Simple C/C++ TBAA"}
!55 = metadata !{i32 19, i32 0, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !51, i32 19, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_amatvec.c]
!57 = metadata !{i32 20, i32 0, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !51, i32 20, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_amatvec.c]
!59 = metadata !{i32 22, i32 0, metadata !48, null}
!60 = metadata !{i32 24, i32 0, metadata !4, null}
