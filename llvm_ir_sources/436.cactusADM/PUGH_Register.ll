; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/PUGH_Register.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readnone uwtable
define i32 @CCTKBindings_PUGHAliases() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !10), !dbg !12
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !11), !dbg !13
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !10), !dbg !14
  ret i32 0, !dbg !15
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/PUGH_Register.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/PUGH_Register.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKBindings_PUGHAliases", metadata !"CCTKBindings_PUGHAliases", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKBindings_PUGHAliases, null, null, metadata !9, i32 16} ; [ DW_TAG_subprogram ] [line 15] [def] [scope 16] [CCTKBindings_PUGHAliases]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/PUGH_Register.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !11}
!10 = metadata !{i32 786688, metadata !4, metadata !"retval", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 17]
!11 = metadata !{i32 786688, metadata !4, metadata !"ierr", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 18]
!12 = metadata !{i32 17, i32 0, metadata !4, null}
!13 = metadata !{i32 18, i32 0, metadata !4, null}
!14 = metadata !{i32 20, i32 0, metadata !4, null}
!15 = metadata !{i32 22, i32 0, metadata !4, null}
