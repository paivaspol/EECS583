; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize uwtable
define %struct.node* @primal_iminus(i64* nocapture %delta, i64* nocapture %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** nocapture %w) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %delta}, i64 0, metadata !49), !dbg !55
  tail call void @llvm.dbg.value(metadata !{i64* %xchange}, i64 0, metadata !50), !dbg !56
  tail call void @llvm.dbg.value(metadata !{%struct.node* %iplus}, i64 0, metadata !51), !dbg !57
  tail call void @llvm.dbg.value(metadata !{%struct.node* %jplus}, i64 0, metadata !52), !dbg !58
  tail call void @llvm.dbg.value(metadata !{%struct.node** %w}, i64 0, metadata !53), !dbg !59
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !54), !dbg !61
  %cmp7682 = icmp eq %struct.node* %iplus, %jplus, !dbg !62
  br i1 %cmp7682, label %while.end, label %while.body.lr.ph, !dbg !62

while.body.lr.ph:                                 ; preds = %entry, %if.end41
  %iminus.0.ph85 = phi %struct.node* [ %iminus.2, %if.end41 ], [ null, %entry ]
  %iplus.addr.0.ph84 = phi %struct.node* [ %iplus.addr.077, %if.end41 ], [ %iplus, %entry ]
  %jplus.addr.0.ph83 = phi %struct.node* [ %17, %if.end41 ], [ %jplus, %entry ]
  %depth1 = getelementptr inbounds %struct.node* %jplus.addr.0.ph83, i64 0, i32 11, !dbg !63
  br label %while.body, !dbg !62

while.body:                                       ; preds = %if.end17, %while.body.lr.ph
  %iminus.078 = phi %struct.node* [ %iminus.0.ph85, %while.body.lr.ph ], [ %iminus.1, %if.end17 ]
  %iplus.addr.077 = phi %struct.node* [ %iplus.addr.0.ph84, %while.body.lr.ph ], [ %9, %if.end17 ]
  %depth = getelementptr inbounds %struct.node* %iplus.addr.077, i64 0, i32 11, !dbg !63
  %0 = load i64* %depth, align 8, !dbg !63, !tbaa !65
  %1 = load i64* %depth1, align 8, !dbg !63, !tbaa !65
  %cmp2 = icmp slt i64 %0, %1, !dbg !63
  br i1 %cmp2, label %if.then, label %if.else19, !dbg !63

if.then:                                          ; preds = %while.body
  %orientation = getelementptr inbounds %struct.node* %iplus.addr.077, i64 0, i32 1, !dbg !68
  %2 = load i32* %orientation, align 4, !dbg !68, !tbaa !70
  %tobool = icmp eq i32 %2, 0, !dbg !68
  br i1 %tobool, label %if.else, label %if.then3, !dbg !68

if.then3:                                         ; preds = %if.then
  %3 = load i64* %delta, align 8, !dbg !71, !tbaa !65
  %flow = getelementptr inbounds %struct.node* %iplus.addr.077, i64 0, i32 10, !dbg !71
  %4 = load i64* %flow, align 8, !dbg !71, !tbaa !65
  %cmp4 = icmp sgt i64 %3, %4, !dbg !71
  br i1 %cmp4, label %if.then5, label %if.end17, !dbg !71

if.then5:                                         ; preds = %if.then3
  tail call void @llvm.dbg.value(metadata !{%struct.node* %iplus.addr.077}, i64 0, metadata !54), !dbg !73
  store i64 %4, i64* %delta, align 8, !dbg !73, !tbaa !65
  store i64 0, i64* %xchange, align 8, !dbg !73, !tbaa !65
  br label %if.end17, !dbg !73

if.else:                                          ; preds = %if.then
  %pred = getelementptr inbounds %struct.node* %iplus.addr.077, i64 0, i32 3, !dbg !75
  %5 = load %struct.node** %pred, align 8, !dbg !75, !tbaa !76
  %pred7 = getelementptr inbounds %struct.node* %5, i64 0, i32 3, !dbg !75
  %6 = load %struct.node** %pred7, align 8, !dbg !75, !tbaa !76
  %tobool8 = icmp eq %struct.node* %6, null, !dbg !75
  br i1 %tobool8, label %if.end17, label %if.then9, !dbg !75

if.then9:                                         ; preds = %if.else
  %7 = load i64* %delta, align 8, !dbg !77, !tbaa !65
  %flow10 = getelementptr inbounds %struct.node* %iplus.addr.077, i64 0, i32 10, !dbg !77
  %8 = load i64* %flow10, align 8, !dbg !77, !tbaa !65
  %sub = sub nsw i64 1, %8, !dbg !77
  %cmp11 = icmp sgt i64 %7, %sub, !dbg !77
  br i1 %cmp11, label %if.then12, label %if.end17, !dbg !77

