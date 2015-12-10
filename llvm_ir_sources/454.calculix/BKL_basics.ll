; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [75 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"\0A fatal error in BKL_setDefaultFields(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A fatal error in BKL_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [42 x i8] c"\0A fatal error in BKL_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._BKL* @BKL_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 88) #6, !dbg !90
  %0 = bitcast i8* %call to %struct._BKL*, !dbg !90
  tail call void @llvm.dbg.value(metadata !{%struct._BKL* %0}, i64 0, metadata !78), !dbg !90
  %cmp = icmp eq i8* %call, null, !dbg !90
  br i1 %cmp, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !92, !tbaa !94
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 88, i32 19, i8* getelementptr inbounds ([75 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !92
  tail call void @exit(i32 -1) #7, !dbg !92
  unreachable, !dbg !92

if.end:                                           ; preds = %entry
  tail call void @BKL_setDefaultFields(%struct._BKL* %0) #8, !dbg !97
  ret %struct._BKL* %0, !dbg !98
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @BKL_setDefaultFields(%struct._BKL* %bkl) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !83), !dbg !99
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !100
  br i1 %cmp, label %if.then, label %if.end, !dbg !100

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !101, !tbaa !94
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), %struct._BKL* null) #6, !dbg !101
  tail call void @exit(i32 -1) #7, !dbg !103
  unreachable, !dbg !103

if.end:                                           ; preds = %entry
  %colors = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !104
  %alpha = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 13, !dbg !105
  store float 0.000000e+00, float* %alpha, align 4, !dbg !105, !tbaa !106
  %regwghts = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !107
  store i32* null, i32** %regwghts, align 8, !dbg !107, !tbaa !94
  %1 = bitcast %struct._BKL* %bkl to i8*, !dbg !108
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 44, i32 8, i1 false), !dbg !109
  %2 = bitcast i32** %colors to i8*, !dbg !108
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 20, i32 8, i1 false), !dbg !104
  ret void, !dbg !108
}

; Function Attrs: nounwind optsize uwtable
define void @BKL_clearData(%struct._BKL* %bkl) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !86), !dbg !110
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !111
  br i1 %cmp, label %if.then, label %if.end, !dbg !111

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !112, !tbaa !94
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), %struct._BKL* null) #6, !dbg !112
  tail call void @exit(i32 -1) #7, !dbg !114
  unreachable, !dbg !114

if.end:                                           ; preds = %entry
  %colors = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !115
  %1 = load i32** %colors, align 8, !dbg !115, !tbaa !94
  %cmp1 = icmp eq i32* %1, null, !dbg !115
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !115

if.then2:                                         ; preds = %if.end
  tail call void @IVfree(i32* %1) #6, !dbg !116
  br label %if.end4, !dbg !118

if.end4:                                          ; preds = %if.end, %if.then2
  %bpg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !119
  %2 = load %struct._BPG** %bpg, align 8, !dbg !119, !tbaa !94
  %cmp5 = icmp eq %struct._BPG* %2, null, !dbg !119
  br i1 %cmp5, label %if.end16, label %land.lhs.true, !dbg !119

land.lhs.true:                                    ; preds = %if.end4
  %graph = getelementptr inbounds %struct._BPG* %2, i64 0, i32 2, !dbg !119
  %3 = load %struct._Graph** %graph, align 8, !dbg !119, !tbaa !94
  %cmp7 = icmp eq %struct._Graph* %3, null, !dbg !119
  br i1 %cmp7, label %if.end16, label %land.lhs.true8, !dbg !119

land.lhs.true8:                                   ; preds = %land.lhs.true
  %vwghts = getelementptr inbounds %struct._Graph* %3, i64 0, i32 7, !dbg !119
  %4 = load i32** %vwghts, align 8, !dbg !119, !tbaa !94
  %cmp11 = icmp eq i32* %4, null, !dbg !119
  br i1 %cmp11, label %land.lhs.true12, label %if.end16, !dbg !119

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %regwghts = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !119
  %5 = load i32** %regwghts, align 8, !dbg !119, !tbaa !94
  %cmp13 = icmp eq i32* %5, null, !dbg !119
  br i1 %cmp13, label %if.end16, label %if.then14, !dbg !119

if.then14:                                        ; preds = %land.lhs.true12
  tail call void @IVfree(i32* %5) #6, !dbg !120
  br label %if.end16, !dbg !122

