; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [97 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_basics.c\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DenseMtx_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [47 x i8] c"\0A fatal error in DenseMtx_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._DenseMtx* @DenseMtx_new() #0 {
  %1 = tail call i8* @malloc(i64 88) #6, !dbg !59
  %2 = bitcast i8* %1 to %struct._DenseMtx*, !dbg !59
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %2, i64 0, metadata !43, metadata !63), !dbg !64
  %3 = icmp eq i8* %1, null, !dbg !59
  br i1 %3, label %4, label %7, !dbg !65

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !66, !tbaa !68
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 88, i32 21, i8* getelementptr inbounds ([97 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !66
  tail call void @exit(i32 -1) #7, !dbg !66
  unreachable, !dbg !66

; <label>:7                                       ; preds = %0
  tail call void @DenseMtx_setDefaultFields(%struct._DenseMtx* %2) #8, !dbg !72
  ret %struct._DenseMtx* %2, !dbg !73
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_setDefaultFields(%struct._DenseMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !48, metadata !63), !dbg !74
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !75
  br i1 %1, label %2, label %5, !dbg !77

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !78, !tbaa !68
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !80
  tail call void @exit(i32 -1) #7, !dbg !81
  unreachable, !dbg !81

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !82
  store i32 1, i32* %6, align 4, !dbg !83, !tbaa !84
  %7 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1, !dbg !88
  store i32 -1, i32* %7, align 4, !dbg !89, !tbaa !90
  %8 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2, !dbg !91
  store i32 -1, i32* %8, align 4, !dbg !92, !tbaa !93
  %9 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !94
  %10 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !95
  %11 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !96
  %12 = bitcast i32* %9 to i8*, !dbg !97
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 16, i32 4, i1 false), !dbg !98
  %13 = bitcast i32** %10 to i8*, !dbg !97
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false), !dbg !99
  tail call void @DV_setDefaultFields(%struct._DV* %11) #6, !dbg !97
  %14 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 11, !dbg !100
  store %struct._DenseMtx* null, %struct._DenseMtx** %14, align 8, !dbg !101, !tbaa !102
  ret void, !dbg !103
}

; Function Attrs: optsize
declare void @DV_setDefaultFields(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_clearData(%struct._DenseMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !51, metadata !63), !dbg !104
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !105
  br i1 %1, label %2, label %5, !dbg !107

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !108, !tbaa !68
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !110
  tail call void @exit(i32 -1) #7, !dbg !111
  unreachable, !dbg !111

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !112
  tail call void @DV_clearData(%struct._DV* %6) #6, !dbg !113
  tail call void @DenseMtx_setDefaultFields(%struct._DenseMtx* %mtx) #8, !dbg !114
  ret void, !dbg !115
}

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_free(%struct._DenseMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !54, metadata !63), !dbg !116
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !117
  br i1 %1, label %2, label %5, !dbg !119

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !120, !tbaa !68
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !122
  tail call void @exit(i32 -1) #7, !dbg !123
  unreachable, !dbg !123

