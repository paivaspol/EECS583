; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/lbasename.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readonly uwtable
define i8* @lbasename(i8* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !12), !dbg !14
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !13), !dbg !15
  br label %for.cond, !dbg !15

for.cond:                                         ; preds = %if.then, %for.cond.for.inc_crit_edge, %entry
  %name.addr.0 = phi i8* [ %name, %entry ], [ %incdec.ptr.pre, %for.cond.for.inc_crit_edge ], [ %add.ptr, %if.then ]
  %base.0 = phi i8* [ %name, %entry ], [ %base.0, %for.cond.for.inc_crit_edge ], [ %add.ptr, %if.then ]
  %0 = load i8* %name.addr.0, align 1, !dbg !15, !tbaa !17
  switch i8 %0, label %for.cond.for.inc_crit_edge [
    i8 0, label %for.end
    i8 47, label %if.then
  ], !dbg !15

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  %incdec.ptr.pre = getelementptr inbounds i8* %name.addr.0, i64 1, !dbg !15
  br label %for.cond, !dbg !15

if.then:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds i8* %name.addr.0, i64 1, !dbg !19
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !13), !dbg !19
  br label %for.cond, !dbg !19

for.end:                                          ; preds = %for.cond
  ret i8* %base.0, !dbg !20
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/lbasename.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/403.gcc/src/lbasename.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"lbasename", metadata !"lbasename", metadata !"", i32 72, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8* (i8*)* @lbasename, null, null, metadata !11, i32 74} ; [ DW_TAG_subprogram ] [line 72] [def] [scope 74] [lbasename]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/lbasename.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{metadata !12, metadata !13}
!12 = metadata !{i32 786689, metadata !4, metadata !"name", metadata !5, i32 16777289, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 73]
!13 = metadata !{i32 786688, metadata !4, metadata !"base", metadata !5, i32 75, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 75]
!14 = metadata !{i32 73, i32 0, metadata !4, null}
!15 = metadata !{i32 83, i32 0, metadata !16, null}
!16 = metadata !{i32 786443, metadata !1, metadata !4, i32 83, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/lbasename.c]
!17 = metadata !{metadata !"omnipotent char", metadata !18}
!18 = metadata !{metadata !"Simple C/C++ TBAA"}
!19 = metadata !{i32 85, i32 0, metadata !16, null}
!20 = metadata !{i32 87, i32 0, metadata !4, null}
