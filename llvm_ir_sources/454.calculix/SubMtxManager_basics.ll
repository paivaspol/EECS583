; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Lock = type { i8*, i32, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [107 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c\00", align 1
@.str2 = private unnamed_addr constant [63 x i8] c"\0A fatal error in SubMtxManager_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"\0A fatal error in SubMtxManager_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [52 x i8] c"\0A fatal error in SubMtxManager_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._SubMtxManager* @SubMtxManager_new() #0 {
  %1 = tail call i8* @malloc(i64 56) #6, !dbg !81
  %2 = bitcast i8* %1 to %struct._SubMtxManager*, !dbg !81
  tail call void @llvm.dbg.value(metadata %struct._SubMtxManager* %2, i64 0, metadata !64, metadata !85), !dbg !86
  %3 = icmp eq i8* %1, null, !dbg !81
  br i1 %3, label %4, label %7, !dbg !87

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !88, !tbaa !90
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 56, i32 21, i8* getelementptr inbounds ([107 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !88
  tail call void @exit(i32 -1) #7, !dbg !88
  unreachable, !dbg !88

; <label>:7                                       ; preds = %0
  tail call void @SubMtxManager_setDefaultFields(%struct._SubMtxManager* %2) #8, !dbg !94
  ret %struct._SubMtxManager* %2, !dbg !95
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtxManager_setDefaultFields(%struct._SubMtxManager* %manager) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtxManager* %manager, i64 0, metadata !69, metadata !85), !dbg !96
  %1 = icmp eq %struct._SubMtxManager* %manager, null, !dbg !97
  br i1 %1, label %2, label %5, !dbg !99

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !100, !tbaa !90
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([63 x i8]* @.str2, i64 0, i64 0), %struct._SubMtxManager* null) #6, !dbg !102
  tail call void @exit(i32 -1) #7, !dbg !103
  unreachable, !dbg !103

; <label>:5                                       ; preds = %0
  %6 = bitcast %struct._SubMtxManager* %manager to i8*, !dbg !104
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 52, i32 8, i1 false), !dbg !105
  ret void, !dbg !104
}

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtxManager_clearData(%struct._SubMtxManager* %manager) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtxManager* %manager, i64 0, metadata !72, metadata !85), !dbg !106
  %1 = icmp eq %struct._SubMtxManager* %manager, null, !dbg !107
  br i1 %1, label %6, label %.preheader, !dbg !109

.preheader:                                       ; preds = %0
  %2 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 0, !dbg !110
  %3 = load %struct._SubMtx** %2, align 8, !dbg !110, !tbaa !111
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %3, i64 0, metadata !73, metadata !85), !dbg !114
  %4 = icmp eq %struct._SubMtx* %3, null, !dbg !115
  br i1 %4, label %._crit_edge, label %.lr.ph, !dbg !116

.lr.ph:                                           ; preds = %.preheader
  %5 = bitcast %struct._SubMtxManager* %manager to i64*, !dbg !117
  br label %9, !dbg !116

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !119, !tbaa !90
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._SubMtxManager* null) #6, !dbg !121
  tail call void @exit(i32 -1) #7, !dbg !122
  unreachable, !dbg !122

; <label>:9                                       ; preds = %.lr.ph, %9
  %10 = phi %struct._SubMtx* [ %3, %.lr.ph ], [ %14, %9 ]
  %11 = getelementptr inbounds %struct._SubMtx* %10, i64 0, i32 9, !dbg !123
  %12 = bitcast %struct._SubMtx** %11 to i64*, !dbg !123
  %13 = load i64* %12, align 8, !dbg !123, !tbaa !124
  store i64 %13, i64* %5, align 8, !dbg !117, !tbaa !111
  tail call void @SubMtx_free(%struct._SubMtx* %10) #6, !dbg !127
  %14 = load %struct._SubMtx** %2, align 8, !dbg !110, !tbaa !111
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %14, i64 0, metadata !73, metadata !85), !dbg !114
  %15 = icmp eq %struct._SubMtx* %14, null, !dbg !115
  br i1 %15, label %._crit_edge, label %9, !dbg !116

._crit_edge:                                      ; preds = %9, %.preheader
  %16 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 1, !dbg !128
  %17 = load %struct._Lock** %16, align 8, !dbg !128, !tbaa !130
  %18 = icmp eq %struct._Lock* %17, null, !dbg !131
  br i1 %18, label %20, label %19, !dbg !132

; <label>:19                                      ; preds = %._crit_edge
  tail call void @Lock_free(%struct._Lock* %17) #6, !dbg !133
  br label %20, !dbg !135

; <label>:20                                      ; preds = %._crit_edge, %19
  tail call void @SubMtxManager_setDefaultFields(%struct._SubMtxManager* %manager) #8, !dbg !136
  ret void, !dbg !137
}

; Function Attrs: optsize
declare void @SubMtx_free(%struct._SubMtx*) #3

