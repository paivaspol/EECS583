; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/treeup.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize ssp uwtable
define void @update_tree(i64 %cycle_ori, i64 %new_orientation, i64 %delta, i64 %new_flow, %struct.node* %iplus, %struct.node* %jplus, %struct.node* %iminus, %struct.node* %jminus, %struct.node* readnone %w, %struct.arc* %bea, i64 %sigma, i64 %feas_tol) #0 {
  tail call void @llvm.dbg.value(metadata i64 %cycle_ori, i64 0, metadata !47, metadata !73), !dbg !74
  tail call void @llvm.dbg.value(metadata i64 %new_orientation, i64 0, metadata !48, metadata !73), !dbg !75
  tail call void @llvm.dbg.value(metadata i64 %delta, i64 0, metadata !49, metadata !73), !dbg !76
  tail call void @llvm.dbg.value(metadata i64 %new_flow, i64 0, metadata !50, metadata !73), !dbg !77
  tail call void @llvm.dbg.value(metadata %struct.node* %iplus, i64 0, metadata !51, metadata !73), !dbg !78
  tail call void @llvm.dbg.value(metadata %struct.node* %jplus, i64 0, metadata !52, metadata !73), !dbg !79
  tail call void @llvm.dbg.value(metadata %struct.node* %iminus, i64 0, metadata !53, metadata !73), !dbg !80
  tail call void @llvm.dbg.value(metadata %struct.node* %jminus, i64 0, metadata !54, metadata !73), !dbg !81
  tail call void @llvm.dbg.value(metadata %struct.node* %w, i64 0, metadata !55, metadata !73), !dbg !82
  tail call void @llvm.dbg.value(metadata %struct.arc* %bea, i64 0, metadata !56, metadata !73), !dbg !83
  tail call void @llvm.dbg.value(metadata i64 %sigma, i64 0, metadata !57, metadata !73), !dbg !84
  tail call void @llvm.dbg.value(metadata i64 %feas_tol, i64 0, metadata !58, metadata !73), !dbg !85
  %1 = getelementptr inbounds %struct.arc* %bea, i64 0, i32 1, !dbg !86
  %2 = load %struct.node** %1, align 8, !dbg !86, !tbaa !88
  %3 = icmp eq %struct.node* %2, %jplus, !dbg !95
  %4 = icmp slt i64 %sigma, 0, !dbg !96
  %or.cond = and i1 %4, %3, !dbg !97
  br i1 %or.cond, label %8, label %5, !dbg !97

; <label>:5                                       ; preds = %0
  %6 = icmp eq %struct.node* %2, %iplus, !dbg !98
  %7 = icmp sgt i64 %sigma, 0, !dbg !99
  %or.cond3 = and i1 %7, %6, !dbg !100
  br i1 %or.cond3, label %8, label %12, !dbg !100

; <label>:8                                       ; preds = %5, %0
  %9 = icmp sgt i64 %sigma, -1, !dbg !101
  %10 = sub nsw i64 0, %sigma, !dbg !101
  %11 = select i1 %9, i64 %sigma, i64 %10, !dbg !101
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !57, metadata !73), !dbg !84
  br label %17, !dbg !102

; <label>:12                                      ; preds = %5
  %13 = icmp sgt i64 %sigma, -1, !dbg !103
  %14 = sub nsw i64 0, %sigma, !dbg !103
  %15 = select i1 %13, i64 %sigma, i64 %14, !dbg !103
  %16 = sub nsw i64 0, %15, !dbg !104
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !57, metadata !73), !dbg !84
  br label %17

; <label>:17                                      ; preds = %12, %8
  %.05 = phi i64 [ %11, %8 ], [ %16, %12 ]
  tail call void @llvm.dbg.value(metadata %struct.node* %iminus, i64 0, metadata !61, metadata !73), !dbg !105
  %18 = getelementptr inbounds %struct.node* %iminus, i64 0, i32 0, !dbg !106
  %19 = load i64* %18, align 8, !dbg !107, !tbaa !108
  %20 = add nsw i64 %19, %.05, !dbg !107
  store i64 %20, i64* %18, align 8, !dbg !107, !tbaa !108
  br label %21, !dbg !110

; <label>:21                                      ; preds = %.loopexit12, %17
  %father.0 = phi %struct.node* [ %iminus, %17 ], [ %temp.0, %.loopexit12 ]
  %22 = getelementptr inbounds %struct.node* %father.0, i64 0, i32 2, !dbg !111
  %23 = load %struct.node** %22, align 8, !dbg !111, !tbaa !112
  tail call void @llvm.dbg.value(metadata %struct.node* %23, i64 0, metadata !62, metadata !73), !dbg !113
  %24 = icmp eq %struct.node* %23, null, !dbg !114
  br i1 %24, label %.preheader11, label %.loopexit12, !dbg !116

