; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/synclib.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define void @syncall() #0 {
entry:
  tail call void @put_serverbyte(i8 zeroext 17) #2, !dbg !8
  tail call void @put_serverbyte(i8 zeroext 19) #2, !dbg !9
  %call = tail call zeroext i8 (...)* @get_serverbyte() #2, !dbg !10
  ret void, !dbg !11
}

; Function Attrs: optsize
declare void @put_serverbyte(i8 zeroext) #1

; Function Attrs: optsize
declare zeroext i8 @get_serverbyte(...) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/synclib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/synclib.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"syncall", metadata !"syncall", metadata !"", i32 37, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @syncall, null, null, metadata !2, i32 38} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 38] [syncall]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/synclib.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{i32 39, i32 0, metadata !4, null}
!9 = metadata !{i32 40, i32 0, metadata !4, null}
!10 = metadata !{i32 41, i32 0, metadata !4, null}
!11 = metadata !{i32 42, i32 0, metadata !4, null}
