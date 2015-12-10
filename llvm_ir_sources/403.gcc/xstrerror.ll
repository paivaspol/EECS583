; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/xstrerror.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xstrerror_buf = internal global [43 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [23 x i8] c"undocumented error #%d\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @xstrerror(i32 %errnum) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %errnum}, i64 0, metadata !12), !dbg !19
  %call = tail call i8* @strerror(i32 %errnum) #4, !dbg !20
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !13), !dbg !20
  %tobool = icmp eq i8* %call, null, !dbg !21
  br i1 %tobool, label %if.then, label %if.end, !dbg !21

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([43 x i8]* @xstrerror_buf, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str, i64 0, i64 0), i32 %errnum) #4, !dbg !22
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !13), !dbg !25
  br label %if.end, !dbg !26

if.end:                                           ; preds = %entry, %if.then
  %errstr.0 = phi i8* [ %call, %entry ], [ getelementptr inbounds ([43 x i8]* @xstrerror_buf, i64 0, i64 0), %if.then ]
  ret i8* %errstr.0, !dbg !27
}

; Function Attrs: optsize
declare i8* @strerror(i32) #1

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !14, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/xstrerror.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/403.gcc/src/xstrerror.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"xstrerror", metadata !"xstrerror", metadata !"", i32 41, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8* (i32)* @xstrerror, null, null, metadata !11, i32 43} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 43] [xstrerror]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/xstrerror.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !10}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!9 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!10 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!11 = metadata !{metadata !12, metadata !13}
!12 = metadata !{i32 786689, metadata !4, metadata !"errnum", metadata !5, i32 16777258, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [errnum] [line 42]
!13 = metadata !{i32 786688, metadata !4, metadata !"errstr", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errstr] [line 44]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786484, i32 0, null, metadata !"xstrerror_buf", metadata !"xstrerror_buf", metadata !"", metadata !5, i32 36, metadata !16, i32 1, i32 1, [43 x i8]* @xstrerror_buf, null} ; [ DW_TAG_variable ] [xstrerror_buf] [line 36] [local] [def]
!16 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 344, i64 8, i32 0, i32 0, metadata !9, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 344, align 8, offset 0] [from char]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 43}       ; [ DW_TAG_subrange_type ] [0, 42]
!19 = metadata !{i32 42, i32 0, metadata !4, null}
!20 = metadata !{i32 57, i32 0, metadata !4, null}
!21 = metadata !{i32 61, i32 0, metadata !4, null}
!22 = metadata !{i32 63, i32 0, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 62, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/xstrerror.c]
!24 = metadata !{null}
!25 = metadata !{i32 64, i32 0, metadata !23, null}
!26 = metadata !{i32 65, i32 0, metadata !23, null}
!27 = metadata !{i32 66, i32 0, metadata !4, null}
