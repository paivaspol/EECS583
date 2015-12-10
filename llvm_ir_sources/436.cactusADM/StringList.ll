; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.uStringList = type { i32, %struct.iInternalStringList*, %struct.iInternalStringList*, %struct.iInternalStringList* }
%struct.iInternalStringList = type { %struct.iInternalStringList*, i8* }

@.str = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/util/StringList.c,v 1.3 2001/09/01 10:48:39 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_StringList_c() #0 {
  ret i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), !dbg !62
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.uStringList* @Util_StringListCreate(i32 %size) #1 {
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !31, metadata !63), !dbg !64
  %1 = tail call i8* @malloc(i64 32) #5, !dbg !65
  %2 = bitcast i8* %1 to %struct.uStringList*, !dbg !66
  tail call void @llvm.dbg.value(metadata %struct.uStringList* %2, i64 0, metadata !32, metadata !63), !dbg !67
  %3 = icmp eq i8* %1, null, !dbg !68
  br i1 %3, label %13, label %4, !dbg !70

; <label>:4                                       ; preds = %0
  %5 = add nsw i32 %size, 1, !dbg !71
  %6 = sext i32 %5 to i64, !dbg !73
  %7 = tail call i8* @calloc(i64 %6, i64 16) #5, !dbg !74
  %8 = getelementptr inbounds i8* %1, i64 8, !dbg !75
  %9 = bitcast i8* %8 to i8**, !dbg !76
  store i8* %7, i8** %9, align 8, !dbg !76, !tbaa !77
  %10 = getelementptr inbounds i8* %1, i64 24, !dbg !83
  %11 = bitcast i8* %10 to %struct.iInternalStringList**, !dbg !83
  store %struct.iInternalStringList* null, %struct.iInternalStringList** %11, align 8, !dbg !84, !tbaa !85
  %12 = bitcast i8* %1 to i32*, !dbg !86
  store i32 0, i32* %12, align 4, !dbg !87, !tbaa !88
  br label %13, !dbg !89

; <label>:13                                      ; preds = %0, %4
  ret %struct.uStringList* %2, !dbg !90
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_StringListAdd(%struct.uStringList* nocapture %list, i8* %item) #1 {
  tail call void @llvm.dbg.value(metadata %struct.uStringList* %list, i64 0, metadata !37, metadata !63), !dbg !91
  tail call void @llvm.dbg.value(metadata i8* %item, i64 0, metadata !38, metadata !63), !dbg !92
  %1 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 0, !dbg !93
  %2 = load i32* %1, align 4, !dbg !93, !tbaa !88
  %3 = icmp eq i32 %2, 0, !dbg !95
  br i1 %3, label %4, label %16, !dbg !96

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 1, !dbg !97
  %6 = bitcast %struct.iInternalStringList** %5 to i64*, !dbg !97
  %7 = load i64* %6, align 8, !dbg !97, !tbaa !77
  %8 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 2, !dbg !99
  %9 = bitcast %struct.iInternalStringList** %8 to i64*, !dbg !100
  store i64 %7, i64* %9, align 8, !dbg !100, !tbaa !101
  %10 = tail call i8* @Util_Strdup(i8* %item) #5, !dbg !102
  %11 = load %struct.iInternalStringList** %8, align 8, !dbg !103, !tbaa !101
  %12 = getelementptr inbounds %struct.iInternalStringList* %11, i64 0, i32 1, !dbg !104
  store i8* %10, i8** %12, align 8, !dbg !105, !tbaa !106
  %13 = getelementptr inbounds %struct.iInternalStringList* %11, i64 0, i32 0, !dbg !108
  store %struct.iInternalStringList* null, %struct.iInternalStringList** %13, align 8, !dbg !109, !tbaa !110
  %14 = load i32* %1, align 4, !dbg !111, !tbaa !88
  %15 = add nsw i32 %14, 1, !dbg !111
  store i32 %15, i32* %1, align 4, !dbg !111, !tbaa !88
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !39, metadata !63), !dbg !112
  br label %.thread, !dbg !113

; <label>:16                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !39, metadata !63), !dbg !112
  tail call void @llvm.dbg.value(metadata %struct.iInternalStringList* null, i64 0, metadata !42, metadata !63), !dbg !114
  %17 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 2, !dbg !115
  %this.05 = load %struct.iInternalStringList** %17, align 8, !dbg !115
  %18 = icmp eq %struct.iInternalStringList* %this.05, null, !dbg !118
  br i1 %18, label %._crit_edge, label %.lr.ph, !dbg !118

