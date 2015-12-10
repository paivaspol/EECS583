; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/u_calloc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str1 = private unnamed_addr constant [18 x i8] c"num=%zd,size=%zd\0A\00", align 1
@str = private unnamed_addr constant [44 x i8] c"*ERROR in u_calloc: error allocating memory\00"

; Function Attrs: nounwind optsize uwtable
define noalias i8* @u_calloc(i64 %num, i64 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %num}, i64 0, metadata !12), !dbg !15
  tail call void @llvm.dbg.value(metadata !{i64 %size}, i64 0, metadata !13), !dbg !15
  %cmp = icmp eq i64 %num, 0, !dbg !16
  br i1 %cmp, label %return, label %if.end, !dbg !16

if.end:                                           ; preds = %entry
  %call = tail call noalias i8* @calloc(i64 %num, i64 %size) #5, !dbg !17
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !14), !dbg !17
  %cmp1 = icmp eq i8* %call, null, !dbg !18
  br i1 %cmp1, label %if.then2, label %return, !dbg !18

if.then2:                                         ; preds = %if.end
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str, i64 0, i64 0)), !dbg !19
  %call4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0), i64 %num, i64 %size) #5, !dbg !21
  tail call void @exit(i32 16) #6, !dbg !22
  unreachable, !dbg !22

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %call, %if.end ]
  ret i8* %retval.0, !dbg !23
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/u_calloc.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/u_calloc.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"u_calloc", metadata !"u_calloc", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i64, i64)* @u_calloc, null, null, metadata !11, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [u_calloc]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/u_calloc.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !9}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!10 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!11 = metadata !{metadata !12, metadata !13, metadata !14}
!12 = metadata !{i32 786689, metadata !4, metadata !"num", metadata !5, i32 16777241, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num] [line 25]
!13 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 33554457, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 25]
!14 = metadata !{i32 786688, metadata !4, metadata !"a", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 27]
!15 = metadata !{i32 25, i32 0, metadata !4, null}
!16 = metadata !{i32 28, i32 0, metadata !4, null}
!17 = metadata !{i32 33, i32 0, metadata !4, null}
!18 = metadata !{i32 34, i32 0, metadata !4, null}
!19 = metadata !{i32 35, i32 0, metadata !20, null}
!20 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/u_calloc.c]
!21 = metadata !{i32 39, i32 0, metadata !20, null}
!22 = metadata !{i32 41, i32 0, metadata !20, null}
!23 = metadata !{i32 46, i32 0, metadata !4, null}
