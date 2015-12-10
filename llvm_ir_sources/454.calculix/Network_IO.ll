; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_IO.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct.__sFILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"\0A in list for %d :\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c" <%d,%d,%d>\00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c"\0A out list for %d :\00", align 1
@.str3 = private unnamed_addr constant [50 x i8] c"\0A\0A Network : %d nodes, %d arcs, %d arc traversals\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @Network_writeForHumanEye(%struct._Network* nocapture readonly %network, %struct.__sFILE* nocapture %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Network* %network, i64 0, metadata !105, metadata !120), !dbg !121
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !106, metadata !120), !dbg !122
  tail call void @llvm.dbg.value(metadata %struct._Network* %network, i64 0, metadata !114, metadata !120) #3, !dbg !123
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !115, metadata !120) #3, !dbg !125
  %1 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !126
  %2 = load i32* %1, align 4, !dbg !126, !tbaa !127
  %3 = getelementptr inbounds %struct._Network* %network, i64 0, i32 1, !dbg !133
  %4 = load i32* %3, align 4, !dbg !133, !tbaa !134
  %5 = getelementptr inbounds %struct._Network* %network, i64 0, i32 2, !dbg !135
  %6 = load i32* %5, align 4, !dbg !135, !tbaa !136
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), i32 %2, i32 %4, i32 %6) #4, !dbg !137
  %8 = load i32* %1, align 4, !dbg !138, !tbaa !127
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !111, metadata !120), !dbg !139
  %9 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !140
  %10 = load %struct._Arc*** %9, align 8, !dbg !140, !tbaa !141
  tail call void @llvm.dbg.value(metadata %struct._Arc** %10, i64 0, metadata !108, metadata !120), !dbg !142
  %11 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !143
  %12 = load %struct._Arc*** %11, align 8, !dbg !143, !tbaa !144
  tail call void @llvm.dbg.value(metadata %struct._Arc** %12, i64 0, metadata !109, metadata !120), !dbg !145
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !110, metadata !120), !dbg !146
  %13 = icmp sgt i32 %8, 0, !dbg !147
  br i1 %13, label %.lr.ph10, label %._crit_edge11, !dbg !150

.lr.ph10:                                         ; preds = %0
  %14 = add i32 %8, -1, !dbg !150
  br label %15, !dbg !150

; <label>:15                                      ; preds = %._crit_edge7, %.lr.ph10
  %indvars.iv = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next, %._crit_edge7 ]
  %16 = trunc i64 %indvars.iv to i32, !dbg !151
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i32 %16) #4, !dbg !151
  %18 = tail call i32 @fflush(%struct.__sFILE* %fp) #4, !dbg !153
  %19 = getelementptr inbounds %struct._Arc** %10, i64 %indvars.iv, !dbg !154
  %arc.01 = load %struct._Arc** %19, align 8, !dbg !154
  %20 = icmp eq %struct._Arc* %arc.01, null, !dbg !156
  br i1 %20, label %._crit_edge, label %.lr.ph, !dbg !158

.lr.ph:                                           ; preds = %15, %.lr.ph
  %arc.02 = phi %struct._Arc* [ %arc.0, %.lr.ph ], [ %arc.01, %15 ]
  %21 = getelementptr inbounds %struct._Arc* %arc.02, i64 0, i32 0, !dbg !159
  %22 = load i32* %21, align 4, !dbg !159, !tbaa !161
  %23 = getelementptr inbounds %struct._Arc* %arc.02, i64 0, i32 3, !dbg !163
  %24 = load i32* %23, align 4, !dbg !163, !tbaa !164
  %25 = getelementptr inbounds %struct._Arc* %arc.02, i64 0, i32 2, !dbg !165
  %26 = load i32* %25, align 4, !dbg !165, !tbaa !166
  %27 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i32 %22, i32 %24, i32 %26) #4, !dbg !167
  %28 = tail call i32 @fflush(%struct.__sFILE* %fp) #4, !dbg !168
  %29 = getelementptr inbounds %struct._Arc* %arc.02, i64 0, i32 5, !dbg !169
  %arc.0 = load %struct._Arc** %29, align 8, !dbg !154
  %30 = icmp eq %struct._Arc* %arc.0, null, !dbg !156
  br i1 %30, label %._crit_edge, label %.lr.ph, !dbg !158