.preheader11:                                     ; preds = %21
  %25 = icmp eq %struct.node* %father.0, %iminus, !dbg !117
  br i1 %25, label %.preheader11._crit_edge, label %.lr.ph32, !dbg !119

.loopexit12:                                      ; preds = %.lr.ph32, %21
  %temp.0 = phi %struct.node* [ %23, %21 ], [ %30, %.lr.ph32 ]
  %26 = getelementptr inbounds %struct.node* %temp.0, i64 0, i32 0, !dbg !120
  %27 = load i64* %26, align 8, !dbg !122, !tbaa !108
  %28 = add nsw i64 %27, %.05, !dbg !122
  store i64 %28, i64* %26, align 8, !dbg !122, !tbaa !108
  tail call void @llvm.dbg.value(metadata %struct.node* %temp.0, i64 0, metadata !61, metadata !73), !dbg !105
  br label %21, !dbg !123

.lr.ph32:                                         ; preds = %.preheader11, %32
  %father.131 = phi %struct.node* [ %34, %32 ], [ %father.0, %.preheader11 ]
  %29 = getelementptr inbounds %struct.node* %father.131, i64 0, i32 4, !dbg !124
  %30 = load %struct.node** %29, align 8, !dbg !124, !tbaa !125
  tail call void @llvm.dbg.value(metadata %struct.node* %30, i64 0, metadata !62, metadata !73), !dbg !113
  %31 = icmp eq %struct.node* %30, null, !dbg !126
  br i1 %31, label %32, label %.loopexit12, !dbg !128

; <label>:32                                      ; preds = %.lr.ph32
  %33 = getelementptr inbounds %struct.node* %father.131, i64 0, i32 3, !dbg !129
  %34 = load %struct.node** %33, align 8, !dbg !129, !tbaa !130
  tail call void @llvm.dbg.value(metadata %struct.node* %34, i64 0, metadata !61, metadata !73), !dbg !105
  %35 = icmp eq %struct.node* %34, %iminus, !dbg !117
  br i1 %35, label %.preheader11._crit_edge, label %.lr.ph32, !dbg !119

.preheader11._crit_edge:                          ; preds = %.preheader11, %32
  tail call void @llvm.dbg.value(metadata %struct.node* %iplus, i64 0, metadata !62, metadata !73), !dbg !113
  %36 = getelementptr inbounds %struct.node* %iminus, i64 0, i32 11, !dbg !131
  %37 = load i64* %36, align 8, !dbg !131, !tbaa !132
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !66, metadata !73), !dbg !133
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !67, metadata !73), !dbg !134
  tail call void @llvm.dbg.value(metadata %struct.node* %jplus, i64 0, metadata !63, metadata !73), !dbg !135
  tail call void @llvm.dbg.value(metadata %struct.arc* %bea, i64 0, metadata !60, metadata !73), !dbg !136
  %38 = icmp eq %struct.node* %iplus, %jminus, !dbg !137
  br i1 %38, label %._crit_edge, label %.lr.ph30, !dbg !138

.lr.ph30:                                         ; preds = %.preheader11._crit_edge
  %39 = sub i64 0, %delta, !dbg !139
  br label %40, !dbg !138

; <label>:40                                      ; preds = %.lr.ph30, %64
  %iplus.pn = phi %struct.node* [ %iplus, %.lr.ph30 ], [ %father.229, %64 ]
  %new_depth.027 = phi i64 [ %37, %.lr.ph30 ], [ %77, %64 ]
  %.026 = phi i64 [ %new_orientation, %.lr.ph30 ], [ %68, %64 ]
  %.0425 = phi i64 [ %new_flow, %.lr.ph30 ], [ %flow_temp.0, %64 ]
  %new_pred.024 = phi %struct.node* [ %jplus, %.lr.ph30 ], [ %iplus.pn, %64 ]
  %new_basic_arc.022 = phi %struct.arc* [ %bea, %.lr.ph30 ], [ %73, %64 ]
  %father.229.in = getelementptr inbounds %struct.node* %iplus.pn, i64 0, i32 3, !dbg !141
  %father.229 = load %struct.node** %father.229.in, align 8, !dbg !141
  %41 = getelementptr inbounds %struct.node* %iplus.pn, i64 0, i32 4, !dbg !142
  %42 = load %struct.node** %41, align 8, !dbg !142, !tbaa !125
  %43 = icmp eq %struct.node* %42, null, !dbg !144
  %44 = ptrtoint %struct.node* %42 to i64
  %.pre = getelementptr inbounds %struct.node* %iplus.pn, i64 0, i32 5, !dbg !145
  br i1 %43, label %._crit_edge35, label %45, !dbg !147

