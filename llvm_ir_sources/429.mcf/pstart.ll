; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/pstart.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize uwtable
define i64 @primal_start_artificial(%struct.network* nocapture %net) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.network* %net}, i64 0, metadata !83), !dbg !93
  %nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 21, !dbg !94
  %0 = load %struct.node** %nodes, align 8, !dbg !94, !tbaa !95
  %1 = ptrtoint %struct.node* %0 to i64
  tail call void @llvm.dbg.value(metadata !{%struct.node* %0}, i64 0, metadata !84), !dbg !94
  tail call void @llvm.dbg.value(metadata !{%struct.node* %0}, i64 0, metadata !87), !dbg !94
  %incdec.ptr = getelementptr inbounds %struct.node* %0, i64 1, !dbg !94
  tail call void @llvm.dbg.value(metadata !{%struct.node* %incdec.ptr}, i64 0, metadata !84), !dbg !94
  %basic_arc = getelementptr inbounds %struct.node* %0, i64 0, i32 6, !dbg !98
  store %struct.arc* null, %struct.arc** %basic_arc, align 8, !dbg !98, !tbaa !95
  %pred = getelementptr inbounds %struct.node* %0, i64 0, i32 3, !dbg !99
  store %struct.node* null, %struct.node** %pred, align 8, !dbg !99, !tbaa !95
  %child = getelementptr inbounds %struct.node* %0, i64 0, i32 2, !dbg !100
  store %struct.node* %incdec.ptr, %struct.node** %child, align 8, !dbg !100, !tbaa !95
  %sibling = getelementptr inbounds %struct.node* %0, i64 0, i32 4, !dbg !101
  %n = getelementptr inbounds %struct.network* %net, i64 0, i32 2, !dbg !102
  %2 = bitcast %struct.node** %sibling to i8*, !dbg !102
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false), !dbg !103
  %3 = load i64* %n, align 8, !dbg !102, !tbaa !104
  %add = add nsw i64 %3, 1, !dbg !102
  %depth = getelementptr inbounds %struct.node* %0, i64 0, i32 11, !dbg !102
  store i64 %add, i64* %depth, align 8, !dbg !102, !tbaa !104
  %orientation = getelementptr inbounds %struct.node* %0, i64 0, i32 1, !dbg !105
  store i32 0, i32* %orientation, align 4, !dbg !105, !tbaa !106
  %potential = getelementptr inbounds %struct.node* %0, i64 0, i32 0, !dbg !107
  store i64 -100000000, i64* %potential, align 8, !dbg !107, !tbaa !104
  %flow = getelementptr inbounds %struct.node* %0, i64 0, i32 10, !dbg !108
  store i64 0, i64* %flow, align 8, !dbg !108, !tbaa !104
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !109
  %4 = load %struct.arc** %stop_arcs, align 8, !dbg !109, !tbaa !95
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23, !dbg !110
  %5 = load %struct.arc** %arcs, align 8, !dbg !110, !tbaa !95
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %5}, i64 0, metadata !88), !dbg !110
  %cmp73 = icmp eq %struct.arc* %5, %4, !dbg !110
  br i1 %cmp73, label %for.end, label %for.body, !dbg !110

for.body:                                         ; preds = %entry, %for.inc
  %arc.074 = phi %struct.arc* [ %incdec.ptr3, %for.inc ], [ %5, %entry ]
  %ident = getelementptr inbounds %struct.arc* %arc.074, i64 0, i32 3, !dbg !112
  %6 = load i32* %ident, align 4, !dbg !112, !tbaa !106
  %cmp1 = icmp eq i32 %6, -1, !dbg !112
  br i1 %cmp1, label %for.inc, label %if.then, !dbg !112

if.then:                                          ; preds = %for.body
  store i32 1, i32* %ident, align 4, !dbg !113, !tbaa !106
  br label %for.inc, !dbg !113

for.inc:                                          ; preds = %for.body, %if.then
  %incdec.ptr3 = getelementptr inbounds %struct.arc* %arc.074, i64 1, !dbg !110
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %incdec.ptr3}, i64 0, metadata !88), !dbg !110
  %cmp = icmp eq %struct.arc* %incdec.ptr3, %4, !dbg !110
  br i1 %cmp, label %for.end, label %for.body, !dbg !110

