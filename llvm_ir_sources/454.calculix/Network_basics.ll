; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct.__sFILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [95 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Network_setDefaultFields(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in Network_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Network_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._Network* @Network_new() #0 {
  %1 = tail call i8* @malloc(i64 56) #5, !dbg !124
  %2 = bitcast i8* %1 to %struct._Network*, !dbg !124
  tail call void @llvm.dbg.value(metadata %struct._Network* %2, i64 0, metadata !107, metadata !128), !dbg !129
  %3 = icmp eq i8* %1, null, !dbg !124
  br i1 %3, label %4, label %7, !dbg !130

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !131, !tbaa !133
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 56, i32 19, i8* getelementptr inbounds ([95 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !131
  tail call void @exit(i32 -1) #6, !dbg !131
  unreachable, !dbg !131

; <label>:7                                       ; preds = %0
  tail call void @Network_setDefaultFields(%struct._Network* %2) #7, !dbg !137
  ret %struct._Network* %2, !dbg !138
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @Network_setDefaultFields(%struct._Network* %network) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Network* %network, i64 0, metadata !112, metadata !128), !dbg !139
  %1 = icmp eq %struct._Network* %network, null, !dbg !140
  br i1 %1, label %2, label %5, !dbg !142

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !143, !tbaa !133
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._Network* null) #5, !dbg !145
  tail call void @exit(i32 -1) #6, !dbg !146
  unreachable, !dbg !146

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !147
  store i32 0, i32* %6, align 4, !dbg !148, !tbaa !149
  %7 = getelementptr inbounds %struct._Network* %network, i64 0, i32 1, !dbg !152
  store i32 0, i32* %7, align 4, !dbg !153, !tbaa !154
  %8 = getelementptr inbounds %struct._Network* %network, i64 0, i32 2, !dbg !155
  store i32 0, i32* %8, align 4, !dbg !156, !tbaa !157
  %9 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !158
  %10 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7, !dbg !159
  store %struct.__sFILE* null, %struct.__sFILE** %10, align 8, !dbg !160, !tbaa !161
  %11 = bitcast %struct._Arc*** %9 to i8*, !dbg !162
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 28, i32 8, i1 false), !dbg !163
  ret void, !dbg !162
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Network_clearData(%struct._Network* %network) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Network* %network, i64 0, metadata !115, metadata !128), !dbg !164
  %1 = icmp eq %struct._Network* %network, null, !dbg !165
  br i1 %1, label %2, label %5, !dbg !167

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !168, !tbaa !133
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._Network* null) #5, !dbg !170
  tail call void @exit(i32 -1) #6, !dbg !171
  unreachable, !dbg !171

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !172
  %7 = load %struct._Arc*** %6, align 8, !dbg !172, !tbaa !174
  %8 = icmp eq %struct._Arc** %7, null, !dbg !175
  br i1 %8, label %11, label %9, !dbg !176

; <label>:9                                       ; preds = %5
  %10 = bitcast %struct._Arc** %7 to i8*, !dbg !177
  tail call void @free(i8* %10) #7, !dbg !177
  store %struct._Arc** null, %struct._Arc*** %6, align 8, !dbg !177, !tbaa !174
  br label %11, !dbg !177

; <label>:11                                      ; preds = %5, %9
  %12 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !181
  %13 = load %struct._Arc*** %12, align 8, !dbg !181, !tbaa !183
  %14 = icmp eq %struct._Arc** %13, null, !dbg !184
  br i1 %14, label %.preheader, label %15, !dbg !185

; <label>:15                                      ; preds = %11
  %16 = bitcast %struct._Arc** %13 to i8*, !dbg !186
  tail call void @free(i8* %16) #7, !dbg !186
  store %struct._Arc** null, %struct._Arc*** %12, align 8, !dbg !186, !tbaa !183
  br label %.preheader, !dbg !186

