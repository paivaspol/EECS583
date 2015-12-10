; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/binio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [57 x i8] c"writing %s (%dx%d, len=%d, pos=%d) from file %s, line %d\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"reading %s (%dx%d, len=%d, pos=%d) from file %s, line %d\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !10, metadata !100), !dbg !101
  %1 = icmp sgt i32 %__signo, 32, !dbg !102
  br i1 %1, label %5, label %2, !dbg !103

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !104
  %4 = shl i32 1, %3, !dbg !105
  br label %5, !dbg !103

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !103
  ret i32 %6, !dbg !106
}

; Function Attrs: nounwind optsize ssp uwtable
define void @_blockwrite(%struct.__sFILE* %fp, i32 %nelem, i32 %size, i8* %data, i8* %what, i8* %file, i32 %line) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !78, metadata !100), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %nelem, i64 0, metadata !79, metadata !100), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !80, metadata !100), !dbg !109
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !81, metadata !100), !dbg !110
  tail call void @llvm.dbg.value(metadata i8* %what, i64 0, metadata !82, metadata !100), !dbg !111
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !83, metadata !100), !dbg !112
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !84, metadata !100), !dbg !113
  %1 = sext i32 %size to i64, !dbg !114
  %2 = sext i32 %nelem to i64, !dbg !116
  %3 = tail call i64 @"\01_fwrite"(i8* %data, i64 %1, i64 %2, %struct.__sFILE* %fp) #5, !dbg !117
  %4 = trunc i64 %3 to i32, !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !85, metadata !100), !dbg !118
  %5 = icmp eq i32 %4, %nelem, !dbg !119
  br i1 %5, label %10, label %6, !dbg !120

; <label>:6                                       ; preds = %0
  %7 = tail call i32* @__error() #5, !dbg !121
  %8 = load i32* %7, align 4, !dbg !121, !tbaa !122
  %9 = tail call i64 @ftell(%struct.__sFILE* %fp) #5, !dbg !126
  tail call void (i32, i8*, ...)* @fatal_error(i32 %8, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i8* %what, i32 %nelem, i32 %size, i32 %4, i64 %9, i8* %file, i32 %line) #5, !dbg !127
  br label %10, !dbg !127

; <label>:10                                      ; preds = %0, %6
  ret void, !dbg !128
}

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare i32* @__error() #2

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @_blockread(%struct.__sFILE* nocapture %fp, i32 %nelem, i32 %size, i8* nocapture %data, i8* %what, i8* %file, i32 %line) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !88, metadata !100), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %nelem, i64 0, metadata !89, metadata !100), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !90, metadata !100), !dbg !131
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !91, metadata !100), !dbg !132
  tail call void @llvm.dbg.value(metadata i8* %what, i64 0, metadata !92, metadata !100), !dbg !133
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !93, metadata !100), !dbg !134
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !94, metadata !100), !dbg !135
  %1 = sext i32 %size to i64, !dbg !136
  %2 = sext i32 %nelem to i64, !dbg !138
  %3 = tail call i64 @fread(i8* %data, i64 %1, i64 %2, %struct.__sFILE* %fp) #5, !dbg !139
  %4 = trunc i64 %3 to i32, !dbg !139
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !95, metadata !100), !dbg !140
  %5 = icmp eq i32 %4, %nelem, !dbg !141
  br i1 %5, label %10, label %6, !dbg !142

; <label>:6                                       ; preds = %0
  %7 = tail call i32* @__error() #5, !dbg !143
  %8 = load i32* %7, align 4, !dbg !143, !tbaa !122
  %9 = tail call i64 @ftell(%struct.__sFILE* %fp) #5, !dbg !144
  tail call void (i32, i8*, ...)* @fatal_error(i32 %8, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i8* %what, i32 %nelem, i32 %size, i32 %4, i64 %9, i8* %file, i32 %line) #5, !dbg !145
  br label %10, !dbg !145

