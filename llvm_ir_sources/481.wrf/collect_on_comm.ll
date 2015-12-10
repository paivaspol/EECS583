; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/481.wrf/src/collect_on_comm.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @collect_on_comm_(i32* nocapture readnone %comm, i32* nocapture readnone %typesize, i8* nocapture readnone %inbuf, i32* nocapture readnone %ninbuf, i8* nocapture readnone %outbuf, i32* nocapture readnone %noutbuf) #0 {
  tail call void @llvm.dbg.value(metadata i32* %comm, i64 0, metadata !11, metadata !65), !dbg !66
  tail call void @llvm.dbg.value(metadata i32* %typesize, i64 0, metadata !12, metadata !65), !dbg !67
  tail call void @llvm.dbg.value(metadata i8* %inbuf, i64 0, metadata !13, metadata !65), !dbg !68
  tail call void @llvm.dbg.value(metadata i32* %ninbuf, i64 0, metadata !14, metadata !65), !dbg !69
  tail call void @llvm.dbg.value(metadata i8* %outbuf, i64 0, metadata !15, metadata !65), !dbg !70
  tail call void @llvm.dbg.value(metadata i32* %noutbuf, i64 0, metadata !16, metadata !65), !dbg !71
  ret i32 undef, !dbg !72
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @collect_on_comm0_(i32* nocapture readnone %comm, i32* nocapture readnone %typesize, i8* nocapture readnone %inbuf, i32* nocapture readnone %ninbuf, i8* nocapture readnone %outbuf, i32* nocapture readnone %noutbuf) #0 {
  tail call void @llvm.dbg.value(metadata i32* %comm, i64 0, metadata !19, metadata !65), !dbg !73
  tail call void @llvm.dbg.value(metadata i32* %typesize, i64 0, metadata !20, metadata !65), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* %inbuf, i64 0, metadata !21, metadata !65), !dbg !75
  tail call void @llvm.dbg.value(metadata i32* %ninbuf, i64 0, metadata !22, metadata !65), !dbg !76
  tail call void @llvm.dbg.value(metadata i8* %outbuf, i64 0, metadata !23, metadata !65), !dbg !77
  tail call void @llvm.dbg.value(metadata i32* %noutbuf, i64 0, metadata !24, metadata !65), !dbg !78
  ret i32 undef, !dbg !79
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @col_on_comm(i32* nocapture readnone %comm, i32* nocapture readnone %typesize, i8* nocapture readnone %inbuf, i32* nocapture readnone %ninbuf, i8* nocapture readnone %outbuf, i32* nocapture readnone %noutbuf, i32 %sw) #0 {
  tail call void @llvm.dbg.value(metadata i32* %comm, i64 0, metadata !29, metadata !65), !dbg !80
  tail call void @llvm.dbg.value(metadata i32* %typesize, i64 0, metadata !30, metadata !65), !dbg !81
  tail call void @llvm.dbg.value(metadata i8* %inbuf, i64 0, metadata !31, metadata !65), !dbg !82
  tail call void @llvm.dbg.value(metadata i32* %ninbuf, i64 0, metadata !32, metadata !65), !dbg !83
  tail call void @llvm.dbg.value(metadata i8* %outbuf, i64 0, metadata !33, metadata !65), !dbg !84
  tail call void @llvm.dbg.value(metadata i32* %noutbuf, i64 0, metadata !34, metadata !65), !dbg !85
  tail call void @llvm.dbg.value(metadata i32 %sw, i64 0, metadata !35, metadata !65), !dbg !86
  ret i32 0, !dbg !87
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @dist_on_comm_(i32* nocapture readnone %comm, i32* nocapture readnone %typesize, i8* nocapture readnone %inbuf, i32* nocapture readnone %ninbuf, i8* nocapture readnone %outbuf, i32* nocapture readnone %noutbuf) #0 {
  tail call void @llvm.dbg.value(metadata i32* %comm, i64 0, metadata !38, metadata !65), !dbg !88
  tail call void @llvm.dbg.value(metadata i32* %typesize, i64 0, metadata !39, metadata !65), !dbg !89
  tail call void @llvm.dbg.value(metadata i8* %inbuf, i64 0, metadata !40, metadata !65), !dbg !90
  tail call void @llvm.dbg.value(metadata i32* %ninbuf, i64 0, metadata !41, metadata !65), !dbg !91
  tail call void @llvm.dbg.value(metadata i8* %outbuf, i64 0, metadata !42, metadata !65), !dbg !92
  tail call void @llvm.dbg.value(metadata i32* %noutbuf, i64 0, metadata !43, metadata !65), !dbg !93
  ret i32 undef, !dbg !94
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @dist_on_comm0_(i32* nocapture readnone %comm, i32* nocapture readnone %typesize, i8* nocapture readnone %inbuf, i32* nocapture readnone %ninbuf, i8* nocapture readnone %outbuf, i32* nocapture readnone %noutbuf) #0 {
  tail call void @llvm.dbg.value(metadata i32* %comm, i64 0, metadata !46, metadata !65), !dbg !95
  tail call void @llvm.dbg.value(metadata i32* %typesize, i64 0, metadata !47, metadata !65), !dbg !96
  tail call void @llvm.dbg.value(metadata i8* %inbuf, i64 0, metadata !48, metadata !65), !dbg !97
  tail call void @llvm.dbg.value(metadata i32* %ninbuf, i64 0, metadata !49, metadata !65), !dbg !98
  tail call void @llvm.dbg.value(metadata i8* %outbuf, i64 0, metadata !50, metadata !65), !dbg !99
  tail call void @llvm.dbg.value(metadata i32* %noutbuf, i64 0, metadata !51, metadata !65), !dbg !100
  ret i32 undef, !dbg !101
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @dst_on_comm(i32* nocapture readnone %comm, i32* nocapture readnone %typesize, i8* nocapture readnone %inbuf, i32* nocapture readnone %ninbuf, i8* nocapture readnone %outbuf, i32* nocapture readnone %noutbuf, i32 %sw) #0 {
  tail call void @llvm.dbg.value(metadata i32* %comm, i64 0, metadata !54, metadata !65), !dbg !102
  tail call void @llvm.dbg.value(metadata i32* %typesize, i64 0, metadata !55, metadata !65), !dbg !103
  tail call void @llvm.dbg.value(metadata i8* %inbuf, i64 0, metadata !56, metadata !65), !dbg !104
  tail call void @llvm.dbg.value(metadata i32* %ninbuf, i64 0, metadata !57, metadata !65), !dbg !105
  tail call void @llvm.dbg.value(metadata i8* %outbuf, i64 0, metadata !58, metadata !65), !dbg !106
  tail call void @llvm.dbg.value(metadata i32* %noutbuf, i64 0, metadata !59, metadata !65), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %sw, i64 0, metadata !60, metadata !65), !dbg !108
  ret i32 0, !dbg !109
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!61, !62, !63}
!llvm.ident = !{!64}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/481.wrf/src/collect_on_comm.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !17, !25, !36, !44, !52}
!4 = !DISubprogram(name: "collect_on_comm_", scope: !1, file: !1, line: 37, type: !5, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i32*, i8*, i32*, i8*, i32*)* @collect_on_comm_, variables: !10)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !8, !8, !9, !8, !9, !8}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "comm", arg: 1, scope: !4, file: !1, line: 37, type: !8)
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "typesize", arg: 2, scope: !4, file: !1, line: 37, type: !8)
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inbuf", arg: 3, scope: !4, file: !1, line: 38, type: !9)
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninbuf", arg: 4, scope: !4, file: !1, line: 38, type: !8)
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outbuf", arg: 5, scope: !4, file: !1, line: 38, type: !9)
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noutbuf", arg: 6, scope: !4, file: !1, line: 38, type: !8)
!17 = !DISubprogram(name: "collect_on_comm0_", scope: !1, file: !1, line: 45, type: !5, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i32*, i8*, i32*, i8*, i32*)* @collect_on_comm0_, variables: !18)
!18 = !{!19, !20, !21, !22, !23, !24}
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "comm", arg: 1, scope: !17, file: !1, line: 45, type: !8)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "typesize", arg: 2, scope: !17, file: !1, line: 45, type: !8)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inbuf", arg: 3, scope: !17, file: !1, line: 46, type: !9)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninbuf", arg: 4, scope: !17, file: !1, line: 46, type: !8)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outbuf", arg: 5, scope: !17, file: !1, line: 46, type: !9)
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noutbuf", arg: 6, scope: !17, file: !1, line: 46, type: !8)
!25 = !DISubprogram(name: "col_on_comm", scope: !1, file: !1, line: 52, type: !26, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i32*, i8*, i32*, i8*, i32*, i32)* @col_on_comm, variables: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!7, !8, !8, !9, !8, !9, !8, !7}
!28 = !{!29, !30, !31, !32, !33, !34, !35}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "comm", arg: 1, scope: !25, file: !1, line: 52, type: !8)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "typesize", arg: 2, scope: !25, file: !1, line: 52, type: !8)
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inbuf", arg: 3, scope: !25, file: !1, line: 53, type: !9)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninbuf", arg: 4, scope: !25, file: !1, line: 53, type: !8)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outbuf", arg: 5, scope: !25, file: !1, line: 53, type: !9)
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noutbuf", arg: 6, scope: !25, file: !1, line: 53, type: !8)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sw", arg: 7, scope: !25, file: !1, line: 53, type: !7)
!36 = !DISubprogram(name: "dist_on_comm_", scope: !1, file: !1, line: 105, type: !5, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i32*, i8*, i32*, i8*, i32*)* @dist_on_comm_, variables: !37)
!37 = !{!38, !39, !40, !41, !42, !43}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "comm", arg: 1, scope: !36, file: !1, line: 105, type: !8)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "typesize", arg: 2, scope: !36, file: !1, line: 105, type: !8)
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inbuf", arg: 3, scope: !36, file: !1, line: 106, type: !9)
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninbuf", arg: 4, scope: !36, file: !1, line: 106, type: !8)
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outbuf", arg: 5, scope: !36, file: !1, line: 106, type: !9)
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noutbuf", arg: 6, scope: !36, file: !1, line: 106, type: !8)
!44 = !DISubprogram(name: "dist_on_comm0_", scope: !1, file: !1, line: 112, type: !5, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i32*, i8*, i32*, i8*, i32*)* @dist_on_comm0_, variables: !45)
!45 = !{!46, !47, !48, !49, !50, !51}
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "comm", arg: 1, scope: !44, file: !1, line: 112, type: !8)
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "typesize", arg: 2, scope: !44, file: !1, line: 112, type: !8)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inbuf", arg: 3, scope: !44, file: !1, line: 113, type: !9)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninbuf", arg: 4, scope: !44, file: !1, line: 113, type: !8)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outbuf", arg: 5, scope: !44, file: !1, line: 113, type: !9)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noutbuf", arg: 6, scope: !44, file: !1, line: 113, type: !8)
!52 = !DISubprogram(name: "dst_on_comm", scope: !1, file: !1, line: 119, type: !26, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i32*, i8*, i32*, i8*, i32*, i32)* @dst_on_comm, variables: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !60}
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "comm", arg: 1, scope: !52, file: !1, line: 119, type: !8)
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "typesize", arg: 2, scope: !52, file: !1, line: 119, type: !8)
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inbuf", arg: 3, scope: !52, file: !1, line: 120, type: !9)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninbuf", arg: 4, scope: !52, file: !1, line: 120, type: !8)
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outbuf", arg: 5, scope: !52, file: !1, line: 120, type: !9)
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "noutbuf", arg: 6, scope: !52, file: !1, line: 120, type: !8)
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sw", arg: 7, scope: !52, file: !1, line: 120, type: !7)
!61 = !{i32 2, !"Dwarf Version", i32 2}
!62 = !{i32 2, !"Debug Info Version", i32 700000003}
!63 = !{i32 1, !"PIC Level", i32 2}
!64 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!65 = !DIExpression()
!66 = !DILocation(line: 37, column: 25, scope: !4)
!67 = !DILocation(line: 37, column: 37, scope: !4)
!68 = !DILocation(line: 38, column: 25, scope: !4)
!69 = !DILocation(line: 38, column: 37, scope: !4)
!70 = !DILocation(line: 38, column: 53, scope: !4)
!71 = !DILocation(line: 38, column: 67, scope: !4)
!72 = !DILocation(line: 42, column: 1, scope: !4)
!73 = !DILocation(line: 45, column: 26, scope: !17)
!74 = !DILocation(line: 45, column: 38, scope: !17)
!75 = !DILocation(line: 46, column: 25, scope: !17)
!76 = !DILocation(line: 46, column: 37, scope: !17)
!77 = !DILocation(line: 46, column: 53, scope: !17)
!78 = !DILocation(line: 46, column: 67, scope: !17)
!79 = !DILocation(line: 50, column: 1, scope: !17)
!80 = !DILocation(line: 52, column: 21, scope: !25)
!81 = !DILocation(line: 52, column: 33, scope: !25)
!82 = !DILocation(line: 53, column: 22, scope: !25)
!83 = !DILocation(line: 53, column: 34, scope: !25)
!84 = !DILocation(line: 53, column: 50, scope: !25)
!85 = !DILocation(line: 53, column: 64, scope: !25)
!86 = !DILocation(line: 53, column: 77, scope: !25)
!87 = !DILocation(line: 101, column: 3, scope: !25)
!88 = !DILocation(line: 105, column: 22, scope: !36)
!89 = !DILocation(line: 105, column: 34, scope: !36)
!90 = !DILocation(line: 106, column: 25, scope: !36)
!91 = !DILocation(line: 106, column: 37, scope: !36)
!92 = !DILocation(line: 106, column: 53, scope: !36)
!93 = !DILocation(line: 106, column: 67, scope: !36)
!94 = !DILocation(line: 110, column: 1, scope: !36)
!95 = !DILocation(line: 112, column: 23, scope: !44)
!96 = !DILocation(line: 112, column: 35, scope: !44)
!97 = !DILocation(line: 113, column: 25, scope: !44)
!98 = !DILocation(line: 113, column: 37, scope: !44)
!99 = !DILocation(line: 113, column: 53, scope: !44)
!100 = !DILocation(line: 113, column: 67, scope: !44)
!101 = !DILocation(line: 117, column: 1, scope: !44)
!102 = !DILocation(line: 119, column: 21, scope: !52)
!103 = !DILocation(line: 119, column: 33, scope: !52)
!104 = !DILocation(line: 120, column: 22, scope: !52)
!105 = !DILocation(line: 120, column: 34, scope: !52)
!106 = !DILocation(line: 120, column: 50, scope: !52)
!107 = !DILocation(line: 120, column: 64, scope: !52)
!108 = !DILocation(line: 120, column: 77, scope: !52)
!109 = !DILocation(line: 160, column: 3, scope: !52)