.preheader:                                       ; preds = %15, %11
  %17 = getelementptr inbounds %struct._Network* %network, i64 0, i32 5, !dbg !190
  %18 = load %struct._ArcChunk** %17, align 8, !dbg !190, !tbaa !191
  tail call void @llvm.dbg.value(metadata %struct._ArcChunk* %18, i64 0, metadata !116, metadata !128), !dbg !192
  %19 = icmp eq %struct._ArcChunk* %18, null, !dbg !193
  br i1 %19, label %._crit_edge, label %.lr.ph, !dbg !194

.lr.ph:                                           ; preds = %.preheader
  %20 = bitcast %struct._ArcChunk** %17 to i64*, !dbg !195
  br label %21, !dbg !194

; <label>:21                                      ; preds = %.lr.ph, %31
  %22 = phi %struct._ArcChunk* [ %18, %.lr.ph ], [ %33, %31 ]
  %23 = getelementptr inbounds %struct._ArcChunk* %22, i64 0, i32 3, !dbg !197
  %24 = bitcast %struct._ArcChunk** %23 to i64*, !dbg !197
  %25 = load i64* %24, align 8, !dbg !197, !tbaa !198
  store i64 %25, i64* %20, align 8, !dbg !195, !tbaa !191
  %26 = getelementptr inbounds %struct._ArcChunk* %22, i64 0, i32 2, !dbg !200
  %27 = load %struct._Arc** %26, align 8, !dbg !200, !tbaa !202
  %28 = icmp eq %struct._Arc* %27, null, !dbg !200
  br i1 %28, label %31, label %29, !dbg !203

; <label>:29                                      ; preds = %21
  %30 = bitcast %struct._Arc* %27 to i8*, !dbg !204
  tail call void @free(i8* %30) #7, !dbg !204
  br label %31, !dbg !204

; <label>:31                                      ; preds = %29, %21
  %32 = bitcast %struct._ArcChunk* %22 to i8*, !dbg !206
  tail call void @free(i8* %32) #7, !dbg !206
  tail call void @llvm.dbg.value(metadata %struct._ArcChunk* null, i64 0, metadata !116, metadata !128), !dbg !192
  %33 = load %struct._ArcChunk** %17, align 8, !dbg !190, !tbaa !191
  tail call void @llvm.dbg.value(metadata %struct._ArcChunk* %33, i64 0, metadata !116, metadata !128), !dbg !192
  %34 = icmp eq %struct._ArcChunk* %33, null, !dbg !193
  br i1 %34, label %._crit_edge, label %21, !dbg !194

._crit_edge:                                      ; preds = %31, %.preheader
  tail call void @Network_setDefaultFields(%struct._Network* %network) #7, !dbg !209
  ret void, !dbg !210
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @Network_free(%struct._Network* %network) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Network* %network, i64 0, metadata !119, metadata !128), !dbg !211
  %1 = icmp eq %struct._Network* %network, null, !dbg !212
  br i1 %1, label %2, label %5, !dbg !214

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !215, !tbaa !133
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), %struct._Network* null) #5, !dbg !217
  tail call void @exit(i32 -1) #6, !dbg !218
  unreachable, !dbg !218

