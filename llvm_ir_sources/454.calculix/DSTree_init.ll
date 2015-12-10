; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DSTree = type { %struct._Tree*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [52 x i8] c"\0A fatal error in DSTree_init1(%p,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DSTree_init2(%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @DSTree_init1(%struct._DSTree* %dstree, i32 %ndomsep, i32 %nvtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !37), !dbg !47
  tail call void @llvm.dbg.value(metadata !{i32 %ndomsep}, i64 0, metadata !38), !dbg !48
  tail call void @llvm.dbg.value(metadata !{i32 %nvtx}, i64 0, metadata !39), !dbg !49
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !50
  %cmp1 = icmp slt i32 %ndomsep, 1, !dbg !50
  %or.cond = or i1 %cmp, %cmp1, !dbg !50
  br i1 %or.cond, label %if.then, label %if.end, !dbg !50

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !51, !tbaa !53
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._DSTree* %dstree, i32 %ndomsep, i32 %nvtx) #5, !dbg !51
  tail call void @exit(i32 -1) #6, !dbg !56
  unreachable, !dbg !56

if.end:                                           ; preds = %entry
  tail call void @DSTree_clearData(%struct._DSTree* %dstree) #5, !dbg !57
  %call2 = tail call %struct._Tree* @Tree_new() #5, !dbg !58
  %tree = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !58
  store %struct._Tree* %call2, %struct._Tree** %tree, align 8, !dbg !58, !tbaa !53
  tail call void @Tree_init1(%struct._Tree* %call2, i32 %ndomsep) #5, !dbg !59
  %call4 = tail call %struct._IV* @IV_new() #5, !dbg !60
  %mapIV = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !60
  store %struct._IV* %call4, %struct._IV** %mapIV, align 8, !dbg !60, !tbaa !53
  tail call void @IV_init(%struct._IV* %call4, i32 %nvtx, i32* null) #5, !dbg !61
  %1 = load %struct._IV** %mapIV, align 8, !dbg !62, !tbaa !53
  tail call void @IV_fill(%struct._IV* %1, i32 -1) #5, !dbg !62
  ret void, !dbg !63
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @DSTree_clearData(%struct._DSTree*) #3

; Function Attrs: optsize
declare %struct._Tree* @Tree_new() #3

; Function Attrs: optsize
declare void @Tree_init1(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @DSTree_init2(%struct._DSTree* %dstree, %struct._Tree* %tree, %struct._IV* %mapIV) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !44), !dbg !64
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !45), !dbg !65
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %mapIV}, i64 0, metadata !46), !dbg !66
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !67
  %cmp1 = icmp eq %struct._Tree* %tree, null, !dbg !67
  %or.cond = or i1 %cmp, %cmp1, !dbg !67
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !67

lor.lhs.false2:                                   ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !67
  %0 = load i32* %n, align 4, !dbg !67, !tbaa !68
  %cmp3 = icmp slt i32 %0, 1, !dbg !67
  %cmp5 = icmp eq %struct._IV* %mapIV, null, !dbg !67
  %or.cond21 = or i1 %cmp3, %cmp5, !dbg !67
  br i1 %or.cond21, label %if.then, label %lor.lhs.false6, !dbg !67

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %call = tail call i32 @IV_size(%struct._IV* %mapIV) #5, !dbg !69
  %cmp7 = icmp slt i32 %call, 1, !dbg !69
  br i1 %cmp7, label %if.then, label %if.end, !dbg !69

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !70, !tbaa !53
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), %struct._DSTree* %dstree, %struct._Tree* %tree, %struct._IV* %mapIV) #5, !dbg !70
  tail call void @exit(i32 -1) #6, !dbg !72
  unreachable, !dbg !72

