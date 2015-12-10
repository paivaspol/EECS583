; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [42 x i8] c"\0A fatal error in IV_owned(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [41 x i8] c"\0A fatal error in IV_size(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [44 x i8] c"\0A fatal error in IV_maxsize(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"\0A fatal error in IV_entries(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [57 x i8] c"\0A fatal error in IV_sizeAndEntries(%p,%p,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [51 x i8] c"\0A fatal error in IV_setEntry(%p,%d,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IV_owned(%struct._IV* %iv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !21, metadata !61), !dbg !62
  %1 = icmp eq %struct._IV* %iv, null, !dbg !63
  br i1 %1, label %2, label %5, !dbg !65

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !66, !tbaa !68
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0), %struct._IV* null) #5, !dbg !72
  tail call void @exit(i32 -1) #6, !dbg !73
  unreachable, !dbg !73

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !74
  %7 = load i32* %6, align 4, !dbg !74, !tbaa !75
  ret i32 %7, !dbg !78
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IV_size(%struct._IV* %iv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !24, metadata !61), !dbg !79
  %1 = icmp eq %struct._IV* %iv, null, !dbg !80
  br i1 %1, label %2, label %5, !dbg !82

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !83, !tbaa !68
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), %struct._IV* null) #5, !dbg !85
  tail call void @exit(i32 -1) #6, !dbg !86
  unreachable, !dbg !86

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !87
  %7 = load i32* %6, align 4, !dbg !87, !tbaa !88
  ret i32 %7, !dbg !89
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IV_maxsize(%struct._IV* %iv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !27, metadata !61), !dbg !90
  %1 = icmp eq %struct._IV* %iv, null, !dbg !91
  br i1 %1, label %2, label %5, !dbg !93

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !94, !tbaa !68
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str2, i64 0, i64 0), %struct._IV* null) #5, !dbg !96
  tail call void @exit(i32 -1) #6, !dbg !97
  unreachable, !dbg !97

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !98
  %7 = load i32* %6, align 4, !dbg !98, !tbaa !99
  ret i32 %7, !dbg !100
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IV_entry(%struct._IV* %iv, i32 %loc) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !32, metadata !61), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 %loc, i64 0, metadata !33, metadata !61), !dbg !102
  %1 = icmp eq %struct._IV* %iv, null, !dbg !103
  br i1 %1, label %2, label %5, !dbg !105

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !106, !tbaa !68
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), %struct._IV* null) #5, !dbg !108
  tail call void @exit(i32 -1) #6, !dbg !109
  unreachable, !dbg !109

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %loc, 0, !dbg !110
  br i1 %6, label %17, label %7, !dbg !112

; <label>:7                                       ; preds = %5
  %8 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !113
  %9 = load i32* %8, align 4, !dbg !113, !tbaa !88
  %10 = icmp sgt i32 %9, %loc, !dbg !114
  br i1 %10, label %11, label %17, !dbg !115

; <label>:11                                      ; preds = %7
  %12 = sext i32 %loc to i64, !dbg !116
  %13 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !118
  %14 = load i32** %13, align 8, !dbg !118, !tbaa !119
  %15 = getelementptr inbounds i32* %14, i64 %12, !dbg !116
  %16 = load i32* %15, align 4, !dbg !116, !tbaa !120
  br label %17, !dbg !121

; <label>:17                                      ; preds = %5, %7, %11
  %.0 = phi i32 [ %16, %11 ], [ -1, %7 ], [ -1, %5 ]
  ret i32 %.0, !dbg !122
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @IV_entries(%struct._IV* %iv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !38, metadata !61), !dbg !123
  %1 = icmp eq %struct._IV* %iv, null, !dbg !124
  br i1 %1, label %2, label %5, !dbg !126

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !127, !tbaa !68
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), %struct._IV* null) #5, !dbg !129
  tail call void @exit(i32 -1) #6, !dbg !130
  unreachable, !dbg !130

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !131
  %7 = load i32** %6, align 8, !dbg !131, !tbaa !119
  ret i32* %7, !dbg !132
}