; <label>:5                                       ; preds = %0
  tail call void @Network_clearData(%struct._Network* %network) #7, !dbg !219
  %6 = bitcast %struct._Network* %network to i8*, !dbg !220
  tail call void @free(i8* %6) #7, !dbg !220
  tail call void @llvm.dbg.value(metadata %struct._Network* null, i64 0, metadata !119, metadata !128), !dbg !211
  ret void, !dbg !223
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!120, !121, !122}
!llvm.ident = !{!123}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !100, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !99, !56, !65}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Network", file: !6, line: 34, size: 448, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../Network.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !12, !24, !25, !34, !35}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "nnode", scope: !5, file: !6, line: 35, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "narc", scope: !5, file: !6, line: 36, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "ntrav", scope: !5, file: !6, line: 37, baseType: !9, size: 32, align: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "inheads", scope: !5, file: !6, line: 38, baseType: !13, size: 64, align: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Arc", file: !6, line: 13, baseType: !16)
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Arc", file: !6, line: 53, size: 256, align: 64, elements: !17)
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !16, file: !6, line: 54, baseType: !9, size: 32, align: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !16, file: !6, line: 55, baseType: !9, size: 32, align: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !16, file: !6, line: 56, baseType: !9, size: 32, align: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !16, file: !6, line: 57, baseType: !9, size: 32, align: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nextOut", scope: !16, file: !6, line: 58, baseType: !14, size: 64, align: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "nextIn", scope: !16, file: !6, line: 59, baseType: !14, size: 64, align: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "outheads", scope: !5, file: !6, line: 39, baseType: !13, size: 64, align: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !5, file: !6, line: 40, baseType: !26, size: 64, align: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ArcChunk", file: !6, line: 14, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ArcChunk", file: !6, line: 74, size: 192, align: 64, elements: !29)
!29 = !{!30, !31, !32, !33}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !28, file: !6, line: 75, baseType: !9, size: 32, align: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !28, file: !6, line: 76, baseType: !9, size: 32, align: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !28, file: !6, line: 77, baseType: !14, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !28, file: !6, line: 78, baseType: !26, size: 64, align: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "msglvl", scope: !5, file: !6, line: 41, baseType: !9, size: 32, align: 32, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "msgFile", scope: !5, file: !6, line: 42, baseType: !36, size: 64, align: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !38, line: 153, baseType: !39)
!38 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !38, line: 122, size: 1216, align: 64, elements: !40)
!40 = !{!41, !44, !45, !46, !48, !49, !54, !55, !57, !61, !67, !77, !83, !84, !87, !88, !92, !96, !97, !98}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !39, file: !38, line: 123, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !39, file: !38, line: 124, baseType: !9, size: 32, align: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !39, file: !38, line: 125, baseType: !9, size: 32, align: 32, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !39, file: !38, line: 126, baseType: !47, size: 16, align: 16, offset: 128)
!47 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !39, file: !38, line: 127, baseType: !47, size: 16, align: 16, offset: 144)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !39, file: !38, line: 128, baseType: !50, size: 128, align: 64, offset: 192)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !38, line: 88, size: 128, align: 64, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !50, file: !38, line: 89, baseType: !42, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !50, file: !38, line: 90, baseType: !9, size: 32, align: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !39, file: !38, line: 129, baseType: !9, size: 32, align: 32, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !39, file: !38, line: 132, baseType: !56, size: 64, align: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !39, file: !38, line: 133, baseType: !58, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!9, !56}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !39, file: !38, line: 134, baseType: !62, size: 64, align: 64, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!9, !56, !65, !9}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !39, file: !38, line: 135, baseType: !68, size: 64, align: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !56, !71, !9}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !38, line: 77, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !73, line: 71, baseType: !74)
!73 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!76 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !39, file: !38, line: 136, baseType: !78, size: 64, align: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!9, !56, !81, !9}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !39, file: !38, line: 139, baseType: !50, size: 128, align: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !39, file: !38, line: 140, baseType: !85, size: 64, align: 64, offset: 832)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !38, line: 94, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !39, file: !38, line: 141, baseType: !9, size: 32, align: 32, offset: 896)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !39, file: !38, line: 144, baseType: !89, size: 24, align: 8, offset: 928)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 24, align: 8, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 3)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !39, file: !38, line: 145, baseType: !93, size: 8, align: 8, offset: 952)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, align: 8, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 1)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !39, file: !38, line: 148, baseType: !50, size: 128, align: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !39, file: !38, line: 151, baseType: !9, size: 32, align: 32, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !39, file: !38, line: 152, baseType: !71, size: 64, align: 64, offset: 1152)
!99 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!100 = !{!101, !108, !113, !117}
!101 = !DISubprogram(name: "Network_new", scope: !1, file: !1, line: 14, type: !102, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Network* ()* @Network_new, variables: !106)
!102 = !DISubroutineType(types: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "Network", file: !6, line: 12, baseType: !5)
!106 = !{!107}
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "network", scope: !101, file: !1, line: 17, type: !104)
!108 = !DISubprogram(name: "Network_setDefaultFields", scope: !1, file: !1, line: 34, type: !109, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Network*)* @Network_setDefaultFields, variables: !111)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !104}
!111 = !{!112}
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "network", arg: 1, scope: !108, file: !1, line: 35, type: !104)
!113 = !DISubprogram(name: "Network_clearData", scope: !1, file: !1, line: 62, type: !109, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Network*)* @Network_clearData, variables: !114)
!114 = !{!115, !116}
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "network", arg: 1, scope: !113, file: !1, line: 63, type: !104)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chunk", scope: !113, file: !1, line: 65, type: !26)
!117 = !DISubprogram(name: "Network_free", scope: !1, file: !1, line: 96, type: !109, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Network*)* @Network_free, variables: !118)
!118 = !{!119}
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "network", arg: 1, scope: !117, file: !1, line: 97, type: !104)
!120 = !{i32 2, !"Dwarf Version", i32 2}
!121 = !{i32 2, !"Debug Info Version", i32 700000003}
!122 = !{i32 1, !"PIC Level", i32 2}
!123 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!124 = !DILocation(line: 19, column: 1, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 19, column: 1)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 19, column: 1)
!127 = distinct !DILexicalBlock(scope: !101, file: !1, line: 19, column: 1)
!128 = !DIExpression()
!129 = !DILocation(line: 17, column: 12, scope: !101)
!130 = !DILocation(line: 19, column: 1, scope: !126)
!131 = !DILocation(line: 19, column: 1, scope: !132)
!132 = distinct !DILexicalBlock(scope: !125, file: !1, line: 19, column: 1)
!133 = !{!134, !134, i64 0}
!134 = !{!"any pointer", !135, i64 0}
!135 = !{!"omnipotent char", !136, i64 0}
!136 = !{!"Simple C/C++ TBAA"}
!137 = !DILocation(line: 21, column: 1, scope: !101)
!138 = !DILocation(line: 23, column: 1, scope: !101)
!139 = !DILocation(line: 35, column: 15, scope: !108)
!140 = !DILocation(line: 37, column: 14, scope: !141)
!141 = distinct !DILexicalBlock(scope: !108, file: !1, line: 37, column: 6)
!142 = !DILocation(line: 37, column: 6, scope: !108)
!143 = !DILocation(line: 38, column: 12, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !1, line: 37, column: 24)
!145 = !DILocation(line: 38, column: 4, scope: !144)
!146 = !DILocation(line: 40, column: 4, scope: !144)
!147 = !DILocation(line: 42, column: 10, scope: !108)
!148 = !DILocation(line: 42, column: 19, scope: !108)
!149 = !{!150, !151, i64 0}
!150 = !{!"_Network", !151, i64 0, !151, i64 4, !151, i64 8, !134, i64 16, !134, i64 24, !134, i64 32, !151, i64 40, !134, i64 48}
!151 = !{!"int", !135, i64 0}
!152 = !DILocation(line: 43, column: 10, scope: !108)
!153 = !DILocation(line: 43, column: 19, scope: !108)
!154 = !{!150, !151, i64 4}
!155 = !DILocation(line: 44, column: 10, scope: !108)
!156 = !DILocation(line: 44, column: 19, scope: !108)
!157 = !{!150, !151, i64 8}
!158 = !DILocation(line: 45, column: 10, scope: !108)
!159 = !DILocation(line: 49, column: 10, scope: !108)
!160 = !DILocation(line: 49, column: 19, scope: !108)
!161 = !{!150, !134, i64 48}
!162 = !DILocation(line: 51, column: 1, scope: !108)
!163 = !DILocation(line: 45, column: 19, scope: !108)
!164 = !DILocation(line: 63, column: 15, scope: !113)
!165 = !DILocation(line: 67, column: 14, scope: !166)
!166 = distinct !DILexicalBlock(scope: !113, file: !1, line: 67, column: 6)
!167 = !DILocation(line: 67, column: 6, scope: !113)
!168 = !DILocation(line: 68, column: 12, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 67, column: 24)
!170 = !DILocation(line: 68, column: 4, scope: !169)
!171 = !DILocation(line: 70, column: 4, scope: !169)
!172 = !DILocation(line: 72, column: 15, scope: !173)
!173 = distinct !DILexicalBlock(scope: !113, file: !1, line: 72, column: 6)
!174 = !{!150, !134, i64 16}
!175 = !DILocation(line: 72, column: 23, scope: !173)
!176 = !DILocation(line: 72, column: 6, scope: !113)
!177 = !DILocation(line: 73, column: 4, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 73, column: 4)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 73, column: 4)
!180 = distinct !DILexicalBlock(scope: !173, file: !1, line: 72, column: 33)
!181 = !DILocation(line: 75, column: 15, scope: !182)
!182 = distinct !DILexicalBlock(scope: !113, file: !1, line: 75, column: 6)
!183 = !{!150, !134, i64 24}
!184 = !DILocation(line: 75, column: 24, scope: !182)
!185 = !DILocation(line: 75, column: 6, scope: !113)
!186 = !DILocation(line: 76, column: 4, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 76, column: 4)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 76, column: 4)
!189 = distinct !DILexicalBlock(scope: !182, file: !1, line: 75, column: 34)
!190 = !DILocation(line: 78, column: 27, scope: !113)
!191 = !{!150, !134, i64 32}
!192 = !DILocation(line: 65, column: 13, scope: !113)
!193 = !DILocation(line: 78, column: 34, scope: !113)
!194 = !DILocation(line: 78, column: 1, scope: !113)
!195 = !DILocation(line: 79, column: 19, scope: !196)
!196 = distinct !DILexicalBlock(scope: !113, file: !1, line: 78, column: 44)
!197 = !DILocation(line: 79, column: 28, scope: !196)
!198 = !{!199, !134, i64 16}
!199 = !{!"_ArcChunk", !151, i64 0, !151, i64 4, !134, i64 8, !134, i64 16}
!200 = !DILocation(line: 80, column: 4, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !1, line: 80, column: 4)
!202 = !{!199, !134, i64 8}
!203 = !DILocation(line: 80, column: 4, scope: !196)
!204 = !DILocation(line: 80, column: 4, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !1, line: 80, column: 4)
!206 = !DILocation(line: 81, column: 4, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 81, column: 4)
!208 = distinct !DILexicalBlock(scope: !196, file: !1, line: 81, column: 4)
!209 = !DILocation(line: 83, column: 1, scope: !113)
!210 = !DILocation(line: 85, column: 1, scope: !113)
!211 = !DILocation(line: 97, column: 15, scope: !117)
!212 = !DILocation(line: 99, column: 14, scope: !213)
!213 = distinct !DILexicalBlock(scope: !117, file: !1, line: 99, column: 6)
!214 = !DILocation(line: 99, column: 6, scope: !117)
!215 = !DILocation(line: 100, column: 12, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !1, line: 99, column: 24)
!217 = !DILocation(line: 100, column: 4, scope: !216)
!218 = !DILocation(line: 102, column: 4, scope: !216)
!219 = !DILocation(line: 104, column: 1, scope: !117)
!220 = !DILocation(line: 105, column: 1, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !1, line: 105, column: 1)
!222 = distinct !DILexicalBlock(scope: !117, file: !1, line: 105, column: 1)
!223 = !DILocation(line: 107, column: 1, scope: !117)
