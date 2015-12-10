; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/psimplex.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize uwtable
define i64 @primal_net_simplex(%struct.network* %net) #0 {
while.body.lr.ph:
  %delta = alloca i64, align 8
  %xchange = alloca i64, align 8
  %w = alloca %struct.node*, align 8
  %red_cost_of_bea = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{%struct.network* %net}, i64 0, metadata !83), !dbg !110
  call void @llvm.dbg.declare(metadata !{i64* %delta}, metadata !84), !dbg !111
  call void @llvm.dbg.value(metadata !112, i64 0, metadata !86), !dbg !113
  call void @llvm.dbg.declare(metadata !{i64* %xchange}, metadata !87), !dbg !114
  call void @llvm.dbg.declare(metadata !{%struct.node** %w}, metadata !95), !dbg !115
  %arcs1 = getelementptr inbounds %struct.network* %net, i64 0, i32 23, !dbg !116
  %0 = load %struct.arc** %arcs1, align 8, !dbg !116, !tbaa !117
  call void @llvm.dbg.value(metadata !{%struct.arc* %0}, i64 0, metadata !100), !dbg !116
  %stop_arcs2 = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !120
  %1 = load %struct.arc** %stop_arcs2, align 8, !dbg !120, !tbaa !117
  call void @llvm.dbg.value(metadata !{%struct.arc* %1}, i64 0, metadata !101), !dbg !120
  %m3 = getelementptr inbounds %struct.network* %net, i64 0, i32 5, !dbg !121
  %2 = load i64* %m3, align 8, !dbg !121, !tbaa !122
  call void @llvm.dbg.value(metadata !{i64 %2}, i64 0, metadata !103), !dbg !121
  call void @llvm.dbg.declare(metadata !{i64* %red_cost_of_bea}, metadata !105), !dbg !123
  %iterations4 = getelementptr inbounds %struct.network* %net, i64 0, i32 27, !dbg !124
  call void @llvm.dbg.value(metadata !{i64* %iterations4}, i64 0, metadata !106), !dbg !124
  %bound_exchanges5 = getelementptr inbounds %struct.network* %net, i64 0, i32 28, !dbg !125
  call void @llvm.dbg.value(metadata !{i64* %bound_exchanges5}, i64 0, metadata !108), !dbg !125
  %checksum6 = getelementptr inbounds %struct.network* %net, i64 0, i32 29, !dbg !126
  call void @llvm.dbg.value(metadata !{i64* %checksum6}, i64 0, metadata !109), !dbg !126
  %feas_tol = getelementptr inbounds %struct.network* %net, i64 0, i32 16, !dbg !127
  br label %while.body, !dbg !131

while.body:                                       ; preds = %if.else24, %if.then13, %if.then52, %if.then22, %while.body.lr.ph
  %call = call %struct.arc* @primal_bea_mpp(i64 %2, %struct.arc* %0, %struct.arc* %1, i64* %red_cost_of_bea) #3, !dbg !132
  call void @llvm.dbg.value(metadata !{%struct.arc* %call}, i64 0, metadata !96), !dbg !132
  %tobool7 = icmp eq %struct.arc* %call, null, !dbg !132
  br i1 %tobool7, label %while.end, label %if.then, !dbg !132

if.then:                                          ; preds = %while.body
  %3 = load i64* %iterations4, align 8, !dbg !133, !tbaa !122
  %inc = add nsw i64 %3, 1, !dbg !133
  store i64 %inc, i64* %iterations4, align 8, !dbg !133, !tbaa !122
  call void @llvm.dbg.value(metadata !{i64* %red_cost_of_bea}, i64 0, metadata !105), !dbg !134
  %4 = load i64* %red_cost_of_bea, align 8, !dbg !134, !tbaa !122
  %cmp = icmp sgt i64 %4, 0, !dbg !134
  br i1 %cmp, label %if.then8, label %if.else, !dbg !134

if.then8:                                         ; preds = %if.then
  %head = getelementptr inbounds %struct.arc* %call, i64 0, i32 2, !dbg !135
  %tail = getelementptr inbounds %struct.arc* %call, i64 0, i32 1, !dbg !137
  br label %if.end, !dbg !138

