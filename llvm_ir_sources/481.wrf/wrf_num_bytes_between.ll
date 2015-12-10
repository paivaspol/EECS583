; ModuleID = '../../SPEC/benchspec/CPU2006/481.wrf/src/wrf_num_bytes_between.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i32 @wrf_num_bytes_between_(i8* %a, i8* %b, i32* nocapture %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !13), !dbg !34
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !14), !dbg !35
  tail call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !15), !dbg !36
  %sub.ptr.lhs.cast = ptrtoint i8* %a to i64, !dbg !37
  %sub.ptr.rhs.cast = ptrtoint i8* %b to i64, !dbg !37
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !37
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !37
  %cmp = icmp slt i32 %conv, 0, !dbg !38
  %sub = sub nsw i32 0, %conv, !dbg !38
  %sub.conv = select i1 %cmp, i32 %sub, i32 %conv, !dbg !38
  store i32 %sub.conv, i32* %n, align 4, !dbg !37, !tbaa !39
  ret i32 undef, !dbg !42
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_initial_data_value_(float* nocapture %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %n}, i64 0, metadata !22), !dbg !43
  store float 0.000000e+00, float* %n, align 4, !dbg !44, !tbaa !45
  ret i32 undef, !dbg !46
}

; Function Attrs: nounwind optsize uwtable
define i32 @what_is_a_nan_(i32* nocapture %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !27), !dbg !47
  store i32 -4194304, i32* %n, align 4, !dbg !48, !tbaa !39
  ret i32 undef, !dbg !49
}

; Function Attrs: nounwind optsize uwtable
define i32 @wrf_mem_copy_(i8* nocapture %a, i8* nocapture %b, i32* nocapture %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !30), !dbg !50
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !31), !dbg !51
  tail call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !32), !dbg !52
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !33), !dbg !53
  %0 = load i32* %n, align 4, !dbg !53, !tbaa !39
  %cmp3 = icmp sgt i32 %0, 0, !dbg !53
  br i1 %cmp3, label %for.body, label %for.end, !dbg !53

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %a.addr.05 = phi i8* [ %incdec.ptr, %for.body ], [ %a, %entry ]
  %b.addr.04 = phi i8* [ %incdec.ptr1, %for.body ], [ %b, %entry ]
  %incdec.ptr = getelementptr inbounds i8* %a.addr.05, i64 1, !dbg !55
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !30), !dbg !55
  %1 = load i8* %a.addr.05, align 1, !dbg !55, !tbaa !40
  %incdec.ptr1 = getelementptr inbounds i8* %b.addr.04, i64 1, !dbg !55
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1}, i64 0, metadata !31), !dbg !55
  store i8 %1, i8* %b.addr.04, align 1, !dbg !55, !tbaa !40
  %inc = add nsw i32 %i.06, 1, !dbg !53
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !33), !dbg !53
  %2 = load i32* %n, align 4, !dbg !53, !tbaa !39
  %cmp = icmp slt i32 %inc, %2, !dbg !53
  br i1 %cmp, label %for.body, label %for.end, !dbg !53

for.end:                                          ; preds = %for.body, %entry
  ret i32 undef, !dbg !57
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/wrf_num_bytes_between.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/481.wrf/src/wrf_num_bytes_between.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !16, metadata !23, metadata !28}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrf_num_bytes_between_", metadata !"wrf_num_bytes_between_", metadata !"", i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (i8*, i8*, i32*)* @wrf_num_bytes_between_, null, null, metadata !12, i32 30} ; [ DW_TAG_subprogram ] [line 26] [def] [scope 30] [wrf_num_bytes_between_]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/wrf_num_bytes_between.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !9, metadata !11}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!12 = metadata !{metadata !13, metadata !14, metadata !15}
!13 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777243, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 27]
!14 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !5, i32 33554460, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 28]
!15 = metadata !{i32 786689, metadata !4, metadata !"n", metadata !5, i32 50331677, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 29]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"get_initial_data_value_", metadata !"get_initial_data_value_", metadata !"", i32 43, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (float*)* @get_initial_data_value_, null, null, metadata !21, i32 45} ; [ DW_TAG_subprogram ] [line 43] [def] [scope 45] [get_initial_data_value_]
!17 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !8, metadata !19}
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!20 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786689, metadata !16, metadata !"n", metadata !5, i32 16777260, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 44]
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"what_is_a_nan_", metadata !"what_is_a_nan_", metadata !"", i32 50, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (i32*)* @what_is_a_nan_, null, null, metadata !26, i32 52} ; [ DW_TAG_subprogram ] [line 50] [def] [scope 52] [what_is_a_nan_]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{metadata !8, metadata !11}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786689, metadata !23, metadata !"n", metadata !5, i32 16777267, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 51]
!28 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrf_mem_copy_", metadata !"wrf_mem_copy_", metadata !"", i32 70, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (i8*, i8*, i32*)* @wrf_mem_copy_, null, null, metadata !29, i32 74} ; [ DW_TAG_subprogram ] [line 70] [def] [scope 74] [wrf_mem_copy_]
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33}
!30 = metadata !{i32 786689, metadata !28, metadata !"a", metadata !5, i32 16777287, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 71]
!31 = metadata !{i32 786689, metadata !28, metadata !"b", metadata !5, i32 33554504, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 72]
!32 = metadata !{i32 786689, metadata !28, metadata !"n", metadata !5, i32 50331721, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 73]
!33 = metadata !{i32 786688, metadata !28, metadata !"i", metadata !5, i32 75, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 75]
!34 = metadata !{i32 27, i32 0, metadata !4, null}
!35 = metadata !{i32 28, i32 0, metadata !4, null}
!36 = metadata !{i32 29, i32 0, metadata !4, null}
!37 = metadata !{i32 31, i32 0, metadata !4, null}
!38 = metadata !{i32 32, i32 0, metadata !4, null}
!39 = metadata !{metadata !"int", metadata !40}
!40 = metadata !{metadata !"omnipotent char", metadata !41}
!41 = metadata !{metadata !"Simple C/C++ TBAA"}
!42 = metadata !{i32 33, i32 0, metadata !4, null}
!43 = metadata !{i32 44, i32 0, metadata !16, null}
!44 = metadata !{i32 46, i32 0, metadata !16, null}
!45 = metadata !{metadata !"float", metadata !40}
!46 = metadata !{i32 47, i32 0, metadata !16, null}
!47 = metadata !{i32 51, i32 0, metadata !23, null}
!48 = metadata !{i32 53, i32 0, metadata !23, null}
!49 = metadata !{i32 58, i32 0, metadata !23, null} ; [ DW_TAG_imported_module ]
!50 = metadata !{i32 71, i32 0, metadata !28, null}
!51 = metadata !{i32 72, i32 0, metadata !28, null}
!52 = metadata !{i32 73, i32 0, metadata !28, null}
!53 = metadata !{i32 76, i32 0, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !28, i32 76, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/wrf_num_bytes_between.c]
!55 = metadata !{i32 78, i32 0, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !54, i32 77, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/wrf_num_bytes_between.c]
!57 = metadata !{i32 80, i32 0, metadata !28, null}
