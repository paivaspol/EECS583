; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/sqerror.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [9 x i8] c"\0AFATAL: \00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"WARNING: \00", align 1
@.str3 = private unnamed_addr constant [21 x i8] c"\0APANIC [%s line %d] \00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"Unusual error\00", align 1
@squid_errno = common global i32 0, align 4

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @Die(i8* nocapture readonly %format, ...) #0 {
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !10, metadata !44), !dbg !45
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %argp, metadata !11, metadata !44), !dbg !46
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !47, !tbaa !48
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %1), !dbg !52
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %argp, i64 0, i64 0, !dbg !53
  %4 = bitcast [1 x %struct.__va_list_tag]* %argp to i8*, !dbg !53
  call void @llvm.va_start(i8* %4), !dbg !53
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !54, !tbaa !48
  %6 = call i32 @vfprintf(%struct.__sFILE* %5, i8* %format, %struct.__va_list_tag* %3) #6, !dbg !55
  call void @llvm.va_end(i8* %4), !dbg !56
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !57, !tbaa !48
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %7), !dbg !58
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !59, !tbaa !48
  %9 = call i32 @fflush(%struct.__sFILE* %8) #6, !dbg !60
  call void @exit(i32 1) #7, !dbg !61
  unreachable, !dbg !61
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind optsize
declare i32 @vfprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #2

; Function Attrs: noreturn optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @Warn(i8* nocapture readonly %format, ...) #5 {
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !29, metadata !44), !dbg !62
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %argp, metadata !30, metadata !44), !dbg !63
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !64, !tbaa !48
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %1), !dbg !65
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %argp, i64 0, i64 0, !dbg !66
  %4 = bitcast [1 x %struct.__va_list_tag]* %argp to i8*, !dbg !66
  call void @llvm.va_start(i8* %4), !dbg !66
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !67, !tbaa !48
  %6 = call i32 @vfprintf(%struct.__sFILE* %5, i8* %format, %struct.__va_list_tag* %3) #6, !dbg !68
  call void @llvm.va_end(i8* %4), !dbg !69
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !70, !tbaa !48
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %7), !dbg !71
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !72, !tbaa !48
  %9 = call i32 @fflush(%struct.__sFILE* %8) #6, !dbg !73
  ret void, !dbg !74
}

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @Panic(i8* %file, i32 %line) #0 {
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !36, metadata !44), !dbg !75
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !37, metadata !44), !dbg !76
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !77, !tbaa !48
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([21 x i8]* @.str3, i64 0, i64 0), i8* %file, i32 %line) #6, !dbg !78
  tail call void @perror(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #8, !dbg !79
  tail call void @exit(i32 1) #7, !dbg !80
  unreachable, !dbg !80
}

; Function Attrs: nounwind optsize
declare void @perror(i8* nocapture readonly) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #3

attributes #0 = { noreturn nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { cold nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!40, !41, !42}
!llvm.ident = !{!43}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !38, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/sqerror.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !27, !31}
!4 = !DISubprogram(name: "Die", scope: !1, file: !1, line: 36, type: !5, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, ...)* @Die, variables: !9)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, null}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = !{!10, !11}
!10 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 1, scope: !4, file: !1, line: 36, type: !7)
!11 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argp", scope: !4, file: !1, line: 38, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !13, line: 30, baseType: !14)
!13 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.0.0/include/stdarg.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 38, baseType: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 192, align: 64, elements: !25)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 38, baseType: !17)
!17 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 38, size: 192, align: 64, elements: !18)
!18 = !{!19, !21, !22, !24}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !17, file: !1, line: 38, baseType: !20, size: 32, align: 32)
!20 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !17, file: !1, line: 38, baseType: !20, size: 32, align: 32, offset: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !17, file: !1, line: 38, baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !17, file: !1, line: 38, baseType: !23, size: 64, align: 64, offset: 128)
!25 = !{!26}
!26 = !DISubrange(count: 1)
!27 = !DISubprogram(name: "Warn", scope: !1, file: !1, line: 61, type: !5, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, ...)* @Warn, variables: !28)
!28 = !{!29, !30}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 1, scope: !27, file: !1, line: 61, type: !7)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argp", scope: !27, file: !1, line: 63, type: !12)
!31 = !DISubprogram(name: "Panic", scope: !1, file: !1, line: 88, type: !32, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @Panic, variables: !35)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !7, !34}
!34 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!35 = !{!36, !37}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !31, file: !1, line: 88, type: !7)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !31, file: !1, line: 88, type: !34)
!38 = !{!39}
!39 = !DIGlobalVariable(name: "squid_errno", scope: !0, file: !1, line: 24, type: !34, isLocal: false, isDefinition: true, variable: i32* @squid_errno)
!40 = !{i32 2, !"Dwarf Version", i32 2}
!41 = !{i32 2, !"Debug Info Version", i32 700000003}
!42 = !{i32 1, !"PIC Level", i32 2}
!43 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!44 = !DIExpression()
!45 = !DILocation(line: 36, column: 11, scope: !4)
!46 = !DILocation(line: 38, column: 12, scope: !4)
!47 = !DILocation(line: 40, column: 11, scope: !4)
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocation(line: 40, column: 3, scope: !4)
!53 = !DILocation(line: 41, column: 3, scope: !4)
!54 = !DILocation(line: 42, column: 12, scope: !4)
!55 = !DILocation(line: 42, column: 3, scope: !4)
!56 = !DILocation(line: 43, column: 3, scope: !4)
!57 = !DILocation(line: 44, column: 11, scope: !4)
!58 = !DILocation(line: 44, column: 3, scope: !4)
!59 = !DILocation(line: 45, column: 10, scope: !4)
!60 = !DILocation(line: 45, column: 3, scope: !4)
!61 = !DILocation(line: 47, column: 3, scope: !4)
!62 = !DILocation(line: 61, column: 12, scope: !27)
!63 = !DILocation(line: 63, column: 12, scope: !27)
!64 = !DILocation(line: 65, column: 11, scope: !27)
!65 = !DILocation(line: 65, column: 3, scope: !27)
!66 = !DILocation(line: 66, column: 3, scope: !27)
!67 = !DILocation(line: 67, column: 12, scope: !27)
!68 = !DILocation(line: 67, column: 3, scope: !27)
!69 = !DILocation(line: 68, column: 3, scope: !27)
!70 = !DILocation(line: 69, column: 11, scope: !27)
!71 = !DILocation(line: 69, column: 3, scope: !27)
!72 = !DILocation(line: 70, column: 10, scope: !27)
!73 = !DILocation(line: 70, column: 3, scope: !27)
!74 = !DILocation(line: 71, column: 1, scope: !27)
!75 = !DILocation(line: 88, column: 13, scope: !31)
!76 = !DILocation(line: 88, column: 23, scope: !31)
!77 = !DILocation(line: 90, column: 18, scope: !31)
!78 = !DILocation(line: 90, column: 10, scope: !31)
!79 = !DILocation(line: 91, column: 10, scope: !31)
!80 = !DILocation(line: 92, column: 3, scope: !31)
