; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/482.sphinx3/src/err.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [21 x i8] c"%s: \22%s\22, line %ld: \00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [14 x i8] c"%s: %s(%ld): \00", align 1
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @_E__pr_header(i8* %f, i64 %ln, i8* %msg) #0 {
  tail call void @llvm.dbg.value(metadata i8* %f, i64 0, metadata !12, metadata !67), !dbg !68
  tail call void @llvm.dbg.value(metadata i64 %ln, i64 0, metadata !13, metadata !67), !dbg !69
  tail call void @llvm.dbg.value(metadata i8* %msg, i64 0, metadata !14, metadata !67), !dbg !70
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !71, !tbaa !72
  %2 = tail call i32 @fflush(%struct.__sFILE* %1) #6, !dbg !76
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !77, !tbaa !72
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0), i8* %msg, i8* %f, i64 %ln) #6, !dbg !78
  ret void, !dbg !79
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @_E__pr_info_header(i8* %f, i64 %ln, i8* %msg) #0 {
  tail call void @llvm.dbg.value(metadata i8* %f, i64 0, metadata !17, metadata !67), !dbg !80
  tail call void @llvm.dbg.value(metadata i64 %ln, i64 0, metadata !18, metadata !67), !dbg !81
  tail call void @llvm.dbg.value(metadata i8* %msg, i64 0, metadata !19, metadata !67), !dbg !82
  %1 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !83, !tbaa !72
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* %msg, i8* %f, i64 %ln) #6, !dbg !84
  ret void, !dbg !85
}

; Function Attrs: nounwind optsize ssp uwtable
define void @_E__pr_warn(i8* %fmt, ...) #0 {
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %fmt, i64 0, metadata !24, metadata !67), !dbg !86
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %pvar, metadata !25, metadata !67), !dbg !87
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0, !dbg !88
  %2 = call i32 (%struct.__va_list_tag*, i8*, ...)* bitcast (i32 (...)* @va_start to i32 (%struct.__va_list_tag*, i8*, ...)*)(%struct.__va_list_tag* %1, i8* %fmt) #6, !dbg !89
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !90, !tbaa !72
  %4 = call i32 @vfprintf(%struct.__sFILE* %3, i8* %fmt, %struct.__va_list_tag* %1) #6, !dbg !91
  %5 = call i32 (%struct.__va_list_tag*, ...)* bitcast (i32 (...)* @va_end to i32 (%struct.__va_list_tag*, ...)*)(%struct.__va_list_tag* %1) #6, !dbg !92
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !93, !tbaa !72
  %7 = call i32 @fflush(%struct.__sFILE* %6) #6, !dbg !94
  ret void, !dbg !95
}

; Function Attrs: optsize
declare i32 @va_start(...) #3

; Function Attrs: nounwind optsize
declare i32 @vfprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, %struct.__va_list_tag*) #2