; Function Attrs: nounwind optsize ssp uwtable
define void @IV_sizeAndEntries(%struct._IV* %iv, i32* %psize, i32** %pentries) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !44, metadata !61), !dbg !133
  tail call void @llvm.dbg.value(metadata i32* %psize, i64 0, metadata !45, metadata !61), !dbg !134
  tail call void @llvm.dbg.value(metadata i32** %pentries, i64 0, metadata !46, metadata !61), !dbg !135
  %1 = icmp eq %struct._IV* %iv, null, !dbg !136
  %2 = icmp eq i32* %psize, null, !dbg !138
  %or.cond = or i1 %1, %2, !dbg !139
  %3 = icmp eq i32** %pentries, null, !dbg !140
  %or.cond3 = or i1 %or.cond, %3, !dbg !139
  br i1 %or.cond3, label %4, label %7, !dbg !139

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !141, !tbaa !68
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([57 x i8]* @.str4, i64 0, i64 0), %struct._IV* %iv, i32* %psize, i32** %pentries) #5, !dbg !143
  tail call void @exit(i32 -1) #6, !dbg !144
  unreachable, !dbg !144

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !145
  %9 = load i32* %8, align 4, !dbg !145, !tbaa !88
  store i32 %9, i32* %psize, align 4, !dbg !146, !tbaa !120
  %10 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !147
  %11 = bitcast i32** %10 to i64*, !dbg !147
  %12 = load i64* %11, align 8, !dbg !147, !tbaa !119
  %13 = bitcast i32** %pentries to i64*, !dbg !148
  store i64 %12, i64* %13, align 8, !dbg !148, !tbaa !68
  ret void, !dbg !149
}

; Function Attrs: nounwind optsize ssp uwtable
define void @IV_setEntry(%struct._IV* %iv, i32 %loc, i32 %value) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IV* %iv, i64 0, metadata !51, metadata !61), !dbg !150
  tail call void @llvm.dbg.value(metadata i32 %loc, i64 0, metadata !52, metadata !61), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %value, i64 0, metadata !53, metadata !61), !dbg !152
  %1 = icmp eq %struct._IV* %iv, null, !dbg !153
  %2 = icmp slt i32 %loc, 0, !dbg !155
  %or.cond = or i1 %1, %2, !dbg !156
  br i1 %or.cond, label %3, label %6, !dbg !156

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !157, !tbaa !68
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([51 x i8]* @.str5, i64 0, i64 0), %struct._IV* %iv, i32 %loc, i32 %value) #5, !dbg !159
  tail call void @exit(i32 -1) #6, !dbg !160
  unreachable, !dbg !160

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !161
  %8 = load i32* %7, align 4, !dbg !161, !tbaa !99
  %9 = icmp sgt i32 %8, %loc, !dbg !162
  br i1 %9, label %14, label %10, !dbg !163

; <label>:10                                      ; preds = %6
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !54, metadata !61), !dbg !164
  %11 = icmp slt i32 %8, 10, !dbg !165
  %. = select i1 %11, i32 10, i32 %8, !dbg !167
  tail call void @llvm.dbg.value(metadata i32 %., i64 0, metadata !54, metadata !61), !dbg !164
  %12 = icmp sgt i32 %., %loc, !dbg !168
  %13 = add nsw i32 %loc, 1, !dbg !170
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !54, metadata !61), !dbg !164
  %.. = select i1 %12, i32 %., i32 %13, !dbg !172
  tail call void @IV_setMaxsize(%struct._IV* %iv, i32 %..) #5, !dbg !173
  br label %14, !dbg !174

; <label>:14                                      ; preds = %6, %10
  %15 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !175
  %16 = load i32* %15, align 4, !dbg !175, !tbaa !88
  %17 = icmp sgt i32 %16, %loc, !dbg !177
  br i1 %17, label %20, label %18, !dbg !178

; <label>:18                                      ; preds = %14
  %19 = add nsw i32 %loc, 1, !dbg !179
  store i32 %19, i32* %15, align 4, !dbg !181, !tbaa !88
  br label %20, !dbg !182

; <label>:20                                      ; preds = %14, %18
  %21 = sext i32 %loc to i64, !dbg !183
  %22 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !184
  %23 = load i32** %22, align 8, !dbg !184, !tbaa !119
  %24 = getelementptr inbounds i32* %23, i64 %21, !dbg !183
  store i32 %value, i32* %24, align 4, !dbg !185, !tbaa !120
  ret void, !dbg !186
}

