; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._DV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [42 x i8] c"\0A fatal error in DV_owned(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_maxsize(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"\0A fatal error in DV_size(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [42 x i8] c"\0A fatal error in DV_entry(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_entries(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DV_sizeAndEntries(%p,%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [51 x i8] c"\0A fatal error in DV_setEntry(%p,%d,%f)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DV_owned(%struct._DV* %dv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !22, metadata !63), !dbg !64
  %1 = icmp eq %struct._DV* %dv, null, !dbg !65
  br i1 %1, label %2, label %5, !dbg !67

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !68, !tbaa !70
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0), %struct._DV* null) #5, !dbg !74
  tail call void @exit(i32 -1) #6, !dbg !75
  unreachable, !dbg !75

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2, !dbg !76
  %7 = load i32* %6, align 4, !dbg !76, !tbaa !77
  ret i32 %7, !dbg !80
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DV_maxsize(%struct._DV* %dv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !25, metadata !63), !dbg !81
  %1 = icmp eq %struct._DV* %dv, null, !dbg !82
  br i1 %1, label %2, label %5, !dbg !84

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !85, !tbaa !70
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str1, i64 0, i64 0), %struct._DV* null) #5, !dbg !87
  tail call void @exit(i32 -1) #6, !dbg !88
  unreachable, !dbg !88

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !89
  %7 = load i32* %6, align 4, !dbg !89, !tbaa !90
  ret i32 %7, !dbg !91
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DV_size(%struct._DV* %dv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !28, metadata !63), !dbg !92
  %1 = icmp eq %struct._DV* %dv, null, !dbg !93
  br i1 %1, label %2, label %5, !dbg !95

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !96, !tbaa !70
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0), %struct._DV* null) #5, !dbg !98
  tail call void @exit(i32 -1) #6, !dbg !99
  unreachable, !dbg !99

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !100
  %7 = load i32* %6, align 4, !dbg !100, !tbaa !101
  ret i32 %7, !dbg !102
}

; Function Attrs: nounwind optsize ssp uwtable
define double @DV_entry(%struct._DV* %dv, i32 %loc) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !33, metadata !63), !dbg !103
  tail call void @llvm.dbg.value(metadata i32 %loc, i64 0, metadata !34, metadata !63), !dbg !104
  %1 = icmp eq %struct._DV* %dv, null, !dbg !105
  br i1 %1, label %6, label %2, !dbg !107

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !108
  %4 = load double** %3, align 8, !dbg !108, !tbaa !109
  %5 = icmp eq double* %4, null, !dbg !110
  br i1 %5, label %6, label %9, !dbg !111

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !112, !tbaa !70
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([42 x i8]* @.str3, i64 0, i64 0), %struct._DV* %dv) #5, !dbg !114
  tail call void @exit(i32 -1) #6, !dbg !115
  unreachable, !dbg !115

; <label>:9                                       ; preds = %2
  %10 = icmp slt i32 %loc, 0, !dbg !116
  br i1 %10, label %19, label %11, !dbg !118

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !119
  %13 = load i32* %12, align 4, !dbg !119, !tbaa !101
  %14 = icmp sgt i32 %13, %loc, !dbg !120
  br i1 %14, label %15, label %19, !dbg !121

; <label>:15                                      ; preds = %11
  %16 = sext i32 %loc to i64, !dbg !122
  %17 = getelementptr inbounds double* %4, i64 %16, !dbg !122
  %18 = load double* %17, align 8, !dbg !122, !tbaa !124
  br label %19, !dbg !126

; <label>:19                                      ; preds = %9, %11, %15
  %.0 = phi double [ %18, %15 ], [ 0.000000e+00, %11 ], [ 0.000000e+00, %9 ]
  ret double %.0, !dbg !127
}

