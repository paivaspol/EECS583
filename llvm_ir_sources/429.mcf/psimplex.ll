; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/psimplex.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize ssp uwtable
define i64 @primal_net_simplex(%struct.network* %net) #0 {
.critedge:
  %delta = alloca i64, align 8
  %xchange = alloca i64, align 8
  %w = alloca %struct.node*, align 8
  %red_cost_of_bea = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.network* %net, i64 0, metadata !83, metadata !114), !dbg !115
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !86, metadata !114), !dbg !116
  %0 = getelementptr inbounds %struct.network* %net, i64 0, i32 23, !dbg !117
  %1 = load %struct.arc** %0, align 8, !dbg !117, !tbaa !118
  tail call void @llvm.dbg.value(metadata %struct.arc* %1, i64 0, metadata !100, metadata !114), !dbg !125
  %2 = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !126
  %3 = load %struct.arc** %2, align 8, !dbg !126, !tbaa !127
  tail call void @llvm.dbg.value(metadata %struct.arc* %3, i64 0, metadata !101, metadata !114), !dbg !128
  %4 = getelementptr inbounds %struct.network* %net, i64 0, i32 5, !dbg !129
  %5 = load i64* %4, align 8, !dbg !129, !tbaa !130
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !103, metadata !114), !dbg !131
  %6 = getelementptr inbounds %struct.network* %net, i64 0, i32 27, !dbg !132
  tail call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !106, metadata !114), !dbg !133
  %7 = getelementptr inbounds %struct.network* %net, i64 0, i32 28, !dbg !134
  tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !108, metadata !114), !dbg !135
  %8 = getelementptr inbounds %struct.network* %net, i64 0, i32 29, !dbg !136
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !109, metadata !114), !dbg !137
  call void @llvm.dbg.value(metadata i64* %red_cost_of_bea, i64 0, metadata !105, metadata !114), !dbg !138
  %9 = call %struct.arc* @primal_bea_mpp(i64 %5, %struct.arc* %1, %struct.arc* %3, i64* %red_cost_of_bea) #3, !dbg !139
  call void @llvm.dbg.value(metadata %struct.arc* %9, i64 0, metadata !96, metadata !114), !dbg !142
  %10 = icmp eq %struct.arc* %9, null, !dbg !143
  br i1 %10, label %.critedge2._crit_edge, label %.lr.ph, !dbg !144

.lr.ph:                                           ; preds = %.critedge
  %11 = getelementptr inbounds %struct.network* %net, i64 0, i32 16, !dbg !145
  br label %12, !dbg !144

; <label>:12                                      ; preds = %.lr.ph, %.critedge2.backedge
  %13 = phi %struct.arc* [ %9, %.lr.ph ], [ %66, %.critedge2.backedge ]
  %14 = load i64* %6, align 8, !dbg !149, !tbaa !150
  %15 = add nsw i64 %14, 1, !dbg !149
  store i64 %15, i64* %6, align 8, !dbg !149, !tbaa !150
  call void @llvm.dbg.value(metadata i64* %red_cost_of_bea, i64 0, metadata !105, metadata !114), !dbg !138
  %16 = load i64* %red_cost_of_bea, align 8, !dbg !151, !tbaa !150
  %17 = icmp sgt i64 %16, 0, !dbg !153
  br i1 %17, label %18, label %21, !dbg !154

; <label>:18                                      ; preds = %12
  %19 = getelementptr inbounds %struct.arc* %13, i64 0, i32 2, !dbg !155
  %20 = getelementptr inbounds %struct.arc* %13, i64 0, i32 1, !dbg !157
  br label %24, !dbg !158

; <label>:21                                      ; preds = %12
  %22 = getelementptr inbounds %struct.arc* %13, i64 0, i32 1, !dbg !159
  %23 = getelementptr inbounds %struct.arc* %13, i64 0, i32 2, !dbg !161
  br label %24

