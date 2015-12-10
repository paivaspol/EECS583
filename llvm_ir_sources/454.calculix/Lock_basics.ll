; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Lock = type { i8*, i32, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [89 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Lock_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [48 x i8] c"\0A fatal error in Lock_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [43 x i8] c"\0A fatal error in Lock_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._Lock* @Lock_new() #0 {
  %1 = tail call i8* @malloc(i64 16) #5, !dbg !39
  %2 = bitcast i8* %1 to %struct._Lock*, !dbg !39
  tail call void @llvm.dbg.value(metadata %struct._Lock* %2, i64 0, metadata !23, metadata !43), !dbg !44
  %3 = icmp eq i8* %1, null, !dbg !39
  br i1 %3, label %4, label %7, !dbg !45

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !46, !tbaa !48
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 16, i32 21, i8* getelementptr inbounds ([89 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !46
  tail call void @exit(i32 -1) #6, !dbg !46
  unreachable, !dbg !46

; <label>:7                                       ; preds = %0
  tail call void @Lock_setDefaultFields(%struct._Lock* %2) #7, !dbg !52
  ret %struct._Lock* %2, !dbg !53
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @Lock_setDefaultFields(%struct._Lock* %lock) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Lock* %lock, i64 0, metadata !28, metadata !43), !dbg !54
  %1 = icmp eq %struct._Lock* %lock, null, !dbg !55
  br i1 %1, label %2, label %5, !dbg !57

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !58, !tbaa !48
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), %struct._Lock* null) #5, !dbg !60
  tail call void @exit(i32 -1) #6, !dbg !61
  unreachable, !dbg !61

; <label>:5                                       ; preds = %0
  %6 = bitcast %struct._Lock* %lock to i8*, !dbg !62
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 8, i1 false), !dbg !63
  ret void, !dbg !62
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Lock_clearData(%struct._Lock* %lock) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Lock* %lock, i64 0, metadata !31, metadata !43), !dbg !64
  %1 = icmp eq %struct._Lock* %lock, null, !dbg !65
  br i1 %1, label %2, label %5, !dbg !67

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !68, !tbaa !48
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([48 x i8]* @.str3, i64 0, i64 0), %struct._Lock* null) #5, !dbg !70
  tail call void @exit(i32 -1) #6, !dbg !71
  unreachable, !dbg !71

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Lock* %lock, i64 0, i32 0, !dbg !72
  %7 = load i8** %6, align 8, !dbg !72, !tbaa !74
  %8 = icmp eq i8* %7, null, !dbg !77
  br i1 %8, label %10, label %9, !dbg !78

; <label>:9                                       ; preds = %5
  tail call void @free(i8* %7) #7, !dbg !79
  store i8* null, i8** %6, align 8, !dbg !79, !tbaa !74
  br label %10, !dbg !79

; <label>:10                                      ; preds = %5, %9
  tail call void @Lock_setDefaultFields(%struct._Lock* %lock) #7, !dbg !83
  ret void, !dbg !84
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @Lock_free(%struct._Lock* %lock) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Lock* %lock, i64 0, metadata !34, metadata !43), !dbg !85
  %1 = icmp eq %struct._Lock* %lock, null, !dbg !86
  br i1 %1, label %2, label %5, !dbg !88

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !89, !tbaa !48
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([43 x i8]* @.str4, i64 0, i64 0), %struct._Lock* null) #5, !dbg !91
  tail call void @exit(i32 -1) #6, !dbg !92
  unreachable, !dbg !92

