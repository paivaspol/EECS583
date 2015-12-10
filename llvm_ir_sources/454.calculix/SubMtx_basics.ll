; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [93 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in SubMtx_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [50 x i8] c"\0A fatal error in SubMtx_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A fatal error in SubMtx_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._SubMtx* @SubMtx_new() #0 {
  %1 = tail call i8* @malloc(i64 72) #5, !dbg !56
  %2 = bitcast i8* %1 to %struct._SubMtx*, !dbg !56
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %2, i64 0, metadata !40, metadata !60), !dbg !61
  %3 = icmp eq i8* %1, null, !dbg !56
  br i1 %3, label %4, label %7, !dbg !62

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !63, !tbaa !65
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 72, i32 21, i8* getelementptr inbounds ([93 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !63
  tail call void @exit(i32 -1) #6, !dbg !63
  unreachable, !dbg !63

; <label>:7                                       ; preds = %0
  tail call void @SubMtx_setDefaultFields(%struct._SubMtx* %2) #7, !dbg !69
  ret %struct._SubMtx* %2, !dbg !70
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtx_setDefaultFields(%struct._SubMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx, i64 0, metadata !45, metadata !60), !dbg !71
  %1 = icmp eq %struct._SubMtx* %mtx, null, !dbg !72
  br i1 %1, label %2, label %5, !dbg !74

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !75, !tbaa !65
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* null) #5, !dbg !77
  tail call void @exit(i32 -1) #6, !dbg !78
  unreachable, !dbg !78

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !79
  store i32 1, i32* %6, align 4, !dbg !80, !tbaa !81
  %7 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !85
  store i32 1, i32* %7, align 4, !dbg !86, !tbaa !87
  %8 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2, !dbg !88
  store i32 -1, i32* %8, align 4, !dbg !89, !tbaa !90
  %9 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3, !dbg !91
  store i32 -1, i32* %9, align 4, !dbg !92, !tbaa !93
  %10 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !94
  store i32 0, i32* %10, align 4, !dbg !95, !tbaa !96
  %11 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !97
  store i32 0, i32* %11, align 4, !dbg !98, !tbaa !99
  %12 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !100
  store i32 0, i32* %12, align 4, !dbg !101, !tbaa !102
  %13 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 9, !dbg !103
  store %struct._SubMtx* null, %struct._SubMtx** %13, align 8, !dbg !104, !tbaa !105
  %14 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !106
  tail call void @DV_setDefaultFields(%struct._DV* %14) #5, !dbg !107
  ret void, !dbg !108
}

; Function Attrs: optsize
declare void @DV_setDefaultFields(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtx_clearData(%struct._SubMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx, i64 0, metadata !48, metadata !60), !dbg !109
  %1 = icmp eq %struct._SubMtx* %mtx, null, !dbg !110
  br i1 %1, label %2, label %5, !dbg !112

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !113, !tbaa !65
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* null) #5, !dbg !115
  tail call void @exit(i32 -1) #6, !dbg !116
  unreachable, !dbg !116

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !117
  tail call void @DV_clearData(%struct._DV* %6) #5, !dbg !118
  tail call void @SubMtx_setDefaultFields(%struct._SubMtx* %mtx) #7, !dbg !119
  ret void, !dbg !120
}

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtx_free(%struct._SubMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx, i64 0, metadata !51, metadata !60), !dbg !121
  %1 = icmp eq %struct._SubMtx* %mtx, null, !dbg !122
  br i1 %1, label %2, label %5, !dbg !124

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !125, !tbaa !65
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* null) #5, !dbg !127
  tail call void @exit(i32 -1) #6, !dbg !128
  unreachable, !dbg !128

