; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [79 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_basics.c\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in Graph_setDefaultFields(%p)\0A graph is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Graph_clearData(%p)\0A graph is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [48 x i8] c"\0A fatal error in Graph_free(%p)\0A graph is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Graph* @Graph_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #6, !dbg !59
  %0 = bitcast i8* %call to %struct._Graph*, !dbg !59
  tail call void @llvm.dbg.value(metadata !{%struct._Graph* %0}, i64 0, metadata !47), !dbg !59
  %cmp = icmp eq i8* %call, null, !dbg !59
  br i1 %cmp, label %if.then, label %if.end, !dbg !59

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !61, !tbaa !63
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 48, i32 27, i8* getelementptr inbounds ([79 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !61
  tail call void @exit(i32 -1) #7, !dbg !61
  unreachable, !dbg !61

if.end:                                           ; preds = %entry
  tail call void @Graph_setDefaultFields(%struct._Graph* %0) #8, !dbg !66
  ret %struct._Graph* %0, !dbg !67
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Graph_setDefaultFields(%struct._Graph* %g) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !52), !dbg !68
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !69
  br i1 %cmp, label %if.then, label %if.end, !dbg !69

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !70, !tbaa !63
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._Graph* null) #6, !dbg !70
  tail call void @exit(i32 -1) #7, !dbg !72
  unreachable, !dbg !72

if.end:                                           ; preds = %entry
  %1 = bitcast %struct._Graph* %g to i8*, !dbg !73
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 48, i32 4, i1 false), !dbg !74
  ret void, !dbg !73
}

; Function Attrs: nounwind optsize uwtable
define void @Graph_clearData(%struct._Graph* %g) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !55), !dbg !75
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !76
  br i1 %cmp, label %if.then, label %if.end, !dbg !76

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !77, !tbaa !63
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), %struct._Graph* null) #6, !dbg !77
  tail call void @exit(i32 -1) #7, !dbg !79
  unreachable, !dbg !79

if.end:                                           ; preds = %entry
  %adjIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6, !dbg !80
  %1 = load %struct._IVL** %adjIVL, align 8, !dbg !80, !tbaa !63
  %cmp1 = icmp eq %struct._IVL* %1, null, !dbg !80
  br i1 %cmp1, label %if.end5, label %if.then2, !dbg !80

if.then2:                                         ; preds = %if.end
  %call4 = tail call %struct._IVL* @IVL_free(%struct._IVL* %1) #6, !dbg !81
  br label %if.end5, !dbg !83

if.end5:                                          ; preds = %if.end, %if.then2
  %vwghts = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !84
  %2 = load i32** %vwghts, align 8, !dbg !84, !tbaa !63
  %cmp6 = icmp eq i32* %2, null, !dbg !84
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !84

if.then7:                                         ; preds = %if.end5
  tail call void @IVfree(i32* %2) #6, !dbg !85
  br label %if.end9, !dbg !87

if.end9:                                          ; preds = %if.end5, %if.then7
  %ewghtIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8, !dbg !88
  %3 = load %struct._IVL** %ewghtIVL, align 8, !dbg !88, !tbaa !63
  %cmp10 = icmp eq %struct._IVL* %3, null, !dbg !88
  br i1 %cmp10, label %if.end14, label %if.then11, !dbg !88

if.then11:                                        ; preds = %if.end9
  %call13 = tail call %struct._IVL* @IVL_free(%struct._IVL* %3) #6, !dbg !89
  br label %if.end14, !dbg !91

if.end14:                                         ; preds = %if.end9, %if.then11
  tail call void @Graph_setDefaultFields(%struct._Graph* %g) #8, !dbg !92
  ret void, !dbg !93
}

; Function Attrs: optsize
declare %struct._IVL* @IVL_free(%struct._IVL*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @Graph_free(%struct._Graph* %g) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !58), !dbg !94
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !95
  br i1 %cmp, label %if.then, label %if.end, !dbg !95

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !96, !tbaa !63
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), %struct._Graph* null) #6, !dbg !96
  tail call void @exit(i32 -1) #7, !dbg !98
  unreachable, !dbg !98

