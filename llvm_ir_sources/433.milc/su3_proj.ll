; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/su3_proj.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

; Function Attrs: nounwind optsize uwtable
define void @su3_projector(%struct.su3_vector* nocapture %a, %struct.su3_vector* nocapture %b, %struct.su3_matrix* nocapture %c) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %a}, i64 0, metadata !32), !dbg !38
  tail call void @llvm.dbg.value(metadata !{%struct.su3_vector* %b}, i64 0, metadata !33), !dbg !38
  tail call void @llvm.dbg.value(metadata !{%struct.su3_matrix* %c}, i64 0, metadata !34), !dbg !38
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !35), !dbg !39
  br label %for.cond1.preheader, !dbg !39

for.cond1.preheader:                              ; preds = %for.inc46, %entry
  %indvars.iv71 = phi i64 [ 0, %entry ], [ %indvars.iv.next72, %for.inc46 ]
  %real = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv71, i32 0, !dbg !41
  %imag = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv71, i32 1, !dbg !41
  br label %for.body3, !dbg !45

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %0 = load double* %real, align 8, !dbg !41, !tbaa !46
  %real8 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !41
  %1 = load double* %real8, align 8, !dbg !41, !tbaa !46
  %mul = fmul double %0, %1, !dbg !41
  %2 = load double* %imag, align 8, !dbg !41, !tbaa !46
  %imag15 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !41
  %3 = load double* %imag15, align 8, !dbg !41, !tbaa !46
  %mul16 = fmul double %2, %3, !dbg !41
  %add = fadd double %mul, %mul16, !dbg !41
  %real21 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv71, i64 %indvars.iv, i32 0, !dbg !41
  store double %add, double* %real21, align 8, !dbg !41, !tbaa !46
  %4 = load double* %imag, align 8, !dbg !41, !tbaa !46
  %5 = load double* %real8, align 8, !dbg !41, !tbaa !46
  %mul30 = fmul double %4, %5, !dbg !41
  %6 = load double* %real, align 8, !dbg !41, !tbaa !46
  %7 = load double* %imag15, align 8, !dbg !41, !tbaa !46
  %mul39 = fmul double %6, %7, !dbg !41
  %sub = fsub double %mul30, %mul39, !dbg !41
  %imag45 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv71, i64 %indvars.iv, i32 1, !dbg !41
  store double %sub, double* %imag45, align 8, !dbg !41, !tbaa !46
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !45
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !45
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !45
  br i1 %exitcond, label %for.inc46, label %for.body3, !dbg !45

for.inc46:                                        ; preds = %for.body3
  %indvars.iv.next72 = add i64 %indvars.iv71, 1, !dbg !39
  %lftr.wideiv73 = trunc i64 %indvars.iv.next72 to i32, !dbg !39
  %exitcond74 = icmp eq i32 %lftr.wideiv73, 3, !dbg !39
  br i1 %exitcond74, label %for.end48, label %for.cond1.preheader, !dbg !39

for.end48:                                        ; preds = %for.inc46
  ret void, !dbg !49
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_proj.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/su3_proj.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"su3_projector", metadata !"su3_projector", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.su3_vector*, %struct.su3_vector*, %struct.su3_matrix*)* @su3_projector, null, null, metadata !31, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [su3_projector]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_proj.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !24}
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
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from su3_matrix]
!25 = metadata !{i32 786454, metadata !1, null, metadata !"su3_matrix", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [su3_matrix] [line 14, size 0, align 0, offset 0] [from ]
!26 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 14, i64 1152, i64 64, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 1152, align 64, offset 0] [from ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"e", i32 14, i64 1152, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [e] [line 14, size 1152, align 64, offset 0] [from ]
!29 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !15, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from complex]
!30 = metadata !{metadata !23, metadata !23}
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35, metadata !37}
!32 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 12]
!33 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !5, i32 33554444, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 12]
!34 = metadata !{i32 786689, metadata !4, metadata !"c", metadata !5, i32 50331660, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 12]
!35 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 13, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 13]
!36 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!37 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 13, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 13]
!38 = metadata !{i32 12, i32 0, metadata !4, null}
!39 = metadata !{i32 14, i32 0, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_proj.c]
!41 = metadata !{i32 15, i32 0, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !43, i32 15, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_proj.c]
!43 = metadata !{i32 786443, metadata !1, metadata !44, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_proj.c]
!44 = metadata !{i32 786443, metadata !1, metadata !40, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/su3_proj.c]
!45 = metadata !{i32 14, i32 0, metadata !44, null}
!46 = metadata !{metadata !"double", metadata !47}
!47 = metadata !{metadata !"omnipotent char", metadata !48}
!48 = metadata !{metadata !"Simple C/C++ TBAA"}
!49 = metadata !{i32 17, i32 0, metadata !4, null}
