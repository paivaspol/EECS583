; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [63 x i8] c"\0A fatal error in BKL_exhaustiveSearch(%p,%d,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define float @BKL_exhSearch(%struct._BKL* %bkl, i32 %mdom, i32* %domids, i32* %tcolors) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !79, metadata !96), !dbg !97
  tail call void @llvm.dbg.value(metadata i32 %mdom, i64 0, metadata !80, metadata !96), !dbg !98
  tail call void @llvm.dbg.value(metadata i32* %domids, i64 0, metadata !81, metadata !96), !dbg !99
  tail call void @llvm.dbg.value(metadata i32* %tcolors, i64 0, metadata !82, metadata !96), !dbg !100
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !101
  %2 = icmp slt i32 %mdom, 1, !dbg !103
  %or.cond = or i1 %1, %2, !dbg !104
  %3 = icmp eq i32* %domids, null, !dbg !105
  %or.cond3 = or i1 %or.cond, %3, !dbg !104
  %4 = icmp eq i32* %tcolors, null, !dbg !106
  %or.cond5 = or i1 %or.cond3, %4, !dbg !104
  br i1 %or.cond5, label %5, label %8, !dbg !104

; <label>:5                                       ; preds = %0
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !107, !tbaa !109
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), %struct._BKL* %bkl, i32 %mdom, i32* %domids, i32* %tcolors) #5, !dbg !113
  tail call void @exit(i32 -1) #6, !dbg !114
  unreachable, !dbg !114

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !115
  %10 = load i32** %9, align 8, !dbg !115, !tbaa !116
  tail call void @llvm.dbg.value(metadata i32* %10, i64 0, metadata !91, metadata !96), !dbg !120
  %11 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 7, !dbg !121
  store i32 0, i32* %11, align 4, !dbg !122, !tbaa !123
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !96), !dbg !124
  %12 = icmp sgt i32 %mdom, 0, !dbg !125
  br i1 %12, label %.lr.ph21, label %._crit_edge22.thread, !dbg !128

._crit_edge22.thread:                             ; preds = %8
  %13 = tail call float @BKL_evalfcn(%struct._BKL* %bkl) #5, !dbg !129
  tail call void @llvm.dbg.value(metadata float %22, i64 0, metadata !83, metadata !96), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !85, metadata !96), !dbg !131
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !90, metadata !96), !dbg !132
  br label %._crit_edge, !dbg !133

.lr.ph21:                                         ; preds = %8
  %14 = add i32 %mdom, -1, !dbg !128
  br label %15, !dbg !128

; <label>:15                                      ; preds = %15, %.lr.ph21
  %indvars.iv29 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next30, %15 ]
  %16 = getelementptr inbounds i32* %domids, i64 %indvars.iv29, !dbg !135
  %17 = load i32* %16, align 4, !dbg !135, !tbaa !137
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !85, metadata !96), !dbg !131
  %18 = sext i32 %17 to i64, !dbg !138
  %19 = getelementptr inbounds i32* %10, i64 %18, !dbg !138
  %20 = load i32* %19, align 4, !dbg !138, !tbaa !137
  %21 = getelementptr inbounds i32* %tcolors, i64 %indvars.iv29, !dbg !139
  store i32 %20, i32* %21, align 4, !dbg !140, !tbaa !137
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1, !dbg !128
  %lftr.wideiv31 = trunc i64 %indvars.iv29 to i32, !dbg !128
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %14, !dbg !128
  br i1 %exitcond32, label %._crit_edge22, label %15, !dbg !128

._crit_edge22:                                    ; preds = %15
  %22 = tail call float @BKL_evalfcn(%struct._BKL* %bkl) #5, !dbg !129
  tail call void @llvm.dbg.value(metadata float %22, i64 0, metadata !83, metadata !96), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !85, metadata !96), !dbg !131
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !90, metadata !96), !dbg !132
  br i1 %12, label %.lr.ph17, label %._crit_edge, !dbg !133

.lr.ph17:                                         ; preds = %._crit_edge22
  %23 = add i32 %mdom, -1, !dbg !133
  br label %28, !dbg !133

.preheader6:                                      ; preds = %28
  %24 = icmp sgt i32 %29, 1, !dbg !141
  br i1 %24, label %.lr.ph13, label %.preheader, !dbg !144

