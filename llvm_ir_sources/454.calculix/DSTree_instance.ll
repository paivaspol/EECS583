; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._DSTree = type { %struct._Tree*, %struct._IV* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [45 x i8] c"\0A fatal error in DSTree_tree(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [46 x i8] c"\0A fatal error in DSTree_mapIV(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Tree* @DSTree_tree(%struct._DSTree* %dstree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !37), !dbg !43
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !44
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !45, !tbaa !47
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._DSTree* null) #4, !dbg !45
  tail call void @exit(i32 -1) #5, !dbg !50
  unreachable, !dbg !50

if.end:                                           ; preds = %entry
  %tree = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !51
  %1 = load %struct._Tree** %tree, align 8, !dbg !51, !tbaa !47
  ret %struct._Tree* %1, !dbg !51
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @DSTree_mapIV(%struct._DSTree* %dstree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !42), !dbg !52
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !53
  br i1 %cmp, label %if.then, label %if.end, !dbg !53

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !54, !tbaa !47
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str1, i64 0, i64 0), %struct._DSTree* null) #4, !dbg !54
  tail call void @exit(i32 -1) #5, !dbg !56
  unreachable, !dbg !56

if.end:                                           ; preds = %entry
  %mapIV = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !57
  %1 = load %struct._IV** %mapIV, align 8, !dbg !57, !tbaa !47
  ret %struct._IV* %1, !dbg !57
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_instance.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_instance.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !38}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_tree", metadata !"DSTree_tree", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Tree* (%struct._DSTree*)* @DSTree_tree, null, null, metadata !36, i32 15} ; [ DW_TAG_subprogram ] [line 13] [def] [scope 15] [DSTree_tree]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_instance.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !20}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !18, metadata !19}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DSTree]
!21 = metadata !{i32 786454, metadata !1, null, metadata !"DSTree", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [DSTree] [line 22, size 0, align 0, offset 0] [from _DSTree]
!22 = metadata !{i32 786451, metadata !23, null, metadata !"_DSTree", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !24, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DSTree] [line 23, size 128, align 64, offset 0] [from ]
!23 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../DSTree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!24 = metadata !{metadata !25, metadata !26}
!25 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"tree", i32 24, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [tree] [line 24, size 64, align 64, offset 0] [from ]
!26 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"mapIV", i32 25, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [mapIV] [line 25, size 64, align 64, offset 64] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!28 = metadata !{i32 786454, metadata !23, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!34 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786689, metadata !4, metadata !"dstree", metadata !5, i32 16777230, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 14]
!38 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_mapIV", metadata !"DSTree_mapIV", metadata !"", i32 37, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._DSTree*)* @DSTree_mapIV, null, null, metadata !41, i32 39} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 39] [DSTree_mapIV]
!39 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{metadata !27, metadata !20}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786689, metadata !38, metadata !"dstree", metadata !5, i32 16777254, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 38]
!43 = metadata !{i32 14, i32 0, metadata !4, null}
!44 = metadata !{i32 21, i32 0, metadata !4, null}
!45 = metadata !{i32 22, i32 0, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_instance.c]
!47 = metadata !{metadata !"any pointer", metadata !48}
!48 = metadata !{metadata !"omnipotent char", metadata !49}
!49 = metadata !{metadata !"Simple C/C++ TBAA"}
!50 = metadata !{i32 24, i32 0, metadata !46, null}
!51 = metadata !{i32 26, i32 0, metadata !4, null}
!52 = metadata !{i32 38, i32 0, metadata !38, null}
!53 = metadata !{i32 45, i32 0, metadata !38, null}
!54 = metadata !{i32 46, i32 0, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !38, i32 45, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_instance.c]
!56 = metadata !{i32 48, i32 0, metadata !55, null}
!57 = metadata !{i32 50, i32 0, metadata !38, null}
