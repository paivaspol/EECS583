; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [77 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_setDefaultFields(%p)\0A tree is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in Tree_clearData(%p)\0A tree is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Tree_free(%p)\0A tree is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Tree* @Tree_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 32) #6, !dbg !33
  %0 = bitcast i8* %call to %struct._Tree*, !dbg !33
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %0}, i64 0, metadata !21), !dbg !33
  %cmp = icmp eq i8* %call, null, !dbg !33
  br i1 %cmp, label %if.then, label %if.end, !dbg !33

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !35, !tbaa !37
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 32, i32 27, i8* getelementptr inbounds ([77 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !35
  tail call void @exit(i32 -1) #7, !dbg !35
  unreachable, !dbg !35

if.end:                                           ; preds = %entry
  tail call void @Tree_setDefaultFields(%struct._Tree* %0) #8, !dbg !40
  ret %struct._Tree* %0, !dbg !41
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Tree_setDefaultFields(%struct._Tree* %tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !26), !dbg !42
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !44, !tbaa !37
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._Tree* null) #6, !dbg !44
  tail call void @exit(i32 -1) #7, !dbg !46
  unreachable, !dbg !46

if.end:                                           ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !47
  store i32 0, i32* %n, align 4, !dbg !47, !tbaa !48
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !49
  store i32 -1, i32* %root, align 4, !dbg !49, !tbaa !48
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !50
  %1 = bitcast i32** %par to i8*, !dbg !51
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false), !dbg !52
  ret void, !dbg !51
}

; Function Attrs: nounwind optsize uwtable
define void @Tree_clearData(%struct._Tree* %tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !29), !dbg !53
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !54
  br i1 %cmp, label %if.then, label %if.end, !dbg !54

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !55, !tbaa !37
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._Tree* null) #6, !dbg !55
  tail call void @exit(i32 -1) #7, !dbg !57
  unreachable, !dbg !57

if.end:                                           ; preds = %entry
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !58
  %1 = load i32** %par, align 8, !dbg !58, !tbaa !37
  %cmp1 = icmp eq i32* %1, null, !dbg !58
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !58

if.then2:                                         ; preds = %if.end
  tail call void @IVfree(i32* %1) #6, !dbg !59
  br label %if.end4, !dbg !61

if.end4:                                          ; preds = %if.end, %if.then2
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !62
  %2 = load i32** %fch, align 8, !dbg !62, !tbaa !37
  %cmp5 = icmp eq i32* %2, null, !dbg !62
  br i1 %cmp5, label %if.end8, label %if.then6, !dbg !62

if.then6:                                         ; preds = %if.end4
  tail call void @IVfree(i32* %2) #6, !dbg !63
  br label %if.end8, !dbg !65

if.end8:                                          ; preds = %if.end4, %if.then6
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !66
  %3 = load i32** %sib, align 8, !dbg !66, !tbaa !37
  %cmp9 = icmp eq i32* %3, null, !dbg !66
  br i1 %cmp9, label %if.end12, label %if.then10, !dbg !66

if.then10:                                        ; preds = %if.end8
  tail call void @IVfree(i32* %3) #6, !dbg !67
  br label %if.end12, !dbg !69

if.end12:                                         ; preds = %if.end8, %if.then10
  tail call void @Tree_setDefaultFields(%struct._Tree* %tree) #8, !dbg !70
  ret void, !dbg !71
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @Tree_free(%struct._Tree* %tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !32), !dbg !72
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !73
  br i1 %cmp, label %if.then, label %if.end, !dbg !73

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !74, !tbaa !37
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), %struct._Tree* null) #6, !dbg !74
  tail call void @exit(i32 -1) #7, !dbg !76
  unreachable, !dbg !76