.lr.ph:                                           ; preds = %16, %40
  %this.07 = phi %struct.iInternalStringList* [ %this.0, %40 ], [ %this.05, %16 ]
  %prev.06 = phi %struct.iInternalStringList* [ %this.07, %40 ], [ null, %16 ]
  %19 = getelementptr inbounds %struct.iInternalStringList* %this.07, i64 0, i32 1, !dbg !119
  %20 = load i8** %19, align 8, !dbg !119, !tbaa !106
  %21 = tail call i32 @Util_StrCmpi(i8* %item, i8* %20) #5, !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !40, metadata !63), !dbg !124
  %22 = icmp slt i32 %21, 0, !dbg !125
  br i1 %22, label %23, label %38, !dbg !126

; <label>:23                                      ; preds = %.lr.ph
  %24 = tail call i8* @Util_Strdup(i8* %item) #5, !dbg !127
  %25 = load i32* %1, align 4, !dbg !129, !tbaa !88
  %26 = sext i32 %25 to i64, !dbg !130
  %27 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 1, !dbg !131
  %28 = load %struct.iInternalStringList** %27, align 8, !dbg !131, !tbaa !77
  %29 = getelementptr inbounds %struct.iInternalStringList* %28, i64 %26, i32 1, !dbg !132
  store i8* %24, i8** %29, align 8, !dbg !133, !tbaa !106
  %30 = getelementptr inbounds %struct.iInternalStringList* %28, i64 %26, i32 0, !dbg !134
  store %struct.iInternalStringList* %this.07, %struct.iInternalStringList** %30, align 8, !dbg !135, !tbaa !110
  %31 = icmp eq %struct.iInternalStringList* %prev.06, null, !dbg !136
  %32 = getelementptr inbounds %struct.iInternalStringList* %28, i64 %26, !dbg !138
  br i1 %31, label %35, label %33, !dbg !140

; <label>:33                                      ; preds = %23
  %34 = getelementptr inbounds %struct.iInternalStringList* %prev.06, i64 0, i32 0, !dbg !141
  store %struct.iInternalStringList* %32, %struct.iInternalStringList** %34, align 8, !dbg !142, !tbaa !110
  br label %36, !dbg !143

; <label>:35                                      ; preds = %23
  store %struct.iInternalStringList* %32, %struct.iInternalStringList** %17, align 8, !dbg !144, !tbaa !101
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = add nsw i32 %25, 1, !dbg !146
  store i32 %37, i32* %1, align 4, !dbg !146, !tbaa !88
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !39, metadata !63), !dbg !112
  br label %.thread, !dbg !147

; <label>:38                                      ; preds = %.lr.ph
  %39 = icmp eq i32 %21, 0, !dbg !148
  br i1 %39, label %.thread, label %40, !dbg !150

; <label>:40                                      ; preds = %38
  tail call void @llvm.dbg.value(metadata %struct.iInternalStringList* %this.0, i64 0, metadata !42, metadata !63), !dbg !114
  %41 = getelementptr inbounds %struct.iInternalStringList* %this.07, i64 0, i32 0, !dbg !151
  %this.0 = load %struct.iInternalStringList** %41, align 8, !dbg !115
  %42 = icmp eq %struct.iInternalStringList* %this.0, null, !dbg !118
  br i1 %42, label %._crit_edge, label %.lr.ph, !dbg !118

._crit_edge:                                      ; preds = %40, %16
  %prev.0.lcssa = phi %struct.iInternalStringList* [ null, %16 ], [ %this.07, %40 ]
  %43 = tail call i8* @Util_Strdup(i8* %item) #5, !dbg !152
  %44 = load i32* %1, align 4, !dbg !155, !tbaa !88
  %45 = sext i32 %44 to i64, !dbg !156
  %46 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 1, !dbg !157
  %47 = load %struct.iInternalStringList** %46, align 8, !dbg !157, !tbaa !77
  %48 = getelementptr inbounds %struct.iInternalStringList* %47, i64 %45, i32 1, !dbg !158
  store i8* %43, i8** %48, align 8, !dbg !159, !tbaa !106
  %49 = getelementptr inbounds %struct.iInternalStringList* %47, i64 %45, i32 0, !dbg !160
  store %struct.iInternalStringList* null, %struct.iInternalStringList** %49, align 8, !dbg !161, !tbaa !110
  %50 = getelementptr inbounds %struct.iInternalStringList* %47, i64 %45, !dbg !162
  %51 = getelementptr inbounds %struct.iInternalStringList* %prev.0.lcssa, i64 0, i32 0, !dbg !163
  store %struct.iInternalStringList* %50, %struct.iInternalStringList** %51, align 8, !dbg !164, !tbaa !110
  %52 = add nsw i32 %44, 1, !dbg !165
  store i32 %52, i32* %1, align 4, !dbg !165, !tbaa !88
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !39, metadata !63), !dbg !112
  br label %.thread, !dbg !166

