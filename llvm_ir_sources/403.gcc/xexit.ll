; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/xexit.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_xexit_cleanup = common global void ()* null, align 8

; Function Attrs: noreturn nounwind optsize uwtable
define void @xexit(i32 %code) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %code}, i64 0, metadata !10), !dbg !16
  %0 = load void ()** @_xexit_cleanup, align 8, !dbg !17, !tbaa !18
  %cmp = icmp eq void ()* %0, null, !dbg !17
  br i1 %cmp, label %if.end, label %if.then, !dbg !17

if.then:                                          ; preds = %entry
  tail call void %0() #3, !dbg !21
  br label %if.end, !dbg !21

if.end:                                           ; preds = %entry, %if.then
  tail call void @exit(i32 %code) #4, !dbg !22
  unreachable, !dbg !22
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }
attributes #4 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !11, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/xexit.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/403.gcc/src/xexit.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"xexit", metadata !"xexit", metadata !"", i32 45, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void (i32)* @xexit, null, null, metadata !9, i32 47} ; [ DW_TAG_subprogram ] [line 45] [def] [scope 47] [xexit]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/xexit.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786689, metadata !4, metadata !"code", metadata !5, i32 16777262, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [code] [line 46]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786484, i32 0, null, metadata !"_xexit_cleanup", metadata !"_xexit_cleanup", metadata !"", metadata !5, i32 42, metadata !13, i32 0, i32 1, void ()** @_xexit_cleanup, null} ; [ DW_TAG_variable ] [_xexit_cleanup] [line 42] [def]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{null}
!16 = metadata !{i32 46, i32 0, metadata !4, null}
!17 = metadata !{i32 48, i32 0, metadata !4, null}
!18 = metadata !{metadata !"any pointer", metadata !19}
!19 = metadata !{metadata !"omnipotent char", metadata !20}
!20 = metadata !{metadata !"Simple C/C++ TBAA"}
!21 = metadata !{i32 49, i32 0, metadata !4, null}
!22 = metadata !{i32 50, i32 0, metadata !4, null}
