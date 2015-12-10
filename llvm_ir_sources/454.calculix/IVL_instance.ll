; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_instance.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [42 x i8] c"\0A fatal error in IVL_type(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [46 x i8] c"\0A fatal error in IVL_maxnlist(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"\0A fatal error in IVL_nlist(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [43 x i8] c"\0A fatal error in IVL_tsize(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [42 x i8] c"\0A fatal error in IVL_incr(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [48 x i8] c"\0A fatal error in IVL_setincr(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IVL_type(%struct._IVL* %ivl) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ivl, i64 0, metadata !34, metadata !57), !dbg !58
  %1 = icmp eq %struct._IVL* %ivl, null, !dbg !59
  br i1 %1, label %2, label %5, !dbg !61

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !62, !tbaa !64
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0), %struct._IVL* null) #4, !dbg !68
  tail call void @exit(i32 -1) #5, !dbg !69
  unreachable, !dbg !69

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0, !dbg !70
  %7 = load i32* %6, align 4, !dbg !70, !tbaa !71
  ret i32 %7, !dbg !74
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IVL_maxnlist(%struct._IVL* %ivl) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ivl, i64 0, metadata !37, metadata !57), !dbg !75
  %1 = icmp eq %struct._IVL* %ivl, null, !dbg !76
  br i1 %1, label %2, label %5, !dbg !78

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !79, !tbaa !64
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([46 x i8]* @.str1, i64 0, i64 0), %struct._IVL* null) #4, !dbg !81
  tail call void @exit(i32 -1) #5, !dbg !82
  unreachable, !dbg !82

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1, !dbg !83
  %7 = load i32* %6, align 4, !dbg !83, !tbaa !84
  ret i32 %7, !dbg !85
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IVL_nlist(%struct._IVL* %ivl) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ivl, i64 0, metadata !40, metadata !57), !dbg !86
  %1 = icmp eq %struct._IVL* %ivl, null, !dbg !87
  br i1 %1, label %2, label %5, !dbg !89

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !90, !tbaa !64
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0), %struct._IVL* null) #4, !dbg !92
  tail call void @exit(i32 -1) #5, !dbg !93
  unreachable, !dbg !93

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2, !dbg !94
  %7 = load i32* %6, align 4, !dbg !94, !tbaa !95
  ret i32 %7, !dbg !96
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IVL_tsize(%struct._IVL* %ivl) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ivl, i64 0, metadata !43, metadata !57), !dbg !97
  %1 = icmp eq %struct._IVL* %ivl, null, !dbg !98
  br i1 %1, label %2, label %5, !dbg !100

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !101, !tbaa !64
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([43 x i8]* @.str3, i64 0, i64 0), %struct._IVL* null) #4, !dbg !103
  tail call void @exit(i32 -1) #5, !dbg !104
  unreachable, !dbg !104

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 3, !dbg !105
  %7 = load i32* %6, align 4, !dbg !105, !tbaa !106
  ret i32 %7, !dbg !107
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IVL_incr(%struct._IVL* %ivl) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ivl, i64 0, metadata !46, metadata !57), !dbg !108
  %1 = icmp eq %struct._IVL* %ivl, null, !dbg !109
  br i1 %1, label %2, label %5, !dbg !111

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !112, !tbaa !64
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([42 x i8]* @.str4, i64 0, i64 0), %struct._IVL* null) #4, !dbg !114
  tail call void @exit(i32 -1) #5, !dbg !115
  unreachable, !dbg !115

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 6, !dbg !116
  %7 = load i32* %6, align 4, !dbg !116, !tbaa !117
  ret i32 %7, !dbg !118
}

