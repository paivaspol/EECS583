; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/output.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"***\0A\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i64 @write_circulations(i8* %outfile, %struct.network* %net) #0 {
  tail call void @llvm.dbg.value(metadata i8* %outfile, i64 0, metadata !85, metadata !158), !dbg !159
  tail call void @llvm.dbg.value(metadata %struct.network* %net, i64 0, metadata !86, metadata !158), !dbg !160
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* null, i64 0, metadata !87, metadata !158), !dbg !161
  %1 = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !162
  %2 = load %struct.arc** %1, align 8, !dbg !162, !tbaa !163
  %3 = getelementptr inbounds %struct.network* %net, i64 0, i32 7, !dbg !170
  %4 = load i64* %3, align 8, !dbg !170, !tbaa !171
  %5 = sub i64 0, %4, !dbg !172
  %6 = getelementptr inbounds %struct.arc* %2, i64 %5, !dbg !172
  tail call void @llvm.dbg.value(metadata %struct.arc* %6, i64 0, metadata !153, metadata !158), !dbg !173
  %7 = tail call %struct.__sFILE* @"\01_fopen"(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #5, !dbg !174
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %7, i64 0, metadata !87, metadata !158), !dbg !161
  %8 = icmp eq %struct.__sFILE* %7, null, !dbg !176
  br i1 %8, label %53, label %9, !dbg !177

; <label>:9                                       ; preds = %0
  tail call void @refresh_neighbour_lists(%struct.network* %net) #5, !dbg !178
  %10 = getelementptr inbounds %struct.network* %net, i64 0, i32 2, !dbg !179
  %11 = load i64* %10, align 8, !dbg !179, !tbaa !181
  %12 = getelementptr inbounds %struct.network* %net, i64 0, i32 21, !dbg !182
  %13 = load %struct.node** %12, align 8, !dbg !182, !tbaa !183
  %14 = getelementptr inbounds %struct.node* %13, i64 %11, i32 7, !dbg !184
  %block.07 = load %struct.arc** %14, align 8, !dbg !184
  %15 = icmp eq %struct.arc* %block.07, null, !dbg !185
  br i1 %15, label %._crit_edge, label %.lr.ph9, !dbg !185

.lr.ph9:                                          ; preds = %9
  %16 = getelementptr inbounds %struct.network* %net, i64 0, i32 3, !dbg !186
  br label %17, !dbg !185

; <label>:17                                      ; preds = %.lr.ph9, %.loopexit
  %block.08 = phi %struct.arc* [ %block.07, %.lr.ph9 ], [ %block.0, %.loopexit ]
  %18 = getelementptr inbounds %struct.arc* %block.08, i64 0, i32 6, !dbg !192
  %19 = load i64* %18, align 8, !dbg !192, !tbaa !193
  %20 = icmp eq i64 %19, 0, !dbg !196
  br i1 %20, label %.loopexit, label %.lr.ph6, !dbg !197

.lr.ph6:                                          ; preds = %17
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %7), !dbg !198
  tail call void @llvm.dbg.value(metadata %struct.arc* %block.0, i64 0, metadata !151, metadata !158), !dbg !199
  br label %22, !dbg !200

; <label>:22                                      ; preds = %.lr.ph6, %select.unfold
  %arc.05 = phi %struct.arc* [ %block.08, %.lr.ph6 ], [ %.arc2.0, %select.unfold ]
  %23 = icmp ult %struct.arc* %arc.05, %6, !dbg !201
  br i1 %23, label %26, label %24, !dbg !203

; <label>:24                                      ; preds = %22
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %7), !dbg !204
  br label %26, !dbg !204

; <label>:26                                      ; preds = %22, %24
  %27 = getelementptr inbounds %struct.arc* %arc.05, i64 0, i32 2, !dbg !205
  %28 = load %struct.node** %27, align 8, !dbg !205, !tbaa !206
  %29 = getelementptr inbounds %struct.node* %28, i64 0, i32 12, !dbg !207
  %30 = load i32* %29, align 4, !dbg !207, !tbaa !208
  %31 = sub nsw i32 0, %30, !dbg !210
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %31) #5, !dbg !211
  %33 = load i64* %16, align 8, !dbg !186, !tbaa !212
  %34 = load %struct.node** %27, align 8, !dbg !213, !tbaa !206
  %35 = getelementptr inbounds %struct.node* %34, i64 %33, i32 7, !dbg !214
  %arc2.02 = load %struct.arc** %35, align 8, !dbg !214
  %36 = icmp eq %struct.arc* %arc2.02, null, !dbg !215
  br i1 %36, label %.critedge, label %.lr.ph, !dbg !215

