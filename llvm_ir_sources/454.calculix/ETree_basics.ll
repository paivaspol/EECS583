; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [79 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in ETree_setDefaultFields(%p)\0A etree is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"\0A fatal error in ETree_clearData(%p)\0A etree is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [48 x i8] c"\0A fatal error in ETree_free(%p)\0A etree is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 40) #6, !dbg !53
  %0 = bitcast i8* %call to %struct._ETree*, !dbg !53
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %0}, i64 0, metadata !41), !dbg !53
  %cmp = icmp eq i8* %call, null, !dbg !53
  br i1 %cmp, label %if.then, label %if.end, !dbg !53

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !55, !tbaa !57
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 40, i32 27, i8* getelementptr inbounds ([79 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !55
  tail call void @exit(i32 -1) #7, !dbg !55
  unreachable, !dbg !55

if.end:                                           ; preds = %entry
  tail call void @ETree_setDefaultFields(%struct._ETree* %0) #8, !dbg !60
  ret %struct._ETree* %0, !dbg !61
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @ETree_setDefaultFields(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !46), !dbg !62
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !63
  br i1 %cmp, label %if.then, label %if.end, !dbg !63

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !64, !tbaa !57
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._ETree* null) #6, !dbg !64
  tail call void @exit(i32 -1) #7, !dbg !66
  unreachable, !dbg !66

if.end:                                           ; preds = %entry
  %1 = bitcast %struct._ETree* %etree to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 40, i32 4, i1 false), !dbg !68
  ret void, !dbg !67
}

; Function Attrs: nounwind optsize uwtable
define void @ETree_clearData(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !49), !dbg !69
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !70
  br i1 %cmp, label %if.then, label %if.end, !dbg !70

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !71, !tbaa !57
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), %struct._ETree* null) #6, !dbg !71
  tail call void @exit(i32 -1) #7, !dbg !73
  unreachable, !dbg !73

if.end:                                           ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !74
  %1 = load %struct._Tree** %tree, align 8, !dbg !74, !tbaa !57
  %cmp1 = icmp eq %struct._Tree* %1, null, !dbg !74
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !74

if.then2:                                         ; preds = %if.end
  tail call void @Tree_free(%struct._Tree* %1) #6, !dbg !75
  br label %if.end4, !dbg !77

if.end4:                                          ; preds = %if.end, %if.then2
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !78
  %2 = load %struct._IV** %nodwghtsIV, align 8, !dbg !78, !tbaa !57
  %cmp5 = icmp eq %struct._IV* %2, null, !dbg !78
  br i1 %cmp5, label %if.end8, label %if.then6, !dbg !78

if.then6:                                         ; preds = %if.end4
  tail call void @IV_free(%struct._IV* %2) #6, !dbg !79
  br label %if.end8, !dbg !81

if.end8:                                          ; preds = %if.end4, %if.then6
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !82
  %3 = load %struct._IV** %bndwghtsIV, align 8, !dbg !82, !tbaa !57
  %cmp9 = icmp eq %struct._IV* %3, null, !dbg !82
  br i1 %cmp9, label %if.end12, label %if.then10, !dbg !82

if.then10:                                        ; preds = %if.end8
  tail call void @IV_free(%struct._IV* %3) #6, !dbg !83
  br label %if.end12, !dbg !85

if.end12:                                         ; preds = %if.end8, %if.then10
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !86
  %4 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !86, !tbaa !57
  %cmp13 = icmp eq %struct._IV* %4, null, !dbg !86
  br i1 %cmp13, label %if.end16, label %if.then14, !dbg !86

if.then14:                                        ; preds = %if.end12
  tail call void @IV_free(%struct._IV* %4) #6, !dbg !87
  br label %if.end16, !dbg !89

if.end16:                                         ; preds = %if.end12, %if.then14
  tail call void @ETree_setDefaultFields(%struct._ETree* %etree) #8, !dbg !90
  ret void, !dbg !91
}

; Function Attrs: optsize
declare void @Tree_free(%struct._Tree*) #3

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define void @ETree_free(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !52), !dbg !92
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !93
  br i1 %cmp, label %if.then, label %if.end, !dbg !93

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !94, !tbaa !57
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), %struct._ETree* null) #6, !dbg !94
  tail call void @exit(i32 -1) #7, !dbg !96
  unreachable, !dbg !96