; Function Attrs: optsize
declare void @Lock_free(%struct._Lock*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtxManager_free(%struct._SubMtxManager* %manager) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtxManager* %manager, i64 0, metadata !76, metadata !85), !dbg !138
  %1 = icmp eq %struct._SubMtxManager* %manager, null, !dbg !139
  br i1 %1, label %2, label %5, !dbg !141

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !142, !tbaa !90
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), %struct._SubMtxManager* null) #6, !dbg !144
  tail call void @exit(i32 -1) #7, !dbg !145
  unreachable, !dbg !145

; <label>:5                                       ; preds = %0
  tail call void @SubMtxManager_clearData(%struct._SubMtxManager* %manager) #8, !dbg !146
  %6 = bitcast %struct._SubMtxManager* %manager to i8*, !dbg !147
  tail call void @free(i8* %6) #8, !dbg !147
  tail call void @llvm.dbg.value(metadata %struct._SubMtxManager* null, i64 0, metadata !76, metadata !85), !dbg !138
  ret void, !dbg !150
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

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
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!77, !78, !79}
!llvm.ident = !{!80}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !57, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !54, !42, !55}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SubMtxManager", file: !6, line: 10, size: 448, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../SubMtxManager.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !35, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5, file: !6, line: 11, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "SubMtx", file: !11, line: 43, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../SubMtx/SubMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SubMtx", file: !11, line: 44, size: 576, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !19, !20, !21, !22, !25, !34}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !11, line: 45, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !12, file: !11, line: 46, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "rowid", scope: !12, file: !11, line: 47, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "colid", scope: !12, file: !11, line: 48, baseType: !15, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "nrow", scope: !12, file: !11, line: 49, baseType: !15, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ncol", scope: !12, file: !11, line: 50, baseType: !15, size: 32, align: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !12, file: !11, line: 51, baseType: !15, size: 32, align: 32, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !12, file: !11, line: 52, baseType: !23, size: 64, align: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !12, file: !11, line: 53, baseType: !26, size: 192, align: 64, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !27, line: 20, baseType: !28)
!27 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !27, line: 21, size: 192, align: 64, elements: !29)
!29 = !{!30, !31, !32, !33}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !28, file: !27, line: 22, baseType: !15, size: 32, align: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !28, file: !27, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !28, file: !27, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !28, file: !27, line: 25, baseType: !23, size: 64, align: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !11, line: 54, baseType: !9, size: 64, align: 64, offset: 512)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5, file: !6, line: 12, baseType: !36, size: 64, align: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "Lock", file: !38, line: 36, baseType: !39)
!38 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../Lock/Lock.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Lock", file: !38, line: 37, size: 128, align: 64, elements: !40)
!40 = !{!41, !43, !44}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !39, file: !38, line: 45, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !39, file: !38, line: 47, baseType: !15, size: 32, align: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !39, file: !38, line: 48, baseType: !15, size: 32, align: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5, file: !6, line: 13, baseType: !15, size: 32, align: 32, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "nactive", scope: !5, file: !6, line: 14, baseType: !15, size: 32, align: 32, offset: 160)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesactive", scope: !5, file: !6, line: 15, baseType: !15, size: 32, align: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesrequested", scope: !5, file: !6, line: 16, baseType: !15, size: 32, align: 32, offset: 224)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "nbytesalloc", scope: !5, file: !6, line: 17, baseType: !15, size: 32, align: 32, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests", scope: !5, file: !6, line: 18, baseType: !15, size: 32, align: 32, offset: 288)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nreleases", scope: !5, file: !6, line: 19, baseType: !15, size: 32, align: 32, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !5, file: !6, line: 20, baseType: !15, size: 32, align: 32, offset: 352)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !5, file: !6, line: 21, baseType: !15, size: 32, align: 32, offset: 384)
!54 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!57 = !{!58, !65, !70, !74}
!58 = !DISubprogram(name: "SubMtxManager_new", scope: !1, file: !1, line: 16, type: !59, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._SubMtxManager* ()* @SubMtxManager_new, variables: !63)
!59 = !DISubroutineType(types: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "SubMtxManager", file: !6, line: 9, baseType: !5)
!63 = !{!64}
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manager", scope: !58, file: !1, line: 19, type: !61)
!65 = !DISubprogram(name: "SubMtxManager_setDefaultFields", scope: !1, file: !1, line: 35, type: !66, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtxManager*)* @SubMtxManager_setDefaultFields, variables: !68)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !61}
!68 = !{!69}
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manager", arg: 1, scope: !65, file: !1, line: 36, type: !61)
!70 = !DISubprogram(name: "SubMtxManager_clearData", scope: !1, file: !1, line: 67, type: !66, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtxManager*)* @SubMtxManager_clearData, variables: !71)
!71 = !{!72, !73}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manager", arg: 1, scope: !70, file: !1, line: 68, type: !61)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mtx", scope: !70, file: !1, line: 70, type: !9)
!74 = !DISubprogram(name: "SubMtxManager_free", scope: !1, file: !1, line: 116, type: !66, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtxManager*)* @SubMtxManager_free, variables: !75)
!75 = !{!76}
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manager", arg: 1, scope: !74, file: !1, line: 117, type: !61)
!77 = !{i32 2, !"Dwarf Version", i32 2}
!78 = !{i32 2, !"Debug Info Version", i32 700000003}
!79 = !{i32 1, !"PIC Level", i32 2}
!80 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!81 = !DILocation(line: 21, column: 1, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 21, column: 1)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 21, column: 1)
!84 = distinct !DILexicalBlock(scope: !58, file: !1, line: 21, column: 1)
!85 = !DIExpression()
!86 = !DILocation(line: 19, column: 18, scope: !58)
!87 = !DILocation(line: 21, column: 1, scope: !83)
!88 = !DILocation(line: 21, column: 1, scope: !89)
!89 = distinct !DILexicalBlock(scope: !82, file: !1, line: 21, column: 1)
!90 = !{!91, !91, i64 0}
!91 = !{!"any pointer", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !DILocation(line: 22, column: 1, scope: !58)
!95 = !DILocation(line: 24, column: 1, scope: !58)
!96 = !DILocation(line: 36, column: 21, scope: !65)
!97 = !DILocation(line: 38, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !65, file: !1, line: 38, column: 6)
!99 = !DILocation(line: 38, column: 6, scope: !65)
!100 = !DILocation(line: 39, column: 12, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 38, column: 24)
!102 = !DILocation(line: 39, column: 4, scope: !101)
!103 = !DILocation(line: 42, column: 4, scope: !101)
!104 = !DILocation(line: 56, column: 1, scope: !65)
!105 = !DILocation(line: 45, column: 26, scope: !65)
!106 = !DILocation(line: 68, column: 21, scope: !70)
!107 = !DILocation(line: 76, column: 14, scope: !108)
!108 = distinct !DILexicalBlock(scope: !70, file: !1, line: 76, column: 6)
!109 = !DILocation(line: 76, column: 6, scope: !70)
!110 = !DILocation(line: 86, column: 25, scope: !70)
!111 = !{!112, !91, i64 0}
!112 = !{!"_SubMtxManager", !91, i64 0, !91, i64 8, !113, i64 16, !113, i64 20, !113, i64 24, !113, i64 28, !113, i64 32, !113, i64 36, !113, i64 40, !113, i64 44, !113, i64 48}
!113 = !{!"int", !92, i64 0}
!114 = !DILocation(line: 70, column: 11, scope: !70)
!115 = !DILocation(line: 86, column: 31, scope: !70)
!116 = !DILocation(line: 86, column: 1, scope: !70)
!117 = !DILocation(line: 87, column: 18, scope: !118)
!118 = distinct !DILexicalBlock(scope: !70, file: !1, line: 86, column: 41)
!119 = !DILocation(line: 77, column: 12, scope: !120)
!120 = distinct !DILexicalBlock(scope: !108, file: !1, line: 76, column: 24)
!121 = !DILocation(line: 77, column: 4, scope: !120)
!122 = !DILocation(line: 79, column: 4, scope: !120)
!123 = !DILocation(line: 87, column: 25, scope: !118)
!124 = !{!125, !91, i64 64}
!125 = !{!"_SubMtx", !113, i64 0, !113, i64 4, !113, i64 8, !113, i64 12, !113, i64 16, !113, i64 20, !113, i64 24, !91, i64 32, !126, i64 40, !91, i64 64}
!126 = !{!"_DV", !113, i64 0, !113, i64 4, !113, i64 8, !91, i64 16}
!127 = !DILocation(line: 88, column: 4, scope: !118)
!128 = !DILocation(line: 90, column: 15, scope: !129)
!129 = distinct !DILexicalBlock(scope: !70, file: !1, line: 90, column: 6)
!130 = !{!112, !91, i64 8}
!131 = !DILocation(line: 90, column: 20, scope: !129)
!132 = !DILocation(line: 90, column: 6, scope: !70)
!133 = !DILocation(line: 96, column: 4, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !1, line: 90, column: 30)
!135 = !DILocation(line: 97, column: 1, scope: !134)
!136 = !DILocation(line: 103, column: 1, scope: !70)
!137 = !DILocation(line: 105, column: 1, scope: !70)
!138 = !DILocation(line: 117, column: 21, scope: !74)
!139 = !DILocation(line: 119, column: 14, scope: !140)
!140 = distinct !DILexicalBlock(scope: !74, file: !1, line: 119, column: 6)
!141 = !DILocation(line: 119, column: 6, scope: !74)
!142 = !DILocation(line: 120, column: 12, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !1, line: 119, column: 24)
!144 = !DILocation(line: 120, column: 4, scope: !143)
!145 = !DILocation(line: 122, column: 4, scope: !143)
!146 = !DILocation(line: 124, column: 1, scope: !74)
!147 = !DILocation(line: 125, column: 1, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !1, line: 125, column: 1)
!149 = distinct !DILexicalBlock(scope: !74, file: !1, line: 125, column: 1)
!150 = !DILocation(line: 127, column: 1, scope: !74)