; <label>:5                                       ; preds = %0
  tail call void @DenseMtx_clearData(%struct._DenseMtx* %mtx) #8, !dbg !124
  %6 = bitcast %struct._DenseMtx* %mtx to i8*, !dbg !125
  tail call void @free(i8* %6) #8, !dbg !125
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* null, i64 0, metadata !54, metadata !63), !dbg !116
  ret void, !dbg !128
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
!llvm.module.flags = !{!55, !56, !57}
!llvm.ident = !{!58}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !38, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !34, !35, !36}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DenseMtx", file: !6, line: 29, size: 704, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../DenseMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !22, !31}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !6, line: 30, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "rowid", scope: !5, file: !6, line: 31, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "colid", scope: !5, file: !6, line: 32, baseType: !9, size: 32, align: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "nrow", scope: !5, file: !6, line: 33, baseType: !9, size: 32, align: 32, offset: 96)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "ncol", scope: !5, file: !6, line: 34, baseType: !9, size: 32, align: 32, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !5, file: !6, line: 35, baseType: !9, size: 32, align: 32, offset: 160)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !5, file: !6, line: 36, baseType: !9, size: 32, align: 32, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "rowind", scope: !5, file: !6, line: 37, baseType: !17, size: 64, align: 64, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "colind", scope: !5, file: !6, line: 38, baseType: !17, size: 64, align: 64, offset: 320)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5, file: !6, line: 39, baseType: !20, size: 64, align: 64, offset: 384)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !5, file: !6, line: 40, baseType: !23, size: 192, align: 64, offset: 448)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !24, line: 20, baseType: !25)
!24 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !24, line: 21, size: 192, align: 64, elements: !26)
!26 = !{!27, !28, !29, !30}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !25, file: !24, line: 22, baseType: !9, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !25, file: !24, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !25, file: !24, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !25, file: !24, line: 25, baseType: !20, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !6, line: 41, baseType: !32, size: 64, align: 64, offset: 640)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "DenseMtx", file: !6, line: 28, baseType: !5)
!34 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!38 = !{!39, !44, !49, !52}
!39 = !DISubprogram(name: "DenseMtx_new", scope: !1, file: !1, line: 16, type: !40, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._DenseMtx* ()* @DenseMtx_new, variables: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{!32}
!42 = !{!43}
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mtx", scope: !39, file: !1, line: 19, type: !32)
!44 = !DISubprogram(name: "DenseMtx_setDefaultFields", scope: !1, file: !1, line: 35, type: !45, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*)* @DenseMtx_setDefaultFields, variables: !47)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !32}
!47 = !{!48}
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !44, file: !1, line: 36, type: !32)
!49 = !DISubprogram(name: "DenseMtx_clearData", scope: !1, file: !1, line: 67, type: !45, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*)* @DenseMtx_clearData, variables: !50)
!50 = !{!51}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !49, file: !1, line: 68, type: !32)
!52 = !DISubprogram(name: "DenseMtx_free", scope: !1, file: !1, line: 104, type: !45, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*)* @DenseMtx_free, variables: !53)
!53 = !{!54}
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !52, file: !1, line: 105, type: !32)
!55 = !{i32 2, !"Dwarf Version", i32 2}
!56 = !{i32 2, !"Debug Info Version", i32 700000003}
!57 = !{i32 1, !"PIC Level", i32 2}
!58 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!59 = !DILocation(line: 21, column: 1, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 21, column: 1)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 21, column: 1)
!62 = distinct !DILexicalBlock(scope: !39, file: !1, line: 21, column: 1)
!63 = !DIExpression()
!64 = !DILocation(line: 19, column: 13, scope: !39)
!65 = !DILocation(line: 21, column: 1, scope: !61)
!66 = !DILocation(line: 21, column: 1, scope: !67)
!67 = distinct !DILexicalBlock(scope: !60, file: !1, line: 21, column: 1)
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = !DILocation(line: 22, column: 1, scope: !39)
!73 = !DILocation(line: 24, column: 1, scope: !39)
!74 = !DILocation(line: 36, column: 16, scope: !44)
!75 = !DILocation(line: 38, column: 10, scope: !76)
!76 = distinct !DILexicalBlock(scope: !44, file: !1, line: 38, column: 6)
!77 = !DILocation(line: 38, column: 6, scope: !44)
!78 = !DILocation(line: 39, column: 12, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !1, line: 38, column: 20)
!80 = !DILocation(line: 39, column: 4, scope: !79)
!81 = !DILocation(line: 41, column: 4, scope: !79)
!82 = !DILocation(line: 43, column: 6, scope: !44)
!83 = !DILocation(line: 43, column: 14, scope: !44)
!84 = !{!85, !86, i64 0}
!85 = !{!"_DenseMtx", !86, i64 0, !86, i64 4, !86, i64 8, !86, i64 12, !86, i64 16, !86, i64 20, !86, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !87, i64 56, !69, i64 80}
!86 = !{!"int", !70, i64 0}
!87 = !{!"_DV", !86, i64 0, !86, i64 4, !86, i64 8, !69, i64 16}
!88 = !DILocation(line: 44, column: 6, scope: !44)
!89 = !DILocation(line: 44, column: 14, scope: !44)
!90 = !{!85, !86, i64 4}
!91 = !DILocation(line: 45, column: 6, scope: !44)
!92 = !DILocation(line: 45, column: 14, scope: !44)
!93 = !{!85, !86, i64 8}
!94 = !DILocation(line: 46, column: 6, scope: !44)
!95 = !DILocation(line: 50, column: 6, scope: !44)
!96 = !DILocation(line: 53, column: 27, scope: !44)
!97 = !DILocation(line: 53, column: 1, scope: !44)
!98 = !DILocation(line: 47, column: 14, scope: !44)
!99 = !DILocation(line: 50, column: 14, scope: !44)
!100 = !DILocation(line: 54, column: 6, scope: !44)
!101 = !DILocation(line: 54, column: 14, scope: !44)
!102 = !{!85, !69, i64 80}
!103 = !DILocation(line: 56, column: 1, scope: !44)
!104 = !DILocation(line: 68, column: 16, scope: !49)
!105 = !DILocation(line: 75, column: 10, scope: !106)
!106 = distinct !DILexicalBlock(scope: !49, file: !1, line: 75, column: 6)
!107 = !DILocation(line: 75, column: 6, scope: !49)
!108 = !DILocation(line: 76, column: 12, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 75, column: 20)
!110 = !DILocation(line: 76, column: 4, scope: !109)
!111 = !DILocation(line: 78, column: 4, scope: !109)
!112 = !DILocation(line: 85, column: 20, scope: !49)
!113 = !DILocation(line: 85, column: 1, scope: !49)
!114 = !DILocation(line: 91, column: 1, scope: !49)
!115 = !DILocation(line: 93, column: 1, scope: !49)
!116 = !DILocation(line: 105, column: 16, scope: !52)
!117 = !DILocation(line: 107, column: 10, scope: !118)
!118 = distinct !DILexicalBlock(scope: !52, file: !1, line: 107, column: 6)
!119 = !DILocation(line: 107, column: 6, scope: !52)
!120 = !DILocation(line: 108, column: 12, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 107, column: 20)
!122 = !DILocation(line: 108, column: 4, scope: !121)
!123 = !DILocation(line: 110, column: 4, scope: !121)
!124 = !DILocation(line: 112, column: 1, scope: !52)
!125 = !DILocation(line: 113, column: 1, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 113, column: 1)
!127 = distinct !DILexicalBlock(scope: !52, file: !1, line: 113, column: 1)
!128 = !DILocation(line: 115, column: 1, scope: !52)
