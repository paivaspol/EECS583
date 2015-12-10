; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/pstart.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize ssp uwtable
define i64 @primal_start_artificial(%struct.network* nocapture readonly %net) #0 {
  tail call void @llvm.dbg.value(metadata %struct.network* %net, i64 0, metadata !88, metadata !97), !dbg !98
  %1 = getelementptr inbounds %struct.network* %net, i64 0, i32 21, !dbg !99
  %2 = load %struct.node** %1, align 8, !dbg !99, !tbaa !100
  tail call void @llvm.dbg.value(metadata %struct.node* %2, i64 0, metadata !89, metadata !97), !dbg !107
  tail call void @llvm.dbg.value(metadata %struct.node* %2, i64 0, metadata !90, metadata !97), !dbg !108
  %3 = getelementptr inbounds %struct.node* %2, i64 1, !dbg !109
  tail call void @llvm.dbg.value(metadata %struct.node* %3, i64 0, metadata !89, metadata !97), !dbg !107
  %4 = getelementptr inbounds %struct.node* %2, i64 0, i32 6, !dbg !110
  store %struct.arc* null, %struct.arc** %4, align 8, !dbg !111, !tbaa !112
  %5 = getelementptr inbounds %struct.node* %2, i64 0, i32 3, !dbg !115
  store %struct.node* null, %struct.node** %5, align 8, !dbg !116, !tbaa !117
  %6 = getelementptr inbounds %struct.node* %2, i64 0, i32 2, !dbg !118
  store %struct.node* %3, %struct.node** %6, align 8, !dbg !119, !tbaa !120
  %7 = getelementptr inbounds %struct.node* %2, i64 0, i32 4, !dbg !121
  %8 = getelementptr inbounds %struct.network* %net, i64 0, i32 2, !dbg !122
  %9 = bitcast %struct.node** %7 to i8*, !dbg !122
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 16, i32 8, i1 false), !dbg !123
  %10 = load i64* %8, align 8, !dbg !122, !tbaa !124
  %11 = add nsw i64 %10, 1, !dbg !125
  %12 = getelementptr inbounds %struct.node* %2, i64 0, i32 11, !dbg !126
  store i64 %11, i64* %12, align 8, !dbg !127, !tbaa !128
  %13 = getelementptr inbounds %struct.node* %2, i64 0, i32 1, !dbg !129
  store i32 0, i32* %13, align 4, !dbg !130, !tbaa !131
  %14 = getelementptr inbounds %struct.node* %2, i64 0, i32 0, !dbg !132
  store i64 -100000000, i64* %14, align 8, !dbg !133, !tbaa !134
  %15 = getelementptr inbounds %struct.node* %2, i64 0, i32 10, !dbg !135
  store i64 0, i64* %15, align 8, !dbg !136, !tbaa !137
  %16 = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !138
  %17 = load %struct.arc** %16, align 8, !dbg !138, !tbaa !139
  %18 = getelementptr inbounds %struct.network* %net, i64 0, i32 23, !dbg !140
  %19 = load %struct.arc** %18, align 8, !dbg !140, !tbaa !142
  tail call void @llvm.dbg.value(metadata %struct.arc* %19, i64 0, metadata !91, metadata !97), !dbg !143
  %20 = icmp eq %struct.arc* %19, %17, !dbg !144
  br i1 %20, label %._crit_edge6, label %.lr.ph5, !dbg !146

.lr.ph5:                                          ; preds = %0, %25
  %arc.03 = phi %struct.arc* [ %26, %25 ], [ %19, %0 ]
  %21 = getelementptr inbounds %struct.arc* %arc.03, i64 0, i32 3, !dbg !147
  %22 = load i32* %21, align 4, !dbg !147, !tbaa !149
  %23 = icmp eq i32 %22, -1, !dbg !151
  br i1 %23, label %25, label %24, !dbg !152

; <label>:24                                      ; preds = %.lr.ph5
  store i32 1, i32* %21, align 4, !dbg !153, !tbaa !149
  br label %25, !dbg !154

