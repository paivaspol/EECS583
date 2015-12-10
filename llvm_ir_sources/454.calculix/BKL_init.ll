; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_init.c'
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
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in BKL_init(%p,%p,%f)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @BKL_init(%struct._BKL* %bkl, %struct._BPG* %bpg, float %alpha) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !78), !dbg !81
  tail call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !79), !dbg !82
  tail call void @llvm.dbg.value(metadata !{float %alpha}, i64 0, metadata !80), !dbg !83
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !84
  %cmp1 = icmp eq %struct._BPG* %bpg, null, !dbg !84
  %or.cond = or i1 %cmp, %cmp1, !dbg !84
  br i1 %or.cond, label %if.then, label %if.end, !dbg !84

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !85, !tbaa !87
  %conv = fpext float %alpha to double, !dbg !85
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._BKL* %bkl, %struct._BPG* %bpg, double %conv) #5, !dbg !85
  tail call void @exit(i32 -1) #6, !dbg !90
  unreachable, !dbg !90

if.end:                                           ; preds = %entry
  tail call void @BKL_clearData(%struct._BKL* %bkl) #5, !dbg !91
  %bpg2 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !92
  store %struct._BPG* %bpg, %struct._BPG** %bpg2, align 8, !dbg !92, !tbaa !87
  %nX = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !93
  %1 = load i32* %nX, align 4, !dbg !93, !tbaa !94
  %ndom = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !93
  store i32 %1, i32* %ndom, align 4, !dbg !93, !tbaa !94
  %nY = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !95
  %2 = load i32* %nY, align 4, !dbg !95, !tbaa !94
  %nseg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 2, !dbg !95
  store i32 %2, i32* %nseg, align 4, !dbg !95, !tbaa !94
  %3 = load i32* %nX, align 4, !dbg !96, !tbaa !94
  %4 = load i32* %nY, align 4, !dbg !96, !tbaa !94
  %add = add nsw i32 %4, %3, !dbg !96
  %nreg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 3, !dbg !96
  store i32 %add, i32* %nreg, align 4, !dbg !96, !tbaa !94
  %graph = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !97
  %5 = load %struct._Graph** %graph, align 8, !dbg !97, !tbaa !87
  %vwghts = getelementptr inbounds %struct._Graph* %5, i64 0, i32 7, !dbg !97
  %6 = load i32** %vwghts, align 8, !dbg !97, !tbaa !87
  %cmp5 = icmp eq i32* %6, null, !dbg !97
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !97

if.then7:                                         ; preds = %if.end
  %totweight = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 4, !dbg !98
  store i32 %add, i32* %totweight, align 4, !dbg !98, !tbaa !94
  %call10 = tail call i32* @IVinit(i32 %add, i32 1) #5, !dbg !100
  %regwghts = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !100
  store i32* %call10, i32** %regwghts, align 8, !dbg !100, !tbaa !87
  br label %if.end18, !dbg !101

if.else:                                          ; preds = %if.end
  %regwghts13 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !102
  store i32* %6, i32** %regwghts13, align 8, !dbg !102, !tbaa !87
  %call16 = tail call i32 @IVsum(i32 %add, i32* %6) #5, !dbg !104
  %totweight17 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 4, !dbg !104
  store i32 %call16, i32* %totweight17, align 4, !dbg !104, !tbaa !94
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then7
  %7 = load i32* %nreg, align 4, !dbg !105, !tbaa !94
  %call20 = tail call i32* @IVinit(i32 %7, i32 0) #5, !dbg !105
  %colors = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !105
  store i32* %call20, i32** %colors, align 8, !dbg !105, !tbaa !87
  %alpha21 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 13, !dbg !106
  store float %alpha, float* %alpha21, align 4, !dbg !106, !tbaa !107
  ret void, !dbg !108
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @BKL_clearData(%struct._BKL*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #3

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_init", metadata !"BKL_init", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._BKL*, %struct._BPG*, float)* @BKL_init, null, null, metadata !77, i32 18} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 18] [BKL_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !76}
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
!77 = metadata !{metadata !78, metadata !79, metadata !80}
!78 = metadata !{i32 786689, metadata !4, metadata !"bkl", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 15]
!79 = metadata !{i32 786689, metadata !4, metadata !"bpg", metadata !5, i32 33554448, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 16]
!80 = metadata !{i32 786689, metadata !4, metadata !"alpha", metadata !5, i32 50331665, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 17]
!81 = metadata !{i32 15, i32 0, metadata !4, null}
!82 = metadata !{i32 16, i32 0, metadata !4, null}
!83 = metadata !{i32 17, i32 0, metadata !4, null}
!84 = metadata !{i32 24, i32 0, metadata !4, null}
!85 = metadata !{i32 25, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !4, i32 24, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_init.c]
!87 = metadata !{metadata !"any pointer", metadata !88}
!88 = metadata !{metadata !"omnipotent char", metadata !89}
!89 = metadata !{metadata !"Simple C/C++ TBAA"}
!90 = metadata !{i32 27, i32 0, metadata !86, null}
!91 = metadata !{i32 34, i32 0, metadata !4, null}
!92 = metadata !{i32 40, i32 0, metadata !4, null}
!93 = metadata !{i32 41, i32 0, metadata !4, null}
!94 = metadata !{metadata !"int", metadata !88}
!95 = metadata !{i32 42, i32 0, metadata !4, null}
!96 = metadata !{i32 43, i32 0, metadata !4, null}
!97 = metadata !{i32 44, i32 0, metadata !4, null}
!98 = metadata !{i32 45, i32 0, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !4, i32 44, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_init.c]
!100 = metadata !{i32 46, i32 0, metadata !99, null}
!101 = metadata !{i32 47, i32 0, metadata !99, null}
!102 = metadata !{i32 48, i32 0, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !4, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_init.c]
!104 = metadata !{i32 49, i32 0, metadata !103, null}
!105 = metadata !{i32 51, i32 0, metadata !4, null}
!106 = metadata !{i32 52, i32 0, metadata !4, null}
!107 = metadata !{metadata !"float", metadata !88}
!108 = metadata !{i32 54, i32 0, metadata !4, null}
