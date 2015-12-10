; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Lock = type { i8*, i32, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [43 x i8] c"\0A fatal error in Lock_lock(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Lock_unlock(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @Lock_lock(%struct._Lock* %lock) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Lock* %lock, i64 0, metadata !19, metadata !27), !dbg !28
  %1 = icmp eq %struct._Lock* %lock, null, !dbg !29
  br i1 %1, label %2, label %5, !dbg !31

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !32, !tbaa !34
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([43 x i8]* @.str, i64 0, i64 0), %struct._Lock* null) #4, !dbg !38
  tail call void @exit(i32 -1) #5, !dbg !39
  unreachable, !dbg !39

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Lock* %lock, i64 0, i32 1, !dbg !40
  %7 = load i32* %6, align 4, !dbg !41, !tbaa !42
  %8 = add nsw i32 %7, 1, !dbg !41
  store i32 %8, i32* %6, align 4, !dbg !41, !tbaa !42
  ret void, !dbg !45
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @Lock_unlock(%struct._Lock* %lock) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Lock* %lock, i64 0, metadata !22, metadata !27), !dbg !46
  %1 = icmp eq %struct._Lock* %lock, null, !dbg !47
  br i1 %1, label %2, label %5, !dbg !49

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !50, !tbaa !34
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), %struct._Lock* null) #4, !dbg !52
  tail call void @exit(i32 -1) #5, !dbg !53
  unreachable, !dbg !53

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Lock* %lock, i64 0, i32 2, !dbg !54
  %7 = load i32* %6, align 4, !dbg !55, !tbaa !56
  %8 = add nsw i32 %7, 1, !dbg !55
  store i32 %8, i32* %6, align 4, !dbg !55, !tbaa !56
  ret void, !dbg !57
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_util.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !20}
!6 = !DISubprogram(name: "Lock_lock", scope: !1, file: !1, line: 16, type: !7, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Lock*)* @Lock_lock, variables: !18)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Lock", file: !11, line: 36, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/../Lock.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Lock", file: !11, line: 37, size: 128, align: 64, elements: !13)
!13 = !{!14, !15, !17}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !12, file: !11, line: 45, baseType: !4, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !12, file: !11, line: 47, baseType: !16, size: 32, align: 32, offset: 64)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !12, file: !11, line: 48, baseType: !16, size: 32, align: 32, offset: 96)
!18 = !{!19}
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !6, file: !1, line: 17, type: !9)
!20 = !DISubprogram(name: "Lock_unlock", scope: !1, file: !1, line: 72, type: !7, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Lock*)* @Lock_unlock, variables: !21)
!21 = !{!22}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !20, file: !1, line: 73, type: !9)
!23 = !{i32 2, !"Dwarf Version", i32 2}
!24 = !{i32 2, !"Debug Info Version", i32 700000003}
!25 = !{i32 1, !"PIC Level", i32 2}
!26 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!27 = !DIExpression()
!28 = !DILocation(line: 17, column: 12, scope: !6)
!29 = !DILocation(line: 24, column: 11, scope: !30)
!30 = distinct !DILexicalBlock(scope: !6, file: !1, line: 24, column: 6)
!31 = !DILocation(line: 24, column: 6, scope: !6)
!32 = !DILocation(line: 25, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 24, column: 21)
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !DILocation(line: 25, column: 4, scope: !33)
!39 = !DILocation(line: 27, column: 4, scope: !33)
!40 = !DILocation(line: 59, column: 7, scope: !6)
!41 = !DILocation(line: 59, column: 13, scope: !6)
!42 = !{!43, !44, i64 8}
!43 = !{!"_Lock", !35, i64 0, !44, i64 8, !44, i64 12}
!44 = !{!"int", !36, i64 0}
!45 = !DILocation(line: 61, column: 1, scope: !6)
!46 = !DILocation(line: 73, column: 12, scope: !20)
!47 = !DILocation(line: 80, column: 11, scope: !48)
!48 = distinct !DILexicalBlock(scope: !20, file: !1, line: 80, column: 6)
!49 = !DILocation(line: 80, column: 6, scope: !20)
!50 = !DILocation(line: 81, column: 12, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 80, column: 21)
!52 = !DILocation(line: 81, column: 4, scope: !51)
!53 = !DILocation(line: 83, column: 4, scope: !51)
!54 = !DILocation(line: 85, column: 7, scope: !20)
!55 = !DILocation(line: 85, column: 15, scope: !20)
!56 = !{!43, !44, i64 12}
!57 = !DILocation(line: 118, column: 1, scope: !20)