if.else:                                          ; preds = %if.then
  %tail9 = getelementptr inbounds %struct.arc* %call, i64 0, i32 1, !dbg !139
  %head10 = getelementptr inbounds %struct.arc* %call, i64 0, i32 2, !dbg !141
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  %jplus.0.in = phi %struct.node** [ %tail, %if.then8 ], [ %head10, %if.else ]
  %iplus.0.in = phi %struct.node** [ %head, %if.then8 ], [ %tail9, %if.else ]
  %iplus.0 = load %struct.node** %iplus.0.in, align 8, !dbg !135
  %jplus.0 = load %struct.node** %jplus.0.in, align 8, !dbg !137
  call void @llvm.dbg.value(metadata !142, i64 0, metadata !84), !dbg !143
  store i64 1, i64* %delta, align 8, !dbg !143, !tbaa !122
  %call11 = call %struct.node* @primal_iminus(i64* %delta, i64* %xchange, %struct.node* %iplus.0, %struct.node* %jplus.0, %struct.node** %w) #3, !dbg !144
  call void @llvm.dbg.value(metadata !{%struct.node* %call11}, i64 0, metadata !93), !dbg !144
  %tobool12 = icmp eq %struct.node* %call11, null, !dbg !145
  br i1 %tobool12, label %if.then13, label %if.else24, !dbg !145

if.then13:                                        ; preds = %if.end
  %5 = load i64* %bound_exchanges5, align 8, !dbg !146, !tbaa !122
  %inc14 = add nsw i64 %5, 1, !dbg !146
  store i64 %inc14, i64* %bound_exchanges5, align 8, !dbg !146, !tbaa !122
  %ident = getelementptr inbounds %struct.arc* %call, i64 0, i32 3, !dbg !148
  %6 = load i32* %ident, align 4, !dbg !148, !tbaa !149
  %cmp15 = icmp eq i32 %6, 2, !dbg !148
  %. = select i1 %cmp15, i32 1, i32 2, !dbg !150
  store i32 %., i32* %ident, align 4, !dbg !150, !tbaa !149
  call void @llvm.dbg.value(metadata !{i64* %delta}, i64 0, metadata !84), !dbg !151
  %7 = load i64* %delta, align 8, !dbg !151, !tbaa !122
  %tobool21 = icmp eq i64 %7, 0, !dbg !151
  br i1 %tobool21, label %while.body, label %if.then22, !dbg !151

if.then22:                                        ; preds = %if.then13
  call void @llvm.dbg.value(metadata !{%struct.node** %w}, i64 0, metadata !95), !dbg !152
  %8 = load %struct.node** %w, align 8, !dbg !152, !tbaa !117
  call void @primal_update_flow(%struct.node* %iplus.0, %struct.node* %jplus.0, %struct.node* %8) #3, !dbg !152
  br label %while.body, !dbg !152