; Function Attrs: optsize
declare i32 @va_end(...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @_E__pr_info(i8* %fmt, ...) #0 {
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %fmt, i64 0, metadata !45, metadata !67), !dbg !96
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %pvar, metadata !46, metadata !67), !dbg !97
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0, !dbg !98
  %2 = call i32 (%struct.__va_list_tag*, i8*, ...)* bitcast (i32 (...)* @va_start to i32 (%struct.__va_list_tag*, i8*, ...)*)(%struct.__va_list_tag* %1, i8* %fmt) #6, !dbg !99
  %3 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !100, !tbaa !72
  %4 = call i32 @vfprintf(%struct.__sFILE* %3, i8* %fmt, %struct.__va_list_tag* %1) #6, !dbg !101
  %5 = call i32 (%struct.__va_list_tag*, ...)* bitcast (i32 (...)* @va_end to i32 (%struct.__va_list_tag*, ...)*)(%struct.__va_list_tag* %1) #6, !dbg !102
  ret void, !dbg !103
}

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @_E__die_error(i8* %fmt, ...) #4 {
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %fmt, i64 0, metadata !49, metadata !67), !dbg !104
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %pvar, metadata !50, metadata !67), !dbg !105
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0, !dbg !106
  %2 = call i32 (%struct.__va_list_tag*, i8*, ...)* bitcast (i32 (...)* @va_start to i32 (%struct.__va_list_tag*, i8*, ...)*)(%struct.__va_list_tag* %1, i8* %fmt) #6, !dbg !107
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !108, !tbaa !72
  %4 = call i32 @vfprintf(%struct.__sFILE* %3, i8* %fmt, %struct.__va_list_tag* %1) #6, !dbg !109
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !110, !tbaa !72
  %6 = call i32 @fflush(%struct.__sFILE* %5) #6, !dbg !111
  %7 = call i32 (%struct.__va_list_tag*, ...)* bitcast (i32 (...)* @va_end to i32 (%struct.__va_list_tag*, ...)*)(%struct.__va_list_tag* %1) #6, !dbg !112
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !113, !tbaa !72
  %9 = call i32 @fflush(%struct.__sFILE* %8) #6, !dbg !114
  call void @exit(i32 -1) #7, !dbg !115
  unreachable, !dbg !115
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #5

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @_E__fatal_sys_error(i8* %fmt, ...) #4 {
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %fmt, i64 0, metadata !53, metadata !67), !dbg !116
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %pvar, metadata !54, metadata !67), !dbg !117
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0, !dbg !118
  %2 = call i32 (%struct.__va_list_tag*, i8*, ...)* bitcast (i32 (...)* @va_start to i32 (%struct.__va_list_tag*, i8*, ...)*)(%struct.__va_list_tag* %1, i8* %fmt) #6, !dbg !119
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !120, !tbaa !72
  %4 = call i32 @vfprintf(%struct.__sFILE* %3, i8* %fmt, %struct.__va_list_tag* %1) #6, !dbg !121
  %5 = call i32 (%struct.__va_list_tag*, ...)* bitcast (i32 (...)* @va_end to i32 (%struct.__va_list_tag*, ...)*)(%struct.__va_list_tag* %1) #6, !dbg !122
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !123, !tbaa !72
  %7 = call i32 @putc(i32 59, %struct.__sFILE* %6) #6, !dbg !124
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !125, !tbaa !72
  %9 = call i32 @putc(i32 32, %struct.__sFILE* %8) #6, !dbg !126
  call void @perror(i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !127
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !128, !tbaa !72
  %11 = call i32 @fflush(%struct.__sFILE* %10) #6, !dbg !129
  %12 = call i32* @__error() #6, !dbg !130
  %13 = load i32* %12, align 4, !dbg !130, !tbaa !131
  call void @exit(i32 %13) #7, !dbg !133
  unreachable, !dbg !133
}