._crit_edge:                                      ; preds = %.lr.ph, %15
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str2, i64 0, i64 0), i32 %16) #4, !dbg !170
  %32 = tail call i32 @fflush(%struct.__sFILE* %fp) #4, !dbg !171
  %33 = getelementptr inbounds %struct._Arc** %12, i64 %indvars.iv, !dbg !172
  %arc.13 = load %struct._Arc** %33, align 8, !dbg !172
  %34 = icmp eq %struct._Arc* %arc.13, null, !dbg !174
  br i1 %34, label %._crit_edge7, label %.lr.ph6, !dbg !176

.lr.ph6:                                          ; preds = %._crit_edge, %.lr.ph6
  %arc.14 = phi %struct._Arc* [ %arc.1, %.lr.ph6 ], [ %arc.13, %._crit_edge ]
  %35 = getelementptr inbounds %struct._Arc* %arc.14, i64 0, i32 1, !dbg !177
  %36 = load i32* %35, align 4, !dbg !177, !tbaa !179
  %37 = getelementptr inbounds %struct._Arc* %arc.14, i64 0, i32 3, !dbg !180
  %38 = load i32* %37, align 4, !dbg !180, !tbaa !164
  %39 = getelementptr inbounds %struct._Arc* %arc.14, i64 0, i32 2, !dbg !181
  %40 = load i32* %39, align 4, !dbg !181, !tbaa !166
  %41 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i32 %36, i32 %38, i32 %40) #4, !dbg !182
  %42 = tail call i32 @fflush(%struct.__sFILE* %fp) #4, !dbg !183
  %43 = getelementptr inbounds %struct._Arc* %arc.14, i64 0, i32 4, !dbg !184
  %arc.1 = load %struct._Arc** %43, align 8, !dbg !172
  %44 = icmp eq %struct._Arc* %arc.1, null, !dbg !174
  br i1 %44, label %._crit_edge7, label %.lr.ph6, !dbg !176

._crit_edge7:                                     ; preds = %.lr.ph6, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !150
  %exitcond = icmp eq i32 %16, %14, !dbg !150
  br i1 %exitcond, label %._crit_edge11, label %15, !dbg !150

