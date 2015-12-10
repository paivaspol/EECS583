; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DSTree = type { %struct._Tree*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c\00", align 1
@.str2 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DSTree_setDefaultFields(%p)\0A dstree is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in DSTree_clearData(%p)\0A dstree is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DSTree_free(%p)\0A dstree is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._DSTree* @DSTree_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 16) #6, !dbg !49
  %0 = bitcast i8* %call to %struct._DSTree*, !dbg !49
  tail call void @llvm.dbg.value(metadata !{%struct._DSTree* %0}, i64 0, metadata !37), !dbg !49
  %cmp = icmp eq i8* %call, null, !dbg !49
  br i1 %cmp, label %if.then, label %if.end, !dbg !49

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !51, !tbaa !53
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 16, i32 27, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !51
  tail call void @exit(i32 -1) #7, !dbg !51
  unreachable, !dbg !51

if.end:                                           ; preds = %entry
  tail call void @DSTree_setDefaultFields(%struct._DSTree* %0) #8, !dbg !56
  ret %struct._DSTree* %0, !dbg !57
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @DSTree_setDefaultFields(%struct._DSTree* %dstree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !42), !dbg !58
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !59
  br i1 %cmp, label %if.then, label %if.end, !dbg !59

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !60, !tbaa !53
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._DSTree* null) #6, !dbg !60
  tail call void @exit(i32 -1) #7, !dbg !62
  unreachable, !dbg !62

if.end:                                           ; preds = %entry
  %1 = bitcast %struct._DSTree* %dstree to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 8, i1 false), !dbg !64
  ret void, !dbg !63
}

; Function Attrs: nounwind optsize uwtable
define void @DSTree_clearData(%struct._DSTree* %dstree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !45), !dbg !65
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !66
  br i1 %cmp, label %if.then, label %if.end, !dbg !66

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !67, !tbaa !53
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._DSTree* null) #6, !dbg !67
  tail call void @exit(i32 -1) #7, !dbg !69
  unreachable, !dbg !69

if.end:                                           ; preds = %entry
  %tree = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !70
  %1 = load %struct._Tree** %tree, align 8, !dbg !70, !tbaa !53
  %cmp1 = icmp eq %struct._Tree* %1, null, !dbg !70
  br i1 %cmp1, label %if.end5, label %if.then2, !dbg !70

if.then2:                                         ; preds = %if.end
  tail call void @Tree_clearData(%struct._Tree* %1) #6, !dbg !71
  %2 = load %struct._Tree** %tree, align 8, !dbg !73, !tbaa !53
  tail call void @Tree_free(%struct._Tree* %2) #6, !dbg !73
  br label %if.end5, !dbg !74

if.end5:                                          ; preds = %if.end, %if.then2
  %mapIV = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !75
  %3 = load %struct._IV** %mapIV, align 8, !dbg !75, !tbaa !53
  %cmp6 = icmp eq %struct._IV* %3, null, !dbg !75
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !75

if.then7:                                         ; preds = %if.end5
  tail call void @IV_free(%struct._IV* %3) #6, !dbg !76
  br label %if.end9, !dbg !78

if.end9:                                          ; preds = %if.end5, %if.then7
  tail call void @DSTree_setDefaultFields(%struct._DSTree* %dstree) #8, !dbg !79
  ret void, !dbg !80
}

; Function Attrs: optsize
declare void @Tree_clearData(%struct._Tree*) #3

; Function Attrs: optsize
declare void @Tree_free(%struct._Tree*) #3

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define void @DSTree_free(%struct._DSTree* %dstree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !48), !dbg !81
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !82
  br i1 %cmp, label %if.then, label %if.end, !dbg !82

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !83, !tbaa !53
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str4, i64 0, i64 0), %struct._DSTree* null) #6, !dbg !83
  tail call void @exit(i32 -1) #7, !dbg !85
  unreachable, !dbg !85

