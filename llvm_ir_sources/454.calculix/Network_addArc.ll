; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_addArc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct.__sFILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [60 x i8] c"\0A fatal error in Network_addArc(%p,%d,%d,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"\0A nnode = %d\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str3 = private unnamed_addr constant [95 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_addArc.c\00", align 1
@.str4 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @Network_addArc(%struct._Network* %network, i32 %firstNode, i32 %secondNode, i32 %capacity, i32 %flow) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Network* %network, i64 0, metadata !108, metadata !122), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %firstNode, i64 0, metadata !109, metadata !122), !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %secondNode, i64 0, metadata !110, metadata !122), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 %capacity, i64 0, metadata !111, metadata !122), !dbg !126
  tail call void @llvm.dbg.value(metadata i32 %flow, i64 0, metadata !112, metadata !122), !dbg !127
  %1 = icmp eq %struct._Network* %network, null, !dbg !128
  br i1 %1, label %15, label %2, !dbg !130

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !131
  %4 = load i32* %3, align 4, !dbg !131, !tbaa !132
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !117, metadata !122), !dbg !138
  %5 = icmp slt i32 %4, 1, !dbg !139
  %6 = icmp slt i32 %firstNode, 0, !dbg !140
  %or.cond = or i1 %6, %5, !dbg !141
  br i1 %or.cond, label %18, label %7, !dbg !141

; <label>:7                                       ; preds = %2
  %8 = icmp sle i32 %4, %firstNode, !dbg !142
  %9 = icmp slt i32 %secondNode, 0, !dbg !143
  %or.cond3 = or i1 %9, %8, !dbg !144
  br i1 %or.cond3, label %18, label %10, !dbg !144

; <label>:10                                      ; preds = %7
  %11 = icmp sle i32 %4, %secondNode, !dbg !145
  %12 = icmp slt i32 %capacity, 1, !dbg !146
  %or.cond5 = or i1 %12, %11, !dbg !147
  %13 = icmp slt i32 %flow, 0, !dbg !148
  %or.cond7 = or i1 %13, %or.cond5, !dbg !147
  %14 = icmp sgt i32 %flow, %capacity, !dbg !149
  %or.cond8 = or i1 %14, %or.cond7, !dbg !147
  br i1 %or.cond8, label %18, label %24, !dbg !147

; <label>:15                                      ; preds = %0
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !150, !tbaa !152
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([60 x i8]* @.str, i64 0, i64 0), %struct._Network* null, i32 %firstNode, i32 %secondNode, i32 %capacity, i32 %flow) #4, !dbg !153
  br label %23

; <label>:18                                      ; preds = %10, %7, %2
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !150, !tbaa !152
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([60 x i8]* @.str, i64 0, i64 0), %struct._Network* %network, i32 %firstNode, i32 %secondNode, i32 %capacity, i32 %flow) #4, !dbg !153
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !154, !tbaa !152
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([13 x i8]* @.str1, i64 0, i64 0), i32 %4) #4, !dbg !157
  br label %23, !dbg !158

; <label>:23                                      ; preds = %15, %18
  tail call void @exit(i32 -1) #5, !dbg !159
  unreachable, !dbg !159

; <label>:24                                      ; preds = %10
  %25 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !160
  %26 = load %struct._Arc*** %25, align 8, !dbg !160, !tbaa !161
  tail call void @llvm.dbg.value(metadata %struct._Arc** %26, i64 0, metadata !114, metadata !122), !dbg !162
  %27 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !163
  %28 = load %struct._Arc*** %27, align 8, !dbg !163, !tbaa !164
  tail call void @llvm.dbg.value(metadata %struct._Arc** %28, i64 0, metadata !115, metadata !122), !dbg !165
  %29 = getelementptr inbounds %struct._Network* %network, i64 0, i32 5, !dbg !166
  %30 = load %struct._ArcChunk** %29, align 8, !dbg !166, !tbaa !168
  tail call void @llvm.dbg.value(metadata %struct._ArcChunk* %30, i64 0, metadata !116, metadata !122), !dbg !169
  %31 = icmp eq %struct._ArcChunk* %30, null, !dbg !170
  %32 = ptrtoint %struct._ArcChunk* %30 to i64
  br i1 %31, label %39, label %33, !dbg !171