.lr.ph13:                                         ; preds = %.preheader6
  %25 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 8, !dbg !145
  %26 = add i32 %mdom, -1, !dbg !144
  %27 = add i32 %29, -1, !dbg !144
  br label %32, !dbg !144

; <label>:28                                      ; preds = %28, %.lr.ph17
  %nflip.015 = phi i32 [ 1, %.lr.ph17 ], [ %29, %28 ]
  %idom.014 = phi i32 [ 0, %.lr.ph17 ], [ %30, %28 ]
  %29 = shl nsw i32 %nflip.015, 1, !dbg !149
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !90, metadata !96), !dbg !132
  %30 = add nuw nsw i32 %idom.014, 1, !dbg !152
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !85, metadata !96), !dbg !131
  %exitcond28 = icmp eq i32 %idom.014, %23, !dbg !133
  br i1 %exitcond28, label %.preheader6, label %28, !dbg !133

.preheader:                                       ; preds = %.loopexit, %.preheader6
  %bestcost.0.lcssa = phi float [ %22, %.preheader6 ], [ %bestcost.1, %.loopexit ]
  br i1 %12, label %.lr.ph, label %._crit_edge, !dbg !153

.lr.ph:                                           ; preds = %.preheader
  %31 = add i32 %mdom, -1, !dbg !153
  br label %49, !dbg !153

; <label>:32                                      ; preds = %.loopexit, %.lr.ph13
  %bestcost.012 = phi float [ %22, %.lr.ph13 ], [ %bestcost.1, %.loopexit ]
  %iflip.011 = phi i32 [ 1, %.lr.ph13 ], [ %48, %.loopexit ]
  %33 = tail call i32 @BKL_greyCodeDomain(%struct._BKL* %bkl, i32 %iflip.011) #5, !dbg !155
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !88, metadata !96), !dbg !124
  %34 = sext i32 %33 to i64, !dbg !156
  %35 = getelementptr inbounds i32* %domids, i64 %34, !dbg !156
  %36 = load i32* %35, align 4, !dbg !156, !tbaa !137
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !85, metadata !96), !dbg !131
  tail call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %36) #5, !dbg !157
  %37 = tail call float @BKL_evalfcn(%struct._BKL* %bkl) #5, !dbg !158
  tail call void @llvm.dbg.value(metadata float %37, i64 0, metadata !84, metadata !96), !dbg !159
  %38 = fcmp olt float %37, %bestcost.012, !dbg !160
  br i1 %38, label %39, label %.loopexit, !dbg !161

; <label>:39                                      ; preds = %32
  %40 = load i32* %25, align 4, !dbg !162, !tbaa !163
  %41 = add nsw i32 %40, 1, !dbg !162
  store i32 %41, i32* %25, align 4, !dbg !162, !tbaa !163
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !89, metadata !96), !dbg !164
  br i1 %12, label %.lr.ph10, label %.loopexit, !dbg !165

.lr.ph10:                                         ; preds = %39, %.lr.ph10
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %.lr.ph10 ], [ 0, %39 ]
  %42 = getelementptr inbounds i32* %domids, i64 %indvars.iv23, !dbg !167
  %43 = load i32* %42, align 4, !dbg !167, !tbaa !137
  %44 = sext i32 %43 to i64, !dbg !170
  %45 = getelementptr inbounds i32* %10, i64 %44, !dbg !170
  %46 = load i32* %45, align 4, !dbg !170, !tbaa !137
  %47 = getelementptr inbounds i32* %tcolors, i64 %indvars.iv23, !dbg !171
  store i32 %46, i32* %47, align 4, !dbg !172, !tbaa !137
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1, !dbg !165
  %lftr.wideiv25 = trunc i64 %indvars.iv23 to i32, !dbg !165
  %exitcond26 = icmp eq i32 %lftr.wideiv25, %26, !dbg !165
  br i1 %exitcond26, label %.loopexit, label %.lr.ph10, !dbg !165

.loopexit:                                        ; preds = %.lr.ph10, %39, %32
  %bestcost.1 = phi float [ %bestcost.012, %32 ], [ %37, %39 ], [ %37, %.lr.ph10 ]
  %48 = add nuw nsw i32 %iflip.011, 1, !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !87, metadata !96), !dbg !174
  %exitcond27 = icmp eq i32 %iflip.011, %27, !dbg !144
  br i1 %exitcond27, label %.preheader, label %32, !dbg !144

