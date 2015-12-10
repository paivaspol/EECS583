; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMaxFlow.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct.__sFILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }
%struct._Ideq = type { i32, i32, i32, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [45 x i8] c"\0A fatal error in findMaxFlow(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [18 x i8] c"\0A\0A findMaxFlow :\0A\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"\0A checking out node %d\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"\0A    delta = %d from findAugmentPath(%d)\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @Network_findMaxFlow(%struct._Network* %network) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Network* %network, i64 0, metadata !105, metadata !141), !dbg !142
  %1 = icmp eq %struct._Network* %network, null, !dbg !143
  br i1 %1, label %6, label %2, !dbg !145

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !146
  %4 = load i32* %3, align 4, !dbg !146, !tbaa !147
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !131, metadata !141), !dbg !153
  %5 = icmp slt i32 %4, 1, !dbg !154
  br i1 %5, label %6, label %9, !dbg !155

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !156, !tbaa !158
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._Network* %network) #6, !dbg !159
  tail call void @exit(i32 -1) #7, !dbg !160
  unreachable, !dbg !160

; <label>:9                                       ; preds = %2
  %10 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !161
  %11 = load %struct._Arc*** %10, align 8, !dbg !161, !tbaa !162
  tail call void @llvm.dbg.value(metadata %struct._Arc** %11, i64 0, metadata !108, metadata !141), !dbg !163
  %12 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6, !dbg !164
  %13 = load i32* %12, align 4, !dbg !164, !tbaa !165
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !130, metadata !141), !dbg !166
  %14 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7, !dbg !167
  %15 = load %struct.__sFILE** %14, align 8, !dbg !167, !tbaa !168
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %15, i64 0, metadata !109, metadata !141), !dbg !169
  %16 = icmp sgt i32 %13, 2, !dbg !170
  br i1 %16, label %17, label %19, !dbg !172

; <label>:17                                      ; preds = %9
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0), i64 17, i64 1, %struct.__sFILE* %15), !dbg !173
  br label %19, !dbg !175

; <label>:19                                      ; preds = %17, %9
  %20 = tail call %struct._Ideq* @Ideq_new() #6, !dbg !176
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %20, i64 0, metadata !110, metadata !141), !dbg !177
  %21 = tail call i32 @Ideq_resize(%struct._Ideq* %20, i32 %4) #6, !dbg !178
  %22 = tail call i32* @IVinit(i32 %4, i32 -1) #6, !dbg !179
  tail call void @llvm.dbg.value(metadata i32* %22, i64 0, metadata !135, metadata !141), !dbg !180
  %23 = tail call i32* @IVinit(i32 %4, i32 -1) #6, !dbg !181
  tail call void @llvm.dbg.value(metadata i32* %23, i64 0, metadata !136, metadata !141), !dbg !182
  %24 = tail call i32* @IVinit(i32 %4, i32 0) #6, !dbg !183
  tail call void @llvm.dbg.value(metadata i32* %24, i64 0, metadata !134, metadata !141), !dbg !184
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !133, metadata !141), !dbg !185
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !132, metadata !141), !dbg !186
  %arc.04 = load %struct._Arc** %11, align 8, !dbg !187
  %25 = icmp eq %struct._Arc* %arc.04, null, !dbg !189
  br i1 %25, label %._crit_edge9, label %.lr.ph8, !dbg !191

.lr.ph8:                                          ; preds = %19
  %26 = getelementptr inbounds %struct._Network* %network, i64 0, i32 2, !dbg !192
  br label %27, !dbg !191

; <label>:27                                      ; preds = %.lr.ph8, %._crit_edge
  %arc.06 = phi %struct._Arc* [ %arc.04, %.lr.ph8 ], [ %arc.0, %._crit_edge ]
  %tag.05 = phi i32 [ 0, %.lr.ph8 ], [ %tag.1.lcssa, %._crit_edge ]
  %28 = load i32* %26, align 4, !dbg !194, !tbaa !195
  %29 = add nsw i32 %28, 1, !dbg !194
  store i32 %29, i32* %26, align 4, !dbg !194, !tbaa !195
  br i1 %16, label %30, label %.preheader, !dbg !196