.thread:                                          ; preds = %38, %36, %._crit_edge, %4
  %retval.1 = phi i32 [ 1, %4 ], [ 1, %._crit_edge ], [ 1, %36 ], [ 0, %38 ]
  ret i32 %retval.1, !dbg !167
}

; Function Attrs: optsize
declare i8* @Util_Strdup(i8*) #3

; Function Attrs: optsize
declare i32 @Util_StrCmpi(i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i8* @Util_StringListNext(%struct.uStringList* nocapture %this, i32 %flag) #1 {
  tail call void @llvm.dbg.value(metadata %struct.uStringList* %this, i64 0, metadata !47, metadata !63), !dbg !168
  tail call void @llvm.dbg.value(metadata i32 %flag, i64 0, metadata !48, metadata !63), !dbg !169
  %1 = icmp eq i32 %flag, 0, !dbg !170
  br i1 %1, label %._crit_edge, label %2, !dbg !172

._crit_edge:                                      ; preds = %0
  %.phi.trans.insert = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 3
  %.pre = load %struct.iInternalStringList** %.phi.trans.insert, align 8, !dbg !173, !tbaa !85
  br label %9, !dbg !172

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 2, !dbg !175
  %4 = bitcast %struct.iInternalStringList** %3 to i64*, !dbg !175
  %5 = load i64* %4, align 8, !dbg !175, !tbaa !101
  %6 = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 3, !dbg !177
  %7 = bitcast %struct.iInternalStringList** %6 to i64*, !dbg !178
  store i64 %5, i64* %7, align 8, !dbg !178, !tbaa !85
  %8 = inttoptr i64 %5 to %struct.iInternalStringList*
  br label %9, !dbg !179

; <label>:9                                       ; preds = %._crit_edge, %2
  %.pre-phi = phi %struct.iInternalStringList** [ %.phi.trans.insert, %._crit_edge ], [ %6, %2 ], !dbg !173
  %10 = phi %struct.iInternalStringList* [ %.pre, %._crit_edge ], [ %8, %2 ]
  %11 = icmp eq %struct.iInternalStringList* %10, null, !dbg !180
  br i1 %11, label %18, label %12, !dbg !181

; <label>:12                                      ; preds = %9
  %13 = getelementptr inbounds %struct.iInternalStringList* %10, i64 0, i32 1, !dbg !182
  %14 = load i8** %13, align 8, !dbg !182, !tbaa !106
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !49, metadata !63), !dbg !184
  %15 = bitcast %struct.iInternalStringList* %10 to i64*, !dbg !185
  %16 = load i64* %15, align 8, !dbg !185, !tbaa !110
  %17 = bitcast %struct.iInternalStringList** %.pre-phi to i64*, !dbg !186
  store i64 %16, i64* %17, align 8, !dbg !186, !tbaa !85
  br label %18, !dbg !187

; <label>:18                                      ; preds = %9, %12
  %retval.0 = phi i8* [ %14, %12 ], [ null, %9 ]
  ret i8* %retval.0, !dbg !188
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Util_StringListDestroy(%struct.uStringList* nocapture %this) #1 {
  tail call void @llvm.dbg.value(metadata %struct.uStringList* %this, i64 0, metadata !54, metadata !63), !dbg !189
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !55, metadata !63), !dbg !190
  %1 = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 0, !dbg !191
  %2 = load i32* %1, align 4, !dbg !191, !tbaa !88
  %3 = icmp sgt i32 %2, 0, !dbg !194
  %4 = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 1, !dbg !195
  br i1 %3, label %.lr.ph, label %._crit_edge, !dbg !197

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %5 = load %struct.iInternalStringList** %4, align 8, !dbg !195, !tbaa !77
  %6 = getelementptr inbounds %struct.iInternalStringList* %5, i64 %indvars.iv, i32 1, !dbg !198
  %7 = load i8** %6, align 8, !dbg !198, !tbaa !106
  tail call void @free(i8* %7) #6, !dbg !199
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !197
  %8 = load i32* %1, align 4, !dbg !191, !tbaa !88
  %9 = sext i32 %8 to i64, !dbg !194
  %10 = icmp slt i64 %indvars.iv.next, %9, !dbg !194
  br i1 %10, label %.lr.ph, label %._crit_edge, !dbg !197