if.end16:                                         ; preds = %land.lhs.true12, %land.lhs.true, %if.end4, %if.then14, %land.lhs.true8
  tail call void @BKL_setDefaultFields(%struct._BKL* %bkl) #8, !dbg !123
  ret void, !dbg !124
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @BKL_free(%struct._BKL* %bkl) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !89), !dbg !125
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !126
  br i1 %cmp, label %if.then, label %if.end, !dbg !126

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !127, !tbaa !94
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str4, i64 0, i64 0), %struct._BKL* null) #6, !dbg !127
  tail call void @exit(i32 -1) #7, !dbg !129
  unreachable, !dbg !129

if.end:                                           ; preds = %entry
  tail call void @BKL_clearData(%struct._BKL* %bkl) #8, !dbg !130
  %1 = bitcast %struct._BKL* %bkl to i8*, !dbg !131
  tail call void @free(i8* %1) #6, !dbg !131
  tail call void @llvm.dbg.value(metadata !133, i64 0, metadata !89), !dbg !131
  ret void, !dbg !134
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !79, metadata !84, metadata !87}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_new", metadata !"BKL_new", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._BKL* ()* @BKL_new, null, null, metadata !77, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [BKL_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BKL]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"BKL", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [BKL] [line 45, size 0, align 0, offset 0] [from _BKL]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_BKL", i32 46, i64 704, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_BKL] [line 46, size 704, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../BKL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !74, metadata !75}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"bpg", i32 47, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [bpg] [line 47, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BPG]
!15 = metadata !{i32 786454, metadata !11, null, metadata !"BPG", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [BPG] [line 21, size 0, align 0, offset 0] [from _BPG]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"_BPG", i32 22, i64 128, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [_BPG] [line 22, size 128, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../BPG/BPG.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !22}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"nX", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [nX] [line 23, size 32, align 32, offset 0] [from int]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"nY", i32 24, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [nY] [line 24, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"graph", i32 25, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [graph] [line 25, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!24 = metadata !{i32 786454, metadata !17, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!25 = metadata !{i32 786451, metadata !26, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!26 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../Graph/Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !58, metadata !59}
!28 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!29 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!30 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!31 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!32 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!33 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!34 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!36 = metadata !{i32 786454, metadata !26, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!37 = metadata !{i32 786451, metadata !38, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !39, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!38 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !46, metadata !48, metadata !49}
!40 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!41 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!42 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!43 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!44 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!46 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !47} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!48 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !20} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!49 = metadata !{i32 786445, metadata !38, metadata !37, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !50} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!51 = metadata !{i32 786454, metadata !38, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!52 = metadata !{i32 786451, metadata !38, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !53, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57}
!54 = metadata !{i32 786445, metadata !38, metadata !52, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!55 = metadata !{i32 786445, metadata !38, metadata !52, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!56 = metadata !{i32 786445, metadata !38, metadata !52, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!57 = metadata !{i32 786445, metadata !38, metadata !52, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !50} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!58 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !45} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!59 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !35} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!60 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ndom", i32 48, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [ndom] [line 48, size 32, align 32, offset 64] [from int]
!61 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nseg", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [nseg] [line 49, size 32, align 32, offset 96] [from int]
!62 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nreg", i32 50, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [nreg] [line 50, size 32, align 32, offset 128] [from int]
!63 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"totweight", i32 51, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [totweight] [line 51, size 32, align 32, offset 160] [from int]
!64 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"npass", i32 52, i64 32, i64 32, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [npass] [line 52, size 32, align 32, offset 192] [from int]
!65 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"npatch", i32 53, i64 32, i64 32, i64 224, i32 0, metadata !20} ; [ DW_TAG_member ] [npatch] [line 53, size 32, align 32, offset 224] [from int]
!66 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nflips", i32 54, i64 32, i64 32, i64 256, i32 0, metadata !20} ; [ DW_TAG_member ] [nflips] [line 54, size 32, align 32, offset 256] [from int]
!67 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nimprove", i32 55, i64 32, i64 32, i64 288, i32 0, metadata !20} ; [ DW_TAG_member ] [nimprove] [line 55, size 32, align 32, offset 288] [from int]
!68 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ngaineval", i32 56, i64 32, i64 32, i64 320, i32 0, metadata !20} ; [ DW_TAG_member ] [ngaineval] [line 56, size 32, align 32, offset 320] [from int]
!69 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colors", i32 57, i64 64, i64 64, i64 384, i32 0, metadata !45} ; [ DW_TAG_member ] [colors] [line 57, size 64, align 64, offset 384] [from ]
!70 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"cweights", i32 58, i64 96, i64 32, i64 448, i32 0, metadata !71} ; [ DW_TAG_member ] [cweights] [line 58, size 96, align 32, offset 448] [from ]
!71 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !20, metadata !72, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!74 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"regwghts", i32 59, i64 64, i64 64, i64 576, i32 0, metadata !45} ; [ DW_TAG_member ] [regwghts] [line 59, size 64, align 64, offset 576] [from ]
!75 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"alpha", i32 60, i64 32, i64 32, i64 640, i32 0, metadata !76} ; [ DW_TAG_member ] [alpha] [line 60, size 32, align 32, offset 640] [from float]
!76 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786688, metadata !4, metadata !"bkl", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bkl] [line 17]
!79 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_setDefaultFields", metadata !"BKL_setDefaultFields", metadata !"", i32 34, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._BKL*)* @BKL_setDefaultFields, null, null, metadata !82, i32 36} ; [ DW_TAG_subprogram ] [line 34] [def] [scope 36] [BKL_setDefaultFields]
!80 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{null, metadata !8}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786689, metadata !79, metadata !"bkl", metadata !5, i32 16777251, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 35]
!84 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_clearData", metadata !"BKL_clearData", metadata !"", i32 70, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._BKL*)* @BKL_clearData, null, null, metadata !85, i32 72} ; [ DW_TAG_subprogram ] [line 70] [def] [scope 72] [BKL_clearData]
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786689, metadata !84, metadata !"bkl", metadata !5, i32 16777287, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 71]
!87 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_free", metadata !"BKL_free", metadata !"", i32 100, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._BKL*)* @BKL_free, null, null, metadata !88, i32 102} ; [ DW_TAG_subprogram ] [line 100] [def] [scope 102] [BKL_free]
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786689, metadata !87, metadata !"bkl", metadata !5, i32 16777317, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 101]
!90 = metadata !{i32 19, i32 0, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c]
!92 = metadata !{i32 19, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !91, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c]
!94 = metadata !{metadata !"any pointer", metadata !95}
!95 = metadata !{metadata !"omnipotent char", metadata !96}
!96 = metadata !{metadata !"Simple C/C++ TBAA"}
!97 = metadata !{i32 21, i32 0, metadata !4, null}
!98 = metadata !{i32 23, i32 0, metadata !4, null}
!99 = metadata !{i32 35, i32 0, metadata !79, null}
!100 = metadata !{i32 37, i32 0, metadata !79, null}
!101 = metadata !{i32 38, i32 0, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !79, i32 37, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c]
!103 = metadata !{i32 40, i32 0, metadata !102, null}
!104 = metadata !{i32 52, i32 0, metadata !79, null}
!105 = metadata !{i32 53, i32 0, metadata !79, null}
!106 = metadata !{metadata !"float", metadata !95}
!107 = metadata !{i32 55, i32 0, metadata !79, null}
!108 = metadata !{i32 57, i32 0, metadata !79, null}
!109 = metadata !{i32 43, i32 0, metadata !79, null}
!110 = metadata !{i32 71, i32 0, metadata !84, null}
!111 = metadata !{i32 73, i32 0, metadata !84, null}
!112 = metadata !{i32 74, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !84, i32 73, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c]
!114 = metadata !{i32 76, i32 0, metadata !113, null}
!115 = metadata !{i32 78, i32 0, metadata !84, null}
!116 = metadata !{i32 79, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !84, i32 78, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c]
!118 = metadata !{i32 80, i32 0, metadata !117, null}
!119 = metadata !{i32 81, i32 0, metadata !84, null}
!120 = metadata !{i32 85, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !84, i32 84, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c]
!122 = metadata !{i32 86, i32 0, metadata !121, null}
!123 = metadata !{i32 87, i32 0, metadata !84, null}
!124 = metadata !{i32 89, i32 0, metadata !84, null}
!125 = metadata !{i32 101, i32 0, metadata !87, null}
!126 = metadata !{i32 103, i32 0, metadata !87, null}
!127 = metadata !{i32 104, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !87, i32 103, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c]
!129 = metadata !{i32 106, i32 0, metadata !128, null}
!130 = metadata !{i32 108, i32 0, metadata !87, null}
!131 = metadata !{i32 109, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !87, i32 109, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_basics.c]
!133 = metadata !{%struct._BKL* null}
!134 = metadata !{i32 111, i32 0, metadata !87, null}