._crit_edge11:                                    ; preds = %._crit_edge7, %0
  ret void, !dbg !185
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Network_writeStats(%struct._Network* nocapture readonly %network, %struct.__sFILE* nocapture %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Network* %network, i64 0, metadata !114, metadata !120), !dbg !186
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !115, metadata !120), !dbg !187
  %1 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !188
  %2 = load i32* %1, align 4, !dbg !188, !tbaa !127
  %3 = getelementptr inbounds %struct._Network* %network, i64 0, i32 1, !dbg !189
  %4 = load i32* %3, align 4, !dbg !189, !tbaa !134
  %5 = getelementptr inbounds %struct._Network* %network, i64 0, i32 2, !dbg !190
  %6 = load i32* %5, align 4, !dbg !190, !tbaa !136
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), i32 %2, i32 %4, i32 %6) #4, !dbg !191
  ret void, !dbg !192
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!116, !117, !118}
!llvm.ident = !{!119}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_IO.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !112}
!6 = !DISubprogram(name: "Network_writeForHumanEye", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Network*, %struct.__sFILE*)* @Network_writeForHumanEye, variables: !104)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !42}
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
!104 = !{!105, !106, !107, !108, !109, !110, !111}
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "network", arg: 1, scope: !6, file: !1, line: 15, type: !9)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !6, file: !1, line: 16, type: !42)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arc", scope: !6, file: !1, line: 18, type: !20)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inheads", scope: !6, file: !1, line: 19, type: !19)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outheads", scope: !6, file: !1, line: 19, type: !19)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jnode", scope: !6, file: !1, line: 20, type: !15)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nnode", scope: !6, file: !1, line: 20, type: !15)
!112 = !DISubprogram(name: "Network_writeStats", scope: !1, file: !1, line: 53, type: !7, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Network*, %struct.__sFILE*)* @Network_writeStats, variables: !113)
!113 = !{!114, !115}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "network", arg: 1, scope: !112, file: !1, line: 54, type: !9)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !112, file: !1, line: 55, type: !42)
!116 = !{i32 2, !"Dwarf Version", i32 2}
!117 = !{i32 2, !"Debug Info Version", i32 700000003}
!118 = !{i32 1, !"PIC Level", i32 2}
!119 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!120 = !DIExpression()
!121 = !DILocation(line: 15, column: 15, scope: !6)
!122 = !DILocation(line: 16, column: 15, scope: !6)
!123 = !DILocation(line: 54, column: 15, scope: !112, inlinedAt: !124)
!124 = distinct !DILocation(line: 22, column: 1, scope: !6)
!125 = !DILocation(line: 55, column: 15, scope: !112, inlinedAt: !124)
!126 = !DILocation(line: 58, column: 18, scope: !112, inlinedAt: !124)
!127 = !{!128, !129, i64 0}
!128 = !{!"_Network", !129, i64 0, !129, i64 4, !129, i64 8, !132, i64 16, !132, i64 24, !132, i64 32, !129, i64 40, !132, i64 48}
!129 = !{!"int", !130, i64 0}
!130 = !{!"omnipotent char", !131, i64 0}
!131 = !{!"Simple C/C++ TBAA"}
!132 = !{!"any pointer", !130, i64 0}
!133 = !DILocation(line: 58, column: 34, scope: !112, inlinedAt: !124)
!134 = !{!128, !129, i64 4}
!135 = !DILocation(line: 58, column: 49, scope: !112, inlinedAt: !124)
!136 = !{!128, !129, i64 8}
!137 = !DILocation(line: 57, column: 1, scope: !112, inlinedAt: !124)
!138 = !DILocation(line: 23, column: 21, scope: !6)
!139 = !DILocation(line: 20, column: 14, scope: !6)
!140 = !DILocation(line: 24, column: 21, scope: !6)
!141 = !{!128, !132, i64 16}
!142 = !DILocation(line: 19, column: 9, scope: !6)
!143 = !DILocation(line: 25, column: 21, scope: !6)
!144 = !{!128, !132, i64 24}
!145 = !DILocation(line: 19, column: 20, scope: !6)
!146 = !DILocation(line: 20, column: 7, scope: !6)
!147 = !DILocation(line: 26, column: 25, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !1, line: 26, column: 1)
!149 = distinct !DILexicalBlock(scope: !6, file: !1, line: 26, column: 1)
!150 = !DILocation(line: 26, column: 1, scope: !149)
!151 = !DILocation(line: 27, column: 4, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 26, column: 45)
!153 = !DILocation(line: 28, column: 4, scope: !152)
!154 = !DILocation(line: 29, column: 16, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !1, line: 29, column: 4)
!156 = !DILocation(line: 29, column: 37, scope: !157)
!157 = distinct !DILexicalBlock(scope: !155, file: !1, line: 29, column: 4)
!158 = !DILocation(line: 29, column: 4, scope: !155)
!159 = !DILocation(line: 31, column: 20, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !1, line: 29, column: 67)
!161 = !{!162, !129, i64 0}
!162 = !{!"_Arc", !129, i64 0, !129, i64 4, !129, i64 8, !129, i64 12, !132, i64 16, !132, i64 24}
!163 = !DILocation(line: 31, column: 32, scope: !160)
!164 = !{!162, !129, i64 12}
!165 = !DILocation(line: 31, column: 43, scope: !160)
!166 = !{!162, !129, i64 8}
!167 = !DILocation(line: 30, column: 7, scope: !160)
!168 = !DILocation(line: 32, column: 7, scope: !160)
!169 = !DILocation(line: 29, column: 58, scope: !157)
!170 = !DILocation(line: 34, column: 4, scope: !152)
!171 = !DILocation(line: 35, column: 4, scope: !152)
!172 = !DILocation(line: 36, column: 16, scope: !173)
!173 = distinct !DILexicalBlock(scope: !152, file: !1, line: 36, column: 4)
!174 = !DILocation(line: 36, column: 38, scope: !175)
!175 = distinct !DILexicalBlock(scope: !173, file: !1, line: 36, column: 4)
!176 = !DILocation(line: 36, column: 4, scope: !173)
!177 = !DILocation(line: 38, column: 20, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !1, line: 36, column: 69)
!179 = !{!162, !129, i64 4}
!180 = !DILocation(line: 38, column: 33, scope: !178)
!181 = !DILocation(line: 38, column: 44, scope: !178)
!182 = !DILocation(line: 37, column: 7, scope: !178)
!183 = !DILocation(line: 39, column: 7, scope: !178)
!184 = !DILocation(line: 36, column: 59, scope: !175)
!185 = !DILocation(line: 42, column: 1, scope: !6)
!186 = !DILocation(line: 54, column: 15, scope: !112)
!187 = !DILocation(line: 55, column: 15, scope: !112)
!188 = !DILocation(line: 58, column: 18, scope: !112)
!189 = !DILocation(line: 58, column: 34, scope: !112)
!190 = !DILocation(line: 58, column: 49, scope: !112)
!191 = !DILocation(line: 57, column: 1, scope: !112)
!192 = !DILocation(line: 60, column: 1, scope: !112)
