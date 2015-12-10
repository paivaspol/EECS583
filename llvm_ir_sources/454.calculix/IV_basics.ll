; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [85 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in IV_setDefaultFields(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [46 x i8] c"\0A fatal error in IV_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"\0A fatal error in IV_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @IV_new() #0 {
  %1 = tail call i8* @malloc(i64 24) #5, !dbg !41
  %2 = bitcast i8* %1 to %struct._IV*, !dbg !41
  tail call void @llvm.dbg.value(metadata %struct._IV* %2, i64 0, metadata !25, metadata !45), !dbg !46
  %3 = icmp eq i8* %1, null, !dbg !41
  br i1 %3, label %4, label %7, !dbg !47

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !48, !tbaa !50
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 24, i32 19, i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !48
  tail call void @exit(i32 -1) #6, !dbg !48
  unreachable, !dbg !48

; <label>:7                                       ; preds = %0
  tail call void @IV_setDefaultFields(%struct._IV* %2) #7, !dbg !54
  ret %struct._IV* %2, !dbg !55
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @IV_setDefaultFields(%struct._IV* %iv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !30, metadata !45), !dbg !56
  %1 = icmp eq %struct._IV* %iv, null, !dbg !57
  br i1 %1, label %2, label %5, !dbg !59

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !60, !tbaa !50
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._IV* null) #5, !dbg !62
  tail call void @exit(i32 -1) #6, !dbg !63
  unreachable, !dbg !63

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !64
  store i32 0, i32* %6, align 4, !dbg !65, !tbaa !66
  %7 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !69
  store i32 0, i32* %7, align 4, !dbg !70, !tbaa !71
  %8 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !72
  store i32 0, i32* %8, align 4, !dbg !73, !tbaa !74
  %9 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !75
  store i32* null, i32** %9, align 8, !dbg !76, !tbaa !77
  ret void, !dbg !78
}

; Function Attrs: nounwind optsize ssp uwtable
define void @IV_clearData(%struct._IV* %iv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !33, metadata !45), !dbg !79
  %1 = icmp eq %struct._IV* %iv, null, !dbg !80
  br i1 %1, label %2, label %5, !dbg !82

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !83, !tbaa !50
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([46 x i8]* @.str3, i64 0, i64 0), %struct._IV* null) #5, !dbg !85
  tail call void @exit(i32 -1) #6, !dbg !86
  unreachable, !dbg !86

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !87
  %7 = load i32** %6, align 8, !dbg !87, !tbaa !77
  %8 = icmp eq i32* %7, null, !dbg !89
  br i1 %8, label %14, label %9, !dbg !90

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !91
  %11 = load i32* %10, align 4, !dbg !91, !tbaa !74
  %12 = icmp eq i32 %11, 1, !dbg !92
  br i1 %12, label %13, label %14, !dbg !93

; <label>:13                                      ; preds = %9
  tail call void @IVfree(i32* %7) #5, !dbg !94
  br label %14, !dbg !96

; <label>:14                                      ; preds = %5, %13, %9
  tail call void @IV_setDefaultFields(%struct._IV* %iv) #7, !dbg !97
  ret void, !dbg !98
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @IV_free(%struct._IV* %iv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !36, metadata !45), !dbg !99
  %1 = icmp eq %struct._IV* %iv, null, !dbg !100
  br i1 %1, label %2, label %5, !dbg !102

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !103, !tbaa !50
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), %struct._IV* null) #5, !dbg !105
  tail call void @exit(i32 -1) #6, !dbg !106
  unreachable, !dbg !106