.lr.ph:                                           ; preds = %26, %40
  %arc2.03 = phi %struct.arc* [ %arc2.0, %40 ], [ %arc2.02, %26 ]
  %37 = getelementptr inbounds %struct.arc* %arc2.03, i64 0, i32 6, !dbg !217
  %38 = load i64* %37, align 8, !dbg !217, !tbaa !193
  %39 = icmp eq i64 %38, 0, !dbg !220
  br i1 %39, label %40, label %select.unfold, !dbg !221

; <label>:40                                      ; preds = %.lr.ph
  %41 = getelementptr inbounds %struct.arc* %arc2.03, i64 0, i32 4, !dbg !222
  %arc2.0 = load %struct.arc** %41, align 8, !dbg !214
  %42 = icmp eq %struct.arc* %arc2.0, null, !dbg !215
  br i1 %42, label %.critedge, label %.lr.ph, !dbg !215

.critedge:                                        ; preds = %26, %40
  %43 = tail call i32 @fclose(%struct.__sFILE* %7) #5, !dbg !223
  br label %53, !dbg !226

select.unfold:                                    ; preds = %.lr.ph
  %44 = getelementptr inbounds %struct.arc* %arc2.03, i64 0, i32 2, !dbg !227
  %45 = load %struct.node** %44, align 8, !dbg !227, !tbaa !206
  %46 = getelementptr inbounds %struct.node* %45, i64 0, i32 12, !dbg !229
  %47 = load i32* %46, align 4, !dbg !229, !tbaa !208
  %48 = icmp eq i32 %47, 0, !dbg !230
  %.arc2.0 = select i1 %48, %struct.arc* null, %struct.arc* %arc2.03
  %49 = icmp eq %struct.arc* %.arc2.0, null, !dbg !200
  br i1 %49, label %.loopexit, label %22, !dbg !200

.loopexit:                                        ; preds = %select.unfold, %17
  %50 = getelementptr inbounds %struct.arc* %block.08, i64 0, i32 4, !dbg !231
  %block.0 = load %struct.arc** %50, align 8, !dbg !184
  %51 = icmp eq %struct.arc* %block.0, null, !dbg !185
  br i1 %51, label %._crit_edge, label %17, !dbg !185

._crit_edge:                                      ; preds = %.loopexit, %9
  %52 = tail call i32 @fclose(%struct.__sFILE* %7) #5, !dbg !232
  br label %53, !dbg !233

; <label>:53                                      ; preds = %0, %._crit_edge, %.critedge
  %.0 = phi i64 [ -1, %.critedge ], [ 0, %._crit_edge ], [ -1, %0 ]
  ret i64 %.0, !dbg !234
}

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #1