; Function Attrs: optsize
declare void @IV_setMaxsize(%struct._IV*, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !22, !25, !28, !34, !39, !47}
!7 = !DISubprogram(name: "IV_owned", scope: !1, file: !1, line: 17, type: !8, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._IV*)* @IV_owned, variables: !20)
!8 = !DISubroutineType(types: !9)
!9 = !{!5, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !12, line: 20, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/../IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !12, line: 21, size: 192, align: 64, elements: !14)
!14 = !{!15, !16, !17, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !13, file: !12, line: 22, baseType: !5, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !13, file: !12, line: 23, baseType: !5, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !13, file: !12, line: 24, baseType: !5, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !13, file: !12, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!20 = !{!21}
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !7, file: !1, line: 18, type: !10)
!22 = !DISubprogram(name: "IV_size", scope: !1, file: !1, line: 36, type: !8, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._IV*)* @IV_size, variables: !23)
!23 = !{!24}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !22, file: !1, line: 37, type: !10)
!25 = !DISubprogram(name: "IV_maxsize", scope: !1, file: !1, line: 54, type: !8, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._IV*)* @IV_maxsize, variables: !26)
!26 = !{!27}
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !25, file: !1, line: 55, type: !10)
!28 = !DISubprogram(name: "IV_entry", scope: !1, file: !1, line: 74, type: !29, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._IV*, i32)* @IV_entry, variables: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!5, !10, !5}
!31 = !{!32, !33}
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !28, file: !1, line: 75, type: !10)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "loc", arg: 2, scope: !28, file: !1, line: 76, type: !5)
!34 = !DISubprogram(name: "IV_entries", scope: !1, file: !1, line: 99, type: !35, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: i32* (%struct._IV*)* @IV_entries, variables: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{!19, !10}
!37 = !{!38}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !34, file: !1, line: 100, type: !10)
!39 = !DISubprogram(name: "IV_sizeAndEntries", scope: !1, file: !1, line: 119, type: !40, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IV*, i32*, i32**)* @IV_sizeAndEntries, variables: !43)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !10, !19, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!43 = !{!44, !45, !46}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !39, file: !1, line: 120, type: !10)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "psize", arg: 2, scope: !39, file: !1, line: 121, type: !19)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pentries", arg: 3, scope: !39, file: !1, line: 122, type: !42)
!47 = !DISubprogram(name: "IV_setEntry", scope: !1, file: !1, line: 143, type: !48, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IV*, i32, i32)* @IV_setEntry, variables: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !10, !5, !5}
!50 = !{!51, !52, !53, !54}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iv", arg: 1, scope: !47, file: !1, line: 144, type: !10)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "loc", arg: 2, scope: !47, file: !1, line: 145, type: !5)
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !47, file: !1, line: 146, type: !5)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newmaxsize", scope: !55, file: !1, line: 159, type: !5)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 158, column: 27)
!56 = distinct !DILexicalBlock(scope: !47, file: !1, line: 158, column: 6)
!57 = !{i32 2, !"Dwarf Version", i32 2}
!58 = !{i32 2, !"Debug Info Version", i32 700000003}
!59 = !{i32 1, !"PIC Level", i32 2}
!60 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!61 = !DIExpression()
!62 = !DILocation(line: 18, column: 10, scope: !7)
!63 = !DILocation(line: 20, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !7, file: !1, line: 20, column: 6)
!65 = !DILocation(line: 20, column: 6, scope: !7)
!66 = !DILocation(line: 21, column: 12, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 20, column: 19)
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = !DILocation(line: 21, column: 4, scope: !67)
!73 = !DILocation(line: 23, column: 4, scope: !67)
!74 = !DILocation(line: 25, column: 12, scope: !7)
!75 = !{!76, !77, i64 8}
!76 = !{!"_IV", !77, i64 0, !77, i64 4, !77, i64 8, !69, i64 16}
!77 = !{!"int", !70, i64 0}
!78 = !DILocation(line: 25, column: 1, scope: !7)
!79 = !DILocation(line: 37, column: 10, scope: !22)
!80 = !DILocation(line: 39, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !22, file: !1, line: 39, column: 6)
!82 = !DILocation(line: 39, column: 6, scope: !22)
!83 = !DILocation(line: 40, column: 12, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 39, column: 19)
!85 = !DILocation(line: 40, column: 4, scope: !84)
!86 = !DILocation(line: 42, column: 4, scope: !84)
!87 = !DILocation(line: 44, column: 12, scope: !22)
!88 = !{!76, !77, i64 0}
!89 = !DILocation(line: 44, column: 1, scope: !22)
!90 = !DILocation(line: 55, column: 10, scope: !25)
!91 = !DILocation(line: 57, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !25, file: !1, line: 57, column: 6)
!93 = !DILocation(line: 57, column: 6, scope: !25)
!94 = !DILocation(line: 58, column: 12, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 57, column: 19)
!96 = !DILocation(line: 58, column: 4, scope: !95)
!97 = !DILocation(line: 60, column: 4, scope: !95)
!98 = !DILocation(line: 62, column: 12, scope: !25)
!99 = !{!76, !77, i64 4}
!100 = !DILocation(line: 62, column: 1, scope: !25)
!101 = !DILocation(line: 75, column: 11, scope: !28)
!102 = !DILocation(line: 76, column: 10, scope: !28)
!103 = !DILocation(line: 78, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !28, file: !1, line: 78, column: 6)
!105 = !DILocation(line: 78, column: 6, scope: !28)
!106 = !DILocation(line: 79, column: 12, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !1, line: 78, column: 19)
!108 = !DILocation(line: 79, column: 4, scope: !107)
!109 = !DILocation(line: 81, column: 4, scope: !107)
!110 = !DILocation(line: 83, column: 10, scope: !111)
!111 = distinct !DILexicalBlock(scope: !28, file: !1, line: 83, column: 6)
!112 = !DILocation(line: 83, column: 14, scope: !111)
!113 = !DILocation(line: 83, column: 28, scope: !111)
!114 = !DILocation(line: 83, column: 21, scope: !111)
!115 = !DILocation(line: 83, column: 6, scope: !28)
!116 = !DILocation(line: 86, column: 11, scope: !117)
!117 = distinct !DILexicalBlock(scope: !111, file: !1, line: 85, column: 8)
!118 = !DILocation(line: 86, column: 15, scope: !117)
!119 = !{!76, !69, i64 16}
!120 = !{!77, !77, i64 0}
!121 = !DILocation(line: 86, column: 4, scope: !117)
!122 = !DILocation(line: 88, column: 1, scope: !28)
!123 = !DILocation(line: 100, column: 10, scope: !34)
!124 = !DILocation(line: 102, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !34, file: !1, line: 102, column: 6)
!126 = !DILocation(line: 102, column: 6, scope: !34)
!127 = !DILocation(line: 103, column: 12, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 102, column: 19)
!129 = !DILocation(line: 103, column: 4, scope: !128)
!130 = !DILocation(line: 105, column: 4, scope: !128)
!131 = !DILocation(line: 107, column: 12, scope: !34)
!132 = !DILocation(line: 107, column: 1, scope: !34)
!133 = !DILocation(line: 120, column: 11, scope: !39)
!134 = !DILocation(line: 121, column: 11, scope: !39)
!135 = !DILocation(line: 122, column: 12, scope: !39)
!136 = !DILocation(line: 124, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !39, file: !1, line: 124, column: 6)
!138 = !DILocation(line: 124, column: 26, scope: !137)
!139 = !DILocation(line: 124, column: 17, scope: !137)
!140 = !DILocation(line: 124, column: 46, scope: !137)
!141 = !DILocation(line: 125, column: 12, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !1, line: 124, column: 56)
!143 = !DILocation(line: 125, column: 4, scope: !142)
!144 = !DILocation(line: 127, column: 4, scope: !142)
!145 = !DILocation(line: 129, column: 17, scope: !39)
!146 = !DILocation(line: 129, column: 11, scope: !39)
!147 = !DILocation(line: 130, column: 17, scope: !39)
!148 = !DILocation(line: 130, column: 11, scope: !39)
!149 = !DILocation(line: 132, column: 1, scope: !39)
!150 = !DILocation(line: 144, column: 11, scope: !47)
!151 = !DILocation(line: 145, column: 10, scope: !47)
!152 = !DILocation(line: 146, column: 10, scope: !47)
!153 = !DILocation(line: 153, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !47, file: !1, line: 153, column: 6)
!155 = !DILocation(line: 153, column: 24, scope: !154)
!156 = !DILocation(line: 153, column: 17, scope: !154)
!157 = !DILocation(line: 154, column: 12, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !1, line: 153, column: 30)
!159 = !DILocation(line: 154, column: 4, scope: !158)
!160 = !DILocation(line: 156, column: 4, scope: !158)
!161 = !DILocation(line: 158, column: 17, scope: !56)
!162 = !DILocation(line: 158, column: 10, scope: !56)
!163 = !DILocation(line: 158, column: 6, scope: !47)
!164 = !DILocation(line: 159, column: 8, scope: !55)
!165 = !DILocation(line: 160, column: 20, scope: !166)
!166 = distinct !DILexicalBlock(scope: !55, file: !1, line: 160, column: 9)
!167 = !DILocation(line: 160, column: 9, scope: !55)
!168 = !DILocation(line: 163, column: 13, scope: !169)
!169 = distinct !DILexicalBlock(scope: !55, file: !1, line: 163, column: 9)
!170 = !DILocation(line: 164, column: 24, scope: !171)
!171 = distinct !DILexicalBlock(scope: !169, file: !1, line: 163, column: 29)
!172 = !DILocation(line: 163, column: 9, scope: !55)
!173 = !DILocation(line: 166, column: 4, scope: !55)
!174 = !DILocation(line: 167, column: 1, scope: !55)
!175 = !DILocation(line: 168, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !47, file: !1, line: 168, column: 6)
!177 = !DILocation(line: 168, column: 10, scope: !176)
!178 = !DILocation(line: 168, column: 6, scope: !47)
!179 = !DILocation(line: 169, column: 19, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !1, line: 168, column: 24)
!181 = !DILocation(line: 169, column: 13, scope: !180)
!182 = !DILocation(line: 170, column: 1, scope: !180)
!183 = !DILocation(line: 171, column: 1, scope: !47)
!184 = !DILocation(line: 171, column: 5, scope: !47)
!185 = !DILocation(line: 171, column: 14, scope: !47)
!186 = !DILocation(line: 173, column: 1, scope: !47)
