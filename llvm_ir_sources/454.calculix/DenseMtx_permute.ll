; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [57 x i8] c"\0A fatal error in DenseMtx_permuteRows(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DenseMtx_permuteRows(%p,%p)\0A irow = %d, maxnrow = %d\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in DenseMtx_permuteColumns(%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [73 x i8] c"\0A fatal error in DenseMtx_permuteColumns(%p,%p)\0A jcol = %d, maxncol = %d\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_permuteRows(%struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV) #0 {
  %a2 = alloca %struct._A2, align 8
  %maxnrow = alloca i32, align 4
  %nrow = alloca i32, align 4
  %oldToNew = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !48, metadata !83), !dbg !84
  tail call void @llvm.dbg.value(metadata %struct._IV* %oldToNewIV, i64 0, metadata !49, metadata !83), !dbg !85
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !86
  %2 = icmp eq %struct._IV* %oldToNewIV, null, !dbg !88
  %or.cond = or i1 %1, %2, !dbg !89
  br i1 %or.cond, label %3, label %6, !dbg !89

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !90, !tbaa !92
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV) #5, !dbg !96
  tail call void @exit(i32 -1) #6, !dbg !97
  unreachable, !dbg !97

; <label>:6                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !65, metadata !83), !dbg !98
  tail call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !67, metadata !83), !dbg !99
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #5, !dbg !100
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !65, metadata !83), !dbg !98
  %7 = load i32* %nrow, align 4, !dbg !101, !tbaa !103
  %8 = icmp slt i32 %7, 1, !dbg !105
  br i1 %8, label %33, label %9, !dbg !106

; <label>:9                                       ; preds = %6
  call void @llvm.dbg.value(metadata i32* %maxnrow, i64 0, metadata !64, metadata !83), !dbg !107
  call void @llvm.dbg.value(metadata i32** %oldToNew, i64 0, metadata !66, metadata !83), !dbg !108
  call void @IV_sizeAndEntries(%struct._IV* %oldToNewIV, i32* %maxnrow, i32** %oldToNew) #5, !dbg !109
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !62, metadata !83), !dbg !110
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !65, metadata !83), !dbg !98
  %10 = load i32* %nrow, align 4, !dbg !111, !tbaa !103
  %11 = icmp sgt i32 %10, 0, !dbg !114
  br i1 %11, label %.lr.ph, label %._crit_edge, !dbg !115

.lr.ph:                                           ; preds = %9
  %12 = load i32** %rowind, align 8, !dbg !116, !tbaa !92
  %13 = load i32** %oldToNew, align 8, !dbg !118, !tbaa !92
  br label %14, !dbg !115

; <label>:14                                      ; preds = %.lr.ph, %23
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %23 ]
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !67, metadata !83), !dbg !99
  %15 = getelementptr inbounds i32* %12, i64 %indvars.iv, !dbg !116
  %16 = load i32* %15, align 4, !dbg !116, !tbaa !103
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !63, metadata !83), !dbg !119
  %17 = icmp sgt i32 %16, -1, !dbg !120
  %18 = load i32* %maxnrow, align 4
  %19 = icmp slt i32 %16, %18, !dbg !122
  %or.cond3 = and i1 %17, %19, !dbg !123
  call void @llvm.dbg.value(metadata i32* %maxnrow, i64 0, metadata !64, metadata !83), !dbg !107
  br i1 %or.cond3, label %23, label %20, !dbg !123

; <label>:20                                      ; preds = %14
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !124, !tbaa !92
  call void @llvm.dbg.value(metadata i32* %maxnrow, i64 0, metadata !64, metadata !83), !dbg !107
  %22 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([70 x i8]* @.str1, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV, i32 %16, i32 %18) #5, !dbg !126
  call void @exit(i32 -1) #6, !dbg !127
  unreachable, !dbg !127

; <label>:23                                      ; preds = %14
  %24 = sext i32 %16 to i64, !dbg !118
  call void @llvm.dbg.value(metadata i32** %oldToNew, i64 0, metadata !66, metadata !83), !dbg !108
  %25 = getelementptr inbounds i32* %13, i64 %24, !dbg !118
  %26 = load i32* %25, align 4, !dbg !118, !tbaa !103
  store i32 %26, i32* %15, align 4, !dbg !128, !tbaa !103
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !115
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !65, metadata !83), !dbg !98
  %27 = load i32* %nrow, align 4, !dbg !111, !tbaa !103
  %28 = sext i32 %27 to i64, !dbg !114
  %29 = icmp slt i64 %indvars.iv.next, %28, !dbg !114
  br i1 %29, label %14, label %._crit_edge, !dbg !115

