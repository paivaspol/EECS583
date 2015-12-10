; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [91 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"\0A fatal error in Drand_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"\0A fatal error in Drand_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"\0A fatal error in Drand_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._Drand* @Drand_new() #0 {
  %1 = tail call i8* @malloc(i64 72) #4, !dbg !48
  %2 = bitcast i8* %1 to %struct._Drand*, !dbg !48
  tail call void @llvm.dbg.value(metadata %struct._Drand* %2, i64 0, metadata !30, metadata !52), !dbg !53
  %3 = icmp eq i8* %1, null, !dbg !48
  br i1 %3, label %4, label %7, !dbg !54

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !55, !tbaa !57
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 72, i32 21, i8* getelementptr inbounds ([91 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !55
  tail call void @exit(i32 -1) #5, !dbg !55
  unreachable, !dbg !55

; <label>:7                                       ; preds = %0
  tail call void @Drand_setDefaultFields(%struct._Drand* %2) #6, !dbg !61
  ret %struct._Drand* %2, !dbg !62
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @Drand_setDefaultFields(%struct._Drand* %drand) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !35, metadata !52), !dbg !63
  %1 = icmp eq %struct._Drand* %drand, null, !dbg !64
  br i1 %1, label %2, label %5, !dbg !66

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !67, !tbaa !57
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), %struct._Drand* null) #4, !dbg !69
  tail call void @exit(i32 -1) #5, !dbg !70
  unreachable, !dbg !70

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 0, !dbg !71
  store double 0x419D6F3454000000, double* %6, align 8, !dbg !72, !tbaa !73
  %7 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 1, !dbg !77
  store double 0x41CD6F3458800000, double* %7, align 8, !dbg !78, !tbaa !79
  %8 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2, !dbg !80
  store double 0x41DFFFFFEAC00000, double* %8, align 8, !dbg !81, !tbaa !82
  %9 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3, !dbg !83
  store double 0x41DFFFFFC1C00000, double* %9, align 8, !dbg !84, !tbaa !85
  %10 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 4, !dbg !86
  store double 0.000000e+00, double* %10, align 8, !dbg !87, !tbaa !88
  %11 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 5, !dbg !89
  store double 1.000000e+00, double* %11, align 8, !dbg !90, !tbaa !91
  %12 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 6, !dbg !92
  store double 0.000000e+00, double* %12, align 8, !dbg !93, !tbaa !94
  %13 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 7, !dbg !95
  store double 1.000000e+00, double* %13, align 8, !dbg !96, !tbaa !97
  %14 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 8, !dbg !98
  store i32 1, i32* %14, align 4, !dbg !99, !tbaa !100
  ret void, !dbg !101
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Drand_clearData(%struct._Drand* %drand) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !38, metadata !52), !dbg !102
  %1 = icmp eq %struct._Drand* %drand, null, !dbg !103
  br i1 %1, label %2, label %5, !dbg !105

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !106, !tbaa !57
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), %struct._Drand* null) #4, !dbg !108
  tail call void @exit(i32 -1) #5, !dbg !109
  unreachable, !dbg !109

; <label>:5                                       ; preds = %0
  tail call void @Drand_setDefaultFields(%struct._Drand* %drand) #6, !dbg !110
  ret void, !dbg !111
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct._Drand* @Drand_free(%struct._Drand* %drand) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !43, metadata !52), !dbg !112
  %1 = icmp eq %struct._Drand* %drand, null, !dbg !113
  br i1 %1, label %2, label %5, !dbg !115

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !116, !tbaa !57
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), %struct._Drand* null) #4, !dbg !118
  tail call void @exit(i32 -1) #5, !dbg !119
  unreachable, !dbg !119