; <label>:24                                      ; preds = %21, %18
  %jplus.0.in = phi %struct.node** [ %20, %18 ], [ %23, %21 ]
  %iplus.0.in = phi %struct.node** [ %19, %18 ], [ %22, %21 ]
  %iplus.0 = load %struct.node** %iplus.0.in, align 8, !dbg !155
  %jplus.0 = load %struct.node** %jplus.0.in, align 8, !dbg !157
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !84, metadata !114), !dbg !162
  store i64 1, i64* %delta, align 8, !dbg !163, !tbaa !150
  call void @llvm.dbg.value(metadata i64* %delta, i64 0, metadata !84, metadata !114), !dbg !162
  call void @llvm.dbg.value(metadata i64* %xchange, i64 0, metadata !87, metadata !114), !dbg !164
  call void @llvm.dbg.value(metadata %struct.node** %w, i64 0, metadata !95, metadata !114), !dbg !165
  %25 = call %struct.node* @primal_iminus(i64* %delta, i64* %xchange, %struct.node* %iplus.0, %struct.node* %jplus.0, %struct.node** %w) #3, !dbg !166
  call void @llvm.dbg.value(metadata %struct.node* %25, i64 0, metadata !93, metadata !114), !dbg !167
  %26 = icmp eq %struct.node* %25, null, !dbg !168
  br i1 %26, label %27, label %36, !dbg !169

; <label>:27                                      ; preds = %24
  %28 = load i64* %7, align 8, !dbg !170, !tbaa !150
  %29 = add nsw i64 %28, 1, !dbg !170
  store i64 %29, i64* %7, align 8, !dbg !170, !tbaa !150
  %30 = getelementptr inbounds %struct.arc* %13, i64 0, i32 3, !dbg !172
  %31 = load i32* %30, align 4, !dbg !172, !tbaa !174
  %32 = icmp eq i32 %31, 2, !dbg !177
  %. = select i1 %32, i32 1, i32 2, !dbg !178
  store i32 %., i32* %30, align 4, !dbg !179, !tbaa !174
  call void @llvm.dbg.value(metadata i64* %delta, i64 0, metadata !84, metadata !114), !dbg !162
  %33 = load i64* %delta, align 8, !dbg !180, !tbaa !150
  %34 = icmp eq i64 %33, 0, !dbg !180
  br i1 %34, label %.critedge2.backedge, label %.critedge4, !dbg !182

.critedge4:                                       ; preds = %27
  call void @llvm.dbg.value(metadata %struct.node** %w, i64 0, metadata !95, metadata !114), !dbg !165
  %35 = load %struct.node** %w, align 8, !dbg !183, !tbaa !184
  call void @primal_update_flow(%struct.node* %iplus.0, %struct.node* %jplus.0, %struct.node* %35) #3, !dbg !185
  br label %.critedge2.backedge

