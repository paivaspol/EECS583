; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/byterevn.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define void @byterevn(i32* nocapture %w, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %w}, i64 0, metadata !12), !dbg !17
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !13), !dbg !17
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !16), !dbg !18
  %cmp22 = icmp sgt i32 %n, 0, !dbg !18
  br i1 %cmp22, label %for.body, label %for.end, !dbg !18

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %w, i64 %indvars.iv, !dbg !20
  %0 = load i32* %arrayidx, align 4, !dbg !20, !tbaa !22
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !14), !dbg !20
  %or7 = tail call i32 @llvm.bswap.i32(i32 %0), !dbg !25
  tail call void @llvm.dbg.value(metadata !{i32 %or7}, i64 0, metadata !15), !dbg !25
  store i32 %or7, i32* %arrayidx, align 4, !dbg !26, !tbaa !22
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !18
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !18
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !18
  br i1 %exitcond, label %for.end, label %for.body, !dbg !18

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !27
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/byterevn.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/byterevn.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"byterevn", metadata !"byterevn", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32)* @byterevn, null, null, metadata !11, i32 12} ; [ DW_TAG_subprogram ] [line 11] [def] [scope 12] [byterevn]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/byterevn.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !10}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int32type]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"int32type", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [int32type] [line 31, size 0, align 0, offset 0] [from int]
!10 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!11 = metadata !{metadata !12, metadata !13, metadata !14, metadata !15, metadata !16}
!12 = metadata !{i32 786689, metadata !4, metadata !"w", metadata !5, i32 16777227, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w] [line 11]
!13 = metadata !{i32 786689, metadata !4, metadata !"n", metadata !5, i32 33554443, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 11]
!14 = metadata !{i32 786688, metadata !4, metadata !"old", metadata !5, i32 13, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old] [line 13]
!15 = metadata !{i32 786688, metadata !4, metadata !"newv", metadata !5, i32 13, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newv] [line 13]
!16 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 14, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 14]
!17 = metadata !{i32 11, i32 0, metadata !4, null}
!18 = metadata !{i32 18, i32 0, metadata !19, null}
!19 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/byterevn.c]
!20 = metadata !{i32 20, i32 0, metadata !21, null}
!21 = metadata !{i32 786443, metadata !1, metadata !19, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/byterevn.c]
!22 = metadata !{metadata !"int", metadata !23}
!23 = metadata !{metadata !"omnipotent char", metadata !24}
!24 = metadata !{metadata !"Simple C/C++ TBAA"}
!25 = metadata !{i32 24, i32 0, metadata !21, null}
!26 = metadata !{i32 25, i32 0, metadata !21, null}
!27 = metadata !{i32 27, i32 0, metadata !4, null}
