; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/su3_dot.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize readonly uwtable
define { double, double } @su3_dot(%struct.su3_vector* nocapture %a, %struct.su3_vector* nocapture %b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %a}, i64 0, metadata !25), !dbg !29
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %b}, i64 0, metadata !26), !dbg !29
  tail call void @llvm.dbg.declare(metadata !30, metadata !27), !dbg !31
  tail call void @llvm.dbg.declare(metadata !30, metadata !28), !dbg !31
  %real = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 0, i32 0, !dbg !32
  %0 = load double* %real, align 8, !dbg !32, !tbaa !34
  %real3 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 0, i32 0, !dbg !32
  %1 = load double* %real3, align 8, !dbg !32, !tbaa !34
  %mul = fmul double %0, %1, !dbg !32
  %imag = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 0, i32 1, !dbg !32
  %2 = load double* %imag, align 8, !dbg !32, !tbaa !34
  %imag8 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 0, i32 1, !dbg !32
  %3 = load double* %imag8, align 8, !dbg !32, !tbaa !34
  %mul9 = fmul double %2, %3, !dbg !32
  %add = fadd double %mul, %mul9, !dbg !32
  %mul17 = fmul double %0, %3, !dbg !32
  %mul24 = fmul double %1, %2, !dbg !32
  %sub = fsub double %mul17, %mul24, !dbg !32
  %real28 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 1, i32 0, !dbg !37
  %4 = load double* %real28, align 8, !dbg !37, !tbaa !34
  %real31 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 1, i32 0, !dbg !37
  %5 = load double* %real31, align 8, !dbg !37, !tbaa !34
  %mul32 = fmul double %4, %5, !dbg !37
  %imag35 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 1, i32 1, !dbg !37
  %6 = load double* %imag35, align 8, !dbg !37, !tbaa !34
  %imag38 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 1, i32 1, !dbg !37
  %7 = load double* %imag38, align 8, !dbg !37, !tbaa !34
  %mul39 = fmul double %6, %7, !dbg !37
  %add40 = fadd double %mul32, %mul39, !dbg !37
  %mul48 = fmul double %4, %7, !dbg !37
  %mul55 = fmul double %5, %6, !dbg !37
  %sub56 = fsub double %mul48, %mul55, !dbg !37
  %add60 = fadd double %add, %add40, !dbg !39
  %add63 = fadd double %sub, %sub56, !dbg !39
  %real66 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 2, i32 0, !dbg !41
  %8 = load double* %real66, align 8, !dbg !41, !tbaa !34
  %real69 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 2, i32 0, !dbg !41
  %9 = load double* %real69, align 8, !dbg !41, !tbaa !34
  %mul70 = fmul double %8, %9, !dbg !41
  %imag73 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 2, i32 1, !dbg !41
  %10 = load double* %imag73, align 8, !dbg !41, !tbaa !34
  %imag76 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 2, i32 1, !dbg !41
  %11 = load double* %imag76, align 8, !dbg !41, !tbaa !34
  %mul77 = fmul double %10, %11, !dbg !41
  %add78 = fadd double %mul70, %mul77, !dbg !41
  %mul86 = fmul double %8, %11, !dbg !41
  %mul93 = fmul double %9, %10, !dbg !41
  %sub94 = fsub double %mul86, %mul93, !dbg !41
  %add98 = fadd double %add60, %add78, !dbg !43
  %add101 = fadd double %add63, %sub94, !dbg !43
  %.fca.0.insert = insertvalue { double, double } undef, double %add98, 0, !dbg !45
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %add101, 1, !dbg !45
  ret { double, double } %.fca.1.insert, !dbg !45
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_dot.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/su3_dot.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"su3_dot", metadata !"su3_dot", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, { double, double } (%struct.su3_vector*, %struct.su3_vector*)* @su3_dot, null, null, metadata !24, i32 10} ; [ DW_TAG_subprogram ] [line 10] [def] [su3_dot]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_dot.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !15, metadata !15}
!8 = metadata !{i32 786454, metadata !1, null, metadata !"complex", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [complex] [line 76, size 0, align 0, offset 0] [from ]
!9 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 73, i64 128, i64 64, i32 0, i32 0, null, metadata !11, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 73, size 128, align 64, offset 0] [from ]
!10 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/complex.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !14}
!12 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"real", i32 74, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [real] [line 74, size 64, align 64, offset 0] [from double]
!13 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!14 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"imag", i32 75, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ] [imag] [line 75, size 64, align 64, offset 64] [from double]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from su3_vector]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"su3_vector", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [su3_vector] [line 15, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 15, i64 384, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 15, size 384, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/su3.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"c", i32 15, i64 384, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [c] [line 15, size 384, align 64, offset 0] [from ]
!21 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !8, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from complex]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!24 = metadata !{metadata !25, metadata !26, metadata !27, metadata !28}
!25 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777226, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 10]
!26 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !5, i32 33554442, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 10]
!27 = metadata !{i32 786688, metadata !4, metadata !"temp1", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp1] [line 13]
!28 = metadata !{i32 786688, metadata !4, metadata !"temp2", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp2] [line 13]
!29 = metadata !{i32 10, i32 0, metadata !4, null}
!30 = metadata !{%struct.complex* undef}
!31 = metadata !{i32 13, i32 0, metadata !4, null}
!32 = metadata !{i32 14, i32 0, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_dot.c]
!34 = metadata !{metadata !"double", metadata !35}
!35 = metadata !{metadata !"omnipotent char", metadata !36}
!36 = metadata !{metadata !"Simple C/C++ TBAA"}
!37 = metadata !{i32 15, i32 0, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !4, i32 15, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_dot.c]
!39 = metadata !{i32 16, i32 0, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_dot.c]
!41 = metadata !{i32 17, i32 0, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !4, i32 17, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_dot.c]
!43 = metadata !{i32 18, i32 0, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_dot.c]
!45 = metadata !{i32 19, i32 0, metadata !4, null}