; <label>:45                                      ; preds = %40
  %46 = bitcast %struct.node** %.pre to i64*, !dbg !148
  %47 = load i64* %46, align 8, !dbg !148, !tbaa !149
  %48 = getelementptr inbounds %struct.node* %42, i64 0, i32 5, !dbg !150
  %49 = bitcast %struct.node** %48 to i64*, !dbg !151
  store i64 %47, i64* %49, align 8, !dbg !151, !tbaa !149
  br label %._crit_edge35, !dbg !152

._crit_edge35:                                    ; preds = %40, %45
  %50 = load %struct.node** %.pre, align 8, !dbg !145, !tbaa !149
  %51 = icmp eq %struct.node* %50, null, !dbg !153
  br i1 %51, label %55, label %52, !dbg !154

; <label>:52                                      ; preds = %._crit_edge35
  %53 = getelementptr inbounds %struct.node* %50, i64 0, i32 4, !dbg !155
  %54 = bitcast %struct.node** %53 to i64*, !dbg !156
  store i64 %44, i64* %54, align 8, !dbg !156, !tbaa !125
  br label %58, !dbg !157

; <label>:55                                      ; preds = %._crit_edge35
  %56 = getelementptr inbounds %struct.node* %father.229, i64 0, i32 2, !dbg !158
  %57 = bitcast %struct.node** %56 to i64*, !dbg !159
  store i64 %44, i64* %57, align 8, !dbg !159, !tbaa !112
  br label %58

; <label>:58                                      ; preds = %55, %52
  store %struct.node* %new_pred.024, %struct.node** %father.229.in, align 8, !dbg !160, !tbaa !130
  %59 = getelementptr inbounds %struct.node* %new_pred.024, i64 0, i32 2, !dbg !161
  %60 = load %struct.node** %59, align 8, !dbg !161, !tbaa !112
  store %struct.node* %60, %struct.node** %41, align 8, !dbg !162, !tbaa !125
  %61 = icmp eq %struct.node* %60, null, !dbg !163
  br i1 %61, label %64, label %62, !dbg !165

; <label>:62                                      ; preds = %58
  %63 = getelementptr inbounds %struct.node* %60, i64 0, i32 5, !dbg !166
  store %struct.node* %iplus.pn, %struct.node** %63, align 8, !dbg !167, !tbaa !149
  br label %64, !dbg !168

; <label>:64                                      ; preds = %58, %62
  store %struct.node* %iplus.pn, %struct.node** %59, align 8, !dbg !169, !tbaa !112
  store %struct.node* null, %struct.node** %.pre, align 8, !dbg !170, !tbaa !149
  %65 = getelementptr inbounds %struct.node* %iplus.pn, i64 0, i32 1, !dbg !171
  %66 = load i32* %65, align 4, !dbg !171, !tbaa !172
  %67 = icmp eq i32 %66, 0, !dbg !173
  %68 = zext i1 %67 to i64, !dbg !173
  tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !64, metadata !73), !dbg !174
  %69 = icmp eq i64 %68, %cycle_ori, !dbg !175
  %70 = getelementptr inbounds %struct.node* %iplus.pn, i64 0, i32 10, !dbg !177
  %71 = load i64* %70, align 8, !dbg !177, !tbaa !178
  %flow_temp.0.p = select i1 %69, i64 %delta, i64 %39, !dbg !139
  %flow_temp.0 = add i64 %flow_temp.0.p, %71, !dbg !139
  %72 = getelementptr inbounds %struct.node* %iplus.pn, i64 0, i32 6, !dbg !179
  %73 = load %struct.arc** %72, align 8, !dbg !179, !tbaa !180
  tail call void @llvm.dbg.value(metadata %struct.arc* %73, i64 0, metadata !59, metadata !73), !dbg !181
  %74 = getelementptr inbounds %struct.node* %iplus.pn, i64 0, i32 11, !dbg !182
  %75 = load i64* %74, align 8, !dbg !182, !tbaa !132
  tail call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !65, metadata !73), !dbg !183
  %76 = trunc i64 %.026 to i32, !dbg !184
  store i32 %76, i32* %65, align 4, !dbg !185, !tbaa !172
  store i64 %.0425, i64* %70, align 8, !dbg !186, !tbaa !178
  store %struct.arc* %new_basic_arc.022, %struct.arc** %72, align 8, !dbg !187, !tbaa !180
  store i64 %new_depth.027, i64* %74, align 8, !dbg !188, !tbaa !132
  tail call void @llvm.dbg.value(metadata %struct.node* %father.229, i64 0, metadata !63, metadata !73), !dbg !135
  tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !48, metadata !73), !dbg !75
  tail call void @llvm.dbg.value(metadata i64 %flow_temp.0, i64 0, metadata !50, metadata !73), !dbg !77
  tail call void @llvm.dbg.value(metadata %struct.arc* %73, i64 0, metadata !60, metadata !73), !dbg !136
  %77 = sub nsw i64 %37, %75, !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %77, i64 0, metadata !67, metadata !73), !dbg !134
  %78 = icmp eq %struct.node* %father.229, %jminus, !dbg !137
  br i1 %78, label %._crit_edge, label %40, !dbg !138