; <label>:25                                      ; preds = %.lr.ph5, %24
  %26 = getelementptr inbounds %struct.arc* %arc.03, i64 1, !dbg !155
  tail call void @llvm.dbg.value(metadata %struct.arc* %26, i64 0, metadata !91, metadata !97), !dbg !143
  %27 = icmp eq %struct.arc* %26, %17, !dbg !144
  br i1 %27, label %._crit_edge6, label %.lr.ph5, !dbg !146

._crit_edge6:                                     ; preds = %25, %0
  tail call void @llvm.dbg.value(metadata %struct.arc* %32, i64 0, metadata !91, metadata !97), !dbg !143
  %28 = getelementptr inbounds %struct.network* %net, i64 0, i32 22, !dbg !156
  %29 = load %struct.node** %28, align 8, !dbg !156, !tbaa !158
  %30 = icmp eq %struct.node* %3, %29, !dbg !159
  br i1 %30, label %._crit_edge, label %.lr.ph, !dbg !161

.lr.ph:                                           ; preds = %._crit_edge6
  %31 = getelementptr inbounds %struct.network* %net, i64 0, i32 25, !dbg !162
  %32 = load %struct.arc** %31, align 8, !dbg !162, !tbaa !163
  br label %33, !dbg !161

; <label>:33                                      ; preds = %.lr.ph, %33
  %arc.12 = phi %struct.arc* [ %32, %.lr.ph ], [ %51, %33 ]
  %node.01 = phi %struct.node* [ %3, %.lr.ph ], [ %52, %33 ]
  %34 = phi %struct.node* [ %2, %.lr.ph ], [ %node.01, %33 ]
  %35 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 6, !dbg !164
  store %struct.arc* %arc.12, %struct.arc** %35, align 8, !dbg !166, !tbaa !112
  %36 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 3, !dbg !167
  store %struct.node* %2, %struct.node** %36, align 8, !dbg !168, !tbaa !117
  %37 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 2, !dbg !169
  store %struct.node* null, %struct.node** %37, align 8, !dbg !170, !tbaa !120
  %38 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 4, !dbg !171
  %39 = insertelement <2 x %struct.node*> undef, %struct.node* %node.01, i32 0, !dbg !172
  %40 = insertelement <2 x %struct.node*> %39, %struct.node* %node.01, i32 1, !dbg !172
  %41 = getelementptr <2 x %struct.node*> %40, <2 x i64> <i64 1, i64 -1>, !dbg !172
  %42 = bitcast %struct.node** %38 to <2 x %struct.node*>*, !dbg !173
  store <2 x %struct.node*> %41, <2 x %struct.node*>* %42, align 8, !dbg !173, !tbaa !174
  %43 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 11, !dbg !175
  store i64 1, i64* %43, align 8, !dbg !176, !tbaa !128
  %44 = getelementptr inbounds %struct.arc* %arc.12, i64 0, i32 0, !dbg !177
  store i64 100000000, i64* %44, align 8, !dbg !178, !tbaa !179
  %45 = getelementptr inbounds %struct.arc* %arc.12, i64 0, i32 3, !dbg !180
  store i32 0, i32* %45, align 4, !dbg !181, !tbaa !149
  %46 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 1, !dbg !182
  store i32 1, i32* %46, align 4, !dbg !183, !tbaa !131
  %47 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 0, !dbg !184
  store i64 0, i64* %47, align 8, !dbg !185, !tbaa !134
  %48 = getelementptr inbounds %struct.arc* %arc.12, i64 0, i32 1, !dbg !186
  store %struct.node* %node.01, %struct.node** %48, align 8, !dbg !187, !tbaa !188
  %49 = getelementptr inbounds %struct.arc* %arc.12, i64 0, i32 2, !dbg !189
  store %struct.node* %2, %struct.node** %49, align 8, !dbg !190, !tbaa !191
  %50 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 10, !dbg !192
  store i64 0, i64* %50, align 8, !dbg !193, !tbaa !137
  %51 = getelementptr inbounds %struct.arc* %arc.12, i64 1, !dbg !194
  tail call void @llvm.dbg.value(metadata %struct.arc* %51, i64 0, metadata !91, metadata !97), !dbg !143
  %52 = getelementptr inbounds %struct.node* %34, i64 2, !dbg !195
  tail call void @llvm.dbg.value(metadata %struct.node* %52, i64 0, metadata !89, metadata !97), !dbg !107
  %53 = icmp eq %struct.node* %52, %29, !dbg !159
  br i1 %53, label %._crit_edge, label %33, !dbg !161