._crit_edge:                                      ; preds = %23, %9
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !50, metadata !83), !dbg !129
  call void @A2_setDefaultFields(%struct._A2* %a2) #5, !dbg !130
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !50, metadata !83), !dbg !129
  call void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #5, !dbg !131
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !65, metadata !83), !dbg !98
  %30 = load i32* %nrow, align 4, !dbg !132, !tbaa !103
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !67, metadata !83), !dbg !99
  %31 = load i32** %rowind, align 8, !dbg !133, !tbaa !92
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !50, metadata !83), !dbg !129
  %32 = call i32 @A2_sortRowsUp(%struct._A2* %a2, i32 %30, i32* %31) #5, !dbg !134
  br label %33, !dbg !135

; <label>:33                                      ; preds = %6, %._crit_edge
  ret void, !dbg !136
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @DenseMtx_rowIndices(%struct._DenseMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #3

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #3

; Function Attrs: optsize
declare void @DenseMtx_setA2(%struct._DenseMtx*, %struct._A2*) #3

; Function Attrs: optsize
declare i32 @A2_sortRowsUp(%struct._A2*, i32, i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_permuteColumns(%struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV) #0 {
  %a2 = alloca %struct._A2, align 8
  %maxncol = alloca i32, align 4
  %ncol = alloca i32, align 4
  %oldToNew = alloca i32*, align 8
  %colind = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !70, metadata !83), !dbg !137
  tail call void @llvm.dbg.value(metadata %struct._IV* %oldToNewIV, i64 0, metadata !71, metadata !83), !dbg !138
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !139
  %2 = icmp eq %struct._IV* %oldToNewIV, null, !dbg !141
  %or.cond = or i1 %1, %2, !dbg !142
  br i1 %or.cond, label %3, label %6, !dbg !142

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !143, !tbaa !92
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV) #5, !dbg !145
  tail call void @exit(i32 -1) #6, !dbg !146
  unreachable, !dbg !146

; <label>:6                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !76, metadata !83), !dbg !147
  tail call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !78, metadata !83), !dbg !148
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #5, !dbg !149
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !76, metadata !83), !dbg !147
  %7 = load i32* %ncol, align 4, !dbg !150, !tbaa !103
  %8 = icmp slt i32 %7, 1, !dbg !152
  br i1 %8, label %33, label %9, !dbg !153

; <label>:9                                       ; preds = %6
  call void @llvm.dbg.value(metadata i32* %maxncol, i64 0, metadata !75, metadata !83), !dbg !154
  call void @llvm.dbg.value(metadata i32** %oldToNew, i64 0, metadata !77, metadata !83), !dbg !155
  call void @IV_sizeAndEntries(%struct._IV* %oldToNewIV, i32* %maxncol, i32** %oldToNew) #5, !dbg !156
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !73, metadata !83), !dbg !157
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !76, metadata !83), !dbg !147
  %10 = load i32* %ncol, align 4, !dbg !158, !tbaa !103
  %11 = icmp sgt i32 %10, 0, !dbg !161
  br i1 %11, label %.lr.ph, label %._crit_edge, !dbg !162

.lr.ph:                                           ; preds = %9
  %12 = load i32** %colind, align 8, !dbg !163, !tbaa !92
  %13 = load i32** %oldToNew, align 8, !dbg !165, !tbaa !92
  br label %14, !dbg !162

; <label>:14                                      ; preds = %.lr.ph, %23
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %23 ]
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !78, metadata !83), !dbg !148
  %15 = getelementptr inbounds i32* %12, i64 %indvars.iv, !dbg !163
  %16 = load i32* %15, align 4, !dbg !163, !tbaa !103
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !74, metadata !83), !dbg !166
  %17 = icmp sgt i32 %16, -1, !dbg !167
  %18 = load i32* %maxncol, align 4
  %19 = icmp slt i32 %16, %18, !dbg !169
  %or.cond3 = and i1 %17, %19, !dbg !170
  call void @llvm.dbg.value(metadata i32* %maxncol, i64 0, metadata !75, metadata !83), !dbg !154
  br i1 %or.cond3, label %23, label %20, !dbg !170