; Function Attrs: nounwind optsize
declare i32 @putc(i32, %struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize
declare void @perror(i8* nocapture readonly) #2

; Function Attrs: optsize
declare i32* @__error() #3

; Function Attrs: nounwind optsize ssp uwtable
define void @_E__sys_error(i8* %fmt, ...) #0 {
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %fmt, i64 0, metadata !57, metadata !67), !dbg !134
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %pvar, metadata !58, metadata !67), !dbg !135
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0, !dbg !136
  %2 = call i32 (%struct.__va_list_tag*, i8*, ...)* bitcast (i32 (...)* @va_start to i32 (%struct.__va_list_tag*, i8*, ...)*)(%struct.__va_list_tag* %1, i8* %fmt) #6, !dbg !137
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !138, !tbaa !72
  %4 = call i32 @vfprintf(%struct.__sFILE* %3, i8* %fmt, %struct.__va_list_tag* %1) #6, !dbg !139
  %5 = call i32 (%struct.__va_list_tag*, ...)* bitcast (i32 (...)* @va_end to i32 (%struct.__va_list_tag*, ...)*)(%struct.__va_list_tag* %1) #6, !dbg !140
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !141, !tbaa !72
  %7 = call i32 @putc(i32 59, %struct.__sFILE* %6) #6, !dbg !142
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !143, !tbaa !72
  %9 = call i32 @putc(i32 32, %struct.__sFILE* %8) #6, !dbg !144
  call void @perror(i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !145
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !146, !tbaa !72
  %11 = call i32 @fflush(%struct.__sFILE* %10) #6, !dbg !147
  ret void, !dbg !148
}

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @_E__abort_error(i8* %fmt, ...) #4 {
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %fmt, i64 0, metadata !61, metadata !67), !dbg !149
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %pvar, metadata !62, metadata !67), !dbg !150
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0, !dbg !151
  %2 = call i32 (%struct.__va_list_tag*, i8*, ...)* bitcast (i32 (...)* @va_start to i32 (%struct.__va_list_tag*, i8*, ...)*)(%struct.__va_list_tag* %1, i8* %fmt) #6, !dbg !152
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !153, !tbaa !72
  %4 = call i32 @vfprintf(%struct.__sFILE* %3, i8* %fmt, %struct.__va_list_tag* %1) #6, !dbg !154
  %5 = call i32 (%struct.__va_list_tag*, ...)* bitcast (i32 (...)* @va_end to i32 (%struct.__va_list_tag*, ...)*)(%struct.__va_list_tag* %1) #6, !dbg !155
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !156, !tbaa !72
  %7 = call i32 @fflush(%struct.__sFILE* %6) #6, !dbg !157
  call void @abort() #7, !dbg !158
  unreachable, !dbg !158
}