if.end:                                           ; preds = %entry
  tail call void @DSTree_clearData(%struct._DSTree* %dstree) #8, !dbg !86
  %1 = bitcast %struct._DSTree* %dstree to i8*, !dbg !87
  tail call void @free(i8* %1) #6, !dbg !87
  tail call void @llvm.dbg.value(metadata !89, i64 0, metadata !48), !dbg !87
  ret void, !dbg !90
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !38, metadata !43, metadata !46}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_new", metadata !"DSTree_new", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._DSTree* ()* @DSTree_new, null, null, metadata !36, i32 19} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 19] [DSTree_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
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
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786688, metadata !4, metadata !"dstree", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dstree] [line 20]
!38 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_setDefaultFields", metadata !"DSTree_setDefaultFields", metadata !"", i32 47, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DSTree*)* @DSTree_setDefaultFields, null, null, metadata !41, i32 49} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 49] [DSTree_setDefaultFields]
!39 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{null, metadata !8}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786689, metadata !38, metadata !"dstree", metadata !5, i32 16777264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 48]
!43 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_clearData", metadata !"DSTree_clearData", metadata !"", i32 80, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DSTree*)* @DSTree_clearData, null, null, metadata !44, i32 82} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 82] [DSTree_clearData]
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786689, metadata !43, metadata !"dstree", metadata !5, i32 16777297, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 81]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_free", metadata !"DSTree_free", metadata !"", i32 119, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DSTree*)* @DSTree_free, null, null, metadata !47, i32 121} ; [ DW_TAG_subprogram ] [line 119] [def] [scope 121] [DSTree_free]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786689, metadata !46, metadata !"dstree", metadata !5, i32 16777336, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 120]
!49 = metadata !{i32 27, i32 0, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !4, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c]
!51 = metadata !{i32 27, i32 0, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !50, i32 27, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c]
!53 = metadata !{metadata !"any pointer", metadata !54}
!54 = metadata !{metadata !"omnipotent char", metadata !55}
!55 = metadata !{metadata !"Simple C/C++ TBAA"}
!56 = metadata !{i32 29, i32 0, metadata !4, null}
!57 = metadata !{i32 36, i32 0, metadata !4, null}
!58 = metadata !{i32 48, i32 0, metadata !38, null}
!59 = metadata !{i32 56, i32 0, metadata !38, null}
!60 = metadata !{i32 57, i32 0, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !38, i32 56, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c]
!62 = metadata !{i32 59, i32 0, metadata !61, null}
!63 = metadata !{i32 69, i32 0, metadata !38, null}
!64 = metadata !{i32 62, i32 0, metadata !38, null}
!65 = metadata !{i32 81, i32 0, metadata !43, null}
!66 = metadata !{i32 88, i32 0, metadata !43, null}
!67 = metadata !{i32 89, i32 0, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !43, i32 88, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c]
!69 = metadata !{i32 91, i32 0, metadata !68, null}
!70 = metadata !{i32 94, i32 0, metadata !43, null}
!71 = metadata !{i32 95, i32 0, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !43, i32 94, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c]
!73 = metadata !{i32 96, i32 0, metadata !72, null}
!74 = metadata !{i32 97, i32 0, metadata !72, null}
!75 = metadata !{i32 98, i32 0, metadata !43, null}
!76 = metadata !{i32 99, i32 0, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !43, i32 98, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c]
!78 = metadata !{i32 100, i32 0, metadata !77, null}
!79 = metadata !{i32 101, i32 0, metadata !43, null}
!80 = metadata !{i32 108, i32 0, metadata !43, null}
!81 = metadata !{i32 120, i32 0, metadata !46, null}
!82 = metadata !{i32 127, i32 0, metadata !46, null}
!83 = metadata !{i32 128, i32 0, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !46, i32 127, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c]
!85 = metadata !{i32 130, i32 0, metadata !84, null}
!86 = metadata !{i32 133, i32 0, metadata !46, null}
!87 = metadata !{i32 134, i32 0, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !46, i32 134, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c]
!89 = metadata !{%struct._DSTree* null}
!90 = metadata !{i32 141, i32 0, metadata !46, null}