._crit_edge:                                      ; preds = %64, %.preheader11._crit_edge
  %79 = icmp sgt i64 %delta, %feas_tol, !dbg !190
  tail call void @llvm.dbg.value(metadata %struct.node* %jminus, i64 0, metadata !62, metadata !73), !dbg !113
  %80 = icmp eq %struct.node* %jminus, %w, !dbg !192
  br i1 %79, label %.preheader7, label %.preheader10, !dbg !196

.preheader10:                                     ; preds = %._crit_edge
  br i1 %80, label %.preheader8, label %.lr.ph19, !dbg !197

.preheader7:                                      ; preds = %._crit_edge
  br i1 %80, label %.preheader, label %.lr.ph15, !dbg !200

.lr.ph15:                                         ; preds = %.preheader7
  %81 = sub i64 0, %delta, !dbg !201
  br label %84, !dbg !200

.preheader:                                       ; preds = %84, %.preheader7
  %82 = icmp eq %struct.node* %jplus, %w, !dbg !203
  br i1 %82, label %.loopexit, label %.lr.ph, !dbg !206

.lr.ph:                                           ; preds = %.preheader
  %83 = sub i64 0, %delta, !dbg !207
  br label %97, !dbg !206

; <label>:84                                      ; preds = %.lr.ph15, %84
  %temp.214 = phi %struct.node* [ %jminus, %.lr.ph15 ], [ %95, %84 ]
  %85 = getelementptr inbounds %struct.node* %temp.214, i64 0, i32 11, !dbg !209
  %86 = load i64* %85, align 8, !dbg !210, !tbaa !132
  %87 = sub nsw i64 %86, %37, !dbg !210
  store i64 %87, i64* %85, align 8, !dbg !210, !tbaa !132
  %88 = getelementptr inbounds %struct.node* %temp.214, i64 0, i32 1, !dbg !211
  %89 = load i32* %88, align 4, !dbg !211, !tbaa !172
  %90 = sext i32 %89 to i64, !dbg !213
  %91 = icmp eq i64 %90, %cycle_ori, !dbg !214
  %92 = getelementptr inbounds %struct.node* %temp.214, i64 0, i32 10, !dbg !215
  %93 = load i64* %92, align 8, !dbg !216, !tbaa !178
  %storemerge6.p = select i1 %91, i64 %81, i64 %delta, !dbg !201
  %storemerge6 = add i64 %storemerge6.p, %93, !dbg !201
  store i64 %storemerge6, i64* %92, align 8, !dbg !216, !tbaa !178
  %94 = getelementptr inbounds %struct.node* %temp.214, i64 0, i32 3, !dbg !217
  %95 = load %struct.node** %94, align 8, !dbg !217, !tbaa !130
  tail call void @llvm.dbg.value(metadata %struct.node* %95, i64 0, metadata !62, metadata !73), !dbg !113
  %96 = icmp eq %struct.node* %95, %w, !dbg !192
  br i1 %96, label %.preheader, label %84, !dbg !200

; <label>:97                                      ; preds = %.lr.ph, %97
  %temp.313 = phi %struct.node* [ %jplus, %.lr.ph ], [ %110, %97 ]
  %98 = getelementptr inbounds %struct.node* %temp.313, i64 0, i32 1, !dbg !218
  %99 = load i32* %98, align 4, !dbg !218, !tbaa !172
  %100 = sext i32 %99 to i64, !dbg !220
  %101 = icmp eq i64 %100, %cycle_ori, !dbg !221
  %102 = getelementptr inbounds %struct.node* %temp.313, i64 0, i32 10, !dbg !222
  %103 = bitcast i64* %102 to <2 x i64>*, !dbg !223
  %104 = load <2 x i64>* %103, align 8, !dbg !223, !tbaa !224
  %storemerge.p = select i1 %101, i64 %delta, i64 %83, !dbg !207
  %105 = insertelement <2 x i64> undef, i64 %storemerge.p, i32 0, !dbg !207
  %106 = insertelement <2 x i64> %105, i64 %37, i32 1, !dbg !207
  %107 = add <2 x i64> %106, %104, !dbg !207
  %108 = bitcast i64* %102 to <2 x i64>*, !dbg !223
  store <2 x i64> %107, <2 x i64>* %108, align 8, !dbg !223, !tbaa !224
  %109 = getelementptr inbounds %struct.node* %temp.313, i64 0, i32 3, !dbg !225
  %110 = load %struct.node** %109, align 8, !dbg !225, !tbaa !130
  tail call void @llvm.dbg.value(metadata %struct.node* %110, i64 0, metadata !62, metadata !73), !dbg !113
  %111 = icmp eq %struct.node* %110, %w, !dbg !203
  br i1 %111, label %.loopexit, label %97, !dbg !206