; <label>:30                                      ; preds = %27
  %31 = getelementptr inbounds %struct._Arc* %arc.06, i64 0, i32 1, !dbg !197
  %32 = load i32* %31, align 4, !dbg !197, !tbaa !200
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), i32 %32) #6, !dbg !202
  br label %.preheader, !dbg !203

.preheader:                                       ; preds = %30, %27
  %34 = getelementptr inbounds %struct._Arc* %arc.06, i64 0, i32 2, !dbg !204
  %35 = load i32* %34, align 4, !dbg !204, !tbaa !205
  %36 = getelementptr inbounds %struct._Arc* %arc.06, i64 0, i32 3, !dbg !206
  %37 = load i32* %36, align 4, !dbg !206, !tbaa !207
  %38 = sub nsw i32 %35, %37, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !129, metadata !141), !dbg !209
  %39 = icmp sgt i32 %38, 0, !dbg !210
  br i1 %39, label %.lr.ph, label %._crit_edge, !dbg !211

.lr.ph:                                           ; preds = %.preheader
  %40 = getelementptr inbounds %struct._Arc* %arc.06, i64 0, i32 1, !dbg !212
  br label %41, !dbg !211

; <label>:41                                      ; preds = %.lr.ph, %50
  %42 = phi i32 [ %38, %.lr.ph ], [ %54, %50 ]
  %tag.11 = phi i32 [ %tag.05, %.lr.ph ], [ %51, %50 ]
  %43 = load i32* %40, align 4, !dbg !212, !tbaa !200
  %44 = tail call i32 @Network_findAugmentingPath(%struct._Network* %network, i32 %43, i32 %42, i32 %tag.11, %struct._Ideq* %20, i32* %23, i32* %24, i32* %22) #6, !dbg !214
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !129, metadata !141), !dbg !209
  br i1 %16, label %45, label %48, !dbg !215

; <label>:45                                      ; preds = %41
  %46 = load i32* %40, align 4, !dbg !216, !tbaa !200
  %47 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0), i32 %44, i32 %46) #6, !dbg !219
  br label %48, !dbg !220

; <label>:48                                      ; preds = %45, %41
  %49 = icmp eq i32 %44, 0, !dbg !221
  br i1 %49, label %._crit_edge, label %50, !dbg !223

; <label>:50                                      ; preds = %48
  tail call void @Network_augmentPath(%struct._Network* %network, i32 %44, i32* %22) #6, !dbg !224
  %51 = add nsw i32 %tag.11, 1, !dbg !225
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !133, metadata !141), !dbg !185
  %52 = load i32* %34, align 4, !dbg !204, !tbaa !205
  %53 = load i32* %36, align 4, !dbg !206, !tbaa !207
  %54 = sub nsw i32 %52, %53, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !129, metadata !141), !dbg !209
  %55 = icmp sgt i32 %54, 0, !dbg !210
  br i1 %55, label %41, label %._crit_edge, !dbg !211

._crit_edge:                                      ; preds = %48, %50, %.preheader
  %tag.1.lcssa = phi i32 [ %tag.05, %.preheader ], [ %tag.11, %48 ], [ %51, %50 ]
  %56 = getelementptr inbounds %struct._Arc* %arc.06, i64 0, i32 4, !dbg !226
  %arc.0 = load %struct._Arc** %56, align 8, !dbg !187
  %57 = icmp eq %struct._Arc* %arc.0, null, !dbg !189
  br i1 %57, label %._crit_edge9, label %27, !dbg !191

._crit_edge9:                                     ; preds = %._crit_edge, %19
  tail call void @Ideq_free(%struct._Ideq* %20) #6, !dbg !227
  tail call void @IVfree(i32* %22) #6, !dbg !228
  tail call void @IVfree(i32* %23) #6, !dbg !229
  tail call void @IVfree(i32* %24) #6, !dbg !230
  ret void, !dbg !231
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare %struct._Ideq* @Ideq_new() #3

