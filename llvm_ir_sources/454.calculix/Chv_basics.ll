; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [87 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_basics.c\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Chv_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A fatal error in Chv_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [42 x i8] c"\0A fatal error in Chv_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._Chv* @Chv_new() #0 {
  %1 = tail call i8* @malloc(i64 80) #6, !dbg !58
  %2 = bitcast i8* %1 to %struct._Chv*, !dbg !58
  tail call void @llvm.dbg.value(metadata %struct._Chv* %2, i64 0, metadata !42, metadata !62), !dbg !63
  %3 = icmp eq i8* %1, null, !dbg !58
  br i1 %3, label %4, label %7, !dbg !64

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !65, !tbaa !67
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 80, i32 21, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !65
  tail call void @exit(i32 -1) #7, !dbg !65
  unreachable, !dbg !65

; <label>:7                                       ; preds = %0
  tail call void @Chv_setDefaultFields(%struct._Chv* %2) #8, !dbg !71
  ret %struct._Chv* %2, !dbg !72
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @Chv_setDefaultFields(%struct._Chv* %chv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv, i64 0, metadata !47, metadata !62), !dbg !73
  %1 = icmp eq %struct._Chv* %chv, null, !dbg !74
  br i1 %1, label %2, label %5, !dbg !76

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !77, !tbaa !67
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._Chv* null) #6, !dbg !79
  tail call void @exit(i32 -1) #7, !dbg !80
  unreachable, !dbg !80

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0, !dbg !81
  store i32 -1, i32* %6, align 4, !dbg !82, !tbaa !83
  %7 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !87
  store i32 0, i32* %7, align 4, !dbg !88, !tbaa !89
  %8 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !90
  store i32 0, i32* %8, align 4, !dbg !91, !tbaa !92
  %9 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !93
  store i32 0, i32* %9, align 4, !dbg !94, !tbaa !95
  %10 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !96
  store i32 1, i32* %10, align 4, !dbg !97, !tbaa !98
  %11 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !99
  store i32 0, i32* %11, align 4, !dbg !100, !tbaa !101
  %12 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9, !dbg !102
  tail call void @DV_setDefaultFields(%struct._DV* %12) #6, !dbg !103
  %13 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6, !dbg !104
  %14 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 10, !dbg !105
  store %struct._Chv* null, %struct._Chv** %14, align 8, !dbg !106, !tbaa !107
  %15 = bitcast i32** %13 to i8*, !dbg !108
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 24, i32 8, i1 false), !dbg !109
  ret void, !dbg !108
}

; Function Attrs: optsize
declare void @DV_setDefaultFields(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Chv_clearData(%struct._Chv* %chv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv, i64 0, metadata !50, metadata !62), !dbg !110
  %1 = icmp eq %struct._Chv* %chv, null, !dbg !111
  br i1 %1, label %2, label %5, !dbg !113

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !114, !tbaa !67
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), %struct._Chv* null) #6, !dbg !116
  tail call void @exit(i32 -1) #7, !dbg !117
  unreachable, !dbg !117

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9, !dbg !118
  tail call void @DV_clearData(%struct._DV* %6) #6, !dbg !119
  tail call void @Chv_setDefaultFields(%struct._Chv* %chv) #8, !dbg !120
  ret void, !dbg !121
}

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Chv_free(%struct._Chv* %chv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv, i64 0, metadata !53, metadata !62), !dbg !122
  %1 = icmp eq %struct._Chv* %chv, null, !dbg !123
  br i1 %1, label %2, label %5, !dbg !125

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !126, !tbaa !67
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([42 x i8]* @.str4, i64 0, i64 0), %struct._Chv* null) #6, !dbg !128
  tail call void @exit(i32 -1) #7, !dbg !129
  unreachable, !dbg !129