if.then12:                                        ; preds = %if.then9
  tail call void @llvm.dbg.value(metadata !{%struct.node* %iplus.addr.077}, i64 0, metadata !54), !dbg !79
  store i64 %sub, i64* %delta, align 8, !dbg !79, !tbaa !65
  store i64 0, i64* %xchange, align 8, !dbg !79, !tbaa !65
  br label %if.end17, !dbg !79

if.end17:                                         ; preds = %if.then3, %if.else, %if.then12, %if.then9, %if.then5
  %iminus.1 = phi %struct.node* [ %iplus.addr.077, %if.then5 ], [ %iplus.addr.077, %if.then12 ], [ %iminus.078, %if.then9 ], [ %iminus.078, %if.else ], [ %iminus.078, %if.then3 ]
  %pred18 = getelementptr inbounds %struct.node* %iplus.addr.077, i64 0, i32 3, !dbg !81
  %9 = load %struct.node** %pred18, align 8, !dbg !81, !tbaa !76
  tail call void @llvm.dbg.value(metadata !{%struct.node* %jplus.addr.0.ph83}, i64 0, metadata !51), !dbg !81
  %cmp = icmp eq %struct.node* %9, %jplus.addr.0.ph83, !dbg !62
  br i1 %cmp, label %while.end, label %while.body, !dbg !62

if.else19:                                        ; preds = %while.body
  %orientation20 = getelementptr inbounds %struct.node* %jplus.addr.0.ph83, i64 0, i32 1, !dbg !82
  %10 = load i32* %orientation20, align 4, !dbg !82, !tbaa !70
  %tobool21 = icmp eq i32 %10, 0, !dbg !82
  br i1 %tobool21, label %if.then22, label %if.else28, !dbg !82

if.then22:                                        ; preds = %if.else19
  %11 = load i64* %delta, align 8, !dbg !84, !tbaa !65
  %flow23 = getelementptr inbounds %struct.node* %jplus.addr.0.ph83, i64 0, i32 10, !dbg !84
  %12 = load i64* %flow23, align 8, !dbg !84, !tbaa !65
  %cmp24 = icmp slt i64 %11, %12, !dbg !84
  br i1 %cmp24, label %if.end41, label %if.then25, !dbg !84

if.then25:                                        ; preds = %if.then22
  tail call void @llvm.dbg.value(metadata !{%struct.node* %jplus.addr.0.ph83}, i64 0, metadata !54), !dbg !86
  store i64 %12, i64* %delta, align 8, !dbg !86, !tbaa !65
  store i64 1, i64* %xchange, align 8, !dbg !86, !tbaa !65
  br label %if.end41, !dbg !86

if.else28:                                        ; preds = %if.else19
  %pred29 = getelementptr inbounds %struct.node* %jplus.addr.0.ph83, i64 0, i32 3, !dbg !88
  %13 = load %struct.node** %pred29, align 8, !dbg !88, !tbaa !76
  %pred30 = getelementptr inbounds %struct.node* %13, i64 0, i32 3, !dbg !88
  %14 = load %struct.node** %pred30, align 8, !dbg !88, !tbaa !76
  %tobool31 = icmp eq %struct.node* %14, null, !dbg !88
  br i1 %tobool31, label %if.end41, label %if.then32, !dbg !88

if.then32:                                        ; preds = %if.else28
  %15 = load i64* %delta, align 8, !dbg !89, !tbaa !65
  %flow33 = getelementptr inbounds %struct.node* %jplus.addr.0.ph83, i64 0, i32 10, !dbg !89
  %16 = load i64* %flow33, align 8, !dbg !89, !tbaa !65
  %sub34 = sub nsw i64 1, %16, !dbg !89
  %cmp35 = icmp slt i64 %15, %sub34, !dbg !89
  br i1 %cmp35, label %if.end41, label %if.then36, !dbg !89

if.then36:                                        ; preds = %if.then32
  tail call void @llvm.dbg.value(metadata !{%struct.node* %jplus.addr.0.ph83}, i64 0, metadata !54), !dbg !91
  store i64 %sub34, i64* %delta, align 8, !dbg !91, !tbaa !65
  store i64 1, i64* %xchange, align 8, !dbg !91, !tbaa !65
  br label %if.end41, !dbg !91