if.else24:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i64* %xchange}, i64 0, metadata !87), !dbg !153
  %9 = load i64* %xchange, align 8, !dbg !153, !tbaa !122
  %tobool25 = icmp eq i64 %9, 0, !dbg !153
  call void @llvm.dbg.value(metadata !{%struct.node* %jplus.0}, i64 0, metadata !102), !dbg !154
  call void @llvm.dbg.value(metadata !{%struct.node* %iplus.0}, i64 0, metadata !92), !dbg !156
  call void @llvm.dbg.value(metadata !{%struct.node* %jplus.0}, i64 0, metadata !89), !dbg !157
  %jplus.0.iplus.0 = select i1 %tobool25, %struct.node* %jplus.0, %struct.node* %iplus.0, !dbg !153
  %iplus.0.jplus.0 = select i1 %tobool25, %struct.node* %iplus.0, %struct.node* %jplus.0, !dbg !153
  %pred = getelementptr inbounds %struct.node* %call11, i64 0, i32 3, !dbg !158
  %10 = load %struct.node** %pred, align 8, !dbg !158, !tbaa !117
  call void @llvm.dbg.value(metadata !{%struct.node* %10}, i64 0, metadata !94), !dbg !158
  %basic_arc = getelementptr inbounds %struct.node* %call11, i64 0, i32 6, !dbg !159
  %11 = load %struct.arc** %basic_arc, align 8, !dbg !159, !tbaa !117
  call void @llvm.dbg.value(metadata !{%struct.arc* %11}, i64 0, metadata !99), !dbg !159
  call void @llvm.dbg.value(metadata !{i64* %xchange}, i64 0, metadata !87), !dbg !160
  %orientation = getelementptr inbounds %struct.node* %call11, i64 0, i32 1, !dbg !160
  %12 = load i32* %orientation, align 4, !dbg !160, !tbaa !149
  %conv = sext i32 %12 to i64, !dbg !160
  %cmp28 = icmp eq i64 %9, %conv, !dbg !160
  call void @llvm.dbg.value(metadata !161, i64 0, metadata !104), !dbg !162
  %new_set.0 = select i1 %cmp28, i32 2, i32 1, !dbg !160
  call void @llvm.dbg.value(metadata !{i64* %red_cost_of_bea}, i64 0, metadata !105), !dbg !163
  %13 = load i64* %red_cost_of_bea, align 8, !dbg !163, !tbaa !122
  %cmp33 = icmp sgt i64 %13, 0, !dbg !163
  call void @llvm.dbg.value(metadata !{i64* %delta}, i64 0, metadata !84), !dbg !164
  %14 = load i64* %delta, align 8, !dbg !164, !tbaa !122
  %sub = sub nsw i64 1, %14, !dbg !164
  call void @llvm.dbg.value(metadata !{i64 %sub}, i64 0, metadata !85), !dbg !164
  %new_flow.0 = select i1 %cmp33, i64 %sub, i64 %14, !dbg !163
  %tail38 = getelementptr inbounds %struct.arc* %call, i64 0, i32 1, !dbg !165
  %15 = load %struct.node** %tail38, align 8, !dbg !165, !tbaa !117
  %cmp39 = icmp eq %struct.node* %15, %iplus.0.jplus.0, !dbg !165
  %.92 = zext i1 %cmp39 to i64, !dbg !166
  call void @llvm.dbg.value(metadata !{i64* %xchange}, i64 0, metadata !87), !dbg !127
  %conv46 = zext i1 %tobool25 to i64, !dbg !127
  call void @llvm.dbg.value(metadata !{i64* %delta}, i64 0, metadata !84), !dbg !127
  call void @llvm.dbg.value(metadata !{%struct.node** %w}, i64 0, metadata !95), !dbg !127
  %16 = load %struct.node** %w, align 8, !dbg !127, !tbaa !117
  call void @llvm.dbg.value(metadata !{i64* %red_cost_of_bea}, i64 0, metadata !105), !dbg !127
  %17 = load i64* %feas_tol, align 8, !dbg !127, !tbaa !122
  call void @update_tree(i64 %conv46, i64 %.92, i64 %14, i64 %new_flow.0, %struct.node* %iplus.0.jplus.0, %struct.node* %jplus.0.iplus.0, %struct.node* %call11, %struct.node* %10, %struct.node* %16, %struct.arc* %call, i64 %13, i64 %17) #3, !dbg !127
  %ident47 = getelementptr inbounds %struct.arc* %call, i64 0, i32 3, !dbg !167
  store i32 0, i32* %ident47, align 4, !dbg !167, !tbaa !149
  %ident49 = getelementptr inbounds %struct.arc* %11, i64 0, i32 3, !dbg !168
  store i32 %new_set.0, i32* %ident49, align 4, !dbg !168, !tbaa !149
  %18 = load i64* %iterations4, align 8, !dbg !169, !tbaa !122
  %sub50 = add nsw i64 %18, -1, !dbg !169
  %rem = srem i64 %sub50, 200, !dbg !169
  %tobool51 = icmp eq i64 %rem, 0, !dbg !169
  br i1 %tobool51, label %if.then52, label %while.body, !dbg !169

if.then52:                                        ; preds = %if.else24
  %call53 = call i64 @refresh_potential(%struct.network* %net) #3, !dbg !170
  %19 = load i64* %checksum6, align 8, !dbg !170, !tbaa !122
  %add = add nsw i64 %19, %call53, !dbg !170
  store i64 %add, i64* %checksum6, align 8, !dbg !170, !tbaa !122
  br label %while.body, !dbg !172

while.end:                                        ; preds = %while.body
  %call58 = call i64 @refresh_potential(%struct.network* %net) #3, !dbg !173
  %20 = load i64* %checksum6, align 8, !dbg !173, !tbaa !122
  %add59 = add nsw i64 %20, %call58, !dbg !173
  store i64 %add59, i64* %checksum6, align 8, !dbg !173, !tbaa !122
  %call60 = call i64 @primal_feasible(%struct.network* %net) #3, !dbg !174
  %call61 = call i64 @dual_feasible(%struct.network* %net) #3, !dbg !175
  ret i64 0, !dbg !176
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare %struct.arc* @primal_bea_mpp(i64, %struct.arc*, %struct.arc*, i64*) #2

