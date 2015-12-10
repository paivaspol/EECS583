; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/sub4vecs.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize uwtable
define void @sub_four_su3_vecs(%struct.su3_vector* nocapture %a, %struct.su3_vector* nocapture %b1, %struct.su3_vector* nocapture %b2, %struct.su3_vector* nocapture %b3, %struct.su3_vector* nocapture %b4) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %a}, i64 0, metadata !25), !dbg !32
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %b1}, i64 0, metadata !26), !dbg !32
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %b2}, i64 0, metadata !27), !dbg !32
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %b3}, i64 0, metadata !28), !dbg !33
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %b4}, i64 0, metadata !29), !dbg !33
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !30), !dbg !34
  br label %for.body, !dbg !34

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %real = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !36
  %0 = load double* %real, align 8, !dbg !36, !tbaa !39
  %real4 = getelementptr inbounds %struct.su3_vector* %b1, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !36
  %1 = load double* %real4, align 8, !dbg !36, !tbaa !39
  %sub = fsub double %0, %1, !dbg !36
  store double %sub, double* %real, align 8, !dbg !36, !tbaa !39
  %imag = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !36
  %2 = load double* %imag, align 8, !dbg !36, !tbaa !39
  %imag15 = getelementptr inbounds %struct.su3_vector* %b1, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !36
  %3 = load double* %imag15, align 8, !dbg !36, !tbaa !39
  %sub16 = fsub double %2, %3, !dbg !36
  store double %sub16, double* %imag, align 8, !dbg !36, !tbaa !39
  %real28 = getelementptr inbounds %struct.su3_vector* %b2, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !42
  %4 = load double* %real28, align 8, !dbg !42, !tbaa !39
  %sub29 = fsub double %sub, %4, !dbg !42
  store double %sub29, double* %real, align 8, !dbg !42, !tbaa !39
  %imag41 = getelementptr inbounds %struct.su3_vector* %b2, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !42
  %5 = load double* %imag41, align 8, !dbg !42, !tbaa !39
  %sub42 = fsub double %sub16, %5, !dbg !42
  store double %sub42, double* %imag, align 8, !dbg !42, !tbaa !39
  %real54 = getelementptr inbounds %struct.su3_vector* %b3, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !44
  %6 = load double* %real54, align 8, !dbg !44, !tbaa !39
  %sub55 = fsub double %sub29, %6, !dbg !44
  store double %sub55, double* %real, align 8, !dbg !44, !tbaa !39
  %imag67 = getelementptr inbounds %struct.su3_vector* %b3, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !44
  %7 = load double* %imag67, align 8, !dbg !44, !tbaa !39
  %sub68 = fsub double %sub42, %7, !dbg !44
  store double %sub68, double* %imag, align 8, !dbg !44, !tbaa !39
  %real80 = getelementptr inbounds %struct.su3_vector* %b4, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !46
  %8 = load double* %real80, align 8, !dbg !46, !tbaa !39
  %sub81 = fsub double %sub55, %8, !dbg !46
  store double %sub81, double* %real, align 8, !dbg !46, !tbaa !39
  %imag93 = getelementptr inbounds %struct.su3_vector* %b4, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !46
  %9 = load double* %imag93, align 8, !dbg !46, !tbaa !39
  %sub94 = fsub double %sub68, %9, !dbg !46
  store double %sub94, double* %imag, align 8, !dbg !46, !tbaa !39
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !34
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !34
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !34
  br i1 %exitcond, label %for.end, label %for.body, !dbg !34

for.end:                                          ; preds = %for.body
  ret void, !dbg !48
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/sub4vecs.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/sub4vecs.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sub_four_su3_vecs", metadata !"sub_four_su3_vecs", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*)* @sub_four_su3_vecs, null, null, metadata !24, i32 14} ; [ DW_TAG_subprogram ] [line 13] [def] [scope 14] [sub_four_su3_vecs]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/sub4vecs.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from su3_vector]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"su3_vector", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [su3_vector] [line 15, size 0, align 0, offset 0] [from ]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 15, i64 384, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 15, size 384, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/su3.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"c", i32 15, i64 384, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [c] [line 15, size 384, align 64, offset 0] [from ]
!14 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !15, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from complex]
!15 = metadata !{i32 786454, metadata !11, null, metadata !"complex", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [complex] [line 76, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 73, i64 128, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 73, size 128, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/complex.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"real", i32 74, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [real] [line 74, size 64, align 64, offset 0] [from double]
!20 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"imag", i32 75, i64 64, i64 64, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [imag] [line 75, size 64, align 64, offset 64] [from double]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!24 = metadata !{metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30}
!25 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 13]
!26 = metadata !{i32 786689, metadata !4, metadata !"b1", metadata !5, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b1] [line 13]
!27 = metadata !{i32 786689, metadata !4, metadata !"b2", metadata !5, i32 50331661, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b2] [line 13]
!28 = metadata !{i32 786689, metadata !4, metadata !"b3", metadata !5, i32 67108878, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b3] [line 14]
!29 = metadata !{i32 786689, metadata !4, metadata !"b4", metadata !5, i32 83886094, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b4] [line 14]
!30 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 15, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 15]
!31 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!32 = metadata !{i32 13, i32 0, metadata !4, null}
!33 = metadata !{i32 14, i32 0, metadata !4, null}
!34 = metadata !{i32 16, i32 0, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/sub4vecs.c]
!36 = metadata !{i32 17, i32 0, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !38, i32 17, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/sub4vecs.c]
!38 = metadata !{i32 786443, metadata !1, metadata !35, i32 16, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/sub4vecs.c]
!39 = metadata !{metadata !"double", metadata !40}
!40 = metadata !{metadata !"omnipotent char", metadata !41}
!41 = metadata !{metadata !"Simple C/C++ TBAA"}
!42 = metadata !{i32 18, i32 0, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !38, i32 18, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/sub4vecs.c]
!44 = metadata !{i32 19, i32 0, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !38, i32 19, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/sub4vecs.c]
!46 = metadata !{i32 20, i32 0, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !38, i32 20, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/sub4vecs.c]
!48 = metadata !{i32 22, i32 0, metadata !4, null}