if.end:                                           ; preds = %lor.lhs.false6
  tail call void @DSTree_clearData(%struct._DSTree* %dstree) #5, !dbg !73
  %tree9 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !74
  store %struct._Tree* %tree, %struct._Tree** %tree9, align 8, !dbg !74, !tbaa !53
  %mapIV10 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !75
  store %struct._IV* %mapIV, %struct._IV** %mapIV10, align 8, !dbg !75, !tbaa !53
  ret void, !dbg !76
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !40}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_init1", metadata !"DSTree_init1", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DSTree*, i32, i32)* @DSTree_init1, null, null, metadata !36, i32 18} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 18] [DSTree_init1]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !20, metadata !20}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DSTree]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"DSTree", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [DSTree] [line 22, size 0, align 0, offset 0] [from _DSTree]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_DSTree", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DSTree] [line 23, size 128, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../DSTree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !26}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tree", i32 24, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [tree] [line 24, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!15 = metadata !{i32 786454, metadata !11, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !22, metadata !24, metadata !25}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!25 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mapIV", i32 25, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [mapIV] [line 25, size 64, align 64, offset 64] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!28 = metadata !{i32 786454, metadata !11, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!34 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!36 = metadata !{metadata !37, metadata !38, metadata !39}
!37 = metadata !{i32 786689, metadata !4, metadata !"dstree", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 15]
!38 = metadata !{i32 786689, metadata !4, metadata !"ndomsep", metadata !5, i32 33554448, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ndomsep] [line 16]
!39 = metadata !{i32 786689, metadata !4, metadata !"nvtx", metadata !5, i32 50331665, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nvtx] [line 17]
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_init2", metadata !"DSTree_init2", metadata !"", i32 47, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DSTree*, %struct._Tree*, %struct._IV*)* @DSTree_init2, null, null, metadata !43, i32 51} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 51] [DSTree_init2]
!41 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{null, metadata !8, metadata !14, metadata !27}
!43 = metadata !{metadata !44, metadata !45, metadata !46}
!44 = metadata !{i32 786689, metadata !40, metadata !"dstree", metadata !5, i32 16777264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 48]
!45 = metadata !{i32 786689, metadata !40, metadata !"tree", metadata !5, i32 33554481, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 49]
!46 = metadata !{i32 786689, metadata !40, metadata !"mapIV", metadata !5, i32 50331698, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mapIV] [line 50]
!47 = metadata !{i32 15, i32 0, metadata !4, null}
!48 = metadata !{i32 16, i32 0, metadata !4, null}
!49 = metadata !{i32 17, i32 0, metadata !4, null}
!50 = metadata !{i32 24, i32 0, metadata !4, null}
!51 = metadata !{i32 25, i32 0, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !4, i32 24, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_init.c]
!53 = metadata !{metadata !"any pointer", metadata !54}
!54 = metadata !{metadata !"omnipotent char", metadata !55}
!55 = metadata !{metadata !"Simple C/C++ TBAA"}
!56 = metadata !{i32 27, i32 0, metadata !52, null}
!57 = metadata !{i32 29, i32 0, metadata !4, null}
!58 = metadata !{i32 30, i32 0, metadata !4, null}
!59 = metadata !{i32 31, i32 0, metadata !4, null}
!60 = metadata !{i32 32, i32 0, metadata !4, null}
!61 = metadata !{i32 33, i32 0, metadata !4, null}
!62 = metadata !{i32 34, i32 0, metadata !4, null}
!63 = metadata !{i32 36, i32 0, metadata !4, null}
!64 = metadata !{i32 48, i32 0, metadata !40, null}
!65 = metadata !{i32 49, i32 0, metadata !40, null}
!66 = metadata !{i32 50, i32 0, metadata !40, null}
!67 = metadata !{i32 57, i32 0, metadata !40, null}
!68 = metadata !{metadata !"int", metadata !54}
!69 = metadata !{i32 58, i32 0, metadata !40, null} ; [ DW_TAG_imported_module ]
!70 = metadata !{i32 59, i32 0, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !40, i32 58, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_init.c]
!72 = metadata !{i32 61, i32 0, metadata !71, null}
!73 = metadata !{i32 63, i32 0, metadata !40, null}
!74 = metadata !{i32 64, i32 0, metadata !40, null}
!75 = metadata !{i32 65, i32 0, metadata !40, null}
!76 = metadata !{i32 67, i32 0, metadata !40, null}