._crit_edge:                                      ; preds = %33, %._crit_edge6
  %node.0.lcssa = phi %struct.node* [ %3, %._crit_edge6 ], [ %29, %33 ]
  tail call void @llvm.dbg.value(metadata %struct.node* %3, i64 0, metadata !90, metadata !97), !dbg !108
  %54 = getelementptr inbounds %struct.node* %node.0.lcssa, i64 -1, i32 4, !dbg !196
  store %struct.node* null, %struct.node** %54, align 8, !dbg !197, !tbaa !198
  %55 = getelementptr inbounds %struct.node* %2, i64 1, i32 5, !dbg !199
  store %struct.node* null, %struct.node** %55, align 8, !dbg !200, !tbaa !201
  ret i64 0, !dbg !202
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!93, !94, !95}
!llvm.ident = !{!96}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !44, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/pstart.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6, !7, !8, !42, !32}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !5, line: 69, baseType: !6)
!5 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!6 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_t", file: !5, line: 102, baseType: !10)
!10 = !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !5, line: 126, size: 512, align: 64, elements: !11)
!11 = !{!12, !13, !36, !37, !38, !39, !40, !41}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !10, file: !5, line: 128, baseType: !4, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !10, file: !5, line: 129, baseType: !14, size: 64, align: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !5, line: 100, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !5, line: 107, size: 832, align: 64, elements: !17)
!17 = !{!18, !19, !21, !22, !23, !24, !25, !28, !29, !30, !31, !33, !34, !35}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !16, file: !5, line: 109, baseType: !4, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !16, file: !5, line: 110, baseType: !20, size: 32, align: 32, offset: 64)
!20 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !16, file: !5, line: 111, baseType: !14, size: 64, align: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !16, file: !5, line: 112, baseType: !14, size: 64, align: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !16, file: !5, line: 113, baseType: !14, size: 64, align: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !16, file: !5, line: 114, baseType: !14, size: 64, align: 64, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !16, file: !5, line: 115, baseType: !26, size: 64, align: 64, offset: 384)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !5, line: 103, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !16, file: !5, line: 116, baseType: !26, size: 64, align: 64, offset: 448)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !16, file: !5, line: 116, baseType: !26, size: 64, align: 64, offset: 512)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !16, file: !5, line: 117, baseType: !26, size: 64, align: 64, offset: 576)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !16, file: !5, line: 118, baseType: !32, size: 64, align: 64, offset: 640)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !5, line: 68, baseType: !6)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !16, file: !5, line: 119, baseType: !6, size: 64, align: 64, offset: 704)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !16, file: !5, line: 120, baseType: !20, size: 32, align: 32, offset: 768)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !16, file: !5, line: 121, baseType: !20, size: 32, align: 32, offset: 800)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !10, file: !5, line: 129, baseType: !14, size: 64, align: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !10, file: !5, line: 130, baseType: !20, size: 32, align: 32, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !10, file: !5, line: 131, baseType: !26, size: 64, align: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !10, file: !5, line: 131, baseType: !26, size: 64, align: 64, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !10, file: !5, line: 132, baseType: !32, size: 64, align: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !10, file: !5, line: 133, baseType: !4, size: 64, align: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !5, line: 99, baseType: !16)
!44 = !{!45}
!45 = !DISubprogram(name: "primal_start_artificial", scope: !1, file: !1, line: 29, type: !46, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.network*)* @primal_start_artificial, variables: !87)
!46 = !DISubroutineType(types: !47)
!47 = !{!6, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "network_t", file: !5, line: 163, baseType: !50)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "network", file: !5, line: 138, size: 4992, align: 64, elements: !51)
!51 = !{!52, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "inputfile", scope: !50, file: !5, line: 140, baseType: !53, size: 1600, align: 8)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1600, align: 8, elements: !55)
!54 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!55 = !{!56}
!56 = !DISubrange(count: 200)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "clustfile", scope: !50, file: !5, line: 141, baseType: !53, size: 1600, align: 8, offset: 1600)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !50, file: !5, line: 142, baseType: !6, size: 64, align: 64, offset: 3200)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "n_trips", scope: !50, file: !5, line: 142, baseType: !6, size: 64, align: 64, offset: 3264)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "max_m", scope: !50, file: !5, line: 143, baseType: !6, size: 64, align: 64, offset: 3328)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !50, file: !5, line: 143, baseType: !6, size: 64, align: 64, offset: 3392)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "m_org", scope: !50, file: !5, line: 143, baseType: !6, size: 64, align: 64, offset: 3456)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "m_impl", scope: !50, file: !5, line: 143, baseType: !6, size: 64, align: 64, offset: 3520)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "max_residual_new_m", scope: !50, file: !5, line: 144, baseType: !6, size: 64, align: 64, offset: 3584)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "max_new_m", scope: !50, file: !5, line: 144, baseType: !6, size: 64, align: 64, offset: 3648)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "primal_unbounded", scope: !50, file: !5, line: 146, baseType: !6, size: 64, align: 64, offset: 3712)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "dual_unbounded", scope: !50, file: !5, line: 147, baseType: !6, size: 64, align: 64, offset: 3776)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "perturbed", scope: !50, file: !5, line: 148, baseType: !6, size: 64, align: 64, offset: 3840)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "feasible", scope: !50, file: !5, line: 149, baseType: !6, size: 64, align: 64, offset: 3904)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !50, file: !5, line: 150, baseType: !6, size: 64, align: 64, offset: 3968)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "opt_tol", scope: !50, file: !5, line: 151, baseType: !6, size: 64, align: 64, offset: 4032)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "feas_tol", scope: !50, file: !5, line: 152, baseType: !6, size: 64, align: 64, offset: 4096)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pert_val", scope: !50, file: !5, line: 153, baseType: !6, size: 64, align: 64, offset: 4160)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "bigM", scope: !50, file: !5, line: 154, baseType: !6, size: 64, align: 64, offset: 4224)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "optcost", scope: !50, file: !5, line: 155, baseType: !76, size: 64, align: 64, offset: 4288)
!76 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_impl", scope: !50, file: !5, line: 156, baseType: !4, size: 64, align: 64, offset: 4352)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !50, file: !5, line: 157, baseType: !14, size: 64, align: 64, offset: 4416)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "stop_nodes", scope: !50, file: !5, line: 157, baseType: !14, size: 64, align: 64, offset: 4480)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "arcs", scope: !50, file: !5, line: 158, baseType: !26, size: 64, align: 64, offset: 4544)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arcs", scope: !50, file: !5, line: 158, baseType: !26, size: 64, align: 64, offset: 4608)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_arcs", scope: !50, file: !5, line: 159, baseType: !26, size: 64, align: 64, offset: 4672)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "stop_dummy", scope: !50, file: !5, line: 159, baseType: !26, size: 64, align: 64, offset: 4736)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !50, file: !5, line: 160, baseType: !6, size: 64, align: 64, offset: 4800)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "bound_exchanges", scope: !50, file: !5, line: 161, baseType: !6, size: 64, align: 64, offset: 4864)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !50, file: !5, line: 162, baseType: !6, size: 64, align: 64, offset: 4928)
!87 = !{!88, !89, !90, !91, !92}
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "net", arg: 1, scope: !45, file: !1, line: 29, type: !48)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "node", scope: !45, file: !1, line: 35, type: !42)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "root", scope: !45, file: !1, line: 35, type: !42)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arc", scope: !45, file: !1, line: 36, type: !8)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !45, file: !1, line: 37, type: !7)
!93 = !{i32 2, !"Dwarf Version", i32 2}
!94 = !{i32 2, !"Debug Info Version", i32 700000003}
!95 = !{i32 1, !"PIC Level", i32 2}
!96 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!97 = !DIExpression()
!98 = !DILocation(line: 29, column: 42, scope: !45)
!99 = !DILocation(line: 40, column: 24, scope: !45)
!100 = !{!101, !106, i64 552}
!101 = !{!"network", !102, i64 0, !102, i64 200, !104, i64 400, !104, i64 408, !104, i64 416, !104, i64 424, !104, i64 432, !104, i64 440, !104, i64 448, !104, i64 456, !104, i64 464, !104, i64 472, !104, i64 480, !104, i64 488, !104, i64 496, !104, i64 504, !104, i64 512, !104, i64 520, !104, i64 528, !105, i64 536, !104, i64 544, !106, i64 552, !106, i64 560, !106, i64 568, !106, i64 576, !106, i64 584, !106, i64 592, !104, i64 600, !104, i64 608, !104, i64 616}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !{!"long", !102, i64 0}
!105 = !{!"double", !102, i64 0}
!106 = !{!"any pointer", !102, i64 0}
!107 = !DILocation(line: 35, column: 13, scope: !45)
!108 = !DILocation(line: 35, column: 20, scope: !45)
!109 = !DILocation(line: 40, column: 35, scope: !45)
!110 = !DILocation(line: 41, column: 11, scope: !45)
!111 = !DILocation(line: 41, column: 21, scope: !45)
!112 = !{!113, !106, i64 48}
!113 = !{!"node", !104, i64 0, !114, i64 8, !106, i64 16, !106, i64 24, !106, i64 32, !106, i64 40, !106, i64 48, !106, i64 56, !106, i64 64, !106, i64 72, !104, i64 80, !104, i64 88, !114, i64 96, !114, i64 100}
!114 = !{!"int", !102, i64 0}
!115 = !DILocation(line: 42, column: 11, scope: !45)
!116 = !DILocation(line: 42, column: 16, scope: !45)
!117 = !{!113, !106, i64 24}
!118 = !DILocation(line: 43, column: 11, scope: !45)
!119 = !DILocation(line: 43, column: 17, scope: !45)
!120 = !{!113, !106, i64 16}
!121 = !DILocation(line: 44, column: 11, scope: !45)
!122 = !DILocation(line: 46, column: 25, scope: !45)
!123 = !DILocation(line: 45, column: 24, scope: !45)
!124 = !{!101, !104, i64 400}
!125 = !DILocation(line: 46, column: 28, scope: !45)
!126 = !DILocation(line: 46, column: 11, scope: !45)
!127 = !DILocation(line: 46, column: 17, scope: !45)
!128 = !{!113, !104, i64 88}
!129 = !DILocation(line: 47, column: 11, scope: !45)
!130 = !DILocation(line: 47, column: 23, scope: !45)
!131 = !{!113, !114, i64 8}
!132 = !DILocation(line: 48, column: 11, scope: !45)
!133 = !DILocation(line: 48, column: 21, scope: !45)
!134 = !{!113, !104, i64 0}
!135 = !DILocation(line: 49, column: 11, scope: !45)
!136 = !DILocation(line: 49, column: 16, scope: !45)
!137 = !{!113, !104, i64 80}
!138 = !DILocation(line: 51, column: 25, scope: !45)
!139 = !{!101, !106, i64 576}
!140 = !DILocation(line: 52, column: 21, scope: !141)
!141 = distinct !DILexicalBlock(scope: !45, file: !1, line: 52, column: 5)
!142 = !{!101, !106, i64 568}
!143 = !DILocation(line: 36, column: 12, scope: !45)
!144 = !DILocation(line: 52, column: 31, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !1, line: 52, column: 5)
!146 = !DILocation(line: 52, column: 5, scope: !141)
!147 = !DILocation(line: 53, column: 18, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !1, line: 53, column: 13)
!149 = !{!150, !114, i64 24}
!150 = !{!"arc", !104, i64 0, !106, i64 8, !106, i64 16, !114, i64 24, !106, i64 32, !106, i64 40, !104, i64 48, !104, i64 56}
!151 = !DILocation(line: 53, column: 24, scope: !148)
!152 = !DILocation(line: 53, column: 13, scope: !145)
!153 = !DILocation(line: 54, column: 24, scope: !148)
!154 = !DILocation(line: 54, column: 13, scope: !148)
!155 = !DILocation(line: 52, column: 52, scope: !145)
!156 = !DILocation(line: 57, column: 30, scope: !157)
!157 = distinct !DILexicalBlock(scope: !45, file: !1, line: 57, column: 5)
!158 = !{!101, !106, i64 560}
!159 = !DILocation(line: 57, column: 47, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !1, line: 57, column: 5)
!161 = !DILocation(line: 57, column: 5, scope: !157)
!162 = !DILocation(line: 56, column: 16, scope: !45)
!163 = !{!101, !106, i64 584}
!164 = !DILocation(line: 59, column: 15, scope: !165)
!165 = distinct !DILexicalBlock(scope: !160, file: !1, line: 58, column: 5)
!166 = !DILocation(line: 59, column: 25, scope: !165)
!167 = !DILocation(line: 60, column: 15, scope: !165)
!168 = !DILocation(line: 60, column: 20, scope: !165)
!169 = !DILocation(line: 61, column: 15, scope: !165)
!170 = !DILocation(line: 61, column: 21, scope: !165)
!171 = !DILocation(line: 62, column: 15, scope: !165)
!172 = !DILocation(line: 62, column: 30, scope: !165)
!173 = !DILocation(line: 62, column: 23, scope: !165)
!174 = !{!106, !106, i64 0}
!175 = !DILocation(line: 64, column: 15, scope: !165)
!176 = !DILocation(line: 64, column: 21, scope: !165)
!177 = !DILocation(line: 66, column: 14, scope: !165)
!178 = !DILocation(line: 66, column: 19, scope: !165)
!179 = !{!150, !104, i64 0}
!180 = !DILocation(line: 67, column: 14, scope: !165)
!181 = !DILocation(line: 67, column: 20, scope: !165)
!182 = !DILocation(line: 69, column: 15, scope: !165)
!183 = !DILocation(line: 69, column: 27, scope: !165)
!184 = !DILocation(line: 70, column: 15, scope: !165)
!185 = !DILocation(line: 70, column: 25, scope: !165)
!186 = !DILocation(line: 71, column: 14, scope: !165)
!187 = !DILocation(line: 71, column: 19, scope: !165)
!188 = !{!150, !106, i64 8}
!189 = !DILocation(line: 72, column: 14, scope: !165)
!190 = !DILocation(line: 72, column: 19, scope: !165)
!191 = !{!150, !106, i64 16}
!192 = !DILocation(line: 73, column: 15, scope: !165)
!193 = !DILocation(line: 73, column: 20, scope: !165)
!194 = !DILocation(line: 57, column: 69, scope: !160)
!195 = !DILocation(line: 57, column: 77, scope: !160)
!196 = !DILocation(line: 77, column: 11, scope: !45)
!197 = !DILocation(line: 77, column: 19, scope: !45)
!198 = !{!113, !106, i64 32}
!199 = !DILocation(line: 78, column: 11, scope: !45)
!200 = !DILocation(line: 78, column: 24, scope: !45)
!201 = !{!113, !106, i64 40}
!202 = !DILocation(line: 80, column: 5, scope: !45)
