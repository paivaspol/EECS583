; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define void @vecinvsqrt(float* nocapture %in, float* nocapture %out, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %in}, i64 0, metadata !13), !dbg !23
  tail call void @llvm.dbg.value(metadata !{float* %out}, i64 0, metadata !14), !dbg !23
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !15), !dbg !23
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !16), !dbg !24
  %cmp7 = icmp sgt i32 %n, 0, !dbg !24
  br i1 %cmp7, label %for.body, label %for.end, !dbg !24

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %in, i64 %indvars.iv, !dbg !26
  %0 = load float* %arrayidx, align 4, !dbg !26, !tbaa !27
  %conv = fpext float %0 to double, !dbg !26
  %call = tail call double @sqrt(double %conv) #3, !dbg !26
  %div = fdiv double 1.000000e+00, %call, !dbg !26
  %conv1 = fptrunc double %div to float, !dbg !26
  %arrayidx3 = getelementptr inbounds float* %out, i64 %indvars.iv, !dbg !26
  store float %conv1, float* %arrayidx3, align 4, !dbg !26, !tbaa !27
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !24
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !24
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !24
  br i1 %exitcond, label %for.end, label %for.body, !dbg !24

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !30
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize uwtable
define void @vecrecip(float* nocapture %in, float* nocapture %out, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %in}, i64 0, metadata !19), !dbg !31
  tail call void @llvm.dbg.value(metadata !{float* %out}, i64 0, metadata !20), !dbg !31
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !21), !dbg !31
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !22), !dbg !32
  %cmp6 = icmp sgt i32 %n, 0, !dbg !32
  br i1 %cmp6, label %for.body, label %for.end, !dbg !32

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %in, i64 %indvars.iv, !dbg !34
  %0 = load float* %arrayidx, align 4, !dbg !34, !tbaa !27
  %div = fdiv float 1.000000e+00, %0, !dbg !34
  %arrayidx2 = getelementptr inbounds float* %out, i64 %indvars.iv, !dbg !34
  store float %div, float* %arrayidx2, align 4, !dbg !34, !tbaa !27
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !32
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !32
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !32
  br i1 %exitcond, label %for.end, label %for.body, !dbg !32

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !35
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !17}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"vecinvsqrt", metadata !"vecinvsqrt", metadata !"", i32 57, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, float*, i32)* @vecinvsqrt, null, null, metadata !12, i32 58} ; [ DW_TAG_subprogram ] [line 57] [def] [scope 58] [vecinvsqrt]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !11}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!10 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!11 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{metadata !13, metadata !14, metadata !15, metadata !16}
!13 = metadata !{i32 786689, metadata !4, metadata !"in", metadata !5, i32 16777273, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 57]
!14 = metadata !{i32 786689, metadata !4, metadata !"out", metadata !5, i32 33554489, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 57]
!15 = metadata !{i32 786689, metadata !4, metadata !"n", metadata !5, i32 50331705, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 57]
!16 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 85, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 85]
!17 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"vecrecip", metadata !"vecrecip", metadata !"", i32 140, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, float*, i32)* @vecrecip, null, null, metadata !18, i32 141} ; [ DW_TAG_subprogram ] [line 140] [def] [scope 141] [vecrecip]
!18 = metadata !{metadata !19, metadata !20, metadata !21, metadata !22}
!19 = metadata !{i32 786689, metadata !17, metadata !"in", metadata !5, i32 16777356, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 140]
!20 = metadata !{i32 786689, metadata !17, metadata !"out", metadata !5, i32 33554572, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 140]
!21 = metadata !{i32 786689, metadata !17, metadata !"n", metadata !5, i32 50331788, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 140]
!22 = metadata !{i32 786688, metadata !17, metadata !"i", metadata !5, i32 163, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 163]
!23 = metadata !{i32 57, i32 0, metadata !4, null}
!24 = metadata !{i32 132, i32 0, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !4, i32 132, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.c]
!26 = metadata !{i32 133, i32 0, metadata !25, null}
!27 = metadata !{metadata !"float", metadata !28}
!28 = metadata !{metadata !"omnipotent char", metadata !29}
!29 = metadata !{metadata !"Simple C/C++ TBAA"}
!30 = metadata !{i32 136, i32 0, metadata !4, null}
!31 = metadata !{i32 140, i32 0, metadata !17, null}
!32 = metadata !{i32 208, i32 0, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !17, i32 208, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.c]
!34 = metadata !{i32 209, i32 0, metadata !33, null}
!35 = metadata !{i32 212, i32 0, metadata !17, null}