if.end:                                           ; preds = %entry
  tail call void @Graph_clearData(%struct._Graph* %g) #8, !dbg !99
  %1 = bitcast %struct._Graph* %g to i8*, !dbg !100
  tail call void @free(i8* %1) #6, !dbg !100
  tail call void @llvm.dbg.value(metadata !102, i64 0, metadata !58), !dbg !100
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !48, metadata !53, metadata !56}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_new", metadata !"Graph_new", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Graph* ()* @Graph_new, null, null, metadata !46, i32 19} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 19] [Graph_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !44, metadata !45}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!22 = metadata !{i32 786454, metadata !11, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !35}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!29 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!30 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!34 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!35 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!37 = metadata !{i32 786454, metadata !24, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!38 = metadata !{i32 786451, metadata !24, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !39, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43}
!40 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!41 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!42 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!43 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!45 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786688, metadata !4, metadata !"g", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 20]
!48 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_setDefaultFields", metadata !"Graph_setDefaultFields", metadata !"", i32 47, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Graph*)* @Graph_setDefaultFields, null, null, metadata !51, i32 49} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 49] [Graph_setDefaultFields]
!49 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{null, metadata !8}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786689, metadata !48, metadata !"g", metadata !5, i32 16777264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 48]
!53 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_clearData", metadata !"Graph_clearData", metadata !"", i32 87, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Graph*)* @Graph_clearData, null, null, metadata !54, i32 89} ; [ DW_TAG_subprogram ] [line 87] [def] [scope 89] [Graph_clearData]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786689, metadata !53, metadata !"g", metadata !5, i32 16777304, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 88]
!56 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_free", metadata !"Graph_free", metadata !"", i32 128, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Graph*)* @Graph_free, null, null, metadata !57, i32 130} ; [ DW_TAG_subprogram ] [line 128] [def] [scope 130] [Graph_free]
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786689, metadata !56, metadata !"g", metadata !5, i32 16777345, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 129]
!59 = metadata !{i32 27, i32 0, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !4, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_basics.c]
!61 = metadata !{i32 27, i32 0, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !60, i32 27, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_basics.c]
!63 = metadata !{metadata !"any pointer", metadata !64}
!64 = metadata !{metadata !"omnipotent char", metadata !65}
!65 = metadata !{metadata !"Simple C/C++ TBAA"}
!66 = metadata !{i32 29, i32 0, metadata !4, null}
!67 = metadata !{i32 36, i32 0, metadata !4, null}
!68 = metadata !{i32 48, i32 0, metadata !48, null}
!69 = metadata !{i32 56, i32 0, metadata !48, null}
!70 = metadata !{i32 57, i32 0, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !48, i32 56, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_basics.c]
!72 = metadata !{i32 59, i32 0, metadata !71, null}
!73 = metadata !{i32 76, i32 0, metadata !48, null}
!74 = metadata !{i32 62, i32 0, metadata !48, null}
!75 = metadata !{i32 88, i32 0, metadata !53, null}
!76 = metadata !{i32 95, i32 0, metadata !53, null}
!77 = metadata !{i32 96, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !53, i32 95, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_basics.c]
!79 = metadata !{i32 98, i32 0, metadata !78, null}
!80 = metadata !{i32 101, i32 0, metadata !53, null}
!81 = metadata !{i32 102, i32 0, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !53, i32 101, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_basics.c]
!83 = metadata !{i32 103, i32 0, metadata !82, null}
!84 = metadata !{i32 104, i32 0, metadata !53, null}
!85 = metadata !{i32 105, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !53, i32 104, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_basics.c]
!87 = metadata !{i32 106, i32 0, metadata !86, null}
!88 = metadata !{i32 107, i32 0, metadata !53, null}
!89 = metadata !{i32 108, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !53, i32 107, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_basics.c]
!91 = metadata !{i32 109, i32 0, metadata !90, null}
!92 = metadata !{i32 110, i32 0, metadata !53, null}
!93 = metadata !{i32 117, i32 0, metadata !53, null}
!94 = metadata !{i32 129, i32 0, metadata !56, null}
!95 = metadata !{i32 136, i32 0, metadata !56, null}
!96 = metadata !{i32 137, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !56, i32 136, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_basics.c]
!98 = metadata !{i32 139, i32 0, metadata !97, null}
!99 = metadata !{i32 142, i32 0, metadata !56, null}
!100 = metadata !{i32 144, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !56, i32 144, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_basics.c]
!102 = metadata !{%struct._Graph* null}
!103 = metadata !{i32 151, i32 0, metadata !56, null}