; <label>:49                                      ; preds = %59, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %59 ]
  %50 = getelementptr inbounds i32* %domids, i64 %indvars.iv, !dbg !175
  %51 = load i32* %50, align 4, !dbg !175, !tbaa !137
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !85, metadata !96), !dbg !131
  %52 = sext i32 %51 to i64, !dbg !178
  %53 = getelementptr inbounds i32* %10, i64 %52, !dbg !178
  %54 = load i32* %53, align 4, !dbg !178, !tbaa !137
  %55 = getelementptr inbounds i32* %tcolors, i64 %indvars.iv, !dbg !180
  %56 = load i32* %55, align 4, !dbg !180, !tbaa !137
  %57 = icmp eq i32 %54, %56, !dbg !181
  br i1 %57, label %59, label %58, !dbg !182

; <label>:58                                      ; preds = %49
  tail call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %51) #5, !dbg !183
  br label %59, !dbg !185

; <label>:59                                      ; preds = %49, %58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !153
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !153
  %exitcond = icmp eq i32 %lftr.wideiv, %31, !dbg !153
  br i1 %exitcond, label %._crit_edge, label %49, !dbg !153

._crit_edge:                                      ; preds = %59, %._crit_edge22, %._crit_edge22.thread, %.preheader
  %bestcost.0.lcssa33 = phi float [ %bestcost.0.lcssa, %.preheader ], [ %13, %._crit_edge22.thread ], [ %22, %._crit_edge22 ], [ %bestcost.0.lcssa, %59 ]
  ret float %bestcost.0.lcssa33, !dbg !186
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare float @BKL_evalfcn(%struct._BKL*) #3

; Function Attrs: optsize
declare i32 @BKL_greyCodeDomain(%struct._BKL*, i32) #3

