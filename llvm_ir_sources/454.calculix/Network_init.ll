; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct.__sFILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [52 x i8] c"\0A fatal error in Network_init(%p,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str2 = private unnamed_addr constant [93 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1
@.str4 = private unnamed_addr constant [62 x i8] c"\0A fatal error in Network_setMessageInfo(%p,%d,%p)\0A bad input\0A\00", align 1
@__stdoutp = external global %struct.__sFILE*

; Function Attrs: nounwind optsize ssp uwtable
define void @Network_init(%struct._Network* %network, i32 %nnode, i32 %narc) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Network* %network, i64 0, metadata !109, metadata !127), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 %nnode, i64 0, metadata !110, metadata !127), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %narc, i64 0, metadata !111, metadata !127), !dbg !130
  %1 = icmp eq %struct._Network* %network, null, !dbg !131
  %2 = icmp slt i32 %nnode, 3, !dbg !133
  %or.cond = or i1 %1, %2, !dbg !134
  %3 = icmp slt i32 %narc, 0, !dbg !135
  %or.cond3 = or i1 %or.cond, %3, !dbg !134
  br i1 %or.cond3, label %4, label %7, !dbg !134

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !136, !tbaa !138
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._Network* %network, i32 %nnode, i32 %narc) #6, !dbg !142
  tail call void @exit(i32 -1) #7, !dbg !143
  unreachable, !dbg !143

; <label>:7                                       ; preds = %0
  tail call void @Network_clearData(%struct._Network* %network) #6, !dbg !144
  %8 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !145
  store i32 %nnode, i32* %8, align 4, !dbg !146, !tbaa !147
  %9 = icmp sgt i32 %nnode, 0, !dbg !150
  br i1 %9, label %10, label %20, !dbg !152

; <label>:10                                      ; preds = %7
  %11 = sext i32 %nnode to i64, !dbg !153
  %12 = shl nsw i64 %11, 3, !dbg !153
  %13 = tail call i8* @malloc(i64 %12) #6, !dbg !153
  %14 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !153
  %15 = bitcast %struct._Arc*** %14 to i8**, !dbg !153
  store i8* %13, i8** %15, align 8, !dbg !153, !tbaa !156
  %16 = icmp eq i8* %13, null, !dbg !153
  br i1 %16, label %17, label %27, !dbg !157

