; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/smalloc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [43 x i8] c"malloc for %s (%d bytes, file %s, line %d)\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"calloc for %s (nelem=%d, elsize=%d, file %s, line %d)\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"realloc for %s (%d bytes, file %s, line %d, %s=0x%8x)\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !17, metadata !74), !dbg !75
  %1 = icmp sgt i32 %__signo, 32, !dbg !76
  br i1 %1, label %5, label %2, !dbg !77

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !78
  %4 = shl i32 1, %3, !dbg !79
  br label %5, !dbg !77

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !77
  ret i32 %6, !dbg !80
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @save_malloc(i8* %name, i8* %file, i32 %line, i32 %size) #1 {
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !24, metadata !74), !dbg !81
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !25, metadata !74), !dbg !82
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !26, metadata !74), !dbg !83
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !27, metadata !74), !dbg !84
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !28, metadata !74), !dbg !85
  %1 = icmp eq i32 %size, 0, !dbg !86
  br i1 %1, label %12, label %2, !dbg !88

; <label>:2                                       ; preds = %0
  %3 = sext i32 %size to i64, !dbg !89
  %4 = tail call i8* @malloc(i64 %3) #6, !dbg !92
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !28, metadata !74), !dbg !85
  %5 = icmp eq i8* %4, null, !dbg !93
  br i1 %5, label %6, label %9, !dbg !94

; <label>:6                                       ; preds = %2
  %7 = tail call i32* @__error() #6, !dbg !95
  %8 = load i32* %7, align 4, !dbg !95, !tbaa !96
  tail call void (i32, i8*, ...)* @fatal_error(i32 %8, i8* getelementptr inbounds ([43 x i8]* @.str, i64 0, i64 0), i8* %name, i32 %size, i8* %file, i32 %line) #6, !dbg !100
  br label %9, !dbg !100

; <label>:9                                       ; preds = %6, %2
  %10 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %4, i1 false), !dbg !101
  %11 = tail call i8* @__memset_chk(i8* %4, i32 0, i64 %3, i64 %10) #6, !dbg !101
  br label %12

; <label>:12                                      ; preds = %0, %9
  %p.0 = phi i8* [ %4, %9 ], [ null, %0 ]
  ret i8* %p.0, !dbg !102
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare i32* @__error() #3

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @save_calloc(i8* %name, i8* %file, i32 %line, i32 %nelem, i32 %elsize) #1 {
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !34, metadata !74), !dbg !103
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !35, metadata !74), !dbg !104
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !36, metadata !74), !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %nelem, i64 0, metadata !37, metadata !74), !dbg !106
  tail call void @llvm.dbg.value(metadata i32 %elsize, i64 0, metadata !38, metadata !74), !dbg !107
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !39, metadata !74), !dbg !108
  %1 = icmp eq i32 %nelem, 0, !dbg !109
  %2 = icmp eq i32 %elsize, 0, !dbg !111
  %or.cond = or i1 %1, %2, !dbg !112
  br i1 %or.cond, label %11, label %3, !dbg !112

; <label>:3                                       ; preds = %0
  %4 = zext i32 %nelem to i64, !dbg !113
  %5 = zext i32 %elsize to i64, !dbg !116
  %6 = tail call i8* @calloc(i64 %4, i64 %5) #6, !dbg !117
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !39, metadata !74), !dbg !108
  %7 = icmp eq i8* %6, null, !dbg !118
  br i1 %7, label %8, label %11, !dbg !119

; <label>:8                                       ; preds = %3
  %9 = tail call i32* @__error() #6, !dbg !120
  %10 = load i32* %9, align 4, !dbg !120, !tbaa !96
  tail call void (i32, i8*, ...)* @fatal_error(i32 %10, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i8* %name, i32 %nelem, i32 %elsize, i8* %file, i32 %line) #6, !dbg !121
  br label %11, !dbg !121

; <label>:11                                      ; preds = %0, %3, %8
  %p.0 = phi i8* [ null, %8 ], [ %6, %3 ], [ null, %0 ]
  ret i8* %p.0, !dbg !122
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define i8* @save_realloc(i8* %name, i8* %file, i32 %line, i8* %ptr, i32 %size) #1 {
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !44, metadata !74), !dbg !123
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !45, metadata !74), !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !46, metadata !74), !dbg !125
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !47, metadata !74), !dbg !126
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !48, metadata !74), !dbg !127
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !49, metadata !74), !dbg !128
  %1 = icmp eq i32 %size, 0, !dbg !129
  br i1 %1, label %14, label %2, !dbg !131