if.end:                                           ; preds = %entry
  tail call void @ETree_clearData(%struct._ETree* %etree) #8, !dbg !97
  %1 = bitcast %struct._ETree* %etree to i8*, !dbg !98
  tail call void @free(i8* %1) #6, !dbg !98
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !52), !dbg !98
  ret void, !dbg !101
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !42, metadata !47, metadata !50}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_new", metadata !"ETree_new", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._ETree* ()* @ETree_new, null, null, metadata !40, i32 19} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 19] [ETree_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ETree]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"ETree", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [ETree] [line 31, size 0, align 0, offset 0] [from _ETree]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_ETree", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ETree] [line 32, size 320, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../ETree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !28, metadata !38, metadata !39}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nfront", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nfront] [line 33, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvtx", i32 34, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 34, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tree", i32 35, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [tree] [line 35, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!18 = metadata !{i32 786454, metadata !11, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !26, metadata !27}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!28 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nodwghtsIV", i32 36, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [nodwghtsIV] [line 36, size 64, align 64, offset 128] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!30 = metadata !{i32 786454, metadata !11, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!38 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"bndwghtsIV", i32 37, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [bndwghtsIV] [line 37, size 64, align 64, offset 192] [from ]
!39 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vtxToFrontIV", i32 38, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [vtxToFrontIV] [line 38, size 64, align 64, offset 256] [from ]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786688, metadata !4, metadata !"etree", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [etree] [line 20]
!42 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_setDefaultFields", metadata !"ETree_setDefaultFields", metadata !"", i32 47, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ETree*)* @ETree_setDefaultFields, null, null, metadata !45, i32 49} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 49] [ETree_setDefaultFields]
!43 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!44 = metadata !{null, metadata !8}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786689, metadata !42, metadata !"etree", metadata !5, i32 16777264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 48]
!47 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_clearData", metadata !"ETree_clearData", metadata !"", i32 84, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ETree*)* @ETree_clearData, null, null, metadata !48, i32 86} ; [ DW_TAG_subprogram ] [line 84] [def] [scope 86] [ETree_clearData]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786689, metadata !47, metadata !"etree", metadata !5, i32 16777301, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 85]
!50 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_free", metadata !"ETree_free", metadata !"", i32 128, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ETree*)* @ETree_free, null, null, metadata !51, i32 130} ; [ DW_TAG_subprogram ] [line 128] [def] [scope 130] [ETree_free]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786689, metadata !50, metadata !"etree", metadata !5, i32 16777345, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 129]
!53 = metadata !{i32 27, i32 0, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !4, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c]
!55 = metadata !{i32 27, i32 0, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !54, i32 27, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c]
!57 = metadata !{metadata !"any pointer", metadata !58}
!58 = metadata !{metadata !"omnipotent char", metadata !59}
!59 = metadata !{metadata !"Simple C/C++ TBAA"}
!60 = metadata !{i32 29, i32 0, metadata !4, null}
!61 = metadata !{i32 36, i32 0, metadata !4, null}
!62 = metadata !{i32 48, i32 0, metadata !42, null}
!63 = metadata !{i32 56, i32 0, metadata !42, null}
!64 = metadata !{i32 57, i32 0, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !42, i32 56, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c]
!66 = metadata !{i32 59, i32 0, metadata !65, null}
!67 = metadata !{i32 73, i32 0, metadata !42, null}
!68 = metadata !{i32 62, i32 0, metadata !42, null}
!69 = metadata !{i32 85, i32 0, metadata !47, null}
!70 = metadata !{i32 92, i32 0, metadata !47, null}
!71 = metadata !{i32 93, i32 0, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !47, i32 92, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c]
!73 = metadata !{i32 95, i32 0, metadata !72, null}
!74 = metadata !{i32 98, i32 0, metadata !47, null}
!75 = metadata !{i32 99, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !47, i32 98, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c]
!77 = metadata !{i32 100, i32 0, metadata !76, null}
!78 = metadata !{i32 101, i32 0, metadata !47, null}
!79 = metadata !{i32 102, i32 0, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !47, i32 101, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c]
!81 = metadata !{i32 103, i32 0, metadata !80, null}
!82 = metadata !{i32 104, i32 0, metadata !47, null}
!83 = metadata !{i32 105, i32 0, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !47, i32 104, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c]
!85 = metadata !{i32 106, i32 0, metadata !84, null}
!86 = metadata !{i32 107, i32 0, metadata !47, null}
!87 = metadata !{i32 108, i32 0, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !47, i32 107, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c]
!89 = metadata !{i32 109, i32 0, metadata !88, null}
!90 = metadata !{i32 110, i32 0, metadata !47, null}
!91 = metadata !{i32 117, i32 0, metadata !47, null}
!92 = metadata !{i32 129, i32 0, metadata !50, null}
!93 = metadata !{i32 136, i32 0, metadata !50, null}
!94 = metadata !{i32 137, i32 0, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !50, i32 136, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c]
!96 = metadata !{i32 139, i32 0, metadata !95, null}
!97 = metadata !{i32 142, i32 0, metadata !50, null}
!98 = metadata !{i32 143, i32 0, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !50, i32 143, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_basics.c]
!100 = metadata !{%struct._ETree* null}
!101 = metadata !{i32 150, i32 0, metadata !50, null}