.preheader8:                                      ; preds = %.lr.ph19, %.preheader10
  %112 = icmp eq %struct.node* %jplus, %w, !dbg !226
  br i1 %112, label %.loopexit, label %.lr.ph17, !dbg !229

.lr.ph19:                                         ; preds = %.preheader10, %.lr.ph19
  %temp.418 = phi %struct.node* [ %117, %.lr.ph19 ], [ %jminus, %.preheader10 ]
  %113 = getelementptr inbounds %struct.node* %temp.418, i64 0, i32 11, !dbg !230
  %114 = load i64* %113, align 8, !dbg !232, !tbaa !132
  %115 = sub nsw i64 %114, %37, !dbg !232
  store i64 %115, i64* %113, align 8, !dbg !232, !tbaa !132
  %116 = getelementptr inbounds %struct.node* %temp.418, i64 0, i32 3, !dbg !233
  %117 = load %struct.node** %116, align 8, !dbg !233, !tbaa !130
  tail call void @llvm.dbg.value(metadata %struct.node* %117, i64 0, metadata !62, metadata !73), !dbg !113
  %118 = icmp eq %struct.node* %117, %w, !dbg !234
  br i1 %118, label %.preheader8, label %.lr.ph19, !dbg !197

.lr.ph17:                                         ; preds = %.preheader8, %.lr.ph17
  %temp.516 = phi %struct.node* [ %123, %.lr.ph17 ], [ %jplus, %.preheader8 ]
  %119 = getelementptr inbounds %struct.node* %temp.516, i64 0, i32 11, !dbg !235
  %120 = load i64* %119, align 8, !dbg !236, !tbaa !132
  %121 = add nsw i64 %120, %37, !dbg !236
  store i64 %121, i64* %119, align 8, !dbg !236, !tbaa !132
  %122 = getelementptr inbounds %struct.node* %temp.516, i64 0, i32 3, !dbg !237
  %123 = load %struct.node** %122, align 8, !dbg !237, !tbaa !130
  tail call void @llvm.dbg.value(metadata %struct.node* %123, i64 0, metadata !62, metadata !73), !dbg !113
  %124 = icmp eq %struct.node* %123, %w, !dbg !226
  br i1 %124, label %.loopexit, label %.lr.ph17, !dbg !229

