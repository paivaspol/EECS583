; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [75 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_basics.c\00", align 1
@.str2 = private unnamed_addr constant [68 x i8] c"\0A fatal error in BPG_setDefaultFields(%p)\0A bipartite graph is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [61 x i8] c"\0A fatal error in BPG_clearData(%p)\0A bipartite graph is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [56 x i8] c"\0A fatal error in BPG_free(%p)\0A bipartite graph is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._BPG* @BPG_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 16) #6, !dbg !67
  %0 = bitcast i8* %call to %struct._BPG*, !dbg !67
  tail call void @llvm.dbg.value(metadata !{%struct._BPG* %0}, i64 0, metadata !55), !dbg !67
  %cmp = icmp eq i8* %call, null, !dbg !67
  br i1 %cmp, label %if.then, label %if.end, !dbg !67

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !69, !tbaa !71
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 16, i32 27, i8* getelementptr inbounds ([75 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !69
  tail call void @exit(i32 -1) #7, !dbg !69
  unreachable, !dbg !69

if.end:                                           ; preds = %entry
  tail call void @BPG_setDefaultFields(%struct._BPG* %0) #8, !dbg !74
  ret %struct._BPG* %0, !dbg !75
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @BPG_setDefaultFields(%struct._BPG* %bpg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !60), !dbg !76
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !77
  br i1 %cmp, label %if.then, label %if.end, !dbg !77

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !78, !tbaa !71
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str2, i64 0, i64 0), %struct._BPG* null) #6, !dbg !78
  tail call void @exit(i32 -1) #7, !dbg !80
  unreachable, !dbg !80

if.end:                                           ; preds = %entry
  %1 = bitcast %struct._BPG* %bpg to i8*, !dbg !81
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 4, i1 false), !dbg !82
  ret void, !dbg !81
}

; Function Attrs: nounwind optsize uwtable
define void @BPG_clearData(%struct._BPG* %bpg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !63), !dbg !83
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !84
  br i1 %cmp, label %if.then, label %if.end, !dbg !84

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !85, !tbaa !71
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str3, i64 0, i64 0), %struct._BPG* null) #6, !dbg !85
  tail call void @exit(i32 -1) #7, !dbg !87
  unreachable, !dbg !87

if.end:                                           ; preds = %entry
  %graph = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !88
  %1 = load %struct._Graph** %graph, align 8, !dbg !88, !tbaa !71
  %cmp1 = icmp eq %struct._Graph* %1, null, !dbg !88
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !88

if.then2:                                         ; preds = %if.end
  tail call void @Graph_free(%struct._Graph* %1) #6, !dbg !89
  br label %if.end4, !dbg !91

if.end4:                                          ; preds = %if.end, %if.then2
  tail call void @BPG_setDefaultFields(%struct._BPG* %bpg) #8, !dbg !92
  ret void, !dbg !93
}

; Function Attrs: optsize
declare void @Graph_free(%struct._Graph*) #3

; Function Attrs: nounwind optsize uwtable
define void @BPG_free(%struct._BPG* %bpg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !66), !dbg !94
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !95
  br i1 %cmp, label %if.then, label %if.end, !dbg !95

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !96, !tbaa !71
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0), %struct._BPG* null) #6, !dbg !96
  tail call void @exit(i32 -1) #7, !dbg !98
  unreachable, !dbg !98

