; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Ideq = type { i32, i32, i32, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [89 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_basics.c\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Ideq_setDefaultFields(%p)\0A deq is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [50 x i8] c"\0A fatal error in Ideq_clearData(%p)\0A deq is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Ideq_free(%p)\0A deq is NULL\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._Ideq* @Ideq_new() #0 {
  %1 = tail call i8* @malloc(i64 40) #5, !dbg !49
  %2 = bitcast i8* %1 to %struct._Ideq*, !dbg !49
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %2, i64 0, metadata !33, metadata !53), !dbg !54
  %3 = icmp eq i8* %1, null, !dbg !49
  br i1 %3, label %4, label %7, !dbg !55

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !56, !tbaa !58
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 40, i32 19, i8* getelementptr inbounds ([89 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !56
  tail call void @exit(i32 -1) #6, !dbg !56
  unreachable, !dbg !56

; <label>:7                                       ; preds = %0
  tail call void @Ideq_setDefaultFields(%struct._Ideq* %2) #7, !dbg !62
  ret %struct._Ideq* %2, !dbg !63
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @Ideq_setDefaultFields(%struct._Ideq* %deq) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %deq, i64 0, metadata !38, metadata !53), !dbg !64
  %1 = icmp eq %struct._Ideq* %deq, null, !dbg !65
  br i1 %1, label %2, label %5, !dbg !67

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !68, !tbaa !58
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), %struct._Ideq* null) #5, !dbg !70
  tail call void @exit(i32 -1) #6, !dbg !71
  unreachable, !dbg !71

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 0, !dbg !72
  store i32 0, i32* %6, align 4, !dbg !73, !tbaa !74
  %7 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !78
  store i32 -1, i32* %7, align 4, !dbg !79, !tbaa !80
  %8 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !81
  store i32 -1, i32* %8, align 4, !dbg !82, !tbaa !83
  %9 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, !dbg !84
  tail call void @IV_setDefaultFields(%struct._IV* %9) #5, !dbg !85
  ret void, !dbg !86
}

; Function Attrs: optsize
declare void @IV_setDefaultFields(%struct._IV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Ideq_clearData(%struct._Ideq* %deq) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %deq, i64 0, metadata !41, metadata !53), !dbg !87
  %1 = icmp eq %struct._Ideq* %deq, null, !dbg !88
  br i1 %1, label %2, label %5, !dbg !90

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !91, !tbaa !58
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), %struct._Ideq* null) #5, !dbg !93
  tail call void @exit(i32 -1) #6, !dbg !94
  unreachable, !dbg !94

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, !dbg !95
  tail call void @IV_clearData(%struct._IV* %6) #5, !dbg !96
  tail call void @Ideq_setDefaultFields(%struct._Ideq* %deq) #7, !dbg !97
  ret void, !dbg !98
}

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Ideq_free(%struct._Ideq* %deq) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Ideq* %deq, i64 0, metadata !44, metadata !53), !dbg !99
  %1 = icmp eq %struct._Ideq* %deq, null, !dbg !100
  br i1 %1, label %2, label %5, !dbg !102

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !103, !tbaa !58
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._Ideq* null) #5, !dbg !105
  tail call void @exit(i32 -1) #6, !dbg !106
  unreachable, !dbg !106

