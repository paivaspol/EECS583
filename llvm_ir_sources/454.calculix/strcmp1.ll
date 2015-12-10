; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/strcmp1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readonly uwtable
define i32 @strcmp1(i8* nocapture %s1, i8* nocapture %s2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !13), !dbg !17
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !14), !dbg !17
  br label %do.body, !dbg !18

do.body:                                          ; preds = %do.cond, %entry
  %s1.addr.0 = phi i8* [ %s1, %entry ], [ %incdec.ptr, %do.cond ]
  %s2.addr.0 = phi i8* [ %s2, %entry ], [ %incdec.ptr1, %do.cond ]
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !13), !dbg !19
  %0 = load i8* %s1.addr.0, align 1, !dbg !19, !tbaa !21
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !15), !dbg !19
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1}, i64 0, metadata !14), !dbg !23
  %1 = load i8* %s2.addr.0, align 1, !dbg !23, !tbaa !21
  tail call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !16), !dbg !23
  %cmp = icmp eq i8 %0, 0, !dbg !24
  %cmp4 = icmp eq i8 %1, 0, !dbg !24
  %or.cond = or i1 %cmp, %cmp4, !dbg !24
  br i1 %or.cond, label %do.end, label %do.cond, !dbg !24

do.cond:                                          ; preds = %do.body
  %conv2 = sext i8 %1 to i32, !dbg !23
  %incdec.ptr1 = getelementptr inbounds i8* %s2.addr.0, i64 1, !dbg !23
  %conv = sext i8 %0 to i32, !dbg !19
  %incdec.ptr = getelementptr inbounds i8* %s1.addr.0, i64 1, !dbg !19
  %cmp6 = icmp eq i8 %0, %1, !dbg !25
  br i1 %cmp6, label %do.body, label %do.end, !dbg !25

do.end:                                           ; preds = %do.body, %do.cond
  %a.0 = phi i32 [ %conv, %do.cond ], [ 0, %do.body ]
  %b.0 = phi i32 [ %conv2, %do.cond ], [ 0, %do.body ]
  %sub = sub nsw i32 %a.0, %b.0, !dbg !26
  ret i32 %sub, !dbg !26
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/strcmp1.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/strcmp1.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"strcmp1", metadata !"strcmp1", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @strcmp1, null, null, metadata !12, i32 25} ; [ DW_TAG_subprogram ] [line 24] [def] [scope 25] [strcmp1]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/strcmp1.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!10 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!11 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!12 = metadata !{metadata !13, metadata !14, metadata !15, metadata !16}
!13 = metadata !{i32 786689, metadata !4, metadata !"s1", metadata !5, i32 16777240, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 24]
!14 = metadata !{i32 786689, metadata !4, metadata !"s2", metadata !5, i32 33554456, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 24]
!15 = metadata !{i32 786688, metadata !4, metadata !"a", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 26]
!16 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 26]
!17 = metadata !{i32 24, i32 0, metadata !4, null}
!18 = metadata !{i32 28, i32 0, metadata !4, null}
!19 = metadata !{i32 29, i32 0, metadata !20, null}
!20 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/strcmp1.c]
!21 = metadata !{metadata !"omnipotent char", metadata !22}
!22 = metadata !{metadata !"Simple C/C++ TBAA"}
!23 = metadata !{i32 30, i32 0, metadata !20, null}
!24 = metadata !{i32 31, i32 0, metadata !20, null}
!25 = metadata !{i32 36, i32 0, metadata !20, null}
!26 = metadata !{i32 37, i32 0, metadata !4, null}