.loopexit:                                        ; preds = %.lr.ph17, %97, %.preheader8, %.preheader
  ret void, !dbg !238
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!69, !70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/treeup.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "update_tree", scope: !1, file: !1, line: 29, type: !5, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: void (i64, i64, i64, i64, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, i64, i64)* @update_tree, variables: !46)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !7, !8, !8, !10, !10, !10, !10, !10, !44, !15, !8}
!7 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !9, line: 68, baseType: !7)
!9 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !9, line: 99, baseType: !12)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !9, line: 107, size: 832, align: 64, elements: !13)
!13 = !{!14, !16, !18, !21, !22, !23, !24, !37, !38, !39, !40, !41, !42, !43}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !12, file: !9, line: 109, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !9, line: 69, baseType: !7)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !12, file: !9, line: 110, baseType: !17, size: 32, align: 32, offset: 64)
!17 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !12, file: !9, line: 111, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !9, line: 100, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !12, file: !9, line: 112, baseType: !19, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !12, file: !9, line: 113, baseType: !19, size: 64, align: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !12, file: !9, line: 114, baseType: !19, size: 64, align: 64, offset: 320)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !12, file: !9, line: 115, baseType: !25, size: 64, align: 64, offset: 384)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !9, line: 103, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !9, line: 126, size: 512, align: 64, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !27, file: !9, line: 128, baseType: !15, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !27, file: !9, line: 129, baseType: !19, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !27, file: !9, line: 129, baseType: !19, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !27, file: !9, line: 130, baseType: !17, size: 32, align: 32, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !27, file: !9, line: 131, baseType: !25, size: 64, align: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !27, file: !9, line: 131, baseType: !25, size: 64, align: 64, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !27, file: !9, line: 132, baseType: !8, size: 64, align: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !27, file: !9, line: 133, baseType: !15, size: 64, align: 64, offset: 448)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !12, file: !9, line: 116, baseType: !25, size: 64, align: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !12, file: !9, line: 116, baseType: !25, size: 64, align: 64, offset: 512)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !12, file: !9, line: 117, baseType: !25, size: 64, align: 64, offset: 576)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !12, file: !9, line: 118, baseType: !8, size: 64, align: 64, offset: 640)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !12, file: !9, line: 119, baseType: !7, size: 64, align: 64, offset: 704)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !12, file: !9, line: 120, baseType: !17, size: 32, align: 32, offset: 768)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !12, file: !9, line: 121, baseType: !17, size: 32, align: 32, offset: 800)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_t", file: !9, line: 102, baseType: !27)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cycle_ori", arg: 1, scope: !4, file: !1, line: 30, type: !7)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new_orientation", arg: 2, scope: !4, file: !1, line: 31, type: !7)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "delta", arg: 3, scope: !4, file: !1, line: 32, type: !8)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new_flow", arg: 4, scope: !4, file: !1, line: 33, type: !8)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iplus", arg: 5, scope: !4, file: !1, line: 34, type: !10)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jplus", arg: 6, scope: !4, file: !1, line: 35, type: !10)
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iminus", arg: 7, scope: !4, file: !1, line: 36, type: !10)
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jminus", arg: 8, scope: !4, file: !1, line: 37, type: !10)
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 9, scope: !4, file: !1, line: 38, type: !10)
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bea", arg: 10, scope: !4, file: !1, line: 39, type: !44)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sigma", arg: 11, scope: !4, file: !1, line: 40, type: !15)
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "feas_tol", arg: 12, scope: !4, file: !1, line: 41, type: !8)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "basic_arc_temp", scope: !4, file: !1, line: 58, type: !44)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_basic_arc", scope: !4, file: !1, line: 59, type: !44)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "father", scope: !4, file: !1, line: 60, type: !10)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !4, file: !1, line: 61, type: !10)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_pred", scope: !4, file: !1, line: 62, type: !10)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "orientation_temp", scope: !4, file: !1, line: 63, type: !7)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "depth_temp", scope: !4, file: !1, line: 64, type: !7)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "depth_iminus", scope: !4, file: !1, line: 65, type: !7)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_depth", scope: !4, file: !1, line: 66, type: !7)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flow_temp", scope: !4, file: !1, line: 67, type: !8)
!69 = !{i32 2, !"Dwarf Version", i32 2}
!70 = !{i32 2, !"Debug Info Version", i32 700000003}
!71 = !{i32 1, !"PIC Level", i32 2}
!72 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!73 = !DIExpression()
!74 = !DILocation(line: 30, column: 23, scope: !4)
!75 = !DILocation(line: 31, column: 23, scope: !4)
!76 = !DILocation(line: 32, column: 25, scope: !4)
!77 = !DILocation(line: 33, column: 25, scope: !4)
!78 = !DILocation(line: 34, column: 26, scope: !4)
!79 = !DILocation(line: 35, column: 26, scope: !4)
!80 = !DILocation(line: 36, column: 26, scope: !4)
!81 = !DILocation(line: 37, column: 26, scope: !4)
!82 = !DILocation(line: 38, column: 26, scope: !4)
!83 = !DILocation(line: 39, column: 25, scope: !4)
!84 = !DILocation(line: 40, column: 25, scope: !4)
!85 = !DILocation(line: 41, column: 25, scope: !4)
!86 = !DILocation(line: 71, column: 15, scope: !87)
!87 = distinct !DILexicalBlock(scope: !4, file: !1, line: 71, column: 9)
!88 = !{!89, !93, i64 8}
!89 = !{!"arc", !90, i64 0, !93, i64 8, !93, i64 16, !94, i64 24, !93, i64 32, !93, i64 40, !90, i64 48, !90, i64 56}
!90 = !{!"long", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = !{!"any pointer", !91, i64 0}
!94 = !{!"int", !91, i64 0}
!95 = !DILocation(line: 71, column: 20, scope: !87)
!96 = !DILocation(line: 71, column: 38, scope: !87)
!97 = !DILocation(line: 71, column: 29, scope: !87)
!98 = !DILocation(line: 72, column: 20, scope: !87)
!99 = !DILocation(line: 72, column: 38, scope: !87)
!100 = !DILocation(line: 72, column: 29, scope: !87)
!101 = !DILocation(line: 73, column: 17, scope: !87)
!102 = !DILocation(line: 73, column: 9, scope: !87)
!103 = !DILocation(line: 75, column: 19, scope: !87)
!104 = !DILocation(line: 75, column: 17, scope: !87)
!105 = !DILocation(line: 60, column: 15, scope: !4)
!106 = !DILocation(line: 78, column: 13, scope: !4)
!107 = !DILocation(line: 78, column: 23, scope: !4)
!108 = !{!109, !90, i64 0}
!109 = !{!"node", !90, i64 0, !94, i64 8, !93, i64 16, !93, i64 24, !93, i64 32, !93, i64 40, !93, i64 48, !93, i64 56, !93, i64 64, !93, i64 72, !90, i64 80, !90, i64 88, !94, i64 96, !94, i64 100}
!110 = !DILocation(line: 78, column: 5, scope: !4)
!111 = !DILocation(line: 80, column: 20, scope: !4)
!112 = !{!109, !93, i64 16}
!113 = !DILocation(line: 61, column: 15, scope: !4)
!114 = !DILocation(line: 81, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !4, file: !1, line: 81, column: 9)
!116 = !DILocation(line: 81, column: 9, scope: !4)
!117 = !DILocation(line: 89, column: 16, scope: !118)
!118 = distinct !DILexicalBlock(scope: !4, file: !1, line: 89, column: 9)
!119 = !DILocation(line: 89, column: 9, scope: !4)
!120 = !DILocation(line: 84, column: 15, scope: !121)
!121 = distinct !DILexicalBlock(scope: !115, file: !1, line: 82, column: 5)
!122 = !DILocation(line: 84, column: 25, scope: !121)
!123 = !DILocation(line: 86, column: 9, scope: !121)
!124 = !DILocation(line: 91, column: 20, scope: !4)
!125 = !{!109, !93, i64 32}
!126 = !DILocation(line: 92, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !4, file: !1, line: 92, column: 9)
!128 = !DILocation(line: 92, column: 9, scope: !4)
!129 = !DILocation(line: 94, column: 22, scope: !4)
!130 = !{!109, !93, i64 24}
!131 = !DILocation(line: 103, column: 40, scope: !4)
!132 = !{!109, !90, i64 88}
!133 = !DILocation(line: 65, column: 14, scope: !4)
!134 = !DILocation(line: 66, column: 14, scope: !4)
!135 = !DILocation(line: 62, column: 15, scope: !4)
!136 = !DILocation(line: 59, column: 15, scope: !4)
!137 = !DILocation(line: 106, column: 17, scope: !4)
!138 = !DILocation(line: 106, column: 5, scope: !4)
!139 = !DILocation(line: 123, column: 13, scope: !140)
!140 = distinct !DILexicalBlock(scope: !4, file: !1, line: 107, column: 5)
!141 = !DILocation(line: 102, column: 20, scope: !4)
!142 = !DILocation(line: 108, column: 19, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !1, line: 108, column: 13)
!144 = !DILocation(line: 108, column: 13, scope: !143)
!145 = !DILocation(line: 110, column: 19, scope: !146)
!146 = distinct !DILexicalBlock(scope: !140, file: !1, line: 110, column: 13)
!147 = !DILocation(line: 108, column: 13, scope: !140)
!148 = !DILocation(line: 109, column: 49, scope: !143)
!149 = !{!109, !93, i64 40}
!150 = !DILocation(line: 109, column: 28, scope: !143)
!151 = !DILocation(line: 109, column: 41, scope: !143)
!152 = !DILocation(line: 109, column: 13, scope: !143)
!153 = !DILocation(line: 110, column: 13, scope: !146)
!154 = !DILocation(line: 110, column: 13, scope: !140)
!155 = !DILocation(line: 111, column: 33, scope: !146)
!156 = !DILocation(line: 111, column: 41, scope: !146)
!157 = !DILocation(line: 111, column: 13, scope: !146)
!158 = !DILocation(line: 112, column: 22, scope: !146)
!159 = !DILocation(line: 112, column: 28, scope: !146)
!160 = !DILocation(line: 115, column: 20, scope: !140)
!161 = !DILocation(line: 116, column: 35, scope: !140)
!162 = !DILocation(line: 116, column: 23, scope: !140)
!163 = !DILocation(line: 117, column: 13, scope: !164)
!164 = distinct !DILexicalBlock(scope: !140, file: !1, line: 117, column: 13)
!165 = !DILocation(line: 117, column: 13, scope: !140)
!166 = !DILocation(line: 118, column: 28, scope: !164)
!167 = !DILocation(line: 118, column: 41, scope: !164)
!168 = !DILocation(line: 118, column: 13, scope: !164)
!169 = !DILocation(line: 119, column: 25, scope: !140)
!170 = !DILocation(line: 120, column: 28, scope: !140)
!171 = !DILocation(line: 122, column: 36, scope: !140)
!172 = !{!109, !94, i64 8}
!173 = !DILocation(line: 122, column: 28, scope: !140)
!174 = !DILocation(line: 63, column: 14, scope: !4)
!175 = !DILocation(line: 123, column: 30, scope: !176)
!176 = distinct !DILexicalBlock(scope: !140, file: !1, line: 123, column: 13)
!177 = !DILocation(line: 124, column: 31, scope: !176)
!178 = !{!109, !90, i64 80}
!179 = !DILocation(line: 127, column: 32, scope: !140)
!180 = !{!109, !93, i64 48}
!181 = !DILocation(line: 58, column: 15, scope: !4)
!182 = !DILocation(line: 128, column: 28, scope: !140)
!183 = !DILocation(line: 64, column: 14, scope: !4)
!184 = !DILocation(line: 130, column: 29, scope: !140)
!185 = !DILocation(line: 130, column: 27, scope: !140)
!186 = !DILocation(line: 131, column: 20, scope: !140)
!187 = !DILocation(line: 132, column: 25, scope: !140)
!188 = !DILocation(line: 133, column: 21, scope: !140)
!189 = !DILocation(line: 139, column: 34, scope: !140)
!190 = !DILocation(line: 144, column: 15, scope: !191)
!191 = distinct !DILexicalBlock(scope: !4, file: !1, line: 144, column: 9)
!192 = !DILocation(line: 146, column: 34, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 146, column: 9)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 146, column: 9)
!195 = distinct !DILexicalBlock(scope: !191, file: !1, line: 145, column: 5)
!196 = !DILocation(line: 144, column: 9, scope: !4)
!197 = !DILocation(line: 165, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 165, column: 9)
!199 = distinct !DILexicalBlock(scope: !191, file: !1, line: 164, column: 5)
!200 = !DILocation(line: 146, column: 9, scope: !194)
!201 = !DILocation(line: 149, column: 17, scope: !202)
!202 = distinct !DILexicalBlock(scope: !193, file: !1, line: 147, column: 9)
!203 = !DILocation(line: 154, column: 33, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 154, column: 9)
!205 = distinct !DILexicalBlock(scope: !195, file: !1, line: 154, column: 9)
!206 = !DILocation(line: 154, column: 9, scope: !205)
!207 = !DILocation(line: 157, column: 17, scope: !208)
!208 = distinct !DILexicalBlock(scope: !204, file: !1, line: 155, column: 9)
!209 = !DILocation(line: 148, column: 19, scope: !202)
!210 = !DILocation(line: 148, column: 25, scope: !202)
!211 = !DILocation(line: 149, column: 23, scope: !212)
!212 = distinct !DILexicalBlock(scope: !202, file: !1, line: 149, column: 17)
!213 = !DILocation(line: 149, column: 17, scope: !212)
!214 = !DILocation(line: 149, column: 35, scope: !212)
!215 = !DILocation(line: 150, column: 23, scope: !212)
!216 = !DILocation(line: 150, column: 28, scope: !212)
!217 = !DILocation(line: 146, column: 53, scope: !193)
!218 = !DILocation(line: 157, column: 23, scope: !219)
!219 = distinct !DILexicalBlock(scope: !208, file: !1, line: 157, column: 17)
!220 = !DILocation(line: 157, column: 17, scope: !219)
!221 = !DILocation(line: 157, column: 35, scope: !219)
!222 = !DILocation(line: 158, column: 23, scope: !219)
!223 = !DILocation(line: 158, column: 28, scope: !219)
!224 = !{!90, !90, i64 0}
!225 = !DILocation(line: 154, column: 52, scope: !204)
!226 = !DILocation(line: 167, column: 33, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 167, column: 9)
!228 = distinct !DILexicalBlock(scope: !199, file: !1, line: 167, column: 9)
!229 = !DILocation(line: 167, column: 9, scope: !228)
!230 = !DILocation(line: 166, column: 19, scope: !231)
!231 = distinct !DILexicalBlock(scope: !198, file: !1, line: 165, column: 9)
!232 = !DILocation(line: 166, column: 25, scope: !231)
!233 = !DILocation(line: 165, column: 53, scope: !231)
!234 = !DILocation(line: 165, column: 34, scope: !231)
!235 = !DILocation(line: 168, column: 19, scope: !227)
!236 = !DILocation(line: 168, column: 25, scope: !227)
!237 = !DILocation(line: 167, column: 52, scope: !227)
!238 = !DILocation(line: 171, column: 1, scope: !4)