if.end:                                           ; preds = %entry
  tail call void @BPG_clearData(%struct._BPG* %bpg) #8, !dbg !99
  %1 = bitcast %struct._BPG* %bpg to i8*, !dbg !100
  tail call void @free(i8* %1) #6, !dbg !100
  tail call void @llvm.dbg.value(metadata !102, i64 0, metadata !66), !dbg !100
  ret void, !dbg !103
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !56, metadata !61, metadata !64}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_new", metadata !"BPG_new", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._BPG* ()* @BPG_new, null, null, metadata !54, i32 19} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 19] [BPG_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BPG]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"BPG", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [BPG] [line 21, size 0, align 0, offset 0] [from _BPG]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_BPG", i32 22, i64 128, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_BPG] [line 22, size 128, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../BPG.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nX", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nX] [line 23, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nY", i32 24, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nY] [line 24, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"graph", i32 25, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [graph] [line 25, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!18 = metadata !{i32 786454, metadata !11, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../../Graph/Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !52, metadata !53}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!25 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!28 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!30 = metadata !{i32 786454, metadata !20, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !40, metadata !42, metadata !43}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!38 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!40 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !41} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!43 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !44} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!45 = metadata !{i32 786454, metadata !32, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!46 = metadata !{i32 786451, metadata !32, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !47, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51}
!48 = metadata !{i32 786445, metadata !32, metadata !46, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!49 = metadata !{i32 786445, metadata !32, metadata !46, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!50 = metadata !{i32 786445, metadata !32, metadata !46, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!51 = metadata !{i32 786445, metadata !32, metadata !46, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!52 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !39} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!53 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !29} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786688, metadata !4, metadata !"bpg", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bpg] [line 20]
!56 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_setDefaultFields", metadata !"BPG_setDefaultFields", metadata !"", i32 47, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._BPG*)* @BPG_setDefaultFields, null, null, metadata !59, i32 49} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 49] [BPG_setDefaultFields]
!57 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{null, metadata !8}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786689, metadata !56, metadata !"bpg", metadata !5, i32 16777264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 48]
!61 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_clearData", metadata !"BPG_clearData", metadata !"", i32 81, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._BPG*)* @BPG_clearData, null, null, metadata !62, i32 83} ; [ DW_TAG_subprogram ] [line 81] [def] [scope 83] [BPG_clearData]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786689, metadata !61, metadata !"bpg", metadata !5, i32 16777298, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 82]
!64 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_free", metadata !"BPG_free", metadata !"", i32 116, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._BPG*)* @BPG_free, null, null, metadata !65, i32 118} ; [ DW_TAG_subprogram ] [line 116] [def] [scope 118] [BPG_free]
!65 = metadata !{metadata !66}
!66 = metadata !{i32 786689, metadata !64, metadata !"bpg", metadata !5, i32 16777333, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 117]
!67 = metadata !{i32 27, i32 0, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !4, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_basics.c]
!69 = metadata !{i32 27, i32 0, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !68, i32 27, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_basics.c]
!71 = metadata !{metadata !"any pointer", metadata !72}
!72 = metadata !{metadata !"omnipotent char", metadata !73}
!73 = metadata !{metadata !"Simple C/C++ TBAA"}
!74 = metadata !{i32 29, i32 0, metadata !4, null}
!75 = metadata !{i32 36, i32 0, metadata !4, null}
!76 = metadata !{i32 48, i32 0, metadata !56, null}
!77 = metadata !{i32 56, i32 0, metadata !56, null}
!78 = metadata !{i32 57, i32 0, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !56, i32 56, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_basics.c]
!80 = metadata !{i32 59, i32 0, metadata !79, null}
!81 = metadata !{i32 70, i32 0, metadata !56, null}
!82 = metadata !{i32 62, i32 0, metadata !56, null}
!83 = metadata !{i32 82, i32 0, metadata !61, null}
!84 = metadata !{i32 89, i32 0, metadata !61, null}
!85 = metadata !{i32 90, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !61, i32 89, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_basics.c]
!87 = metadata !{i32 92, i32 0, metadata !86, null}
!88 = metadata !{i32 95, i32 0, metadata !61, null}
!89 = metadata !{i32 96, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !61, i32 95, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_basics.c]
!91 = metadata !{i32 97, i32 0, metadata !90, null}
!92 = metadata !{i32 98, i32 0, metadata !61, null}
!93 = metadata !{i32 105, i32 0, metadata !61, null}
!94 = metadata !{i32 117, i32 0, metadata !64, null}
!95 = metadata !{i32 124, i32 0, metadata !64, null}
!96 = metadata !{i32 125, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !64, i32 124, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_basics.c]
!98 = metadata !{i32 127, i32 0, metadata !97, null}
!99 = metadata !{i32 130, i32 0, metadata !64, null}
!100 = metadata !{i32 132, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !64, i32 132, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_basics.c]
!102 = metadata !{%struct._BPG* null}
!103 = metadata !{i32 139, i32 0, metadata !64, null}