for.end:                                          ; preds = %for.inc, %entry
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %8}, i64 0, metadata !88), !dbg !114
  %stop_nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 22, !dbg !115
  %7 = load %struct.node** %stop_nodes, align 8, !dbg !115, !tbaa !95
  %cmp570 = icmp eq %struct.node* %incdec.ptr, %7, !dbg !115
  br i1 %cmp570, label %for.end21, label %for.body6.lr.ph, !dbg !115

for.body6.lr.ph:                                  ; preds = %for.end
  %dummy_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 25, !dbg !114
  %8 = load %struct.arc** %dummy_arcs, align 8, !dbg !114, !tbaa !95
  %scevgep = getelementptr %struct.node* %7, i64 -2, i32 0
  %scevgep75 = bitcast i64* %scevgep to i8*
  %9 = sub i64 0, %1, !dbg !115
  %uglygep = getelementptr i8* %scevgep75, i64 %9
  %uglygep76 = ptrtoint i8* %uglygep to i64
  %10 = udiv i64 %uglygep76, 104, !dbg !115
  %11 = add i64 %10, 2, !dbg !115
  br label %for.body6, !dbg !115

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %arc.172 = phi %struct.arc* [ %8, %for.body6.lr.ph ], [ %incdec.ptr19, %for.body6 ]
  %node.071 = phi %struct.node* [ %incdec.ptr, %for.body6.lr.ph ], [ %add.ptr, %for.body6 ]
  %basic_arc7 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 6, !dbg !117
  store %struct.arc* %arc.172, %struct.arc** %basic_arc7, align 8, !dbg !117, !tbaa !95
  %pred8 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 3, !dbg !119
  store %struct.node* %0, %struct.node** %pred8, align 8, !dbg !119, !tbaa !95
  %child9 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 2, !dbg !120
  store %struct.node* null, %struct.node** %child9, align 8, !dbg !120, !tbaa !95
  %add.ptr = getelementptr inbounds %struct.node* %node.071, i64 1, !dbg !121
  %sibling10 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 4, !dbg !121
  store %struct.node* %add.ptr, %struct.node** %sibling10, align 8, !dbg !121, !tbaa !95
  %add.ptr11 = getelementptr inbounds %struct.node* %node.071, i64 -1, !dbg !122
  %sibling_prev12 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 5, !dbg !122
  store %struct.node* %add.ptr11, %struct.node** %sibling_prev12, align 8, !dbg !122, !tbaa !95
  %depth13 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 11, !dbg !123
  store i64 1, i64* %depth13, align 8, !dbg !123, !tbaa !104
  %cost = getelementptr inbounds %struct.arc* %arc.172, i64 0, i32 0, !dbg !124
  store i64 100000000, i64* %cost, align 8, !dbg !124, !tbaa !104
  %ident14 = getelementptr inbounds %struct.arc* %arc.172, i64 0, i32 3, !dbg !125
  store i32 0, i32* %ident14, align 4, !dbg !125, !tbaa !106
  %orientation15 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 1, !dbg !126
  store i32 1, i32* %orientation15, align 4, !dbg !126, !tbaa !106
  %potential16 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 0, !dbg !127
  store i64 0, i64* %potential16, align 8, !dbg !127, !tbaa !104
  %tail = getelementptr inbounds %struct.arc* %arc.172, i64 0, i32 1, !dbg !128
  store %struct.node* %node.071, %struct.node** %tail, align 8, !dbg !128, !tbaa !95
  %head = getelementptr inbounds %struct.arc* %arc.172, i64 0, i32 2, !dbg !129
  store %struct.node* %0, %struct.node** %head, align 8, !dbg !129, !tbaa !95
  %flow17 = getelementptr inbounds %struct.node* %node.071, i64 0, i32 10, !dbg !130
  store i64 0, i64* %flow17, align 8, !dbg !130, !tbaa !104
  %incdec.ptr19 = getelementptr inbounds %struct.arc* %arc.172, i64 1, !dbg !115
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %incdec.ptr19}, i64 0, metadata !88), !dbg !115
  tail call void @llvm.dbg.value(metadata !{%struct.node* %scevgep77}, i64 0, metadata !84), !dbg !115
  %cmp5 = icmp eq %struct.node* %add.ptr, %7, !dbg !115
  br i1 %cmp5, label %for.cond4.for.end21_crit_edge, label %for.body6, !dbg !115

for.cond4.for.end21_crit_edge:                    ; preds = %for.body6
  %scevgep77 = getelementptr %struct.node* %0, i64 %11
  br label %for.end21, !dbg !115