; Function Attrs: nounwind optsize ssp uwtable
define double* @DV_entries(%struct._DV* %dv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !39, metadata !63), !dbg !128
  %1 = icmp eq %struct._DV* %dv, null, !dbg !129
  br i1 %1, label %2, label %5, !dbg !131

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !132, !tbaa !70
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), %struct._DV* null) #5, !dbg !134
  tail call void @exit(i32 -1) #6, !dbg !135
  unreachable, !dbg !135

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !136
  %7 = load double** %6, align 8, !dbg !136, !tbaa !109
  ret double* %7, !dbg !137
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_sizeAndEntries(%struct._DV* %dv, i32* %psize, double** %pentries) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !46, metadata !63), !dbg !138
  tail call void @llvm.dbg.value(metadata i32* %psize, i64 0, metadata !47, metadata !63), !dbg !139
  tail call void @llvm.dbg.value(metadata double** %pentries, i64 0, metadata !48, metadata !63), !dbg !140
  %1 = icmp eq %struct._DV* %dv, null, !dbg !141
  %2 = icmp eq i32* %psize, null, !dbg !143
  %or.cond = or i1 %1, %2, !dbg !144
  %3 = icmp eq double** %pentries, null, !dbg !145
  %or.cond3 = or i1 %or.cond, %3, !dbg !144
  br i1 %or.cond3, label %4, label %7, !dbg !144

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !146, !tbaa !70
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([57 x i8]* @.str5, i64 0, i64 0), %struct._DV* %dv, i32* %psize, double** %pentries) #5, !dbg !148
  tail call void @exit(i32 -1) #6, !dbg !149
  unreachable, !dbg !149

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !150
  %9 = load i32* %8, align 4, !dbg !150, !tbaa !101
  store i32 %9, i32* %psize, align 4, !dbg !151, !tbaa !152
  %10 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !153
  %11 = bitcast double** %10 to i64*, !dbg !153
  %12 = load i64* %11, align 8, !dbg !153, !tbaa !109
  %13 = bitcast double** %pentries to i64*, !dbg !154
  store i64 %12, i64* %13, align 8, !dbg !154, !tbaa !70
  ret void, !dbg !155
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DV_setEntry(%struct._DV* %dv, i32 %loc, double %value) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DV* %dv, i64 0, metadata !53, metadata !63), !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %loc, i64 0, metadata !54, metadata !63), !dbg !157
  tail call void @llvm.dbg.value(metadata double %value, i64 0, metadata !55, metadata !63), !dbg !158
  %1 = icmp eq %struct._DV* %dv, null, !dbg !159
  %2 = icmp slt i32 %loc, 0, !dbg !161
  %or.cond = or i1 %1, %2, !dbg !162
  br i1 %or.cond, label %3, label %6, !dbg !162

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !163, !tbaa !70
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([51 x i8]* @.str6, i64 0, i64 0), %struct._DV* %dv, i32 %loc, double %value) #5, !dbg !165
  tail call void @exit(i32 -1) #6, !dbg !166
  unreachable, !dbg !166

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !167
  %8 = load i32* %7, align 4, !dbg !167, !tbaa !90
  %9 = icmp sgt i32 %8, %loc, !dbg !168
  br i1 %9, label %14, label %10, !dbg !169

; <label>:10                                      ; preds = %6
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !56, metadata !63), !dbg !170
  %11 = icmp slt i32 %8, 10, !dbg !171
  %. = select i1 %11, i32 10, i32 %8, !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %., i64 0, metadata !56, metadata !63), !dbg !170
  %12 = icmp sgt i32 %., %loc, !dbg !174
  %13 = add nsw i32 %loc, 1, !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !56, metadata !63), !dbg !170
  %.. = select i1 %12, i32 %., i32 %13, !dbg !178
  tail call void @DV_setMaxsize(%struct._DV* %dv, i32 %..) #5, !dbg !179
  br label %14, !dbg !180

; <label>:14                                      ; preds = %6, %10
  %15 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !181
  %16 = load i32* %15, align 4, !dbg !181, !tbaa !101
  %17 = icmp sgt i32 %16, %loc, !dbg !183
  br i1 %17, label %20, label %18, !dbg !184