; <label>:5                                       ; preds = %0
  tail call void @Ideq_clearData(%struct._Ideq* %deq) #7, !dbg !107
  %6 = bitcast %struct._Ideq* %deq to i8*, !dbg !108
  tail call void @free(i8* %6) #7, !dbg !108
  tail call void @llvm.dbg.value(metadata %struct._Ideq* null, i64 0, metadata !44, metadata !53), !dbg !99
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
!llvm.module.flags = !{!45, !46, !47}
!llvm.ident = !{!48}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !26, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !22, !23, !24}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ideq", file: !6, line: 20, size: 320, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/../Ideq.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !12}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !5, file: !6, line: 21, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5, file: !6, line: 22, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5, file: !6, line: 23, baseType: !9, size: 32, align: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !5, file: !6, line: 24, baseType: !13, size: 192, align: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !14, line: 20, baseType: !15)
!14 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !14, line: 21, size: 192, align: 64, elements: !16)
!16 = !{!17, !18, !19, !20}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !15, file: !14, line: 22, baseType: !9, size: 32, align: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !15, file: !14, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !15, file: !14, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !15, file: !14, line: 25, baseType: !21, size: 64, align: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!22 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!26 = !{!27, !34, !39, !42}
!27 = !DISubprogram(name: "Ideq_new", scope: !1, file: !1, line: 14, type: !28, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Ideq* ()* @Ideq_new, variables: !32)
!28 = !DISubroutineType(types: !29)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ideq", file: !6, line: 19, baseType: !5)
!32 = !{!33}
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deq", scope: !27, file: !1, line: 17, type: !30)
!34 = !DISubprogram(name: "Ideq_setDefaultFields", scope: !1, file: !1, line: 34, type: !35, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Ideq*)* @Ideq_setDefaultFields, variables: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !30}
!37 = !{!38}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deq", arg: 1, scope: !34, file: !1, line: 35, type: !30)
!39 = !DISubprogram(name: "Ideq_clearData", scope: !1, file: !1, line: 58, type: !35, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Ideq*)* @Ideq_clearData, variables: !40)
!40 = !{!41}
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deq", arg: 1, scope: !39, file: !1, line: 59, type: !30)
!42 = !DISubprogram(name: "Ideq_free", scope: !1, file: !1, line: 80, type: !35, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Ideq*)* @Ideq_free, variables: !43)
!43 = !{!44}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "deq", arg: 1, scope: !42, file: !1, line: 81, type: !30)
!45 = !{i32 2, !"Dwarf Version", i32 2}
!46 = !{i32 2, !"Debug Info Version", i32 700000003}
!47 = !{i32 1, !"PIC Level", i32 2}
!48 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!49 = !DILocation(line: 19, column: 1, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 19, column: 1)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 19, column: 1)
!52 = distinct !DILexicalBlock(scope: !27, file: !1, line: 19, column: 1)
!53 = !DIExpression()
!54 = !DILocation(line: 17, column: 9, scope: !27)
!55 = !DILocation(line: 19, column: 1, scope: !51)
!56 = !DILocation(line: 19, column: 1, scope: !57)
!57 = distinct !DILexicalBlock(scope: !50, file: !1, line: 19, column: 1)
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !DILocation(line: 21, column: 1, scope: !27)
!63 = !DILocation(line: 23, column: 1, scope: !27)
!64 = !DILocation(line: 35, column: 12, scope: !34)
!65 = !DILocation(line: 37, column: 10, scope: !66)
!66 = distinct !DILexicalBlock(scope: !34, file: !1, line: 37, column: 6)
!67 = !DILocation(line: 37, column: 6, scope: !34)
!68 = !DILocation(line: 38, column: 12, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !1, line: 37, column: 20)
!70 = !DILocation(line: 38, column: 4, scope: !69)
!71 = !DILocation(line: 40, column: 4, scope: !69)
!72 = !DILocation(line: 42, column: 6, scope: !34)
!73 = !DILocation(line: 42, column: 14, scope: !34)
!74 = !{!75, !76, i64 0}
!75 = !{!"_Ideq", !76, i64 0, !76, i64 4, !76, i64 8, !77, i64 16}
!76 = !{!"int", !60, i64 0}
!77 = !{!"_IV", !76, i64 0, !76, i64 4, !76, i64 8, !59, i64 16}
!78 = !DILocation(line: 43, column: 6, scope: !34)
!79 = !DILocation(line: 43, column: 14, scope: !34)
!80 = !{!75, !76, i64 4}
!81 = !DILocation(line: 44, column: 6, scope: !34)
!82 = !DILocation(line: 44, column: 14, scope: !34)
!83 = !{!75, !76, i64 8}
!84 = !DILocation(line: 45, column: 27, scope: !34)
!85 = !DILocation(line: 45, column: 1, scope: !34)
!86 = !DILocation(line: 47, column: 1, scope: !34)
!87 = !DILocation(line: 59, column: 12, scope: !39)
!88 = !DILocation(line: 61, column: 10, scope: !89)
!89 = distinct !DILexicalBlock(scope: !39, file: !1, line: 61, column: 6)
!90 = !DILocation(line: 61, column: 6, scope: !39)
!91 = !DILocation(line: 62, column: 12, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 61, column: 20)
!93 = !DILocation(line: 62, column: 4, scope: !92)
!94 = !DILocation(line: 64, column: 4, scope: !92)
!95 = !DILocation(line: 66, column: 20, scope: !39)
!96 = !DILocation(line: 66, column: 1, scope: !39)
!97 = !DILocation(line: 67, column: 1, scope: !39)
!98 = !DILocation(line: 69, column: 1, scope: !39)
!99 = !DILocation(line: 81, column: 12, scope: !42)
!100 = !DILocation(line: 83, column: 10, scope: !101)
!101 = distinct !DILexicalBlock(scope: !42, file: !1, line: 83, column: 6)
!102 = !DILocation(line: 83, column: 6, scope: !42)
!103 = !DILocation(line: 84, column: 12, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 83, column: 20)
!105 = !DILocation(line: 84, column: 4, scope: !104)
!106 = !DILocation(line: 86, column: 4, scope: !104)
!107 = !DILocation(line: 88, column: 1, scope: !42)
!108 = !DILocation(line: 89, column: 1, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !1, line: 89, column: 1)
!110 = distinct !DILexicalBlock(scope: !42, file: !1, line: 89, column: 1)
!111 = !DILocation(line: 91, column: 1, scope: !42)