; <label>:33                                      ; preds = %24
  %34 = getelementptr inbounds %struct._ArcChunk* %30, i64 0, i32 1, !dbg !172
  %35 = load i32* %34, align 4, !dbg !172, !tbaa !173
  %36 = getelementptr inbounds %struct._ArcChunk* %30, i64 0, i32 0, !dbg !175
  %37 = load i32* %36, align 4, !dbg !175, !tbaa !176
  %38 = icmp eq i32 %35, %37, !dbg !177
  br i1 %38, label %39, label %75, !dbg !178

; <label>:39                                      ; preds = %33, %24
  %40 = tail call i8* @malloc(i64 24) #4, !dbg !179
  %41 = bitcast i8* %40 to %struct._ArcChunk*, !dbg !179
  tail call void @llvm.dbg.value(metadata %struct._ArcChunk* %41, i64 0, metadata !116, metadata !122), !dbg !169
  %42 = icmp eq i8* %40, null, !dbg !179
  br i1 %42, label %43, label %46, !dbg !184

; <label>:43                                      ; preds = %39
  %44 = load %struct.__sFILE** @__stderrp, align 8, !dbg !185, !tbaa !152
  %45 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %44, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 24, i32 47, i8* getelementptr inbounds ([95 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !185
  tail call void @exit(i32 -1) #5, !dbg !185
  unreachable, !dbg !185

; <label>:46                                      ; preds = %39
  %47 = icmp sgt i32 %4, 0, !dbg !187
  br i1 %47, label %48, label %58, !dbg !189

; <label>:48                                      ; preds = %46
  %49 = sext i32 %4 to i64, !dbg !190
  %50 = shl nsw i64 %49, 5, !dbg !190
  %51 = tail call i8* @malloc(i64 %50) #4, !dbg !190
  %52 = getelementptr inbounds i8* %40, i64 8, !dbg !190
  %53 = bitcast i8* %52 to i8**, !dbg !190
  store i8* %51, i8** %53, align 8, !dbg !190, !tbaa !193
  %54 = icmp eq i8* %51, null, !dbg !190
  br i1 %54, label %55, label %68, !dbg !194

; <label>:55                                      ; preds = %48
  %56 = load %struct.__sFILE** @__stderrp, align 8, !dbg !195, !tbaa !152
  %57 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %56, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 %50, i32 48, i8* getelementptr inbounds ([95 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !195
  tail call void @exit(i32 -1) #5, !dbg !195
  unreachable, !dbg !195

; <label>:58                                      ; preds = %46
  %59 = icmp eq i32 %4, 0, !dbg !197
  br i1 %59, label %60, label %63, !dbg !187

; <label>:60                                      ; preds = %58
  %61 = getelementptr inbounds i8* %40, i64 8, !dbg !199
  %62 = bitcast i8* %61 to %struct._Arc**, !dbg !199
  store %struct._Arc* null, %struct._Arc** %62, align 8, !dbg !199, !tbaa !193
  br label %68

; <label>:63                                      ; preds = %58
  %64 = load %struct.__sFILE** @__stderrp, align 8, !dbg !201, !tbaa !152
  %65 = sext i32 %4 to i64, !dbg !201
  %66 = shl nsw i64 %65, 5, !dbg !201
  %67 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %64, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i64 %66, i32 48, i8* getelementptr inbounds ([95 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !201
  tail call void @exit(i32 -1) #5, !dbg !201
  unreachable, !dbg !201

; <label>:68                                      ; preds = %48, %60
  %69 = bitcast i8* %40 to i32*, !dbg !203
  store i32 %4, i32* %69, align 4, !dbg !204, !tbaa !176
  %70 = getelementptr inbounds i8* %40, i64 4, !dbg !205
  %71 = bitcast i8* %70 to i32*, !dbg !205
  store i32 0, i32* %71, align 4, !dbg !206, !tbaa !173
  %72 = getelementptr inbounds i8* %40, i64 16, !dbg !207
  %73 = bitcast i8* %72 to i64*, !dbg !207
  store i64 %32, i64* %73, align 8, !dbg !207, !tbaa !208
  %74 = bitcast %struct._ArcChunk** %29 to i8**, !dbg !209
  store i8* %40, i8** %74, align 8, !dbg !209, !tbaa !168
  br label %75, !dbg !210

; <label>:75                                      ; preds = %68, %33
  %76 = phi i32 [ 0, %68 ], [ %35, %33 ]
  %chunk.0 = phi %struct._ArcChunk* [ %41, %68 ], [ %30, %33 ]
  %77 = getelementptr inbounds %struct._ArcChunk* %chunk.0, i64 0, i32 2, !dbg !211
  %78 = load %struct._Arc** %77, align 8, !dbg !211, !tbaa !193
  %79 = getelementptr inbounds %struct._ArcChunk* %chunk.0, i64 0, i32 1, !dbg !212
  %80 = add nsw i32 %76, 1, !dbg !213
  store i32 %80, i32* %79, align 4, !dbg !213, !tbaa !173
  %81 = sext i32 %76 to i64, !dbg !214
  %82 = getelementptr inbounds %struct._Arc* %78, i64 %81, !dbg !214
  tail call void @llvm.dbg.value(metadata %struct._Arc* %82, i64 0, metadata !113, metadata !122), !dbg !215
  %83 = getelementptr inbounds %struct._Arc* %82, i64 0, i32 0, !dbg !216
  store i32 %firstNode, i32* %83, align 4, !dbg !217, !tbaa !218
  %84 = getelementptr inbounds %struct._Arc* %78, i64 %81, i32 1, !dbg !220
  store i32 %secondNode, i32* %84, align 4, !dbg !221, !tbaa !222
  %85 = getelementptr inbounds %struct._Arc* %78, i64 %81, i32 2, !dbg !223
  store i32 %capacity, i32* %85, align 4, !dbg !224, !tbaa !225
  %86 = getelementptr inbounds %struct._Arc* %78, i64 %81, i32 3, !dbg !226
  store i32 %flow, i32* %86, align 4, !dbg !227, !tbaa !228
  %87 = sext i32 %firstNode to i64, !dbg !229
  %88 = getelementptr inbounds %struct._Arc** %28, i64 %87, !dbg !229
  %89 = bitcast %struct._Arc** %88 to i64*, !dbg !229
  %90 = load i64* %89, align 8, !dbg !229, !tbaa !152
  %91 = getelementptr inbounds %struct._Arc* %78, i64 %81, i32 4, !dbg !230
  %92 = bitcast %struct._Arc** %91 to i64*, !dbg !231
  store i64 %90, i64* %92, align 8, !dbg !231, !tbaa !232
  store %struct._Arc* %82, %struct._Arc** %88, align 8, !dbg !233, !tbaa !152
  %93 = sext i32 %secondNode to i64, !dbg !234
  %94 = getelementptr inbounds %struct._Arc** %26, i64 %93, !dbg !234
  %95 = bitcast %struct._Arc** %94 to i64*, !dbg !234
  %96 = load i64* %95, align 8, !dbg !234, !tbaa !152
  %97 = getelementptr inbounds %struct._Arc* %78, i64 %81, i32 5, !dbg !235
  %98 = bitcast %struct._Arc** %97 to i64*, !dbg !236
  store i64 %96, i64* %98, align 8, !dbg !236, !tbaa !237
  store %struct._Arc* %82, %struct._Arc** %94, align 8, !dbg !238, !tbaa !152
  %99 = getelementptr inbounds %struct._Network* %network, i64 0, i32 1, !dbg !239
  %100 = load i32* %99, align 4, !dbg !240, !tbaa !241
  %101 = add nsw i32 %100, 1, !dbg !240
  store i32 %101, i32* %99, align 4, !dbg !240, !tbaa !241
  ret void, !dbg !242
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!118, !119, !120}
!llvm.ident = !{!121}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !28, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_addArc.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !26, !27}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ArcChunk", file: !7, line: 74, size: 192, align: 64, elements: !8)
!7 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../Network.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !{!9, !11, !12, !23}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6, file: !7, line: 75, baseType: !10, size: 32, align: 32)
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !6, file: !7, line: 76, baseType: !10, size: 32, align: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6, file: !7, line: 77, baseType: !13, size: 64, align: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "Arc", file: !7, line: 13, baseType: !15)
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Arc", file: !7, line: 53, size: 256, align: 64, elements: !16)
!16 = !{!17, !18, !19, !20, !21, !22}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !15, file: !7, line: 54, baseType: !10, size: 32, align: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !15, file: !7, line: 55, baseType: !10, size: 32, align: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !15, file: !7, line: 56, baseType: !10, size: 32, align: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !15, file: !7, line: 57, baseType: !10, size: 32, align: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "nextOut", scope: !15, file: !7, line: 58, baseType: !13, size: 64, align: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nextIn", scope: !15, file: !7, line: 59, baseType: !13, size: 64, align: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6, file: !7, line: 78, baseType: !24, size: 64, align: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "ArcChunk", file: !7, line: 14, baseType: !6)
!26 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!28 = !{!29}
!29 = !DISubprogram(name: "Network_addArc", scope: !1, file: !1, line: 14, type: !30, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Network*, i32, i32, i32, i32)* @Network_addArc, variables: !107)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !10, !10, !10, !10}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "Network", file: !7, line: 12, baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Network", file: !7, line: 34, size: 448, align: 64, elements: !35)
!35 = !{!36, !37, !38, !39, !41, !42, !43, !44}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "nnode", scope: !34, file: !7, line: 35, baseType: !10, size: 32, align: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "narc", scope: !34, file: !7, line: 36, baseType: !10, size: 32, align: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ntrav", scope: !34, file: !7, line: 37, baseType: !10, size: 32, align: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "inheads", scope: !34, file: !7, line: 38, baseType: !40, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "outheads", scope: !34, file: !7, line: 39, baseType: !40, size: 64, align: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !34, file: !7, line: 40, baseType: !24, size: 64, align: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "msglvl", scope: !34, file: !7, line: 41, baseType: !10, size: 32, align: 32, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "msgFile", scope: !34, file: !7, line: 42, baseType: !45, size: 64, align: 64, offset: 384)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !47, line: 153, baseType: !48)
!47 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !47, line: 122, size: 1216, align: 64, elements: !49)
!49 = !{!50, !53, !54, !55, !57, !58, !63, !64, !65, !69, !75, !85, !91, !92, !95, !96, !100, !104, !105, !106}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !48, file: !47, line: 123, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !48, file: !47, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !48, file: !47, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !48, file: !47, line: 126, baseType: !56, size: 16, align: 16, offset: 128)
!56 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !48, file: !47, line: 127, baseType: !56, size: 16, align: 16, offset: 144)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !48, file: !47, line: 128, baseType: !59, size: 128, align: 64, offset: 192)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !47, line: 88, size: 128, align: 64, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !59, file: !47, line: 89, baseType: !51, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !59, file: !47, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !48, file: !47, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !48, file: !47, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !48, file: !47, line: 133, baseType: !66, size: 64, align: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!10, !4}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !48, file: !47, line: 134, baseType: !70, size: 64, align: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!10, !4, !73, !10}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !48, file: !47, line: 135, baseType: !76, size: 64, align: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !4, !79, !10}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !47, line: 77, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !81, line: 71, baseType: !82)
!81 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !83, line: 46, baseType: !84)
!83 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!84 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !48, file: !47, line: 136, baseType: !86, size: 64, align: 64, offset: 640)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!10, !4, !89, !10}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !48, file: !47, line: 139, baseType: !59, size: 128, align: 64, offset: 704)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !48, file: !47, line: 140, baseType: !93, size: 64, align: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !47, line: 94, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !48, file: !47, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !48, file: !47, line: 144, baseType: !97, size: 24, align: 8, offset: 928)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 24, align: 8, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 3)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !48, file: !47, line: 145, baseType: !101, size: 8, align: 8, offset: 952)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8, align: 8, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 1)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !48, file: !47, line: 148, baseType: !59, size: 128, align: 64, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !48, file: !47, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !48, file: !47, line: 152, baseType: !79, size: 64, align: 64, offset: 1152)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "network", arg: 1, scope: !29, file: !1, line: 15, type: !32)
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "firstNode", arg: 2, scope: !29, file: !1, line: 16, type: !10)
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "secondNode", arg: 3, scope: !29, file: !1, line: 17, type: !10)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "capacity", arg: 4, scope: !29, file: !1, line: 18, type: !10)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flow", arg: 5, scope: !29, file: !1, line: 19, type: !10)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arc", scope: !29, file: !1, line: 21, type: !13)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inheads", scope: !29, file: !1, line: 22, type: !40)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outheads", scope: !29, file: !1, line: 22, type: !40)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chunk", scope: !29, file: !1, line: 23, type: !24)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nnode", scope: !29, file: !1, line: 24, type: !10)
!118 = !{i32 2, !"Dwarf Version", i32 2}
!119 = !{i32 2, !"Debug Info Version", i32 700000003}
!120 = !{i32 1, !"PIC Level", i32 2}
!121 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!122 = !DIExpression()
!123 = !DILocation(line: 15, column: 15, scope: !29)
!124 = !DILocation(line: 16, column: 14, scope: !29)
!125 = !DILocation(line: 17, column: 14, scope: !29)
!126 = !DILocation(line: 18, column: 14, scope: !29)
!127 = !DILocation(line: 19, column: 14, scope: !29)
!128 = !DILocation(line: 30, column: 15, scope: !129)
!129 = distinct !DILexicalBlock(scope: !29, file: !1, line: 30, column: 7)
!130 = !DILocation(line: 31, column: 4, scope: !129)
!131 = !DILocation(line: 31, column: 25, scope: !129)
!132 = !{!133, !134, i64 0}
!133 = !{!"_Network", !134, i64 0, !134, i64 4, !134, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !134, i64 40, !137, i64 48}
!134 = !{!"int", !135, i64 0}
!135 = !{!"omnipotent char", !136, i64 0}
!136 = !{!"Simple C/C++ TBAA"}
!137 = !{!"any pointer", !135, i64 0}
!138 = !DILocation(line: 24, column: 12, scope: !29)
!139 = !DILocation(line: 31, column: 32, scope: !129)
!140 = !DILocation(line: 32, column: 18, scope: !129)
!141 = !DILocation(line: 32, column: 4, scope: !129)
!142 = !DILocation(line: 32, column: 36, scope: !129)
!143 = !DILocation(line: 33, column: 18, scope: !129)
!144 = !DILocation(line: 33, column: 4, scope: !129)
!145 = !DILocation(line: 33, column: 36, scope: !129)
!146 = !DILocation(line: 34, column: 16, scope: !129)
!147 = !DILocation(line: 34, column: 4, scope: !129)
!148 = !DILocation(line: 35, column: 12, scope: !129)
!149 = !DILocation(line: 35, column: 24, scope: !129)
!150 = !DILocation(line: 36, column: 12, scope: !151)
!151 = distinct !DILexicalBlock(scope: !129, file: !1, line: 35, column: 37)
!152 = !{!137, !137, i64 0}
!153 = !DILocation(line: 36, column: 4, scope: !151)
!154 = !DILocation(line: 40, column: 15, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 39, column: 27)
!156 = distinct !DILexicalBlock(scope: !151, file: !1, line: 39, column: 9)
!157 = !DILocation(line: 40, column: 7, scope: !155)
!158 = !DILocation(line: 41, column: 4, scope: !155)
!159 = !DILocation(line: 42, column: 4, scope: !151)
!160 = !DILocation(line: 44, column: 21, scope: !29)
!161 = !{!133, !137, i64 16}
!162 = !DILocation(line: 22, column: 14, scope: !29)
!163 = !DILocation(line: 45, column: 21, scope: !29)
!164 = !{!133, !137, i64 24}
!165 = !DILocation(line: 22, column: 25, scope: !29)
!166 = !DILocation(line: 46, column: 24, scope: !167)
!167 = distinct !DILexicalBlock(scope: !29, file: !1, line: 46, column: 6)
!168 = !{!133, !137, i64 32}
!169 = !DILocation(line: 23, column: 13, scope: !29)
!170 = !DILocation(line: 46, column: 31, scope: !167)
!171 = !DILocation(line: 46, column: 39, scope: !167)
!172 = !DILocation(line: 46, column: 49, scope: !167)
!173 = !{!174, !134, i64 4}
!174 = !{!"_ArcChunk", !134, i64 0, !134, i64 4, !137, i64 8, !137, i64 16}
!175 = !DILocation(line: 46, column: 65, scope: !167)
!176 = !{!174, !134, i64 0}
!177 = !DILocation(line: 46, column: 55, scope: !167)
!178 = !DILocation(line: 46, column: 6, scope: !29)
!179 = !DILocation(line: 47, column: 4, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 47, column: 4)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 47, column: 4)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 47, column: 4)
!183 = distinct !DILexicalBlock(scope: !167, file: !1, line: 46, column: 72)
!184 = !DILocation(line: 47, column: 4, scope: !181)
!185 = !DILocation(line: 47, column: 4, scope: !186)
!186 = distinct !DILexicalBlock(scope: !180, file: !1, line: 47, column: 4)
!187 = !DILocation(line: 48, column: 4, scope: !188)
!188 = distinct !DILexicalBlock(scope: !183, file: !1, line: 48, column: 4)
!189 = !DILocation(line: 48, column: 4, scope: !183)
!190 = !DILocation(line: 48, column: 4, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 48, column: 4)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 48, column: 4)
!193 = !{!174, !137, i64 8}
!194 = !DILocation(line: 48, column: 4, scope: !192)
!195 = !DILocation(line: 48, column: 4, scope: !196)
!196 = distinct !DILexicalBlock(scope: !191, file: !1, line: 48, column: 4)
!197 = !DILocation(line: 48, column: 4, scope: !198)
!198 = distinct !DILexicalBlock(scope: !188, file: !1, line: 48, column: 4)
!199 = !DILocation(line: 48, column: 4, scope: !200)
!200 = distinct !DILexicalBlock(scope: !198, file: !1, line: 48, column: 4)
!201 = !DILocation(line: 48, column: 4, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 48, column: 4)
!203 = !DILocation(line: 49, column: 11, scope: !183)
!204 = !DILocation(line: 49, column: 19, scope: !183)
!205 = !DILocation(line: 50, column: 11, scope: !183)
!206 = !DILocation(line: 50, column: 19, scope: !183)
!207 = !DILocation(line: 51, column: 19, scope: !183)
!208 = !{!174, !137, i64 16}
!209 = !DILocation(line: 52, column: 19, scope: !183)
!210 = !DILocation(line: 53, column: 1, scope: !183)
!211 = !DILocation(line: 54, column: 14, scope: !29)
!212 = !DILocation(line: 54, column: 28, scope: !29)
!213 = !DILocation(line: 54, column: 33, scope: !29)
!214 = !DILocation(line: 54, column: 19, scope: !29)
!215 = !DILocation(line: 21, column: 13, scope: !29)
!216 = !DILocation(line: 55, column: 6, scope: !29)
!217 = !DILocation(line: 55, column: 16, scope: !29)
!218 = !{!219, !134, i64 0}
!219 = !{!"_Arc", !134, i64 0, !134, i64 4, !134, i64 8, !134, i64 12, !137, i64 16, !137, i64 24}
!220 = !DILocation(line: 56, column: 6, scope: !29)
!221 = !DILocation(line: 56, column: 16, scope: !29)
!222 = !{!219, !134, i64 4}
!223 = !DILocation(line: 57, column: 6, scope: !29)
!224 = !DILocation(line: 57, column: 16, scope: !29)
!225 = !{!219, !134, i64 8}
!226 = !DILocation(line: 58, column: 6, scope: !29)
!227 = !DILocation(line: 58, column: 16, scope: !29)
!228 = !{!219, !134, i64 12}
!229 = !DILocation(line: 59, column: 18, scope: !29)
!230 = !DILocation(line: 59, column: 6, scope: !29)
!231 = !DILocation(line: 59, column: 16, scope: !29)
!232 = !{!219, !137, i64 16}
!233 = !DILocation(line: 60, column: 21, scope: !29)
!234 = !DILocation(line: 61, column: 18, scope: !29)
!235 = !DILocation(line: 61, column: 6, scope: !29)
!236 = !DILocation(line: 61, column: 16, scope: !29)
!237 = !{!219, !137, i64 24}
!238 = !DILocation(line: 62, column: 21, scope: !29)
!239 = !DILocation(line: 63, column: 10, scope: !29)
!240 = !DILocation(line: 63, column: 14, scope: !29)
!241 = !{!133, !134, i64 4}
!242 = !DILocation(line: 65, column: 1, scope: !29)