; <label>:18                                      ; preds = %14
  %19 = add nsw i32 %loc, 1, !dbg !185
  store i32 %19, i32* %15, align 4, !dbg !187, !tbaa !101
  br label %20, !dbg !188

; <label>:20                                      ; preds = %14, %18
  %21 = sext i32 %loc to i64, !dbg !189
  %22 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !190
  %23 = load double** %22, align 8, !dbg !190, !tbaa !109
  %24 = getelementptr inbounds double* %23, i64 %21, !dbg !189
  store double %value, double* %24, align 8, !dbg !191, !tbaa !124
  ret void, !dbg !192
}

; Function Attrs: optsize
declare void @DV_setMaxsize(%struct._DV*, i32) #3

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
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !23, !26, !29, !35, !40, !49}
!7 = !DISubprogram(name: "DV_owned", scope: !1, file: !1, line: 15, type: !8, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DV*)* @DV_owned, variables: !21)
!8 = !DISubroutineType(types: !9)
!9 = !{!5, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !12, line: 20, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/../DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !12, line: 21, size: 192, align: 64, elements: !14)
!14 = !{!15, !16, !17, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !13, file: !12, line: 22, baseType: !5, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !13, file: !12, line: 23, baseType: !5, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !13, file: !12, line: 24, baseType: !5, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !13, file: !12, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!21 = !{!22}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !7, file: !1, line: 16, type: !10)
!23 = !DISubprogram(name: "DV_maxsize", scope: !1, file: !1, line: 34, type: !8, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DV*)* @DV_maxsize, variables: !24)
!24 = !{!25}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !23, file: !1, line: 35, type: !10)
!26 = !DISubprogram(name: "DV_size", scope: !1, file: !1, line: 53, type: !8, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DV*)* @DV_size, variables: !27)
!27 = !{!28}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !26, file: !1, line: 54, type: !10)
!29 = !DISubprogram(name: "DV_entry", scope: !1, file: !1, line: 73, type: !30, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct._DV*, i32)* @DV_entry, variables: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{!20, !10, !5}
!32 = !{!33, !34}
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !29, file: !1, line: 74, type: !10)
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "loc", arg: 2, scope: !29, file: !1, line: 75, type: !5)
!35 = !DISubprogram(name: "DV_entries", scope: !1, file: !1, line: 98, type: !36, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, function: double* (%struct._DV*)* @DV_entries, variables: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{!19, !10}
!38 = !{!39}
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !35, file: !1, line: 99, type: !10)
!40 = !DISubprogram(name: "DV_sizeAndEntries", scope: !1, file: !1, line: 118, type: !41, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*, i32*, double**)* @DV_sizeAndEntries, variables: !45)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !10, !43, !44}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!45 = !{!46, !47, !48}
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !40, file: !1, line: 119, type: !10)
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "psize", arg: 2, scope: !40, file: !1, line: 120, type: !43)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pentries", arg: 3, scope: !40, file: !1, line: 121, type: !44)
!49 = !DISubprogram(name: "DV_setEntry", scope: !1, file: !1, line: 142, type: !50, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DV*, i32, double)* @DV_setEntry, variables: !52)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !10, !5, !20}
!52 = !{!53, !54, !55, !56}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !49, file: !1, line: 143, type: !10)
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "loc", arg: 2, scope: !49, file: !1, line: 144, type: !5)
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !49, file: !1, line: 145, type: !20)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newmaxsize", scope: !57, file: !1, line: 158, type: !5)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 157, column: 27)
!58 = distinct !DILexicalBlock(scope: !49, file: !1, line: 157, column: 6)
!59 = !{i32 2, !"Dwarf Version", i32 2}
!60 = !{i32 2, !"Debug Info Version", i32 700000003}
!61 = !{i32 1, !"PIC Level", i32 2}
!62 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!63 = !DIExpression()
!64 = !DILocation(line: 16, column: 10, scope: !7)
!65 = !DILocation(line: 18, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !7, file: !1, line: 18, column: 6)
!67 = !DILocation(line: 18, column: 6, scope: !7)
!68 = !DILocation(line: 19, column: 12, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !1, line: 18, column: 19)
!70 = !{!71, !71, i64 0}
!71 = !{!"any pointer", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !DILocation(line: 19, column: 4, scope: !69)
!75 = !DILocation(line: 21, column: 4, scope: !69)
!76 = !DILocation(line: 23, column: 12, scope: !7)
!77 = !{!78, !79, i64 8}
!78 = !{!"_DV", !79, i64 0, !79, i64 4, !79, i64 8, !71, i64 16}
!79 = !{!"int", !72, i64 0}
!80 = !DILocation(line: 23, column: 1, scope: !7)
!81 = !DILocation(line: 35, column: 10, scope: !23)
!82 = !DILocation(line: 37, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !23, file: !1, line: 37, column: 6)
!84 = !DILocation(line: 37, column: 6, scope: !23)
!85 = !DILocation(line: 38, column: 12, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !1, line: 37, column: 19)
!87 = !DILocation(line: 38, column: 4, scope: !86)
!88 = !DILocation(line: 40, column: 4, scope: !86)
!89 = !DILocation(line: 42, column: 12, scope: !23)
!90 = !{!78, !79, i64 4}
!91 = !DILocation(line: 42, column: 1, scope: !23)
!92 = !DILocation(line: 54, column: 10, scope: !26)
!93 = !DILocation(line: 56, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !26, file: !1, line: 56, column: 6)
!95 = !DILocation(line: 56, column: 6, scope: !26)
!96 = !DILocation(line: 57, column: 12, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 56, column: 19)
!98 = !DILocation(line: 57, column: 4, scope: !97)
!99 = !DILocation(line: 59, column: 4, scope: !97)
!100 = !DILocation(line: 61, column: 12, scope: !26)
!101 = !{!78, !79, i64 0}
!102 = !DILocation(line: 61, column: 1, scope: !26)
!103 = !DILocation(line: 74, column: 11, scope: !29)
!104 = !DILocation(line: 75, column: 10, scope: !29)
!105 = !DILocation(line: 77, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !29, file: !1, line: 77, column: 6)
!107 = !DILocation(line: 77, column: 17, scope: !106)
!108 = !DILocation(line: 77, column: 24, scope: !106)
!109 = !{!78, !71, i64 16}
!110 = !DILocation(line: 77, column: 28, scope: !106)
!111 = !DILocation(line: 77, column: 6, scope: !29)
!112 = !DILocation(line: 78, column: 12, scope: !113)
!113 = distinct !DILexicalBlock(scope: !106, file: !1, line: 77, column: 38)
!114 = !DILocation(line: 78, column: 4, scope: !113)
!115 = !DILocation(line: 80, column: 4, scope: !113)
!116 = !DILocation(line: 82, column: 10, scope: !117)
!117 = distinct !DILexicalBlock(scope: !29, file: !1, line: 82, column: 6)
!118 = !DILocation(line: 82, column: 14, scope: !117)
!119 = !DILocation(line: 82, column: 28, scope: !117)
!120 = !DILocation(line: 82, column: 21, scope: !117)
!121 = !DILocation(line: 82, column: 6, scope: !29)
!122 = !DILocation(line: 85, column: 11, scope: !123)
!123 = distinct !DILexicalBlock(scope: !117, file: !1, line: 84, column: 8)
!124 = !{!125, !125, i64 0}
!125 = !{!"double", !72, i64 0}
!126 = !DILocation(line: 85, column: 4, scope: !123)
!127 = !DILocation(line: 87, column: 1, scope: !29)
!128 = !DILocation(line: 99, column: 10, scope: !35)
!129 = !DILocation(line: 101, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !35, file: !1, line: 101, column: 6)
!131 = !DILocation(line: 101, column: 6, scope: !35)
!132 = !DILocation(line: 102, column: 12, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !1, line: 101, column: 19)
!134 = !DILocation(line: 102, column: 4, scope: !133)
!135 = !DILocation(line: 104, column: 4, scope: !133)
!136 = !DILocation(line: 106, column: 12, scope: !35)
!137 = !DILocation(line: 106, column: 1, scope: !35)
!138 = !DILocation(line: 119, column: 14, scope: !40)
!139 = !DILocation(line: 120, column: 14, scope: !40)
!140 = !DILocation(line: 121, column: 15, scope: !40)
!141 = !DILocation(line: 123, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !40, file: !1, line: 123, column: 6)
!143 = !DILocation(line: 123, column: 26, scope: !142)
!144 = !DILocation(line: 123, column: 17, scope: !142)
!145 = !DILocation(line: 123, column: 46, scope: !142)
!146 = !DILocation(line: 124, column: 12, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !1, line: 123, column: 56)
!148 = !DILocation(line: 124, column: 4, scope: !147)
!149 = !DILocation(line: 126, column: 4, scope: !147)
!150 = !DILocation(line: 128, column: 17, scope: !40)
!151 = !DILocation(line: 128, column: 11, scope: !40)
!152 = !{!79, !79, i64 0}
!153 = !DILocation(line: 129, column: 17, scope: !40)
!154 = !DILocation(line: 129, column: 11, scope: !40)
!155 = !DILocation(line: 131, column: 1, scope: !40)
!156 = !DILocation(line: 143, column: 14, scope: !49)
!157 = !DILocation(line: 144, column: 13, scope: !49)
!158 = !DILocation(line: 145, column: 13, scope: !49)
!159 = !DILocation(line: 152, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !49, file: !1, line: 152, column: 6)
!161 = !DILocation(line: 152, column: 24, scope: !160)
!162 = !DILocation(line: 152, column: 17, scope: !160)
!163 = !DILocation(line: 153, column: 12, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 152, column: 30)
!165 = !DILocation(line: 153, column: 4, scope: !164)
!166 = !DILocation(line: 155, column: 4, scope: !164)
!167 = !DILocation(line: 157, column: 17, scope: !58)
!168 = !DILocation(line: 157, column: 10, scope: !58)
!169 = !DILocation(line: 157, column: 6, scope: !49)
!170 = !DILocation(line: 158, column: 8, scope: !57)
!171 = !DILocation(line: 159, column: 20, scope: !172)
!172 = distinct !DILexicalBlock(scope: !57, file: !1, line: 159, column: 9)
!173 = !DILocation(line: 159, column: 9, scope: !57)
!174 = !DILocation(line: 162, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !57, file: !1, line: 162, column: 9)
!176 = !DILocation(line: 163, column: 24, scope: !177)
!177 = distinct !DILexicalBlock(scope: !175, file: !1, line: 162, column: 29)
!178 = !DILocation(line: 162, column: 9, scope: !57)
!179 = !DILocation(line: 165, column: 4, scope: !57)
!180 = !DILocation(line: 166, column: 1, scope: !57)
!181 = !DILocation(line: 167, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !49, file: !1, line: 167, column: 6)
!183 = !DILocation(line: 167, column: 10, scope: !182)
!184 = !DILocation(line: 167, column: 6, scope: !49)
!185 = !DILocation(line: 168, column: 19, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 167, column: 24)
!187 = !DILocation(line: 168, column: 13, scope: !186)
!188 = !DILocation(line: 169, column: 1, scope: !186)
!189 = !DILocation(line: 170, column: 1, scope: !49)
!190 = !DILocation(line: 170, column: 5, scope: !49)
!191 = !DILocation(line: 170, column: 14, scope: !49)
!192 = !DILocation(line: 172, column: 1, scope: !49)