; <label>:20                                      ; preds = %14
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !171, !tbaa !92
  call void @llvm.dbg.value(metadata i32* %maxncol, i64 0, metadata !75, metadata !83), !dbg !154
  %22 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([73 x i8]* @.str3, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV, i32 %16, i32 %18) #5, !dbg !173
  call void @exit(i32 -1) #6, !dbg !174
  unreachable, !dbg !174

; <label>:23                                      ; preds = %14
  %24 = sext i32 %16 to i64, !dbg !165
  call void @llvm.dbg.value(metadata i32** %oldToNew, i64 0, metadata !77, metadata !83), !dbg !155
  %25 = getelementptr inbounds i32* %13, i64 %24, !dbg !165
  %26 = load i32* %25, align 4, !dbg !165, !tbaa !103
  store i32 %26, i32* %15, align 4, !dbg !175, !tbaa !103
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !162
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !76, metadata !83), !dbg !147
  %27 = load i32* %ncol, align 4, !dbg !158, !tbaa !103
  %28 = sext i32 %27 to i64, !dbg !161
  %29 = icmp slt i64 %indvars.iv.next, %28, !dbg !161
  br i1 %29, label %14, label %._crit_edge, !dbg !162

._crit_edge:                                      ; preds = %23, %9
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !72, metadata !83), !dbg !176
  call void @A2_setDefaultFields(%struct._A2* %a2) #5, !dbg !177
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !72, metadata !83), !dbg !176
  call void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #5, !dbg !178
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !76, metadata !83), !dbg !147
  %30 = load i32* %ncol, align 4, !dbg !179, !tbaa !103
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !78, metadata !83), !dbg !148
  %31 = load i32** %colind, align 8, !dbg !180, !tbaa !92
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !72, metadata !83), !dbg !176
  %32 = call i32 @A2_sortColumnsUp(%struct._A2* %a2, i32 %30, i32* %31) #5, !dbg !181
  br label %33, !dbg !182

; <label>:33                                      ; preds = %6, %._crit_edge
  ret void, !dbg !183
}

