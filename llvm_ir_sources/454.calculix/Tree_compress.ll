; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [51 x i8] c"\0A fatal error in Tree_fundChainMap(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [50 x i8] c"\0A fatal error in Tree_compress(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [61 x i8] c"\0A fatal error in Tree_compress(%p,%p)\0A map[%d] = %d, N = %d\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @Tree_fundChainMap(%struct._Tree* %tree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !31, metadata !57), !dbg !58
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !59
  br i1 %1, label %6, label %2, !dbg !61

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !62
  %4 = load i32* %3, align 4, !dbg !62, !tbaa !63
  %5 = icmp slt i32 %4, 1, !dbg !69
  br i1 %5, label %6, label %9, !dbg !70

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !71, !tbaa !73
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !74
  tail call void @exit(i32 -1) #6, !dbg !75
  unreachable, !dbg !75

; <label>:9                                       ; preds = %2
  %10 = tail call %struct._IV* @IV_new() #5, !dbg !76
  tail call void @llvm.dbg.value(metadata %struct._IV* %10, i64 0, metadata !36, metadata !57), !dbg !77
  %11 = load i32* %3, align 4, !dbg !78, !tbaa !63
  tail call void @IV_init(%struct._IV* %10, i32 %11, i32* null) #5, !dbg !79
  %12 = tail call i32* @IV_entries(%struct._IV* %10) #5, !dbg !80
  tail call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !35, metadata !57), !dbg !81
  %13 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !82
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !34, metadata !57), !dbg !84
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !32, metadata !57), !dbg !85
  %14 = icmp eq i32 %13, -1, !dbg !86
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !88

.lr.ph:                                           ; preds = %9
  %15 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !89
  %16 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !92
  br label %17, !dbg !88

; <label>:17                                      ; preds = %.lr.ph, %36
  %nfc.02 = phi i32 [ 0, %.lr.ph ], [ %nfc.1, %36 ]
  %v.01 = phi i32 [ %13, %.lr.ph ], [ %37, %36 ]
  %18 = sext i32 %v.01 to i64, !dbg !93
  %19 = load i32** %15, align 8, !dbg !89, !tbaa !94
  %20 = getelementptr inbounds i32* %19, i64 %18, !dbg !93
  %21 = load i32* %20, align 4, !dbg !93, !tbaa !95
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !33, metadata !57), !dbg !96
  %22 = icmp eq i32 %21, -1, !dbg !97
  br i1 %22, label %29, label %23, !dbg !98

; <label>:23                                      ; preds = %17
  %24 = sext i32 %21 to i64, !dbg !99
  %25 = load i32** %16, align 8, !dbg !92, !tbaa !100
  %26 = getelementptr inbounds i32* %25, i64 %24, !dbg !99
  %27 = load i32* %26, align 4, !dbg !99, !tbaa !95
  %28 = icmp eq i32 %27, -1, !dbg !101
  br i1 %28, label %32, label %29, !dbg !102

; <label>:29                                      ; preds = %23, %17
  %30 = add nsw i32 %nfc.02, 1, !dbg !103
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !32, metadata !57), !dbg !85
  %31 = getelementptr inbounds i32* %12, i64 %18, !dbg !105
  store i32 %nfc.02, i32* %31, align 4, !dbg !106, !tbaa !95
  br label %36, !dbg !107

; <label>:32                                      ; preds = %23
  %33 = getelementptr inbounds i32* %12, i64 %24, !dbg !108
  %34 = load i32* %33, align 4, !dbg !108, !tbaa !95
  %35 = getelementptr inbounds i32* %12, i64 %18, !dbg !110
  store i32 %34, i32* %35, align 4, !dbg !111, !tbaa !95
  br label %36

; <label>:36                                      ; preds = %29, %32
  %nfc.1 = phi i32 [ %30, %29 ], [ %nfc.02, %32 ]
  %37 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.01) #5, !dbg !112
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !34, metadata !57), !dbg !84
  %38 = icmp eq i32 %37, -1, !dbg !86
  br i1 %38, label %._crit_edge, label %17, !dbg !88