; <label>:10                                      ; preds = %0, %6
  ret void, !dbg !146
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!96, !97, !98}
!llvm.ident = !{!99}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/binio.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !11, !86}
!4 = !DISubprogram(name: "__sigbits", scope: !5, file: !5, line: 114, type: !6, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !9)
!5 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !8}
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{!10}
!10 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !4, file: !5, line: 114, type: !8)
!11 = !DISubprogram(name: "_blockwrite", scope: !1, file: !1, line: 40, type: !12, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, i32, i8*, i8*, i8*, i32)* @_blockwrite, variables: !77)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !8, !8, !34, !43, !43, !8}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !16, line: 153, baseType: !17)
!16 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!17 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !16, line: 122, size: 1216, align: 64, elements: !18)
!18 = !{!19, !22, !23, !24, !26, !27, !32, !33, !35, !39, !45, !55, !61, !62, !65, !66, !70, !74, !75, !76}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !17, file: !16, line: 123, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !17, file: !16, line: 124, baseType: !8, size: 32, align: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !17, file: !16, line: 125, baseType: !8, size: 32, align: 32, offset: 96)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !17, file: !16, line: 126, baseType: !25, size: 16, align: 16, offset: 128)
!25 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !17, file: !16, line: 127, baseType: !25, size: 16, align: 16, offset: 144)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !17, file: !16, line: 128, baseType: !28, size: 128, align: 64, offset: 192)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !16, line: 88, size: 128, align: 64, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !28, file: !16, line: 89, baseType: !20, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !28, file: !16, line: 90, baseType: !8, size: 32, align: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !17, file: !16, line: 129, baseType: !8, size: 32, align: 32, offset: 320)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !17, file: !16, line: 132, baseType: !34, size: 64, align: 64, offset: 384)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !17, file: !16, line: 133, baseType: !36, size: 64, align: 64, offset: 448)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!8, !34}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !17, file: !16, line: 134, baseType: !40, size: 64, align: 64, offset: 512)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!8, !34, !43, !8}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !17, file: !16, line: 135, baseType: !46, size: 64, align: 64, offset: 576)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !34, !49, !8}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !16, line: 77, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !51, line: 71, baseType: !52)
!51 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !53, line: 46, baseType: !54)
!53 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!54 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !17, file: !16, line: 136, baseType: !56, size: 64, align: 64, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!8, !34, !59, !8}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !17, file: !16, line: 139, baseType: !28, size: 128, align: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !17, file: !16, line: 140, baseType: !63, size: 64, align: 64, offset: 832)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !16, line: 94, flags: DIFlagFwdDecl)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !17, file: !16, line: 141, baseType: !8, size: 32, align: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !17, file: !16, line: 144, baseType: !67, size: 24, align: 8, offset: 928)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 24, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !17, file: !16, line: 145, baseType: !71, size: 8, align: 8, offset: 952)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, align: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !17, file: !16, line: 148, baseType: !28, size: 128, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !17, file: !16, line: 151, baseType: !8, size: 32, align: 32, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !17, file: !16, line: 152, baseType: !49, size: 64, align: 64, offset: 1152)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !11, file: !1, line: 40, type: !14)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelem", arg: 2, scope: !11, file: !1, line: 40, type: !8)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !11, file: !1, line: 40, type: !8)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 4, scope: !11, file: !1, line: 40, type: !34)
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "what", arg: 5, scope: !11, file: !1, line: 40, type: !43)
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 6, scope: !11, file: !1, line: 40, type: !43)
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 7, scope: !11, file: !1, line: 41, type: !8)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !11, file: !1, line: 43, type: !8)
!86 = !DISubprogram(name: "_blockread", scope: !1, file: !1, line: 55, type: !12, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, i32, i8*, i8*, i8*, i32)* @_blockread, variables: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95}
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !86, file: !1, line: 55, type: !14)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelem", arg: 2, scope: !86, file: !1, line: 55, type: !8)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !86, file: !1, line: 55, type: !8)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 4, scope: !86, file: !1, line: 55, type: !34)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "what", arg: 5, scope: !86, file: !1, line: 55, type: !43)
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 6, scope: !86, file: !1, line: 55, type: !43)
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 7, scope: !86, file: !1, line: 56, type: !8)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !86, file: !1, line: 58, type: !8)
!96 = !{i32 2, !"Dwarf Version", i32 2}
!97 = !{i32 2, !"Debug Info Version", i32 700000003}
!98 = !{i32 1, !"PIC Level", i32 2}
!99 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!100 = !DIExpression()
!101 = !DILocation(line: 114, column: 15, scope: !4)
!102 = !DILocation(line: 116, column: 20, scope: !4)
!103 = !DILocation(line: 116, column: 12, scope: !4)
!104 = !DILocation(line: 116, column: 57, scope: !4)
!105 = !DILocation(line: 116, column: 45, scope: !4)
!106 = !DILocation(line: 116, column: 5, scope: !4)
!107 = !DILocation(line: 40, column: 24, scope: !11)
!108 = !DILocation(line: 40, column: 31, scope: !11)
!109 = !DILocation(line: 40, column: 41, scope: !11)
!110 = !DILocation(line: 40, column: 52, scope: !11)
!111 = !DILocation(line: 40, column: 63, scope: !11)
!112 = !DILocation(line: 40, column: 74, scope: !11)
!113 = !DILocation(line: 41, column: 22, scope: !11)
!114 = !DILocation(line: 50, column: 24, scope: !115)
!115 = distinct !DILexicalBlock(scope: !11, file: !1, line: 50, column: 7)
!116 = !DILocation(line: 50, column: 29, scope: !115)
!117 = !DILocation(line: 50, column: 12, scope: !115)
!118 = !DILocation(line: 43, column: 7, scope: !11)
!119 = !DILocation(line: 50, column: 39, scope: !115)
!120 = !DILocation(line: 50, column: 7, scope: !11)
!121 = !DILocation(line: 51, column: 17, scope: !115)
!122 = !{!123, !123, i64 0}
!123 = !{!"int", !124, i64 0}
!124 = !{!"omnipotent char", !125, i64 0}
!125 = !{!"Simple C/C++ TBAA"}
!126 = !DILocation(line: 52, column: 47, scope: !115)
!127 = !DILocation(line: 51, column: 5, scope: !115)
!128 = !DILocation(line: 53, column: 1, scope: !11)
!129 = !DILocation(line: 55, column: 23, scope: !86)
!130 = !DILocation(line: 55, column: 30, scope: !86)
!131 = !DILocation(line: 55, column: 40, scope: !86)
!132 = !DILocation(line: 55, column: 51, scope: !86)
!133 = !DILocation(line: 55, column: 62, scope: !86)
!134 = !DILocation(line: 55, column: 73, scope: !86)
!135 = !DILocation(line: 56, column: 21, scope: !86)
!136 = !DILocation(line: 65, column: 23, scope: !137)
!137 = distinct !DILexicalBlock(scope: !86, file: !1, line: 65, column: 7)
!138 = !DILocation(line: 65, column: 28, scope: !137)
!139 = !DILocation(line: 65, column: 12, scope: !137)
!140 = !DILocation(line: 58, column: 7, scope: !86)
!141 = !DILocation(line: 65, column: 38, scope: !137)
!142 = !DILocation(line: 65, column: 7, scope: !86)
!143 = !DILocation(line: 66, column: 17, scope: !137)
!144 = !DILocation(line: 67, column: 47, scope: !137)
!145 = !DILocation(line: 66, column: 5, scope: !137)
!146 = !DILocation(line: 68, column: 1, scope: !86)