; <label>:5                                       ; preds = %0
  tail call void @IV_clearData(%struct._IV* %iv) #7, !dbg !107
  %6 = bitcast %struct._IV* %iv to i8*, !dbg !108
  tail call void @free(i8* %6) #7, !dbg !108
  tail call void @llvm.dbg.value(metadata %struct._IV* null, i64 0, metadata !36, metadata !45), !dbg !99
  ret void, !dbg !111
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
!llvm.module.flags = !{!37, !38, !39}
!llvm.ident = !{!40}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !18, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !14, !15, !16}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !6, line: 21, size: 192, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/../IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !12}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5, file: !6, line: 22, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !5, file: !6, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !5, file: !6, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !5, file: !6, line: 25, baseType: !13, size: 64, align: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!14 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !{!19, !26, !31, !34}
!19 = !DISubprogram(name: "IV_new", scope: !1, file: !1, line: 14, type: !20, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* ()* @IV_new, variables: !24)
!20 = !DISubroutineType(types: !21)
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !6, line: 20, baseType: !5)
!24 = !{!25}
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iv", scope: !19, file: !1, line: 17, type: !22)
!26 = !DISubprogram(name: "IV_setDefaultFields", scope: !1, file: !1, line: 33, type: !27, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IV*)* @IV_setDefaultFields, variables: !29)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !22}
!29 = !{!30}
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !26, file: !1, line: 34, type: !22)
!31 = !DISubprogram(name: "IV_clearData", scope: !1, file: !1, line: 57, type: !27, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IV*)* @IV_clearData, variables: !32)
!32 = !{!33}
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !31, file: !1, line: 58, type: !22)
!34 = !DISubprogram(name: "IV_free", scope: !1, file: !1, line: 81, type: !27, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IV*)* @IV_free, variables: !35)
!35 = !{!36}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !34, file: !1, line: 82, type: !22)
!37 = !{i32 2, !"Dwarf Version", i32 2}
!38 = !{i32 2, !"Debug Info Version", i32 700000003}
!39 = !{i32 1, !"PIC Level", i32 2}
!40 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!41 = !DILocation(line: 19, column: 1, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 19, column: 1)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 19, column: 1)
!44 = distinct !DILexicalBlock(scope: !19, file: !1, line: 19, column: 1)
!45 = !DIExpression()
!46 = !DILocation(line: 17, column: 7, scope: !19)
!47 = !DILocation(line: 19, column: 1, scope: !43)
!48 = !DILocation(line: 19, column: 1, scope: !49)
!49 = distinct !DILexicalBlock(scope: !42, file: !1, line: 19, column: 1)
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !DILocation(line: 21, column: 1, scope: !19)
!55 = !DILocation(line: 23, column: 1, scope: !19)
!56 = !DILocation(line: 34, column: 10, scope: !26)
!57 = !DILocation(line: 36, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !26, file: !1, line: 36, column: 6)
!59 = !DILocation(line: 36, column: 6, scope: !26)
!60 = !DILocation(line: 37, column: 12, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 36, column: 19)
!62 = !DILocation(line: 37, column: 4, scope: !61)
!63 = !DILocation(line: 39, column: 4, scope: !61)
!64 = !DILocation(line: 41, column: 5, scope: !26)
!65 = !DILocation(line: 41, column: 13, scope: !26)
!66 = !{!67, !68, i64 0}
!67 = !{!"_IV", !68, i64 0, !68, i64 4, !68, i64 8, !51, i64 16}
!68 = !{!"int", !52, i64 0}
!69 = !DILocation(line: 42, column: 5, scope: !26)
!70 = !DILocation(line: 42, column: 13, scope: !26)
!71 = !{!67, !68, i64 4}
!72 = !DILocation(line: 43, column: 5, scope: !26)
!73 = !DILocation(line: 43, column: 13, scope: !26)
!74 = !{!67, !68, i64 8}
!75 = !DILocation(line: 44, column: 5, scope: !26)
!76 = !DILocation(line: 44, column: 13, scope: !26)
!77 = !{!67, !51, i64 16}
!78 = !DILocation(line: 46, column: 1, scope: !26)
!79 = !DILocation(line: 58, column: 10, scope: !31)
!80 = !DILocation(line: 60, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !31, file: !1, line: 60, column: 6)
!82 = !DILocation(line: 60, column: 6, scope: !31)
!83 = !DILocation(line: 61, column: 12, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 60, column: 19)
!85 = !DILocation(line: 61, column: 4, scope: !84)
!86 = !DILocation(line: 63, column: 4, scope: !84)
!87 = !DILocation(line: 65, column: 10, scope: !88)
!88 = distinct !DILexicalBlock(scope: !31, file: !1, line: 65, column: 6)
!89 = !DILocation(line: 65, column: 14, scope: !88)
!90 = !DILocation(line: 65, column: 22, scope: !88)
!91 = !DILocation(line: 65, column: 29, scope: !88)
!92 = !DILocation(line: 65, column: 35, scope: !88)
!93 = !DILocation(line: 65, column: 6, scope: !31)
!94 = !DILocation(line: 66, column: 4, scope: !95)
!95 = distinct !DILexicalBlock(scope: !88, file: !1, line: 65, column: 42)
!96 = !DILocation(line: 67, column: 1, scope: !95)
!97 = !DILocation(line: 68, column: 1, scope: !31)
!98 = !DILocation(line: 70, column: 1, scope: !31)
!99 = !DILocation(line: 82, column: 10, scope: !34)
!100 = !DILocation(line: 84, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !34, file: !1, line: 84, column: 6)
!102 = !DILocation(line: 84, column: 6, scope: !34)
!103 = !DILocation(line: 85, column: 12, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 84, column: 19)
!105 = !DILocation(line: 85, column: 4, scope: !104)
!106 = !DILocation(line: 87, column: 4, scope: !104)
!107 = !DILocation(line: 89, column: 1, scope: !34)
!108 = !DILocation(line: 90, column: 1, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !1, line: 90, column: 1)
!110 = distinct !DILexicalBlock(scope: !34, file: !1, line: 90, column: 1)
!111 = !DILocation(line: 92, column: 1, scope: !34)