._crit_edge:                                      ; preds = %36, %9
  ret %struct._IV* %10, !dbg !113
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct._Tree* @Tree_compress(%struct._Tree* %tree, %struct._IV* %mapIV) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !41, metadata !57), !dbg !114
  tail call void @llvm.dbg.value(metadata %struct._IV* %mapIV, i64 0, metadata !42, metadata !57), !dbg !115
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !116
  br i1 %1, label %13, label %2, !dbg !118

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !119
  %4 = load i32* %3, align 4, !dbg !119, !tbaa !63
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !43, metadata !57), !dbg !120
  %5 = icmp slt i32 %4, 1, !dbg !121
  %6 = icmp eq %struct._IV* %mapIV, null, !dbg !122
  %or.cond = or i1 %6, %5, !dbg !123
  br i1 %or.cond, label %13, label %7, !dbg !123

; <label>:7                                       ; preds = %2
  %8 = tail call i32 @IV_size(%struct._IV* %mapIV) #5, !dbg !124
  %9 = icmp eq i32 %4, %8, !dbg !125
  br i1 %9, label %10, label %13, !dbg !126

; <label>:10                                      ; preds = %7
  %11 = tail call i32* @IV_entries(%struct._IV* %mapIV) #5, !dbg !127
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !51, metadata !57), !dbg !128
  %12 = icmp eq i32* %11, null, !dbg !129
  br i1 %12, label %13, label %16, !dbg !130

; <label>:13                                      ; preds = %7, %10, %2, %0
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !131, !tbaa !73
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, %struct._IV* %mapIV) #5, !dbg !133
  tail call void @exit(i32 -1) #6, !dbg !134
  unreachable, !dbg !134

; <label>:16                                      ; preds = %10
  %17 = tail call i32 @IV_max(%struct._IV* %mapIV) #5, !dbg !135
  %18 = add nsw i32 %17, 1, !dbg !136
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !44, metadata !57), !dbg !137
  %19 = tail call %struct._Tree* @Tree_new() #5, !dbg !138
  tail call void @llvm.dbg.value(metadata %struct._Tree* %19, i64 0, metadata !52, metadata !57), !dbg !139
  tail call void @Tree_init1(%struct._Tree* %19, i32 %18) #5, !dbg !140
  %20 = tail call i32* @IVinit(i32 %18, i32 -1) #5, !dbg !141
  tail call void @llvm.dbg.value(metadata i32* %20, i64 0, metadata !49, metadata !57), !dbg !142
  %21 = tail call i32* @IVinit(i32 %4, i32 -1) #5, !dbg !143
  tail call void @llvm.dbg.value(metadata i32* %21, i64 0, metadata !50, metadata !57), !dbg !144
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !47, metadata !57), !dbg !145
  %22 = icmp sgt i32 %4, 0, !dbg !146
  br i1 %22, label %.lr.ph13, label %.preheader, !dbg !149

.lr.ph13:                                         ; preds = %16
  %23 = sext i32 %4 to i64, !dbg !149
  br label %28, !dbg !149

.preheader:                                       ; preds = %37, %16
  %24 = icmp sgt i32 %17, -1, !dbg !150
  br i1 %24, label %.lr.ph10, label %._crit_edge, !dbg !153

.lr.ph10:                                         ; preds = %.preheader
  %25 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !154
  %26 = getelementptr inbounds %struct._Tree* %19, i64 0, i32 2, !dbg !160
  %27 = sext i32 %18 to i64, !dbg !153
  br label %44, !dbg !153

; <label>:28                                      ; preds = %.lr.ph13, %37
  %indvars.iv18 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next19, %37 ]
  %29 = getelementptr inbounds i32* %11, i64 %indvars.iv18, !dbg !162
  %30 = load i32* %29, align 4, !dbg !162, !tbaa !95
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !48, metadata !57), !dbg !165
  %31 = icmp sgt i32 %30, -1, !dbg !166
  %32 = icmp slt i32 %30, %18, !dbg !167
  %or.cond2 = and i1 %31, %32, !dbg !168
  br i1 %or.cond2, label %37, label %33, !dbg !168

