; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/su3_rdot.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize readonly uwtable
define double @su3_rdot(%struct.su3_vector* nocapture %a, %struct.su3_vector* nocapture %b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %a}, i64 0, metadata !25), !dbg !29
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %b}, i64 0, metadata !26), !dbg !29
  %real = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 0, i32 0, !dbg !30
  %0 = load double* %real, align 8, !dbg !30, !tbaa !31
  %real3 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 0, i32 0, !dbg !30
  %1 = load double* %real3, align 8, !dbg !30, !tbaa !31
  %mul = fmul double %0, %1, !dbg !30
  tail call void @llvm.dbg.value(metadata !{double %mul}, i64 0, metadata !28), !dbg !30
  %imag = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 0, i32 1, !dbg !34
  %2 = load double* %imag, align 8, !dbg !34, !tbaa !31
  %imag8 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 0, i32 1, !dbg !34
  %3 = load double* %imag8, align 8, !dbg !34, !tbaa !31
  %mul9 = fmul double %2, %3, !dbg !34
  tail call void @llvm.dbg.value(metadata !{double %mul9}, i64 0, metadata !27), !dbg !34
  %add = fadd double %mul, %mul9, !dbg !34
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !28), !dbg !34
  %real12 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 1, i32 0, !dbg !35
  %4 = load double* %real12, align 8, !dbg !35, !tbaa !31
  %real15 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 1, i32 0, !dbg !35
  %5 = load double* %real15, align 8, !dbg !35, !tbaa !31
  %mul16 = fmul double %4, %5, !dbg !35
  tail call void @llvm.dbg.value(metadata !{double %mul16}, i64 0, metadata !27), !dbg !35
  %add17 = fadd double %add, %mul16, !dbg !35
  tail call void @llvm.dbg.value(metadata !{double %add17}, i64 0, metadata !28), !dbg !35
  %imag20 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 1, i32 1, !dbg !36
  %6 = load double* %imag20, align 8, !dbg !36, !tbaa !31
  %imag23 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 1, i32 1, !dbg !36
  %7 = load double* %imag23, align 8, !dbg !36, !tbaa !31
  %mul24 = fmul double %6, %7, !dbg !36
  tail call void @llvm.dbg.value(metadata !{double %mul24}, i64 0, metadata !27), !dbg !36
  %add25 = fadd double %add17, %mul24, !dbg !36
  tail call void @llvm.dbg.value(metadata !{double %add25}, i64 0, metadata !28), !dbg !36
  %real28 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 2, i32 0, !dbg !37
  %8 = load double* %real28, align 8, !dbg !37, !tbaa !31
  %real31 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 2, i32 0, !dbg !37
  %9 = load double* %real31, align 8, !dbg !37, !tbaa !31
  %mul32 = fmul double %8, %9, !dbg !37
  tail call void @llvm.dbg.value(metadata !{double %mul32}, i64 0, metadata !27), !dbg !37
  %add33 = fadd double %add25, %mul32, !dbg !37
  tail call void @llvm.dbg.value(metadata !{double %add33}, i64 0, metadata !28), !dbg !37
  %imag36 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 2, i32 1, !dbg !38
  %10 = load double* %imag36, align 8, !dbg !38, !tbaa !31
  %imag39 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 2, i32 1, !dbg !38
  %11 = load double* %imag39, align 8, !dbg !38, !tbaa !31
  %mul40 = fmul double %10, %11, !dbg !38
  tail call void @llvm.dbg.value(metadata !{double %mul40}, i64 0, metadata !27), !dbg !38
  %add41 = fadd double %add33, %mul40, !dbg !38
  tail call void @llvm.dbg.value(metadata !{double %add41}, i64 0, metadata !28), !dbg !38
  ret double %add41, !dbg !39
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_rdot.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/su3_rdot.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"su3_rdot", metadata !"su3_rdot", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct.su3_vector*, %struct.su3_vector*)* @su3_rdot, null, null, metadata !24, i32 10} ; [ DW_TAG_subprogram ] [line 10] [def] [su3_rdot]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_rdot.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from su3_vector]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"su3_vector", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [su3_vector] [line 15, size 0, align 0, offset 0] [from ]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"", i32 15, i64 384, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 15, size 384, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/su3.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"c", i32 15, i64 384, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [c] [line 15, size 384, align 64, offset 0] [from ]
!15 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !16, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from complex]
!16 = metadata !{i32 786454, metadata !12, null, metadata !"complex", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [complex] [line 76, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 73, i64 128, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 73, size 128, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/complex.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !21}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"real", i32 74, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [real] [line 74, size 64, align 64, offset 0] [from double]
!21 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"imag", i32 75, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [imag] [line 75, size 64, align 64, offset 64] [from double]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!24 = metadata !{metadata !25, metadata !26, metadata !27, metadata !28}
!25 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777226, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 10]
!26 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !5, i32 33554442, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 10]
!27 = metadata !{i32 786688, metadata !4, metadata !"temp1", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp1] [line 13]
!28 = metadata !{i32 786688, metadata !4, metadata !"temp2", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp2] [line 13]
!29 = metadata !{i32 10, i32 0, metadata !4, null}
!30 = metadata !{i32 14, i32 0, metadata !4, null}
!31 = metadata !{metadata !"double", metadata !32}
!32 = metadata !{metadata !"omnipotent char", metadata !33}
!33 = metadata !{metadata !"Simple C/C++ TBAA"}
!34 = metadata !{i32 15, i32 0, metadata !4, null}
!35 = metadata !{i32 16, i32 0, metadata !4, null}
!36 = metadata !{i32 17, i32 0, metadata !4, null}
!37 = metadata !{i32 18, i32 0, metadata !4, null}
!38 = metadata !{i32 19, i32 0, metadata !4, null}
!39 = metadata !{i32 20, i32 0, metadata !4, null}