for.end21:                                        ; preds = %for.cond4.for.end21_crit_edge, %for.end
  %node.0.lcssa = phi %struct.node* [ %scevgep77, %for.cond4.for.end21_crit_edge ], [ %incdec.ptr, %for.end ]
  tail call void @llvm.dbg.value(metadata !{%struct.node* %incdec.ptr}, i64 0, metadata !87), !dbg !131
  %sibling24 = getelementptr inbounds %struct.node* %node.0.lcssa, i64 -1, i32 4, !dbg !132
  store %struct.node* null, %struct.node** %sibling24, align 8, !dbg !132, !tbaa !95
  %sibling_prev25 = getelementptr inbounds %struct.node* %0, i64 1, i32 5, !dbg !133
  store %struct.node* null, %struct.node** %sibling_prev25, align 8, !dbg !133, !tbaa !95
  ret i64 0, !dbg !134
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pstart.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/pstart.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"primal_start_artificial", metadata !"primal_start_artificial", metadata !"", i32 29, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.network*)* @primal_start_artificial, null, null, metadata !82, i32 34} ; [ DW_TAG_subprogram ] [line 29] [def] [scope 34] [primal_start_artificial]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pstart.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from network_t]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"network_t", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [network_t] [line 163, size 0, align 0, offset 0] [from network]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"network", i32 138, i64 4992, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [network] [line 138, size 4992, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/defines.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !39, metadata !41, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inputfile", i32 140, i64 1600, i64 8, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [inputfile] [line 140, size 1600, align 8, offset 0] [from ]
!15 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1600, i64 8, i32 0, i32 0, metadata !16, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1600, align 8, offset 0] [from char]
!16 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 200}      ; [ DW_TAG_subrange_type ] [0, 199]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"clustfile", i32 141, i64 1600, i64 8, i64 1600, i32 0, metadata !15} ; [ DW_TAG_member ] [clustfile] [line 141, size 1600, align 8, offset 1600] [from ]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"n", i32 142, i64 64, i64 64, i64 3200, i32 0, metadata !8} ; [ DW_TAG_member ] [n] [line 142, size 64, align 64, offset 3200] [from long int]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"n_trips", i32 142, i64 64, i64 64, i64 3264, i32 0, metadata !8} ; [ DW_TAG_member ] [n_trips] [line 142, size 64, align 64, offset 3264] [from long int]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"max_m", i32 143, i64 64, i64 64, i64 3328, i32 0, metadata !8} ; [ DW_TAG_member ] [max_m] [line 143, size 64, align 64, offset 3328] [from long int]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"m", i32 143, i64 64, i64 64, i64 3392, i32 0, metadata !8} ; [ DW_TAG_member ] [m] [line 143, size 64, align 64, offset 3392] [from long int]
!24 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"m_org", i32 143, i64 64, i64 64, i64 3456, i32 0, metadata !8} ; [ DW_TAG_member ] [m_org] [line 143, size 64, align 64, offset 3456] [from long int]
!25 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"m_impl", i32 143, i64 64, i64 64, i64 3520, i32 0, metadata !8} ; [ DW_TAG_member ] [m_impl] [line 143, size 64, align 64, offset 3520] [from long int]
!26 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"max_residual_new_m", i32 144, i64 64, i64 64, i64 3584, i32 0, metadata !8} ; [ DW_TAG_member ] [max_residual_new_m] [line 144, size 64, align 64, offset 3584] [from long int]
!27 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"max_new_m", i32 144, i64 64, i64 64, i64 3648, i32 0, metadata !8} ; [ DW_TAG_member ] [max_new_m] [line 144, size 64, align 64, offset 3648] [from long int]
!28 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"primal_unbounded", i32 146, i64 64, i64 64, i64 3712, i32 0, metadata !8} ; [ DW_TAG_member ] [primal_unbounded] [line 146, size 64, align 64, offset 3712] [from long int]
!29 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"dual_unbounded", i32 147, i64 64, i64 64, i64 3776, i32 0, metadata !8} ; [ DW_TAG_member ] [dual_unbounded] [line 147, size 64, align 64, offset 3776] [from long int]
!30 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"perturbed", i32 148, i64 64, i64 64, i64 3840, i32 0, metadata !8} ; [ DW_TAG_member ] [perturbed] [line 148, size 64, align 64, offset 3840] [from long int]
!31 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"feasible", i32 149, i64 64, i64 64, i64 3904, i32 0, metadata !8} ; [ DW_TAG_member ] [feasible] [line 149, size 64, align 64, offset 3904] [from long int]
!32 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"eps", i32 150, i64 64, i64 64, i64 3968, i32 0, metadata !8} ; [ DW_TAG_member ] [eps] [line 150, size 64, align 64, offset 3968] [from long int]
!33 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"opt_tol", i32 151, i64 64, i64 64, i64 4032, i32 0, metadata !8} ; [ DW_TAG_member ] [opt_tol] [line 151, size 64, align 64, offset 4032] [from long int]
!34 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"feas_tol", i32 152, i64 64, i64 64, i64 4096, i32 0, metadata !8} ; [ DW_TAG_member ] [feas_tol] [line 152, size 64, align 64, offset 4096] [from long int]
!35 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"pert_val", i32 153, i64 64, i64 64, i64 4160, i32 0, metadata !8} ; [ DW_TAG_member ] [pert_val] [line 153, size 64, align 64, offset 4160] [from long int]
!36 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"bigM", i32 154, i64 64, i64 64, i64 4224, i32 0, metadata !8} ; [ DW_TAG_member ] [bigM] [line 154, size 64, align 64, offset 4224] [from long int]
!37 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"optcost", i32 155, i64 64, i64 64, i64 4288, i32 0, metadata !38} ; [ DW_TAG_member ] [optcost] [line 155, size 64, align 64, offset 4288] [from double]
!38 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!39 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ignore_impl", i32 156, i64 64, i64 64, i64 4352, i32 0, metadata !40} ; [ DW_TAG_member ] [ignore_impl] [line 156, size 64, align 64, offset 4352] [from cost_t]
!40 = metadata !{i32 786454, metadata !12, null, metadata !"cost_t", i32 69, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [cost_t] [line 69, size 0, align 0, offset 0] [from long int]
!41 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nodes", i32 157, i64 64, i64 64, i64 4416, i32 0, metadata !42} ; [ DW_TAG_member ] [nodes] [line 157, size 64, align 64, offset 4416] [from node_p]
!42 = metadata !{i32 786454, metadata !12, null, metadata !"node_p", i32 100, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ] [node_p] [line 100, size 0, align 0, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from node]
!44 = metadata !{i32 786451, metadata !12, null, metadata !"node", i32 107, i64 832, i64 64, i32 0, i32 0, null, metadata !45, i32 0, null, null} ; [ DW_TAG_structure_type ] [node] [line 107, size 832, align 64, offset 0] [from ]
!45 = metadata !{metadata !46, metadata !47, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73}
!46 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"potential", i32 109, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [potential] [line 109, size 64, align 64, offset 0] [from cost_t]
!47 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"orientation", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !48} ; [ DW_TAG_member ] [orientation] [line 110, size 32, align 32, offset 64] [from int]
!48 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!49 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"child", i32 111, i64 64, i64 64, i64 128, i32 0, metadata !42} ; [ DW_TAG_member ] [child] [line 111, size 64, align 64, offset 128] [from node_p]
!50 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"pred", i32 112, i64 64, i64 64, i64 192, i32 0, metadata !42} ; [ DW_TAG_member ] [pred] [line 112, size 64, align 64, offset 192] [from node_p]
!51 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"sibling", i32 113, i64 64, i64 64, i64 256, i32 0, metadata !42} ; [ DW_TAG_member ] [sibling] [line 113, size 64, align 64, offset 256] [from node_p]
!52 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"sibling_prev", i32 114, i64 64, i64 64, i64 320, i32 0, metadata !42} ; [ DW_TAG_member ] [sibling_prev] [line 114, size 64, align 64, offset 320] [from node_p]
!53 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"basic_arc", i32 115, i64 64, i64 64, i64 384, i32 0, metadata !54} ; [ DW_TAG_member ] [basic_arc] [line 115, size 64, align 64, offset 384] [from arc_p]
!54 = metadata !{i32 786454, metadata !12, null, metadata !"arc_p", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [arc_p] [line 103, size 0, align 0, offset 0] [from ]
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from arc]
!56 = metadata !{i32 786451, metadata !12, null, metadata !"arc", i32 126, i64 512, i64 64, i32 0, i32 0, null, metadata !57, i32 0, null, null} ; [ DW_TAG_structure_type ] [arc] [line 126, size 512, align 64, offset 0] [from ]
!57 = metadata !{metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !66}
!58 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"cost", i32 128, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [cost] [line 128, size 64, align 64, offset 0] [from cost_t]
!59 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"tail", i32 129, i64 64, i64 64, i64 64, i32 0, metadata !42} ; [ DW_TAG_member ] [tail] [line 129, size 64, align 64, offset 64] [from node_p]
!60 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"head", i32 129, i64 64, i64 64, i64 128, i32 0, metadata !42} ; [ DW_TAG_member ] [head] [line 129, size 64, align 64, offset 128] [from node_p]
!61 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"ident", i32 130, i64 32, i64 32, i64 192, i32 0, metadata !48} ; [ DW_TAG_member ] [ident] [line 130, size 32, align 32, offset 192] [from int]
!62 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"nextout", i32 131, i64 64, i64 64, i64 256, i32 0, metadata !54} ; [ DW_TAG_member ] [nextout] [line 131, size 64, align 64, offset 256] [from arc_p]
!63 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"nextin", i32 131, i64 64, i64 64, i64 320, i32 0, metadata !54} ; [ DW_TAG_member ] [nextin] [line 131, size 64, align 64, offset 320] [from arc_p]
!64 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"flow", i32 132, i64 64, i64 64, i64 384, i32 0, metadata !65} ; [ DW_TAG_member ] [flow] [line 132, size 64, align 64, offset 384] [from flow_t]
!65 = metadata !{i32 786454, metadata !12, null, metadata !"flow_t", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [flow_t] [line 68, size 0, align 0, offset 0] [from long int]
!66 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"org_cost", i32 133, i64 64, i64 64, i64 448, i32 0, metadata !40} ; [ DW_TAG_member ] [org_cost] [line 133, size 64, align 64, offset 448] [from cost_t]
!67 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"firstout", i32 116, i64 64, i64 64, i64 448, i32 0, metadata !54} ; [ DW_TAG_member ] [firstout] [line 116, size 64, align 64, offset 448] [from arc_p]
!68 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"firstin", i32 116, i64 64, i64 64, i64 512, i32 0, metadata !54} ; [ DW_TAG_member ] [firstin] [line 116, size 64, align 64, offset 512] [from arc_p]
!69 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"arc_tmp", i32 117, i64 64, i64 64, i64 576, i32 0, metadata !54} ; [ DW_TAG_member ] [arc_tmp] [line 117, size 64, align 64, offset 576] [from arc_p]
!70 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"flow", i32 118, i64 64, i64 64, i64 640, i32 0, metadata !65} ; [ DW_TAG_member ] [flow] [line 118, size 64, align 64, offset 640] [from flow_t]
!71 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"depth", i32 119, i64 64, i64 64, i64 704, i32 0, metadata !8} ; [ DW_TAG_member ] [depth] [line 119, size 64, align 64, offset 704] [from long int]
!72 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"number", i32 120, i64 32, i64 32, i64 768, i32 0, metadata !48} ; [ DW_TAG_member ] [number] [line 120, size 32, align 32, offset 768] [from int]
!73 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"time", i32 121, i64 32, i64 32, i64 800, i32 0, metadata !48} ; [ DW_TAG_member ] [time] [line 121, size 32, align 32, offset 800] [from int]
!74 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"stop_nodes", i32 157, i64 64, i64 64, i64 4480, i32 0, metadata !42} ; [ DW_TAG_member ] [stop_nodes] [line 157, size 64, align 64, offset 4480] [from node_p]
!75 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"arcs", i32 158, i64 64, i64 64, i64 4544, i32 0, metadata !54} ; [ DW_TAG_member ] [arcs] [line 158, size 64, align 64, offset 4544] [from arc_p]
!76 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"stop_arcs", i32 158, i64 64, i64 64, i64 4608, i32 0, metadata !54} ; [ DW_TAG_member ] [stop_arcs] [line 158, size 64, align 64, offset 4608] [from arc_p]
!77 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"dummy_arcs", i32 159, i64 64, i64 64, i64 4672, i32 0, metadata !54} ; [ DW_TAG_member ] [dummy_arcs] [line 159, size 64, align 64, offset 4672] [from arc_p]
!78 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"stop_dummy", i32 159, i64 64, i64 64, i64 4736, i32 0, metadata !54} ; [ DW_TAG_member ] [stop_dummy] [line 159, size 64, align 64, offset 4736] [from arc_p]
!79 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"iterations", i32 160, i64 64, i64 64, i64 4800, i32 0, metadata !8} ; [ DW_TAG_member ] [iterations] [line 160, size 64, align 64, offset 4800] [from long int]
!80 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"bound_exchanges", i32 161, i64 64, i64 64, i64 4864, i32 0, metadata !8} ; [ DW_TAG_member ] [bound_exchanges] [line 161, size 64, align 64, offset 4864] [from long int]
!81 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"checksum", i32 162, i64 64, i64 64, i64 4928, i32 0, metadata !8} ; [ DW_TAG_member ] [checksum] [line 162, size 64, align 64, offset 4928] [from long int]
!82 = metadata !{metadata !83, metadata !84, metadata !87, metadata !88, metadata !91}
!83 = metadata !{i32 786689, metadata !4, metadata !"net", metadata !5, i32 16777245, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [net] [line 29]
!84 = metadata !{i32 786688, metadata !4, metadata !"node", metadata !5, i32 35, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [node] [line 35]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from node_t]
!86 = metadata !{i32 786454, metadata !1, null, metadata !"node_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [node_t] [line 99, size 0, align 0, offset 0] [from node]
!87 = metadata !{i32 786688, metadata !4, metadata !"root", metadata !5, i32 35, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root] [line 35]
!88 = metadata !{i32 786688, metadata !4, metadata !"arc", metadata !5, i32 36, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arc] [line 36]
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from arc_t]
!90 = metadata !{i32 786454, metadata !1, null, metadata !"arc_t", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [arc_t] [line 102, size 0, align 0, offset 0] [from arc]
!91 = metadata !{i32 786688, metadata !4, metadata !"stop", metadata !5, i32 37, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stop] [line 37]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!93 = metadata !{i32 29, i32 0, metadata !4, null}
!94 = metadata !{i32 40, i32 0, metadata !4, null}
!95 = metadata !{metadata !"any pointer", metadata !96}
!96 = metadata !{metadata !"omnipotent char", metadata !97}
!97 = metadata !{metadata !"Simple C/C++ TBAA"}
!98 = metadata !{i32 41, i32 0, metadata !4, null}
!99 = metadata !{i32 42, i32 0, metadata !4, null}
!100 = metadata !{i32 43, i32 0, metadata !4, null}
!101 = metadata !{i32 44, i32 0, metadata !4, null}
!102 = metadata !{i32 46, i32 0, metadata !4, null}
!103 = metadata !{i32 45, i32 0, metadata !4, null}
!104 = metadata !{metadata !"long", metadata !96}
!105 = metadata !{i32 47, i32 0, metadata !4, null}
!106 = metadata !{metadata !"int", metadata !96}
!107 = metadata !{i32 48, i32 0, metadata !4, null}
!108 = metadata !{i32 49, i32 0, metadata !4, null}
!109 = metadata !{i32 51, i32 0, metadata !4, null}
!110 = metadata !{i32 52, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !4, i32 52, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pstart.c]
!112 = metadata !{i32 53, i32 0, metadata !111, null}
!113 = metadata !{i32 54, i32 0, metadata !111, null}
!114 = metadata !{i32 56, i32 0, metadata !4, null}
!115 = metadata !{i32 57, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !4, i32 57, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pstart.c]
!117 = metadata !{i32 59, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !116, i32 58, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/pstart.c]
!119 = metadata !{i32 60, i32 0, metadata !118, null}
!120 = metadata !{i32 61, i32 0, metadata !118, null}
!121 = metadata !{i32 62, i32 0, metadata !118, null}
!122 = metadata !{i32 63, i32 0, metadata !118, null}
!123 = metadata !{i32 64, i32 0, metadata !118, null}
!124 = metadata !{i32 66, i32 0, metadata !118, null}
!125 = metadata !{i32 67, i32 0, metadata !118, null}
!126 = metadata !{i32 69, i32 0, metadata !118, null}
!127 = metadata !{i32 70, i32 0, metadata !118, null}
!128 = metadata !{i32 71, i32 0, metadata !118, null}
!129 = metadata !{i32 72, i32 0, metadata !118, null}
!130 = metadata !{i32 73, i32 0, metadata !118, null}
!131 = metadata !{i32 76, i32 0, metadata !4, null}
!132 = metadata !{i32 77, i32 0, metadata !4, null}
!133 = metadata !{i32 78, i32 0, metadata !4, null}
!134 = metadata !{i32 80, i32 0, metadata !4, null}