; <label>:2                                       ; preds = %0
  %3 = icmp eq i8* %ptr, null, !dbg !132
  %4 = zext i32 %size to i64, !dbg !135
  br i1 %3, label %5, label %7, !dbg !136

; <label>:5                                       ; preds = %2
  %6 = tail call i8* @malloc(i64 %4) #6, !dbg !137
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !49, metadata !74), !dbg !128
  br label %9, !dbg !138

; <label>:7                                       ; preds = %2
  %8 = tail call i8* @realloc(i8* %ptr, i64 %4) #6, !dbg !139
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !49, metadata !74), !dbg !128
  br label %9

; <label>:9                                       ; preds = %7, %5
  %p.0 = phi i8* [ %6, %5 ], [ %8, %7 ]
  %10 = icmp eq i8* %p.0, null, !dbg !140
  br i1 %10, label %11, label %14, !dbg !142

; <label>:11                                      ; preds = %9
  %12 = tail call i32* @__error() #6, !dbg !143
  %13 = load i32* %12, align 4, !dbg !143, !tbaa !96
  tail call void (i32, i8*, ...)* @fatal_error(i32 %13, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i8* %name, i32 %size, i8* %file, i32 %line, i8* %name, i8* %ptr) #6, !dbg !144
  br label %14, !dbg !144

; <label>:14                                      ; preds = %0, %9, %11
  %p.1 = phi i8* [ null, %11 ], [ %p.0, %9 ], [ null, %0 ]
  ret i8* %p.1, !dbg !145
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @save_free(i8* nocapture readnone %name, i8* nocapture readnone %file, i32 %line, i8* %ptr) #1 {
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !54, metadata !74), !dbg !146
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !55, metadata !74), !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !56, metadata !74), !dbg !148
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !57, metadata !74), !dbg !149
  %1 = icmp eq i8* %ptr, null, !dbg !150
  br i1 %1, label %3, label %2, !dbg !152

; <label>:2                                       ; preds = %0
  tail call void @free(i8* %ptr) #7, !dbg !153
  br label %3, !dbg !153