; <label>:36                                      ; preds = %24
  call void @llvm.dbg.value(metadata i64* %xchange, i64 0, metadata !87, metadata !114), !dbg !164
  %37 = load i64* %xchange, align 8, !dbg !186, !tbaa !150
  %38 = icmp eq i64 %37, 0, !dbg !186
  call void @llvm.dbg.value(metadata %struct.node* %jplus.0, i64 0, metadata !102, metadata !114), !dbg !188
  call void @llvm.dbg.value(metadata %struct.node* %iplus.0, i64 0, metadata !92, metadata !114), !dbg !189
  call void @llvm.dbg.value(metadata %struct.node* %jplus.0, i64 0, metadata !89, metadata !114), !dbg !190
  %jplus.0.iplus.0 = select i1 %38, %struct.node* %jplus.0, %struct.node* %iplus.0, !dbg !191
  %iplus.0.jplus.0 = select i1 %38, %struct.node* %iplus.0, %struct.node* %jplus.0, !dbg !191
  %39 = getelementptr inbounds %struct.node* %25, i64 0, i32 3, !dbg !192
  %40 = load %struct.node** %39, align 8, !dbg !192, !tbaa !193
  call void @llvm.dbg.value(metadata %struct.node* %40, i64 0, metadata !94, metadata !114), !dbg !195
  %41 = getelementptr inbounds %struct.node* %25, i64 0, i32 6, !dbg !196
  %42 = load %struct.arc** %41, align 8, !dbg !196, !tbaa !197
  call void @llvm.dbg.value(metadata %struct.arc* %42, i64 0, metadata !99, metadata !114), !dbg !198
  call void @llvm.dbg.value(metadata i64* %xchange, i64 0, metadata !87, metadata !114), !dbg !164
  %43 = getelementptr inbounds %struct.node* %25, i64 0, i32 1, !dbg !199
  %44 = load i32* %43, align 4, !dbg !199, !tbaa !201
  %45 = sext i32 %44 to i64, !dbg !202
  %46 = icmp eq i64 %37, %45, !dbg !203
  call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !104, metadata !114), !dbg !204
  %new_set.0 = select i1 %46, i32 2, i32 1, !dbg !205
  call void @llvm.dbg.value(metadata i64* %red_cost_of_bea, i64 0, metadata !105, metadata !114), !dbg !138
  %47 = load i64* %red_cost_of_bea, align 8, !dbg !206, !tbaa !150
  %48 = icmp sgt i64 %47, 0, !dbg !208
  call void @llvm.dbg.value(metadata i64* %delta, i64 0, metadata !84, metadata !114), !dbg !162
  %49 = load i64* %delta, align 8, !dbg !209, !tbaa !150
  %50 = sub nsw i64 1, %49, !dbg !210
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !85, metadata !114), !dbg !211
  %new_flow.0 = select i1 %48, i64 %50, i64 %49, !dbg !212
  %51 = getelementptr inbounds %struct.arc* %13, i64 0, i32 1, !dbg !213
  %52 = load %struct.node** %51, align 8, !dbg !213, !tbaa !215
  %53 = icmp eq %struct.node* %52, %iplus.0.jplus.0, !dbg !216
  %.1 = zext i1 %53 to i64, !dbg !217
  call void @llvm.dbg.value(metadata i64* %xchange, i64 0, metadata !87, metadata !114), !dbg !164
  %54 = zext i1 %38 to i64, !dbg !218
  call void @llvm.dbg.value(metadata i64* %delta, i64 0, metadata !84, metadata !114), !dbg !162
  call void @llvm.dbg.value(metadata %struct.node** %w, i64 0, metadata !95, metadata !114), !dbg !165
  %55 = load %struct.node** %w, align 8, !dbg !219, !tbaa !184
  call void @llvm.dbg.value(metadata i64* %red_cost_of_bea, i64 0, metadata !105, metadata !114), !dbg !138
  %56 = load i64* %11, align 8, !dbg !145, !tbaa !220
  call void @update_tree(i64 %54, i64 %.1, i64 %49, i64 %new_flow.0, %struct.node* %iplus.0.jplus.0, %struct.node* %jplus.0.iplus.0, %struct.node* %25, %struct.node* %40, %struct.node* %55, %struct.arc* %13, i64 %47, i64 %56) #3, !dbg !221
  %57 = getelementptr inbounds %struct.arc* %13, i64 0, i32 3, !dbg !222
  store i32 0, i32* %57, align 4, !dbg !223, !tbaa !174
  %58 = getelementptr inbounds %struct.arc* %42, i64 0, i32 3, !dbg !224
  store i32 %new_set.0, i32* %58, align 4, !dbg !225, !tbaa !174
  %59 = load i64* %6, align 8, !dbg !226, !tbaa !150
  %60 = add nsw i64 %59, -1, !dbg !228
  %61 = srem i64 %60, 200, !dbg !229
  %62 = icmp eq i64 %61, 0, !dbg !229
  br i1 %62, label %.critedge3, label %.critedge2.backedge, !dbg !230

