; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/m_su2_mat_vec_a.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su2_matrix = type { [2 x [2 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize uwtable
define void @mult_su2_mat_vec_elem_a(%struct.su2_matrix* nocapture %u, %struct.complex* nocapture %x0, %struct.complex* nocapture %x1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.su2_matrix* %u}, i64 0, metadata !26), !dbg !33
  tail call void @llvm.dbg.value(metadata !{%struct.complex* %x0}, i64 0, metadata !27), !dbg !33
  tail call void @llvm.dbg.value(metadata !{%struct.complex* %x1}, i64 0, metadata !28), !dbg !33
  tail call void @llvm.dbg.declare(metadata !34, metadata !29), !dbg !35
  tail call void @llvm.dbg.declare(metadata !34, metadata !30), !dbg !35
  tail call void @llvm.dbg.declare(metadata !34, metadata !31), !dbg !35
  tail call void @llvm.dbg.declare(metadata !34, metadata !32), !dbg !35
  %t0.sroa.0.0.idx = getelementptr inbounds %struct.complex* %x0, i64 0, i32 0, !dbg !36
  %t0.sroa.0.0.copyload = load double* %t0.sroa.0.0.idx, align 8, !dbg !36
  %t0.sroa.1.8.idx132 = getelementptr inbounds %struct.complex* %x0, i64 0, i32 1, !dbg !36
  %t0.sroa.1.8.copyload = load double* %t0.sroa.1.8.idx132, align 8, !dbg !36
  %t1.sroa.0.0.idx = getelementptr inbounds %struct.complex* %x1, i64 0, i32 0, !dbg !36
  %t1.sroa.0.0.copyload = load double* %t1.sroa.0.0.idx, align 8, !dbg !36
  %t1.sroa.1.8.idx125 = getelementptr inbounds %struct.complex* %x1, i64 0, i32 1, !dbg !36
  %t1.sroa.1.8.copyload = load double* %t1.sroa.1.8.idx125, align 8, !dbg !36
  %real2 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 0, i32 0, !dbg !37
  %0 = load double* %real2, align 8, !dbg !37, !tbaa !39
  %mul = fmul double %t0.sroa.0.0.copyload, %0, !dbg !37
  %imag6 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 0, i32 1, !dbg !37
  %1 = load double* %imag6, align 8, !dbg !37, !tbaa !39
  %mul7 = fmul double %t0.sroa.1.8.copyload, %1, !dbg !37
  %add = fadd double %mul, %mul7, !dbg !37
  %mul14 = fmul double %t0.sroa.1.8.copyload, %0, !dbg !37
  %mul20 = fmul double %t0.sroa.0.0.copyload, %1, !dbg !37
  %sub = fsub double %mul14, %mul20, !dbg !37
  %real26 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 1, i32 0, !dbg !42
  %2 = load double* %real26, align 8, !dbg !42, !tbaa !39
  %mul27 = fmul double %t1.sroa.0.0.copyload, %2, !dbg !42
  %imag32 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 1, i32 1, !dbg !42
  %3 = load double* %imag32, align 8, !dbg !42, !tbaa !39
  %mul33 = fmul double %t1.sroa.1.8.copyload, %3, !dbg !42
  %add34 = fadd double %mul27, %mul33, !dbg !42
  %mul41 = fmul double %t1.sroa.1.8.copyload, %2, !dbg !42
  %mul47 = fmul double %t1.sroa.0.0.copyload, %3, !dbg !42
  %sub48 = fsub double %mul41, %mul47, !dbg !42
  %add52 = fadd double %add, %add34, !dbg !44
  store double %add52, double* %t0.sroa.0.0.idx, align 8, !dbg !44, !tbaa !39
  %add56 = fadd double %sub, %sub48, !dbg !44
  store double %add56, double* %t0.sroa.1.8.idx132, align 8, !dbg !44, !tbaa !39
  %real62 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 0, i32 0, !dbg !46
  %4 = load double* %real62, align 8, !dbg !46, !tbaa !39
  %mul63 = fmul double %t0.sroa.0.0.copyload, %4, !dbg !46
  %imag68 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 0, i32 1, !dbg !46
  %5 = load double* %imag68, align 8, !dbg !46, !tbaa !39
  %mul69 = fmul double %t0.sroa.1.8.copyload, %5, !dbg !46
  %add70 = fadd double %mul63, %mul69, !dbg !46
  %mul77 = fmul double %t0.sroa.1.8.copyload, %4, !dbg !46
  %mul83 = fmul double %t0.sroa.0.0.copyload, %5, !dbg !46
  %sub84 = fsub double %mul77, %mul83, !dbg !46
  %real90 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 1, i32 0, !dbg !48
  %6 = load double* %real90, align 8, !dbg !48, !tbaa !39
  %mul91 = fmul double %t1.sroa.0.0.copyload, %6, !dbg !48
  %imag96 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 1, i32 1, !dbg !48
  %7 = load double* %imag96, align 8, !dbg !48, !tbaa !39
  %mul97 = fmul double %t1.sroa.1.8.copyload, %7, !dbg !48
  %add98 = fadd double %mul91, %mul97, !dbg !48
  %mul105 = fmul double %t1.sroa.1.8.copyload, %6, !dbg !48
  %mul111 = fmul double %t1.sroa.0.0.copyload, %7, !dbg !48
  %sub112 = fsub double %mul105, %mul111, !dbg !48
  %add116 = fadd double %add70, %add98, !dbg !50
  store double %add116, double* %t1.sroa.0.0.idx, align 8, !dbg !50, !tbaa !39
  %add120 = fadd double %sub84, %sub112, !dbg !50
  store double %add120, double* %t1.sroa.1.8.idx125, align 8, !dbg !50, !tbaa !39
  ret void, !dbg !52
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_su2_mat_vec_a.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/m_su2_mat_vec_a.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mult_su2_mat_vec_elem_a", metadata !"mult_su2_mat_vec_elem_a", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.su2_matrix*, %struct.complex*, %struct.complex*)* @mult_su2_mat_vec_elem_a, null, null, metadata !25, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [mult_su2_mat_vec_elem_a]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_su2_mat_vec_a.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !24, metadata !24}
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
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from complex]
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32}
!26 = metadata !{i32 786689, metadata !4, metadata !"u", metadata !5, i32 16777226, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [u] [line 10]
!27 = metadata !{i32 786689, metadata !4, metadata !"x0", metadata !5, i32 33554442, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 10]
!28 = metadata !{i32 786689, metadata !4, metadata !"x1", metadata !5, i32 50331658, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 10]
!29 = metadata !{i32 786688, metadata !4, metadata !"z0", metadata !5, i32 17, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z0] [line 17]
!30 = metadata !{i32 786688, metadata !4, metadata !"z1", metadata !5, i32 17, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z1] [line 17]
!31 = metadata !{i32 786688, metadata !4, metadata !"t0", metadata !5, i32 17, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t0] [line 17]
!32 = metadata !{i32 786688, metadata !4, metadata !"t1", metadata !5, i32 17, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t1] [line 17]
!33 = metadata !{i32 10, i32 0, metadata !4, null}
!34 = metadata !{%struct.complex* undef}
!35 = metadata !{i32 17, i32 0, metadata !4, null}
!36 = metadata !{i32 19, i32 0, metadata !4, null}
!37 = metadata !{i32 21, i32 0, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_su2_mat_vec_a.c]
!39 = metadata !{metadata !"double", metadata !40}
!40 = metadata !{metadata !"omnipotent char", metadata !41}
!41 = metadata !{metadata !"Simple C/C++ TBAA"}
!42 = metadata !{i32 22, i32 0, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_su2_mat_vec_a.c]
!44 = metadata !{i32 23, i32 0, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !4, i32 23, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_su2_mat_vec_a.c]
!46 = metadata !{i32 24, i32 0, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !4, i32 24, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_su2_mat_vec_a.c]
!48 = metadata !{i32 25, i32 0, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !4, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_su2_mat_vec_a.c]
!50 = metadata !{i32 26, i32 0, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !4, i32 26, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/m_su2_mat_vec_a.c]
!52 = metadata !{i32 28, i32 0, metadata !4, null}