; Function Attrs: noreturn optsize
declare void @abort() #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { cold nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!63, !64, !65}
!llvm.ident = !{!66}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/482.sphinx3/src/err.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !15, !20, !43, !47, !51, !55, !59}
!4 = !DISubprogram(name: "_E__pr_header", scope: !1, file: !1, line: 72, type: !5, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i64, i8*)* @_E__pr_header, variables: !11)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !10, !7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!11 = !{!12, !13, !14}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 1, scope: !4, file: !1, line: 72, type: !7)
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ln", arg: 2, scope: !4, file: !1, line: 72, type: !10)
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 3, scope: !4, file: !1, line: 72, type: !7)
!15 = !DISubprogram(name: "_E__pr_info_header", scope: !1, file: !1, line: 79, type: !5, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i64, i8*)* @_E__pr_info_header, variables: !16)
!16 = !{!17, !18, !19}
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 1, scope: !15, file: !1, line: 79, type: !7)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ln", arg: 2, scope: !15, file: !1, line: 79, type: !10)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 3, scope: !15, file: !1, line: 79, type: !7)
!20 = !DISubprogram(name: "_E__pr_warn", scope: !1, file: !1, line: 89, type: !21, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, ...)* @_E__pr_warn, variables: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !7, null}
!23 = !{!24, !25}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 1, scope: !20, file: !1, line: 89, type: !7)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pvar", scope: !20, file: !1, line: 91, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !27, line: 31, baseType: !28)
!27 = !DIFile(filename: "/usr/include/sys/_types/_va_list.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_va_list", file: !29, line: 98, baseType: !30)
!29 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 91, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 192, align: 64, elements: !41)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 91, baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 91, size: 192, align: 64, elements: !34)
!34 = !{!35, !37, !38, !40}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !33, file: !1, line: 91, baseType: !36, size: 32, align: 32)
!36 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !33, file: !1, line: 91, baseType: !36, size: 32, align: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !33, file: !1, line: 91, baseType: !39, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !33, file: !1, line: 91, baseType: !39, size: 64, align: 64, offset: 128)
!41 = !{!42}
!42 = !DISubrange(count: 1)
!43 = !DISubprogram(name: "_E__pr_info", scope: !1, file: !1, line: 101, type: !21, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, ...)* @_E__pr_info, variables: !44)
!44 = !{!45, !46}
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 1, scope: !43, file: !1, line: 101, type: !7)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pvar", scope: !43, file: !1, line: 103, type: !26)
!47 = !DISubprogram(name: "_E__die_error", scope: !1, file: !1, line: 112, type: !21, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, ...)* @_E__die_error, variables: !48)
!48 = !{!49, !50}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 1, scope: !47, file: !1, line: 112, type: !7)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pvar", scope: !47, file: !1, line: 114, type: !26)
!51 = !DISubprogram(name: "_E__fatal_sys_error", scope: !1, file: !1, line: 128, type: !21, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, ...)* @_E__fatal_sys_error, variables: !52)
!52 = !{!53, !54}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 1, scope: !51, file: !1, line: 128, type: !7)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pvar", scope: !51, file: !1, line: 130, type: !26)
!55 = !DISubprogram(name: "_E__sys_error", scope: !1, file: !1, line: 146, type: !21, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, ...)* @_E__sys_error, variables: !56)
!56 = !{!57, !58}
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 1, scope: !55, file: !1, line: 146, type: !7)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pvar", scope: !55, file: !1, line: 148, type: !26)
!59 = !DISubprogram(name: "_E__abort_error", scope: !1, file: !1, line: 162, type: !21, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, ...)* @_E__abort_error, variables: !60)
!60 = !{!61, !62}
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 1, scope: !59, file: !1, line: 162, type: !7)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pvar", scope: !59, file: !1, line: 164, type: !26)
!63 = !{i32 2, !"Dwarf Version", i32 2}
!64 = !{i32 2, !"Debug Info Version", i32 700000003}
!65 = !{i32 1, !"PIC Level", i32 2}
!66 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!67 = !DIExpression()
!68 = !DILocation(line: 72, column: 27, scope: !4)
!69 = !DILocation(line: 72, column: 35, scope: !4)
!70 = !DILocation(line: 72, column: 51, scope: !4)
!71 = !DILocation(line: 74, column: 19, scope: !4)
!72 = !{!73, !73, i64 0}
!73 = !{!"any pointer", !74, i64 0}
!74 = !{!"omnipotent char", !75, i64 0}
!75 = !{!"Simple C/C++ TBAA"}
!76 = !DILocation(line: 74, column: 12, scope: !4)
!77 = !DILocation(line: 75, column: 20, scope: !4)
!78 = !DILocation(line: 75, column: 12, scope: !4)
!79 = !DILocation(line: 76, column: 1, scope: !4)
!80 = !DILocation(line: 79, column: 32, scope: !15)
!81 = !DILocation(line: 79, column: 40, scope: !15)
!82 = !DILocation(line: 79, column: 56, scope: !15)
!83 = !DILocation(line: 85, column: 20, scope: !15)
!84 = !DILocation(line: 85, column: 12, scope: !15)
!85 = !DILocation(line: 86, column: 1, scope: !15)
!86 = !DILocation(line: 89, column: 26, scope: !20)
!87 = !DILocation(line: 91, column: 13, scope: !20)
!88 = !DILocation(line: 93, column: 14, scope: !20)
!89 = !DILocation(line: 93, column: 5, scope: !20)
!90 = !DILocation(line: 94, column: 21, scope: !20)
!91 = !DILocation(line: 94, column: 12, scope: !20)
!92 = !DILocation(line: 95, column: 5, scope: !20)
!93 = !DILocation(line: 97, column: 19, scope: !20)
!94 = !DILocation(line: 97, column: 12, scope: !20)
!95 = !DILocation(line: 98, column: 1, scope: !20)
!96 = !DILocation(line: 101, column: 26, scope: !43)
!97 = !DILocation(line: 103, column: 13, scope: !43)
!98 = !DILocation(line: 105, column: 14, scope: !43)
!99 = !DILocation(line: 105, column: 5, scope: !43)
!100 = !DILocation(line: 106, column: 21, scope: !43)
!101 = !DILocation(line: 106, column: 12, scope: !43)
!102 = !DILocation(line: 107, column: 5, scope: !43)
!103 = !DILocation(line: 110, column: 1, scope: !43)
!104 = !DILocation(line: 112, column: 33, scope: !47)
!105 = !DILocation(line: 114, column: 13, scope: !47)
!106 = !DILocation(line: 116, column: 14, scope: !47)
!107 = !DILocation(line: 116, column: 5, scope: !47)
!108 = !DILocation(line: 118, column: 21, scope: !47)
!109 = !DILocation(line: 118, column: 12, scope: !47)
!110 = !DILocation(line: 119, column: 19, scope: !47)
!111 = !DILocation(line: 119, column: 12, scope: !47)
!112 = !DILocation(line: 121, column: 5, scope: !47)
!113 = !DILocation(line: 123, column: 19, scope: !47)
!114 = !DILocation(line: 123, column: 12, scope: !47)
!115 = !DILocation(line: 125, column: 5, scope: !47)
!116 = !DILocation(line: 128, column: 39, scope: !51)
!117 = !DILocation(line: 130, column: 13, scope: !51)
!118 = !DILocation(line: 132, column: 14, scope: !51)
!119 = !DILocation(line: 132, column: 5, scope: !51)
!120 = !DILocation(line: 133, column: 21, scope: !51)
!121 = !DILocation(line: 133, column: 12, scope: !51)
!122 = !DILocation(line: 134, column: 5, scope: !51)
!123 = !DILocation(line: 136, column: 15, scope: !51)
!124 = !DILocation(line: 136, column: 5, scope: !51)
!125 = !DILocation(line: 137, column: 15, scope: !51)
!126 = !DILocation(line: 137, column: 5, scope: !51)
!127 = !DILocation(line: 139, column: 5, scope: !51)
!128 = !DILocation(line: 141, column: 19, scope: !51)
!129 = !DILocation(line: 141, column: 12, scope: !51)
!130 = !DILocation(line: 143, column: 10, scope: !51)
!131 = !{!132, !132, i64 0}
!132 = !{!"int", !74, i64 0}
!133 = !DILocation(line: 143, column: 5, scope: !51)
!134 = !DILocation(line: 146, column: 33, scope: !55)
!135 = !DILocation(line: 148, column: 13, scope: !55)
!136 = !DILocation(line: 150, column: 14, scope: !55)
!137 = !DILocation(line: 150, column: 5, scope: !55)
!138 = !DILocation(line: 151, column: 21, scope: !55)
!139 = !DILocation(line: 151, column: 12, scope: !55)
!140 = !DILocation(line: 152, column: 5, scope: !55)
!141 = !DILocation(line: 154, column: 15, scope: !55)
!142 = !DILocation(line: 154, column: 5, scope: !55)
!143 = !DILocation(line: 155, column: 15, scope: !55)
!144 = !DILocation(line: 155, column: 5, scope: !55)
!145 = !DILocation(line: 157, column: 5, scope: !55)
!146 = !DILocation(line: 159, column: 19, scope: !55)
!147 = !DILocation(line: 159, column: 12, scope: !55)
!148 = !DILocation(line: 160, column: 1, scope: !55)
!149 = !DILocation(line: 162, column: 35, scope: !59)
!150 = !DILocation(line: 164, column: 13, scope: !59)
!151 = !DILocation(line: 166, column: 14, scope: !59)
!152 = !DILocation(line: 166, column: 5, scope: !59)
!153 = !DILocation(line: 167, column: 21, scope: !59)
!154 = !DILocation(line: 167, column: 12, scope: !59)
!155 = !DILocation(line: 168, column: 5, scope: !59)
!156 = !DILocation(line: 170, column: 19, scope: !59)
!157 = !DILocation(line: 170, column: 12, scope: !59)
!158 = !DILocation(line: 172, column: 5, scope: !59)