.critedge3:                                       ; preds = %36
  %63 = call i64 @refresh_potential(%struct.network* %net) #3, !dbg !231
  %64 = load i64* %8, align 8, !dbg !233, !tbaa !150
  %65 = add nsw i64 %64, %63, !dbg !233
  store i64 %65, i64* %8, align 8, !dbg !233, !tbaa !150
  br label %.critedge2.backedge

.critedge2.backedge:                              ; preds = %.critedge3, %.critedge4, %36, %27
  call void @llvm.dbg.value(metadata i64* %red_cost_of_bea, i64 0, metadata !105, metadata !114), !dbg !138
  %66 = call %struct.arc* @primal_bea_mpp(i64 %5, %struct.arc* %1, %struct.arc* %3, i64* %red_cost_of_bea) #3, !dbg !139
  call void @llvm.dbg.value(metadata %struct.arc* %66, i64 0, metadata !96, metadata !114), !dbg !142
  %67 = icmp eq %struct.arc* %66, null, !dbg !143
  br i1 %67, label %.critedge2._crit_edge, label %12, !dbg !144

.critedge2._crit_edge:                            ; preds = %.critedge2.backedge, %.critedge
  %68 = call i64 @refresh_potential(%struct.network* %net) #3, !dbg !234
  %69 = load i64* %8, align 8, !dbg !235, !tbaa !150
  %70 = add nsw i64 %69, %68, !dbg !235
  store i64 %70, i64* %8, align 8, !dbg !235, !tbaa !150
  %71 = call i64 @primal_feasible(%struct.network* %net) #3, !dbg !236
  %72 = call i64 @dual_feasible(%struct.network* %net) #3, !dbg !237
  ret i64 0, !dbg !238
}

; Function Attrs: optsize
declare %struct.arc* @primal_bea_mpp(i64, %struct.arc*, %struct.arc*, i64*) #1

; Function Attrs: optsize
declare %struct.node* @primal_iminus(i64*, i64*, %struct.node*, %struct.node*, %struct.node**) #1

; Function Attrs: optsize
declare void @primal_update_flow(%struct.node*, %struct.node*, %struct.node*) #1

; Function Attrs: optsize
declare void @update_tree(i64, i64, i64, i64, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, i64, i64) #1

; Function Attrs: optsize
declare i64 @refresh_potential(%struct.network*) #1

; Function Attrs: optsize
declare i64 @primal_feasible(%struct.network*) #1