; <label>:5                                       ; preds = %0
  tail call void @Chv_clearData(%struct._Chv* %chv) #8, !dbg !130
  %6 = bitcast %struct._Chv* %chv to i8*, !dbg !131
  tail call void @free(i8* %6) #8, !dbg !131
  tail call void @llvm.dbg.value(metadata %struct._Chv* null, i64 0, metadata !53, metadata !62), !dbg !122
  ret void, !dbg !134
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
!llvm.module.flags = !{!54, !55, !56}
!llvm.ident = !{!57}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !37, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !33, !34, !35}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Chv", file: !6, line: 31, size: 640, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../Chv.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !12, !13, !14, !15, !17, !18, !21, !30}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5, file: !6, line: 32, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "nD", scope: !5, file: !6, line: 33, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "nL", scope: !5, file: !6, line: 34, baseType: !9, size: 32, align: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "nU", scope: !5, file: !6, line: 35, baseType: !9, size: 32, align: 32, offset: 96)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !6, line: 36, baseType: !9, size: 32, align: 32, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "symflag", scope: !5, file: !6, line: 37, baseType: !9, size: 32, align: 32, offset: 160)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "rowind", scope: !5, file: !6, line: 38, baseType: !16, size: 64, align: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "colind", scope: !5, file: !6, line: 39, baseType: !16, size: 64, align: 64, offset: 256)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5, file: !6, line: 40, baseType: !19, size: 64, align: 64, offset: 320)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !5, file: !6, line: 41, baseType: !22, size: 192, align: 64, offset: 384)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !23, line: 20, baseType: !24)
!23 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !23, line: 21, size: 192, align: 64, elements: !25)
!25 = !{!26, !27, !28, !29}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !24, file: !23, line: 22, baseType: !9, size: 32, align: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !24, file: !23, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !24, file: !23, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !24, file: !23, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !6, line: 42, baseType: !31, size: 64, align: 64, offset: 576)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "Chv", file: !6, line: 30, baseType: !5)
!33 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!37 = !{!38, !43, !48, !51}
!38 = !DISubprogram(name: "Chv_new", scope: !1, file: !1, line: 16, type: !39, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Chv* ()* @Chv_new, variables: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{!31}
!41 = !{!42}
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chv", scope: !38, file: !1, line: 19, type: !31)
!43 = !DISubprogram(name: "Chv_setDefaultFields", scope: !1, file: !1, line: 35, type: !44, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Chv*)* @Chv_setDefaultFields, variables: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !31}
!46 = !{!47}
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chv", arg: 1, scope: !43, file: !1, line: 36, type: !31)
!48 = !DISubprogram(name: "Chv_clearData", scope: !1, file: !1, line: 66, type: !44, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Chv*)* @Chv_clearData, variables: !49)
!49 = !{!50}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chv", arg: 1, scope: !48, file: !1, line: 67, type: !31)
!51 = !DISubprogram(name: "Chv_free", scope: !1, file: !1, line: 103, type: !44, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Chv*)* @Chv_free, variables: !52)
!52 = !{!53}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chv", arg: 1, scope: !51, file: !1, line: 104, type: !31)
!54 = !{i32 2, !"Dwarf Version", i32 2}
!55 = !{i32 2, !"Debug Info Version", i32 700000003}
!56 = !{i32 1, !"PIC Level", i32 2}
!57 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!58 = !DILocation(line: 21, column: 1, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 21, column: 1)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 21, column: 1)
!61 = distinct !DILexicalBlock(scope: !38, file: !1, line: 21, column: 1)
!62 = !DIExpression()
!63 = !DILocation(line: 19, column: 8, scope: !38)
!64 = !DILocation(line: 21, column: 1, scope: !60)
!65 = !DILocation(line: 21, column: 1, scope: !66)
!66 = distinct !DILexicalBlock(scope: !59, file: !1, line: 21, column: 1)
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !DILocation(line: 22, column: 1, scope: !38)
!72 = !DILocation(line: 24, column: 1, scope: !38)
!73 = !DILocation(line: 36, column: 11, scope: !43)
!74 = !DILocation(line: 38, column: 10, scope: !75)
!75 = distinct !DILexicalBlock(scope: !43, file: !1, line: 38, column: 6)
!76 = !DILocation(line: 38, column: 6, scope: !43)
!77 = !DILocation(line: 39, column: 12, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !1, line: 38, column: 20)
!79 = !DILocation(line: 39, column: 4, scope: !78)
!80 = !DILocation(line: 41, column: 4, scope: !78)
!81 = !DILocation(line: 43, column: 6, scope: !43)
!82 = !DILocation(line: 43, column: 14, scope: !43)
!83 = !{!84, !85, i64 0}
!84 = !{!"_Chv", !85, i64 0, !85, i64 4, !85, i64 8, !85, i64 12, !85, i64 16, !85, i64 20, !68, i64 24, !68, i64 32, !68, i64 40, !86, i64 48, !68, i64 72}
!85 = !{!"int", !69, i64 0}
!86 = !{!"_DV", !85, i64 0, !85, i64 4, !85, i64 8, !68, i64 16}
!87 = !DILocation(line: 44, column: 6, scope: !43)
!88 = !DILocation(line: 44, column: 14, scope: !43)
!89 = !{!84, !85, i64 4}
!90 = !DILocation(line: 45, column: 6, scope: !43)
!91 = !DILocation(line: 45, column: 14, scope: !43)
!92 = !{!84, !85, i64 8}
!93 = !DILocation(line: 46, column: 6, scope: !43)
!94 = !DILocation(line: 46, column: 14, scope: !43)
!95 = !{!84, !85, i64 12}
!96 = !DILocation(line: 47, column: 6, scope: !43)
!97 = !DILocation(line: 47, column: 14, scope: !43)
!98 = !{!84, !85, i64 16}
!99 = !DILocation(line: 48, column: 6, scope: !43)
!100 = !DILocation(line: 48, column: 14, scope: !43)
!101 = !{!84, !85, i64 20}
!102 = !DILocation(line: 49, column: 27, scope: !43)
!103 = !DILocation(line: 49, column: 1, scope: !43)
!104 = !DILocation(line: 50, column: 6, scope: !43)
!105 = !DILocation(line: 53, column: 6, scope: !43)
!106 = !DILocation(line: 53, column: 14, scope: !43)
!107 = !{!84, !68, i64 72}
!108 = !DILocation(line: 55, column: 1, scope: !43)
!109 = !DILocation(line: 51, column: 14, scope: !43)
!110 = !DILocation(line: 67, column: 11, scope: !48)
!111 = !DILocation(line: 74, column: 10, scope: !112)
!112 = distinct !DILexicalBlock(scope: !48, file: !1, line: 74, column: 6)
!113 = !DILocation(line: 74, column: 6, scope: !48)
!114 = !DILocation(line: 75, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 74, column: 20)
!116 = !DILocation(line: 75, column: 4, scope: !115)
!117 = !DILocation(line: 77, column: 4, scope: !115)
!118 = !DILocation(line: 84, column: 20, scope: !48)
!119 = !DILocation(line: 84, column: 1, scope: !48)
!120 = !DILocation(line: 90, column: 1, scope: !48)
!121 = !DILocation(line: 92, column: 1, scope: !48)
!122 = !DILocation(line: 104, column: 11, scope: !51)
!123 = !DILocation(line: 106, column: 10, scope: !124)
!124 = distinct !DILexicalBlock(scope: !51, file: !1, line: 106, column: 6)
!125 = !DILocation(line: 106, column: 6, scope: !51)
!126 = !DILocation(line: 107, column: 12, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !1, line: 106, column: 20)
!128 = !DILocation(line: 107, column: 4, scope: !127)
!129 = !DILocation(line: 109, column: 4, scope: !127)
!130 = !DILocation(line: 111, column: 1, scope: !51)
!131 = !DILocation(line: 112, column: 1, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !1, line: 112, column: 1)
!133 = distinct !DILexicalBlock(scope: !51, file: !1, line: 112, column: 1)
!134 = !DILocation(line: 114, column: 1, scope: !51)
