; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/macros.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@ZERO = global float 0.000000e+00, align 4
@THIRD = global float 0x3FD5555560000000, align 4
@HALF = global float 5.000000e-01, align 4
@ONE = global float 1.000000e+00, align 4
@TWO = global float 2.000000e+00, align 4
@THREE = global float 3.000000e+00, align 4
@SIX = global float 6.000000e+00, align 4
@TEN = global float 1.000000e+01, align 4
@TWELVE = global float 1.200000e+01, align 4

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !98), !dbg !99
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !98), !dbg !100
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !101
  %2 = load i32* %1, align 4, !dbg !103, !tbaa !104
  %3 = add nsw i32 %2, -1, !dbg !103
  store i32 %3, i32* %1, align 4, !dbg !103, !tbaa !104
  %4 = icmp sgt i32 %2, 0, !dbg !113
  br i1 %4, label %._crit_edge, label %5, !dbg !114

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !115
  br label %10, !dbg !114

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !116
  %7 = load i32* %6, align 4, !dbg !116, !tbaa !117
  %8 = icmp sle i32 %2, %7, !dbg !118
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !119
  %or.cond = or i1 %9, %8, !dbg !120
  br i1 %or.cond, label %15, label %10, !dbg !120

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !115
  %11 = trunc i32 %_c to i8, !dbg !121
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !122
  %13 = load i8** %12, align 8, !dbg !123, !tbaa !124
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !123
  store i8* %14, i8** %12, align 8, !dbg !123, !tbaa !124
  store i8 %11, i8* %13, align 1, !dbg !125, !tbaa !126
  br label %17, !dbg !127

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #4, !dbg !128
  br label %17, !dbg !129

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !130
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !98), !dbg !131
  %1 = icmp sgt i32 %__signo, 32, !dbg !132
  br i1 %1, label %5, label %2, !dbg !133

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !134
  %4 = shl i32 1, %3, !dbg !135
  br label %5, !dbg !133

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !133
  ret i32 %6, !dbg !136
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!94, !95, !96}
!llvm.ident = !{!97}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !81, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/macros.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !{!6, !75}
!6 = !DISubprogram(name: "__sputc", scope: !7, file: !7, line: 348, type: !8, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!7 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !7, line: 153, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !7, line: 122, size: 1216, align: 64, elements: !14)
!14 = !{!15, !18, !19, !20, !22, !23, !28, !29, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !13, file: !7, line: 123, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !13, file: !7, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !13, file: !7, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !7, line: 126, baseType: !21, size: 16, align: 16, offset: 128)
!21 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !13, file: !7, line: 127, baseType: !21, size: 16, align: 16, offset: 144)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !13, file: !7, line: 128, baseType: !24, size: 128, align: 64, offset: 192)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !7, line: 88, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !24, file: !7, line: 89, baseType: !16, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !24, file: !7, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !13, file: !7, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !13, file: !7, line: 132, baseType: !30, size: 64, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !13, file: !7, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!10, !30}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !13, file: !7, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!10, !30, !39, !10}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !13, file: !7, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !30, !44, !10}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !7, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !13, file: !7, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!10, !30, !54, !10}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !13, file: !7, line: 139, baseType: !24, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !13, file: !7, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !7, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !13, file: !7, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !13, file: !7, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !13, file: !7, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !13, file: !7, line: 148, baseType: !24, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !13, file: !7, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !7, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !6, file: !7, line: 348, type: !10)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !6, file: !7, line: 348, type: !11)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!10, !10}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !10)
!81 = !{!82, !86, !87, !88, !89, !90, !91, !92, !93}
!82 = !DIGlobalVariable(name: "ZERO", scope: !0, file: !1, line: 35, type: !83, isLocal: false, isDefinition: true, variable: float* @ZERO)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !84, line: 87, baseType: !85)
!84 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!85 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!86 = !DIGlobalVariable(name: "THIRD", scope: !0, file: !1, line: 36, type: !83, isLocal: false, isDefinition: true, variable: float* @THIRD)
!87 = !DIGlobalVariable(name: "HALF", scope: !0, file: !1, line: 37, type: !83, isLocal: false, isDefinition: true, variable: float* @HALF)
!88 = !DIGlobalVariable(name: "ONE", scope: !0, file: !1, line: 38, type: !83, isLocal: false, isDefinition: true, variable: float* @ONE)
!89 = !DIGlobalVariable(name: "TWO", scope: !0, file: !1, line: 39, type: !83, isLocal: false, isDefinition: true, variable: float* @TWO)
!90 = !DIGlobalVariable(name: "THREE", scope: !0, file: !1, line: 40, type: !83, isLocal: false, isDefinition: true, variable: float* @THREE)
!91 = !DIGlobalVariable(name: "SIX", scope: !0, file: !1, line: 41, type: !83, isLocal: false, isDefinition: true, variable: float* @SIX)
!92 = !DIGlobalVariable(name: "TEN", scope: !0, file: !1, line: 42, type: !83, isLocal: false, isDefinition: true, variable: float* @TEN)
!93 = !DIGlobalVariable(name: "TWELVE", scope: !0, file: !1, line: 43, type: !83, isLocal: false, isDefinition: true, variable: float* @TWELVE)
!94 = !{i32 2, !"Dwarf Version", i32 2}
!95 = !{i32 2, !"Debug Info Version", i32 700000003}
!96 = !{i32 1, !"PIC Level", i32 2}
!97 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!98 = !DIExpression()
!99 = !DILocation(line: 348, column: 40, scope: !6)
!100 = !DILocation(line: 348, column: 50, scope: !6)
!101 = !DILocation(line: 349, column: 12, scope: !102)
!102 = distinct !DILexicalBlock(scope: !6, file: !7, line: 349, column: 6)
!103 = !DILocation(line: 349, column: 6, scope: !102)
!104 = !{!105, !109, i64 12}
!105 = !{!"__sFILE", !106, i64 0, !109, i64 8, !109, i64 12, !110, i64 16, !110, i64 18, !111, i64 24, !109, i64 40, !106, i64 48, !106, i64 56, !106, i64 64, !106, i64 72, !106, i64 80, !111, i64 88, !106, i64 104, !109, i64 112, !107, i64 116, !107, i64 119, !111, i64 120, !109, i64 136, !112, i64 144}
!106 = !{!"any pointer", !107, i64 0}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C/C++ TBAA"}
!109 = !{!"int", !107, i64 0}
!110 = !{!"short", !107, i64 0}
!111 = !{!"__sbuf", !106, i64 0, !109, i64 8}
!112 = !{!"long long", !107, i64 0}
!113 = !DILocation(line: 349, column: 15, scope: !102)
!114 = !DILocation(line: 349, column: 20, scope: !102)
!115 = !DILocation(line: 350, column: 10, scope: !102)
!116 = !DILocation(line: 349, column: 38, scope: !102)
!117 = !{!105, !109, i64 40}
!118 = !DILocation(line: 349, column: 31, scope: !102)
!119 = !DILocation(line: 349, column: 59, scope: !102)
!120 = !DILocation(line: 349, column: 47, scope: !102)
!121 = !DILocation(line: 350, column: 23, scope: !102)
!122 = !DILocation(line: 350, column: 16, scope: !102)
!123 = !DILocation(line: 350, column: 18, scope: !102)
!124 = !{!105, !106, i64 0}
!125 = !DILocation(line: 350, column: 21, scope: !102)
!126 = !{!107, !107, i64 0}
!127 = !DILocation(line: 350, column: 3, scope: !102)
!128 = !DILocation(line: 352, column: 11, scope: !102)
!129 = !DILocation(line: 352, column: 3, scope: !102)
!130 = !DILocation(line: 353, column: 1, scope: !6)
!131 = !DILocation(line: 114, column: 15, scope: !75)
!132 = !DILocation(line: 116, column: 20, scope: !75)
!133 = !DILocation(line: 116, column: 12, scope: !75)
!134 = !DILocation(line: 116, column: 57, scope: !75)
!135 = !DILocation(line: 116, column: 45, scope: !75)
!136 = !DILocation(line: 116, column: 5, scope: !75)