if.end:                                           ; preds = %entry
  tail call void @Tree_clearData(%struct._Tree* %tree) #8, !dbg !77
  %1 = bitcast %struct._Tree* %tree to i8*, !dbg !78
  tail call void @free(i8* %1) #6, !dbg !78
  tail call void @llvm.dbg.value(metadata !80, i64 0, metadata !32), !dbg !78
  ret void, !dbg !81
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !22, metadata !27, metadata !30}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_new", metadata !"Tree_new", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Tree* ()* @Tree_new, null, null, metadata !20, i32 19} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 19] [Tree_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !18, metadata !19}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786688, metadata !4, metadata !"tree", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 20]
!22 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_setDefaultFields", metadata !"Tree_setDefaultFields", metadata !"", i32 47, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Tree*)* @Tree_setDefaultFields, null, null, metadata !25, i32 49} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 49] [Tree_setDefaultFields]
!23 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{null, metadata !8}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786689, metadata !22, metadata !"tree", metadata !5, i32 16777264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 48]
!27 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_clearData", metadata !"Tree_clearData", metadata !"", i32 83, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Tree*)* @Tree_clearData, null, null, metadata !28, i32 85} ; [ DW_TAG_subprogram ] [line 83] [def] [scope 85] [Tree_clearData]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786689, metadata !27, metadata !"tree", metadata !5, i32 16777300, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 84]
!30 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_free", metadata !"Tree_free", metadata !"", i32 124, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Tree*)* @Tree_free, null, null, metadata !31, i32 126} ; [ DW_TAG_subprogram ] [line 124] [def] [scope 126] [Tree_free]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786689, metadata !30, metadata !"tree", metadata !5, i32 16777341, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 125]
!33 = metadata !{i32 27, i32 0, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !4, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c]
!35 = metadata !{i32 27, i32 0, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !34, i32 27, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c]
!37 = metadata !{metadata !"any pointer", metadata !38}
!38 = metadata !{metadata !"omnipotent char", metadata !39}
!39 = metadata !{metadata !"Simple C/C++ TBAA"}
!40 = metadata !{i32 29, i32 0, metadata !4, null}
!41 = metadata !{i32 36, i32 0, metadata !4, null}
!42 = metadata !{i32 48, i32 0, metadata !22, null}
!43 = metadata !{i32 56, i32 0, metadata !22, null}
!44 = metadata !{i32 57, i32 0, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !22, i32 56, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c]
!46 = metadata !{i32 59, i32 0, metadata !45, null}
!47 = metadata !{i32 61, i32 0, metadata !22, null}
!48 = metadata !{metadata !"int", metadata !38}
!49 = metadata !{i32 62, i32 0, metadata !22, null}
!50 = metadata !{i32 63, i32 0, metadata !22, null}
!51 = metadata !{i32 72, i32 0, metadata !22, null}
!52 = metadata !{i32 64, i32 0, metadata !22, null}
!53 = metadata !{i32 84, i32 0, metadata !27, null}
!54 = metadata !{i32 91, i32 0, metadata !27, null}
!55 = metadata !{i32 92, i32 0, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !27, i32 91, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c]
!57 = metadata !{i32 94, i32 0, metadata !56, null}
!58 = metadata !{i32 97, i32 0, metadata !27, null}
!59 = metadata !{i32 98, i32 0, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !27, i32 97, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c]
!61 = metadata !{i32 99, i32 0, metadata !60, null}
!62 = metadata !{i32 100, i32 0, metadata !27, null}
!63 = metadata !{i32 101, i32 0, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !27, i32 100, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c]
!65 = metadata !{i32 102, i32 0, metadata !64, null}
!66 = metadata !{i32 103, i32 0, metadata !27, null}
!67 = metadata !{i32 104, i32 0, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !27, i32 103, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c]
!69 = metadata !{i32 105, i32 0, metadata !68, null}
!70 = metadata !{i32 106, i32 0, metadata !27, null}
!71 = metadata !{i32 113, i32 0, metadata !27, null}
!72 = metadata !{i32 125, i32 0, metadata !30, null}
!73 = metadata !{i32 132, i32 0, metadata !30, null}
!74 = metadata !{i32 133, i32 0, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !30, i32 132, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c]
!76 = metadata !{i32 135, i32 0, metadata !75, null}
!77 = metadata !{i32 138, i32 0, metadata !30, null}
!78 = metadata !{i32 140, i32 0, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !30, i32 140, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c]
!80 = metadata !{%struct._Tree* null}
!81 = metadata !{i32 147, i32 0, metadata !30, null}