; <label>:5                                       ; preds = %0
  tail call void @Lock_clearData(%struct._Lock* %lock) #7, !dbg !93
  %6 = bitcast %struct._Lock* %lock to i8*, !dbg !94
  tail call void @free(i8* %6) #7, !dbg !94
  tail call void @llvm.dbg.value(metadata %struct._Lock* null, i64 0, metadata !34, metadata !43), !dbg !85
  ret void, !dbg !97
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!35, !36, !37}
!llvm.ident = !{!38}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !16, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !13, !9, !14}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Lock", file: !6, line: 37, size: 128, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/../Lock.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !12}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5, file: !6, line: 45, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !5, file: !6, line: 47, baseType: !11, size: 32, align: 32, offset: 64)
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !5, file: !6, line: 48, baseType: !11, size: 32, align: 32, offset: 96)
!13 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !24, !29, !32}
!17 = !DISubprogram(name: "Lock_new", scope: !1, file: !1, line: 16, type: !18, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Lock* ()* @Lock_new, variables: !22)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Lock", file: !6, line: 36, baseType: !5)
!22 = !{!23}
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lock", scope: !17, file: !1, line: 19, type: !20)
!24 = !DISubprogram(name: "Lock_setDefaultFields", scope: !1, file: !1, line: 35, type: !25, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Lock*)* @Lock_setDefaultFields, variables: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !20}
!27 = !{!28}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !24, file: !1, line: 36, type: !20)
!29 = !DISubprogram(name: "Lock_clearData", scope: !1, file: !1, line: 58, type: !25, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Lock*)* @Lock_clearData, variables: !30)
!30 = !{!31}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !29, file: !1, line: 59, type: !20)
!32 = !DISubprogram(name: "Lock_free", scope: !1, file: !1, line: 108, type: !25, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Lock*)* @Lock_free, variables: !33)
!33 = !{!34}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !32, file: !1, line: 109, type: !20)
!35 = !{i32 2, !"Dwarf Version", i32 2}
!36 = !{i32 2, !"Debug Info Version", i32 700000003}
!37 = !{i32 1, !"PIC Level", i32 2}
!38 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!39 = !DILocation(line: 21, column: 1, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 21, column: 1)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 21, column: 1)
!42 = distinct !DILexicalBlock(scope: !17, file: !1, line: 21, column: 1)
!43 = !DIExpression()
!44 = !DILocation(line: 19, column: 9, scope: !17)
!45 = !DILocation(line: 21, column: 1, scope: !41)
!46 = !DILocation(line: 21, column: 1, scope: !47)
!47 = distinct !DILexicalBlock(scope: !40, file: !1, line: 21, column: 1)
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocation(line: 22, column: 1, scope: !17)
!53 = !DILocation(line: 24, column: 1, scope: !17)
!54 = !DILocation(line: 36, column: 12, scope: !24)
!55 = !DILocation(line: 38, column: 11, scope: !56)
!56 = distinct !DILexicalBlock(scope: !24, file: !1, line: 38, column: 6)
!57 = !DILocation(line: 38, column: 6, scope: !24)
!58 = !DILocation(line: 39, column: 12, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !1, line: 38, column: 21)
!60 = !DILocation(line: 39, column: 4, scope: !59)
!61 = !DILocation(line: 41, column: 4, scope: !59)
!62 = !DILocation(line: 47, column: 1, scope: !24)
!63 = !DILocation(line: 45, column: 16, scope: !24)
!64 = !DILocation(line: 59, column: 12, scope: !29)
!65 = !DILocation(line: 66, column: 11, scope: !66)
!66 = distinct !DILexicalBlock(scope: !29, file: !1, line: 66, column: 6)
!67 = !DILocation(line: 66, column: 6, scope: !29)
!68 = !DILocation(line: 67, column: 12, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !1, line: 66, column: 21)
!70 = !DILocation(line: 67, column: 4, scope: !69)
!71 = !DILocation(line: 69, column: 4, scope: !69)
!72 = !DILocation(line: 76, column: 12, scope: !73)
!73 = distinct !DILexicalBlock(scope: !29, file: !1, line: 76, column: 6)
!74 = !{!75, !49, i64 0}
!75 = !{!"_Lock", !49, i64 0, !76, i64 8, !76, i64 12}
!76 = !{!"int", !50, i64 0}
!77 = !DILocation(line: 76, column: 18, scope: !73)
!78 = !DILocation(line: 76, column: 6, scope: !29)
!79 = !DILocation(line: 88, column: 4, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 88, column: 4)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 88, column: 4)
!82 = distinct !DILexicalBlock(scope: !73, file: !1, line: 76, column: 28)
!83 = !DILocation(line: 95, column: 1, scope: !29)
!84 = !DILocation(line: 97, column: 1, scope: !29)
!85 = !DILocation(line: 109, column: 12, scope: !32)
!86 = !DILocation(line: 111, column: 11, scope: !87)
!87 = distinct !DILexicalBlock(scope: !32, file: !1, line: 111, column: 6)
!88 = !DILocation(line: 111, column: 6, scope: !32)
!89 = !DILocation(line: 112, column: 12, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 111, column: 21)
!91 = !DILocation(line: 112, column: 4, scope: !90)
!92 = !DILocation(line: 114, column: 4, scope: !90)
!93 = !DILocation(line: 116, column: 1, scope: !32)
!94 = !DILocation(line: 117, column: 1, scope: !95)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 117, column: 1)
!96 = distinct !DILexicalBlock(scope: !32, file: !1, line: 117, column: 1)
!97 = !DILocation(line: 119, column: 1, scope: !32)