; <label>:5                                       ; preds = %0
  tail call void @SubMtx_clearData(%struct._SubMtx* %mtx) #7, !dbg !129
  %6 = bitcast %struct._SubMtx* %mtx to i8*, !dbg !130
  tail call void @free(i8* %6) #7, !dbg !130
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* null, i64 0, metadata !51, metadata !60), !dbg !121
  ret void, !dbg !133
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!52, !53, !54}
!llvm.ident = !{!55}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !35, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !31, !32, !33}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SubMtx", file: !6, line: 44, size: 576, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../SubMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !12, !13, !14, !15, !16, !19, !28}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !6, line: 45, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5, file: !6, line: 46, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "rowid", scope: !5, file: !6, line: 47, baseType: !9, size: 32, align: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "colid", scope: !5, file: !6, line: 48, baseType: !9, size: 32, align: 32, offset: 96)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "nrow", scope: !5, file: !6, line: 49, baseType: !9, size: 32, align: 32, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ncol", scope: !5, file: !6, line: 50, baseType: !9, size: 32, align: 32, offset: 160)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !5, file: !6, line: 51, baseType: !9, size: 32, align: 32, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5, file: !6, line: 52, baseType: !17, size: 64, align: 64, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !5, file: !6, line: 53, baseType: !20, size: 192, align: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !21, line: 20, baseType: !22)
!21 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !21, line: 21, size: 192, align: 64, elements: !23)
!23 = !{!24, !25, !26, !27}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !22, file: !21, line: 22, baseType: !9, size: 32, align: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !22, file: !21, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !22, file: !21, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !22, file: !21, line: 25, baseType: !17, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !6, line: 54, baseType: !29, size: 64, align: 64, offset: 512)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "SubMtx", file: !6, line: 43, baseType: !5)
!31 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !{!36, !41, !46, !49}
!36 = !DISubprogram(name: "SubMtx_new", scope: !1, file: !1, line: 16, type: !37, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._SubMtx* ()* @SubMtx_new, variables: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{!29}
!39 = !{!40}
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mtx", scope: !36, file: !1, line: 19, type: !29)
!41 = !DISubprogram(name: "SubMtx_setDefaultFields", scope: !1, file: !1, line: 35, type: !42, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtx*)* @SubMtx_setDefaultFields, variables: !44)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !29}
!44 = !{!45}
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !41, file: !1, line: 36, type: !29)
!46 = !DISubprogram(name: "SubMtx_clearData", scope: !1, file: !1, line: 64, type: !42, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtx*)* @SubMtx_clearData, variables: !47)
!47 = !{!48}
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !46, file: !1, line: 65, type: !29)
!49 = !DISubprogram(name: "SubMtx_free", scope: !1, file: !1, line: 101, type: !42, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtx*)* @SubMtx_free, variables: !50)
!50 = !{!51}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !49, file: !1, line: 102, type: !29)
!52 = !{i32 2, !"Dwarf Version", i32 2}
!53 = !{i32 2, !"Debug Info Version", i32 700000003}
!54 = !{i32 1, !"PIC Level", i32 2}
!55 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!56 = !DILocation(line: 21, column: 1, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 21, column: 1)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 21, column: 1)
!59 = distinct !DILexicalBlock(scope: !36, file: !1, line: 21, column: 1)
!60 = !DIExpression()
!61 = !DILocation(line: 19, column: 11, scope: !36)
!62 = !DILocation(line: 21, column: 1, scope: !58)
!63 = !DILocation(line: 21, column: 1, scope: !64)
!64 = distinct !DILexicalBlock(scope: !57, file: !1, line: 21, column: 1)
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !DILocation(line: 22, column: 1, scope: !36)
!70 = !DILocation(line: 24, column: 1, scope: !36)
!71 = !DILocation(line: 36, column: 14, scope: !41)
!72 = !DILocation(line: 38, column: 10, scope: !73)
!73 = distinct !DILexicalBlock(scope: !41, file: !1, line: 38, column: 6)
!74 = !DILocation(line: 38, column: 6, scope: !41)
!75 = !DILocation(line: 39, column: 12, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !1, line: 38, column: 20)
!77 = !DILocation(line: 39, column: 4, scope: !76)
!78 = !DILocation(line: 41, column: 4, scope: !76)
!79 = !DILocation(line: 43, column: 6, scope: !41)
!80 = !DILocation(line: 43, column: 14, scope: !41)
!81 = !{!82, !83, i64 0}
!82 = !{!"_SubMtx", !83, i64 0, !83, i64 4, !83, i64 8, !83, i64 12, !83, i64 16, !83, i64 20, !83, i64 24, !66, i64 32, !84, i64 40, !66, i64 64}
!83 = !{!"int", !67, i64 0}
!84 = !{!"_DV", !83, i64 0, !83, i64 4, !83, i64 8, !66, i64 16}
!85 = !DILocation(line: 44, column: 6, scope: !41)
!86 = !DILocation(line: 44, column: 14, scope: !41)
!87 = !{!82, !83, i64 4}
!88 = !DILocation(line: 45, column: 6, scope: !41)
!89 = !DILocation(line: 45, column: 14, scope: !41)
!90 = !{!82, !83, i64 8}
!91 = !DILocation(line: 46, column: 6, scope: !41)
!92 = !DILocation(line: 46, column: 14, scope: !41)
!93 = !{!82, !83, i64 12}
!94 = !DILocation(line: 47, column: 6, scope: !41)
!95 = !DILocation(line: 47, column: 14, scope: !41)
!96 = !{!82, !83, i64 16}
!97 = !DILocation(line: 48, column: 6, scope: !41)
!98 = !DILocation(line: 48, column: 14, scope: !41)
!99 = !{!82, !83, i64 20}
!100 = !DILocation(line: 49, column: 6, scope: !41)
!101 = !DILocation(line: 49, column: 14, scope: !41)
!102 = !{!82, !83, i64 24}
!103 = !DILocation(line: 50, column: 6, scope: !41)
!104 = !DILocation(line: 50, column: 14, scope: !41)
!105 = !{!82, !66, i64 64}
!106 = !DILocation(line: 51, column: 27, scope: !41)
!107 = !DILocation(line: 51, column: 1, scope: !41)
!108 = !DILocation(line: 53, column: 1, scope: !41)
!109 = !DILocation(line: 65, column: 14, scope: !46)
!110 = !DILocation(line: 72, column: 10, scope: !111)
!111 = distinct !DILexicalBlock(scope: !46, file: !1, line: 72, column: 6)
!112 = !DILocation(line: 72, column: 6, scope: !46)
!113 = !DILocation(line: 73, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 72, column: 20)
!115 = !DILocation(line: 73, column: 4, scope: !114)
!116 = !DILocation(line: 75, column: 4, scope: !114)
!117 = !DILocation(line: 82, column: 20, scope: !46)
!118 = !DILocation(line: 82, column: 1, scope: !46)
!119 = !DILocation(line: 88, column: 1, scope: !46)
!120 = !DILocation(line: 90, column: 1, scope: !46)
!121 = !DILocation(line: 102, column: 14, scope: !49)
!122 = !DILocation(line: 104, column: 10, scope: !123)
!123 = distinct !DILexicalBlock(scope: !49, file: !1, line: 104, column: 6)
!124 = !DILocation(line: 104, column: 6, scope: !49)
!125 = !DILocation(line: 105, column: 12, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !1, line: 104, column: 20)
!127 = !DILocation(line: 105, column: 4, scope: !126)
!128 = !DILocation(line: 107, column: 4, scope: !126)
!129 = !DILocation(line: 109, column: 1, scope: !49)
!130 = !DILocation(line: 110, column: 1, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 110, column: 1)
!132 = distinct !DILexicalBlock(scope: !49, file: !1, line: 110, column: 1)
!133 = !DILocation(line: 112, column: 1, scope: !49)