; <label>:17                                      ; preds = %10
  %18 = load %struct.__sFILE** @__stderrp, align 8, !dbg !158, !tbaa !138
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %12, i32 48, i8* getelementptr inbounds ([93 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !158
  tail call void @exit(i32 -1) #7, !dbg !158
  unreachable, !dbg !158

; <label>:20                                      ; preds = %7
  %21 = icmp eq i32 %nnode, 0, !dbg !160
  br i1 %21, label %.preheader, label %22, !dbg !150

; <label>:22                                      ; preds = %20
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !162, !tbaa !138
  %24 = sext i32 %nnode to i64, !dbg !162
  %25 = shl nsw i64 %24, 3, !dbg !162
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), i64 %25, i32 48, i8* getelementptr inbounds ([93 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !162
  tail call void @exit(i32 -1) #7, !dbg !162
  unreachable, !dbg !162

; <label>:27                                      ; preds = %10
  %28 = tail call i8* @malloc(i64 %12) #6, !dbg !164
  %29 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !164
  %30 = bitcast %struct._Arc*** %29 to i8**, !dbg !164
  store i8* %28, i8** %30, align 8, !dbg !164, !tbaa !168
  %31 = icmp eq i8* %28, null, !dbg !164
  br i1 %31, label %32, label %.lr.ph, !dbg !169

; <label>:32                                      ; preds = %27
  %33 = load %struct.__sFILE** @__stderrp, align 8, !dbg !170, !tbaa !138
  %34 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %33, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %12, i32 49, i8* getelementptr inbounds ([93 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !170
  tail call void @exit(i32 -1) #7, !dbg !170
  unreachable, !dbg !170

.preheader:                                       ; preds = %20
  %35 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !172
  %36 = bitcast %struct._Arc*** %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 16, i32 8, i1 false), !dbg !174
  br label %._crit_edge

.lr.ph:                                           ; preds = %27
  %37 = bitcast i8* %28 to %struct._Arc**
  %38 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !177
  %39 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !181
  %40 = add i32 %nnode, -1, !dbg !182
  store %struct._Arc* null, %struct._Arc** %37, align 8, !dbg !183, !tbaa !138
  %41 = load %struct._Arc*** %39, align 8, !dbg !181, !tbaa !156
  store %struct._Arc* null, %struct._Arc** %41, align 8, !dbg !184, !tbaa !138
  %exitcond6 = icmp eq i32 %40, 0, !dbg !182
  br i1 %exitcond6, label %._crit_edge, label %._crit_edge5, !dbg !182

._crit_edge5:                                     ; preds = %.lr.ph, %._crit_edge5
  %indvars.iv7 = phi i64 [ %indvars.iv.next, %._crit_edge5 ], [ 0, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !182
  %.pre = load %struct._Arc*** %38, align 8, !dbg !177, !tbaa !168
  %42 = getelementptr inbounds %struct._Arc** %.pre, i64 %indvars.iv.next, !dbg !185
  store %struct._Arc* null, %struct._Arc** %42, align 8, !dbg !183, !tbaa !138
  %43 = load %struct._Arc*** %39, align 8, !dbg !181, !tbaa !156
  %44 = getelementptr inbounds %struct._Arc** %43, i64 %indvars.iv.next, !dbg !186
  store %struct._Arc* null, %struct._Arc** %44, align 8, !dbg !184, !tbaa !138
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !182
  %exitcond = icmp eq i32 %lftr.wideiv, %40, !dbg !182
  br i1 %exitcond, label %._crit_edge, label %._crit_edge5, !dbg !182

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge5, %.preheader
  %45 = icmp sgt i32 %narc, 0, !dbg !187
  br i1 %45, label %46, label %70, !dbg !188

; <label>:46                                      ; preds = %._crit_edge
  %47 = tail call i8* @malloc(i64 24) #6, !dbg !189
  %48 = icmp eq i8* %47, null, !dbg !189
  br i1 %48, label %49, label %52, !dbg !193

; <label>:49                                      ; preds = %46
  %50 = load %struct.__sFILE** @__stderrp, align 8, !dbg !194, !tbaa !138
  %51 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %50, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 24, i32 60, i8* getelementptr inbounds ([93 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !194
  tail call void @exit(i32 -1) #7, !dbg !194
  unreachable, !dbg !194

; <label>:52                                      ; preds = %46
  %53 = sext i32 %narc to i64, !dbg !196
  %54 = shl nsw i64 %53, 5, !dbg !196
  %55 = tail call i8* @malloc(i64 %54) #6, !dbg !196
  %56 = getelementptr inbounds i8* %47, i64 8, !dbg !196
  %57 = bitcast i8* %56 to i8**, !dbg !196
  store i8* %55, i8** %57, align 8, !dbg !196, !tbaa !200
  %58 = icmp eq i8* %55, null, !dbg !196
  br i1 %58, label %59, label %62, !dbg !202

; <label>:59                                      ; preds = %52
  %60 = load %struct.__sFILE** @__stderrp, align 8, !dbg !203, !tbaa !138
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %60, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %54, i32 61, i8* getelementptr inbounds ([93 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !203
  tail call void @exit(i32 -1) #7, !dbg !203
  unreachable, !dbg !203

; <label>:62                                      ; preds = %52
  %63 = bitcast i8* %47 to i32*, !dbg !205
  store i32 %narc, i32* %63, align 4, !dbg !206, !tbaa !207
  %64 = getelementptr inbounds i8* %47, i64 4, !dbg !208
  %65 = bitcast i8* %64 to i32*, !dbg !208
  store i32 0, i32* %65, align 4, !dbg !209, !tbaa !210
  %66 = getelementptr inbounds i8* %47, i64 16, !dbg !211
  %67 = bitcast i8* %66 to %struct._ArcChunk**, !dbg !211
  store %struct._ArcChunk* null, %struct._ArcChunk** %67, align 8, !dbg !212, !tbaa !213
  %68 = getelementptr inbounds %struct._Network* %network, i64 0, i32 5, !dbg !214
  %69 = bitcast %struct._ArcChunk** %68 to i8**, !dbg !215
  store i8* %47, i8** %69, align 8, !dbg !215, !tbaa !216
  br label %70, !dbg !217

; <label>:70                                      ; preds = %62, %._crit_edge
  ret void, !dbg !218
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Network_clearData(%struct._Network*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @Network_setMessageInfo(%struct._Network* %network, i32 %msglvl, %struct.__sFILE* %msgFile) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Network* %network, i64 0, metadata !120, metadata !127), !dbg !219
  tail call void @llvm.dbg.value(metadata i32 %msglvl, i64 0, metadata !121, metadata !127), !dbg !220
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %msgFile, i64 0, metadata !122, metadata !127), !dbg !221
  %1 = icmp eq %struct._Network* %network, null, !dbg !222
  br i1 %1, label %2, label %5, !dbg !224

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !225, !tbaa !138
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([62 x i8]* @.str4, i64 0, i64 0), %struct._Network* null, i32 %msglvl, %struct.__sFILE* %msgFile) #6, !dbg !227
  tail call void @exit(i32 -1) #7, !dbg !228
  unreachable, !dbg !228

; <label>:5                                       ; preds = %0
  %6 = icmp sgt i32 %msglvl, -1, !dbg !229
  br i1 %6, label %7, label %9, !dbg !231

; <label>:7                                       ; preds = %5
  %8 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6, !dbg !232
  store i32 %msglvl, i32* %8, align 4, !dbg !234, !tbaa !235
  br label %9, !dbg !236

; <label>:9                                       ; preds = %7, %5
  %10 = icmp eq %struct.__sFILE* %msgFile, null, !dbg !237
  br i1 %10, label %13, label %11, !dbg !239

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7, !dbg !240
  store %struct.__sFILE* %msgFile, %struct.__sFILE** %12, align 8, !dbg !242, !tbaa !243
  br label %17, !dbg !244

; <label>:13                                      ; preds = %9
  %14 = load i64* bitcast (%struct.__sFILE** @__stdoutp to i64*), align 8, !dbg !245, !tbaa !138
  %15 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7, !dbg !247
  %16 = bitcast %struct.__sFILE** %15 to i64*, !dbg !248
  store i64 %14, i64* %16, align 8, !dbg !248, !tbaa !243
  br label %17

; <label>:17                                      ; preds = %13, %11
  ret void, !dbg !249
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!123, !124, !125}
!llvm.ident = !{!126}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !29, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !19, !20, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Arc", file: !8, line: 53, size: 256, align: 64, elements: !9)
!8 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../Network.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !{!10, !12, !13, !14, !15, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !7, file: !8, line: 54, baseType: !11, size: 32, align: 32)
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !7, file: !8, line: 55, baseType: !11, size: 32, align: 32, offset: 32)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !7, file: !8, line: 56, baseType: !11, size: 32, align: 32, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !7, file: !8, line: 57, baseType: !11, size: 32, align: 32, offset: 96)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "nextOut", scope: !7, file: !8, line: 58, baseType: !16, size: 64, align: 64, offset: 128)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "Arc", file: !8, line: 13, baseType: !7)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nextIn", scope: !7, file: !8, line: 59, baseType: !16, size: 64, align: 64, offset: 192)
!19 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ArcChunk", file: !8, line: 74, size: 192, align: 64, elements: !22)
!22 = !{!23, !24, !25, !26}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !21, file: !8, line: 75, baseType: !11, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !21, file: !8, line: 76, baseType: !11, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !21, file: !8, line: 77, baseType: !16, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !21, file: !8, line: 78, baseType: !27, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "ArcChunk", file: !8, line: 14, baseType: !21)
!29 = !{!30, !116}
!30 = !DISubprogram(name: "Network_init", scope: !1, file: !1, line: 20, type: !31, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Network*, i32, i32)* @Network_init, variables: !108)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !11, !11}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "Network", file: !8, line: 12, baseType: !35)
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Network", file: !8, line: 34, size: 448, align: 64, elements: !36)
!36 = !{!37, !38, !39, !40, !42, !43, !44, !45}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nnode", scope: !35, file: !8, line: 35, baseType: !11, size: 32, align: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "narc", scope: !35, file: !8, line: 36, baseType: !11, size: 32, align: 32, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ntrav", scope: !35, file: !8, line: 37, baseType: !11, size: 32, align: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "inheads", scope: !35, file: !8, line: 38, baseType: !41, size: 64, align: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "outheads", scope: !35, file: !8, line: 39, baseType: !41, size: 64, align: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !35, file: !8, line: 40, baseType: !27, size: 64, align: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "msglvl", scope: !35, file: !8, line: 41, baseType: !11, size: 32, align: 32, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "msgFile", scope: !35, file: !8, line: 42, baseType: !46, size: 64, align: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !48, line: 153, baseType: !49)
!48 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !48, line: 122, size: 1216, align: 64, elements: !50)
!50 = !{!51, !54, !55, !56, !58, !59, !64, !65, !66, !70, !76, !86, !92, !93, !96, !97, !101, !105, !106, !107}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !49, file: !48, line: 123, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !49, file: !48, line: 124, baseType: !11, size: 32, align: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !49, file: !48, line: 125, baseType: !11, size: 32, align: 32, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !49, file: !48, line: 126, baseType: !57, size: 16, align: 16, offset: 128)
!57 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !49, file: !48, line: 127, baseType: !57, size: 16, align: 16, offset: 144)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !49, file: !48, line: 128, baseType: !60, size: 128, align: 64, offset: 192)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !48, line: 88, size: 128, align: 64, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !60, file: !48, line: 89, baseType: !52, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !60, file: !48, line: 90, baseType: !11, size: 32, align: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !49, file: !48, line: 129, baseType: !11, size: 32, align: 32, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !49, file: !48, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !49, file: !48, line: 133, baseType: !67, size: 64, align: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!11, !4}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !49, file: !48, line: 134, baseType: !71, size: 64, align: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!11, !4, !74, !11}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !49, file: !48, line: 135, baseType: !77, size: 64, align: 64, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !4, !80, !11}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !48, line: 77, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !82, line: 71, baseType: !83)
!82 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !84, line: 46, baseType: !85)
!84 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!85 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !49, file: !48, line: 136, baseType: !87, size: 64, align: 64, offset: 640)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!11, !4, !90, !11}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !49, file: !48, line: 139, baseType: !60, size: 128, align: 64, offset: 704)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !49, file: !48, line: 140, baseType: !94, size: 64, align: 64, offset: 832)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !48, line: 94, flags: DIFlagFwdDecl)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !49, file: !48, line: 141, baseType: !11, size: 32, align: 32, offset: 896)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !49, file: !48, line: 144, baseType: !98, size: 24, align: 8, offset: 928)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 24, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 3)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !49, file: !48, line: 145, baseType: !102, size: 8, align: 8, offset: 952)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 8, align: 8, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 1)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !49, file: !48, line: 148, baseType: !60, size: 128, align: 64, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !49, file: !48, line: 151, baseType: !11, size: 32, align: 32, offset: 1088)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !49, file: !48, line: 152, baseType: !80, size: 64, align: 64, offset: 1152)
!108 = !{!109, !110, !111, !112, !113}
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "network", arg: 1, scope: !30, file: !1, line: 21, type: !33)
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nnode", arg: 2, scope: !30, file: !1, line: 22, type: !11)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "narc", arg: 3, scope: !30, file: !1, line: 23, type: !11)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !30, file: !1, line: 25, type: !11)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chunk", scope: !114, file: !1, line: 54, type: !27)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 53, column: 17)
!115 = distinct !DILexicalBlock(scope: !30, file: !1, line: 53, column: 6)
!116 = !DISubprogram(name: "Network_setMessageInfo", scope: !1, file: !1, line: 78, type: !117, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Network*, i32, %struct.__sFILE*)* @Network_setMessageInfo, variables: !119)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !33, !11, !46}
!119 = !{!120, !121, !122}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "network", arg: 1, scope: !116, file: !1, line: 79, type: !33)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msglvl", arg: 2, scope: !116, file: !1, line: 80, type: !11)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msgFile", arg: 3, scope: !116, file: !1, line: 81, type: !46)
!123 = !{i32 2, !"Dwarf Version", i32 2}
!124 = !{i32 2, !"Debug Info Version", i32 700000003}
!125 = !{i32 1, !"PIC Level", i32 2}
!126 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!127 = !DIExpression()
!128 = !DILocation(line: 21, column: 15, scope: !30)
!129 = !DILocation(line: 22, column: 14, scope: !30)
!130 = !DILocation(line: 23, column: 14, scope: !30)
!131 = !DILocation(line: 31, column: 14, scope: !132)
!132 = distinct !DILexicalBlock(scope: !30, file: !1, line: 31, column: 6)
!133 = !DILocation(line: 31, column: 31, scope: !132)
!134 = !DILocation(line: 31, column: 22, scope: !132)
!135 = !DILocation(line: 31, column: 44, scope: !132)
!136 = !DILocation(line: 32, column: 12, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !1, line: 31, column: 50)
!138 = !{!139, !139, i64 0}
!139 = !{!"any pointer", !140, i64 0}
!140 = !{!"omnipotent char", !141, i64 0}
!141 = !{!"Simple C/C++ TBAA"}
!142 = !DILocation(line: 32, column: 4, scope: !137)
!143 = !DILocation(line: 34, column: 4, scope: !137)
!144 = !DILocation(line: 41, column: 1, scope: !30)
!145 = !DILocation(line: 42, column: 10, scope: !30)
!146 = !DILocation(line: 42, column: 16, scope: !30)
!147 = !{!148, !149, i64 0}
!148 = !{!"_Network", !149, i64 0, !149, i64 4, !149, i64 8, !139, i64 16, !139, i64 24, !139, i64 32, !149, i64 40, !139, i64 48}
!149 = !{!"int", !140, i64 0}
!150 = !DILocation(line: 48, column: 1, scope: !151)
!151 = distinct !DILexicalBlock(scope: !30, file: !1, line: 48, column: 1)
!152 = !DILocation(line: 48, column: 1, scope: !30)
!153 = !DILocation(line: 48, column: 1, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !1, line: 48, column: 1)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 48, column: 1)
!156 = !{!148, !139, i64 16}
!157 = !DILocation(line: 48, column: 1, scope: !155)
!158 = !DILocation(line: 48, column: 1, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 48, column: 1)
!160 = !DILocation(line: 48, column: 1, scope: !161)
!161 = distinct !DILexicalBlock(scope: !151, file: !1, line: 48, column: 1)
!162 = !DILocation(line: 48, column: 1, scope: !163)
!163 = distinct !DILexicalBlock(scope: !161, file: !1, line: 48, column: 1)
!164 = !DILocation(line: 49, column: 1, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !1, line: 49, column: 1)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 49, column: 1)
!167 = distinct !DILexicalBlock(scope: !30, file: !1, line: 49, column: 1)
!168 = !{!148, !139, i64 24}
!169 = !DILocation(line: 49, column: 1, scope: !166)
!170 = !DILocation(line: 49, column: 1, scope: !171)
!171 = distinct !DILexicalBlock(scope: !165, file: !1, line: 49, column: 1)
!172 = !DILocation(line: 48, column: 1, scope: !173)
!173 = distinct !DILexicalBlock(scope: !161, file: !1, line: 48, column: 1)
!174 = !DILocation(line: 49, column: 1, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 49, column: 1)
!176 = distinct !DILexicalBlock(scope: !167, file: !1, line: 49, column: 1)
!177 = !DILocation(line: 51, column: 35, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 50, column: 33)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 50, column: 1)
!180 = distinct !DILexicalBlock(scope: !30, file: !1, line: 50, column: 1)
!181 = !DILocation(line: 51, column: 13, scope: !178)
!182 = !DILocation(line: 50, column: 1, scope: !180)
!183 = !DILocation(line: 51, column: 47, scope: !178)
!184 = !DILocation(line: 51, column: 24, scope: !178)
!185 = !DILocation(line: 51, column: 26, scope: !178)
!186 = !DILocation(line: 51, column: 4, scope: !178)
!187 = !DILocation(line: 53, column: 11, scope: !115)
!188 = !DILocation(line: 53, column: 6, scope: !30)
!189 = !DILocation(line: 60, column: 4, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 60, column: 4)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 60, column: 4)
!192 = distinct !DILexicalBlock(scope: !114, file: !1, line: 60, column: 4)
!193 = !DILocation(line: 60, column: 4, scope: !191)
!194 = !DILocation(line: 60, column: 4, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !1, line: 60, column: 4)
!196 = !DILocation(line: 61, column: 4, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !1, line: 61, column: 4)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 61, column: 4)
!199 = distinct !DILexicalBlock(scope: !114, file: !1, line: 61, column: 4)
!200 = !{!201, !139, i64 8}
!201 = !{!"_ArcChunk", !149, i64 0, !149, i64 4, !139, i64 8, !139, i64 16}
!202 = !DILocation(line: 61, column: 4, scope: !198)
!203 = !DILocation(line: 61, column: 4, scope: !204)
!204 = distinct !DILexicalBlock(scope: !197, file: !1, line: 61, column: 4)
!205 = !DILocation(line: 62, column: 11, scope: !114)
!206 = !DILocation(line: 62, column: 16, scope: !114)
!207 = !{!201, !149, i64 0}
!208 = !DILocation(line: 63, column: 11, scope: !114)
!209 = !DILocation(line: 63, column: 17, scope: !114)
!210 = !{!201, !149, i64 4}
!211 = !DILocation(line: 64, column: 11, scope: !114)
!212 = !DILocation(line: 64, column: 16, scope: !114)
!213 = !{!201, !139, i64 16}
!214 = !DILocation(line: 65, column: 13, scope: !114)
!215 = !DILocation(line: 65, column: 19, scope: !114)
!216 = !{!148, !139, i64 32}
!217 = !DILocation(line: 66, column: 1, scope: !114)
!218 = !DILocation(line: 67, column: 1, scope: !30)
!219 = !DILocation(line: 79, column: 15, scope: !116)
!220 = !DILocation(line: 80, column: 14, scope: !116)
!221 = !DILocation(line: 81, column: 15, scope: !116)
!222 = !DILocation(line: 88, column: 14, scope: !223)
!223 = distinct !DILexicalBlock(scope: !116, file: !1, line: 88, column: 6)
!224 = !DILocation(line: 88, column: 6, scope: !116)
!225 = !DILocation(line: 89, column: 12, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !1, line: 88, column: 24)
!227 = !DILocation(line: 89, column: 4, scope: !226)
!228 = !DILocation(line: 91, column: 4, scope: !226)
!229 = !DILocation(line: 93, column: 13, scope: !230)
!230 = distinct !DILexicalBlock(scope: !116, file: !1, line: 93, column: 6)
!231 = !DILocation(line: 93, column: 6, scope: !116)
!232 = !DILocation(line: 94, column: 13, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !1, line: 93, column: 20)
!234 = !DILocation(line: 94, column: 20, scope: !233)
!235 = !{!148, !149, i64 40}
!236 = !DILocation(line: 95, column: 1, scope: !233)
!237 = !DILocation(line: 96, column: 14, scope: !238)
!238 = distinct !DILexicalBlock(scope: !116, file: !1, line: 96, column: 6)
!239 = !DILocation(line: 96, column: 6, scope: !116)
!240 = !DILocation(line: 97, column: 13, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !1, line: 96, column: 24)
!242 = !DILocation(line: 97, column: 21, scope: !241)
!243 = !{!148, !139, i64 48}
!244 = !DILocation(line: 98, column: 1, scope: !241)
!245 = !DILocation(line: 99, column: 23, scope: !246)
!246 = distinct !DILexicalBlock(scope: !238, file: !1, line: 98, column: 8)
!247 = !DILocation(line: 99, column: 13, scope: !246)
!248 = !DILocation(line: 99, column: 21, scope: !246)
!249 = !DILocation(line: 102, column: 1, scope: !116)