; Function Attrs: nounwind optsize ssp uwtable
define void @IVL_setincr(%struct._IVL* %ivl, i32 %incr) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ivl, i64 0, metadata !51, metadata !57), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %incr, i64 0, metadata !52, metadata !57), !dbg !120
  %1 = icmp eq %struct._IVL* %ivl, null, !dbg !121
  %2 = icmp slt i32 %incr, 0, !dbg !123
  %or.cond = or i1 %1, %2, !dbg !124
  br i1 %or.cond, label %3, label %6, !dbg !124

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !125, !tbaa !64
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([48 x i8]* @.str5, i64 0, i64 0), %struct._IVL* %ivl, i32 %incr) #4, !dbg !127
  tail call void @exit(i32 -1) #5, !dbg !128
  unreachable, !dbg !128

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 6, !dbg !129
  store i32 %incr, i32* %7, align 4, !dbg !130, !tbaa !117
  ret void, !dbg !131
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!53, !54, !55}
!llvm.ident = !{!56}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_instance.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !35, !38, !41, !44, !47}
!6 = !DISubprogram(name: "IVL_type", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._IVL*)* @IVL_type, variables: !33)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !12, line: 55, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/../IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !12, line: 79, size: 384, align: 64, elements: !14)
!14 = !{!15, !16, !17, !18, !19, !21, !23, !24}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 80, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !13, file: !12, line: 81, baseType: !9, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !13, file: !12, line: 82, baseType: !9, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !13, file: !12, line: 83, baseType: !9, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !13, file: !12, line: 84, baseType: !20, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !13, file: !12, line: 85, baseType: !22, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !13, file: !12, line: 86, baseType: !9, size: 32, align: 32, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !13, file: !12, line: 87, baseType: !25, size: 64, align: 64, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !12, line: 56, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !12, line: 102, size: 192, align: 64, elements: !28)
!28 = !{!29, !30, !31, !32}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !27, file: !12, line: 103, baseType: !9, size: 32, align: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !27, file: !12, line: 104, baseType: !9, size: 32, align: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !27, file: !12, line: 105, baseType: !20, size: 64, align: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !27, file: !12, line: 106, baseType: !25, size: 64, align: 64, offset: 128)
!33 = !{!34}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivl", arg: 1, scope: !6, file: !1, line: 15, type: !10)
!35 = !DISubprogram(name: "IVL_maxnlist", scope: !1, file: !1, line: 38, type: !7, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._IVL*)* @IVL_maxnlist, variables: !36)
!36 = !{!37}
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivl", arg: 1, scope: !35, file: !1, line: 39, type: !10)
!38 = !DISubprogram(name: "IVL_nlist", scope: !1, file: !1, line: 62, type: !7, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._IVL*)* @IVL_nlist, variables: !39)
!39 = !{!40}
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivl", arg: 1, scope: !38, file: !1, line: 63, type: !10)
!41 = !DISubprogram(name: "IVL_tsize", scope: !1, file: !1, line: 86, type: !7, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._IVL*)* @IVL_tsize, variables: !42)
!42 = !{!43}
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivl", arg: 1, scope: !41, file: !1, line: 87, type: !10)
!44 = !DISubprogram(name: "IVL_incr", scope: !1, file: !1, line: 110, type: !7, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._IVL*)* @IVL_incr, variables: !45)
!45 = !{!46}
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivl", arg: 1, scope: !44, file: !1, line: 111, type: !10)
!47 = !DISubprogram(name: "IVL_setincr", scope: !1, file: !1, line: 134, type: !48, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IVL*, i32)* @IVL_setincr, variables: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !10, !9}
!50 = !{!51, !52}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivl", arg: 1, scope: !47, file: !1, line: 135, type: !10)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "incr", arg: 2, scope: !47, file: !1, line: 136, type: !9)
!53 = !{i32 2, !"Dwarf Version", i32 2}
!54 = !{i32 2, !"Debug Info Version", i32 700000003}
!55 = !{i32 1, !"PIC Level", i32 2}
!56 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!57 = !DIExpression()
!58 = !DILocation(line: 15, column: 11, scope: !6)
!59 = !DILocation(line: 22, column: 10, scope: !60)
!60 = distinct !DILexicalBlock(scope: !6, file: !1, line: 22, column: 6)
!61 = !DILocation(line: 22, column: 6, scope: !6)
!62 = !DILocation(line: 23, column: 12, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 22, column: 20)
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !DILocation(line: 23, column: 4, scope: !63)
!69 = !DILocation(line: 25, column: 4, scope: !63)
!70 = !DILocation(line: 27, column: 13, scope: !6)
!71 = !{!72, !73, i64 0}
!72 = !{!"_IVL", !73, i64 0, !73, i64 4, !73, i64 8, !73, i64 12, !65, i64 16, !65, i64 24, !73, i64 32, !65, i64 40}
!73 = !{!"int", !66, i64 0}
!74 = !DILocation(line: 27, column: 1, scope: !6)
!75 = !DILocation(line: 39, column: 11, scope: !35)
!76 = !DILocation(line: 46, column: 10, scope: !77)
!77 = distinct !DILexicalBlock(scope: !35, file: !1, line: 46, column: 6)
!78 = !DILocation(line: 46, column: 6, scope: !35)
!79 = !DILocation(line: 47, column: 12, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !1, line: 46, column: 20)
!81 = !DILocation(line: 47, column: 4, scope: !80)
!82 = !DILocation(line: 49, column: 4, scope: !80)
!83 = !DILocation(line: 51, column: 13, scope: !35)
!84 = !{!72, !73, i64 4}
!85 = !DILocation(line: 51, column: 1, scope: !35)
!86 = !DILocation(line: 63, column: 11, scope: !38)
!87 = !DILocation(line: 70, column: 10, scope: !88)
!88 = distinct !DILexicalBlock(scope: !38, file: !1, line: 70, column: 6)
!89 = !DILocation(line: 70, column: 6, scope: !38)
!90 = !DILocation(line: 71, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !1, line: 70, column: 20)
!92 = !DILocation(line: 71, column: 4, scope: !91)
!93 = !DILocation(line: 73, column: 4, scope: !91)
!94 = !DILocation(line: 75, column: 13, scope: !38)
!95 = !{!72, !73, i64 8}
!96 = !DILocation(line: 75, column: 1, scope: !38)
!97 = !DILocation(line: 87, column: 11, scope: !41)
!98 = !DILocation(line: 94, column: 10, scope: !99)
!99 = distinct !DILexicalBlock(scope: !41, file: !1, line: 94, column: 6)
!100 = !DILocation(line: 94, column: 6, scope: !41)
!101 = !DILocation(line: 95, column: 12, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !1, line: 94, column: 20)
!103 = !DILocation(line: 95, column: 4, scope: !102)
!104 = !DILocation(line: 97, column: 4, scope: !102)
!105 = !DILocation(line: 99, column: 13, scope: !41)
!106 = !{!72, !73, i64 12}
!107 = !DILocation(line: 99, column: 1, scope: !41)
!108 = !DILocation(line: 111, column: 11, scope: !44)
!109 = !DILocation(line: 118, column: 10, scope: !110)
!110 = distinct !DILexicalBlock(scope: !44, file: !1, line: 118, column: 6)
!111 = !DILocation(line: 118, column: 6, scope: !44)
!112 = !DILocation(line: 119, column: 12, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 118, column: 20)
!114 = !DILocation(line: 119, column: 4, scope: !113)
!115 = !DILocation(line: 121, column: 4, scope: !113)
!116 = !DILocation(line: 123, column: 13, scope: !44)
!117 = !{!72, !73, i64 32}
!118 = !DILocation(line: 123, column: 1, scope: !44)
!119 = !DILocation(line: 135, column: 11, scope: !47)
!120 = !DILocation(line: 136, column: 10, scope: !47)
!121 = !DILocation(line: 143, column: 10, scope: !122)
!122 = distinct !DILexicalBlock(scope: !47, file: !1, line: 143, column: 6)
!123 = !DILocation(line: 143, column: 26, scope: !122)
!124 = !DILocation(line: 143, column: 18, scope: !122)
!125 = !DILocation(line: 144, column: 12, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !1, line: 143, column: 32)
!127 = !DILocation(line: 144, column: 4, scope: !126)
!128 = !DILocation(line: 146, column: 4, scope: !126)
!129 = !DILocation(line: 148, column: 6, scope: !47)
!130 = !DILocation(line: 148, column: 11, scope: !47)
!131 = !DILocation(line: 150, column: 1, scope: !47)