; <label>:3                                       ; preds = %0, %2
  ret void, !dbg !154
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @maxavail() #5 {
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !63, metadata !74), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 256000000, i64 0, metadata !64, metadata !74), !dbg !156
  ret i32 255999996, !dbg !157
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @memavail() #5 {
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !63, metadata !74), !dbg !158
  tail call void @llvm.dbg.value(metadata i32 256000000, i64 0, metadata !64, metadata !74), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 255999996, i64 0, metadata !69, metadata !74), !dbg !161
  %1 = tail call i32 @memavail() #7, !dbg !162
  %2 = add i32 %1, 255999996, !dbg !167
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !69, metadata !74), !dbg !161
  ret i32 %2, !dbg !168
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!70, !71, !72}
!llvm.ident = !{!73}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !10, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/smalloc.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 30, baseType: !7)
!6 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !8, line: 92, baseType: !9)
!8 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!10 = !{!11, !18, !29, !40, !50, !58, !66}
!11 = !DISubprogram(name: "__sigbits", scope: !12, file: !12, line: 114, type: !13, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !16)
!12 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15}
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !{!17}
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !11, file: !12, line: 114, type: !15)
!18 = !DISubprogram(name: "save_malloc", scope: !1, file: !1, line: 61, type: !19, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i32, i32)* @save_malloc, variables: !23)
!19 = !DISubroutineType(types: !20)
!20 = !{!4, !21, !21, !15, !15}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!23 = !{!24, !25, !26, !27, !28}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !18, file: !1, line: 61, type: !21)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 2, scope: !18, file: !1, line: 61, type: !21)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 3, scope: !18, file: !1, line: 61, type: !15)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 4, scope: !18, file: !1, line: 61, type: !15)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !18, file: !1, line: 63, type: !4)
!29 = !DISubprogram(name: "save_calloc", scope: !1, file: !1, line: 81, type: !30, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i32, i32, i32)* @save_calloc, variables: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{!4, !21, !21, !15, !32, !32}
!32 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!33 = !{!34, !35, !36, !37, !38, !39}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !29, file: !1, line: 81, type: !21)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 2, scope: !29, file: !1, line: 81, type: !21)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 3, scope: !29, file: !1, line: 81, type: !15)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelem", arg: 4, scope: !29, file: !1, line: 82, type: !32)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "elsize", arg: 5, scope: !29, file: !1, line: 82, type: !32)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !29, file: !1, line: 84, type: !4)
!40 = !DISubprogram(name: "save_realloc", scope: !1, file: !1, line: 101, type: !41, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i32, i8*, i32)* @save_realloc, variables: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{!4, !21, !21, !15, !4, !32}
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !40, file: !1, line: 101, type: !21)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 2, scope: !40, file: !1, line: 101, type: !21)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 3, scope: !40, file: !1, line: 101, type: !15)
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 4, scope: !40, file: !1, line: 101, type: !4)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 5, scope: !40, file: !1, line: 101, type: !32)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !40, file: !1, line: 103, type: !4)
!50 = !DISubprogram(name: "save_free", scope: !1, file: !1, line: 125, type: !51, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32, i8*)* @save_free, variables: !53)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !21, !21, !15, !4}
!53 = !{!54, !55, !56, !57}
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !50, file: !1, line: 125, type: !21)
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 2, scope: !50, file: !1, line: 125, type: !21)
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 3, scope: !50, file: !1, line: 125, type: !15)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 4, scope: !50, file: !1, line: 125, type: !4)
!58 = !DISubprogram(name: "maxavail", scope: !1, file: !1, line: 134, type: !59, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @maxavail, variables: !61)
!59 = !DISubroutineType(types: !60)
!60 = !{!32}
!61 = !{!62, !63, !64, !65}
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !58, file: !1, line: 136, type: !21)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "low", scope: !58, file: !1, line: 137, type: !32)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "high", scope: !58, file: !1, line: 137, type: !32)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !58, file: !1, line: 137, type: !32)
!66 = !DISubprogram(name: "memavail", scope: !1, file: !1, line: 153, type: !59, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @memavail, variables: !67)
!67 = !{!68, !69}
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !66, file: !1, line: 155, type: !21)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !66, file: !1, line: 156, type: !32)
!70 = !{i32 2, !"Dwarf Version", i32 2}
!71 = !{i32 2, !"Debug Info Version", i32 700000003}
!72 = !{i32 1, !"PIC Level", i32 2}
!73 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!74 = !DIExpression()
!75 = !DILocation(line: 114, column: 15, scope: !11)
!76 = !DILocation(line: 116, column: 20, scope: !11)
!77 = !DILocation(line: 116, column: 12, scope: !11)
!78 = !DILocation(line: 116, column: 57, scope: !11)
!79 = !DILocation(line: 116, column: 45, scope: !11)
!80 = !DILocation(line: 116, column: 5, scope: !11)
!81 = !DILocation(line: 61, column: 25, scope: !18)
!82 = !DILocation(line: 61, column: 36, scope: !18)
!83 = !DILocation(line: 61, column: 45, scope: !18)
!84 = !DILocation(line: 61, column: 54, scope: !18)
!85 = !DILocation(line: 63, column: 9, scope: !18)
!86 = !DILocation(line: 66, column: 11, scope: !87)
!87 = distinct !DILexicalBlock(scope: !18, file: !1, line: 66, column: 7)
!88 = !DILocation(line: 66, column: 7, scope: !18)
!89 = !DILocation(line: 70, column: 21, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 70, column: 11)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 69, column: 5)
!92 = !DILocation(line: 70, column: 14, scope: !90)
!93 = !DILocation(line: 70, column: 27, scope: !90)
!94 = !DILocation(line: 70, column: 11, scope: !91)
!95 = !DILocation(line: 71, column: 21, scope: !90)
!96 = !{!97, !97, i64 0}
!97 = !{!"int", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !DILocation(line: 71, column: 9, scope: !90)
!101 = !DILocation(line: 73, column: 14, scope: !91)
!102 = !DILocation(line: 78, column: 3, scope: !18)
!103 = !DILocation(line: 81, column: 25, scope: !29)
!104 = !DILocation(line: 81, column: 36, scope: !29)
!105 = !DILocation(line: 81, column: 45, scope: !29)
!106 = !DILocation(line: 82, column: 28, scope: !29)
!107 = !DILocation(line: 82, column: 43, scope: !29)
!108 = !DILocation(line: 84, column: 9, scope: !29)
!109 = !DILocation(line: 87, column: 13, scope: !110)
!110 = distinct !DILexicalBlock(scope: !29, file: !1, line: 87, column: 7)
!111 = !DILocation(line: 87, column: 26, scope: !110)
!112 = !DILocation(line: 87, column: 17, scope: !110)
!113 = !DILocation(line: 91, column: 21, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 91, column: 11)
!115 = distinct !DILexicalBlock(scope: !110, file: !1, line: 90, column: 5)
!116 = !DILocation(line: 91, column: 35, scope: !114)
!117 = !DILocation(line: 91, column: 14, scope: !114)
!118 = !DILocation(line: 91, column: 51, scope: !114)
!119 = !DILocation(line: 91, column: 11, scope: !115)
!120 = !DILocation(line: 92, column: 21, scope: !114)
!121 = !DILocation(line: 92, column: 9, scope: !114)
!122 = !DILocation(line: 98, column: 3, scope: !29)
!123 = !DILocation(line: 101, column: 26, scope: !40)
!124 = !DILocation(line: 101, column: 37, scope: !40)
!125 = !DILocation(line: 101, column: 46, scope: !40)
!126 = !DILocation(line: 101, column: 57, scope: !40)
!127 = !DILocation(line: 101, column: 70, scope: !40)
!128 = !DILocation(line: 103, column: 9, scope: !40)
!129 = !DILocation(line: 106, column: 11, scope: !130)
!130 = distinct !DILexicalBlock(scope: !40, file: !1, line: 106, column: 7)
!131 = !DILocation(line: 106, column: 7, scope: !40)
!132 = !DILocation(line: 110, column: 14, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 110, column: 11)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 109, column: 5)
!135 = !DILocation(line: 111, column: 11, scope: !133)
!136 = !DILocation(line: 110, column: 11, scope: !134)
!137 = !DILocation(line: 111, column: 4, scope: !133)
!138 = !DILocation(line: 111, column: 2, scope: !133)
!139 = !DILocation(line: 113, column: 4, scope: !133)
!140 = !DILocation(line: 114, column: 12, scope: !141)
!141 = distinct !DILexicalBlock(scope: !134, file: !1, line: 114, column: 11)
!142 = !DILocation(line: 114, column: 11, scope: !134)
!143 = !DILocation(line: 115, column: 21, scope: !141)
!144 = !DILocation(line: 115, column: 9, scope: !141)
!145 = !DILocation(line: 122, column: 3, scope: !40)
!146 = !DILocation(line: 125, column: 22, scope: !50)
!147 = !DILocation(line: 125, column: 33, scope: !50)
!148 = !DILocation(line: 125, column: 42, scope: !50)
!149 = !DILocation(line: 125, column: 53, scope: !50)
!150 = !DILocation(line: 130, column: 11, scope: !151)
!151 = distinct !DILexicalBlock(scope: !50, file: !1, line: 130, column: 7)
!152 = !DILocation(line: 130, column: 7, scope: !50)
!153 = !DILocation(line: 131, column: 5, scope: !151)
!154 = !DILocation(line: 132, column: 1, scope: !50)
!155 = !DILocation(line: 137, column: 12, scope: !58)
!156 = !DILocation(line: 137, column: 16, scope: !58)
!157 = !DILocation(line: 150, column: 3, scope: !58)
!158 = !DILocation(line: 137, column: 12, scope: !58, inlinedAt: !159)
!159 = distinct !DILocation(line: 158, column: 10, scope: !66)
!160 = !DILocation(line: 137, column: 16, scope: !58, inlinedAt: !159)
!161 = !DILocation(line: 156, column: 12, scope: !66)
!162 = !DILocation(line: 161, column: 15, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !1, line: 160, column: 45)
!164 = distinct !DILexicalBlock(scope: !165, file: !1, line: 160, column: 9)
!165 = distinct !DILexicalBlock(scope: !166, file: !1, line: 159, column: 18)
!166 = distinct !DILexicalBlock(scope: !66, file: !1, line: 159, column: 7)
!167 = !DILocation(line: 161, column: 12, scope: !163)
!168 = !DILocation(line: 165, column: 3, scope: !66)