; <label>:33                                      ; preds = %28
  %34 = trunc i64 %indvars.iv18 to i32, !dbg !169
  %35 = load %struct.__sFILE** @__stderrp, align 8, !dbg !169, !tbaa !73
  %36 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i32* %11, i32 %34, i32 %30, i32 %18) #5, !dbg !171
  tail call void @exit(i32 -1) #6, !dbg !172
  unreachable, !dbg !172

; <label>:37                                      ; preds = %28
  %38 = sext i32 %30 to i64, !dbg !173
  %39 = getelementptr inbounds i32* %20, i64 %38, !dbg !173
  %40 = load i32* %39, align 4, !dbg !173, !tbaa !95
  %41 = getelementptr inbounds i32* %21, i64 %indvars.iv18, !dbg !174
  store i32 %40, i32* %41, align 4, !dbg !175, !tbaa !95
  %42 = trunc i64 %indvars.iv18 to i32, !dbg !176
  store i32 %42, i32* %39, align 4, !dbg !176, !tbaa !95
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1, !dbg !149
  %43 = icmp slt i64 %indvars.iv.next19, %23, !dbg !146
  br i1 %43, label %28, label %.preheader, !dbg !149

; <label>:44                                      ; preds = %.lr.ph10, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next, %.loopexit ]
  %45 = getelementptr inbounds i32* %20, i64 %indvars.iv, !dbg !177
  %u.05 = load i32* %45, align 4, !dbg !177
  %46 = icmp eq i32 %u.05, -1, !dbg !178
  br i1 %46, label %.loopexit, label %.lr.ph, !dbg !179

.lr.ph:                                           ; preds = %44
  %47 = load i32** %25, align 8, !dbg !154, !tbaa !180
  br label %48, !dbg !179

; <label>:48                                      ; preds = %.lr.ph, %65
  %u.06 = phi i32 [ %u.05, %.lr.ph ], [ %u.0, %65 ]
  %49 = sext i32 %u.06 to i64, !dbg !181
  %50 = getelementptr inbounds i32* %47, i64 %49, !dbg !181
  %51 = load i32* %50, align 4, !dbg !181, !tbaa !95
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !47, metadata !57), !dbg !145
  %52 = icmp eq i32 %51, -1, !dbg !182
  br i1 %52, label %53, label %56, !dbg !183

; <label>:53                                      ; preds = %48
  %54 = load i32** %26, align 8, !dbg !160, !tbaa !180
  %55 = getelementptr inbounds i32* %54, i64 %indvars.iv, !dbg !184
  store i32 -1, i32* %55, align 4, !dbg !185, !tbaa !95
  br label %.loopexit, !dbg !186

; <label>:56                                      ; preds = %48
  %57 = sext i32 %51 to i64, !dbg !187
  %58 = getelementptr inbounds i32* %11, i64 %57, !dbg !187
  %59 = load i32* %58, align 4, !dbg !187, !tbaa !95
  tail call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !48, metadata !57), !dbg !165
  %60 = trunc i64 %indvars.iv to i32, !dbg !189
  %61 = icmp eq i32 %59, %60, !dbg !189
  br i1 %61, label %65, label %62, !dbg !190

; <label>:62                                      ; preds = %56
  %63 = load i32** %26, align 8, !dbg !191, !tbaa !180
  %64 = getelementptr inbounds i32* %63, i64 %indvars.iv, !dbg !193
  store i32 %59, i32* %64, align 4, !dbg !194, !tbaa !95
  br label %.loopexit, !dbg !195

; <label>:65                                      ; preds = %56
  %66 = getelementptr inbounds i32* %21, i64 %49, !dbg !196
  %u.0 = load i32* %66, align 4, !dbg !177
  %67 = icmp eq i32 %u.0, -1, !dbg !178
  br i1 %67, label %.loopexit, label %48, !dbg !179

.loopexit:                                        ; preds = %65, %44, %53, %62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !153
  %68 = icmp slt i64 %indvars.iv.next, %27, !dbg !150
  br i1 %68, label %44, label %._crit_edge, !dbg !153

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  tail call void @Tree_setFchSibRoot(%struct._Tree* %19) #5, !dbg !197
  tail call void @IVfree(i32* %20) #5, !dbg !198
  tail call void @IVfree(i32* %21) #5, !dbg !199
  ret %struct._Tree* %19, !dbg !200
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @IV_max(%struct._IV*) #3