; Function Attrs: optsize
declare void @DenseMtx_columnIndices(%struct._DenseMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @A2_sortColumnsUp(%struct._A2*, i32, i32*) #3

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
!llvm.module.flags = !{!79, !80, !81}
!llvm.ident = !{!82}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !68}
!6 = !DISubprogram(name: "DenseMtx_permuteRows", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, %struct._IV*)* @DenseMtx_permuteRows, variables: !47)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !38}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "DenseMtx", file: !11, line: 28, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../DenseMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DenseMtx", file: !11, line: 29, size: 704, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !28, !37}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !11, line: 30, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "rowid", scope: !12, file: !11, line: 31, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "colid", scope: !12, file: !11, line: 32, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nrow", scope: !12, file: !11, line: 33, baseType: !15, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ncol", scope: !12, file: !11, line: 34, baseType: !15, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !12, file: !11, line: 35, baseType: !15, size: 32, align: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !12, file: !11, line: 36, baseType: !15, size: 32, align: 32, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "rowind", scope: !12, file: !11, line: 37, baseType: !23, size: 64, align: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "colind", scope: !12, file: !11, line: 38, baseType: !23, size: 64, align: 64, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !12, file: !11, line: 39, baseType: !26, size: 64, align: 64, offset: 384)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !12, file: !11, line: 40, baseType: !29, size: 192, align: 64, offset: 448)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !30, line: 20, baseType: !31)
!30 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !30, line: 21, size: 192, align: 64, elements: !32)
!32 = !{!33, !34, !35, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !31, file: !30, line: 22, baseType: !15, size: 32, align: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !31, file: !30, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !31, file: !30, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !31, file: !30, line: 25, baseType: !26, size: 64, align: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !11, line: 41, baseType: !9, size: 64, align: 64, offset: 640)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !40, line: 20, baseType: !41)
!40 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !40, line: 21, size: 192, align: 64, elements: !42)
!42 = !{!43, !44, !45, !46}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !41, file: !40, line: 22, baseType: !15, size: 32, align: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !41, file: !40, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !41, file: !40, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !41, file: !40, line: 25, baseType: !23, size: 64, align: 64, offset: 128)
!47 = !{!48, !49, !50, !62, !63, !64, !65, !66, !67}
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !6, file: !1, line: 15, type: !9)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "oldToNewIV", arg: 2, scope: !6, file: !1, line: 16, type: !38)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !6, file: !1, line: 18, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "A2", file: !52, line: 49, baseType: !53)
!52 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../A2/A2.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_A2", file: !52, line: 41, size: 256, align: 64, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !52, line: 42, baseType: !15, size: 32, align: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "n1", scope: !53, file: !52, line: 43, baseType: !15, size: 32, align: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "n2", scope: !53, file: !52, line: 44, baseType: !15, size: 32, align: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !53, file: !52, line: 45, baseType: !15, size: 32, align: 32, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !53, file: !52, line: 46, baseType: !15, size: 32, align: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "nowned", scope: !53, file: !52, line: 47, baseType: !15, size: 32, align: 32, offset: 160)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !53, file: !52, line: 48, baseType: !26, size: 64, align: 64, offset: 192)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !6, file: !1, line: 19, type: !15)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irow", scope: !6, file: !1, line: 19, type: !15)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxnrow", scope: !6, file: !1, line: 19, type: !15)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !6, file: !1, line: 19, type: !15)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldToNew", scope: !6, file: !1, line: 20, type: !23)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowind", scope: !6, file: !1, line: 20, type: !23)
!68 = !DISubprogram(name: "DenseMtx_permuteColumns", scope: !1, file: !1, line: 71, type: !7, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, %struct._IV*)* @DenseMtx_permuteColumns, variables: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78}
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !68, file: !1, line: 72, type: !9)
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "oldToNewIV", arg: 2, scope: !68, file: !1, line: 73, type: !38)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !68, file: !1, line: 75, type: !51)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !68, file: !1, line: 76, type: !15)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcol", scope: !68, file: !1, line: 76, type: !15)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxncol", scope: !68, file: !1, line: 76, type: !15)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !68, file: !1, line: 76, type: !15)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldToNew", scope: !68, file: !1, line: 77, type: !23)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colind", scope: !68, file: !1, line: 77, type: !23)
!79 = !{i32 2, !"Dwarf Version", i32 2}
!80 = !{i32 2, !"Debug Info Version", i32 700000003}
!81 = !{i32 1, !"PIC Level", i32 2}
!82 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!83 = !DIExpression()
!84 = !DILocation(line: 15, column: 16, scope: !6)
!85 = !DILocation(line: 16, column: 16, scope: !6)
!86 = !DILocation(line: 26, column: 10, scope: !87)
!87 = distinct !DILexicalBlock(scope: !6, file: !1, line: 26, column: 6)
!88 = !DILocation(line: 26, column: 32, scope: !87)
!89 = !DILocation(line: 26, column: 18, scope: !87)
!90 = !DILocation(line: 27, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 26, column: 42)
!92 = !{!93, !93, i64 0}
!93 = !{!"any pointer", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !DILocation(line: 27, column: 4, scope: !91)
!97 = !DILocation(line: 29, column: 4, scope: !91)
!98 = !DILocation(line: 19, column: 26, scope: !6)
!99 = !DILocation(line: 20, column: 19, scope: !6)
!100 = !DILocation(line: 31, column: 1, scope: !6)
!101 = !DILocation(line: 32, column: 6, scope: !102)
!102 = distinct !DILexicalBlock(scope: !6, file: !1, line: 32, column: 6)
!103 = !{!104, !104, i64 0}
!104 = !{!"int", !94, i64 0}
!105 = !DILocation(line: 32, column: 11, scope: !102)
!106 = !DILocation(line: 32, column: 6, scope: !6)
!107 = !DILocation(line: 19, column: 17, scope: !6)
!108 = !DILocation(line: 20, column: 8, scope: !6)
!109 = !DILocation(line: 40, column: 1, scope: !6)
!110 = !DILocation(line: 19, column: 7, scope: !6)
!111 = !DILocation(line: 41, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 41, column: 1)
!113 = distinct !DILexicalBlock(scope: !6, file: !1, line: 41, column: 1)
!114 = !DILocation(line: 41, column: 19, scope: !112)
!115 = !DILocation(line: 41, column: 1, scope: !113)
!116 = !DILocation(line: 42, column: 11, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 41, column: 35)
!118 = !DILocation(line: 49, column: 17, scope: !117)
!119 = !DILocation(line: 19, column: 11, scope: !6)
!120 = !DILocation(line: 43, column: 14, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 43, column: 9)
!122 = !DILocation(line: 43, column: 26, scope: !121)
!123 = !DILocation(line: 43, column: 18, scope: !121)
!124 = !DILocation(line: 44, column: 15, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 43, column: 39)
!126 = !DILocation(line: 44, column: 7, scope: !125)
!127 = !DILocation(line: 47, column: 7, scope: !125)
!128 = !DILocation(line: 49, column: 15, scope: !117)
!129 = !DILocation(line: 18, column: 7, scope: !6)
!130 = !DILocation(line: 56, column: 1, scope: !6)
!131 = !DILocation(line: 57, column: 1, scope: !6)
!132 = !DILocation(line: 58, column: 20, scope: !6)
!133 = !DILocation(line: 58, column: 26, scope: !6)
!134 = !DILocation(line: 58, column: 1, scope: !6)
!135 = !DILocation(line: 60, column: 1, scope: !6)
!136 = !DILocation(line: 60, column: 10, scope: !6)
!137 = !DILocation(line: 72, column: 16, scope: !68)
!138 = !DILocation(line: 73, column: 17, scope: !68)
!139 = !DILocation(line: 83, column: 10, scope: !140)
!140 = distinct !DILexicalBlock(scope: !68, file: !1, line: 83, column: 6)
!141 = !DILocation(line: 83, column: 32, scope: !140)
!142 = !DILocation(line: 83, column: 18, scope: !140)
!143 = !DILocation(line: 84, column: 12, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 83, column: 42)
!145 = !DILocation(line: 84, column: 4, scope: !144)
!146 = !DILocation(line: 86, column: 4, scope: !144)
!147 = !DILocation(line: 76, column: 26, scope: !68)
!148 = !DILocation(line: 77, column: 19, scope: !68)
!149 = !DILocation(line: 88, column: 1, scope: !68)
!150 = !DILocation(line: 89, column: 6, scope: !151)
!151 = distinct !DILexicalBlock(scope: !68, file: !1, line: 89, column: 6)
!152 = !DILocation(line: 89, column: 11, scope: !151)
!153 = !DILocation(line: 89, column: 6, scope: !68)
!154 = !DILocation(line: 76, column: 17, scope: !68)
!155 = !DILocation(line: 77, column: 8, scope: !68)
!156 = !DILocation(line: 97, column: 1, scope: !68)
!157 = !DILocation(line: 76, column: 7, scope: !68)
!158 = !DILocation(line: 98, column: 21, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !1, line: 98, column: 1)
!160 = distinct !DILexicalBlock(scope: !68, file: !1, line: 98, column: 1)
!161 = !DILocation(line: 98, column: 19, scope: !159)
!162 = !DILocation(line: 98, column: 1, scope: !160)
!163 = !DILocation(line: 99, column: 11, scope: !164)
!164 = distinct !DILexicalBlock(scope: !159, file: !1, line: 98, column: 35)
!165 = !DILocation(line: 107, column: 17, scope: !164)
!166 = !DILocation(line: 76, column: 11, scope: !68)
!167 = !DILocation(line: 100, column: 14, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 100, column: 9)
!169 = !DILocation(line: 100, column: 26, scope: !168)
!170 = !DILocation(line: 100, column: 18, scope: !168)
!171 = !DILocation(line: 101, column: 15, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !1, line: 100, column: 39)
!173 = !DILocation(line: 101, column: 7, scope: !172)
!174 = !DILocation(line: 105, column: 7, scope: !172)
!175 = !DILocation(line: 107, column: 15, scope: !164)
!176 = !DILocation(line: 75, column: 7, scope: !68)
!177 = !DILocation(line: 114, column: 1, scope: !68)
!178 = !DILocation(line: 115, column: 1, scope: !68)
!179 = !DILocation(line: 116, column: 23, scope: !68)
!180 = !DILocation(line: 116, column: 29, scope: !68)
!181 = !DILocation(line: 116, column: 1, scope: !68)
!182 = !DILocation(line: 118, column: 1, scope: !68)
!183 = !DILocation(line: 118, column: 10, scope: !68)