; Function Attrs: optsize
declare i32 @Ideq_resize(%struct._Ideq*, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32 @Network_findAugmentingPath(%struct._Network*, i32, i32, i32, %struct._Ideq*, i32*, i32*, i32*) #3

; Function Attrs: optsize
declare void @Network_augmentPath(%struct._Network*, i32, i32*) #3

; Function Attrs: optsize
declare void @Ideq_free(%struct._Ideq*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!137, !138, !139}
!llvm.ident = !{!140}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_findMaxFlow.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "Network_findMaxFlow", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Network*)* @Network_findMaxFlow, variables: !104)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Network", file: !11, line: 12, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../Network.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Network", file: !11, line: 34, size: 448, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !30, !31, !40, !41}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "nnode", scope: !12, file: !11, line: 35, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "narc", scope: !12, file: !11, line: 36, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ntrav", scope: !12, file: !11, line: 37, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "inheads", scope: !12, file: !11, line: 38, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Arc", file: !11, line: 13, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Arc", file: !11, line: 53, size: 256, align: 64, elements: !23)
!23 = !{!24, !25, !26, !27, !28, !29}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !22, file: !11, line: 54, baseType: !15, size: 32, align: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !22, file: !11, line: 55, baseType: !15, size: 32, align: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !22, file: !11, line: 56, baseType: !15, size: 32, align: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !22, file: !11, line: 57, baseType: !15, size: 32, align: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "nextOut", scope: !22, file: !11, line: 58, baseType: !20, size: 64, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nextIn", scope: !22, file: !11, line: 59, baseType: !20, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "outheads", scope: !12, file: !11, line: 39, baseType: !19, size: 64, align: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !12, file: !11, line: 40, baseType: !32, size: 64, align: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "ArcChunk", file: !11, line: 14, baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ArcChunk", file: !11, line: 74, size: 192, align: 64, elements: !35)
!35 = !{!36, !37, !38, !39}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !34, file: !11, line: 75, baseType: !15, size: 32, align: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !34, file: !11, line: 76, baseType: !15, size: 32, align: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !34, file: !11, line: 77, baseType: !20, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !11, line: 78, baseType: !32, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "msglvl", scope: !12, file: !11, line: 41, baseType: !15, size: 32, align: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "msgFile", scope: !12, file: !11, line: 42, baseType: !42, size: 64, align: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !44, line: 153, baseType: !45)
!44 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !44, line: 122, size: 1216, align: 64, elements: !46)
!46 = !{!47, !50, !51, !52, !54, !55, !60, !61, !62, !66, !72, !82, !88, !89, !92, !93, !97, !101, !102, !103}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !45, file: !44, line: 123, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !45, file: !44, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !45, file: !44, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !45, file: !44, line: 126, baseType: !53, size: 16, align: 16, offset: 128)
!53 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !45, file: !44, line: 127, baseType: !53, size: 16, align: 16, offset: 144)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !45, file: !44, line: 128, baseType: !56, size: 128, align: 64, offset: 192)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !44, line: 88, size: 128, align: 64, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !56, file: !44, line: 89, baseType: !48, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !56, file: !44, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !45, file: !44, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !45, file: !44, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !45, file: !44, line: 133, baseType: !63, size: 64, align: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!15, !4}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !45, file: !44, line: 134, baseType: !67, size: 64, align: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!15, !4, !70, !15}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !45, file: !44, line: 135, baseType: !73, size: 64, align: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !4, !76, !15}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !44, line: 77, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !78, line: 71, baseType: !79)
!78 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !80, line: 46, baseType: !81)
!80 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!81 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !45, file: !44, line: 136, baseType: !83, size: 64, align: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!15, !4, !86, !15}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !45, file: !44, line: 139, baseType: !56, size: 128, align: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !45, file: !44, line: 140, baseType: !90, size: 64, align: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !44, line: 94, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !45, file: !44, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !45, file: !44, line: 144, baseType: !94, size: 24, align: 8, offset: 928)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 24, align: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 3)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !45, file: !44, line: 145, baseType: !98, size: 8, align: 8, offset: 952)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !45, file: !44, line: 148, baseType: !56, size: 128, align: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !45, file: !44, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !45, file: !44, line: 152, baseType: !76, size: 64, align: 64, offset: 1152)
!104 = !{!105, !106, !107, !108, !109, !110, !129, !130, !131, !132, !133, !134, !135, !136}
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "network", arg: 1, scope: !6, file: !1, line: 15, type: !9)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arc", scope: !6, file: !1, line: 17, type: !20)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inheads", scope: !6, file: !1, line: 18, type: !19)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outheads", scope: !6, file: !1, line: 18, type: !19)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msgFile", scope: !6, file: !1, line: 19, type: !42)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deq", scope: !6, file: !1, line: 20, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ideq", file: !113, line: 19, baseType: !114)
!113 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../../Ideq/Ideq.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ideq", file: !113, line: 20, size: 320, align: 64, elements: !115)
!115 = !{!116, !117, !118, !119}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !114, file: !113, line: 21, baseType: !15, size: 32, align: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !114, file: !113, line: 22, baseType: !15, size: 32, align: 32, offset: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !114, file: !113, line: 23, baseType: !15, size: 32, align: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !114, file: !113, line: 24, baseType: !120, size: 192, align: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !121, line: 20, baseType: !122)
!121 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !121, line: 21, size: 192, align: 64, elements: !123)
!123 = !{!124, !125, !126, !127}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !122, file: !121, line: 22, baseType: !15, size: 32, align: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !122, file: !121, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !122, file: !121, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !122, file: !121, line: 25, baseType: !128, size: 64, align: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "delta", scope: !6, file: !1, line: 21, type: !15)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msglvl", scope: !6, file: !1, line: 21, type: !15)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nnode", scope: !6, file: !1, line: 21, type: !15)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "source", scope: !6, file: !1, line: 21, type: !15)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tag", scope: !6, file: !1, line: 21, type: !15)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deltas", scope: !6, file: !1, line: 22, type: !128)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pred", scope: !6, file: !1, line: 22, type: !128)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tags", scope: !6, file: !1, line: 22, type: !128)
!137 = !{i32 2, !"Dwarf Version", i32 2}
!138 = !{i32 2, !"Debug Info Version", i32 700000003}
!139 = !{i32 1, !"PIC Level", i32 2}
!140 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!141 = !DIExpression()
!142 = !DILocation(line: 15, column: 15, scope: !6)
!143 = !DILocation(line: 28, column: 14, scope: !144)
!144 = distinct !DILexicalBlock(scope: !6, file: !1, line: 28, column: 6)
!145 = !DILocation(line: 28, column: 22, scope: !144)
!146 = !DILocation(line: 28, column: 43, scope: !144)
!147 = !{!148, !149, i64 0}
!148 = !{!"_Network", !149, i64 0, !149, i64 4, !149, i64 8, !152, i64 16, !152, i64 24, !152, i64 32, !149, i64 40, !152, i64 48}
!149 = !{!"int", !150, i64 0}
!150 = !{!"omnipotent char", !151, i64 0}
!151 = !{!"Simple C/C++ TBAA"}
!152 = !{!"any pointer", !150, i64 0}
!153 = !DILocation(line: 21, column: 23, scope: !6)
!154 = !DILocation(line: 28, column: 50, scope: !144)
!155 = !DILocation(line: 28, column: 6, scope: !6)
!156 = !DILocation(line: 29, column: 12, scope: !157)
!157 = distinct !DILexicalBlock(scope: !144, file: !1, line: 28, column: 57)
!158 = !{!152, !152, i64 0}
!159 = !DILocation(line: 29, column: 4, scope: !157)
!160 = !DILocation(line: 31, column: 4, scope: !157)
!161 = !DILocation(line: 33, column: 21, scope: !6)
!162 = !{!148, !152, i64 24}
!163 = !DILocation(line: 18, column: 21, scope: !6)
!164 = !DILocation(line: 35, column: 21, scope: !6)
!165 = !{!148, !149, i64 40}
!166 = !DILocation(line: 21, column: 15, scope: !6)
!167 = !DILocation(line: 36, column: 21, scope: !6)
!168 = !{!148, !152, i64 48}
!169 = !DILocation(line: 19, column: 9, scope: !6)
!170 = !DILocation(line: 37, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !6, file: !1, line: 37, column: 6)
!172 = !DILocation(line: 37, column: 6, scope: !6)
!173 = !DILocation(line: 38, column: 4, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !1, line: 37, column: 19)
!175 = !DILocation(line: 39, column: 1, scope: !174)
!176 = !DILocation(line: 45, column: 7, scope: !6)
!177 = !DILocation(line: 20, column: 9, scope: !6)
!178 = !DILocation(line: 46, column: 1, scope: !6)
!179 = !DILocation(line: 47, column: 10, scope: !6)
!180 = !DILocation(line: 22, column: 18, scope: !6)
!181 = !DILocation(line: 48, column: 10, scope: !6)
!182 = !DILocation(line: 22, column: 25, scope: !6)
!183 = !DILocation(line: 49, column: 10, scope: !6)
!184 = !DILocation(line: 22, column: 9, scope: !6)
!185 = !DILocation(line: 21, column: 38, scope: !6)
!186 = !DILocation(line: 21, column: 30, scope: !6)
!187 = !DILocation(line: 57, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !6, file: !1, line: 57, column: 1)
!189 = !DILocation(line: 57, column: 36, scope: !190)
!190 = distinct !DILexicalBlock(scope: !188, file: !1, line: 57, column: 1)
!191 = !DILocation(line: 57, column: 1, scope: !188)
!192 = !DILocation(line: 58, column: 13, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 57, column: 67)
!194 = !DILocation(line: 58, column: 18, scope: !193)
!195 = !{!148, !149, i64 8}
!196 = !DILocation(line: 59, column: 9, scope: !193)
!197 = !DILocation(line: 60, column: 56, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 59, column: 22)
!199 = distinct !DILexicalBlock(scope: !193, file: !1, line: 59, column: 9)
!200 = !{!201, !149, i64 4}
!201 = !{!"_Arc", !149, i64 0, !149, i64 4, !149, i64 8, !149, i64 12, !152, i64 16, !152, i64 24}
!202 = !DILocation(line: 60, column: 7, scope: !198)
!203 = !DILocation(line: 61, column: 4, scope: !198)
!204 = !DILocation(line: 62, column: 26, scope: !193)
!205 = !{!201, !149, i64 8}
!206 = !DILocation(line: 62, column: 42, scope: !193)
!207 = !{!201, !149, i64 12}
!208 = !DILocation(line: 62, column: 35, scope: !193)
!209 = !DILocation(line: 21, column: 8, scope: !6)
!210 = !DILocation(line: 62, column: 48, scope: !193)
!211 = !DILocation(line: 62, column: 4, scope: !193)
!212 = !DILocation(line: 63, column: 56, scope: !213)
!213 = distinct !DILexicalBlock(scope: !193, file: !1, line: 62, column: 54)
!214 = !DILocation(line: 63, column: 15, scope: !213)
!215 = !DILocation(line: 65, column: 12, scope: !213)
!216 = !DILocation(line: 67, column: 30, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !1, line: 65, column: 25)
!218 = distinct !DILexicalBlock(scope: !213, file: !1, line: 65, column: 12)
!219 = !DILocation(line: 66, column: 10, scope: !217)
!220 = !DILocation(line: 68, column: 7, scope: !217)
!221 = !DILocation(line: 69, column: 18, scope: !222)
!222 = distinct !DILexicalBlock(scope: !213, file: !1, line: 69, column: 12)
!223 = !DILocation(line: 69, column: 12, scope: !213)
!224 = !DILocation(line: 72, column: 8, scope: !213)
!225 = !DILocation(line: 73, column: 11, scope: !213)
!226 = !DILocation(line: 57, column: 57, scope: !190)
!227 = !DILocation(line: 81, column: 1, scope: !6)
!228 = !DILocation(line: 82, column: 1, scope: !6)
!229 = !DILocation(line: 83, column: 1, scope: !6)
!230 = !DILocation(line: 84, column: 1, scope: !6)
!231 = !DILocation(line: 86, column: 1, scope: !6)
