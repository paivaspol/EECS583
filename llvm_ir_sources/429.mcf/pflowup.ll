; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/pflowup.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize uwtable
define void @primal_update_flow(%struct.node* %iplus, %struct.node* %jplus, %struct.node* %w) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.node* %iplus}, i64 0, metadata !46), !dbg !49
  tail call void @llvm.dbg.value(metadata !{%struct.node* %jplus}, i64 0, metadata !47), !dbg !50
  tail call void @llvm.dbg.value(metadata !{%struct.node* %w}, i64 0, metadata !48), !dbg !51
  %cmp26 = icmp eq %struct.node* %iplus, %w, !dbg !52
  br i1 %cmp26, label %for.cond2.preheader, label %for.body, !dbg !52

for.cond2.preheader:                              ; preds = %for.body, %entry
  %cmp324 = icmp eq %struct.node* %jplus, %w, !dbg !54
  br i1 %cmp324, label %for.end14, label %for.body4, !dbg !54

for.body:                                         ; preds = %entry, %for.body
  %iplus.addr.027 = phi %struct.node* [ %1, %for.body ], [ %iplus, %entry ]
  %orientation = getelementptr inbounds %struct.node* %iplus.addr.027, i64 0, i32 1, !dbg !56
  %0 = load i32* %orientation, align 4, !dbg !56, !tbaa !58
  %tobool = icmp eq i32 %0, 0, !dbg !56
  %flow = getelementptr inbounds %struct.node* %iplus.addr.027, i64 0, i32 10, !dbg !61
  %. = zext i1 %tobool to i64
  store i64 %., i64* %flow, align 8, !dbg !61, !tbaa !62
  %pred = getelementptr inbounds %struct.node* %iplus.addr.027, i64 0, i32 3, !dbg !52
  %1 = load %struct.node** %pred, align 8, !dbg !52, !tbaa !63
  tail call void @llvm.dbg.value(metadata !{%struct.node* %1}, i64 0, metadata !46), !dbg !52
  %cmp = icmp eq %struct.node* %1, %w, !dbg !52
  br i1 %cmp, label %for.cond2.preheader, label %for.body, !dbg !52

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %jplus.addr.025 = phi %struct.node* [ %3, %for.body4 ], [ %jplus, %for.cond2.preheader ]
  %orientation5 = getelementptr inbounds %struct.node* %jplus.addr.025, i64 0, i32 1, !dbg !64
  %2 = load i32* %orientation5, align 4, !dbg !64, !tbaa !58
  %flow8 = getelementptr inbounds %struct.node* %jplus.addr.025, i64 0, i32 10, !dbg !66
  %not.tobool6 = icmp ne i32 %2, 0
  %.23 = zext i1 %not.tobool6 to i64
  store i64 %.23, i64* %flow8, align 8, !dbg !66, !tbaa !62
  %pred13 = getelementptr inbounds %struct.node* %jplus.addr.025, i64 0, i32 3, !dbg !54
  %3 = load %struct.node** %pred13, align 8, !dbg !54, !tbaa !63
  tail call void @llvm.dbg.value(metadata !{%struct.node* %3}, i64 0, metadata !47), !dbg !54
  %cmp3 = icmp eq %struct.node* %3, %w, !dbg !54
  br i1 %cmp3, label %for.end14, label %for.body4, !dbg !54