; Function Attrs: optsize
declare %struct.node* @primal_iminus(i64*, i64*, %struct.node*, %struct.node*, %struct.node**) #2

; Function Attrs: optsize
declare void @primal_update_flow(%struct.node*, %struct.node*, %struct.node*) #2

; Function Attrs: optsize
declare void @update_tree(i64, i64, i64, i64, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, i64, i64) #2

; Function Attrs: optsize
declare i64 @refresh_potential(%struct.network*) #2

; Function Attrs: optsize
declare i64 @primal_feasible(%struct.network*) #2

; Function Attrs: optsize
declare i64 @dual_feasible(%struct.network*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/psimplex.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/psimplex.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"primal_net_simplex", metadata !"primal_net_simplex", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.network*)* @primal_net_simplex, null, null, metadata !82, i32 35} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 35] [primal_net_simplex]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/psimplex.c]
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
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !108, metadata !109}
!83 = metadata !{i32 786689, metadata !4, metadata !"net", metadata !5, i32 16777246, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [net] [line 30]
!84 = metadata !{i32 786688, metadata !4, metadata !"delta", metadata !5, i32 36, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delta] [line 36]
!85 = metadata !{i32 786688, metadata !4, metadata !"new_flow", metadata !5, i32 37, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_flow] [line 37]
!86 = metadata !{i32 786688, metadata !4, metadata !"opt", metadata !5, i32 38, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opt] [line 38]
!87 = metadata !{i32 786688, metadata !4, metadata !"xchange", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xchange] [line 39]
!88 = metadata !{i32 786688, metadata !4, metadata !"new_orientation", metadata !5, i32 40, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_orientation] [line 40]
!89 = metadata !{i32 786688, metadata !4, metadata !"iplus", metadata !5, i32 41, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iplus] [line 41]
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from node_t]
!91 = metadata !{i32 786454, metadata !1, null, metadata !"node_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [node_t] [line 99, size 0, align 0, offset 0] [from node]
!92 = metadata !{i32 786688, metadata !4, metadata !"jplus", metadata !5, i32 42, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jplus] [line 42]
!93 = metadata !{i32 786688, metadata !4, metadata !"iminus", metadata !5, i32 43, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iminus] [line 43]
!94 = metadata !{i32 786688, metadata !4, metadata !"jminus", metadata !5, i32 44, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jminus] [line 44]
!95 = metadata !{i32 786688, metadata !4, metadata !"w", metadata !5, i32 45, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 45]
!96 = metadata !{i32 786688, metadata !4, metadata !"bea", metadata !5, i32 46, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bea] [line 46]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from arc_t]
!98 = metadata !{i32 786454, metadata !1, null, metadata !"arc_t", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [arc_t] [line 102, size 0, align 0, offset 0] [from arc]
!99 = metadata !{i32 786688, metadata !4, metadata !"bla", metadata !5, i32 47, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bla] [line 47]
!100 = metadata !{i32 786688, metadata !4, metadata !"arcs", metadata !5, i32 48, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arcs] [line 48]
!101 = metadata !{i32 786688, metadata !4, metadata !"stop_arcs", metadata !5, i32 49, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stop_arcs] [line 49]
!102 = metadata !{i32 786688, metadata !4, metadata !"temp", metadata !5, i32 50, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 50]
!103 = metadata !{i32 786688, metadata !4, metadata !"m", metadata !5, i32 51, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 51]
!104 = metadata !{i32 786688, metadata !4, metadata !"new_set", metadata !5, i32 52, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_set] [line 52]
!105 = metadata !{i32 786688, metadata !4, metadata !"red_cost_of_bea", metadata !5, i32 53, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [red_cost_of_bea] [line 53]
!106 = metadata !{i32 786688, metadata !4, metadata !"iterations", metadata !5, i32 54, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iterations] [line 54]
!107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!108 = metadata !{i32 786688, metadata !4, metadata !"bound_exchanges", metadata !5, i32 55, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bound_exchanges] [line 55]
!109 = metadata !{i32 786688, metadata !4, metadata !"checksum", metadata !5, i32 56, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [checksum] [line 56]
!110 = metadata !{i32 30, i32 0, metadata !4, null}
!111 = metadata !{i32 36, i32 0, metadata !4, null}
!112 = metadata !{i64 0}
!113 = metadata !{i32 38, i32 0, metadata !4, null}
!114 = metadata !{i32 39, i32 0, metadata !4, null}
!115 = metadata !{i32 45, i32 0, metadata !4, null}
!116 = metadata !{i32 48, i32 0, metadata !4, null}
!117 = metadata !{metadata !"any pointer", metadata !118}
!118 = metadata !{metadata !"omnipotent char", metadata !119}
!119 = metadata !{metadata !"Simple C/C++ TBAA"}
!120 = metadata !{i32 49, i32 0, metadata !4, null}
!121 = metadata !{i32 51, i32 0, metadata !4, null}
!122 = metadata !{metadata !"long", metadata !118}
!123 = metadata !{i32 53, i32 0, metadata !4, null}
!124 = metadata !{i32 54, i32 0, metadata !4, null}
!125 = metadata !{i32 55, i32 0, metadata !4, null}
!126 = metadata !{i32 56, i32 0, metadata !4, null}
!127 = metadata !{i32 126, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !129, i32 99, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/psimplex.c]
!129 = metadata !{i32 786443, metadata !1, metadata !130, i32 62, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/psimplex.c]
!130 = metadata !{i32 786443, metadata !1, metadata !4, i32 60, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/psimplex.c]
!131 = metadata !{i32 59, i32 0, metadata !4, null}
!132 = metadata !{i32 61, i32 0, metadata !130, null}
!133 = metadata !{i32 63, i32 0, metadata !129, null}
!134 = metadata !{i32 71, i32 0, metadata !129, null}
!135 = metadata !{i32 73, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !129, i32 72, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/psimplex.c]
!137 = metadata !{i32 74, i32 0, metadata !136, null}
!138 = metadata !{i32 75, i32 0, metadata !136, null}
!139 = metadata !{i32 78, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !129, i32 77, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/psimplex.c]
!141 = metadata !{i32 79, i32 0, metadata !140, null}
!142 = metadata !{i64 1}
!143 = metadata !{i32 82, i32 0, metadata !129, null}
!144 = metadata !{i32 83, i32 0, metadata !129, null}
!145 = metadata !{i32 86, i32 0, metadata !129, null}
!146 = metadata !{i32 88, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !129, i32 87, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/psimplex.c]
!148 = metadata !{i32 90, i32 0, metadata !147, null}
!149 = metadata !{metadata !"int", metadata !118}
!150 = metadata !{i32 91, i32 0, metadata !147, null}
!151 = metadata !{i32 95, i32 0, metadata !147, null}
!152 = metadata !{i32 96, i32 0, metadata !147, null}
!153 = metadata !{i32 100, i32 0, metadata !128, null}
!154 = metadata !{i32 102, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !128, i32 101, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/psimplex.c]
!156 = metadata !{i32 103, i32 0, metadata !155, null}
!157 = metadata !{i32 104, i32 0, metadata !155, null}
!158 = metadata !{i32 107, i32 0, metadata !128, null}
!159 = metadata !{i32 109, i32 0, metadata !128, null}
!160 = metadata !{i32 111, i32 0, metadata !128, null}
!161 = metadata !{i64 2}
!162 = metadata !{i32 114, i32 0, metadata !128, null}
!163 = metadata !{i32 116, i32 0, metadata !128, null}
!164 = metadata !{i32 117, i32 0, metadata !128, null}
!165 = metadata !{i32 121, i32 0, metadata !128, null}
!166 = metadata !{i32 122, i32 0, metadata !128, null}
!167 = metadata !{i32 131, i32 0, metadata !128, null}
!168 = metadata !{i32 132, i32 0, metadata !128, null}
!169 = metadata !{i32 134, i32 0, metadata !128, null}
!170 = metadata !{i32 136, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !128, i32 135, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/psimplex.c]
!172 = metadata !{i32 144, i32 0, metadata !171, null}
!173 = metadata !{i32 152, i32 0, metadata !4, null}
!174 = metadata !{i32 153, i32 0, metadata !4, null}
!175 = metadata !{i32 154, i32 0, metadata !4, null}
!176 = metadata !{i32 156, i32 0, metadata !4, null}