; Function Attrs: optsize
declare i64 @dual_feasible(%struct.network*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!110, !111, !112}
!llvm.ident = !{!113}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/psimplex.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !5, line: 68, baseType: !6)
!5 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!6 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!7 = !{!8}
!8 = !DISubprogram(name: "primal_net_simplex", scope: !1, file: !1, line: 30, type: !9, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.network*)* @primal_net_simplex, variables: !82)
!9 = !DISubroutineType(types: !10)
!10 = !{!6, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "network_t", file: !5, line: 163, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "network", file: !5, line: 138, size: 4992, align: 64, elements: !14)
!14 = !{!15, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !40, !42, !74, !75, !76, !77, !78, !79, !80, !81}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "inputfile", scope: !13, file: !5, line: 140, baseType: !16, size: 1600, align: 8)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1600, align: 8, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 200)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "clustfile", scope: !13, file: !5, line: 141, baseType: !16, size: 1600, align: 8, offset: 1600)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !13, file: !5, line: 142, baseType: !6, size: 64, align: 64, offset: 3200)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "n_trips", scope: !13, file: !5, line: 142, baseType: !6, size: 64, align: 64, offset: 3264)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "max_m", scope: !13, file: !5, line: 143, baseType: !6, size: 64, align: 64, offset: 3328)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !13, file: !5, line: 143, baseType: !6, size: 64, align: 64, offset: 3392)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "m_org", scope: !13, file: !5, line: 143, baseType: !6, size: 64, align: 64, offset: 3456)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "m_impl", scope: !13, file: !5, line: 143, baseType: !6, size: 64, align: 64, offset: 3520)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "max_residual_new_m", scope: !13, file: !5, line: 144, baseType: !6, size: 64, align: 64, offset: 3584)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "max_new_m", scope: !13, file: !5, line: 144, baseType: !6, size: 64, align: 64, offset: 3648)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "primal_unbounded", scope: !13, file: !5, line: 146, baseType: !6, size: 64, align: 64, offset: 3712)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "dual_unbounded", scope: !13, file: !5, line: 147, baseType: !6, size: 64, align: 64, offset: 3776)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "perturbed", scope: !13, file: !5, line: 148, baseType: !6, size: 64, align: 64, offset: 3840)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "feasible", scope: !13, file: !5, line: 149, baseType: !6, size: 64, align: 64, offset: 3904)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !13, file: !5, line: 150, baseType: !6, size: 64, align: 64, offset: 3968)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "opt_tol", scope: !13, file: !5, line: 151, baseType: !6, size: 64, align: 64, offset: 4032)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "feas_tol", scope: !13, file: !5, line: 152, baseType: !6, size: 64, align: 64, offset: 4096)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "pert_val", scope: !13, file: !5, line: 153, baseType: !6, size: 64, align: 64, offset: 4160)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "bigM", scope: !13, file: !5, line: 154, baseType: !6, size: 64, align: 64, offset: 4224)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "optcost", scope: !13, file: !5, line: 155, baseType: !39, size: 64, align: 64, offset: 4288)
!39 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_impl", scope: !13, file: !5, line: 156, baseType: !41, size: 64, align: 64, offset: 4352)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !5, line: 69, baseType: !6)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !13, file: !5, line: 157, baseType: !43, size: 64, align: 64, offset: 4416)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !5, line: 100, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !5, line: 107, size: 832, align: 64, elements: !46)
!46 = !{!47, !48, !50, !51, !52, !53, !54, !67, !68, !69, !70, !71, !72, !73}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !45, file: !5, line: 109, baseType: !41, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !45, file: !5, line: 110, baseType: !49, size: 32, align: 32, offset: 64)
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !45, file: !5, line: 111, baseType: !43, size: 64, align: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !45, file: !5, line: 112, baseType: !43, size: 64, align: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !45, file: !5, line: 113, baseType: !43, size: 64, align: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !45, file: !5, line: 114, baseType: !43, size: 64, align: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !45, file: !5, line: 115, baseType: !55, size: 64, align: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !5, line: 103, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !5, line: 126, size: 512, align: 64, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !57, file: !5, line: 128, baseType: !41, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !57, file: !5, line: 129, baseType: !43, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !57, file: !5, line: 129, baseType: !43, size: 64, align: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !57, file: !5, line: 130, baseType: !49, size: 32, align: 32, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !57, file: !5, line: 131, baseType: !55, size: 64, align: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !57, file: !5, line: 131, baseType: !55, size: 64, align: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !57, file: !5, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !57, file: !5, line: 133, baseType: !41, size: 64, align: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !45, file: !5, line: 116, baseType: !55, size: 64, align: 64, offset: 448)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !45, file: !5, line: 116, baseType: !55, size: 64, align: 64, offset: 512)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !45, file: !5, line: 117, baseType: !55, size: 64, align: 64, offset: 576)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !45, file: !5, line: 118, baseType: !4, size: 64, align: 64, offset: 640)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !45, file: !5, line: 119, baseType: !6, size: 64, align: 64, offset: 704)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !45, file: !5, line: 120, baseType: !49, size: 32, align: 32, offset: 768)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !45, file: !5, line: 121, baseType: !49, size: 32, align: 32, offset: 800)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "stop_nodes", scope: !13, file: !5, line: 157, baseType: !43, size: 64, align: 64, offset: 4480)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "arcs", scope: !13, file: !5, line: 158, baseType: !55, size: 64, align: 64, offset: 4544)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arcs", scope: !13, file: !5, line: 158, baseType: !55, size: 64, align: 64, offset: 4608)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_arcs", scope: !13, file: !5, line: 159, baseType: !55, size: 64, align: 64, offset: 4672)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "stop_dummy", scope: !13, file: !5, line: 159, baseType: !55, size: 64, align: 64, offset: 4736)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !13, file: !5, line: 160, baseType: !6, size: 64, align: 64, offset: 4800)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "bound_exchanges", scope: !13, file: !5, line: 161, baseType: !6, size: 64, align: 64, offset: 4864)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !13, file: !5, line: 162, baseType: !6, size: 64, align: 64, offset: 4928)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !92, !93, !94, !95, !96, !99, !100, !101, !102, !103, !104, !105, !106, !108, !109}
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "net", arg: 1, scope: !8, file: !1, line: 30, type: !11)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "delta", scope: !8, file: !1, line: 36, type: !4)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_flow", scope: !8, file: !1, line: 37, type: !4)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "opt", scope: !8, file: !1, line: 38, type: !6)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xchange", scope: !8, file: !1, line: 39, type: !6)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_orientation", scope: !8, file: !1, line: 40, type: !6)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iplus", scope: !8, file: !1, line: 41, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !5, line: 99, baseType: !45)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jplus", scope: !8, file: !1, line: 42, type: !90)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iminus", scope: !8, file: !1, line: 43, type: !90)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jminus", scope: !8, file: !1, line: 44, type: !90)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !8, file: !1, line: 45, type: !90)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bea", scope: !8, file: !1, line: 46, type: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_t", file: !5, line: 102, baseType: !57)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bla", scope: !8, file: !1, line: 47, type: !97)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arcs", scope: !8, file: !1, line: 48, type: !97)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop_arcs", scope: !8, file: !1, line: 49, type: !97)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !8, file: !1, line: 50, type: !90)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !8, file: !1, line: 51, type: !6)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_set", scope: !8, file: !1, line: 52, type: !6)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "red_cost_of_bea", scope: !8, file: !1, line: 53, type: !41)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iterations", scope: !8, file: !1, line: 54, type: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bound_exchanges", scope: !8, file: !1, line: 55, type: !107)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checksum", scope: !8, file: !1, line: 56, type: !107)
!110 = !{i32 2, !"Dwarf Version", i32 2}
!111 = !{i32 2, !"Debug Info Version", i32 700000003}
!112 = !{i32 1, !"PIC Level", i32 2}
!113 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!114 = !DIExpression()
!115 = !DILocation(line: 30, column: 37, scope: !8)
!116 = !DILocation(line: 38, column: 19, scope: !8)
!117 = !DILocation(line: 48, column: 41, scope: !8)
!118 = !{!119, !124, i64 568}
!119 = !{!"network", !120, i64 0, !120, i64 200, !122, i64 400, !122, i64 408, !122, i64 416, !122, i64 424, !122, i64 432, !122, i64 440, !122, i64 448, !122, i64 456, !122, i64 464, !122, i64 472, !122, i64 480, !122, i64 488, !122, i64 496, !122, i64 504, !122, i64 512, !122, i64 520, !122, i64 528, !123, i64 536, !122, i64 544, !124, i64 552, !124, i64 560, !124, i64 568, !124, i64 576, !124, i64 584, !124, i64 592, !122, i64 600, !122, i64 608, !122, i64 616}
!120 = !{!"omnipotent char", !121, i64 0}
!121 = !{!"Simple C/C++ TBAA"}
!122 = !{!"long", !120, i64 0}
!123 = !{!"double", !120, i64 0}
!124 = !{!"any pointer", !120, i64 0}
!125 = !DILocation(line: 48, column: 20, scope: !8)
!126 = !DILocation(line: 49, column: 41, scope: !8)
!127 = !{!119, !124, i64 576}
!128 = !DILocation(line: 49, column: 20, scope: !8)
!129 = !DILocation(line: 51, column: 28, scope: !8)
!130 = !{!119, !122, i64 424}
!131 = !DILocation(line: 51, column: 19, scope: !8)
!132 = !DILocation(line: 54, column: 40, scope: !8)
!133 = !DILocation(line: 54, column: 20, scope: !8)
!134 = !DILocation(line: 55, column: 45, scope: !8)
!135 = !DILocation(line: 55, column: 20, scope: !8)
!136 = !DILocation(line: 56, column: 38, scope: !8)
!137 = !DILocation(line: 56, column: 20, scope: !8)
!138 = !DILocation(line: 53, column: 19, scope: !8)
!139 = !DILocation(line: 61, column: 20, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 61, column: 13)
!141 = distinct !DILexicalBlock(scope: !8, file: !1, line: 60, column: 5)
!142 = !DILocation(line: 46, column: 20, scope: !8)
!143 = !DILocation(line: 61, column: 18, scope: !140)
!144 = !DILocation(line: 61, column: 13, scope: !141)
!145 = !DILocation(line: 129, column: 42, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 99, column: 13)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 86, column: 17)
!148 = distinct !DILexicalBlock(scope: !140, file: !1, line: 62, column: 9)
!149 = !DILocation(line: 63, column: 26, scope: !148)
!150 = !{!122, !122, i64 0}
!151 = !DILocation(line: 71, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 71, column: 17)
!153 = !DILocation(line: 71, column: 33, scope: !152)
!154 = !DILocation(line: 71, column: 17, scope: !148)
!155 = !DILocation(line: 73, column: 30, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !1, line: 72, column: 13)
!157 = !DILocation(line: 74, column: 30, scope: !156)
!158 = !DILocation(line: 75, column: 13, scope: !156)
!159 = !DILocation(line: 78, column: 30, scope: !160)
!160 = distinct !DILexicalBlock(scope: !152, file: !1, line: 77, column: 13)
!161 = !DILocation(line: 79, column: 30, scope: !160)
!162 = !DILocation(line: 36, column: 19, scope: !8)
!163 = !DILocation(line: 82, column: 19, scope: !148)
!164 = !DILocation(line: 39, column: 19, scope: !8)
!165 = !DILocation(line: 45, column: 20, scope: !8)
!166 = !DILocation(line: 83, column: 22, scope: !148)
!167 = !DILocation(line: 43, column: 20, scope: !8)
!168 = !DILocation(line: 86, column: 18, scope: !147)
!169 = !DILocation(line: 86, column: 17, scope: !148)
!170 = !DILocation(line: 88, column: 35, scope: !171)
!171 = distinct !DILexicalBlock(scope: !147, file: !1, line: 87, column: 13)
!172 = !DILocation(line: 90, column: 26, scope: !173)
!173 = distinct !DILexicalBlock(scope: !171, file: !1, line: 90, column: 21)
!174 = !{!175, !176, i64 24}
!175 = !{!"arc", !122, i64 0, !124, i64 8, !124, i64 16, !176, i64 24, !124, i64 32, !124, i64 40, !122, i64 48, !122, i64 56}
!176 = !{!"int", !120, i64 0}
!177 = !DILocation(line: 90, column: 32, scope: !173)
!178 = !DILocation(line: 91, column: 21, scope: !173)
!179 = !DILocation(line: 91, column: 32, scope: !173)
!180 = !DILocation(line: 95, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !171, file: !1, line: 95, column: 21)
!182 = !DILocation(line: 95, column: 21, scope: !171)
!183 = !DILocation(line: 96, column: 55, scope: !181)
!184 = !{!124, !124, i64 0}
!185 = !DILocation(line: 96, column: 21, scope: !181)
!186 = !DILocation(line: 100, column: 21, scope: !187)
!187 = distinct !DILexicalBlock(scope: !146, file: !1, line: 100, column: 21)
!188 = !DILocation(line: 50, column: 20, scope: !8)
!189 = !DILocation(line: 42, column: 20, scope: !8)
!190 = !DILocation(line: 41, column: 20, scope: !8)
!191 = !DILocation(line: 100, column: 21, scope: !146)
!192 = !DILocation(line: 107, column: 34, scope: !146)
!193 = !{!194, !124, i64 24}
!194 = !{!"node", !122, i64 0, !176, i64 8, !124, i64 16, !124, i64 24, !124, i64 32, !124, i64 40, !124, i64 48, !124, i64 56, !124, i64 64, !124, i64 72, !122, i64 80, !122, i64 88, !176, i64 96, !176, i64 100}
!195 = !DILocation(line: 44, column: 20, scope: !8)
!196 = !DILocation(line: 109, column: 31, scope: !146)
!197 = !{!194, !124, i64 48}
!198 = !DILocation(line: 47, column: 20, scope: !8)
!199 = !DILocation(line: 111, column: 40, scope: !200)
!200 = distinct !DILexicalBlock(scope: !146, file: !1, line: 111, column: 21)
!201 = !{!194, !176, i64 8}
!202 = !DILocation(line: 111, column: 32, scope: !200)
!203 = !DILocation(line: 111, column: 29, scope: !200)
!204 = !DILocation(line: 52, column: 19, scope: !8)
!205 = !DILocation(line: 111, column: 21, scope: !146)
!206 = !DILocation(line: 116, column: 21, scope: !207)
!207 = distinct !DILexicalBlock(scope: !146, file: !1, line: 116, column: 21)
!208 = !DILocation(line: 116, column: 37, scope: !207)
!209 = !DILocation(line: 117, column: 44, scope: !207)
!210 = !DILocation(line: 117, column: 42, scope: !207)
!211 = !DILocation(line: 37, column: 19, scope: !8)
!212 = !DILocation(line: 116, column: 21, scope: !146)
!213 = !DILocation(line: 121, column: 26, scope: !214)
!214 = distinct !DILexicalBlock(scope: !146, file: !1, line: 121, column: 21)
!215 = !{!175, !124, i64 8}
!216 = !DILocation(line: 121, column: 31, scope: !214)
!217 = !DILocation(line: 122, column: 21, scope: !214)
!218 = !DILocation(line: 126, column: 30, scope: !146)
!219 = !DILocation(line: 128, column: 37, scope: !146)
!220 = !{!119, !122, i64 512}
!221 = !DILocation(line: 126, column: 17, scope: !146)
!222 = !DILocation(line: 131, column: 22, scope: !146)
!223 = !DILocation(line: 131, column: 28, scope: !146)
!224 = !DILocation(line: 132, column: 22, scope: !146)
!225 = !DILocation(line: 132, column: 28, scope: !146)
!226 = !DILocation(line: 134, column: 24, scope: !227)
!227 = distinct !DILexicalBlock(scope: !146, file: !1, line: 134, column: 21)
!228 = !DILocation(line: 134, column: 35, scope: !227)
!229 = !DILocation(line: 134, column: 39, scope: !227)
!230 = !DILocation(line: 134, column: 21, scope: !146)
!231 = !DILocation(line: 136, column: 34, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !1, line: 135, column: 17)
!233 = !DILocation(line: 136, column: 31, scope: !232)
!234 = !DILocation(line: 152, column: 18, scope: !8)
!235 = !DILocation(line: 152, column: 15, scope: !8)
!236 = !DILocation(line: 153, column: 5, scope: !8)
!237 = !DILocation(line: 154, column: 5, scope: !8)
!238 = !DILocation(line: 156, column: 5, scope: !8)