._crit_edge:                                      ; preds = %.lr.ph, %0
  %11 = bitcast %struct.iInternalStringList** %4 to i8**, !dbg !200
  %12 = load i8** %11, align 8, !dbg !200, !tbaa !77
  tail call void @free(i8* %12) #6, !dbg !201
  %13 = bitcast %struct.uStringList* %this to i8*, !dbg !202
  tail call void @free(i8* %13) #6, !dbg !203
  ret void, !dbg !204
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!58, !59, !60}
!llvm.ident = !{!61}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !21, globals: !56, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uStringList", file: !6, line: 30, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/util_StringList.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 24, size: 256, align: 64, elements: !8)
!8 = !{!9, !11, !19, !20}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !7, file: !6, line: 26, baseType: !10, size: 32, align: 32)
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !7, file: !6, line: 27, baseType: !12, size: 64, align: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "iInternalStringList", file: !6, line: 18, size: 128, align: 64, elements: !14)
!14 = !{!15, !16}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !13, file: !6, line: 20, baseType: !12, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !13, file: !6, line: 21, baseType: !17, size: 64, align: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !7, file: !6, line: 28, baseType: !12, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !7, file: !6, line: 29, baseType: !12, size: 64, align: 64, offset: 192)
!21 = !{!22, !27, !33, !43, !50}
!22 = !DISubprogram(name: "CCTKi_version_util_StringList_c", scope: !1, file: !1, line: 26, type: !23, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_util_StringList_c, variables: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!27 = !DISubprogram(name: "Util_StringListCreate", scope: !1, file: !1, line: 74, type: !28, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: %struct.uStringList* (i32)* @Util_StringListCreate, variables: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{!4, !10}
!30 = !{!31, !32}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !27, file: !1, line: 74, type: !10)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this", scope: !27, file: !1, line: 76, type: !4)
!33 = !DISubprogram(name: "Util_StringListAdd", scope: !1, file: !1, line: 125, type: !34, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.uStringList*, i8*)* @Util_StringListAdd, variables: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{!10, !4, !25}
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !33, file: !1, line: 125, type: !4)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 2, scope: !33, file: !1, line: 125, type: !25)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !33, file: !1, line: 127, type: !10)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "position", scope: !33, file: !1, line: 128, type: !10)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this", scope: !33, file: !1, line: 129, type: !12)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !33, file: !1, line: 129, type: !12)
!43 = !DISubprogram(name: "Util_StringListNext", scope: !1, file: !1, line: 219, type: !44, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct.uStringList*, i32)* @Util_StringListNext, variables: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{!25, !4, !10}
!46 = !{!47, !48, !49}
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this", arg: 1, scope: !43, file: !1, line: 219, type: !4)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flag", arg: 2, scope: !43, file: !1, line: 219, type: !10)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !43, file: !1, line: 221, type: !25)
!50 = !DISubprogram(name: "Util_StringListDestroy", scope: !1, file: !1, line: 262, type: !51, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.uStringList*)* @Util_StringListDestroy, variables: !53)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !4}
!53 = !{!54, !55}
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this", arg: 1, scope: !50, file: !1, line: 262, type: !4)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !50, file: !1, line: 264, type: !10)
!56 = !{!57}
!57 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 23, type: !25, isLocal: true, isDefinition: true)
!58 = !{i32 2, !"Dwarf Version", i32 2}
!59 = !{i32 2, !"Debug Info Version", i32 700000003}
!60 = !{i32 1, !"PIC Level", i32 2}
!61 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!62 = !DILocation(line: 26, column: 1, scope: !22)
!63 = !DIExpression()
!64 = !DILocation(line: 74, column: 40, scope: !27)
!65 = !DILocation(line: 78, column: 23, scope: !27)
!66 = !DILocation(line: 78, column: 8, scope: !27)
!67 = !DILocation(line: 76, column: 16, scope: !27)
!68 = !DILocation(line: 80, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !27, file: !1, line: 80, column: 6)
!70 = !DILocation(line: 80, column: 6, scope: !27)
!71 = !DILocation(line: 82, column: 27, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 81, column: 3)
!73 = !DILocation(line: 82, column: 23, scope: !72)
!74 = !DILocation(line: 82, column: 16, scope: !72)
!75 = !DILocation(line: 82, column: 11, scope: !72)
!76 = !DILocation(line: 82, column: 15, scope: !72)
!77 = !{!78, !82, i64 8}
!78 = !{!"", !79, i64 0, !82, i64 8, !82, i64 16, !82, i64 24}
!79 = !{!"int", !80, i64 0}
!80 = !{!"omnipotent char", !81, i64 0}
!81 = !{!"Simple C/C++ TBAA"}
!82 = !{!"any pointer", !80, i64 0}
!83 = !DILocation(line: 84, column: 11, scope: !72)
!84 = !DILocation(line: 84, column: 19, scope: !72)
!85 = !{!78, !82, i64 24}
!86 = !DILocation(line: 85, column: 11, scope: !72)
!87 = !DILocation(line: 85, column: 15, scope: !72)
!88 = !{!78, !79, i64 0}
!89 = !DILocation(line: 86, column: 3, scope: !72)
!90 = !DILocation(line: 88, column: 3, scope: !27)
!91 = !DILocation(line: 125, column: 37, scope: !33)
!92 = !DILocation(line: 125, column: 55, scope: !33)
!93 = !DILocation(line: 131, column: 12, scope: !94)
!94 = distinct !DILexicalBlock(scope: !33, file: !1, line: 131, column: 6)
!95 = !DILocation(line: 131, column: 17, scope: !94)
!96 = !DILocation(line: 131, column: 6, scope: !33)
!97 = !DILocation(line: 133, column: 24, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 132, column: 3)
!99 = !DILocation(line: 133, column: 11, scope: !98)
!100 = !DILocation(line: 133, column: 16, scope: !98)
!101 = !{!78, !82, i64 16}
!102 = !DILocation(line: 134, column: 26, scope: !98)
!103 = !DILocation(line: 134, column: 11, scope: !98)
!104 = !DILocation(line: 134, column: 17, scope: !98)
!105 = !DILocation(line: 134, column: 24, scope: !98)
!106 = !{!107, !82, i64 8}
!107 = !{!"iInternalStringList", !82, i64 0, !82, i64 8}
!108 = !DILocation(line: 135, column: 17, scope: !98)
!109 = !DILocation(line: 135, column: 24, scope: !98)
!110 = !{!107, !82, i64 0}
!111 = !DILocation(line: 136, column: 15, scope: !98)
!112 = !DILocation(line: 127, column: 7, scope: !33)
!113 = !DILocation(line: 138, column: 3, scope: !98)
!114 = !DILocation(line: 129, column: 38, scope: !33)
!115 = !DILocation(line: 143, column: 20, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 143, column: 5)
!117 = distinct !DILexicalBlock(scope: !94, file: !1, line: 140, column: 3)
!118 = !DILocation(line: 143, column: 5, scope: !116)
!119 = !DILocation(line: 145, column: 46, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !1, line: 145, column: 10)
!121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 144, column: 5)
!122 = distinct !DILexicalBlock(scope: !116, file: !1, line: 143, column: 5)
!123 = !DILocation(line: 145, column: 22, scope: !120)
!124 = !DILocation(line: 128, column: 7, scope: !33)
!125 = !DILocation(line: 145, column: 55, scope: !120)
!126 = !DILocation(line: 145, column: 10, scope: !121)
!127 = !DILocation(line: 147, column: 41, scope: !128)
!128 = distinct !DILexicalBlock(scope: !120, file: !1, line: 146, column: 7)
!129 = !DILocation(line: 147, column: 26, scope: !128)
!130 = !DILocation(line: 147, column: 9, scope: !128)
!131 = !DILocation(line: 147, column: 15, scope: !128)
!132 = !DILocation(line: 147, column: 32, scope: !128)
!133 = !DILocation(line: 147, column: 39, scope: !128)
!134 = !DILocation(line: 148, column: 32, scope: !128)
!135 = !DILocation(line: 148, column: 39, scope: !128)
!136 = !DILocation(line: 149, column: 12, scope: !137)
!137 = distinct !DILexicalBlock(scope: !128, file: !1, line: 149, column: 12)
!138 = !DILocation(line: 151, column: 25, scope: !139)
!139 = distinct !DILexicalBlock(scope: !137, file: !1, line: 150, column: 9)
!140 = !DILocation(line: 149, column: 12, scope: !128)
!141 = !DILocation(line: 151, column: 17, scope: !139)
!142 = !DILocation(line: 151, column: 21, scope: !139)
!143 = !DILocation(line: 152, column: 9, scope: !139)
!144 = !DILocation(line: 155, column: 21, scope: !145)
!145 = distinct !DILexicalBlock(scope: !137, file: !1, line: 154, column: 9)
!146 = !DILocation(line: 158, column: 19, scope: !128)
!147 = !DILocation(line: 160, column: 9, scope: !128)
!148 = !DILocation(line: 162, column: 25, scope: !149)
!149 = distinct !DILexicalBlock(scope: !120, file: !1, line: 162, column: 16)
!150 = !DILocation(line: 162, column: 16, scope: !120)
!151 = !DILocation(line: 143, column: 43, scope: !122)
!152 = !DILocation(line: 173, column: 39, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 172, column: 5)
!154 = distinct !DILexicalBlock(scope: !117, file: !1, line: 171, column: 8)
!155 = !DILocation(line: 173, column: 24, scope: !153)
!156 = !DILocation(line: 173, column: 7, scope: !153)
!157 = !DILocation(line: 173, column: 13, scope: !153)
!158 = !DILocation(line: 173, column: 30, scope: !153)
!159 = !DILocation(line: 173, column: 37, scope: !153)
!160 = !DILocation(line: 174, column: 30, scope: !153)
!161 = !DILocation(line: 174, column: 37, scope: !153)
!162 = !DILocation(line: 175, column: 20, scope: !153)
!163 = !DILocation(line: 175, column: 13, scope: !153)
!164 = !DILocation(line: 175, column: 17, scope: !153)
!165 = !DILocation(line: 176, column: 17, scope: !153)
!166 = !DILocation(line: 178, column: 5, scope: !153)
!167 = !DILocation(line: 181, column: 3, scope: !33)
!168 = !DILocation(line: 219, column: 46, scope: !43)
!169 = !DILocation(line: 219, column: 56, scope: !43)
!170 = !DILocation(line: 223, column: 6, scope: !171)
!171 = distinct !DILexicalBlock(scope: !43, file: !1, line: 223, column: 6)
!172 = !DILocation(line: 223, column: 6, scope: !43)
!173 = !DILocation(line: 228, column: 12, scope: !174)
!174 = distinct !DILexicalBlock(scope: !43, file: !1, line: 228, column: 6)
!175 = !DILocation(line: 225, column: 25, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !1, line: 224, column: 3)
!177 = !DILocation(line: 225, column: 11, scope: !176)
!178 = !DILocation(line: 225, column: 18, scope: !176)
!179 = !DILocation(line: 226, column: 3, scope: !176)
!180 = !DILocation(line: 228, column: 6, scope: !174)
!181 = !DILocation(line: 228, column: 6, scope: !43)
!182 = !DILocation(line: 230, column: 29, scope: !183)
!183 = distinct !DILexicalBlock(scope: !174, file: !1, line: 229, column: 3)
!184 = !DILocation(line: 221, column: 15, scope: !43)
!185 = !DILocation(line: 231, column: 34, scope: !183)
!186 = !DILocation(line: 231, column: 18, scope: !183)
!187 = !DILocation(line: 232, column: 3, scope: !183)
!188 = !DILocation(line: 238, column: 3, scope: !43)
!189 = !DILocation(line: 262, column: 42, scope: !50)
!190 = !DILocation(line: 264, column: 7, scope: !50)
!191 = !DILocation(line: 265, column: 22, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 265, column: 3)
!193 = distinct !DILexicalBlock(scope: !50, file: !1, line: 265, column: 3)
!194 = !DILocation(line: 265, column: 14, scope: !192)
!195 = !DILocation(line: 267, column: 16, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 266, column: 3)
!197 = !DILocation(line: 265, column: 3, scope: !193)
!198 = !DILocation(line: 267, column: 24, scope: !196)
!199 = !DILocation(line: 267, column: 5, scope: !196)
!200 = !DILocation(line: 269, column: 14, scope: !50)
!201 = !DILocation(line: 269, column: 3, scope: !50)
!202 = !DILocation(line: 270, column: 8, scope: !50)
!203 = !DILocation(line: 270, column: 3, scope: !50)
!204 = !DILocation(line: 271, column: 1, scope: !50)