; Function Attrs: optsize
declare void @BKL_flipDomain(%struct._BKL*, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!92, !93, !94}
!llvm.ident = !{!95}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "BKL_exhSearch", scope: !1, file: !1, line: 25, type: !7, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct._BKL*, i32, i32*, i32*)* @BKL_exhSearch, variables: !78)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10, !22, !47, !47}
!9 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "BKL", file: !12, line: 45, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../BKL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BKL", file: !12, line: 46, size: 704, align: 64, elements: !14)
!14 = !{!15, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !76, !77}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "bpg", scope: !13, file: !12, line: 47, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "BPG", file: !18, line: 21, baseType: !19)
!18 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../BPG/BPG.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BPG", file: !18, line: 22, size: 128, align: 64, elements: !20)
!20 = !{!21, !23, !24}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "nX", scope: !19, file: !18, line: 23, baseType: !22, size: 32, align: 32)
!22 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "nY", scope: !19, file: !18, line: 24, baseType: !22, size: 32, align: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !19, file: !18, line: 25, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !27, line: 49, baseType: !28)
!27 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../Graph/Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !27, line: 50, size: 384, align: 64, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !60, !61}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !28, file: !27, line: 51, baseType: !22, size: 32, align: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !28, file: !27, line: 52, baseType: !22, size: 32, align: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !28, file: !27, line: 53, baseType: !22, size: 32, align: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !28, file: !27, line: 54, baseType: !22, size: 32, align: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !28, file: !27, line: 55, baseType: !22, size: 32, align: 32, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !28, file: !27, line: 56, baseType: !22, size: 32, align: 32, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !28, file: !27, line: 57, baseType: !37, size: 64, align: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !39, line: 55, baseType: !40)
!39 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !39, line: 79, size: 384, align: 64, elements: !41)
!41 = !{!42, !43, !44, !45, !46, !48, !50, !51}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !39, line: 80, baseType: !22, size: 32, align: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !40, file: !39, line: 81, baseType: !22, size: 32, align: 32, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !40, file: !39, line: 82, baseType: !22, size: 32, align: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !40, file: !39, line: 83, baseType: !22, size: 32, align: 32, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !40, file: !39, line: 84, baseType: !47, size: 64, align: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !40, file: !39, line: 85, baseType: !49, size: 64, align: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !40, file: !39, line: 86, baseType: !22, size: 32, align: 32, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !40, file: !39, line: 87, baseType: !52, size: 64, align: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !39, line: 56, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !39, line: 102, size: 192, align: 64, elements: !55)
!55 = !{!56, !57, !58, !59}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !54, file: !39, line: 103, baseType: !22, size: 32, align: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !54, file: !39, line: 104, baseType: !22, size: 32, align: 32, offset: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !54, file: !39, line: 105, baseType: !47, size: 64, align: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !54, file: !39, line: 106, baseType: !52, size: 64, align: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !28, file: !27, line: 58, baseType: !47, size: 64, align: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !28, file: !27, line: 59, baseType: !37, size: 64, align: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ndom", scope: !13, file: !12, line: 48, baseType: !22, size: 32, align: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "nseg", scope: !13, file: !12, line: 49, baseType: !22, size: 32, align: 32, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !13, file: !12, line: 50, baseType: !22, size: 32, align: 32, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "totweight", scope: !13, file: !12, line: 51, baseType: !22, size: 32, align: 32, offset: 160)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "npass", scope: !13, file: !12, line: 52, baseType: !22, size: 32, align: 32, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "npatch", scope: !13, file: !12, line: 53, baseType: !22, size: 32, align: 32, offset: 224)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "nflips", scope: !13, file: !12, line: 54, baseType: !22, size: 32, align: 32, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "nimprove", scope: !13, file: !12, line: 55, baseType: !22, size: 32, align: 32, offset: 288)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ngaineval", scope: !13, file: !12, line: 56, baseType: !22, size: 32, align: 32, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !13, file: !12, line: 57, baseType: !47, size: 64, align: 64, offset: 384)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "cweights", scope: !13, file: !12, line: 58, baseType: !73, size: 96, align: 32, offset: 448)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 96, align: 32, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 3)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "regwghts", scope: !13, file: !12, line: 59, baseType: !47, size: 64, align: 64, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !13, file: !12, line: 60, baseType: !9, size: 32, align: 32, offset: 640)
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !6, file: !1, line: 26, type: !10)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mdom", arg: 2, scope: !6, file: !1, line: 27, type: !22)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "domids", arg: 3, scope: !6, file: !1, line: 28, type: !47)
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tcolors", arg: 4, scope: !6, file: !1, line: 29, type: !47)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bestcost", scope: !6, file: !1, line: 31, type: !9)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newcost", scope: !6, file: !1, line: 31, type: !9)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idom", scope: !6, file: !1, line: 32, type: !22)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !6, file: !1, line: 32, type: !22)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iflip", scope: !6, file: !1, line: 32, type: !22)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iloc", scope: !6, file: !1, line: 32, type: !22)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jloc", scope: !6, file: !1, line: 32, type: !22)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nflip", scope: !6, file: !1, line: 32, type: !22)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colors", scope: !6, file: !1, line: 33, type: !47)
!92 = !{i32 2, !"Dwarf Version", i32 2}
!93 = !{i32 2, !"Debug Info Version", i32 700000003}
!94 = !{i32 1, !"PIC Level", i32 2}
!95 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!96 = !DIExpression()
!97 = !DILocation(line: 26, column: 11, scope: !6)
!98 = !DILocation(line: 27, column: 10, scope: !6)
!99 = !DILocation(line: 28, column: 10, scope: !6)
!100 = !DILocation(line: 29, column: 10, scope: !6)
!101 = !DILocation(line: 39, column: 10, scope: !102)
!102 = distinct !DILexicalBlock(scope: !6, file: !1, line: 39, column: 6)
!103 = !DILocation(line: 39, column: 26, scope: !102)
!104 = !DILocation(line: 39, column: 18, scope: !102)
!105 = !DILocation(line: 39, column: 40, scope: !102)
!106 = !DILocation(line: 39, column: 59, scope: !102)
!107 = !DILocation(line: 40, column: 12, scope: !108)
!108 = distinct !DILexicalBlock(scope: !102, file: !1, line: 39, column: 69)
!109 = !{!110, !110, i64 0}
!110 = !{!"any pointer", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !DILocation(line: 40, column: 4, scope: !108)
!114 = !DILocation(line: 42, column: 4, scope: !108)
!115 = !DILocation(line: 44, column: 15, scope: !6)
!116 = !{!117, !110, i64 48}
!117 = !{!"_BKL", !110, i64 0, !118, i64 8, !118, i64 12, !118, i64 16, !118, i64 20, !118, i64 24, !118, i64 28, !118, i64 32, !118, i64 36, !118, i64 40, !110, i64 48, !111, i64 56, !110, i64 72, !119, i64 80}
!118 = !{!"int", !111, i64 0}
!119 = !{!"float", !111, i64 0}
!120 = !DILocation(line: 33, column: 10, scope: !6)
!121 = !DILocation(line: 45, column: 6, scope: !6)
!122 = !DILocation(line: 45, column: 13, scope: !6)
!123 = !{!117, !118, i64 32}
!124 = !DILocation(line: 32, column: 28, scope: !6)
!125 = !DILocation(line: 57, column: 23, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 57, column: 1)
!127 = distinct !DILexicalBlock(scope: !6, file: !1, line: 57, column: 1)
!128 = !DILocation(line: 57, column: 1, scope: !127)
!129 = !DILocation(line: 66, column: 12, scope: !6)
!130 = !DILocation(line: 31, column: 9, scope: !6)
!131 = !DILocation(line: 32, column: 9, scope: !6)
!132 = !DILocation(line: 32, column: 40, scope: !6)
!133 = !DILocation(line: 87, column: 1, scope: !134)
!134 = distinct !DILexicalBlock(scope: !6, file: !1, line: 87, column: 1)
!135 = !DILocation(line: 58, column: 11, scope: !136)
!136 = distinct !DILexicalBlock(scope: !126, file: !1, line: 57, column: 41)
!137 = !{!118, !118, i64 0}
!138 = !DILocation(line: 59, column: 20, scope: !136)
!139 = !DILocation(line: 59, column: 4, scope: !136)
!140 = !DILocation(line: 59, column: 18, scope: !136)
!141 = !DILocation(line: 95, column: 25, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 95, column: 1)
!143 = distinct !DILexicalBlock(scope: !6, file: !1, line: 95, column: 1)
!144 = !DILocation(line: 95, column: 1, scope: !143)
!145 = !DILocation(line: 127, column: 12, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 122, column: 30)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 122, column: 9)
!148 = distinct !DILexicalBlock(scope: !142, file: !1, line: 95, column: 45)
!149 = !DILocation(line: 88, column: 10, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !1, line: 87, column: 52)
!151 = distinct !DILexicalBlock(scope: !134, file: !1, line: 87, column: 1)
!152 = !DILocation(line: 87, column: 47, scope: !151)
!153 = !DILocation(line: 139, column: 1, scope: !154)
!154 = distinct !DILexicalBlock(scope: !6, file: !1, line: 139, column: 1)
!155 = !DILocation(line: 96, column: 11, scope: !148)
!156 = !DILocation(line: 97, column: 11, scope: !148)
!157 = !DILocation(line: 107, column: 4, scope: !148)
!158 = !DILocation(line: 115, column: 14, scope: !148)
!159 = !DILocation(line: 31, column: 19, scope: !6)
!160 = !DILocation(line: 122, column: 17, scope: !147)
!161 = !DILocation(line: 122, column: 9, scope: !148)
!162 = !DILocation(line: 127, column: 20, scope: !146)
!163 = !{!117, !118, i64 36}
!164 = !DILocation(line: 32, column: 34, scope: !6)
!165 = !DILocation(line: 128, column: 7, scope: !166)
!166 = distinct !DILexicalBlock(scope: !146, file: !1, line: 128, column: 7)
!167 = !DILocation(line: 129, column: 33, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 128, column: 47)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 128, column: 7)
!170 = !DILocation(line: 129, column: 26, scope: !168)
!171 = !DILocation(line: 129, column: 10, scope: !168)
!172 = !DILocation(line: 129, column: 24, scope: !168)
!173 = !DILocation(line: 95, column: 40, scope: !142)
!174 = !DILocation(line: 32, column: 21, scope: !6)
!175 = !DILocation(line: 140, column: 11, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !1, line: 139, column: 41)
!177 = distinct !DILexicalBlock(scope: !154, file: !1, line: 139, column: 1)
!178 = !DILocation(line: 141, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !1, line: 141, column: 9)
!180 = !DILocation(line: 141, column: 25, scope: !179)
!181 = !DILocation(line: 141, column: 22, scope: !179)
!182 = !DILocation(line: 141, column: 9, scope: !176)
!183 = !DILocation(line: 142, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !1, line: 141, column: 41)
!185 = !DILocation(line: 143, column: 4, scope: !184)
!186 = !DILocation(line: 146, column: 1, scope: !6)
