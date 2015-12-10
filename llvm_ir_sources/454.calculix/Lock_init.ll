; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Lock = type { i8*, i32, i32 }

; Function Attrs: nounwind optsize readnone uwtable
define void @Lock_init(%struct._Lock* nocapture %lock, i32 %lockflag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Lock* %lock}, i64 0, metadata !19), !dbg !21
  tail call void @llvm.dbg.value(metadata !{i32 %lockflag}, i64 0, metadata !20), !dbg !22
  ret void, !dbg !23
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Lock_init", metadata !"Lock_init", metadata !"", i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Lock*, i32)* @Lock_init, null, null, metadata !18, i32 29} ; [ DW_TAG_subprogram ] [line 26] [def] [scope 29] [Lock_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !16}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Lock]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Lock", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Lock] [line 36, size 0, align 0, offset 0] [from _Lock]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Lock", i32 37, i64 128, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Lock] [line 37, size 128, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/../Lock.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !17}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mutex", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [mutex] [line 45, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlocks", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [nlocks] [line 47, size 32, align 32, offset 64] [from int]
!16 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nunlocks", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !16} ; [ DW_TAG_member ] [nunlocks] [line 48, size 32, align 32, offset 96] [from int]
!18 = metadata !{metadata !19, metadata !20}
!19 = metadata !{i32 786689, metadata !4, metadata !"lock", metadata !5, i32 16777243, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lock] [line 27]
!20 = metadata !{i32 786689, metadata !4, metadata !"lockflag", metadata !5, i32 33554460, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lockflag] [line 28]
!21 = metadata !{i32 27, i32 0, metadata !4, null}
!22 = metadata !{i32 28, i32 0, metadata !4, null}
!23 = metadata !{i32 49, i32 0, metadata !4, null}
