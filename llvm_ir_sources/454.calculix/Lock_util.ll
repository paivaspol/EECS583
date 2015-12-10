; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [43 x i8] c"\0A fatal error in Lock_lock(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Lock_unlock(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Lock_lock(%struct._Lock* %lock) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Lock* %lock}, i64 0, metadata !19), !dbg !23
  %cmp = icmp eq %struct._Lock* %lock, null, !dbg !24
  br i1 %cmp, label %if.then, label %if.end, !dbg !24

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !25, !tbaa !27
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str, i64 0, i64 0), %struct._Lock* null) #4, !dbg !25
  tail call void @exit(i32 -1) #5, !dbg !30
  unreachable, !dbg !30

if.end:                                           ; preds = %entry
  %nlocks = getelementptr inbounds %struct._Lock* %lock, i64 0, i32 1, !dbg !31
  %1 = load i32* %nlocks, align 4, !dbg !31, !tbaa !32
  %inc = add nsw i32 %1, 1, !dbg !31
  store i32 %inc, i32* %nlocks, align 4, !dbg !31, !tbaa !32
  ret void, !dbg !33
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Lock_unlock(%struct._Lock* %lock) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Lock* %lock}, i64 0, metadata !22), !dbg !34
  %cmp = icmp eq %struct._Lock* %lock, null, !dbg !35
  br i1 %cmp, label %if.then, label %if.end, !dbg !35

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !36, !tbaa !27
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), %struct._Lock* null) #4, !dbg !36
  tail call void @exit(i32 -1) #5, !dbg !38
  unreachable, !dbg !38

if.end:                                           ; preds = %entry
  %nunlocks = getelementptr inbounds %struct._Lock* %lock, i64 0, i32 2, !dbg !39
  %1 = load i32* %nunlocks, align 4, !dbg !39, !tbaa !32
  %inc = add nsw i32 %1, 1, !dbg !39
  store i32 %inc, i32* %nunlocks, align 4, !dbg !39, !tbaa !32
  ret void, !dbg !40
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !20}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Lock_lock", metadata !"Lock_lock", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Lock*)* @Lock_lock, null, null, metadata !18, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [Lock_lock]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
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
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786689, metadata !4, metadata !"lock", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lock] [line 17]
!20 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Lock_unlock", metadata !"Lock_unlock", metadata !"", i32 72, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Lock*)* @Lock_unlock, null, null, metadata !21, i32 74} ; [ DW_TAG_subprogram ] [line 72] [def] [scope 74] [Lock_unlock]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786689, metadata !20, metadata !"lock", metadata !5, i32 16777289, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lock] [line 73]
!23 = metadata !{i32 17, i32 0, metadata !4, null}
!24 = metadata !{i32 24, i32 0, metadata !4, null}
!25 = metadata !{i32 25, i32 0, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !4, i32 24, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_util.c]
!27 = metadata !{metadata !"any pointer", metadata !28}
!28 = metadata !{metadata !"omnipotent char", metadata !29}
!29 = metadata !{metadata !"Simple C/C++ TBAA"}
!30 = metadata !{i32 27, i32 0, metadata !26, null}
!31 = metadata !{i32 59, i32 0, metadata !4, null}
!32 = metadata !{metadata !"int", metadata !28}
!33 = metadata !{i32 61, i32 0, metadata !4, null}
!34 = metadata !{i32 73, i32 0, metadata !20, null}
!35 = metadata !{i32 80, i32 0, metadata !20, null}
!36 = metadata !{i32 81, i32 0, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !20, i32 80, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_util.c]
!38 = metadata !{i32 83, i32 0, metadata !37, null}
!39 = metadata !{i32 85, i32 0, metadata !20, null}
!40 = metadata !{i32 118, i32 0, metadata !20, null}