; Function Attrs: optsize
declare void @refresh_neighbour_lists(%struct.network*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!154, !155, !156}
!llvm.ident = !{!157}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/output.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "write_circulations", scope: !1, file: !1, line: 30, type: !7, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*, %struct.network*)* @write_circulations, variables: !84)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10, !12}
!9 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "network_t", file: !14, line: 163, baseType: !15)
!14 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "network", file: !14, line: 138, size: 4992, align: 64, elements: !16)
!16 = !{!17, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !41, !43, !76, !77, !78, !79, !80, !81, !82, !83}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "inputfile", scope: !15, file: !14, line: 140, baseType: !18, size: 1600, align: 8)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1600, align: 8, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 200)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "clustfile", scope: !15, file: !14, line: 141, baseType: !18, size: 1600, align: 8, offset: 1600)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !15, file: !14, line: 142, baseType: !9, size: 64, align: 64, offset: 3200)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "n_trips", scope: !15, file: !14, line: 142, baseType: !9, size: 64, align: 64, offset: 3264)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "max_m", scope: !15, file: !14, line: 143, baseType: !9, size: 64, align: 64, offset: 3328)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !15, file: !14, line: 143, baseType: !9, size: 64, align: 64, offset: 3392)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "m_org", scope: !15, file: !14, line: 143, baseType: !9, size: 64, align: 64, offset: 3456)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "m_impl", scope: !15, file: !14, line: 143, baseType: !9, size: 64, align: 64, offset: 3520)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "max_residual_new_m", scope: !15, file: !14, line: 144, baseType: !9, size: 64, align: 64, offset: 3584)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "max_new_m", scope: !15, file: !14, line: 144, baseType: !9, size: 64, align: 64, offset: 3648)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "primal_unbounded", scope: !15, file: !14, line: 146, baseType: !9, size: 64, align: 64, offset: 3712)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "dual_unbounded", scope: !15, file: !14, line: 147, baseType: !9, size: 64, align: 64, offset: 3776)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "perturbed", scope: !15, file: !14, line: 148, baseType: !9, size: 64, align: 64, offset: 3840)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "feasible", scope: !15, file: !14, line: 149, baseType: !9, size: 64, align: 64, offset: 3904)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !15, file: !14, line: 150, baseType: !9, size: 64, align: 64, offset: 3968)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "opt_tol", scope: !15, file: !14, line: 151, baseType: !9, size: 64, align: 64, offset: 4032)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "feas_tol", scope: !15, file: !14, line: 152, baseType: !9, size: 64, align: 64, offset: 4096)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "pert_val", scope: !15, file: !14, line: 153, baseType: !9, size: 64, align: 64, offset: 4160)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "bigM", scope: !15, file: !14, line: 154, baseType: !9, size: 64, align: 64, offset: 4224)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "optcost", scope: !15, file: !14, line: 155, baseType: !40, size: 64, align: 64, offset: 4288)
!40 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_impl", scope: !15, file: !14, line: 156, baseType: !42, size: 64, align: 64, offset: 4352)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !14, line: 69, baseType: !9)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !15, file: !14, line: 157, baseType: !44, size: 64, align: 64, offset: 4416)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !14, line: 100, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !14, line: 107, size: 832, align: 64, elements: !47)
!47 = !{!48, !49, !51, !52, !53, !54, !55, !69, !70, !71, !72, !73, !74, !75}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !46, file: !14, line: 109, baseType: !42, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !46, file: !14, line: 110, baseType: !50, size: 32, align: 32, offset: 64)
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !46, file: !14, line: 111, baseType: !44, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !46, file: !14, line: 112, baseType: !44, size: 64, align: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !46, file: !14, line: 113, baseType: !44, size: 64, align: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !46, file: !14, line: 114, baseType: !44, size: 64, align: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !46, file: !14, line: 115, baseType: !56, size: 64, align: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !14, line: 103, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !14, line: 126, size: 512, align: 64, elements: !59)
!59 = !{!60, !61, !62, !63, !64, !65, !66, !68}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !58, file: !14, line: 128, baseType: !42, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !58, file: !14, line: 129, baseType: !44, size: 64, align: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !58, file: !14, line: 129, baseType: !44, size: 64, align: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !58, file: !14, line: 130, baseType: !50, size: 32, align: 32, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !58, file: !14, line: 131, baseType: !56, size: 64, align: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !58, file: !14, line: 131, baseType: !56, size: 64, align: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !58, file: !14, line: 132, baseType: !67, size: 64, align: 64, offset: 384)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !14, line: 68, baseType: !9)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !58, file: !14, line: 133, baseType: !42, size: 64, align: 64, offset: 448)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !46, file: !14, line: 116, baseType: !56, size: 64, align: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !46, file: !14, line: 116, baseType: !56, size: 64, align: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !46, file: !14, line: 117, baseType: !56, size: 64, align: 64, offset: 576)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !46, file: !14, line: 118, baseType: !67, size: 64, align: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !46, file: !14, line: 119, baseType: !9, size: 64, align: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !46, file: !14, line: 120, baseType: !50, size: 32, align: 32, offset: 768)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !46, file: !14, line: 121, baseType: !50, size: 32, align: 32, offset: 800)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "stop_nodes", scope: !15, file: !14, line: 157, baseType: !44, size: 64, align: 64, offset: 4480)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "arcs", scope: !15, file: !14, line: 158, baseType: !56, size: 64, align: 64, offset: 4544)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arcs", scope: !15, file: !14, line: 158, baseType: !56, size: 64, align: 64, offset: 4608)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_arcs", scope: !15, file: !14, line: 159, baseType: !56, size: 64, align: 64, offset: 4672)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "stop_dummy", scope: !15, file: !14, line: 159, baseType: !56, size: 64, align: 64, offset: 4736)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !15, file: !14, line: 160, baseType: !9, size: 64, align: 64, offset: 4800)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "bound_exchanges", scope: !15, file: !14, line: 161, baseType: !9, size: 64, align: 64, offset: 4864)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !15, file: !14, line: 162, baseType: !9, size: 64, align: 64, offset: 4928)
!84 = !{!85, !86, !87, !148, !151, !152, !153}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outfile", arg: 1, scope: !6, file: !1, line: 31, type: !10)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "net", arg: 2, scope: !6, file: !1, line: 32, type: !12)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out", scope: !6, file: !1, line: 40, type: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !90, line: 153, baseType: !91)
!90 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !90, line: 122, size: 1216, align: 64, elements: !92)
!92 = !{!93, !96, !97, !98, !100, !101, !106, !107, !108, !112, !116, !126, !132, !133, !136, !137, !141, !145, !146, !147}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !91, file: !90, line: 123, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !91, file: !90, line: 124, baseType: !50, size: 32, align: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !91, file: !90, line: 125, baseType: !50, size: 32, align: 32, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !91, file: !90, line: 126, baseType: !99, size: 16, align: 16, offset: 128)
!99 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !91, file: !90, line: 127, baseType: !99, size: 16, align: 16, offset: 144)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !91, file: !90, line: 128, baseType: !102, size: 128, align: 64, offset: 192)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !90, line: 88, size: 128, align: 64, elements: !103)
!103 = !{!104, !105}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !102, file: !90, line: 89, baseType: !94, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !102, file: !90, line: 90, baseType: !50, size: 32, align: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !91, file: !90, line: 129, baseType: !50, size: 32, align: 32, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !91, file: !90, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !91, file: !90, line: 133, baseType: !109, size: 64, align: 64, offset: 448)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!50, !4}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !91, file: !90, line: 134, baseType: !113, size: 64, align: 64, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!50, !4, !10, !50}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !91, file: !90, line: 135, baseType: !117, size: 64, align: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!120, !4, !120, !50}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !90, line: 77, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !122, line: 71, baseType: !123)
!122 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !124, line: 46, baseType: !125)
!124 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!125 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !91, file: !90, line: 136, baseType: !127, size: 64, align: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!50, !4, !130, !50}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !91, file: !90, line: 139, baseType: !102, size: 128, align: 64, offset: 704)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !91, file: !90, line: 140, baseType: !134, size: 64, align: 64, offset: 832)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !90, line: 94, flags: DIFlagFwdDecl)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !91, file: !90, line: 141, baseType: !50, size: 32, align: 32, offset: 896)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !91, file: !90, line: 144, baseType: !138, size: 24, align: 8, offset: 928)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 24, align: 8, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 3)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !91, file: !90, line: 145, baseType: !142, size: 8, align: 8, offset: 952)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 8, align: 8, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 1)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !91, file: !90, line: 148, baseType: !102, size: 128, align: 64, offset: 960)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !91, file: !90, line: 151, baseType: !50, size: 32, align: 32, offset: 1088)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !91, file: !90, line: 152, baseType: !120, size: 64, align: 64, offset: 1152)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "block", scope: !6, file: !1, line: 41, type: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_t", file: !14, line: 102, baseType: !58)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arc", scope: !6, file: !1, line: 42, type: !149)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arc2", scope: !6, file: !1, line: 43, type: !149)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "first_impl", scope: !6, file: !1, line: 44, type: !149)
!154 = !{i32 2, !"Dwarf Version", i32 2}
!155 = !{i32 2, !"Debug Info Version", i32 700000003}
!156 = !{i32 1, !"PIC Level", i32 2}
!157 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!158 = !DIExpression()
!159 = !DILocation(line: 31, column: 26, scope: !6)
!160 = !DILocation(line: 32, column: 31, scope: !6)
!161 = !DILocation(line: 40, column: 11, scope: !6)
!162 = !DILocation(line: 44, column: 30, scope: !6)
!163 = !{!164, !169, i64 576}
!164 = !{!"network", !165, i64 0, !165, i64 200, !167, i64 400, !167, i64 408, !167, i64 416, !167, i64 424, !167, i64 432, !167, i64 440, !167, i64 448, !167, i64 456, !167, i64 464, !167, i64 472, !167, i64 480, !167, i64 488, !167, i64 496, !167, i64 504, !167, i64 512, !167, i64 520, !167, i64 528, !168, i64 536, !167, i64 544, !169, i64 552, !169, i64 560, !169, i64 568, !169, i64 576, !169, i64 584, !169, i64 592, !167, i64 600, !167, i64 608, !167, i64 616}
!165 = !{!"omnipotent char", !166, i64 0}
!166 = !{!"Simple C/C++ TBAA"}
!167 = !{!"long", !165, i64 0}
!168 = !{!"double", !165, i64 0}
!169 = !{!"any pointer", !165, i64 0}
!170 = !DILocation(line: 44, column: 47, scope: !6)
!171 = !{!164, !167, i64 440}
!172 = !DILocation(line: 44, column: 40, scope: !6)
!173 = !DILocation(line: 44, column: 12, scope: !6)
!174 = !DILocation(line: 46, column: 16, scope: !175)
!175 = distinct !DILexicalBlock(scope: !6, file: !1, line: 46, column: 8)
!176 = !DILocation(line: 46, column: 39, scope: !175)
!177 = !DILocation(line: 46, column: 8, scope: !6)
!178 = !DILocation(line: 49, column: 5, scope: !6)
!179 = !DILocation(line: 51, column: 34, scope: !180)
!180 = distinct !DILexicalBlock(scope: !6, file: !1, line: 51, column: 5)
!181 = !{!164, !167, i64 400}
!182 = !DILocation(line: 51, column: 23, scope: !180)
!183 = !{!164, !169, i64 552}
!184 = !DILocation(line: 51, column: 37, scope: !180)
!185 = !DILocation(line: 51, column: 5, scope: !180)
!186 = !DILocation(line: 64, column: 39, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 59, column: 13)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 54, column: 9)
!189 = distinct !DILexicalBlock(scope: !190, file: !1, line: 53, column: 13)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 52, column: 5)
!191 = distinct !DILexicalBlock(scope: !180, file: !1, line: 51, column: 5)
!192 = !DILocation(line: 53, column: 20, scope: !189)
!193 = !{!194, !167, i64 48}
!194 = !{!"arc", !167, i64 0, !169, i64 8, !169, i64 16, !195, i64 24, !169, i64 32, !169, i64 40, !167, i64 48, !167, i64 56}
!195 = !{!"int", !165, i64 0}
!196 = !DILocation(line: 53, column: 13, scope: !189)
!197 = !DILocation(line: 53, column: 13, scope: !190)
!198 = !DILocation(line: 55, column: 13, scope: !188)
!199 = !DILocation(line: 42, column: 12, scope: !6)
!200 = !DILocation(line: 58, column: 13, scope: !188)
!201 = !DILocation(line: 60, column: 25, scope: !202)
!202 = distinct !DILexicalBlock(scope: !187, file: !1, line: 60, column: 21)
!203 = !DILocation(line: 60, column: 21, scope: !187)
!204 = !DILocation(line: 61, column: 21, scope: !202)
!205 = !DILocation(line: 63, column: 46, scope: !187)
!206 = !{!194, !169, i64 16}
!207 = !DILocation(line: 63, column: 52, scope: !187)
!208 = !{!209, !195, i64 96}
!209 = !{!"node", !167, i64 0, !195, i64 8, !169, i64 16, !169, i64 24, !169, i64 32, !169, i64 40, !169, i64 48, !169, i64 56, !169, i64 64, !169, i64 72, !167, i64 80, !167, i64 88, !195, i64 96, !195, i64 100}
!210 = !DILocation(line: 63, column: 39, scope: !187)
!211 = !DILocation(line: 63, column: 17, scope: !187)
!212 = !{!164, !167, i64 408}
!213 = !DILocation(line: 64, column: 29, scope: !187)
!214 = !DILocation(line: 64, column: 48, scope: !187)
!215 = !DILocation(line: 65, column: 17, scope: !216)
!216 = distinct !DILexicalBlock(scope: !187, file: !1, line: 65, column: 17)
!217 = !DILocation(line: 66, column: 31, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !1, line: 66, column: 25)
!219 = distinct !DILexicalBlock(scope: !216, file: !1, line: 65, column: 17)
!220 = !DILocation(line: 66, column: 25, scope: !218)
!221 = !DILocation(line: 66, column: 25, scope: !219)
!222 = !DILocation(line: 65, column: 43, scope: !219)
!223 = !DILocation(line: 70, column: 21, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !1, line: 69, column: 17)
!225 = distinct !DILexicalBlock(scope: !187, file: !1, line: 68, column: 21)
!226 = !DILocation(line: 71, column: 21, scope: !224)
!227 = !DILocation(line: 74, column: 27, scope: !228)
!228 = distinct !DILexicalBlock(scope: !187, file: !1, line: 74, column: 21)
!229 = !DILocation(line: 74, column: 33, scope: !228)
!230 = !DILocation(line: 74, column: 21, scope: !228)
!231 = !DILocation(line: 51, column: 69, scope: !191)
!232 = !DILocation(line: 84, column: 5, scope: !6)
!233 = !DILocation(line: 86, column: 5, scope: !6)
!234 = !DILocation(line: 87, column: 1, scope: !6)