if.end41:                                         ; preds = %if.then32, %if.else28, %if.then22, %if.then36, %if.then25
  %iminus.2 = phi %struct.node* [ %jplus.addr.0.ph83, %if.then36 ], [ %jplus.addr.0.ph83, %if.then25 ], [ %iminus.078, %if.then22 ], [ %iminus.078, %if.else28 ], [ %iminus.078, %if.then32 ]
  %pred42 = getelementptr inbounds %struct.node* %jplus.addr.0.ph83, i64 0, i32 3, !dbg !93
  %17 = load %struct.node** %pred42, align 8, !dbg !93, !tbaa !76
  tail call void @llvm.dbg.value(metadata !{%struct.node* %17}, i64 0, metadata !52), !dbg !93
  %cmp76 = icmp eq %struct.node* %iplus.addr.077, %17, !dbg !62
  br i1 %cmp76, label %while.end, label %while.body.lr.ph, !dbg !62

while.end:                                        ; preds = %entry, %if.end41, %if.end17
  %iminus.0.lcssa = phi %struct.node* [ %iminus.1, %if.end17 ], [ null, %entry ], [ %iminus.2, %if.end41 ]
  %iplus.addr.0.lcssa = phi %struct.node* [ %jplus.addr.0.ph83, %if.end17 ], [ %iplus, %entry ], [ %iplus.addr.077, %if.end41 ]
  store %struct.node* %iplus.addr.0.lcssa, %struct.node** %w, align 8, !dbg !94, !tbaa !76
  ret %struct.node* %iminus.0.lcssa, !dbg !95
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"primal_iminus", metadata !"primal_iminus", metadata !"", i32 41, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.node* (i64*, i64*, %struct.node*, %struct.node*, %struct.node**)* @primal_iminus, null, null, metadata !48, i32 55} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 55] [primal_iminus]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !45, metadata !46, metadata !8, metadata !8, metadata !47}
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
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from flow_t]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!48 = metadata !{metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!49 = metadata !{i32 786689, metadata !4, metadata !"delta", metadata !5, i32 16777258, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [delta] [line 42]
!50 = metadata !{i32 786689, metadata !4, metadata !"xchange", metadata !5, i32 33554475, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xchange] [line 43]
!51 = metadata !{i32 786689, metadata !4, metadata !"iplus", metadata !5, i32 50331692, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iplus] [line 44]
!52 = metadata !{i32 786689, metadata !4, metadata !"jplus", metadata !5, i32 67108909, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jplus] [line 45]
!53 = metadata !{i32 786689, metadata !4, metadata !"w", metadata !5, i32 83886126, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w] [line 46]
!54 = metadata !{i32 786688, metadata !4, metadata !"iminus", metadata !5, i32 56, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iminus] [line 56]
!55 = metadata !{i32 42, i32 0, metadata !4, null}
!56 = metadata !{i32 43, i32 0, metadata !4, null}
!57 = metadata !{i32 44, i32 0, metadata !4, null}
!58 = metadata !{i32 45, i32 0, metadata !4, null}
!59 = metadata !{i32 46, i32 0, metadata !4, null}
!60 = metadata !{%struct.node* null}
!61 = metadata !{i32 56, i32 0, metadata !4, null}
!62 = metadata !{i32 59, i32 0, metadata !4, null}
!63 = metadata !{i32 61, i32 0, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !4, i32 60, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c]
!65 = metadata !{metadata !"long", metadata !66}
!66 = metadata !{metadata !"omnipotent char", metadata !67}
!67 = metadata !{metadata !"Simple C/C++ TBAA"}
!68 = metadata !{i32 63, i32 0, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !64, i32 62, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c]
!70 = metadata !{metadata !"int", metadata !66}
!71 = metadata !{i32 64, i32 0, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !69, i32 64, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c]
!73 = metadata !{i32 64, i32 0, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !72, i32 64, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c]
!75 = metadata !{i32 65, i32 0, metadata !69, null}
!76 = metadata !{metadata !"any pointer", metadata !66}
!77 = metadata !{i32 66, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !69, i32 66, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c]
!79 = metadata !{i32 66, i32 0, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !78, i32 66, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c]
!81 = metadata !{i32 67, i32 0, metadata !69, null}
!82 = metadata !{i32 71, i32 0, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !64, i32 70, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c]
!84 = metadata !{i32 72, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !83, i32 72, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c]
!86 = metadata !{i32 72, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !85, i32 72, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c]
!88 = metadata !{i32 73, i32 0, metadata !83, null}
!89 = metadata !{i32 74, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !83, i32 74, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c]
!91 = metadata !{i32 74, i32 0, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !90, i32 74, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pbla.c]
!93 = metadata !{i32 75, i32 0, metadata !83, null}
!94 = metadata !{i32 79, i32 0, metadata !4, null}
!95 = metadata !{i32 81, i32 0, metadata !4, null}
