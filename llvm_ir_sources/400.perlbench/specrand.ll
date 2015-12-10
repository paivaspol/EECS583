; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/specrand.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seedi = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind optsize uwtable
define void @spec_srand(i32 %seed) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !10), !dbg !21
  store i32 %seed, i32* @seedi, align 4, !dbg !22, !tbaa !23
  ret void, !dbg !26
}

; Function Attrs: nounwind optsize uwtable
define double @spec_rand() #0 {
entry:
  %0 = load i32* @seedi, align 4, !dbg !27, !tbaa !23
  %conv = sext i32 %0 to i64, !dbg !27
  %div = sdiv i64 %conv, 127773, !dbg !27
  %rem = srem i64 %conv, 127773, !dbg !28
  %sext = shl i64 %rem, 32, !dbg !29
  %conv4 = ashr exact i64 %sext, 32, !dbg !29
  %mul = mul nsw i64 %conv4, 16807, !dbg !29
  %sext14 = shl i64 %div, 32, !dbg !29
  %conv5 = ashr exact i64 %sext14, 32, !dbg !29
  %1 = mul i64 %conv5, -2836, !dbg !29
  %sub = add i64 %mul, %1, !dbg !29
  %conv7 = trunc i64 %sub to i32, !dbg !29
  tail call void @llvm.dbg.value(metadata !{i32 %conv7}, i64 0, metadata !18), !dbg !29
  %cmp = icmp sgt i32 %conv7, 0, !dbg !30
  br i1 %cmp, label %if.end, label %if.else, !dbg !30

if.else:                                          ; preds = %entry
  %add = add nsw i64 %sub, 2147483647, !dbg !31
  %conv10 = trunc i64 %add to i32, !dbg !31
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %storemerge = phi i32 [ %conv10, %if.else ], [ %conv7, %entry ]
  store i32 %storemerge, i32* @seedi, align 4, !dbg !33, !tbaa !23
  %conv11 = sitofp i32 %storemerge to double, !dbg !35
  %div12 = fdiv double %conv11, 0x41DFFFFFFFC00000, !dbg !35
  ret double %div12, !dbg !35
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !19, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/400.perlbench/src/specrand.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/400.perlbench/src/specrand.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spec_srand", metadata !"spec_srand", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @spec_srand, null, null, metadata !9, i32 16} ; [ DW_TAG_subprogram ] [line 16] [def] [spec_srand]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/400.perlbench/src/specrand.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786689, metadata !4, metadata !"seed", metadata !5, i32 16777232, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 16]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spec_rand", metadata !"spec_rand", metadata !"", i32 25, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double ()* @spec_rand, null, null, metadata !15, i32 30} ; [ DW_TAG_subprogram ] [line 25] [def] [scope 30] [spec_rand]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!15 = metadata !{metadata !16, metadata !17, metadata !18}
!16 = metadata !{i32 786688, metadata !11, metadata !"lo", metadata !5, i32 31, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lo] [line 31]
!17 = metadata !{i32 786688, metadata !11, metadata !"hi", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hi] [line 32]
!18 = metadata !{i32 786688, metadata !11, metadata !"test", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [test] [line 33]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786484, i32 0, null, metadata !"seedi", metadata !"seedi", metadata !"", metadata !5, i32 14, metadata !8, i32 1, i32 1, i32* @seedi, null} ; [ DW_TAG_variable ] [seedi] [line 14] [local] [def]
!21 = metadata !{i32 16, i32 0, metadata !4, null}
!22 = metadata !{i32 17, i32 0, metadata !4, null}
!23 = metadata !{metadata !"int", metadata !24}
!24 = metadata !{metadata !"omnipotent char", metadata !25}
!25 = metadata !{metadata !"Simple C/C++ TBAA"}
!26 = metadata !{i32 18, i32 0, metadata !4, null}
!27 = metadata !{i32 35, i32 0, metadata !11, null}
!28 = metadata !{i32 36, i32 0, metadata !11, null}
!29 = metadata !{i32 37, i32 0, metadata !11, null}
!30 = metadata !{i32 38, i32 0, metadata !11, null}
!31 = metadata !{i32 41, i32 0, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/400.perlbench/src/specrand.c]
!33 = metadata !{i32 39, i32 0, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !11, i32 38, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/400.perlbench/src/specrand.c]
!35 = metadata !{i32 43, i32 0, metadata !11, null}