for.end14:                                        ; preds = %for.body4, %for.cond2.preheader
  ret void, !dbg !67
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pflowup.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/pflowup.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"primal_update_flow", metadata !"primal_update_flow", metadata !"", i32 29, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.node*, %struct.node*, %struct.node*)* @primal_update_flow, null, null, metadata !45, i32 39} ; [ DW_TAG_subprogram ] [line 29] [def] [scope 39] [primal_update_flow]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pflowup.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from node_t]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"node_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [node_t] [line 99, size 0, align 0, offset 0] [from node]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"node", i32 107, i64 832, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [node] [line 107, size 832, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/defines.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !16, metadata !18, metadata !21, metadata !22, metadata !23, metadata !24, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"potential", i32 109, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [potential] [line 109, size 64, align 64, offset 0] [from cost_t]
!14 = metadata !{i32 786454, metadata !11, null, metadata !"cost_t", i32 69, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [cost_t] [line 69, size 0, align 0, offset 0] [from long int]
!15 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"orientation", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [orientation] [line 110, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"child", i32 111, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [child] [line 111, size 64, align 64, offset 128] [from node_p]
!19 = metadata !{i32 786454, metadata !11, null, metadata !"node_p", i32 100, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [node_p] [line 100, size 0, align 0, offset 0] [from ]
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from node]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"pred", i32 112, i64 64, i64 64, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ] [pred] [line 112, size 64, align 64, offset 192] [from node_p]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sibling", i32 113, i64 64, i64 64, i64 256, i32 0, metadata !19} ; [ DW_TAG_member ] [sibling] [line 113, size 64, align 64, offset 256] [from node_p]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sibling_prev", i32 114, i64 64, i64 64, i64 320, i32 0, metadata !19} ; [ DW_TAG_member ] [sibling_prev] [line 114, size 64, align 64, offset 320] [from node_p]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"basic_arc", i32 115, i64 64, i64 64, i64 384, i32 0, metadata !25} ; [ DW_TAG_member ] [basic_arc] [line 115, size 64, align 64, offset 384] [from arc_p]
!25 = metadata !{i32 786454, metadata !11, null, metadata !"arc_p", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [arc_p] [line 103, size 0, align 0, offset 0] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from arc]
!27 = metadata !{i32 786451, metadata !11, null, metadata !"arc", i32 126, i64 512, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [arc] [line 126, size 512, align 64, offset 0] [from ]
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !37}
!29 = metadata !{i32 786445, metadata !11, metadata !27, metadata !"cost", i32 128, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cost] [line 128, size 64, align 64, offset 0] [from cost_t]
!30 = metadata !{i32 786445, metadata !11, metadata !27, metadata !"tail", i32 129, i64 64, i64 64, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [tail] [line 129, size 64, align 64, offset 64] [from node_p]
!31 = metadata !{i32 786445, metadata !11, metadata !27, metadata !"head", i32 129, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [head] [line 129, size 64, align 64, offset 128] [from node_p]
!32 = metadata !{i32 786445, metadata !11, metadata !27, metadata !"ident", i32 130, i64 32, i64 32, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [ident] [line 130, size 32, align 32, offset 192] [from int]
!33 = metadata !{i32 786445, metadata !11, metadata !27, metadata !"nextout", i32 131, i64 64, i64 64, i64 256, i32 0, metadata !25} ; [ DW_TAG_member ] [nextout] [line 131, size 64, align 64, offset 256] [from arc_p]
!34 = metadata !{i32 786445, metadata !11, metadata !27, metadata !"nextin", i32 131, i64 64, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [nextin] [line 131, size 64, align 64, offset 320] [from arc_p]
!35 = metadata !{i32 786445, metadata !11, metadata !27, metadata !"flow", i32 132, i64 64, i64 64, i64 384, i32 0, metadata !36} ; [ DW_TAG_member ] [flow] [line 132, size 64, align 64, offset 384] [from flow_t]
!36 = metadata !{i32 786454, metadata !11, null, metadata !"flow_t", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [flow_t] [line 68, size 0, align 0, offset 0] [from long int]
!37 = metadata !{i32 786445, metadata !11, metadata !27, metadata !"org_cost", i32 133, i64 64, i64 64, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [org_cost] [line 133, size 64, align 64, offset 448] [from cost_t]
!38 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"firstout", i32 116, i64 64, i64 64, i64 448, i32 0, metadata !25} ; [ DW_TAG_member ] [firstout] [line 116, size 64, align 64, offset 448] [from arc_p]
!39 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"firstin", i32 116, i64 64, i64 64, i64 512, i32 0, metadata !25} ; [ DW_TAG_member ] [firstin] [line 116, size 64, align 64, offset 512] [from arc_p]
!40 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"arc_tmp", i32 117, i64 64, i64 64, i64 576, i32 0, metadata !25} ; [ DW_TAG_member ] [arc_tmp] [line 117, size 64, align 64, offset 576] [from arc_p]
!41 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"flow", i32 118, i64 64, i64 64, i64 640, i32 0, metadata !36} ; [ DW_TAG_member ] [flow] [line 118, size 64, align 64, offset 640] [from flow_t]
!42 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"depth", i32 119, i64 64, i64 64, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [depth] [line 119, size 64, align 64, offset 704] [from long int]
!43 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"number", i32 120, i64 32, i64 32, i64 768, i32 0, metadata !17} ; [ DW_TAG_member ] [number] [line 120, size 32, align 32, offset 768] [from int]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"time", i32 121, i64 32, i64 32, i64 800, i32 0, metadata !17} ; [ DW_TAG_member ] [time] [line 121, size 32, align 32, offset 800] [from int]
!45 = metadata !{metadata !46, metadata !47, metadata !48}
!46 = metadata !{i32 786689, metadata !4, metadata !"iplus", metadata !5, i32 16777246, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iplus] [line 30]
!47 = metadata !{i32 786689, metadata !4, metadata !"jplus", metadata !5, i32 33554463, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jplus] [line 31]
!48 = metadata !{i32 786689, metadata !4, metadata !"w", metadata !5, i32 50331680, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w] [line 32]
!49 = metadata !{i32 30, i32 0, metadata !4, null}
!50 = metadata !{i32 31, i32 0, metadata !4, null}
!51 = metadata !{i32 32, i32 0, metadata !4, null}
!52 = metadata !{i32 40, i32 0, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !4, i32 40, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pflowup.c]
!54 = metadata !{i32 48, i32 0, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !4, i32 48, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pflowup.c]
!56 = metadata !{i32 42, i32 0, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !53, i32 41, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pflowup.c]
!58 = metadata !{metadata !"int", metadata !59}
!59 = metadata !{metadata !"omnipotent char", metadata !60}
!60 = metadata !{metadata !"Simple C/C++ TBAA"}
!61 = metadata !{i32 43, i32 0, metadata !57, null}
!62 = metadata !{metadata !"long", metadata !59}
!63 = metadata !{metadata !"any pointer", metadata !59}
!64 = metadata !{i32 50, i32 0, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !55, i32 49, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pflowup.c]
!66 = metadata !{i32 51, i32 0, metadata !65, null}
!67 = metadata !{i32 55, i32 0, metadata !4, null}