; <label>:5                                       ; preds = %0
  tail call void @Drand_clearData(%struct._Drand* %drand) #6, !dbg !120
  %6 = bitcast %struct._Drand* %drand to i8*, !dbg !121
  tail call void @free(i8* %6) #6, !dbg !121
  tail call void @llvm.dbg.value(metadata %struct._Drand* null, i64 0, metadata !43, metadata !52), !dbg !112
  ret %struct._Drand* null, !dbg !124
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !23, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !19, !20, !21}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Drand", file: !6, line: 17, size: 576, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/../Drand.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !12, !13, !14, !15, !16, !17}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "seed1", scope: !5, file: !6, line: 18, baseType: !9, size: 64, align: 64)
!9 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "seed2", scope: !5, file: !6, line: 19, baseType: !9, size: 64, align: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5, file: !6, line: 20, baseType: !9, size: 64, align: 64, offset: 128)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5, file: !6, line: 21, baseType: !9, size: 64, align: 64, offset: 192)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !5, file: !6, line: 22, baseType: !9, size: 64, align: 64, offset: 256)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !5, file: !6, line: 23, baseType: !9, size: 64, align: 64, offset: 320)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !5, file: !6, line: 24, baseType: !9, size: 64, align: 64, offset: 384)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !5, file: !6, line: 25, baseType: !9, size: 64, align: 64, offset: 448)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5, file: !6, line: 26, baseType: !18, size: 32, align: 32, offset: 512)
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!23 = !{!24, !31, !36, !39}
!24 = !DISubprogram(name: "Drand_new", scope: !1, file: !1, line: 16, type: !25, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Drand* ()* @Drand_new, variables: !29)
!25 = !DISubroutineType(types: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "Drand", file: !6, line: 27, baseType: !5)
!29 = !{!30}
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "drand", scope: !24, file: !1, line: 19, type: !27)
!31 = !DISubprogram(name: "Drand_setDefaultFields", scope: !1, file: !1, line: 35, type: !32, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Drand*)* @Drand_setDefaultFields, variables: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !27}
!34 = !{!35}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "drand", arg: 1, scope: !31, file: !1, line: 36, type: !27)
!36 = !DISubprogram(name: "Drand_clearData", scope: !1, file: !1, line: 64, type: !32, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Drand*)* @Drand_clearData, variables: !37)
!37 = !{!38}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "drand", arg: 1, scope: !36, file: !1, line: 65, type: !27)
!39 = !DISubprogram(name: "Drand_free", scope: !1, file: !1, line: 95, type: !40, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Drand* (%struct._Drand*)* @Drand_free, variables: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{!27, !27}
!42 = !{!43}
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "drand", arg: 1, scope: !39, file: !1, line: 96, type: !27)
!44 = !{i32 2, !"Dwarf Version", i32 2}
!45 = !{i32 2, !"Debug Info Version", i32 700000003}
!46 = !{i32 1, !"PIC Level", i32 2}
!47 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!48 = !DILocation(line: 21, column: 1, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 21, column: 1)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 21, column: 1)
!51 = distinct !DILexicalBlock(scope: !24, file: !1, line: 21, column: 1)
!52 = !DIExpression()
!53 = !DILocation(line: 19, column: 10, scope: !24)
!54 = !DILocation(line: 21, column: 1, scope: !50)
!55 = !DILocation(line: 21, column: 1, scope: !56)
!56 = distinct !DILexicalBlock(scope: !49, file: !1, line: 21, column: 1)
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !DILocation(line: 22, column: 1, scope: !24)
!62 = !DILocation(line: 24, column: 1, scope: !24)
!63 = !DILocation(line: 36, column: 13, scope: !31)
!64 = !DILocation(line: 38, column: 12, scope: !65)
!65 = distinct !DILexicalBlock(scope: !31, file: !1, line: 38, column: 6)
!66 = !DILocation(line: 38, column: 6, scope: !31)
!67 = !DILocation(line: 39, column: 12, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 38, column: 22)
!69 = !DILocation(line: 39, column: 4, scope: !68)
!70 = !DILocation(line: 41, column: 4, scope: !68)
!71 = !DILocation(line: 43, column: 8, scope: !31)
!72 = !DILocation(line: 43, column: 14, scope: !31)
!73 = !{!74, !75, i64 0}
!74 = !{!"_Drand", !75, i64 0, !75, i64 8, !75, i64 16, !75, i64 24, !75, i64 32, !75, i64 40, !75, i64 48, !75, i64 56, !76, i64 64}
!75 = !{!"double", !59, i64 0}
!76 = !{!"int", !59, i64 0}
!77 = !DILocation(line: 44, column: 8, scope: !31)
!78 = !DILocation(line: 44, column: 14, scope: !31)
!79 = !{!74, !75, i64 8}
!80 = !DILocation(line: 45, column: 8, scope: !31)
!81 = !DILocation(line: 45, column: 14, scope: !31)
!82 = !{!74, !75, i64 16}
!83 = !DILocation(line: 46, column: 8, scope: !31)
!84 = !DILocation(line: 46, column: 14, scope: !31)
!85 = !{!74, !75, i64 24}
!86 = !DILocation(line: 47, column: 8, scope: !31)
!87 = !DILocation(line: 47, column: 14, scope: !31)
!88 = !{!74, !75, i64 32}
!89 = !DILocation(line: 48, column: 8, scope: !31)
!90 = !DILocation(line: 48, column: 14, scope: !31)
!91 = !{!74, !75, i64 40}
!92 = !DILocation(line: 49, column: 8, scope: !31)
!93 = !DILocation(line: 49, column: 14, scope: !31)
!94 = !{!74, !75, i64 48}
!95 = !DILocation(line: 50, column: 8, scope: !31)
!96 = !DILocation(line: 50, column: 14, scope: !31)
!97 = !{!74, !75, i64 56}
!98 = !DILocation(line: 51, column: 8, scope: !31)
!99 = !DILocation(line: 51, column: 14, scope: !31)
!100 = !{!74, !76, i64 64}
!101 = !DILocation(line: 53, column: 1, scope: !31)
!102 = !DILocation(line: 65, column: 13, scope: !36)
!103 = !DILocation(line: 72, column: 12, scope: !104)
!104 = distinct !DILexicalBlock(scope: !36, file: !1, line: 72, column: 6)
!105 = !DILocation(line: 72, column: 6, scope: !36)
!106 = !DILocation(line: 73, column: 12, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !1, line: 72, column: 22)
!108 = !DILocation(line: 73, column: 4, scope: !107)
!109 = !DILocation(line: 75, column: 4, scope: !107)
!110 = !DILocation(line: 82, column: 1, scope: !36)
!111 = !DILocation(line: 84, column: 1, scope: !36)
!112 = !DILocation(line: 96, column: 13, scope: !39)
!113 = !DILocation(line: 98, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !39, file: !1, line: 98, column: 6)
!115 = !DILocation(line: 98, column: 6, scope: !39)
!116 = !DILocation(line: 99, column: 12, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !1, line: 98, column: 22)
!118 = !DILocation(line: 99, column: 4, scope: !117)
!119 = !DILocation(line: 101, column: 4, scope: !117)
!120 = !DILocation(line: 103, column: 1, scope: !39)
!121 = !DILocation(line: 104, column: 1, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !1, line: 104, column: 1)
!123 = distinct !DILexicalBlock(scope: !39, file: !1, line: 104, column: 1)
!124 = !DILocation(line: 106, column: 1, scope: !39)