; Function Attrs: optsize
declare %struct._Tree* @Tree_new() #3

; Function Attrs: optsize
declare void @Tree_init1(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @Tree_setFchSibRoot(%struct._Tree*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

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
!llvm.module.flags = !{!53, !54, !55}
!llvm.ident = !{!56}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !37}
!6 = !DISubprogram(name: "Tree_fundChainMap", scope: !1, file: !1, line: 17, type: !7, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._Tree*)* @Tree_fundChainMap, variables: !30)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !20}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !11, line: 20, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !11, line: 21, size: 192, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !12, file: !11, line: 22, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !12, file: !11, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !12, file: !11, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !12, file: !11, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tree", file: !22, line: 15, baseType: !23)
!22 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../Tree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Tree", file: !22, line: 16, size: 256, align: 64, elements: !24)
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !23, file: !22, line: 17, baseType: !15, size: 32, align: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !23, file: !22, line: 18, baseType: !15, size: 32, align: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !23, file: !22, line: 19, baseType: !19, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !23, file: !22, line: 20, baseType: !19, size: 64, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !23, file: !22, line: 21, baseType: !19, size: 64, align: 64, offset: 192)
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !6, file: !1, line: 18, type: !20)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nfc", scope: !6, file: !1, line: 20, type: !15)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !6, file: !1, line: 20, type: !15)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !6, file: !1, line: 20, type: !15)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !6, file: !1, line: 21, type: !19)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapIV", scope: !6, file: !1, line: 22, type: !9)
!37 = !DISubprogram(name: "Tree_compress", scope: !1, file: !1, line: 72, type: !38, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Tree* (%struct._Tree*, %struct._IV*)* @Tree_compress, variables: !40)
!38 = !DISubroutineType(types: !39)
!39 = !{!20, !20, !9}
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !37, file: !1, line: 73, type: !20)
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mapIV", arg: 2, scope: !37, file: !1, line: 74, type: !9)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !37, file: !1, line: 76, type: !15)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "N", scope: !37, file: !1, line: 76, type: !15)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !37, file: !1, line: 76, type: !15)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "U", scope: !37, file: !1, line: 76, type: !15)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !37, file: !1, line: 76, type: !15)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "V", scope: !37, file: !1, line: 76, type: !15)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "head", scope: !37, file: !1, line: 77, type: !19)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "link", scope: !37, file: !1, line: 77, type: !19)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !37, file: !1, line: 77, type: !19)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tree2", scope: !37, file: !1, line: 78, type: !20)
!53 = !{i32 2, !"Dwarf Version", i32 2}
!54 = !{i32 2, !"Debug Info Version", i32 700000003}
!55 = !{i32 1, !"PIC Level", i32 2}
!56 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!57 = !DIExpression()
!58 = !DILocation(line: 18, column: 12, scope: !6)
!59 = !DILocation(line: 28, column: 11, scope: !60)
!60 = distinct !DILexicalBlock(scope: !6, file: !1, line: 28, column: 6)
!61 = !DILocation(line: 28, column: 19, scope: !60)
!62 = !DILocation(line: 28, column: 28, scope: !60)
!63 = !{!64, !65, i64 0}
!64 = !{!"_Tree", !65, i64 0, !65, i64 4, !68, i64 8, !68, i64 16, !68, i64 24}
!65 = !{!"int", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !{!"any pointer", !66, i64 0}
!69 = !DILocation(line: 28, column: 30, scope: !60)
!70 = !DILocation(line: 28, column: 6, scope: !6)
!71 = !DILocation(line: 29, column: 12, scope: !72)
!72 = distinct !DILexicalBlock(scope: !60, file: !1, line: 28, column: 37)
!73 = !{!68, !68, i64 0}
!74 = !DILocation(line: 29, column: 4, scope: !72)
!75 = !DILocation(line: 31, column: 4, scope: !72)
!76 = !DILocation(line: 33, column: 9, scope: !6)
!77 = !DILocation(line: 22, column: 8, scope: !6)
!78 = !DILocation(line: 34, column: 22, scope: !6)
!79 = !DILocation(line: 34, column: 1, scope: !6)
!80 = !DILocation(line: 35, column: 7, scope: !6)
!81 = !DILocation(line: 21, column: 8, scope: !6)
!82 = !DILocation(line: 36, column: 11, scope: !83)
!83 = distinct !DILexicalBlock(scope: !6, file: !1, line: 36, column: 1)
!84 = !DILocation(line: 20, column: 15, scope: !6)
!85 = !DILocation(line: 20, column: 7, scope: !6)
!86 = !DILocation(line: 37, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 36, column: 1)
!88 = !DILocation(line: 36, column: 1, scope: !83)
!89 = !DILocation(line: 39, column: 20, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 39, column: 9)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 38, column: 38)
!92 = !DILocation(line: 39, column: 43, scope: !90)
!93 = !DILocation(line: 39, column: 14, scope: !90)
!94 = !{!64, !68, i64 16}
!95 = !{!65, !65, i64 0}
!96 = !DILocation(line: 20, column: 12, scope: !6)
!97 = !DILocation(line: 39, column: 28, scope: !90)
!98 = !DILocation(line: 39, column: 34, scope: !90)
!99 = !DILocation(line: 39, column: 37, scope: !90)
!100 = !{!64, !68, i64 24}
!101 = !DILocation(line: 39, column: 50, scope: !90)
!102 = !DILocation(line: 39, column: 9, scope: !91)
!103 = !DILocation(line: 45, column: 19, scope: !104)
!104 = distinct !DILexicalBlock(scope: !90, file: !1, line: 39, column: 58)
!105 = !DILocation(line: 45, column: 7, scope: !104)
!106 = !DILocation(line: 45, column: 14, scope: !104)
!107 = !DILocation(line: 46, column: 4, scope: !104)
!108 = !DILocation(line: 52, column: 16, scope: !109)
!109 = distinct !DILexicalBlock(scope: !90, file: !1, line: 46, column: 11)
!110 = !DILocation(line: 52, column: 7, scope: !109)
!111 = !DILocation(line: 52, column: 14, scope: !109)
!112 = !DILocation(line: 38, column: 11, scope: !87)
!113 = !DILocation(line: 55, column: 1, scope: !6)
!114 = !DILocation(line: 73, column: 12, scope: !37)
!115 = !DILocation(line: 74, column: 12, scope: !37)
!116 = !DILocation(line: 84, column: 12, scope: !117)
!117 = distinct !DILexicalBlock(scope: !37, file: !1, line: 84, column: 7)
!118 = !DILocation(line: 85, column: 4, scope: !117)
!119 = !DILocation(line: 85, column: 18, scope: !117)
!120 = !DILocation(line: 76, column: 8, scope: !37)
!121 = !DILocation(line: 85, column: 21, scope: !117)
!122 = !DILocation(line: 86, column: 13, scope: !117)
!123 = !DILocation(line: 86, column: 4, scope: !117)
!124 = !DILocation(line: 87, column: 12, scope: !117)
!125 = !DILocation(line: 87, column: 9, scope: !117)
!126 = !DILocation(line: 88, column: 4, scope: !117)
!127 = !DILocation(line: 88, column: 14, scope: !117)
!128 = !DILocation(line: 77, column: 23, scope: !37)
!129 = !DILocation(line: 88, column: 33, scope: !117)
!130 = !DILocation(line: 84, column: 7, scope: !37)
!131 = !DILocation(line: 89, column: 12, scope: !132)
!132 = distinct !DILexicalBlock(scope: !117, file: !1, line: 88, column: 43)
!133 = !DILocation(line: 89, column: 4, scope: !132)
!134 = !DILocation(line: 91, column: 4, scope: !132)
!135 = !DILocation(line: 98, column: 9, scope: !37)
!136 = !DILocation(line: 98, column: 7, scope: !37)
!137 = !DILocation(line: 76, column: 11, scope: !37)
!138 = !DILocation(line: 99, column: 9, scope: !37)
!139 = !DILocation(line: 78, column: 9, scope: !37)
!140 = !DILocation(line: 100, column: 1, scope: !37)
!141 = !DILocation(line: 106, column: 8, scope: !37)
!142 = !DILocation(line: 77, column: 9, scope: !37)
!143 = !DILocation(line: 107, column: 8, scope: !37)
!144 = !DILocation(line: 77, column: 16, scope: !37)
!145 = !DILocation(line: 76, column: 20, scope: !37)
!146 = !DILocation(line: 108, column: 17, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 108, column: 1)
!148 = distinct !DILexicalBlock(scope: !37, file: !1, line: 108, column: 1)
!149 = !DILocation(line: 108, column: 1, scope: !148)
!150 = !DILocation(line: 122, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 122, column: 1)
!152 = distinct !DILexicalBlock(scope: !37, file: !1, line: 122, column: 1)
!153 = !DILocation(line: 122, column: 1, scope: !152)
!154 = !DILocation(line: 124, column: 23, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 124, column: 12)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 123, column: 48)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 123, column: 4)
!158 = distinct !DILexicalBlock(scope: !159, file: !1, line: 123, column: 4)
!159 = distinct !DILexicalBlock(scope: !151, file: !1, line: 122, column: 29)
!160 = !DILocation(line: 125, column: 17, scope: !161)
!161 = distinct !DILexicalBlock(scope: !155, file: !1, line: 124, column: 39)
!162 = !DILocation(line: 109, column: 14, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !1, line: 109, column: 9)
!164 = distinct !DILexicalBlock(scope: !147, file: !1, line: 108, column: 29)
!165 = !DILocation(line: 76, column: 23, scope: !37)
!166 = !DILocation(line: 109, column: 22, scope: !163)
!167 = !DILocation(line: 109, column: 31, scope: !163)
!168 = !DILocation(line: 109, column: 26, scope: !163)
!169 = !DILocation(line: 110, column: 15, scope: !170)
!170 = distinct !DILexicalBlock(scope: !163, file: !1, line: 109, column: 38)
!171 = !DILocation(line: 110, column: 7, scope: !170)
!172 = !DILocation(line: 112, column: 7, scope: !170)
!173 = !DILocation(line: 114, column: 14, scope: !164)
!174 = !DILocation(line: 114, column: 4, scope: !164)
!175 = !DILocation(line: 114, column: 12, scope: !164)
!176 = !DILocation(line: 115, column: 12, scope: !164)
!177 = !DILocation(line: 123, column: 14, scope: !158)
!178 = !DILocation(line: 123, column: 26, scope: !157)
!179 = !DILocation(line: 123, column: 4, scope: !158)
!180 = !{!64, !68, i64 8}
!181 = !DILocation(line: 124, column: 17, scope: !155)
!182 = !DILocation(line: 124, column: 31, scope: !155)
!183 = !DILocation(line: 124, column: 12, scope: !156)
!184 = !DILocation(line: 125, column: 10, scope: !161)
!185 = !DILocation(line: 125, column: 24, scope: !161)
!186 = !DILocation(line: 126, column: 10, scope: !161)
!187 = !DILocation(line: 127, column: 24, scope: !188)
!188 = distinct !DILexicalBlock(scope: !155, file: !1, line: 127, column: 19)
!189 = !DILocation(line: 127, column: 32, scope: !188)
!190 = !DILocation(line: 127, column: 19, scope: !155)
!191 = !DILocation(line: 128, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 127, column: 39)
!193 = !DILocation(line: 128, column: 10, scope: !192)
!194 = !DILocation(line: 128, column: 24, scope: !192)
!195 = !DILocation(line: 129, column: 10, scope: !192)
!196 = !DILocation(line: 123, column: 38, scope: !157)
!197 = !DILocation(line: 133, column: 1, scope: !37)
!198 = !DILocation(line: 139, column: 1, scope: !37)
!199 = !DILocation(line: 140, column: 1, scope: !37)
!200 = !DILocation(line: 142, column: 1, scope: !37)
